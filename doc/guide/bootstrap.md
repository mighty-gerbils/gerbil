# Updating Bootstrap

If you have made changes to the core prelude, expander, or the compiler, you will also want to update the compiled bootstrap modules.

This can be accomplished with the following incantations in `$GERBIL_HOME/src`.

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
gxc  -d bootstrap -s -S -O gerbil/compiler/{base,compile,optimize-base,optimize-xform,optimize-top,optimize-ann,optimize-call,optimize,driver,ssxi}.ss gerbil/compiler.ss
```
