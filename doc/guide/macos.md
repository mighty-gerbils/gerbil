# Gerbil on MacOS

MacOS is well supported by gerbil.

-   If you've got [Homebrew](https://brew.sh/) you can use the [Tap and/or Formula](#homebrew-formula-and-binaries).
-   If you've got some time to spare it can [be built](#raw-build) easily.

Because there are many different versions and processors your configuration may be slightly different than expected. If anything at all seems out of the ordinary please [file an issue](https://github.com/mighty-gerbils/gerbil/issues) ot get in touch another way and we'll be on top of it.


<a id="homebrew-formula-and-binaries"></a>

# Homebrew Formula and Binaries

The simple way is to use the [Homebrew Tap](https://github.com/mighty-gerbils/homebrew-gerbil).

There are binaries as well as the ability to build the HEAD of master.

```sh
brew install mighty-gerbils/gerbil/gerbil-scheme
```

That repository is also available in the gerbil source [as a subtree](homebrew/README.md).

```sh
git subtree add --prefix macos/homebrew git@github.com:mighty-gerbils/homebrew-gerbil.git main --squash
```


<a id="raw-build"></a>

# Build from source

There are a few different ways to build a working `gerbil` on `MacOS`.


## Install Dependencies

-   **Install XCode:** Open a terminal and run `xcode-select --install`

-   **Compile and Install OpenSSL:** We need it for crypto so cannot use the built in ssl.
    
    ```sh
    git clone https://github.com/openssl/openssl.git
    cd openssl;
    ./config && make
    sudo make install
    ```


## Using GCC@14

If you want a faster compile time both for building `gerbil` and your own binaries `gcc` is the better idea. `GERBIL_GCC` should allow you to compile your own binaries with a different compiler if you ever need to use the weird MacOS headers that are not quite C.

You can install it using [MacPorts](https://www.macports.org/) or [Homebrew](https://brew.sh/).


### MacPorts

```sh
sudo port -v install gcc14
mp () {
    echo "/opt/local/bin/$1"
}

export CC="$(mp gcc-mp-14)"
export GERBIL_GCC="$CC"
export CXX="$(mp g++-mp-14)"
export LDFLAGS='-Wl,-ld_classic'
export GERBIL_BUILD_CORES=4

cd $(mktemp -d);

git clone https://github.com/mighty-gerbils/gerbil.git

cd gerbil;
./configure --prefix=/opt/gerbil && make -j$GERBIL_BUILD_CORES
sudo make install

```


### Homebrew

```sh
brew install gcc@14
bp () {
  echo $(brew --prefix gcc@14)/bin/$1
}
export CC="$(bp gcc-14)"
export GERBIL_GCC="$(bp gcc-14)"
export CXX="$(bp g++-14)"
export LDFLAGS='-Wl,-ld_classic'
export GERBIL_BUILD_CORES=4

cd $(mktemp -d);

git clone https://github.com/mighty-gerbils/gerbil.git

cd gerbil;
./configure --prefix=/opt/gerbil && make -j$GERBIL_BUILD_CORES
sudo make install

```


## Option 2) Use the built in Clang.

If you want to be as native as possible this is the easy way. Most of us have MacPorts and/or Homebrew and I can totally recommend using GCC, but once you have openssl this **should** work.

This takes a long time as `clang` is a lot slower to build. But the binary may outperform modern `gcc` and building binaries with `clang` without setting `GERBIL_GCC` is something so it's a toss up.

```sh
git clone https://github.com/mighty-gerbils/gerbil.git

# On Sonama, Silicon not Intel, we set the prefix as so.
# You may want it elsewhere.
cd gerbil;
./configure --prefix=/opt/gerbil && make
sudo make install
```


## Option 3) Using a more recent Clang

Especially for an older Mac where the built in `clang` is ancient but we want some Objective-C like things that apple uses.

You can install it using [MacPorts](https://www.macports.org/) or [Homebrew](https://brew.sh/).


### MacPorts

```sh
sudo port -v install clang-18
mp () {
    echo "/opt/local/bin/$1"
}
export CC="$(mp clang-mp-18)"
export GERBIL_GCC="$(mp clang-mp-18)"
export CXX="$(mp clang++-mp-18)"
export LDFLAGS='-Wl,-ld_classic'
export GERBIL_BUILD_CORES=4

cd $(mktemp -d);

git clone https://github.com/mighty-gerbils/gerbil.git

cd gerbil;
./configure --prefix=/opt/gerbil && make -j$GERBIL_BUILD_CORES
sudo make install

```


### Homebrew

```sh
brew install llvm@17
bp () {
  echo $(brew --prefix llvm@17)/bin/$1
}
export CC="$(bp clang)"
export GERBIL_GCC="$(bp clang)"
export CXX="$(bp clang++)"
export LDFLAGS='-Wl,-ld_classic'
export GERBIL_BUILD_CORES=4

cd $(mktemp -d);

git clone https://github.com/mighty-gerbils/gerbil.git

cd gerbil;
./configure --prefix=/opt/gerbil && make -j$GERBIL_BUILD_CORES
sudo make install

```


## Location and usage.

We now have the lastest gerbil setup in the default manner. The symlinks and paths are for our usage. Gerbil will, by default, look in the directory where it is installed always.

So, in this example, the `current/` gerbil is in fact `v0.18.1-51-gd9c691b1/`. This allows us to have different versions installed and used while also giving us some `$PATH`'s for running and including and linking.

```sh
% ls -l /opt/gerbil
total 0
lrwxr-xr-x  1 root  wheel   11  5 Mar 17:31 bin -> current/bin
lrwxr-xr-x  1 root  wheel   20  5 Mar 17:31 current -> v0.18.1-51-gd9c691b1
lrwxr-xr-x  1 root  wheel   15  5 Mar 17:31 include -> current/include
lrwxr-xr-x  1 root  wheel   11  5 Mar 17:31 lib -> current/lib
lrwxr-xr-x  1 root  wheel   13  5 Mar 17:31 share -> current/share
lrwxr-xr-x  1 root  wheel   11  5 Mar 17:31 src -> current/src
drwxr-xr-x  7 root  wheel  224  5 Mar 17:31 v0.18.1-51-gd9c691b1
```
