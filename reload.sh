#!/bin/bash
docker rm -f ubuntu
docker build --tag=ubuntu .
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ubuntu
docker run --name=ubuntu -p 2222:22 --rm -d ubuntu