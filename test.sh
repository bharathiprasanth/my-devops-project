#!/bin/bash

echo "Running automated tests..."

if [ -f README.md ]; then
    echo "PASS: README.md exists"
else
    echo "FAIL: README.md is missing"
    exit 1
fi

echo "All tests passed!"
