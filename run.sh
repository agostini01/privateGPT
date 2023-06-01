#!/bin/bash
set -e -o pipefail
python3 ingest.py
python3 privateGPT.py