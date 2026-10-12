# SPDX-License-Identifier: MIT
#
# Upstream's newest stable release. update.yml moves it.
{ buildMerman, fetchFromGitHub }:
buildMerman rec {
  version = "0.9.0";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "v${version}";
    hash = "sha256-bms+/j/DIdwnsxK+UU+mPQTDeXopv865TmPIEpHaYGQ=";
  };
  cargoHash = "sha256-X9PmBX5egtCx04VFfBRvQ/g0W6bSprDhEvPrPHbFCmE=";
}
