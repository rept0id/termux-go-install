#!/bin/bash

### # # ###

PATH_RC="$HOME/.bashrc"

### # # ###

# install

pkg install -y clang

pkg install -y golang

# config
# config : alias
if grep -q '^alias go=' "$PATH_RC"; then
    sed -i 's|^alias go=.*|alias go="CC=/data/data/com.termux/files/usr/bin/arm-linux-androideabi-clang go"|' "$PATH_RC"
else
    echo 'alias go="CC=/data/data/com.termux/files/usr/bin/arm-linux-androideabi-clang go"' >> "$PATH_RC"
fi

### # # ###

source "$CONFIG"

### # # ###

echo "done"
