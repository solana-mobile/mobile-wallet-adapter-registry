#!/bin/sh
set -e
npx ajv validate --spec=draft2019 -c ajv-formats -s wallet-schema.json -d "entries/*.json"