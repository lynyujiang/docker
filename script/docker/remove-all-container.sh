#!/bin/bash

docker container rm $(docker container ls -a -q)
