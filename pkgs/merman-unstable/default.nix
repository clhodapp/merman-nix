# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.10.0-alpha.2-unstable-2026-11-07";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "b0fb33daf6c3fda9ea9f9e5f0e490c01a98f9d3f";
    hash = "sha256-tzmATbt7iSwgr63Ul2Qc8FqDJz+V9MCW++78dwsQYuA=";
  };
  cargoHash = "sha256-cWE0sbSRWyxWs+PaWUntSaF49D+zniu2KojaVJFjwv4=";
}
