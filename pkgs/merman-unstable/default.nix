# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.3-unstable-2026-11-01";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "939ccec9f8d1391ae672a5397d5b57d10a1307b8";
    hash = "sha256-yPoCDg1OJsTEyfP+JWEjiN/8BtQSZyxS+CCzdfA8rew=";
  };
  cargoHash = "sha256-wL29hCYJPUwEdwKC6MT9k6HSabklLyihM5w3Jc64RyU=";
}
