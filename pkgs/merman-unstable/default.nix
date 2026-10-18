# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.1-unstable-2026-10-18";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "bfddc833bfcb611649712a6abe7d15b4ee73e41e";
    hash = "sha256-GJ0fn4UtDMyfYYfHJkRar8ZfIdZpBp8UXmT0a5OVnyg=";
  };
  cargoHash = "sha256-JdMsKjL5akpCTEGbThNnZ82K3/ldlQ+35jUEzXu1vts=";
}
