#!/bin/sh

echo "removing old zip files"
rm *.zip

for addon in *; do
  if [ -d ${addon} ]; then
    echo "building ${addon}"
    zip -qr9 ${addon}.zip ${addon}/*
  fi
 done
