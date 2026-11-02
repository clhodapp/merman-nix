# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.3-unstable-2026-11-02";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "b5bf7a3b98c74a59a43422413a67aeb4bd2c1b99";
    hash = "sha256-yjVrh2C4vA9VWGgaMVtbF87CfS64yZ83QeItOFvm9wc=";
  };
  cargoHash = "sha256-eyA4x7W00CMZ7/772iUwOzq8km6m7s/aih3IAMtUoVc=";
}
