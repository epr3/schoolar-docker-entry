#!/usr/bin/env bash

docker-compose up -d
cd ~/schoolar/frontend
docker-compose up -d
cd ~/schoolar/gateway
docker-compose up -d
cd ~/schoolar/schedule
docker-compose up -d
cd ~/schoolar/live_qa
docker-compose up -d
cd ~/schoolar/quiz
docker-compose-up -d