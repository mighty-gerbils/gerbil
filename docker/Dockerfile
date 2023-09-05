ARG distro
ARG gerbil_version
ARG cores
ARG packages

FROM ${distro}:latest as base
ARG cores
ARG distro
ARG gerbil_version
ARG packages
ENV PATH=/opt/gerbil/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
ENV GERBIL_BUILD_CORES=$cores
ENV DEBIAN_FRONTEND=noninteractive
RUN mkdir -p /src /opt
RUN case ${distro} in \
    alpine) \
    apk update && \
    eval apk add ${packages} && \
    cd /src && git clone --recurse-submodules https://github.com/google/leveldb.git && cd /src/leveldb && mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. && cmake --build . -j $cores &&  mv libleveldb.a /usr/lib && \
    cd /src && git clone https://github.com/LMDB/lmdb && cd /src/lmdb/libraries/liblmdb && make && cd /src/lmdb/libraries/liblmdb && mv liblmdb.a /usr/lib \
    ;; \
    amazonlinux) \
    amazon-linux-extras install epel -y && \
    rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022 && \
    yum install -y https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    yum update -y && yum groupinstall -y 'Development Tools' && \
    eval yum install -y ${packages} \
    ;; \
    fedora) \
    yum update -y && yum groupinstall -y 'Development Tools' && \
    eval yum install -y ${packages} \
    ;; \
    ubuntu) \
    apt update -y && \
    eval apt install -y ${packages} \
    ;; \
    *) \
    echo "Unknown distro ${distro}" \
    exit 2\
    ;; \
    esac

FROM base as gerbil
ARG cores
ARG gerbil_version
RUN cd /opt && git clone https://github.com/vyzo/gerbil gerbil-src
RUN cd /opt/gerbil-src && git fetch -a && git fetch --tags && git checkout ${gerbil_version} \
    && ./configure \
    --prefix=/opt/gerbil \
    --enable-leveldb \
    --enable-libxml \
    --enable-libyaml \
    --enable-lmdb \
    --enable-mysql \
    --enable-zlib
RUN make && make install

FROM gerbil as final
RUN rm -rf /opt/gerbil-src

WORKDIR /src
CMD ["gxi"]
