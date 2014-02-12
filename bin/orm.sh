#!/bin/bash

if [ -z "$1" ]
  then
    echo "Please provide Module name as the first argument"
    exit
fi

if [ -z "$2" ]
  then
    echo "Please provide Entity name as the second argument"
    exit
fi

MODULE=$1
ENTITY=$2
DIRECTORY="./module/"$MODULE
if [ ! -d "$DIRECTORY" ]; then
    echo "$MODULE module does not exist"
    exit
fi

./vendor/bin/doctrine-module orm:convert-mapping --force --from-database --namespace=$MODULE\\Entity\\ --filter=$MODULE\\Entity\\$ENTITY annotation ./module/$MODULE/src/
./vendor/bin/doctrine-module orm:generate-entities --filter=$ENTITY --generate-annotations=true --generate-methods=true  --update-entities=true  ./module/$MODULE/src/
