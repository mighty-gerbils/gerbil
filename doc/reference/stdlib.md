# The Standard Library

Gerbil comes bundled with an extensive standard library.

The standard library has several optional foreign library
dependencies, which may not be built in the default configuration. You
can enable these optional libraries by editing
[$GERBIL_HOME/src/std/build-features.ss](https://github.com/vyzo/gerbil/blob/master/src/std/build-features.ss).
You can then build the freshly enabled libraries by invoking `build.sh stdlib`
in `$GERBIL_HOME/src`.
