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
	cd src/gambit && make realclean

realclean:
	rm -rf build bootstrap
	cd src/gambit && make realclean

.PHONY: all build install check clean realclean
