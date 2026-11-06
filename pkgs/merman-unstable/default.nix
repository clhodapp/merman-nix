# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.10.0-alpha.2-unstable-2026-11-06";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "a25f4e366236696bf962fcdd2ac325833ba9cdf0";
    hash = "sha256-sgIpNj+Ys9fGdYnOg8EQivXULsFye/Wgx4uvE6MWNVU=";
  };
  cargoHash = "sha256-cWE0sbSRWyxWs+PaWUntSaF49D+zniu2KojaVJFjwv4=";
}
