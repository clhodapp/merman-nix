# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.2-unstable-2026-10-29";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "dc3ca0f22d34bc4306c81b237b7ed5c974d4ca1d";
    hash = "sha256-hz2quEygmt1J7r+CAq0funizUj7a/8SNzId9lwCoDKc=";
  };
  cargoHash = "sha256-2cjX9xQEDuTaG1e1r9RGLI9Ck5NwHZlnTzn6gYf23Yk=";
}
