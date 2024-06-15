#!/bin/bash
set -e

docker pull node:lts

cd ~/bis-admin-frontend
git fetch --all
git pull --all

docker build -t bis-admin-frontend .
