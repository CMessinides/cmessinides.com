#! /bin/bash

set -e

PROJECT_NAME=$1
PROJECT_ROOT=site/projects/$PROJECT_NAME

mkdir $PROJECT_ROOT
cp -r templates/project/* $PROJECT_ROOT
find $PROJECT_ROOT -type f -exec sed -i "" "s|{{ PROJECT_NAME }}|$PROJECT_NAME|g" {} \;
