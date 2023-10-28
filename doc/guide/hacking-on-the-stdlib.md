# Hacking on the Standard Library

Gerbil is a growing project and your contributions are welcome!

When working on modifications to the standard library, it's common to encountere errors
such as:

```
*** ERROR IN gx#core-expand-import%__% -- 
*** ERROR IN "file.ss"@1.9
--- Syntax Error: Cannot find library module
... form:   :std/my/module
```
This typically because the `gxi` or `gxc` being used is looking at the installed
standard library which will not contain your changes. To address this, run your
environment with the `build.sh` script after building.

Example build:

```shell
./build.sh
```

To test your local changes rebuild the stdlib and then use the locally built `gxi` with
the following commands:

```shell
./build.sh stdlib
./build.sh env gxi ../your-test-file.ss
```
**NOTE:** the execution environment when using `./build.sh env` is in the `src/` folder
in the root of the Gerbil repo. Absolute paths work as normal, but relative paths must
be adjusted for `PWD` change.
