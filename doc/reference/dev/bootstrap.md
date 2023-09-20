# The Gerbil Bootstrap

Gerbil is fully self-hosted, 100% written in itself. So how does it
all fit together? Zero is One.

## The Chain of Trust

In GNU we trust; everyone else pays cash.

(TODO)

## The Long and Arduous History of Bootstrap

(TODO)

## How Gerbil Builds Itself

(TODO)

## Practical Matters

### Recompiling the Precompiled Bootstrap
If you have made changes to the core runtime, prelude, expander, or the
compiler, you may also need to update the precompiled bootstrap modules
(e.g. because of a bug fix).

This can be accomplished with the following incantations in `$GERBIL_SRCDIR/src`.

- To compile the runtime bootstrap:
```
gxc -d bootstrap -s -S -include-gambit-sharp gerbil/runtime/{gambit,system,util,loader,control,mop,error,syntax,eval,repl,init}.ss gerbil/runtime.ss
```

- To compile the core prelude bootstrap:
```
gxc -d bootstrap -s -S -O -no-ssxi gerbil/prelude/core.ss
```

- To compile the gambit prelude bootstrap:
```
gxc -d bootstrap -s -S gerbil/prelude/gambit/*.ss gerbil/prelude/gambit.ss
```

- To compile the expander bootstrap:
```
gxc -d bootstrap -s -S -O gerbil/expander/{common,stx,core,top,module,compile,root,stxcase}.ss gerbil/expander.ss
```

- To compile the compiler bootstrap:
```
gxc  -d bootstrap -s -S -O gerbil/compiler/{base,compile,optimize-base,optimize-xform,optimize-top,optimize-spec,optimize-ann,optimize-call,optimize,driver,ssxi}.ss gerbil/compiler.ss
```

- Finally, if you've made changes to it, you should also copy the core.ssxi.ss optimizer prelude:
```
cp gerbil/prelude/core.ssxi.ss bootstrap/gerbil
```

### Debugging

(TODO)
