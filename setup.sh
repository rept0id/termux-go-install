#!/bin/bash

### # # ###

CONFIG=~/.bashrc

### # # ###

pkg install -y clang

pkg install -y golang

if grep -q '^alias go=' "$CONFIG"; then
    sed -i 's|^alias go=.*|alias go="CC=/data/data/com.termux/files/usr/bin/arm-linux-androideabi-clang go"|' "$CONFIG"
else
    echo 'alias go="CC=/data/data/com.termux/files/usr/bin/arm-linux-androideabi-clang go"' >> "$CONFIG"
fi

source "$CONFIG"

### # # ###

echo "done"
