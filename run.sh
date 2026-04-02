#!/bin/bash
set -e
export PYTHONPATH=$(pwd)

google-chrome --version || chromium --version
chromedriver --version

poetry run robot \
  --variable CHROME_OPTS:"\--headless=new 
                          \--no-sandbox 
                          \--disable-dev-shm-usage 
                          \--disable-gpu 
                          \--disable-software-rasterizer 
                          \--window-size=1920,1080" \
  --outputdir /tests/reports \
  tests


