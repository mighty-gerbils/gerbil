# Installation

## Source Code
The source code for Gerbil is hosted on [Github](https://github.com/vyzo/gerbil),
with the latest release available in [releases](https://github.com/vyzo/gerbil/releases).

For the latest Gerbil, you can clone the repository:
```bash
$ git clone https://github.com/vyzo/gerbil.git
```

## Dependencies

The latest Gerbil release (v0.15.1) requires Gambit v4.9.0;
the latest Gambit is recommended nonetheless (v4.9.3).

The core system has no dependencies outside Gambit, but the standard
library has several mostly optional dependencies. The only hard dependency
is `libcrypto` from OpenSSL; important parts of the standard library
require it.

All the other dependencies are soft.
Most library modules with foreign dependencies are not built by default,
with the exception of `zlib` and `sqlite`. These are ubiquitous, stable
and generally useful enough to warrant being present by default;
you can still disable them if you want for a minimal installation.

In Ubuntu, you can install the dependencies for a default installation with:

```bash
$ sudo apt-get install openssl libssl-dev sqlite3 libsqlite3-dev
```

The optional libraries can be enabled or disabled by passing arguments
to the configure script (see below).  You can also enable features
later, by reconfiguring and running `./build.sh stdlib` in
`$GERBIL_HOME/src/`.


## Build Instructions
After unpacking a release or checking out the source code from Github, let
`$GERBIL_HOME` be the top directory of Gerbil.

Then:
```bash
$ cd $GERBIL_HOME/src
$ ./configure
$ ./build.sh
```

Running `./configure` can be skipped to make a build with the default features
enabled and where runtime dependencies are found using the path and
environment variables.

Passing `--prefix=/installed/gerbil/home` to `./configure` will allow Gerbil
to find its installation directory even when `GERBIL_HOME` is not set.
Passing `--with-gambit=/gambit/home` will allow Gerbil to find Gambit even
when `GAMBIT_GSC` is unset; this is especially nice if GhostScript is in the
path, since both Gambit and GhostScript have a program named `gsc`.

Various features can be enabled or disabled by passing `--enable-FEATURE` or
`--disable-FEATURE` to `./configure`.  Use `./configure --help` to see which
features are available.

If you are building in macOS and want to use the homebrew OpenSSL,
then you need to specify appropriate `CPPFLAGS` and `LDFLAGS`.
For instance:
```bash
$ LDFLAGS=-L/usr/local/opt/openssl/lib \
  CPPFLAGS=-I/usr/local/opt/openssl/include \
  ./build.sh
```

## Installation on macOS
Both Gambit and Gerbil are available via homebrew.
```
$ brew install gerbil-scheme
```

To get around some brew specific paths, set the following in your environment.
Most likely you'll want to add them to your `~/.bashrc`, `~/.zsh`
```
$ export PATH=/usr/local/opt/gambit-scheme/current/bin:/usr/local/opt/gerbil-scheme/libexec/bin:$PATH
$ export GERBIL_HOME=/usr/local/opt/gerbil-scheme/libexec
```

## Skip the Install, Get Started on Docker

The latest Gerbil images are available via [Docker Hub](https://hub.docker.com/u/gerbil)

Ubuntu based version:
```bash
docker pull gerbil/scheme
```

To get to the REPL:
```bash
docker run -it gerbil/scheme
```

To get a bash shell where you can compile programs:
```bash
docker run -it gerbil/scheme bash
```

Or you can build your own container using the [Dockerfile](https://github.com/vyzo/gerbil/blob/master/Dockerfile)
