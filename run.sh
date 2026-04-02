#!/bin/bash
set -e
export PYTHONPATH=$(pwd)

poetry run robot \
  --outputdir /tests/reports \
  tests

