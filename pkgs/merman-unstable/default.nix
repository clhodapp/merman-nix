# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.0-unstable-2026-10-14";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "768370e0842dbd8df24d477fdbbf3449eb61de3d";
    hash = "sha256-EALRbjjo2RfwUmvMU8AcbAUbuiW1QerXlZYzIeH1HME=";
  };
  cargoHash = "sha256-X9PmBX5egtCx04VFfBRvQ/g0W6bSprDhEvPrPHbFCmE=";
}
