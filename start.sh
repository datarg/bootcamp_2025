#!/bin/bash

docker-compose down

if [ -f .env ]; then
  export $(cat .env | xargs)
fi

docker-compose up --build -d

lazydocker
