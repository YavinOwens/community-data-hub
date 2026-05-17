#!/bin/bash
set -e

# Downloads the SFHQ Kaggle dataset into the local data/ directory.
# Requires the Kaggle CLI and valid Kaggle API credentials (~/.kaggle/kaggle.json).
# you will need to "pip install kaggle" you maybe prompted for Kaggle API credentials before running this script runs.  

if ! command -v kaggle >/dev/null 2>&1; then
  echo "Error: kaggle CLI is not installed. Install it with 'pip install kaggle'."
  exit 1
fi

mkdir -p data
kaggle datasets download -d selfishgene/synthetic-faces-high-quality-sfhq-part-1 -p data --unzip

echo "Dataset download complete. Files are available in data/."