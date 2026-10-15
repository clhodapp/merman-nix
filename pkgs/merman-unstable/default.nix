# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.0-unstable-2026-10-15";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "b9844db7b747111690bf6369d4536885a85e35a7";
    hash = "sha256-hXqhZj2CSzfnZvMlg5xVQUKZsgNZYDRTrZIPGVHNihg=";
  };
  cargoHash = "sha256-Wnziembmxzr1RLTJbWF+2BuKnihECMD6/mnB49DS76w=";
}
