# Installation

## Source Code
The source code for Gerbil is hosted on [Github](https://github.com/vyzo/gerbil),
with the latest release available in [releases](https://github.com/vyzo/gerbil/releases).

For the latest Gerbil, you can clone the repository:
```bash
$ git clone https://github.com/vyzo/gerbil.git
```

## Dependencies

The latest Gerbil release (v0.17) requires the latest Gambit release, v4.9.4;
we also explicitly support the previous Gambit release, v4.9.3.
Older versions of Gambit, starting with v4.9.1 may also work, but we haven't tested.

The core system has no dependencies outside Gambit, but the standard
library has several mostly optional dependencies. The only hard dependency
is `libcrypto` from OpenSSL; important parts of the standard library
require it.

All the other dependencies are soft.
Most library modules with foreign dependencies are not built by default,
with the exception of `zlib` and `sqlite`. These are ubiquitous, stable
and generally useful enough to warrant being present by default;
you can still disable them if you want for a minimal installation.

In Ubuntu 20.04, you can install the dependencies for a default installation with:

```bash
$ sudo apt install libssl-dev zlib1g-dev libsqlite3-dev
```

The optional libraries can be enabled or disabled by passing arguments
to the configure script (see below).  You can also enable features
later, by reconfiguring and running `./build.sh stdlib` in
`$GERBIL_HOME/src/`.


## Build Instructions
After unpacking a release or checking out the source code from Github, let
`$GERBIL_HOME` be the top directory of Gerbil.

Gerbil takes quite a while to compile, if you wish it to build faster, you can:
```
export GERBIL_BUILD_CORES=4
```

If you are using the default configuration, you can build Gerbil simply with:
```bash
$GERBIL_HOME/src/build.sh
```

On the other hand, if you need to override some configuration defaults,
you will have to use the following (with your own set of configuration options):
```bash
$ cd $GERBIL_HOME/src
$ ./configure --prefix=/path/to/which/to/install/gerbil --with-gambit=/path/to/installed/gambit \
  --enable-feature1 --enable-feature2 --disable-feature3 --disable-feature4 --enable-feature5
$ ./build.sh
$ ./install
```

Running `./configure` and `./install` can be skipped
to make a build with the default features enabled and
where runtime dependencies are found using the path and environment variables.
The `./install` step is necessary if and only if you specify a `--prefix` option.

Passing `--prefix=/installed/gerbil/home` to `./configure`
will allow Gerbil to find its installation directory
even when `GERBIL_HOME` is not set and `gxi` or `gxc` are symlinks.
Passing `--with-gambit=/gambit/home` will allow Gerbil to find Gambit even
when `GERBIL_GSC` is unset; this is especially useful if GhostScript is in the
path, since both Gambit and GhostScript have a program named `gsc`.

Various features can be enabled or disabled by passing `--enable-FEATURE` or
`--disable-FEATURE` to `./configure`.  Use `./configure --help` to see which
features are available. It will show the flags that modify the default; thus
it will offer `--enable-leveldb` because `leveldb` is *not* enabled by default;
and it will offer `--disable-zlib` because `zlib` *is* enabled by default.

If you are building on macOS and want to use the homebrew OpenSSL,
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

Or you can build your own container using the [Dockerfile](https://github.com/vyzo/gerbil/blob/master/Dockerfile)

## Using Nix and/or Docker

You can install Gerbil using Nix. See [nix.md](nix.md) for more details.

There are also Docker containers based on Nix, with some gerbil libraries also installed,
at `fahree/gerbil-nix` (`root` only) and `fahree/gerbil-utils` (user `user` working in `/home`).
See the `scripts` directory of [Gerbil Clan](https://github.com/fare/gerbil-utils) for details.
