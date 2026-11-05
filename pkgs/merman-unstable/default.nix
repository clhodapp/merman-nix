# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.10.0-alpha.1-unstable-2026-11-05";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "a4498a22e7e4112402014dcb3e36213ddf1ed6b2";
    hash = "sha256-gWuCwExndaDUgXh4PNlv9+qU4LftUfBKMjMO1+CoGFs=";
  };
  cargoHash = "sha256-lxL6+pG+WE3q1gVM6SWJXYOUGsUEjaJYHMX6l/w6GwM=";
}
