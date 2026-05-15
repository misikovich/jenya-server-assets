#!/bin/bash
cd "$(dirname "$0")"
rm -f resource-pack.zip
zip -r resource-pack.zip pack.mcmeta pack.png assets/ -x "**/.DS_Store"
sha1=$(shasum -a 1 resource-pack.zip | awk '{print $1}')
echo "$sha1" > sha1
echo "Done: resource-pack.zip"
echo "SHA1: $sha1"
