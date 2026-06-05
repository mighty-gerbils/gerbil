all: build

build:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh

install:
	DESTDIR="$(DESTDIR)" ./install.sh

boot:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh prepare
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh gambit
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh boot-gxi

stage0:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh stage0

stage1:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh stage1

stdlib:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh stdlib

libgerbil:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh libgerbil

tools:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh tools

rebootstrap:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh env ./bootstrap.sh

repl:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh env gxi

bash:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh env bash

check:
	./build.sh env gxtest ./...

stdlib-clean:
	rm -rf build/lib/std

tools-clean:
	rm -rf build/lib/gerbil/tools

mostly-clean: stdlib-clean tools-clean
	rm -rf build/lib/gerbil
	rm -rf build/lib/static

boot-clean: mostly-clean
	rm -rf bootstrap/lib/gerbil

clean:
	rm -rf build
	rm -rf bootstrap
	cd src/gambit && make clean

real-clean:
	rm -rf build
	rm -rf bootstrap
	cd src/gambit && make real-clean

.PHONY: all build install boot stage0 stage1 stdlib tools rebootstrap repl bash check stdlib-clean tools-clean mostly-clean boot-clean clean real-clean
