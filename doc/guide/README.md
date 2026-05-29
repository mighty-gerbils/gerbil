# Installation

## Source Code
The source code for Gerbil is hosted on [Github](https://git.cons.io/mighty-gerbils/gerbil),
with the latest release available in [releases](https://git.cons.io/mighty-gerbils/gerbil/releases).

For the latest Gerbil, you can clone the repository:
```bash
$ git clone https://git.cons.io/mighty-gerbils/gerbil.git
```

## Dependencies

The latest Gerbil release (v0.18.2) includes its own copy of Gambit (v4.9.7-6-g64f4d369).

Starting with the v0.18.2 release cycle, there is no external dependency on Gambit any more;
it is integrated in Gerbil as a git subtree.

The core system has no outside depencies, but the standard
library has some mostly optional dependencies. The only hard dependency
is `libssl` and `libcrypto` from OpenSSL; important parts of the standard
library require it and we refuse to ship software without SSL/TLS support
in the 2020s.

All the other dependencies are soft.  Most library modules with
foreign dependencies are external packages, with the exception of
`zlib` and `sqlite`. These are ubiquitous, stable and generally useful
enough to warrant being present in the standard library and enabled by default;
you can still disable them if you want for a minimal installation.

In Ubuntu, you can install the dependencies for a default installation with:

```bash
$ sudo apt install libssl-dev zlib1g-dev libsqlite3-dev
```

The optional libraries can be enabled or disabled by passing arguments
to the configure script (see below).


## Build Instructions
After unpacking a release or checking out the source code from Github,
cd into the `gerbil` directory.

Gerbil takes quite a while to compile, if you wish it to build faster
by utilizing multiple cores, you can:
```
make -j<number-of-cores>
```

Alternatively, you can set the `GERBIL_BUILD_CORES` environment
variable to the number of cores you want to use.


If you are using the default configuration, you can build Gerbil simply with:
```bash
$ ./configure && make && sudo make install
```

This will install Gerbil in `/opt/gerbil`; you will need to add
`/opt/gerbil/bin` to your PATH environment variable.

By default, the configuration will enable shared libraries, which is the sane thing to do for a development workstation or laptop. On the other hand, if you want to build statically linked binaries, you can disable shared libraries by configuring like this:
```bash
$ ./configure --disable-shared
```

If you need to override some configuration defaults,
you will have to use the following (with your own set of configuration options):
```bash
$ ./configure --prefix=/path/to/which/to/install/gerbil \
  --enable-feature1 --enable-feature2 --disable-feature3 --disable-feature4 --enable-feature5
$ make && sudo make install
```

Various features can be enabled or disabled by passing `--enable-FEATURE` or
`--disable-FEATURE` to `./configure`.  Use `./configure --help` to see which
features are available.

## Installation using Binary Release Packages

If you want to install the latest release (v0.18.2), you can also use
the precompiled binary packages for Ubuntu, Debian, Fedora, and CentOS.
They are available in the [v0.18.2 release](https://git.cons.io/mighty-gerbils/gerbil/releases/tag/v0.18.2) page.

## Installation on MacOS

Gerbil is available via a homebrew recipe.

```sh
brew install mighty-gerbils/gerbil/gerbil-scheme
```

Feel free to check out the [MacOS Details](./macos.md) .

**Note** Currently, this is not yet upstreamed. The brew recipe will
be updated for v0.18.2 once the release is ready and available by
default for all homebrew users.

## Skip the Install, Get Started on Docker

The latest Gerbil images are available via [Docker Hub](https://hub.docker.com/u/gerbil)

Alpine based version:
```bash
docker pull gerbil/gerbil:$(uname -m)
```

To get to the REPL:
```bash
docker run -it gerbil/gerbil:$(uname -m)
```

To get a bash shell where you can compile programs:
```bash
docker run -it gerbil/gerbil:$(uname -m) bash
```

Or you can build your own container using the [Dockerfile](https://git.cons.io/mighty-gerbils/gerbil/blob/master/docker/Dockerfile).
See the [Docker Guide](docker.md) for additional information.

## Using Nix and/or Docker

You can install Gerbil using Nix. See [nix.md](nix.md) for more details.

There are also Docker containers based on Nix, with some gerbil libraries also installed,
at `mukn/glow:devel` or `ghcr.io/glow-lang/glow:devel` with many libraries installed
(2026 update: not kept very up-to-date these days; ask if interested).

See the `scripts` directory of [Gerbil Clan](https://git.cons.io/mighty-gerbils/gerbil-utils) for details.
