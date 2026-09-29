# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.8.0-alpha.6-unstable-2026-09-29";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "2d70832e25497aae282de9da78d1d6db12f2b475";
    hash = "sha256-5vyImU8/xS57Dx4UwgJBO+1bkoUE+ShQIebC6mGo5YA=";
  };
  cargoHash = "sha256-TPvCQ4XAPiPC8Nhuj7ksARbIu1uNSdanukQp7EvsFcQ=";
}
