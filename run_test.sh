#!/bin/bash

# Configuration
export POLESTAR_USERNAME="YOUR_USERNAME_HERE"
export POLESTAR_VIN="YOUR_VIN_HERE"
export PATH="$HOME/.local/bin:$PATH"

# Secure password input
read -s -p "Enter Polestar Password for $POLESTAR_USERNAME: " POLESTAR_PASSWORD
export POLESTAR_PASSWORD
echo ""

# Run the test script using uv
cd "$(dirname "$0")"
uv run python test_pccs_grpc.py
