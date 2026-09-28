# SPDX-License-Identifier: MIT
#
# The default package overlay: the merman packages under
# `pkgs.merman-nix` (`.merman-stable`, `.merman-preview`,
# `.merman-unstable`). A consumer that lists this flake in `projects`
# holds it as `merman-nix/default`, which its package sets apply by
# default. The scope name is bound here, so the packages land under
# `pkgs.merman-nix` in any consumer.
#
# The package tree stays at pkgs/: the update workflow diffs and commits
# each `pkgs/<package>` as it moves a pin.
{ closure-lib, ... }:
{
  overlay = closure-lib.caisson.nixpkgs.mkPackagesOverlay ../../pkgs "merman-nix";
}
