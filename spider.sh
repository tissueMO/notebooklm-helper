#!/bin/bash
# e.g. spider.sh --reject-regex='^.*/(en|fr)/.*' https://example.com/ > example.txt

wget --spider --recursive --no-verbose --no-directories --accept=html --output-file=/tmp/spider-wget.log --level=2 "$@"
grep -oP '(?<=URL:)https?://[^[]+' /tmp/spider-wget.log > /tmp/spider-grep.log
cat /tmp/spider-grep.log | sort | uniq
rm -f /tmp/spider-*.log
