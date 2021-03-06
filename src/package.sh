#!/bin/bash

version="0.6.8"

set -e

rm -rf wsl-terminal && mkdir -p wsl-terminal && cd wsl-terminal
cp -r ../build/{bin,etc,doc} .
cp -r ../*.exe ../tools ../usr ../../LICENSE ../../README.md .
rm -f ../*.exe

cd ..
rm -f ../wsl-terminal-${version}.7z
7z a ../wsl-terminal-${version}.7z wsl-terminal
rm -f ../wsl-terminal-${version}.zip
7z a ../wsl-terminal-${version}.zip wsl-terminal

cp *.ahk wsl-terminal
rm -rf ../output && mv wsl-terminal ../output
