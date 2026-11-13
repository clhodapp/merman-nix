# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.10.0-unstable-2026-11-13";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "c299c21a279c3f8ae0cb3db5ffbe46a6f5e9323f";
    hash = "sha256-gdOU8BFYhpRCpcThw0mPKH0/z5ROt5j2Co8S4YuEpug=";
  };
  cargoHash = "sha256-IqBmWWtAG0p5R1j6cnYWGxLUEy/Z9U6kFnyHBltvz9A=";
}
