ARCH :=$(shell uname -m)
DOCKER_IMAGE := "gerbil/gerbil:$(ARCH)"
default: linux-static

build-release:
	/opt/gerbil/bin/gxpkg build --release

linux-static:
	docker run -it \
	-e USER=$(USER) \
	-e GERBIL_PATH=/src/.gerbil \
	-v $(PWD):/src:z \
	$(DOCKER_IMAGE) \
	make -C /src/ build-release

clean:
	gerbil clean
