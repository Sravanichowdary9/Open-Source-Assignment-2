#!/bin/bash

# Usage: ./empty_cells <input_file> <separator>
# Example: ./empty_cells sample1.txt ";"

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <file> <separator>"
    exit 1
fi

file="$1"
sep="$2"

# Read the first line to get headers
IFS="$sep" read -r -a headers < "$file"
col_count="${#headers[@]}"

# Initialize an array to store empty counts
for ((i = 0; i < col_count; i++)); do
    count[i]=0
done

# Process the file line-by-line (skip header)
tail -n +2 "$file" | while IFS="$sep" read -r -a fields; do
    for ((i = 0; i < col_count; i++)); do
        if [[ -z "${fields[i]}" ]]; then
            count[i]=$((count[i] + 1))
        fi
    done

    # Print line result (must be outside loop for correct scoping in POSIX)
    for ((i = 0; i < col_count; i++)); do
        echo "${headers[i]}: ${count[i]}"
    done
done | tail -n "$col_count"

