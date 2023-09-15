# Gerbil in Docker

You can run Gerbil in docker using our prebuilt containers.

We offer two official docker images based on Alpine Linux:
- `gerbil` is the base image, with a default install without any additional features configured.
- `gerbilxx` is the full image, with all features and C++ enabled.

Alpine was chosen due to the static compilation environment and capabilities it provides.

If you want to build your own container, perhaps based on some other
distribution, you can use our
[Dockerfile](https://github.com/vyzo/gerbil/tree/master/docker/Dockerfile).

## Running Gerbil in Docker

`docker run -it gerbil/gerbil` will invoke the Gerbil repl.

## Building static executable binaries using the `gerbilxx` image.

Here is an example of building a static binary for a gerbil project.

### `build.ss`
```
#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/build-script)

(defbuild-script
  '("confluence/client"
    (exe: "confluence/confluence")))
```

### `Makefile`
```
PROJECT := confluence

ARCH := $(shell uname -m)
DOCKER_IMAGE := "gerbil/gerbilxx:$(ARCH)"

default: linux-static-docker

build-release:
	/opt/gerbil/bin/gxpkg link $(PROJECT) /src || true
	/opt/gerbil/bin/gxpkg build --release $(PROJECT)

linux-static-docker: clean
	docker run -it \
	-e GERBIL_PATH=/src/.gerbil \
	-v $(PWD):/src:z \
	$(DOCKER_IMAGE) \
	make -C /src build-release

clean:
	rm -rf .gerbil

install:
	mv .gerbil/bin/$(PROJECT) /usr/local/bin/$(PROJECT)
```
