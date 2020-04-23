from gerbil/gambit

MAINTAINER gerbil@cons.io

ENV GAMBIT_VERSION v4.9.3

COPY . /root/gerbil

ENV PATH "/usr/local/gambit/bin:$PATH"

RUN sed -i -e 's/mysql #f/mysql #t/g' /root/gerbil/src/std/build-features.ss
RUN sed -i -e 's/yaml #f/yaml #t/g' /root/gerbil/src/std/build-features.ss
RUN sed -i -e 's/leveldb #f/leveldb #t/g' /root/gerbil/src/std/build-features.ss
RUN sed -i -e 's/lmdb #f/lmdb #t/g' /root/gerbil/src/std/build-features.ss
RUN date -u +"%Y-%m-%dT%H:%M:%SZ build.sh" ; cd /root/gerbil/src && ./build.sh

ENV GERBIL_HOME "/root/gerbil"
ENV PATH "/root/gerbil/bin:$PATH"

CMD ["gxi"]
