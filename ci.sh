#!/bin/bash
echo "Package application as docker image"
docker-compose build pizza-server

echo "Running unit tests and make sure they pass"
docker-compose run pizza-server bash -c 'npm test'

echo "Running ansible checks... (from infra/ansible/playbooks)"
docker-compose run ansible
docker-compose down

echo "Pushing image to docker hub"
docker push node-docker:latest