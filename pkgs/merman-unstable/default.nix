# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.3-unstable-2026-10-31";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "3c09f00dcd1ccbcd22f1da5b875833fdf9c28cba";
    hash = "sha256-ExQY04ar+xMiVuClKlXOpMAMBvc9pdGdFH6v5WXIzvE=";
  };
  cargoHash = "sha256-wL29hCYJPUwEdwKC6MT9k6HSabklLyihM5w3Jc64RyU=";
}
