# SPDX-License-Identifier: MIT
{
  lib,
  fetchFromGitHub,
  rustPlatform,
}:
rustPlatform.buildRustPackage rec {
  pname = "merman";
  version = "0.8.0-alpha.6";

  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "v${version}";
    hash = "sha256-zOOy6DnGcMjXMtdtBSWI3B6O8IQTm7LPaky48ydS1KE=";
  };

  cargoHash = "sha256-9Wx+nTuTaR79htmkAAiRFOaX14b9fQiZ+hhxi2mF3EE=";

  # merman-lsp: mermaid language server; merman-cli: headless
  # mmdc-compatible renderer (SVG/PNG without a browser).
  # The merman-lsp binary is gated behind the crate's non-default
  # "stdio" feature (required-features on the [[bin]] target); without
  # it cargo skips the binary silently.
  cargoBuildFlags = [
    "--package"
    "merman-lsp"
    "--package"
    "merman-cli"
    "--features"
    "merman-lsp/stdio"
  ];

  # The workspace test suite wants the full upstream SVG fixture corpus;
  # the built binaries are exercised by the smoke check instead
  # (rendering, the flag set consumers pass, detection, LSP handshake).
  doCheck = false;

  meta = {
    description = "Headless Rust mermaid implementation: language server and renderer";
    homepage = "https://github.com/Latias94/merman";
    license = with lib.licenses; [
      mit
      asl20
    ];
    mainProgram = "merman-cli";
  };
}
