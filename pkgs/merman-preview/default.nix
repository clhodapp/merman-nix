# SPDX-License-Identifier: MIT
#
# Upstream's newest tag, prerelease or not. update.yml moves it.
{ buildMerman, fetchFromGitHub }:
buildMerman rec {
  version = "0.9.3";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "v${version}";
    hash = "sha256-hkOC1Y+nVE35bY2issYNoAKTFESH59y6wSwuwd9IlKs=";
  };
  cargoHash = "sha256-HiitKF6wgeVb8ZVIUz45uiNAlKszrGBYigFjmrsJu5M=";
}
