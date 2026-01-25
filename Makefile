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

check:
	./build.sh env gxtest ./...

mostly-clean:
	rm -rf build/lib/gerbil
	rm -rf build/lib/std
	rm -rf build/lib/static

boot-clean: mostly-clean
	rm -rf bootstrap/lib/gerbil

clean:
	rm -rf build
	rm -rf bootstrap
	cd src/gambit && make clean

.PHONY: all build install check clean mostly-clean
