# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.10.0-unstable-2026-11-12";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "7fec9e206a23eaf807e2d729a01c85c89f10b81a";
    hash = "sha256-LCnJAumicU7TM+bXaqv66DiYUViKpnVLKx3fzVbrRQA=";
  };
  cargoHash = "sha256-GxWcHA33qvKuXVZq8r5H1SJYxT5Y6ICICq+i67RCtX0=";
}
