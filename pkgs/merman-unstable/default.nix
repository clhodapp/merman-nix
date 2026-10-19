# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.1-unstable-2026-10-19";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "fe5de3eed7f2af1b734f161507330979634c7282";
    hash = "sha256-+OpN+DTn3kg6tNnsNlG/6SxJhbv88SMZWca32tDsntg=";
  };
  cargoHash = "sha256-6rzsB8StW5XUH0J4e3yMBq4Yrq3RNli4ZgAVkNXFSeM=";
}
