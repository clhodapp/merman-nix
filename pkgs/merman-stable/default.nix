# SPDX-License-Identifier: MIT
#
# Upstream's newest stable release. update.yml moves it.
{ buildMerman, fetchFromGitHub }:
buildMerman rec {
  version = "0.9.2";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "v${version}";
    hash = "sha256-whmFtFdfADAEmNRj2bXr6A7o3Lw5887HZJa8oqmXJnw=";
  };
  cargoHash = "sha256-B0gU/Frs7bXjxwYLJ7b3TeR3N3Qxl0U8oM3qlkbSwIU=";
}
