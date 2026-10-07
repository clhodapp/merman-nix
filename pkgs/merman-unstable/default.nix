# SPDX-License-Identifier: MIT
#
# A snapshot of upstream's main branch: the newest tag's version, the
# snapshot date and the commit. update.yml moves all three.
{ buildMerman, fetchFromGitHub }:
buildMerman {
  version = "0.8.0-unstable-2026-10-07";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "692b707adb85159274146afdae7164abf36f6f80";
    hash = "sha256-VR5G+UgdlNDn5skdVZYqYFPtWrYINoQSyP359JniHNo=";
  };
  cargoHash = "sha256-XOlVEezrAZSqFx8cFeY69zs3h1S8VKLzccVBP7lI7/M=";
}
