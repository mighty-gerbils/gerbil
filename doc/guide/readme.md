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
```

To get to the repl:
```bash
docker run -it gerbil/scheme:latest /root/gerbil/bin/gxi
```
