# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.2-unstable-2026-10-28";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "0ce21f1cc66435a6650a4dfae2dca39a9028f50f";
    hash = "sha256-cwxLn6DlF7g4GxsTfxDmyxz4UEyYZWs3aWL5iQ8BM+I=";
  };
  cargoHash = "sha256-2cjX9xQEDuTaG1e1r9RGLI9Ck5NwHZlnTzn6gYf23Yk=";
}
