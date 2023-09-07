# Updating Bootstrap

If you have made changes to the core prelude, expander, or the compiler, you will also want to update the compiled bootstrap modules.

This can be accomplished with the following incantations in `$GERBIL_SRCDIR/src`.

To compile the core prelude bootstrap:
```
gxc -d bootstrap -s -S -O -no-ssxi gerbil/prelude/core.ss
```

To compile the gambit prelude bootstrap:
```
gxc -d bootstrap -s -S gerbil/prelude/gambit/*.ss gerbil/prelude/gambit.ss
```

To compile the expander bootstrap:
```
gxc -d bootstrap -s -S -O gerbil/expander/{common,stx,core,top,module,compile,root,stxcase}.ss gerbil/expander.ss
```

To compile the compiler bootstrap:
```
gxc  -d bootstrap -s -S -O gerbil/compiler/{base,compile,optimize-base,optimize-xform,optimize-top,optimize-spec,optimize-ann,optimize-call,optimize,driver,ssxi}.ss gerbil/compiler.ss
```

Finally, if you've made changes to it, you should also copy the core.ssxi.ss optimizer prelude:
```
cp gerbil/prelude/core.ssxi.ss bootstrap/gerbil
```
