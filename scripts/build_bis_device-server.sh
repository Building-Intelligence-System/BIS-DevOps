#!/bin/bash
set -e

cd ~/bis-device-server
git fetch --all
git pull --all
./gradlew bootJat

docker build -t bis-device-server .
