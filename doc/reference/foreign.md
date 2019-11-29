# Utilities for FFI Programming

::: tip usage
(import :std/foreign)
:::

## begin-ffi
::: tip usage
```
(begin-ffi (id ...) body ...)

; expands to
(extern id ...)
(begin-foreign
  (namespace (<module-namespace> id ...))
  prelude-macros ...
  prelude-decls ...
  body ...
  prelude-defs ...
```
:::

The following prelude macros are available within the body:
```
(define-c-lambda id args ret [name/code])
(define-const id)
(define-const* id)
(define-guard guard defn)
(define-with-errno id ffi-id args)
(define-c-struct struct-name members release-function)
```

The following declarations are included before the body:
```
#include <stdlib.h>
#define U8_DATA(u8vector) ...
#define U8_LEN(u8vector) ...
static ___SCMOBJ ffi_free (void *ptr);
```

In case you are using define-c-struct without a release function and have a string member,
then a `<struct-name>_ffi_free` function is included, which apart from freeing the ptr also
cleans up any string member.

The following definitions are included after the body:

```
#ifndef ___HAVE_FFI_FREE
#define ___HAVE_FFI_FREE
___SCMOBJ ffi_free (void *ptr) { ...}
#endif
```
