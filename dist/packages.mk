# List of $(distros)_packages needed for making gerbil
alpine_packages := autoconf \
		   automake \
		   cmake \
		   curl \
		   g++ \
		   gcc \
		   git \
		   leveldb \
		   leveldb-dev \
		   libgcc \
		   libsecp256k1-dev \
		   libtool \
		   libxml2-dev \
		   libxml2-static \
		   linux-headers \
		   lmdb \
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
