from ubuntu:latest

MAINTAINER gerbil@cons.io

ARG GAMBIT_VERSION=v4.9.4
ARG JOBS=1

ENV GAMBIT_HOME=/opt/gambit
ENV PATH=${GAMBIT_HOME}/bin:${GERBIL_HOME}/bin:/bin:/sbin:/usr/bin:/usr/sbin
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /src /opt

RUN apt update -y
RUN apt install -y \
    autoconf \
    build-essential \
    git \
    libleveldb-dev \
    libleveldb1d \
    liblmdb-dev \
    libmysqlclient-dev \
    libsnappy1v5 \
    libsqlite3-dev \
    libssl-dev \
    libyaml-dev \
    pkg-config \
    rsync \
    zlib1g-dev \
    texinfo

RUN cd /opt && git clone https://github.com/gambit/gambit gambit-src
RUN cd /opt/gambit-src && git fetch -a

RUN cd /opt/gambit-src \
    && git fetch -a \
    && git checkout ${GAMBIT_VERSION} \
    && ./configure \
    --enable-default-runtime-options=f8,-8,t8 \
    --enable-poll \
    --enable-openssl \
    --enable-multiple-versions \
    --enable-single-host \
    --prefix=${GAMBIT_HOME}

# Other Configure options commonly used
#
#    CC='gcc -D___SUPPORT_LOWLEVEL_EXEC'
#    --enable-targets=js,ruby,python
#    --enable-default-compile-options="(compactness 9)"

RUN cd /opt/gambit-src && make -j${JOBS}
RUN cd /opt/gambit-src && make bootstrap
RUN cd /opt/gambit-src && make bootclean
RUN cd /opt/gambit-src && make -j${JOBS}
RUN cd /opt/gambit-src && make -j${JOBS} modules
RUN cd /opt/gambit-src && make install

WORKDIR /src

CMD ["gxi"]
