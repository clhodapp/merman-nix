# merman-nix

Nix packaging of [merman](https://github.com/Latias94/merman), a
headless Rust implementation of mermaid. It ships `merman-cli`, a
renderer that takes mermaid source and writes SVG or PNG without a
browser, and, from 0.8.0 on, `merman-lsp`, a mermaid language server.

merman is not in nixpkgs, so this flake packages it and exports the
result as an overlay. Three packages follow three upstream lines, and
each moves on its own as upstream does:

| Package | Follows |
|---|---|
| `merman-stable` | the newest stable release |
| `merman-preview` | the newest tag, prerelease or not |
| `merman-unstable` | the head of the `main` branch, as a dated snapshot |

## Use it

```sh
nix run github:clhodapp/merman-nix -- render -i diagram.mmd -o diagram.svg
```

The default package is `merman-stable`; name another as
`github:clhodapp/merman-nix#merman-preview`.

As a flake input:

```nix
{
  inputs.merman-nix.url = "github:clhodapp/merman-nix";

  # a package:
  #   inputs.merman-nix.packages.${system}.merman-preview
  # or through the overlay, landing at pkgs.merman-nix.<package>:
  #   nixpkgs.overlays = [ inputs.merman-nix.overlays.default ];
}
```

`merman-cli` implements the `mmdc` interface that mermaid-cli defines,
so it substitutes for `mmdc` in tooling that shells out to it, without
pulling in a headless browser. From 0.8.0 on that interface is the
`mmdc` subcommand; 0.7.0 has it as `render`.

## Development

`nix flake check` builds the three packages and runs each one's smoke
check, which exercises the built binaries over the interfaces callers
use: the `mmdc` rendering path, the flag set that keeps labels as
native `<text>`, source detection, and, where the language server
ships, an LSP `initialize` handshake over stdio.

That check earns its place. Upstream is pre-1.0, and the 0.8.0-alpha.5
bump both silently dropped a binary (cargo `required-features` gating on
the `[[bin]]` target) and moved the CLI surface behind a subcommand.
Building the package alone would have caught neither.

The build is shared (`pkgs/build-merman.nix`); a package file holds
only its source. What upstream ships at a version, and so what the
smoke check expects, follows from the version.

`nix fmt` formats.

## Following upstream

A scheduled run (`.github/workflows/update.yml`, daily, or on demand
from the Actions tab) asks GitHub where each line stands and moves the
packages behind it: version, hashes, and the commit for the snapshot.
Each move is gated by that package's smoke check. The moves that pass
are pushed to `main`; a package whose move fails stays where it was,
and the run shows as failed, naming it, until whatever broke is fixed.

The same moves by hand, from this directory:

```sh
nix run --inputs-from . 'nixpkgs#nix-update' -- --flake --version=stable merman-stable
nix run --inputs-from . 'nixpkgs#nix-update' -- --flake --version=unstable merman-preview
nix run --inputs-from . 'nixpkgs#nix-update' -- --flake --version=branch=main merman-unstable
```

## Binary cache

What `main` builds is pushed to the `clhodapp` cachix cache, signed with
its key, so a consumer at the same pins substitutes the compiled binary
instead of building it. That cache skips paths its upstreams already
hold, so using it means using them too:

| Substituter | Public key |
|---|---|
| `https://clhodapp.cachix.org` | `clhodapp.cachix.org-1:EW/0conxH0OQyo0o4ub/grdkFspholmQMSnQyj0vrZI=` |
| `https://nix-community.cachix.org` | `nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs=` |
| `https://numtide.cachix.org` | `numtide.cachix.org-1:2ps1kLBUWjxIneOy1Ik6cQjb41X0iXVXeHigGmycPPE=` |

The flake's `nixConfig` declares all three, so a direct `nix build` or
`nix flake check` here uses them once accepted: answer Nix's prompt, or
pass `--accept-flake-config`. A flake that consumes this one
as an input must add them to its own `extra-substituters` and
`extra-trusted-public-keys`; Nix does not carry an input's settings
into the consumer.

## License

The packaging here is MIT, see [`LICENSE`](LICENSE). merman itself is
dual MIT and Apache-2.0, upstream.
