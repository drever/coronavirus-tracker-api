let
  pkgs = import ../nixpkgs {};
  python = pkgs.python37;
  coronavirus-tracker-api = ./default.nix;
  python-packages = python-packages: with python-packages; [
    aiofiles
    aiohttp
    aioredis
    asgiref
    async-timeout
    asyncache
    attrs
    cachetools
    certifi
    cffi
    chardet
    click
    cryptography
#    dataclasses - We are using python37 which has dataclasses included
#    fastapi - error: wasmer-1.0.0-beta1 not supported for interpreter python3.7 
    gunicorn
    h11
    hiredis
    httptools
    idna-ssl
    idna
    multidict
    psutil
    pycparser
#    pydantic[dotenv] - pyenv is used to switch python version. Crossing fingers that it is not needed
    pyopenssl
    python-dateutil
    python-dotenv
    requests
    # scout-apm - error: wasmer-1.0.0-beta1 not supported for interpreter python3.7
    sentry-sdk
    six
    # starlette - error: wasmer-1.0.0-beta1 not supported for interpreter python3.7
    # urllib3[secure]
    uvicorn
    uvloop
    websockets
    wrapt
    yarl

    coronavirus-tracker-api
  ]; 
in 
  python.withPackages python-packages

