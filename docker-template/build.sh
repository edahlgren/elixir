#!/bin/bash

docker build --no-cache -t elixir-PROJECT_NAME \
       --build-arg GIT_REPO=HTTP_GIT_URL \
       .
