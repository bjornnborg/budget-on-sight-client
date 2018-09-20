#!/bin/bash
echo "Updating"
git pull origin master
docker-compose pull && docker-compose up --build -d
echo "Done"
