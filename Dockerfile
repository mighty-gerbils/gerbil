from ubuntu:latest

MAINTAINER gerbil@cons.io

ENV GAMBIT_VERSION v4.9.3
RUN apt update -y
RUN apt install -y libsqlite3-dev build-essential git autoconf libsnappy1v5 libleveldb1v5 zlib1g-dev libssl-dev pkg-config  libyaml-dev libmysqlclient-dev liblmdb-dev libleveldb-dev rsync texinfo

RUN git config --global url.https://github.com/.insteadOf git://github.com/
RUN cd /root && git clone https://github.com/gambit/gambit && cd /root/gambit && git fetch -a && git checkout ${GAMBIT_VERSION}

RUN cd /root/gambit && ./configure --prefix=/usr/local/gambit --enable-single-host --enable-openssl --enable-default-runtime-options=f8,-8,t8 --enable-poll
RUN cd /root/gambit && make -j4
RUN cd /root/gambit && make install

COPY . /root/gerbil

ENV PATH "/usr/local/gambit/bin:$PATH"

RUN sed -i -e 's/mysql #f/mysql #t/g' /root/gerbil/src/std/build-features.ss
RUN sed -i -e 's/yaml #f/yaml #t/g' /root/gerbil/src/std/build-features.ss
RUN sed -i -e 's/leveldb #f/leveldb #t/g' /root/gerbil/src/std/build-features.ss
RUN sed -i -e 's/lmdb #f/lmdb #t/g' /root/gerbil/src/std/build-features.ss
RUN cd /root/gerbil/src && ./build.sh

CMD /root/gerbil/bin/gxi
