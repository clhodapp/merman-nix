# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.0-unstable-2026-10-17";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "d9f8f27a2f530cb3d20f84dbc5055ea271426942";
    hash = "sha256-zH+xGCSHSKwOh3T7FUq5zq3aRydehBYIhEtBYosRDI0=";
  };
  cargoHash = "sha256-JdMsKjL5akpCTEGbThNnZ82K3/ldlQ+35jUEzXu1vts=";
}
