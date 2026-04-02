#!/bin/bash
export PYTHONPATH=$(pwd)
poetry run robot --outputdir /tests/reports tests/api

echo "Listing /tests"
ls -la /tests

echo "Listing /tests/reports"
ls -la /tests/reports