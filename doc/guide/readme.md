# Installation

## Source Code
The source code for Gerbil is hosted on [Github](https://github.com/vyzo/gerbil),
with the latest release available in [releases](https://github.com/vyzo/gerbil/releases).

For the latest Gerbil, you can clone the repository:
```bash
$ git clone https://github.com/vyzo/gerbil.git
```

## Dependencies

The latest Gerbil release (v0.12) requires Gambit v4.8.9.

The core system has no dependencies outside Gambit, but the standard
library has several mostly optional dependencies. The only hard dependency
is `libcrypto` from OpenSSL; important parts of the standard library
require it.

All the other dependencies are soft.
Most library modules with foreign dependencies are not built by default,
with the exception of `zlib` and `sqlite`. These are ubiquitous, stable
and generally useful enough to warrant being present by default;
you can still disable them if you want for a minimal installation.

In ubuntu, you can install the dependencies for a default installation with:

```bash
$ sudo apt-get install openssl libssl-dev sqlite3 libsqlite3-dev
```

The optional libraries can be enabled or disabled at build-time
by editing `$GERBIL_HOME/src/std/build-features.ss`.
You can also enable features later, by editing `build-features.ss` and
running `./build.sh stdlib` in `$GERBIL_HOME/src/`.


## Build Instructions
After unpacking a release or checking out the source code from Github, let
`$GERBIL_HOME` be the top directory of Gerbil.

Then:
```bash
$ cd $GERBIL_HOME/src
$ ./build.sh
```

If you are building in MacOSX and want to use the homebrew OpenSSL,
then you need to specify appropriate `CPPFLAGS` and `LDFLAGS`.
For instance:
```bash
$ LDFLAGS=-L/usr/local/opt/openssl/lib \
  CPPFLAGS=-I/usr/local/opt/openssl/include \
  ./build.sh
```

## Skip the Install, Get Started on Docker

The latest Gerbil images are available via Dockerhub:

```bash
docker pull -it gerbil/scheme:latest

To get to the repl:

docker run -it gerbil/scheme:latest /root/gerbil/bin/gxi
```

Building Gerbil/Gambit via Dockerfile

Dockerfile:

```docker
from ubuntu:latest

MAINTAINER gerbil@cons.io

RUN apt update -y
RUN apt install -y libsqlite3-dev build-essential git autoconf libblas3 wget sudo lsb-release tmux tzdata libsnappy1v5  libleveldb1v5 zsh zlib1g-dev libssl-dev x11-xserver-utils pkg-config libffi-dev libffi6 gfortran libblas-dev liblapack-dev

RUN cd /root && git clone https://github.com/gambit/gambit
RUN cd /root && git clone https://github.com/vyzo/gerbil

RUN cd /root/gambit && ./configure --prefix=/usr/local/gam

bit --enable-single-host --enable-c-opt --enable-gcc-opts --enable-multiple-versions --enable-openssl --enable-default-runtime-options=f8,-8,t8 --enable-poll
RUN cd /root/gambit && make -j4
RUN cd /root/gambit && make install

RUN find /usr/local/gambit/ -ls
ENV PATH "/usr/local/gambit/v4.8.9/bin:$PATH"
RUN cd /root/gerbil/src && ./build.sh stage0
RUN cd /root/gerbil/src && ./build.sh stage1
RUN cd /root/gerbil/src && ./build.sh stdlib
RUN cd /root/gerbil/src && ./build.sh lang
RUN cd /root/gerbil/src && ./build.sh tools
RUN cd /root/gerbil/src && ./build.sh tags

CMD /root/gerbil/bin/gxi
```