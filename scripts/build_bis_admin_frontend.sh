#!/bin/bash
set -e

docker pull node:lts

cd /home/bis/bis-frontend
git fetch --all
git checkout release
git pull --all

docker build -t bis-frontend .
