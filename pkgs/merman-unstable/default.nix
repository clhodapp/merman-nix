# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.10.0-alpha.2-unstable-2026-11-09";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "0b4a0edb20e1ef59e2b226e47a8b6669bed81b0b";
    hash = "sha256-RLI+SPh6EpubCWmB5+pa60fNNsYosNMjA/Y7KqsAoEU=";
  };
  cargoHash = "sha256-cWE0sbSRWyxWs+PaWUntSaF49D+zniu2KojaVJFjwv4=";
}
