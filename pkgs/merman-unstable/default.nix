# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.3-unstable-2026-10-30";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "4e9fa48139361bb30f81cb86d413597643978a4f";
    hash = "sha256-ZPlbGtf1AIJ9qTi/o6DEJGhxtPNQ3vE4f3RlhJDOWm0=";
  };
  cargoHash = "sha256-Sg4vNrIG9smPJJgKIfFvY8Bi5iIyYfqQKP51BLe4t7Q=";
}
