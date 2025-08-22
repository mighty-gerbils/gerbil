# Makefile for Gerbil Meta Scheme

# Copyright (c) 2025 by Drew Crampsie, All Rights Reserved.

BUILDERS = prepare gambit boot-gxi stage0 stage1 stdlib libgerbil lang \
 r7rs-large srfi tools tags doc

gxtest = ./...


all: build

build:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh

$(BUILDERS):
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh "$@"

env: 
	./build.sh "$@" $(ENV)

install:
	DESTDIR="$(DESTDIR)" ./install.sh

check:
	./build.sh env ../build/bin/gxtest $(gxtest)

clean:
	rm -rf build
	rm -rf bootstrap
	cd src/gambit && make clean

.PHONY: all build install check clean $(BUILDERS)
