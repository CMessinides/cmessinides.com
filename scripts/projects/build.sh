#! /bin/bash

set -e

PROJECT_NAME=$1

yarn workspace $PROJECT_NAME build
