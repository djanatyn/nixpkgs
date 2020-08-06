{ lib, buildPythonPackage, fetchPypi, lxml, six }:

buildPythonPackage rec {
  pname = "EbookLib";
  version = "0.17.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1w972g0kmh9cdxf3kjr7v4k99wvv4lxv3rxkip39c08550nf48zy";
  };

  propagatedBuildInputs = [ lxml six ];

  meta = with lib; {
    description = "Extract text from any document";
    homepage = "https://github.com/deanmalmgren/textract";
    license = licenses.mit;
  };
}
