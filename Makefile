gxtest = ./...

all: build

build:
	GERBIL_BUILD_FLAGS="$(MAKEFLAGS)" ./build.sh

install:
	DESTDIR="$(DESTDIR)" ./install.sh

test:
	./build.sh test $(gxtest)

clean:
	rm -rf build
	rm -rf bootstrap
	cd src/gambit && make clean

.PHONY: all build install check clean
