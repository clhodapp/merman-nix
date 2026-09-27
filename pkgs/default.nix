# SPDX-License-Identifier: MIT
{ callPackage, ... }:
let
  buildMerman = callPackage ./build-merman.nix { };
  preview = callPackage ./merman-preview { inherit buildMerman; };
in
{
  merman-stable = callPackage ./merman-stable { inherit buildMerman; };
  merman-preview = preview;
  merman-unstable = callPackage ./merman-unstable { inherit buildMerman; };

  # Cutover: consumers still read `merman`, which has meant the newest
  # tag. Removed once ch-emacs-config and ch-ai-workbench read
  # merman-preview.
  merman = preview;
}
