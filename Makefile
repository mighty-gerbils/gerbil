all: build

build:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh

install:
	DESTDIR="$(DESTDIR)" ./install.sh

check:
	./build.sh env gxtest ./...

mostly-clean:
	rm -rf build
	rm -rf bootstrap

clean: mostly-clean
	cd src/gambit && make clean

.PHONY: all build install check clean mostly-clean
