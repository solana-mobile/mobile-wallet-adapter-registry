#!/bin/sh
set -e
npx ajv test --spec=draft2019 -c ajv-formats -s wallet-schema.json -d "tests/valid-*.json" --valid
npx ajv test --spec=draft2019 -c ajv-formats -s wallet-schema.json -d "tests/invalid-*.json" --invalid