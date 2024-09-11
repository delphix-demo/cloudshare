#!/bin/bash
cd dct
docker compose down
sudo systemctl restart docker
docker compose up -d
cd
