#!/usr/bin/env bash

docker run --rm -ti -v $PWD:/work -w /work mmozeiko/mingw-w64 make clean client server-mingw64
