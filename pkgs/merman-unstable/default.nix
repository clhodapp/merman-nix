# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.8.0-alpha.6-unstable-2026-09-30";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "c169fc3d6b10f2ed65353bb548ae61c7b799f820";
    hash = "sha256-YT90k7/05K3pO3Y+hNzlj0k3CLClgIlqNGGH2GgFfVM=";
  };
  cargoHash = "sha256-H9cC/6o9NJ2UxLaECsajdvszYx+UKBEWesI1VHK4UyQ=";
}
