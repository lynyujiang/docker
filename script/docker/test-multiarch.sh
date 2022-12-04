#!/bin/bash
# => Running and Building ARM Docker Containers on x86
# 1. Install the qemu packages
sudo apt-get install qemu binfmt-support qemu-user-static

# 2. This step will execute the registering scripts
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes

# 3. Testing the emulation environment
docker run --rm -t arm64v8/ubuntu uname -m
