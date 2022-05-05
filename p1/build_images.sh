#!/bin/bash

# Pull & Construction of Docker images
docker pull alpine:latest
docker build --file=Dockerfile_frr --tag=router_sucho .
