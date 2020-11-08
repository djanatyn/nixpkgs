{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  # TODO: add cargo-lock.patch file
  #
  # the tool fetches a webbrowser-rs fork for android support
  # using a git path in Cargo.lock. change the Cargo.lock to use crates.io
  # instead, or ship the fork and load it locally
  pname = "youtube-subscriptions";
  version = "0.2.73";

  src = fetchFromGitHub {
    owner = "yazgoo";
    repo = pname;
    rev = version;
    sha256 = "0mrm9937vyl953s45qand89lb3rj0vmpnvyp0shxbvh778h99d3p";
  };

  doCheck = false;

  cargoSha256 = "1wb86mck9md7h2iz0d2gyw7d2in8dk8hsixysiw7rp4i8ykv3w9x";

  meta = with lib; {
    description = "Terminal UI for viewing youtube and peertube subscriptions";
    homepage = "https://github.com/yazgoo/youtube-subscriptions";
    license = licenses.mit;
    maintainers = with maintainers; [ djanatyn ];
  };
}
