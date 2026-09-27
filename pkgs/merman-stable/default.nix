# SPDX-License-Identifier: MIT
#
# Upstream's newest stable release. update.yml moves it.
{ buildMerman, fetchFromGitHub }:
buildMerman rec {
  version = "0.7.0";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "v${version}";
    hash = "sha256-PzGHYRUlLjica0OTWcz4BwUJz0ci/FrOabkranOr9gU=";
  };
  cargoHash = "sha256-FKqDPDOBfePUby8rFBflLyhEBrHTbeGhNCdZviNnfts=";
}
