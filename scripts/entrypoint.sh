#!/usr/bin/env sh
set -e
generators=$(./scripts/calculateGenerators.js $*) 
template=$1
echo Installing generators: $generators
npm install -q $generators
cd src
echo building template: $template
$(npm bin)/yo $template