# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.8.0-unstable-2026-10-10";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "aa88d63e22eb64e8e66a659ba7e7a9f14d1ded7c";
    hash = "sha256-HThNUauq7EmabNM4BQhnk5dkBt3zWjQT6ya87oeQtkQ=";
  };
  cargoHash = "sha256-XOlVEezrAZSqFx8cFeY69zs3h1S8VKLzccVBP7lI7/M=";
}
