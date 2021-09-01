#!/bin/bash

rm -rf ./publish
mkdir -p ./publish

yarn install 

yarn build --dest ./publish