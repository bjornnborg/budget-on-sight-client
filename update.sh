#!/bin/bash
echo "Updating"
git pull origin master
docker-compose pull && start
echo "Done"
