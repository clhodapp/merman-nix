# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.2-unstable-2026-10-26";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "8eba295103d406e320fad3bee448fe54d717cbf3";
    hash = "sha256-FKb4aSneh9ZpiB/a28O57oFoA60mDnBSBdLixgg2t1s=";
  };
  cargoHash = "sha256-ai1wzkYqEJHRRx51TrCnnlJEHMUSUPVAib7JHUKp1/k=";
}
