# Installation

## Source Code
The source code for Gerbil is hosted on [Github](https://github.com/vyzo/gerbil),
with the latest release available in [releases](https://github.com/vyzo/gerbil/releases).

For the latest Gerbil, you can clone the repository:
```bash
$ git clone https://github.com/vyzo/gerbil.git
```

## Dependencies

The latest Gerbil release (v0.17) requires the separate installation of Gambit v4.9.4
or later; it also supports the previous Gambit release, v4.9.3.
Older versions of Gambit, starting with v4.9.1 may also work, but we haven't tested.

Starting with the v0.18 release cycle, there is no external dependency on Gambit any more; it is integrated in Gerbil as a git submodule

The core system has no outside depencies, but the standard
library has several mostly optional dependencies. The only hard dependency
is `libcrypto` from OpenSSL; important parts of the standard library
require it.

All the other dependencies are soft.  Most library modules with
foreign dependencies are not built by default, with the exception of
`zlib` and `sqlite`. These are ubiquitous, stable and generally useful
enough to warrant being present by default; you can still disable them
if you want for a minimal installation.

In Ubuntu 20.04, you can install the dependencies for a default installation with:

```bash
$ sudo apt install libssl-dev zlib1g-dev libsqlite3-dev
```

The optional libraries can be enabled or disabled by passing arguments
to the configure script (see below).


## Build Instructions
After unpacking a release or checking out the source code from Github, let
`$GERBIL_HOME` be the top directory of Gerbil source.

Gerbil takes quite a while to compile, if you wish it to build faster, you can:
```
export GERBIL_BUILD_CORES=4
```

If you are using the default configuration, you can build Gerbil simply with:
```bash
$ ./configure && make && sudo make install
```

This will install Gerbil in `/usr/local/gerbil`; you will need to add
`/usr/local/gerbin/bin` to your PATH environment variable.

It is recommended that you enable shared libraries if this is an installation for your development workstation or laptop:
```bash
$ ./configure --enable-shared && make && sudo make install
```

On the other hand, if you need to override some configuration defaults,
you will have to use the following (with your own set of configuration options):
```bash
$ ./configure --prefix=/path/to/which/to/install/gerbil \
  --enable-feature1 --enable-feature2 --disable-feature3 --disable-feature4 --enable-feature5
$ make && sudo make install
```

Various features can be enabled or disabled by passing `--enable-FEATURE` or
`--disable-FEATURE` to `./configure`.  Use `./configure --help` to see which
features are available.

If you are building on macOS and want to use the homebrew OpenSSL,
then you need to specify appropriate `CPPFLAGS` and `LDFLAGS`.
For instance:
```bash
$ ./configure LDFLAGS=-L/usr/local/opt/openssl/lib \
              CPPFLAGS=-I/usr/local/opt/openssl/include \
```

## Installation on macOS
Gerbil is available via homebrew.
```
$ brew install gerbil-scheme
```

**Note** Currently, this will install the last Gerbil release, v0.17;
the brew recipe will be updated for v0.18 once the release is ready.

## Skip the Install, Get Started on Docker

The latest Gerbil images are available via [Docker Hub](https://hub.docker.com/u/gerbil)

Ubuntu based version:
```bash
docker pull gerbil/ubuntu
```

To get to the REPL:
```bash
docker run -it gerbil/ubuntu
```

To get a bash shell where you can compile programs:
```bash
docker run -it gerbil/ubuntu bash
```

Or you can build your own container using the [Dockerfile](https://github.com/vyzo/gerbil/blob/master/docker/Dockerfile)

## Using Nix and/or Docker

You can install Gerbil using Nix. See [nix.md](nix.md) for more details.

There are also Docker containers based on Nix, with some gerbil libraries also installed,
at `fahree/gerbil-nix` (`root` only) and `fahree/gerbil-utils` (user `user` working in `/home`).
See the `scripts` directory of [Gerbil Clan](https://github.com/fare/gerbil-utils) for details.
