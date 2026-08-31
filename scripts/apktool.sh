#!/usr/bin/env bash
#
#  Copyright (c) 2022 Sameer Al Sahab
#  Licensed under the MIT License. See LICENSE file for details.
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
#


KEYS_DIR="$ROOT/keys"
CERT_FOLDER="$KEYS_DIR/aosp"
CERT_PREFIX="aosp_testkey"
PEM_KEY="$CERT_FOLDER/${CERT_PREFIX}.x509.pem"
PK8_KEY="$CERT_FOLDER/${CERT_PREFIX}.pk8"

# Tools
APKTOOL_JAR="$TOOLS_DIR/apktool/apktool.jar"
SIGNAPK_JAR="$TOOLS_DIR/signapk/signapk.jar"

HEAP_SIZE="${HEAP_SIZE:-2048}"

# Framework setup
FRAMEWORK_DIR="$ROOT/frameworks"
FRAMEWORK_TAG="${FRAMEWORK_TAG:-custom}"

CAN_SIGN=1

INSTALL_FRAMEWORK() {
    local fw_apk="$1"

    if [ ! -f "$fw_apk" ]; then
        LOGE "Framework file '$fw_apk' does not exist." 2
        ABORT "Framework installation failed."
    fi

    LOG "Installing framework: $(basename "$fw_apk")" 2
    java -jar "$APKTOOL_JAR" if -p "$FRAMEWORK_DIR" -t "$FRAMEWORK_TAG" "$fw_apk"
}


DECOMPILE() {
    local input_file="$1"
    local output_path="$2"

    if [ -z "$input_file" ] || [ -z "$output_path" ]; then
        LOGE "Usage: DECOMPILE <input_apk_or_jar> <output_directory>" 2
        ABORT "Invalid decompile parameters."
    fi

    if [ ! -f "$input_file" ]; then
        LOGE "Input file '$input_file' not found." 2
        ABORT "Decompile failed."
    fi

    LOG "Decompiling $(basename "$input_file") to $output_path" 2

    if java -Xmx"${HEAP_SIZE}m" -jar "$APKTOOL_JAR" d -q \
        --no-debug-info \
        -j "$THREAD_COUNT" \
        -o "$output_path" \
        -p "$FRAMEWORK_DIR" \
        -t "$FRAMEWORK_TAG" \
        "$input_file"; then

        CAN_SIGN=1
        return 0
    fi

    LOGW "Decompile failed with framework directory. Retrying without framework and resources" 2

    rm -rf "$output_path" $FRAMEWORK_DIR

    if ! java -Xmx"${HEAP_SIZE}m" -jar "$APKTOOL_JAR" d  --only-manifest -q \
        --no-debug-info \
        -j "$THREAD_COUNT" \
        -o "$output_path" \
        "$input_file"; then

        ABORT "Decompile failed even without framework."
    fi

    CAN_SIGN=0
}

BUILD() {
    local src_dir="$1"
    local output_path="$2"

    if [ -z "$src_dir" ] || [ -z "$output_path" ]; then
        LOGE "Usage: BUILD <path_to_build_from> <output_apk_path>" 2
        ABORT "Invalid build parameters."
    fi

    if [ ! -d "$src_dir" ]; then
        LOGE "Source directory '$src_dir' does not exist." 2
        ABORT "Build failed."
    fi

    LOG "Building APK from $src_dir to $output_path" 2

    java -Xmx"${HEAP_SIZE}m" -jar "$APKTOOL_JAR" b -api "29" -q \
        -j "$THREAD_COUNT" \
        -p "$FRAMEWORK_DIR" \
        -o "$output_path" \
        "$src_dir"
}


SIGN_APK() {
    local input_apk="$1"
    local output_apk="$2"

    if [ "$CAN_SIGN" -ne 1 ]; then
        LOGW "Skipping APK signing because decompilation used manifest-only mode. you have to sign the apk manually via MT manager or other third party tools." 2
        return 0
    fi

    if [ -z "$input_apk" ] || [ -z "$output_apk" ]; then
        LOGE "Usage: SIGN_APK <input_unsigned_apk> <output_signed_apk>" 2
        ABORT "Invalid signing parameters."
    fi

    if [ ! -f "$PEM_KEY" ] || [ ! -f "$PK8_KEY" ]; then
        LOGE "Signing keys missing in $KEYS_DIR" 2
        ABORT "Platform keys missing."
    fi

    LOG "Signing APK..." 2

    java -jar "$SIGNAPK_JAR" \
        "$PEM_KEY" \
        "$PK8_KEY" \
        "$input_apk" \
        "$output_apk"
}
