#!/bin/bash
# Fetch live metrics from the local Polestar exporter
curl -s http://localhost:9876/metrics | grep polestar
