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

RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
NC='\033[0m'

# LOG "message" [indent]
LOG() {
    local message="$1"
    local indent="${2:-0}"

    printf "%*s%s\n" "$indent" "" "$message"
}


# LOGE "message" [indent]
LOGE() {
    local message="$1"
    local indent="${2:-0}"

    printf "%*s" "$indent" ""
    printf "%b%s%b\n" "$RED" "$message" "$NC"
}

# LOGW "message" [indent]
LOGW() {
    local message="$1"
    local indent="${2:-0}"

    printf "%*s" "$indent" ""
    printf "%b%s%b\n" "$YELLOW" "$message" "$NC"
}

# Abort build
ABORT() {
    local message="${1:-Build aborted.}"

    echo
    printf "${RED} %s${NC}\n" "$message"
    exit 1
}

PRINT_BUILD_OUTCOME() {
    local status="$1"
    local apk_name="$2"
    if [ "$status" -eq 0 ]; then
        echo -e "${GREEN}[SUCCESS] Porting finished successfully for: $apk_name${NC}"
    else
        echo -e "${RED}[FAILED] Porting failed for: $apk_name${NC}"
    fi
}
