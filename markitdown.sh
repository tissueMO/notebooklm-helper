#!/bin/bash
# e.g. markitdown.sh < input.pdf > output.md

docker run --rm -i markitdown:latest "$@"
