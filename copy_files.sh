#!/bin/bash

# Usage: ./copy_files.sh /path/source /path/destination

SRC="$1"
DST="$2"

# Check arguments
if [[ -z "$SRC" || -z "$DST" ]]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

# Ensure source exists
if [[ ! -d "$SRC" ]]; then
    echo "Source directory does not exist: $SRC"
    exit 1
fi

# Create destination if missing
mkdir -p "$DST"

# Copy files (non-recursive by default; change as needed)
cp "$SRC"/* "$DST"/

echo "Files copied from $SRC to $DST"

