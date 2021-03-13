{ stdenv, fetchFromGitHub, gzdoom, cmake, libvpx }:

stdenv.mkDerivation rec {
  name = "Raze";
  version = "0.9.0";
  src = fetchFromGitHub {
    owner = "coelckers";
    repo = "Raze";
    rev = "${version}_beta";
    sha256 = "18fm3kic482kcxdf8qjs9l8xdw5r8whrraj3bfyq8ckwai3q2f6m";
  };

  buildInputs = gzdoom.buildInputs ++ [ cmake libvpx ];
  dontStrip = true;
}
