{ lib, buildPythonPackage, fetchPypi, docx2txt, ebooklib }:

buildPythonPackage rec {
  pname = "textract";
  version = "1.6.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "040k2np22hgx8n3i0x2a8jymsgqy6swis940wgjzhnmq4gwv44v2";
  };

  propagatedBuildInputs = [ docx2txt ebooklib ];

  meta = with lib; {
    description = "Extract text from any document";
    homepage = "https://github.com/deanmalmgren/textract";
    license = licenses.mit;
  };
}
