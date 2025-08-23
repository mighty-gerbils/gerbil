include image.mk

package-tgz:
	$(docker) run -v $(ROOT_DIR):/src:z -t gerbil/ubuntu:$(arch)-$(BRANCH) \
	bash -c "tar -czvf /src/gerbil-$(BRANCH).$(arch).tgz /opt/gerbil"

package-fedora:
	$(docker) run -v $(ROOT_DIR):/src:z -t gerbil/fedora:$(arch)-$(BRANCH) \
	bash -c "yum install -y rubygems ruby-devel rpm-build && \
	gem install fpm && \
	fpm -f -s dir -p /src/ -t rpm \
	-n gerbil-$(BRANCH).fedora -v $(TAG) \
    -d zlib-devel -d zlib-static -d openssl-devel -d sqlite-devel \
	--description 'Gerbil Scheme Package' /opt/gerbil"

packages: package-ubuntu package-fedora

push-all:
	$(docker) push gerbil/alpine
	$(docker) push gerbil/ubuntu
	$(docker) push gerbil/fedora

manifest:
	docker manifest create gerbil/alpine:latest --amend gerbil/alpine:aarch64 --amend gerbil/alpine:x86_64

all: alpine fedora ubuntu

docker: ubuntu

clean:
	rm -v bin/*-gerbil
# How about now?
