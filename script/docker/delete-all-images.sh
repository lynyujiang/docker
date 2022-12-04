#!/bin/bash

# To delete all images
docker rmi $(docker images -a)
