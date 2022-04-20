#!/bin/bash
PRUNE=$1
BRANCH=devel
if [ "${PRUNE}" = "" ];then  PRUNE=1;fi
if [ $PRUNE -gt 0 ];then  rm -rf openordu-pce;rm -rf ./src/public-celtic-encyclopedia;fi
git clone --branch=$BRANCH git@github.com:openordu/pce.git openordu-pce
mv openordu-pce/src ./src/public-celtic-encyclopedia && rm -rf openordu-pce
yarn docs:dev
