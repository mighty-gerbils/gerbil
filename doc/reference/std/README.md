# The Standard Library

Gerbil comes bundled with an extensive standard library.

Because the library is extensive this document attempts to introduce,
describe, and summarize the various portions.

The standard library has several optional foreign library
dependencies, which may not be built in the default configuration. You
can enable these optional feature when configuring gerbil; see
`configure --help` for the list of available features.



## Meta / Modern 

A great thing about gerbil is how it tries to make things easy and
short. The [Common Syntactic Sugar](sugar.md) modules has a lot of
sweets related to that. Gerbil code uses all of them at some point.

### Lists

Gerbil is a *Meta-Scheme*. Scheme is a *Lisp*. Lisp stands for *LIS*T *P*rocessing. 

Beyond the [R5RS](https://schemers.org/Documents/Standards/R5RS/HTML/)
list primitives, and
the[Gambit](https://www.iro.umontreal.ca/~gambit/doc/gambit.html)
primitives, AND the [Runtime Builtins](../core-builtin.md#lists), the
standard library has even more things for processing lists.
  
  * [List Utilites](misc/list.md)
  * [A-List Utilites](misc/alist.md)
  * [P-List Utilites](misc/list.md)

### Utilities for different types

A whole bunch of utilities are included which means that, chances are, most of what you need has already been written.

  * [List Utilites](misc/list.md)




