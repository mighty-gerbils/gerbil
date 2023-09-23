ARG distro
ARG with_db
ARG repo
ARG branch
ARG cores
ARG configure_args
ARG packages

FROM alpine:latest as base
ARG cores
ARG distro
ARG with_db
ARG packages
ENV PATH=/opt/gerbil/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
ENV GERBIL_BUILD_CORES=2
ENV GERBIL_GCC=g++
RUN mkdir -p /src /opt
RUN apk update
RUN apk add ${packages} autoconf automake cmake curl g++ gcc git libgcc libtool libxml2-dev linux-headers make musl musl-dev nodejs openssl-dev openssl-libs-static ruby yaml-dev xz-static zlib-static

FROM base as gerbil
ARG cores
ARG repo
ARG branch
ARG configure_args
ENV GERBIL_BUILD_CORES=2
ENV GERBIL_GCC=g++
RUN cd /opt && eval git clone -b 908-fix-docker-speed https://github.com/mighty-gerbils/gerbil gerbil-src
RUN cd /opt/gerbil-src && eval ./configure --prefix=/opt/gerbil --enable-shared=no --enable-c++
RUN cd /opt/gerbil-src && make -j2 && make install

FROM gerbil as final
RUN rm -rf /opt/gerbil-src /src/leveldb /src/lmdb

WORKDIR /src
CMD ["gxi"]
