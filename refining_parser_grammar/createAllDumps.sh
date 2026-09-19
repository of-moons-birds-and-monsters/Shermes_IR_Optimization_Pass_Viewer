#!/bin/bash

# Directory to search (defaults to current directory, or pass as first argument)
DIR="${1:-.}"

SHERMES=~/shermes/may29th_shermesPull/debug_build/bin/shermes
# Loop through all .ts files in the directory
for file in "$DIR"/*.ts; do
    # Check that the glob matched actual files (avoids errors on empty match)
    if [ -e "$file" ]; then
       base="${file%.*}"
       $SHERMES -Xdump-between-passes -typed "$file" -o /tmp/"$file" &> /home/justmeeos/shermes/may29th_shermesPull/ir_pass_viewer/refining_parser_grammar/dumps/"$base.dump.txt"
    fi
done
