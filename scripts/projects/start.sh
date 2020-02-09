#! /bin/bash

set -e

source "$(dirname $0)/../.parallel.sh"

PROJECT_NAME=$1

parallel "yarn start" "yarn workspace $PROJECT_NAME start"
