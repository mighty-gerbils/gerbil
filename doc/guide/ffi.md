# Getting Started with FFI

This is a quick guide to help you with your first FFI steps with Gerbil.

The first thing to note is that FFI in Gerbil is actually delegated to Gambit, where the mechanism to interface with C is known as the C-interface.

We'll start our foray with a basic example: we are going to query for the version of glibc on the current machine. The C code that achieves this:

```c
#include <stdio.h>
#include <gnu/libc-version.h>
int main (void) { puts (gnu_get_libc_version ()); return 0; }
```

We need to write a file module that will define and export an identifier get-glibc-version. Subsequently, we'll import that identifier and use it in the Gerbil runtime.

```bash
# Create a gerbil.pkg file for our project
$ cat > gerbil.pkg <<EOF
(package: myuser)
EOF
$ cat > libc-version.ss <<EOF
(export get-glibc-version)
(extern get-glibc-version)
(begin-foreign
  (namespace ("myuser/libc-version#" get-glibc-version))
  (c-declare "#include <stdio.h>")
  (c-declare "#include  <gnu/libc-version.h>")
  (define get-glibc-version (c-lambda () char-string "gnu_get_libc_version")))
EOF
```

File modules take their name from the including file, so this module is named libc-version in the myuser package and as a result uses myuser/libc-version# as the namespace prefix.

To feed code straight to the Gambit compiler from Gerbil we use the begin-foreign special form. We namespace the identifier with the package and module to adhere to the canonical namespace of the module.

We compile the module.

```bash
$ gxc libc-version.ss
```

We're now ready to use the module.

```bash
$ gxi
> (import :myuser/libc-version)
> (get-glibc-version)
"2.26"
```

Did you notice the compilation warning?

```
/usr/local/Gambit/v4.8.9/include/gambit.h:7262:32: warning: assignment discards ‘const’ qualifier from pointer target type [-Wdiscarded-qualifiers]
 #define ___CFUN_ASSIGN(r,val)r = val;
                                ^
libc-version__0.c:179:1: note: in expansion of macro ‘___CFUN_ASSIGN’
 ___CFUN_ASSIGN(___result,gnu_get_libc_version())
 ^~~~~~~~~~~~~~
```

That is because gsc doesn't have a const qualifier. We can work around it by replacing the original call with an equivalent call that performs explicit casting.

```
(define get-glibc-version (c-lambda () char-string "___return((char*)gnu_get_libc_version());"))
```
Et voilà, no more compilation warning!