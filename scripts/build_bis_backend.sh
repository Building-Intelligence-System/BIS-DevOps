#!/bin/bash
set -e

cd ~/bis-backend
git fetch --all
git pull --all
./gradlew bootJar

docker build -t bis-backend .
