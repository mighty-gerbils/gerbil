# Environment Variables

Gerbil uses a few environment variables, which affect the behaviour of the runtime
and toolchain.

## GERBIL_PATH

This is the root of your Gerbil workspace, which is the read-write
component of the system. If it's not set, then it defaults to `~/.gerbil`.

The runtime adds `$GERBIL_PATH/lib` as the second component of the
runtime load path.

The toolchain uses `$GERBIL_PATH` as default artifact output directory:
- `gxc` outputs compiled modules to `$GERBIL_PATH/lib`, unless otherwise
  instructed.
- `:std/make` outputs compiled modules to `$GERBIL_PATH/lib` and binaries
  to `$GERBIL_PATH/bin`, unless otherwise instructed.

## GERBIL_LOADPATH

This is a colon separated list of directories to be appended to the
runtime load path.  You can use this for loading site specific
libraries. By default it's unset, which is equivalent to an empty
value.

## GERBIL_GXC

This is the program name or path to the `gxc` compiler executable;
defaults to `gxc` (or to full path to `gxc`, on a Nix build).
Currently it is only used by `std/make` and `std/build-script`,
and only when building software in parallel (which is now the default,
but can be disabled with the `GERBIL_BUILD_CORES` variable below).

## GERBIL_GCC

This is the program name or path to `gcc`; defaults to `gcc` resolving from your `$PATH`..

::: tip Note
If you have configured Gerbil with `--enable-c++`, you should set `GERBIL_GCC=g++`.
:::

## GERBIL_AR

This is the program name or path to the `ar` executable; defaults to
`ar` resolving from your `$PATH`.

## GERBIL_BUILD_CORES

This is the number of cores that `std/make` and `std/build-script` will use
when building Gerbil programs, by spawning accordingly many compiler processes in parallel,
(mostly instances of `gxc`, `gsc` and `gcc`).
If a `parallel:` argument is provided to `make` or `defbuild-script`,
it will take precedence over this variable.
If no such argument is provided and the variable is undefined or invalid,
the number of cores present is auto-detected from the Operating System and used.

You can wholly disable parallelism by exporting `GERBIL_BUILD_CORES=0`,
at which point the Gerbil part of compilation will be done in the current process.
By contrast, `GERBIL_BUILD_CORES=1` enforces use of subprocesses for Gerbil compilation,
even though only one process will be run at once.

## GERBIL_PKG_GIT_USER

If this variable is set, `gxpkg` will clone packages using `git` over
ssh instead of https.

Set this if you want to access private repose.
