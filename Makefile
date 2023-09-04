default: build

build:
	./build.sh

install:
	./install.sh

clean:
	rm -rf build
	rm -rf bootstrap
	cd src/gambit && make clean
