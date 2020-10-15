#!/usr/bin/env bash

############
# Easy Access Config.
############

FLECS_TAG="v2.2.0" # Flecs version.


echo "----"
echo "Getting dependencies."
echo "----"

mkdir -p ./subprojects/

# Getting FLECS.
if [ ! -d ./subprojects/flecs ]
then
  git clone --branch $FLECS_TAG\
      https://github.com/SanderMertens/flecs \
      ./subprojects/flecs
else
  cd ./subprojects/flecs
  FLECS_BRANCH=$(git describe --tags)
  FLECS_REV=$(git log --pretty=format:'%h' -n 1)
  echo "FLECS ($FLECS_BRANCH, $FLECS_REV) already got."
fi

# Your Deps here.

echo "----"
echo "Done Getting Depenecies."
echo "----"
