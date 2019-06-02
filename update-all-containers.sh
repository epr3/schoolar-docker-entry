#!/usr/bin/env bash

export COMPOSE_HTTP_TIMEOUT=2000
cd ~/schoolar/nginx
docker-compose up --force-recreate --build -d
docker image prune -f
cd ~/schoolar/user
docker-compose up --force-recreate --build -d
docker image prune -f
cd ~/schoolar/schedule
docker-compose up --force-recreate --build -d
docker image prune -f
cd ~/schoolar/live_qa
docker-compose up --force-recreate --build -d
docker image prune -f
cd ~/schoolar/quiz
docker-compose up --force-recreate --build -d
docker image prune -f
cd ~/schoolar/notification
docker-compose up --force-recreate --build -d
docker image prune -f