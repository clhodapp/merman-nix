# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.10.0-unstable-2026-11-14";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "421d0b9e030ae00215ba9e2fbf9089b4c41a527d";
    hash = "sha256-TbiHP9jEDU1Tg+f7YOrgsSMJRJddBolQGEYQCcEGbUU=";
  };
  cargoHash = "sha256-IqBmWWtAG0p5R1j6cnYWGxLUEy/Z9U6kFnyHBltvz9A=";
}
