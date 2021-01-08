let
  pkgs = import <nixpkgs> {};
  python-packages = python-packages: with python-packages; [
    aiofiles
  ]; 
in 
  pkgs.python37.withPackages python-packages
