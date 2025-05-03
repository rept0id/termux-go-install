#!/bin/bash

### # # ###

CONFIG=~/.bashrc

### # # ###

pkg install -y clang

pkg install -y golang

if grep -q '^export CC=' "$CONFIG"; then
    sed -i 's/^export CC=.*/export CC=gcc/' "$CONFIG"
else
    echo 'export CC=gcc' >> "$CONFIG"
fi

source "$CONFIG"

### # # ###

echo "done"
