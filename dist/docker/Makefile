.PHONY: alpine debian ubuntu fedora ubuntu-current-jedi final

ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
cores := $(shell nproc)
arch := $(shell uname -m)
DEFAULT=gerbilxx

ifeq ($(BRANCH),)
BRANCH := $(shell git branch --show-current)
endif

TAG := $(shell git describe --tags)

ifeq ($(REPO),)
REPO := $(shell git remote get-url $(shell git rev-parse --abbrev-ref --symbolic-full-name @{u}|cut -f1 -d/)|cut -f2 -d:)
endif

cores := $(shell nproc)

$(info the branch is $(BRANCH) and the repo is $(REPO) cores are: $(cores))

alpine_packages := autoconf \
		   automake \
		   cmake \
		   curl \
		   g++ \
		   gcc \
		   git \
		   leveldb-dev \
		   libgcc \
		   libsecp256k1-dev \
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
		   xz-static \
		   yaml-dev \
		   yaml-static \
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

centos_packages := cmake \
		   git \
		   leveldb-devel \
           libsqlite3x-devel \
		   libxml2-devel \
		   libyaml-devel \
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

debian_packages := autoconf \
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

debug:
	$(info the branch is $(BRANCH) and the repo is $(REPO) cores are: $(cores))


gerbilxx:
	docker build --target final \
	--rm=true --no-cache \
	--build-arg repo="$(REPO)" \
	--build-arg branch="$(BRANCH)" \
	--build-arg packages="$(alpine_packages)" \
	--build-arg configure_args="--enable-march=" \
	--build-arg cores=$(cores) \
	--build-arg with_db="YES" \
	--build-arg distro="alpine" \
	--build-arg shared="no" \
	-t final $(ROOT_DIR)
	docker tag final gerbil/gerbilxx:$(arch)-$(BRANCH)

gerbil:
	docker build --target final \
	--rm=true --no-cache \
	--build-arg branch="$(BRANCH)" \
	--build-arg configure_args="--enable-march=" \
	--build-arg cores=$(cores) \
	--build-arg distro="alpine" \
	--build-arg packages="$(alpine_packages)" \
	--build-arg repo="$(REPO)" \
	--build-arg shared="no" \
	-t final $(ROOT_DIR)
	docker tag final gerbil/gerbil:$(arch)-$(BRANCH)

centos:
	docker build --target final \
	--rm=true --no-cache \
	--build-arg branch="$(BRANCH)" \
	--build-arg configure_args="--enable-march=" \
	--build-arg cores=$(cores) \
	--build-arg distro="centos" \
	--build-arg packages="$(centos_packages)" \
	--build-arg repo="$(REPO)" \
	--build-arg shared="no" \
	--build-arg with_db="YES" \
	-t final $(ROOT_DIR)
	docker tag final gerbil/centos:$(arch)-$(BRANCH)

fedora:
	docker build --target final \
	--build-arg branch="$(BRANCH)" \
	--build-arg configure_args="--enable-march=" \
	--build-arg cores=$(cores) \
	--build-arg distro="fedora" \
	--build-arg packages="$(fedora_packages)" \
	--build-arg repo="$(REPO)" \
	--build-arg shared="no" \
	--build-arg with_db="YES" \
	-t final $(ROOT_DIR)
	docker tag final gerbil/fedora:$(arch)-$(BRANCH)

ubuntu:
	docker build --target final \
	--rm=true --no-cache \
	--build-arg branch="$(BRANCH)" \
	--build-arg configure_args="--enable-march=" \
	--build-arg cores=$(cores) \
	--build-arg distro="ubuntu" \
	--build-arg packages="$(ubuntu_packages)" \
	--build-arg repo="$(REPO)" \
	--build-arg shared="no" \
	--build-arg with_db="YES" \
	-t final $(ROOT_DIR)
	docker tag final gerbil/ubuntu:$(arch)-$(BRANCH)

debian:
	docker build --target final \
	--rm=true --no-cache \
	--build-arg branch="$(BRANCH)" \
	--build-arg configure_args="--enable-march=" \
	--build-arg cores=$(cores) \
	--build-arg distro="debian" \
	--build-arg packages="$(debian_packages)" \
	--build-arg repo="$(REPO)" \
	--build-arg shared="no" \
	--build-arg with_db="YES" \
	-t final $(ROOT_DIR)
	docker tag final gerbil/debian:$(arch)-$(BRANCH)

ubuntu-current-jedi:
	docker build --rm=true --no-cache -t ubuntu-current-jedi $(ROOT_DIR)/ubuntu-current-jedi
	docker tag ubuntu-current-jedi gerbil/jedi:ubuntu

package-ubuntu:
	docker run -v $(ROOT_DIR):/src:z -t gerbil/ubuntu:$(arch)-$(BRANCH) \
	bash -c "gem install fpm && \
	fpm -f -s dir -p /src/ -t deb -n gerbil-scheme.ubuntu -v $(TAG) \
	-d libsqlite3-dev -d libssl-dev \
	--description 'Gerbil Scheme Package' /opt/gerbil"

package-tgz:
	docker run -v $(ROOT_DIR):/src:z -t gerbil/ubuntu:$(arch)-$(BRANCH) \
	bash -c "tar -czvf /src/gerbil-$(BRANCH).$(arch).tgz /opt/gerbil"

package-fedora:
	docker run -v $(ROOT_DIR):/src:z -t gerbil/fedora:$(arch)-$(BRANCH) \
	bash -c "yum install -y rubygems ruby-devel rpm-build && \
	gem install fpm && \
	fpm -f -s dir -p /src/ -t rpm \
	-n gerbil-$(BRANCH).fedora -v $(TAG) \
    -d zlib-devel -d zlib-static -d openssl-devel -d sqlite-devel \
	--description 'Gerbil Scheme Package' /opt/gerbil"

packages: package-ubuntu package-fedora

push-all:
	docker push gerbil/alpine
	docker push gerbil/ubuntu
	docker push gerbil/fedora

manifest:
	docker manifest create gerbil/alpine:latest --amend gerbil/alpine:aarch64 --amend gerbil/alpine:x86_64

all: alpine fedora ubuntu

docker: ubuntu
