# SPDX-License-Identifier: MIT
#
# Upstream's newest stable release. update.yml moves it.
{ buildMerman, fetchFromGitHub }:
buildMerman rec {
  version = "0.10.0";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "v${version}";
    hash = "sha256-fpjPJmtYY4xpep8yj8K6ZagPA+xhv3QbMMLq5nUflhE=";
  };
  cargoHash = "sha256-GxWcHA33qvKuXVZq8r5H1SJYxT5Y6ICICq+i67RCtX0=";
}
