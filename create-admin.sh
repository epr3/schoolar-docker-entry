#!/usr/bin/env bash

cd ~/schoolar/gateway
docker-compose run --rm ui-gateway npm run create:admin -- --email test@test.com --password 123456