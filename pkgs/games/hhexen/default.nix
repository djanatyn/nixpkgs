{ fetchurl, SDL, stdenv }:

stdenv.mkDerivation rec {
  name = "hhexen";
  version = "1.6.3";
  src = fetchurl {
    url = "mirror://sourceforge/hhexen/hhexen-${version}-src.tgz";
    sha256 = "1jwccqawbdn0rjn5p59j21rjy460jdhps7zwn2z0gq9biggw325b";
  };

  buildInputs = [ SDL ];
  installPhase = ''
    install -Dm755 hhexen-gl -t $out/bin
  '';

  meta = with stdenv.lib; {
    description = "Linux port of Raven Game's Hexen";
    homepage = "http://hhexen.sourceforge.net/hhexen.html";
    license = licenses.gpl2Plus;
    maintainers = with maintainers; [ djanatyn ];
  };
}
