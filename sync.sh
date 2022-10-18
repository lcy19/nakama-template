#! /bin/bash
npm run build
cp -f ./build/index.js ./data/modules/index.js
cp -f local.yml ./data/local.yml
docker compose restart
