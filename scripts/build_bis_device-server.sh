#!/bin/bash
set -e

cd ~/bis-device-server
git fetch --all
git pull --all
./gradlew bootJar

docker build -t bis-device-server .
