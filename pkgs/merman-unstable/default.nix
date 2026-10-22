# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.2-unstable-2026-10-22";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "83e3ea74bf4da30089a8012ec2d3418d40638e52";
    hash = "sha256-uXr8DZBh302ApJ0k2XnNF8eS8DeneyVSFU72mToc9Og=";
  };
  cargoHash = "sha256-dXLHw8dCpxNQDFcusR6EW2J3cwZ1lp2L1zXX4CAmZl8=";
}
