all: build

build:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh

install:
	DESTDIR="$(DESTDIR)" ./install.sh

check:
	./build.sh env gxtest ./...

clean:
	rm -rf build
	rm -rf bootstrap
	cd src/gambit && make clean

.PHONY: all install check clean
