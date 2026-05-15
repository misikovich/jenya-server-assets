#!/bin/bash
cd "$(dirname "$0")"
rm -f resource-pack.zip
zip -r resource-pack.zip pack.mcmeta pack.png assets/
echo "Done: resource-pack.zip"
