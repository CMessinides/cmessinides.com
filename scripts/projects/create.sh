#! /bin/bash

set -e

source scripts/.colors.sh

PROJECT_NAME=$1
PROJECT_ROOT=site/projects/$PROJECT_NAME

echo -e "Copying project files to $(blue $PROJECT_ROOT)"
mkdir $PROJECT_ROOT
cp -a templates/project/ $PROJECT_ROOT
find $PROJECT_ROOT -type f -exec sed -i "" "s|{{ PROJECT_NAME }}|$PROJECT_NAME|g" {} \;

echo Installing project dependencies
yarn install

echo -e "OK: New project $(green $PROJECT_NAME) created at $(blue $PROJECT_ROOT)"
