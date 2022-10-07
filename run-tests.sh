#!/bin/sh
set -e
ajv test --spec=draft2019 -c ajv-formats -s wallet-schema.json -d "tests/valid-*.json" --valid
ajv test --spec=draft2019 -c ajv-formats -s wallet-schema.json -d "tests/invalid-*.json" --invalid