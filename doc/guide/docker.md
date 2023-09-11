# Instructions for building and using docker
	We have to different docker images based on Alpine Linux:

1. `gerbilxx` Includes leveldb,lmdb,libyaml,libxml2,c++,zlib
1. `gerbil` Is a base image without any additional configure items added.

	Alpine was chosen due to the static compilation capabilities it provides.

## Using docker to invoke Gerbil
`docker run -it gerbil/gerbil` Will invoke the Gerbil Repl.

## Building static libraries using the `gerbilxx` image.
	In this example, a demonstration of building a static binary for a gerbil project.

### `build.ss`
```
#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/build-script)

(defbuild-script
  '("confluence/client"
    (static-exe:
     "confluence/confluence"
     )))
```

### `Makefile`
```
PROJECT := confluence

ARCH := $(shell uname -m)
DOCKER_IMAGE := "gerbil/gerbilxx:$(ARCH)"

default: linux-static-docker

build:
	/opt/gerbil/bin/gxpkg link $(PROJECT) /src || true
	/opt/gerbil/bin/gxpkg build $(PROJECT)

linux-static-docker: clean
	docker run -it \
	-e GERBIL_PATH=/src/.gerbil \
	-v $(PWD):/src:z \
	$(DOCKER_IMAGE) \
	make -C /src build

clean:
	rm -rf .gerbil

install:
	mv .gerbil/bin/$(PROJECT) /usr/local/bin/$(PROJECT)
```
