#!/bin/bash

git clone https://github.com/microsoft/markitdown.git
cd markitdown
docker build -t markitdown:latest .
