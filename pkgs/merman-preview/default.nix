# SPDX-License-Identifier: MIT
#
# Upstream's newest tag, prerelease or not. update.yml moves it.
{ buildMerman, fetchFromGitHub }:
buildMerman rec {
  version = "0.8.0-alpha.6";
  src = fetchFromGitHub {
    owner = "Latias94";
    repo = "merman";
    rev = "v${version}";
    hash = "sha256-zOOy6DnGcMjXMtdtBSWI3B6O8IQTm7LPaky48ydS1KE=";
  };
  cargoHash = "sha256-9Wx+nTuTaR79htmkAAiRFOaX14b9fQiZ+hhxi2mF3EE=";
}
