#!/bin/bash
export PYTHONPATH=$(pwd)
poetry run robot --outputdir /tests/reports tests/