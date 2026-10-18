#!/bin/bash

echo "Running failure test..."

if [ -f MISSING-README.md ]; then
    echo "PASS: File exists"
else
    echo "FAIL: README file is missing"
    exit 1
fi
