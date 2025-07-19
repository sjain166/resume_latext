#!/bin/bash

# LaTeX Cleanup Script
# Removes auxiliary files generated during LaTeX compilation

echo "🧹 Cleaning up LaTeX auxiliary files..."

# File extensions to clean
EXTENSIONS=(
    "*.aux"
    "*.bbl" 
    "*.blg"
    "*.fls"
    "*.fdb_latexmk"
    "*.log"
    "*.out"
    "*.synctex.gz"
    "*.toc"
    "*.lof"
    "*.lot"
    "*.nav"
    "*.snm"
    "*.vrb"
    "*.idx"
    "*.ind"
    "*.ilg"
)

# Function to clean directory
clean_directory() {
    local dir="$1"
    echo "📁 Cleaning directory: $dir"
    
    for ext in "${EXTENSIONS[@]}"; do
        find "$dir" -name "$ext" -type f -delete 2>/dev/null
    done
}

# Clean all subdirectories
for dir in */; do
    if [ -d "$dir" ]; then
        clean_directory "$dir"
    fi
done

# Clean root directory
clean_directory "."

echo "✅ Cleanup completed!"

# Optional: Show remaining PDF files
echo ""
echo "📄 Remaining PDF files:"
find . -name "*.pdf" -type f 