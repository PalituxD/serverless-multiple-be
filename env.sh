#! /bin/bash

function multiple-be-dynamodb-admin() {
  DYNAMO_ENDPOINT=http://localhost:8000
  ./node_modules/.bin/dynamodb-admin --port 8081 -o
}

export DIR_WORK_PATH=$(pwd)