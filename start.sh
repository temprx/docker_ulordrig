#!/bin/bash

docker build -t fabius8/ulordrig .

echo "start to run ulordrig"
docker run -d --name ulordrig fabius8/ulordrig
