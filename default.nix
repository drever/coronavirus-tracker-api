{ lib, buildPythonPackage, fetchFromGitHub }:

buildPythonPackage rec {
  pname = "coronavirus-tracker-api";
  version = "0.2.X";

  src = fetchFromGitHub {
    owner = "ExpDev07";
    repo = "coronavirus-tracker-api";
    rev = "348628d046947fe38897c38c8ca1c7948b5228a5";
    sha256 = "1ce8d7686dadb75c95372f74c4765dbc755bab0f";
  };

  doCheck = false;

  meta = with lib; {
    homepage = "https://github.com/ExpDev07/coronavirus-tracker-api";
    description = "Provides up-to-date data about Coronavirus outbreak. Includes numbers about confirmed cases, deaths and recovered. Support multiple data-sources.";
    license = licenses.gpl3;
    maintainers = with maintainers; [ drever ];
  };
}
