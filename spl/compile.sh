#!/bin/bash

# Define compilers for .spl and .expl files
SPL_COMPILER="./spl" # Replace with the actual command for your SPL compiler

echo "Starting compilation process..."

# Recursively find and compile .spl files
echo "Looking for .spl files..."
find . -type f -name "*.spl" | while read -r spl_file; do
    echo "Compiling $spl_file"
    $SPL_COMPILER "$spl_file"
    if [ $? -eq 0 ]; then
        echo "[SUCCESS] $spl_file compiled successfully."
    else
        echo "[ERROR] Failed to compile $spl_file."
    fi
done


echo "Compilation process completed."
