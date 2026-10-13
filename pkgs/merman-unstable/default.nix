# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.0-unstable-2026-10-13";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "3a4b8c393939b69372a8f05a2b971f7cdf6ae529";
    hash = "sha256-0q9BSNbV3dBPisBgYGczduNd5XfX70nMDqbV37WYBMo=";
  };
  cargoHash = "sha256-X9PmBX5egtCx04VFfBRvQ/g0W6bSprDhEvPrPHbFCmE=";
}
