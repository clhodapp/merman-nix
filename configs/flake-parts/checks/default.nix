# SPDX-License-Identifier: MIT
#
# The checks of merman-nix: a flake-parts configuration declared inside
# the flake-parts caisson top (configs/flake/merman-nix), whose
# dependencies are those of the caisson top with the pins of
# tests/dependencies beside them. The caisson top gathers the checks
# declared here into its `checks` output. A flake that lists merman-nix
# as an input reads nothing of this configuration, so it locks none of
# the pins of tests/dependencies.
{ ... }:
{ inputs, ... }:
{
  imports = [ inputs.treefmt-nix.flakeModule ];

  perSystem =
    { pkgs, ... }:
    {
      # Duplicated in the formatter partition of
      # configs/flake/merman-nix: the partition and this configuration
      # are separate evaluations.
      treefmt.programs.nixfmt.enable = true;

      # Each package carries its smoke test (pkgs/build-merman.nix),
      # which exercises the built binaries over the interfaces
      # consumers actually use; `smoke-<package>` is how update.yml
      # names the one it runs against a bump.
      caisson.checks = {
        treefmt = {
          category = "format";
          description = "the Nix files are formatted with nixfmt";
        };
      }
      // builtins.listToAttrs (
        builtins.map
          (name: {
            name = "smoke-${name}";
            value = {
              derivation = pkgs.merman-nix.${name}.tests.smoke;
              category = "build";
              description = "the binaries of the package `${name}` render over the interfaces consumers use";
            };
          })
          [
            "merman-stable"
            "merman-preview"
            "merman-unstable"
          ]
      );
    };
}
