# SPDX-License-Identifier: MIT
#
# Upstream's newest tag, prerelease or not. update.yml moves it.
{ buildMerman, fetchFromGitHub }:
buildMerman rec {
  version = "0.9.1";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "v${version}";
    hash = "sha256-beU28J0U++ET4BSEEf1Z5Cw8N9CnT+lmKBstkG/6Kyk=";
  };
  cargoHash = "sha256-fET8QXcUTD5pS+u3mZKKKFkolNewGj4delNL4ol2GfI=";
}
