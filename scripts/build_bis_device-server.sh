#!/bin/bash
set -e

docker pull quay.io/testcontainers/ryuk:0.2.3

cd /home/bis/bis-device-server
git fetch --all
git checkout release
git pull --all
./gradlew shadowJar

docker build -t bis-device-server .
