
include ../packages.mk
include ../distros.mk

# podman can be docker
docker ?= docker

# There are targets in the Docker/Container file
target = final

# Always nice to know where you are
ROOT_DIR ::= $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

# * Git things: BRANCH REPO

# ** We decide what branch of gerbil to build.
BRANCH ?= $(shell git branch --show-current)

# ** The repo to clone
REPO ?= $(shell git remote get-url $(shell git rev-parse --abbrev-ref --symbolic-full-name @{u}|cut -f1 -d/)|cut -f2 -d: | sed 's|//[^/]*/||')

# ** The git TAG : For building packages
TAG := $(shell git describe --tags | sed 's/^v//')

cores := $(shell nproc)
arch := $(shell uname -m)

$(distros) :
	@mkdir -p bin
	$(MAKE) bin/$(@F)-gerbil

.PHONY: $(distros)

bin/%-gerbil: tag = gerbil/$(*):$(arch)-$(BRANCH)
bin/%-gerbil: 
	 $(docker) build --target $(target) \
	--rm=true --no-cache \
	--build-arg branch="$(BRANCH)" \
	--build-arg configure_args="--enable-march=" \
	--build-arg cores=$(cores) \
	--build-arg distro="$(*)" \
	--build-arg packages="$($(*)_packages)" \
	--build-arg repo="$(REPO)" \
	--build-arg shared="no" \
	--build-arg with_db="YES" \
	-t $(tag) $(ROOT_DIR) && \
	if [ '$(target)' = 'final' ] || true ; \
	then \
	  echo '#!/bin/sh' > bin/$*-gerbil && \
	  echo $(docker) run \
	   --interactive --tty --hostname "'$(image)'" $(image) gerbil -:te '"$$@"' >> bin/$*-gerbil ; \
	  chmod 755 bin/$*-gerbil \
	; fi

