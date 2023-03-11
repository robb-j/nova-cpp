#!/usr/bin/env bash

# Ensure the build fails if TypeScript fails
set -e

# Compile the c++ parser
if [ -f cpp.novaextension/Syntaxes/libtree-sitter-cpp.dylib ]
then
  echo "Skipping cpp dylib"
else
  $(dirname "$0")/compile_parser.sh parsers/cpp
  cp parsers/cpp/libtree-sitter-cpp.dylib cpp.novaextension/Syntaxes/libtree-sitter-cpp.dylib
  cp -R node_modules/tree-sitter-cpp/queries/* cpp.novaextension/Queries/cpp/
fi

# Compile the c parser
if [ -f cpp.novaextension/Syntaxes/libtree-sitter-c.dylib ]
then
  echo "Skipping c dylib"
else
  $(dirname "$0")/compile_parser.sh parsers/c
  cp parsers/c/libtree-sitter-c.dylib cpp.novaextension/Syntaxes/libtree-sitter-c.dylib
  cp -R node_modules/tree-sitter-c/queries/* cpp.novaextension/Queries/c/
fi

# Lint TypeScript source code
npx tsc --noEmit --pretty

# TODO: Install extension dependencies?
# npm --prefix cpp.novaextension i --no-audit

# Bundle into JavaScript
# for no-node-js testing use: 
# ./node_modules/.bin/esbuild \
npx esbuild \
  --bundle \
  --format=cjs \
  --target=es6 \
  --platform=neutral \
  --outfile=cpp.novaextension/Scripts/main.dist.js \
  src/extension/main.ts
