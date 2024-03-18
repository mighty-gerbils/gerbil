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

# Raw build

-   **Install XCode:** Open a terminal and run `xcode-select --install`

-   **Compile and Install OpenSSL:** We need it for crypto!
    
    ```sh
    git clone https://github.com/openssl/openssl.git
    cd openssl;
    ./config && make
    sudo make install
    ```

-   **Compile and Install Gerbil:** Easy!
    
    ```sh
    git clone https://github.com/mighty-gerbils/gerbil.git
    
    # On Sonama, Silicon not Intel, we set the prefix as so.
    # You may want it elsewhere.
    cd gerbil;
    ./configure --prefix=/opt/gerbil && make
    sudo make install
    ```

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
