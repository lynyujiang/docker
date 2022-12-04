# This version-strategy uses git tags to set the version string
VERSION ?= $(shell git describe --tags --always --dirty)

version:
	echo $(VERSION)

# This version-strategy uses a manual value to set the version string
#VERSION ?= 1.2.3

ROOT := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

run-arm64-ubuntu-latest: build-arm64-ubuntu-latest
	docker run --privileged -v $(ROOT):/work -w /work --rm -it arm64-ubuntu-latest /bin/bash

build-arm64-ubuntu-latest: Dockerfile.ubuntu.latest
	docker build --build-arg AARCH=arm64v8 -t arm64-ubuntu-latest - < Dockerfile.ubuntu.latest

run-arm64-ubuntu-22.04: build-arm64-ubuntu-22.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it arm64-ubuntu-22.04 /bin/bash

build-arm64-ubuntu-22.04: Dockerfile.ubuntu.22.04
	docker build --build-arg AARCH=arm64v8 -t arm64-ubuntu-22.04 - < Dockerfile.ubuntu.22.04

run-arm64-ubuntu-20.04: build-arm64-ubuntu-20.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it arm64-ubuntu-20.04 /bin/bash

build-arm64-ubuntu-20.04: Dockerfile.ubuntu.20.04
	docker build --build-arg AARCH=arm64v8 -t arm64-ubuntu-20.04 - < Dockerfile.ubuntu.20.04

run-arm64-ubuntu-18.04: build-arm64-ubuntu-18.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it arm64-ubuntu-18.04 /bin/bash

build-arm64-ubuntu-18.04: Dockerfile.ubuntu.18.04
	docker build --build-arg AARCH=arm64v8 -t arm64-ubuntu-18.04 - < Dockerfile.ubuntu.18.04

run-arm64-ubuntu-16.04: build-arm64-ubuntu-16.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it arm64-ubuntu-16.04 /bin/bash

build-arm64-ubuntu-16.04: Dockerfile.ubuntu.16.04
	docker build --build-arg AARCH=arm64v8 -t arm64-ubuntu-16.04 - < Dockerfile.ubuntu.16.04

run-arm64-ubuntu-14.04: build-arm64-ubuntu-14.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it arm64-ubuntu-14.04 /bin/bash

build-arm64-ubuntu-14.04: Dockerfile.ubuntu.14.04
	docker build --build-arg AARCH=arm64v8 -t arm64-ubuntu-14.04 - < Dockerfile.ubuntu.14.04





run-arm32-ubuntu-latest: build-arm32-ubuntu-latest
	docker run --privileged -v $(ROOT):/work -w /work --rm -it arm32-ubuntu-latest /bin/bash

build-arm32-ubuntu-latest: Dockerfile.ubuntu.latest
	docker build --build-arg AARCH=arm32v7 -t arm32-ubuntu-latest - < Dockerfile.ubuntu.latest

run-arm32-ubuntu-22.04: build-arm32-ubuntu-22.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it arm32-ubuntu-22.04 /bin/bash

build-arm32-ubuntu-22.04: Dockerfile.ubuntu.22.04
	docker build --build-arg AARCH=arm32v7 -t arm32-ubuntu-22.04 - < Dockerfile.ubuntu.22.04

run-arm32-ubuntu-20.04: build-arm32-ubuntu-20.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it arm32-ubuntu-20.04 /bin/bash

build-arm32-ubuntu-20.04: Dockerfile.ubuntu.20.04
	docker build --build-arg AARCH=arm32v7 -t arm32-ubuntu-20.04 - < Dockerfile.ubuntu.20.04

run-arm32-ubuntu-18.04: build-arm32-ubuntu-18.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it arm32-ubuntu-18.04 /bin/bash

build-arm32-ubuntu-18.04: Dockerfile.ubuntu.18.04
	docker build --build-arg AARCH=arm32v7 -t arm32-ubuntu-18.04 - < Dockerfile.ubuntu.18.04

run-arm32-ubuntu-16.04: build-arm32-ubuntu-16.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it arm32-ubuntu-16.04 /bin/bash

build-arm32-ubuntu-16.04: Dockerfile.ubuntu.16.04
	docker build --build-arg AARCH=arm32v7 -t arm32-ubuntu-16.04 - < Dockerfile.ubuntu.16.04

run-arm32-ubuntu-14.04: build-arm32-ubuntu-14.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it arm32-ubuntu-14.04 /bin/bash

build-arm32-ubuntu-14.04: Dockerfile.ubuntu.14.04
	docker build --build-arg AARCH=arm32v7 -t arm32-ubuntu-14.04 - < Dockerfile.ubuntu.14.04





run-amd64-ubuntu-latest: build-amd64-ubuntu-latest
	docker run --privileged -v $(ROOT):/work -w /work --rm -it amd64-ubuntu-latest /bin/bash

build-amd64-ubuntu-latest: Dockerfile.ubuntu.latest
	docker build --build-arg AARCH=amd64 -t amd64-ubuntu-latest - < Dockerfile.ubuntu.latest

run-amd64-ubuntu-22.04: build-amd64-ubuntu-22.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it amd64-ubuntu-22.04 /bin/bash

build-amd64-ubuntu-22.04: Dockerfile.ubuntu.22.04
	docker build --build-arg AARCH=amd64 -t amd64-ubuntu-22.04 - < Dockerfile.ubuntu.22.04

run-amd64-ubuntu-20.04: build-amd64-ubuntu-20.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it amd64-ubuntu-20.04 /bin/bash

build-amd64-ubuntu-20.04: Dockerfile.ubuntu.20.04
	docker build --build-arg AARCH=amd64 -t amd64-ubuntu-20.04 - < Dockerfile.ubuntu.20.04

run-amd64-ubuntu-18.04: build-amd64-ubuntu-18.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it amd64-ubuntu-18.04 /bin/bash

build-amd64-ubuntu-18.04: Dockerfile.ubuntu.18.04
	docker build --build-arg AARCH=amd64 -t amd64-ubuntu-18.04 - < Dockerfile.ubuntu.18.04

run-amd64-ubuntu-16.04: build-amd64-ubuntu-16.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it amd64-ubuntu-16.04 /bin/bash

build-amd64-ubuntu-16.04: Dockerfile.ubuntu.16.04
	docker build --build-arg AARCH=amd64 -t amd64-ubuntu-16.04 - < Dockerfile.ubuntu.16.04

run-amd64-ubuntu-14.04: build-amd64-ubuntu-14.04
	docker run --privileged -v $(ROOT):/work -w /work --rm -it amd64-ubuntu-14.04 /bin/bash

build-amd64-ubuntu-14.04: Dockerfile.ubuntu.14.04
	docker build --build-arg AARCH=amd64 -t amd64-ubuntu-14.04 - < Dockerfile.ubuntu.14.04

