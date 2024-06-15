#!/bin/bash
set -e

docker pull node:lts

cd ~/bis-worker-frontend
git fetch --all
git pull --all

docker build -t bis-worker-frontend .
