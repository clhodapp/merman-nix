# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.10.0-alpha.1-unstable-2026-11-03";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "0649021aa9bca54add6911b3551d4228943c0987";
    hash = "sha256-D4jqFP47/aigwzB/L+4rSHxU3MDOKd3dsaXEx8z1aAk=";
  };
  cargoHash = "sha256-lxL6+pG+WE3q1gVM6SWJXYOUGsUEjaJYHMX6l/w6GwM=";
}
