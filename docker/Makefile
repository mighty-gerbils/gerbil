.PHONY: alpine amazonlinux ubuntu fedora ubuntu-current-jedi final

GERBIL_VERSION := master

ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
cores := $(shell grep -c "^processor" /proc/cpuinfo)
arch := $(shell uname -m)

alpine_packages := autoconf \
                   automake \
                   cmake \
                   curl \
                   g++ \
                   gcc \
                   git \
                   leveldb-dev \
                   libgcc \
                   libtool \
                   libxml2-dev \
		   libxml2-static \
		   linux-headers \
                   lmdb-dev \
                   make \
                   musl \
                   musl-dev \
                   nodejs \
                   openssl-dev \
                   openssl-libs-static \
                   ruby \
                   sqlite-dev \
		   sqlite-static \
		   yaml-dev \
                   yaml-static \
		   xz-static \
		   zlib-static

amazon_packages := cmake \
		   leveldb \
		   leveldb-devel \
		   libsqlite3x-devel \
		   libxml2-devel \
                   libyaml-devel \
		   lmdb-libs \
                   lmdb-devel \
		   openssl-devel \
                   sqlite-devel

fedora_packages := cmake \
                   leveldb-devel \
                   libsqlite3x-devel \
                   libxml2-devel \
                   libyaml-devel \
                   lmdb-devel \
                   openssl-devel \
                   sqlite-devel

ubuntu_packages := autoconf \
                   bison \
                   build-essential \
                   curl \
                   gawk \
                   git \
                   libleveldb-dev \
                   libleveldb1d \
                   liblmdb-dev \
                   libnss3-dev \
                   libsnappy1v5 \
                   libsqlite3-dev \
                   libssl-dev \
                   libxml2-dev \
                   libyaml-dev \
                   pkg-config \
                   python3 \
                   rsync \
                   rubygems \
                   texinfo \
                   zlib1g-dev

full:
	docker build --target final \
	--rm=true --no-cache \
	--build-arg gerbil_version=$(GERBIL_VERSION) \
	--build-arg packages="$(alpine_packages)" \
	--build-arg configure_args="--enable-leveldb --enable-libxml --enable-libyaml --enable-lmdb --enable-zlib --enable-c++" \
	--build-arg cores=$(cores) \
	--build-arg distro="alpine" -t final $(ROOT_DIR) \
	--progress=plain
	docker tag final gerbil/full:$(arch)

base:
	docker build --target final \
	--rm=true --no-cache \
	--build-arg gerbil_version=$(GERBIL_VERSION) \
	--build-arg packages="$(alpine_packages)" \
	--build-arg configure_args="" \
	--build-arg cores=$(cores) \
	--build-arg distro="alpine" -t final $(ROOT_DIR) \
	--progress=plain
	docker tag final gerbil/base:$(arch)

amazonlinux:
	docker build --target final \
	--build-arg gerbil_version=$(GERBIL_VERSION) \
	--build-arg packages="$(amazon_packages)" \
	--build-arg cores=$(cores)  \
	--build-arg distro="amazonlinux" \
	-t final $(ROOT_DIR)
	docker tag final gerbil/amazonlinux:$(arch)

centos:
	docker build --target final \
	--rm=true --no-cache \
	--build-arg gerbil_version=$(GERBIL_VERSION) \
	--build-arg packages="$(centos_packages)" \
	--build-arg cores=$(cores) \
	--build-arg distro="centos" \
	-t final $(ROOT_DIR)
	docker tag final gerbil/centos:$(arch)

fedora:
	docker build --target final \
	--build-arg gerbil_version=$(GERBIL_VERSION) \
	--build-arg packages="$(fedora_packages)" \
	--build-arg cores=$(cores) \
	--build-arg distro="fedora" \
	-t final $(ROOT_DIR)
	docker tag final gerbil/fedora:$(arch)

ubuntu:
	docker build --target final \
	--rm=true --no-cache \
	--build-arg gerbil_version=$(GERBIL_VERSION) \
	--build-arg packages="$(ubuntu_packages)" \
	--build-arg cores=$(cores) \
	--build-arg distro="ubuntu" \
	-t final $(ROOT_DIR)
	docker tag final gerbil/ubuntu:$(arch)

ubuntu-current-jedi:
	docker build --rm=true --no-cache -t ubuntu-current-jedi $(ROOT_DIR)/ubuntu-current-jedi
	docker tag ubuntu-current-jedi gerbil/jedi:ubuntu

package-ubuntu:
	docker run -v $(PWD):/src:z -t gerbil/ubuntu \
	bash -c "gem install fpm && \
	fpm -s dir -p /src/ -t deb -n gerbil-$(GERBIL_VERSION).ubuntu \
	--description 'Gerbil Package' /opt/gerbil"

package-fedora:
	docker run -v $(PWD):/src:z -t gerbil/fedora \
	bash -c "yum install -y rubygems ruby-devel rpm-build && \
	gem install fpm && \
	fpm -s dir -p /src/ -t rpm \
	-n gerbil-$(GERBIL_VERSION).fedora \
	--description 'Gerbil Package' /opt/gerbil"

package-amazonlinux:
	docker run -v $(PWD):/src:z -t gerbil/amazonlinux \
	bash -c "amazon-linux-extras install -y ruby2.6 && \
	yum install -y ruby-devel rubygems rpm-build && \
	gem install fpm && \
	fpm -s dir -p /src/ -t rpm \
	-n gerbil-$(GERBIL_VERSION).amazonlinux \
	--description 'Gerbil Package' /opt/gerbil"

packages: package-ubuntu package-fedora

push-all:
	docker push gerbil/alpine
	docker push gerbil/ubuntu
	docker push gerbil/fedora
	docker push gerbil/amazonlinux

manifest:
	docker manifest create gerbil/alpine:latest --amend gerbil/alpine:aarch64 --amend gerbil/alpine:x86_64

all: alpine amazonlinux fedora ubuntu

docker: ubuntu
