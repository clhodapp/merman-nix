# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.1-unstable-2026-10-20";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "b65d2d581802879e2e057e58d5fdb3e1378fcc20";
    hash = "sha256-VQDUWCW9ekIBgngRmlH9FLcF2uZvQMn7kniypjyFuQI=";
  };
  cargoHash = "sha256-QHK2h/QKVkiBr51cL2xhbdnNK0zPj6qC6t1D79AnH/g=";
}
