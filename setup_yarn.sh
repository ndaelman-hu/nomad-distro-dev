#!/bin/bash
cwd=$(pwd)
target_dir=$(find . -name 'nomad-FAIR/gui' -type d)

if cd "$target_dir"; then
    yarn add --dev cross-env
    cd "$cwd"
else
    echo "Failed to change directory to $target_dir"
    exit 1
fi