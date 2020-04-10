#!/bin/bash


download_blender279() {
    filepath="./build/blender/blender-2.79-linux-glibc219-x86_64.tar.bz2"
    download=false
    if test -f "$filepath"; then
        if [ `md5sum "$filepath" | awk '{print $1}'` != "f89177ef97cad7d78d06cda7b9e66c8d" ]; then
            download=true
        fi
    else
        download=true
    fi
    if [ "$download" == true ] ; then
        curl -SL "https://mirror.clarkson.edu/blender/release/Blender2.79/blender-2.79-linux-glibc219-x86_64.tar.bz2" -o "$filepath"
    fi
}

download_blender280() {
    filepath="./build/blender/blender-2.80-linux-glibc217-x86_64.tar.bz2"
    download=false
    if test -f "$filepath"; then
        if [ `md5sum "$filepath" | awk '{print $1}'` != "6f8afe0326093e479cb5505a8c783336" ]; then
            download=true
        fi
    else
        download=true
    fi
    if [ "$download" == true ] ; then
        curl -SL "https://mirror.clarkson.edu/blender/release/Blender2.80/blender-2.80-linux-glibc217-x86_64.tar.bz2" -o "$filepath"
    fi
}

download_blender281() {
    filepath="./build/blender/blender-2.81-linux-glibc217-x86_64.tar.bz2"
    download=false
    if test -f "$filepath"; then
        if [ `md5sum "$filepath" | awk '{print $1}'` != "49fd7a97a2b8453b9ca130843e0fa27e" ]; then
            download=true
        fi
    else
        download=true
    fi
    if [ "$download" == true ] ; then
        curl -SL "https://mirror.clarkson.edu/blender/release/Blender2.81/blender-2.81-linux-glibc217-x86_64.tar.bz2" -o "$filepath"
    fi
}

main() {
    mkdir -p build/blender
    download_blender279
    download_blender280
    download_blender281
}

main