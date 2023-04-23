#!/bin/bash

echo "== Generating Pansy Protocols =="
generated_directory="lib/src"

echo "[*] Cleaning up old files"
rm -rf "$generated_directory"
mkdir -p "$generated_directory"

echo "[*] Generating well-known types"
files=$(find /usr/include/google/protobuf -iname "*.proto")
protoc "--dart_out=grpc:$generated_directory" $files

echo "[*] Generating vault protocols"
files=$(find "protocols/vault" -iname "*.proto")
protoc "--dart_out=grpc:$generated_directory" -I "protocols" $files

echo "[*] Generating sdk protocols"
files=$(find "protocols/sdk" -iname "*.proto")
protoc "--dart_out=grpc:$generated_directory" -I "protocols" $files

echo "[*] Generating index file"
dart run index_generator