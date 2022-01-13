from gerbil/gambit

MAINTAINER gerbil@cons.io

ENV GAMBIT_VERSION v4.9.4

ARG JOBS=1

ENV GAMBIT_HOME=/opt/gambit
ENV GERBIL_HOME=/opt/gerbil
ENV GERBIL_PATH=/src/.gerbil
ENV PATH=${GAMBIT_HOME}/current/bin:${GERBIL_HOME}/bin:/bin:/sbin:/usr/bin:/usr/sbin
ENV GERBIL_BUILD_CORES=${JOBS}

COPY . /opt/gerbil-src

RUN cd /opt/gerbil-src/src \
    && ./configure \
    --prefix=${GERBIL_HOME} \
    --enable-leveldb \
    --enable-libxml \
    --enable-libyaml \
    --enable-lmdb
RUN cd /opt/gerbil-src/src && ./build.sh
RUN cd /opt/gerbil-src/src && ./install

WORKDIR /src

CMD ["gxi"]
