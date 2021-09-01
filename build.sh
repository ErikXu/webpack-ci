#!/bin/bash

docker run --rm -i \
    -v /usr/lib/node_modules/:/usr/lib/node_modules/ \
    -v ${PWD}:/workspace \
    node:16-alpine \
    sh -c 'cd /workspace && sh publish.sh'