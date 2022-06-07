#!/bin/bash
set -eu

if [ -f .nginx/bin/nginx-start ]; then
    cd .nginx > /dev/null 2>&1
    eval "bin/nginx-start &"
    cd - > /dev/null 2>&1
else
    echo "No .nginx/bin/nginx-start file found!"
    exit 1
fi