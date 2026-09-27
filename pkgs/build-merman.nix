# SPDX-License-Identifier: MIT
#
# The one build behind the merman packages. A package file names a
# source (version, the fetchFromGitHub call, the cargo vendor hash) and
# nothing else; what upstream shipped at that point follows from the
# version, and the smoke test each package carries exercises exactly
# that. The source attributes are passed through as given, so their
# positions stay in the package file, where nix-update rewrites them.
{
  lib,
  rustPlatform,
  runCommand,
}:
{
  version,
  src,
  cargoHash,
}@args:
let
  # What ships changed within the 0.8.0 prereleases: the language
  # server arrived, and the mmdc interface moved behind a subcommand.
  # Nix orders "0.8.0-alpha.6" after "0.8.0", so the whole 0.8.0 line
  # counts, prereleases and branch snapshots named after them included.
  since080 = lib.versionAtLeast version "0.8.0";
  # The subcommand that implements mermaid-cli's `mmdc` interface.
  mmdc = if since080 then "mmdc" else "render";
  lsp = since080;

  merman = rustPlatform.buildRustPackage (
    args
    // {
      pname = "merman";

      # merman-cli: headless mmdc-compatible renderer (SVG/PNG without a
      # browser); merman-lsp: mermaid language server. The merman-lsp
      # binary is gated behind the crate's non-default "stdio" feature
      # (required-features on the [[bin]] target); without it cargo
      # skips the binary silently.
      cargoBuildFlags = [
        "--package"
        "merman-cli"
      ]
      ++ lib.optionals lsp [
        "--package"
        "merman-lsp"
        "--features"
        "merman-lsp/stdio"
      ];

      # The workspace test suite wants the full upstream SVG fixture
      # corpus; the built binaries are exercised by the smoke test
      # instead (rendering, the flag set consumers pass, detection, the
      # LSP handshake).
      doCheck = false;

      # Exercises the built binaries over the interfaces consumers
      # actually use. Upstream is pre-1.0 and has twice changed what
      # ships: a bump silently dropped a binary (cargo required-features
      # gating) and moved the CLI surface behind a subcommand. Building
      # alone would not have caught either.
      passthru.tests.smoke = runCommand "merman-${version}-smoke" { } ''
        # The mmdc interface: source on stdin, SVG to a file.
        printf 'graph TD\n  A-->B\n' \
          | ${merman}/bin/merman-cli ${mmdc} -i - -o diagram.svg
        grep -q '<svg' diagram.svg

        # The full flag set callers pass, with htmlLabels off so labels
        # stay native <text> (librsvg drops foreignObject).
        printf '{"htmlLabels": false, "flowchart": {"htmlLabels": false}}' \
          > config.json
        printf 'graph TD\n  A-->|label| B\n' \
          | ${merman}/bin/merman-cli ${mmdc} -i - -o flags.svg -q \
              -c config.json -t dark -b transparent
        grep -q '<text' flags.svg
        if grep -q foreignObject flags.svg; then exit 1; fi

        # The detector: recognizes mermaid source, refuses prose.
        printf 'sequenceDiagram\n  A->>B: hi\n' \
          | ${merman}/bin/merman-cli detect
        if printf 'plain prose\n' \
          | ${merman}/bin/merman-cli detect 2>/dev/null; then
          exit 1
        fi

        ${lib.optionalString lsp ''
          # The LSP transport: an initialize request over stdio must
          # come back with a capability set.
          body='{"jsonrpc":"2.0","id":1,"method":"initialize","params":{"capabilities":{}}}'
          printf 'Content-Length: %d\r\n\r\n%s' "''${#body}" "$body" \
            | ${merman}/bin/merman-lsp > response 2> /dev/null
          grep -q '"capabilities"' response
        ''}

        touch $out
      '';

      meta = {
        description = "Headless Rust mermaid implementation: renderer${lib.optionalString lsp " and language server"}";
        homepage = "https://github.com/Latias94/merman";
        license = with lib.licenses; [
          mit
          asl20
        ];
        mainProgram = "merman-cli";
      };
    }
  );
in
merman
