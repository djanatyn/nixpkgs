{ lib, buildPythonPackage, fetchPypi }:

buildPythonPackage rec {
  pname = "docx2txt";
  version = "0.8";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1r9nj80ff8irf8vqg71pbds0gzz34kcmf2knwm3kjbgygj6xj1ic";
  };

  meta = with lib; {
    description = "A utility to extract text and images from docx files";
    homepage = "https://github.com/ankushshah89/python-docx2txt";
    license = licenses.mit;
  };
}
