#!/bin/bash
set -o pipefail
python ingest.py
python privateGPT.py