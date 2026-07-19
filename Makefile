all: build

BUILD=GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh

build:
	$(BUILD)

install:
	DESTDIR="$(DESTDIR)" ./install.sh

boot:
	$(BUILD) prepare
	$(BUILD) gambit
	$(BUILD) boot-gxi

stage0:
	$(BUILD) stage0

stage1:
	$(BUILD) stage1

stdlib:
	$(BUILD) stdlib

libgerbil:
	$(BUILD) libgerbil

tools:
	$(BUILD) tools

rebootstrap:
	$(BUILD) env ./bootstrap.sh

rebootstrap-from-scratch:
	$(MAKE) boot-clean stage0
	GERBIL_NOOPT=t $(MAKE) mostly-clean stage1
	$(MAKE) rebootstrap
	$(MAKE) boot-clean stage0 stage1

repl:
	$(BUILD) env gxi

bash:
	$(BUILD) env bash

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
