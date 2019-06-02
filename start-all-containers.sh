#!/usr/bin/env bash

docker-compose up -d
cd ~/schoolar/nginx
docker-compose up -d
cd ~/schoolar/user
docker-compose up -d
cd ~/schoolar/schedule
docker-compose up -d
cd ~/schoolar/live_qa
docker-compose up -d
cd ~/schoolar/quiz
docker-compose up -d
cd ~/schoolar/notification
docker-compose up -d