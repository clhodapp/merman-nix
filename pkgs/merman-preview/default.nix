# SPDX-License-Identifier: MIT
#
# Upstream's newest tag, prerelease or not. update.yml moves it.
{ buildMerman, fetchFromGitHub }:
buildMerman rec {
  version = "0.10.0-alpha.1";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "v${version}";
    hash = "sha256-qV5WWUiCGF6hEP9n57fKEbLkD6vLu1dE4flkH7uxg24=";
  };
  cargoHash = "sha256-lxL6+pG+WE3q1gVM6SWJXYOUGsUEjaJYHMX6l/w6GwM=";
}
