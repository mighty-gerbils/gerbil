# Gerbil in Docker

You can run Gerbil in docker using our prebuilt containers.

We offer two official docker images based on Alpine Linux:
- `gerbil` is the base image, configured  without shared libraries.
- `gerbilxx` is the full image, configured without shared libraries and with C++ enabled.
  It also includes all the foreign dependencies required by the officially supported
  external packages.
- Supported architectures are `aarch64` and `x86_64`.
- `:latest` always points at the last release, e.g. `v0.18.1`
- `:master` points to the latest merge into the `master` branch.

Alpine was chosen due to the static compilation environment and capabilities it provides.

If you want to build your own container, perhaps based on some other
distribution, you can use our
[Dockerfile](https://github.com/mighty-gerbils/gerbil/tree/master/docker/Dockerfile).

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
  (static-exe: "confluence/confluence")))
```

### `Makefile`
```
PROJECT := confluence

ARCH := $(shell uname -m)
DOCKER_IMAGE := "gerbil/gerbilxx:$(ARCH)"

default: linux-static-docker

build-release:
	/opt/gerbil/bin/gxpkg link $(PROJECT) /src || true
	/opt/gerbil/bin/gxpkg build $(PROJECT)

linux-static-docker: clean
	docker run -it \
	-e GERBIL_PATH=/src/.gerbil \
	-e USER=$(USER) \
	-v $(PWD):/src:z \
	$(DOCKER_IMAGE) \
	make -C /src build-release

clean:
	rm -rf .gerbil

install:
	mv .gerbil/bin/$(PROJECT) /usr/local/bin/$(PROJECT)
```

## Building docker images

There are several variations you can build out on docker.
We produce `ubuntu` and `fedora` images for `x86_64` used in
the creation of the `deb` and `rpm` packages.

### Build using custom branch

`cd gerbil/docker && make gerbil BRANCH=my-fixup-branch`

### Building from your own repository

`cd gerbil/docker && make gerbil REPO=my-github-user/gerbil`
