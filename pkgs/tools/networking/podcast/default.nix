{ lib, fetchFromGitHub, rustPlatform, pkgconfig, openssl }:

rustPlatform.buildRustPackage rec {
  pname = "podcast";
  version = "0.17.5";

  src = fetchFromGitHub {
    owner = "njaremko";
    repo = pname;
    rev = version;
    sha256 = "1g1a6yw0zxyc6vjlbycvwnm501b5hz1xkz2lnadscvmlhnld0cc2";
  };

  cargoSha256 = "0h97j6g988xjm0b2yv2cpzdcwzs1srznpl7h7ibqps8pbblfi5rs";

  cargoPatches = [ ./cargo-lock.patch ];

  nativeBuildInputs = [ pkgconfig ];
  buildInputs = [ openssl ];

  meta = with lib; {
    description = "Command line podcast manager and player";
    homepage = "https://github.com/njaremko/podcast";
    license = licenses.gpl3Only;
    maintainers = with maintainers; [ djanatyn ];
  };
}
