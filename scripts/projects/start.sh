#! /bin/bash

set -e

source scripts/.parallel.sh

PROJECT_NAME=$1

parallel "yarn start" "yarn workspace $PROJECT_NAME start"
