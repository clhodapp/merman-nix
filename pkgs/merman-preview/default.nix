# SPDX-License-Identifier: MIT
#
# Upstream's newest tag, prerelease or not. update.yml moves it.
{ buildMerman, fetchFromGitHub }:
buildMerman rec {
  version = "0.10.0-alpha.2";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "v${version}";
    hash = "sha256-sgIpNj+Ys9fGdYnOg8EQivXULsFye/Wgx4uvE6MWNVU=";
  };
  cargoHash = "sha256-cWE0sbSRWyxWs+PaWUntSaF49D+zniu2KojaVJFjwv4=";
}
