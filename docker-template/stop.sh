#!/bin/bash

docker stop -t 1 $( docker ps | grep elixir-PROJECT_NAME | awk '{print $1}' )
