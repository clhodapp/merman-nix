# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.10.0-alpha.2-unstable-2026-11-08";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "ec6f180312cc0efc079434dcf1a633afbc3a0b5b";
    hash = "sha256-9hhh0BtucjYiWdZt0iyhOtk6I41KvBkfnGccUvea1QI=";
  };
  cargoHash = "sha256-cWE0sbSRWyxWs+PaWUntSaF49D+zniu2KojaVJFjwv4=";
}
