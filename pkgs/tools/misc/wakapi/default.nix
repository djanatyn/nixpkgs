{ stdenv, lib, fetchFromGitHub, buildGoModule }:

buildGoModule rec {
  name = "wakapi";
  version = "1.24.5";

  src = fetchFromGitHub {
    owner = "muety";
    repo = "wakapi";
    rev = version;
    sha256 = "0rf72hwy6m2fp2d1qxp0kmk7lwpl4lhs3fyf4aa40zkg1hhw417a";
  };

  vendorSha256 = null;

  meta = with stdenv.lib; {
    description = "Self-hosted WakaTime-compatible backend for coding statistics";
    homepage = "https//github.com/muety/wakapi";
    license = licenses.gpl3;
    maintainers = with maintainers; [ djanatyn ];
  };
}
