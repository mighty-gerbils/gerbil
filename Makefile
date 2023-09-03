default: build

build:
	./build.sh

install:
	./install.sh

clean:
	cd src/gambit && make clean
	rm -rf build
	rm -rf bootstrap
