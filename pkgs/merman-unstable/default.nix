# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.8.0-unstable-2026-10-08";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "2928265122d5a3d35e239e3ddbce885c7e342c59";
    hash = "sha256-Y9g4FBeg/b1Mn+ZieByGZMOGSazabacPELLjfs6jZe4=";
  };
  cargoHash = "sha256-XOlVEezrAZSqFx8cFeY69zs3h1S8VKLzccVBP7lI7/M=";
}
