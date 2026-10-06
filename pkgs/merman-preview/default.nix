# SPDX-License-Identifier: MIT
#
# Upstream's newest tag, prerelease or not. update.yml moves it.
{ buildMerman, fetchFromGitHub }:
buildMerman rec {
  version = "0.8.0-alpha.7";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "v${version}";
    hash = "sha256-qLQvYQvaB/3tr3oX3pll8dU2Z3VNx3iXl9J4aI/ic30=";
  };
  cargoHash = "sha256-3Knhp+i+mPdQqomMde+Hysw7LG/aQAVOnr1Ft63Y0Pg=";
}
