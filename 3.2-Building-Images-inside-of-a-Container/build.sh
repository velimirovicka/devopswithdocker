#!/bin/sh

git clone "$1" tmp

cd tmp || exit 1

docker build . -t "$2"
docker login -u "$3" -p "$4"
docker tag "$2" "$5"
docker push "$5"
docker logout

cd ..
rm -rf tmp
