# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.0-unstable-2026-10-12";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "bad5019bfba693e3b5b4ddf161d9490ce55071af";
    hash = "sha256-553Osy5YJ21CgFAXiDGzO/GlYeBZugGyqr4CmYz0k4U=";
  };
  cargoHash = "sha256-X9PmBX5egtCx04VFfBRvQ/g0W6bSprDhEvPrPHbFCmE=";
}
