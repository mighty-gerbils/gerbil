# Getting Started with FFI

This is a quick guide to help you with your first FFI steps with Gerbil.

The first thing to note is that FFI in Gerbil is actually delegated to Gambit, where the mechanism to interface with C is known as the C-interface.
See the [Gambit manual](https://www.iro.umontreal.ca/~gambit/doc/gambit.html#C_002dinterface) for more information.

The primary mechanism for delegating code directly to gambit is the `begin-foreign` special form:
```
(begin-foreign body ...)
```
Using the form, the `body` is included unexpanded directly to the generated gambit code for compilation with gsc.

## Basic FFI

We'll start our foray with a basic example: we are going to query for the version of glibc on the current machine. The C code that achieves this:

```c
#include <stdio.h>
#include <gnu/libc-version.h>
int main (void) { puts (gnu_get_libc_version ()); return 0; }
```

We need to write a file module that will define and export an identifier get-glibc-version. Subsequently, we'll import that identifier and use it in the Gerbil runtime.

```
# Create a gerbil.pkg file for our project
$ cat > gerbil.pkg <<EOF
(package: myuser)
EOF
$ cat > libc-version.ss <<EOF
(export get-glibc-version)
(extern get-glibc-version)
(begin-foreign
  (namespace ("myuser/libc-version#" get-glibc-version))
  (c-declare "#include  <gnu/libc-version.h>")
  (define get-glibc-version (c-lambda () char-string "gnu_get_libc_version")))
EOF
```

File modules take their name from the including file, so this module is named libc-version in the myuser package and as a result uses `myuser/libc-version#` as the namespace prefix.

To feed code straight to the Gambit compiler from Gerbil we use the `begin-foreign` special form. We namespace the identifier with the package and module to adhere to the canonical namespace of the module.

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

## The begin-ffi macro

In order to simplify writing ffi code, Gerbil offers the `begin-ffi` macro in the `:std/foreign` library.

The macro takes care of providing the extern and namespace declarations for your identifiers.

It also defines some common utility macros:
- `(define-c-lambda id args ret [name/code])` which expands to the definition of a c-lambda.
- `(define-const id)` which expands to a definition that evals the constant in C.
- `(define-const* id)` which conditionally defines the constant to a value of `#f` if it is undefined in the C preprocessor.
- `(define-guard defn)` which conditionally expands a definition with an accompanied cond-expand feature.
- `(define-with-errno id ffi-id args)` which expands to a definition of `(id args ...)` which calls `(ffi-id args ...)` and returns the negated errno if the result is negative.
  This is useful for wrapping C/POSIX ffi functions that report errors using `errno`.

In addition, it provides a few other preprocessor macros and a definition of `ffi_free`, a function suitable as a release function for ffi types.

Using `begin-ffi` the code would be written as following:
```
(export get-glibc-version)
(begin-ffi (get-glibc-version)
  (c-declare "#include  <gnu/libc-version.h>")
  (define-c-lambda get-glibc-version () char-string "gnu_get_libc_version"))
```

If you want to find more about Gerbil FFI programming, the std lib sources for the [os package](https://github.com/vyzo/gerbil/tree/master/src/std/os) are a good starting point.

## Interfacing with c structs

In order to make interfacing with c structs a bit easier, some macros are provided to be used
inside the begin-ffi block.   

Consider a c struct X with members a of type t1 and b of type t2.    
In order to interface with such a struct, following methods are available inside the begin-ffi macro.

### `(define-c-struct X)`

*types created*
- X for struct
- X* for the pointer to the struct. this is the struct to which the configurable release 
  function is provided. If no release function is provided and struct contains string 
  members, then a c method (`<struct-name>_ffi_free`) is generated for the struct, which 
  performs the cleanup of strings as well as the pointers. If there are no string members,
  we fallback to the default ffi_free.
- X-shallow-ptr* similar to X*, default release function ffi_free is associated 
  (this is only created if char-string is one of the members)
- X-borrowed-ptr* similat to X* but no release function
   
*lambdas created*
- `X-ptr?` predicate for the struct types (uses foreign-tags)
- `malloc-X` calls malloc for the struct and returns a pointer to it
- `ptr->X` get the value of X from its pointer
- `(malloc-X-array N)` calls malloc for N * sizeof X and returns a pointer to it, the
      returned pointer is of type X-shallow-ptr* if strings are present otherwise it is X*
- `(X-array-ref ptr i)` returns a pointer with offset i starting at ptr, the returned
      pointer is of type X-borrowed-ptr*
- `(X-array-set! ptr i val-ptr)` sets the value of the pointer at offset i from ptr to
      be val-ptr
   
   
###  `(define-c-struct X ((a . t1) (b . t2)))`

In addition to the types and lambdas defined above, following additional lambdas are provided:

*lambdas created*
- `X-a-set!`, `X-b-set!` setters for member variables.    
   Special compatibility for string types is provided,    
   If a string is passed as the value, then we strdup the string and set that to the argument.
   If the struct member is already pointing to another string, then that
     string is freed and the member will now point to a new string.
   The cleanup of such strings are handled by the generated `<struct-name>_ffi_free`, if
     a custom release function is provided, care should be taken while freeing.
   
- `X-a`, `X-b` accessor functions for struct members

In order to export the created lamdas, simply include (struct X a b) in the begin-ffi:
`(begin-ffi (... (struct X a b) ...) ...)`

### Sample usage:

```
(begin-ffi ((struct abc a b))
  (c-declare "
struct abc {
    char* a;
    char* b;
    char* c;
};
")
  

  (define-c-struct abc ((a . char-string) (b . char-string))))
  
(def obj (malloc-abc))
			 
(abc-a-set! obj "hello")
(abc-b-set! obj "scheme")

(abc-a obj) ;; => hello
```
