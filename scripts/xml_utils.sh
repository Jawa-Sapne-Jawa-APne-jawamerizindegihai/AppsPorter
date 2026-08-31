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


SET_MIN_SDK() {
    local manifest_file="$1"
    local min_sdk="$2"

    LOG "Setting minSdkVersion to $min_sdk..." 2

    if ! xmlstarlet sel -t -v "/manifest/uses-sdk/@android:minSdkVersion" "$manifest_file" >/dev/null 2>&1; then
        xmlstarlet ed -L -s "/manifest" -t elem -n "uses-sdk-temp" \
            -i "//uses-sdk-temp" -t attr -n "android:minSdkVersion" -v "$min_sdk" \
            -r "//uses-sdk-temp" -v "uses-sdk" "$manifest_file"
    else
        xmlstarlet ed -L -u "/manifest/uses-sdk/@android:minSdkVersion" -v "$min_sdk" "$manifest_file"
    fi
}


SET_MAX_SDK() {
    local manifest_file="$1"
    local max_sdk="$2"

    LOG "Setting maxSdkVersion to $max_sdk..." 2

    if ! xmlstarlet sel -t -v "/manifest/uses-sdk/@android:maxSdkVersion" "$manifest_file" >/dev/null 2>&1; then
        xmlstarlet ed -L -a "/manifest/uses-sdk" -t attr -n "android:maxSdkVersion" -v "$max_sdk" "$manifest_file"
    else
        xmlstarlet ed -L -u "/manifest/uses-sdk/@android:maxSdkVersion" -v "$max_sdk" "$manifest_file"
    fi
}


SET_PACKAGE_NAME() {
    local manifest_file="$1"
    local new_package="$2"

    LOG "Changing package name to: $new_package" 2
    xmlstarlet ed -L -u "/manifest/@package" -v "$new_package" "$manifest_file"
}


SET_VERSION_NAME() {
    local manifest_file="$1"
    local version_name="$2"

    LOG "Setting versionName to: $version_name" 2
    xmlstarlet ed -L -u "/manifest/@android:versionName" -v "$version_name" "$manifest_file"
}


SET_VERSION_CODE() {
    local manifest_file="$1"
    local version_code="$2"

    LOG "Setting versionCode to: $version_code" 2
    xmlstarlet ed -L -u "/manifest/@android:versionCode" -v "$version_code" "$manifest_file"
}

FIND_REPLACE_TEXT() {
    local xml_file="$1"
    local search_text="$2"
    local replace_text="$3"

    LOG "Replacing '$search_text' with '$replace_text' in $(basename "$xml_file")" 2
    sed -i "s|${search_text}|${replace_text}|g" "$xml_file"
}


APPEND_IN_XML() {
    local xml_file="$1"
    local parent_xpath="$2"
    local xml_snippet="$3"


    LOG "Appending node.." 2

    xmlstarlet ed -L -s "$parent_xpath" -t subnode -v "$xml_snippet" "$xml_file" 2>/dev/null || \
        sed -i "s|${parent_xpath}>|${parent_xpath}>\n${xml_snippet}|g" "$xml_file"
}


SET_EXTRACT_NATIVE_LIBS() {
    local manifest_file="$1"
    local value="${2:-true}"


    if xmlstarlet sel -N android="http://schemas.android.com/apk/res/android" \
        -t -v "/manifest/application/@android:extractNativeLibs" "$manifest_file" >/dev/null 2>&1; then

        xmlstarlet ed -L -N android="http://schemas.android.com/apk/res/android" \
            -u "/manifest/application/@android:extractNativeLibs" -v "$value" "$manifest_file"
    else
        xmlstarlet ed -L -N android="http://schemas.android.com/apk/res/android" \
            -a "/manifest/application" -t attr -n "android:extractNativeLibs" -v "$value" "$manifest_file"
    fi
}
