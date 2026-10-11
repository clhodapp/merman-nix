# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.8.0-unstable-2026-10-11";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "54c5c6dfb99e540d0bf968cbf118c99da2c06a97";
    hash = "sha256-5Zusk4fbY7uafiFYhsmy2M/8yQ3zix2Xg+QKaEmEn5U=";
  };
  cargoHash = "sha256-tymg+qGHAMXJzsUTs1gZgiBvLbOtiNPa8aJ5CB0xyuA=";
}
