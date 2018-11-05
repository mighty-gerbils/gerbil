# Environment Variables

Gerbil uses a few environment variables, which affect the behaviour of the runtime
and toolchain:
- `GERBIL_HOME`
- `GERBIL_PATH`
- `GERBIL_LOADPATH`

## GERBIL_HOME

This is the root of your Gerbil installation.

The runtime expects the gerbil system modules to be located in
`$GERBIL_HOME/lib`, which is set as the first component of the runtime
load path. The compiler also expects to find system static compilation
artifacts there.

This variable must be set for dynamic executables to be able to load
the runtime.  `gxi` and `gxc` can deduce it automatically from their
installation path if it's not set.

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

This is colon separated a list of directories to be appended to the
runtime load path.  You can use this for loading site specific
libraries. By default it's unset, which is equivalent to an empty
value.


## GERBIL_GSC

This is the program name or path to the `gsc` compiler executable; defaults to `gsc`.

This variable is used by `Gerbil v0.14-DEV-73-g7a2a91c1` and later; earlier versions
hardcode `gsc` as the compiler program name.
