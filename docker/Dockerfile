ARG distro
ARG gerbil_version
ARG gambit_version
ARG cores
ARG packages

FROM ${distro}:latest as base
ARG distro
ARG gerbil_version
ARG gambit_version
ARG cores
ARG packages
ENV GERBIL_BUILD_CORES=$cores
ENV DEBIAN_FRONTEND=noninteractive
RUN mkdir -p /src /opt
RUN case ${distro} in \
    alpine) \
    apk update && \
    eval apk add ${packages} && \
    cd /src && git clone --recurse-submodules https://github.com/google/leveldb.git && cd /src/leveldb && mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. && cmake --build . &&  mv libleveldb.a /usr/lib && \
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

FROM base as gambit
ARG cores
ARG distro
ARG gerbil_version
ARG gambit_version
ARG cores
ENV GAMBIT_HOME=/opt/gambit
ENV GERBIL_BUILD_CORES=$cores
ENV GERBIL_HOME=/opt/gerbil
ENV GERBIL_PATH=/src/.gerbil
ENV PATH=${GAMBIT_HOME}/bin:${GERBIL_HOME}/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
RUN git config --global url.https://github.com/.insteadOf git://github.com/
RUN cd /opt && git clone https://github.com/gambit/gambit gambit-src
RUN cd /opt/gambit-src && git fetch -a && git checkout ${gambit_version}
RUN cd /opt/gambit-src \
    && ./configure CC='gcc' \
    --enable-default-runtime-options=f8,-8,t8 \
    --enable-poll \
    --enable-openssl \
    --enable-multiple-versions \
    --enable-single-host \
    --prefix=${GAMBIT_HOME}

RUN cd /opt/gambit-src && make -j$cores
RUN cd /opt/gambit-src && make bootstrap
RUN cd /opt/gambit-src && make bootclean
RUN cd /opt/gambit-src && make -j$cores
RUN cd /opt/gambit-src && make -j$cores modules
RUN cd /opt/gambit-src && make install

FROM gambit as gerbil
ARG cores
ARG gerbil_version
RUN if [[ ! -d /usr/lib64/mariadb && -d /usr/lib64/mysql ]]; then ln -s /usr/lib64/mysql /usr/lib64/mariadb; fi
RUN cd /opt && git clone https://github.com/vyzo/gerbil gerbil-src
ENV PATH=/opt/gambit/current/bin:$PATH
RUN cd /opt/gerbil-src/src && git fetch -a && git fetch --tags && git checkout ${gerbil_version} \
    && ./configure \
    --prefix=${GERBIL_HOME} \
    --enable-leveldb \
    --enable-libxml \
    --enable-libyaml \
    --enable-lmdb \
    --enable-mysql

RUN cd /opt/gerbil-src/src && ./build.sh
RUN cd /opt/gerbil-src/src && ./install

FROM gerbil as final
RUN rm -rf /opt/gerbil-src /opt/gambit-src

WORKDIR /src
CMD ["gxi"]
