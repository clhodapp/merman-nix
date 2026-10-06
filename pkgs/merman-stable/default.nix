# SPDX-License-Identifier: MIT
#
# Upstream's newest stable release. update.yml moves it.
{ buildMerman, fetchFromGitHub }:
buildMerman rec {
  version = "0.8.0";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "v${version}";
    hash = "sha256-PPegdxdgT7OF5jzFskj3r5Ftwca0Z2A61q+Y2zLQuZ0=";
  };
  cargoHash = "sha256-XOlVEezrAZSqFx8cFeY69zs3h1S8VKLzccVBP7lI7/M=";
}
