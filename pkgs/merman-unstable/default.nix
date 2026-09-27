# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.8.0-alpha.6-unstable-2026-09-24";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "72c024776a4bf2dfb9a769b67910736229355906";
    hash = "sha256-ilAmJew9jCQ2i0rWCytovQ8+7fkiGj9bhxPY9ZMSZzA=";
  };
  cargoHash = "sha256-TPvCQ4XAPiPC8Nhuj7ksARbIu1uNSdanukQp7EvsFcQ=";
}
