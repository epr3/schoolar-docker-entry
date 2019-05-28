#!/usr/bin/env bash

cd ~/schoolar/frontend
docker-compose up --force-recreate --build -d
docker image prune -f
cd ~/schoolar/gateway
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