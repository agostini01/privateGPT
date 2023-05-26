#!/bin/bash
set -o pipefail
python3 ingest.py
python3 privateGPT.py