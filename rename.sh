#!/bin/bash

# Caminho da pasta (padrão: diretório atual)
ROOT_DIR="${1:-.}"

# Percorre recursivamente e renomeia os arquivos
find "$ROOT_DIR" -type f -name "metadata.json" | while read -r file; do
    dir="$(dirname "$file")"
    mv "$file" "$dir/remove_metadata.json"
    echo "Renomeado: $file -> $dir/remove_metadata.json"
done
