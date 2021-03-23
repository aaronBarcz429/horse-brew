#!/bin/bash

echo "Starting MySQL..."
docker run --name horse-brew-database -p 3307:3306 -e MYSQL_ROOT_PASSWORD=dbpass123 -d mysql:8.0

echo "Starting Local Dev"
docker run --name horse-brew -p 8080:80 -v /home/aaron/.personal-projects/horse-brew:/var/www/html -d horse-brew