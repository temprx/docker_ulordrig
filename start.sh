#!/bin/bash

docker build -t fabius8/ulordrig .

echo "start to run ulordrig"
docker run -d --name ulordrig \
       -e POOL_ADDRESS=117.45.165.141:7200 \
       -e PAYMENT_ADDRESS=ug2vVSuZWqPg47xHBz1zkpwDCtCUAEn8v5 \
       -e NAME=noname \
       -e THREADS=1 \
      fabius8/ulordrig
