# SPDX-License-Identifier: MIT
{ callPackage, ... }:
let
  buildMerman = callPackage ./build-merman.nix { };
in
{
  merman-stable = callPackage ./merman-stable { inherit buildMerman; };
  merman-preview = callPackage ./merman-preview { inherit buildMerman; };
  merman-unstable = callPackage ./merman-unstable { inherit buildMerman; };
}
