# Parse -j from MAKEFLAGS for parallelism.
GERBIL_BUILD_CORES := $(or $(patsubst -j%,%,$(filter -j%,$(MAKEFLAGS))),1) 

all: build

build:
	GERBIL_BUILD_CORES=$(GERBIL_BUILD_CORES) ./build.sh

install:
	./install.sh

clean:
	rm -rf build
	rm -rf bootstrap
	cd src/gambit && make clean

.PHONY: all install clean
