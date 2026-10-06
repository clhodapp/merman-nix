# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.8.0-unstable-2026-10-06";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "03aee1fff43f0046cdee8739893e6c25bafe9cba";
    hash = "sha256-CQNfbP57ZYoJlEq0sazjVqvtJCfBoLR3RzxFDl7GEUE=";
  };
  cargoHash = "sha256-XOlVEezrAZSqFx8cFeY69zs3h1S8VKLzccVBP7lI7/M=";
}
