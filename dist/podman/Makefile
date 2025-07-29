.PHONY: $(distros)
docker := podman

include ../docker/image.mk
include ../docker/package.mk

$(distros): Containerfile
package-%.deb : Containerfile

Containerfile:
	cp ../docker/Dockerfile ./Containerfile
	cp ../docker/install-packages.sh .
clean:
	rm -v Containerfile install-packages.sh || true
	rm -v bin/*-gerbil || true
