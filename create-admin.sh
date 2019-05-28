#!/usr/bin/env bash

cd ~/schoolar/nginx
docker-compose run --rm ui-gateway npm run create:admin -- --email test@test.com --password 123456