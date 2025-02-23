#!/bin/bash

wget --spider --recursive --no-verbose --level=2 --accept=html --output-file=/tmp/wget.log "$@"
grep -oP '(?<=URL:)https?://[^[]+' /tmp/wget.log
rm -f /tmp/wget.log
