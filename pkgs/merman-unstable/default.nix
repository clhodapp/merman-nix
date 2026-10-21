# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.9.1-unstable-2026-10-21";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "f3b7d621442b611914f94282ddda7371256c98bb";
    hash = "sha256-/mFAzzX2l/jKa90C6OJg5gJ1BCcexUzDR/zy51p9Fko=";
  };
  cargoHash = "sha256-QHK2h/QKVkiBr51cL2xhbdnNK0zPj6qC6t1D79AnH/g=";
}
