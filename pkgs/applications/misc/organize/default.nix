{ lib, buildPythonPackage, poetry, fetchFromGitHub, python38Packages }:

buildPythonPackage rec {
  pname = "organize";
  format = "pyproject";
  version = "1.9";

  src = fetchFromGitHub {
    owner = "tfeldmann";
    repo = "organize";
    rev = "v${version}";
    sha256 = "1xsbbcc880rgndm2fccr773q9fh7pj1py89d0sqw9k1bmdn8kjwj";
  };

  propagatedBuildInputs = with python38Packages; [
    poetry
    appdirs
    send2trash
    pyyaml
    textract
    ebooklib
  ];

  meta = with lib; {
    homepage = "https://organize.readthedocs.io/en/latest/";
    description =
      "organize is a command line utility to automate file organization tasks";
    license = licenses.mit;
    maintainers = with maintainers; [ djanatyn ];
  };
}
