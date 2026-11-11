# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.10.0-alpha.2-unstable-2026-11-11";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "d6cbe0322899c2948cefc4bc79984953d97447d0";
    hash = "sha256-VskLeS8ebTMQdmHXpD+MQGd64huaPyiY1dBBxJHfpuM=";
  };
  cargoHash = "sha256-GxWcHA33qvKuXVZq8r5H1SJYxT5Y6ICICq+i67RCtX0=";
}
