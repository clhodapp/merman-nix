# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.10.0-alpha.2-unstable-2026-11-10";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "c8815303fb290d88866ec805147e3bdef4edc424";
    hash = "sha256-PLDEnOXxVfEMescor12OEG8G3oCT/TTnSs/Ftfl+Lcg=";
  };
  cargoHash = "sha256-hykPQJD77zwzxNpf33HwiL3n+zE13afIwombIH8IZqg=";
}
