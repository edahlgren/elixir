#!/bin/bash

docker exec -i -t $( docker ps | grep elixir-PROJECT_NAME | awk '{print $1}' ) /bin/bash
