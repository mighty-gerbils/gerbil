ARG distro
ARG with_db
ARG repo
ARG branch
ARG cores
ARG configure_args
ARG packages
ARG shared

FROM ${distro}:latest as base
ARG cores
ARG distro
ARG with_db
ARG packages
ENV PATH=/opt/gerbil/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin
ENV GERBIL_BUILD_CORES=$cores
ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /src /opt
COPY install-packages.sh /src
RUN chmod 755 /src/install-packages.sh
RUN /src/install-packages.sh ${distro} ${packages}

FROM base as gerbil
ARG branch
ARG configure_args
ARG cores
ARG repo
ARG shared
RUN cd /tmp && eval git clone -b "${branch}" "https://github.com/${repo}" gerbil \
    && cd /tmp/gerbil && eval ./configure --prefix=/opt/gerbil

RUN cd /tmp/gerbil && make
RUN cd /tmp/gerbil && make install

FROM gerbil as final
RUN rm -rf /tmp/gerbil /src/install-packages.sh
WORKDIR /opt/gerbil
CMD ["gerbil"]
