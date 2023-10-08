# Path Utilities

The `:std/misc/path` library provides functions that complement those
inherited from Gambit in making it easy to manipulate POSIX-style file paths.
At this time, we make no pretense of supporting Windows-style paths;
if on Windows, use WSL or Cygwin—or help improve Gerbil to be more portable.

::: tip To use the bindings from this module:
```scheme
(import :std/misc/path)
```
:::

## path-default-extension
```scheme
(path-default-extension path ext) -> path
```

Add a default extension to a path:
given a `path` (string) and an extension `ext` (a string
starting with `"."`, or `""` or `#f` for no extension),
if the `ext` start with `"."` and the `path` has no extension
(as per `path-extension`), then return the concatenation
of the `path` and `ext`, otherwise return `path` unmodified.

::: tip Examples:
```scheme
> (path-default-extension "foo.ss" ".o")
"foo.ss"
> (path-default-extension "foo" ".o")
"foo.o"
> (path-default-extension "foo" #f)
"foo"
```
:::

## path-force-extension
```scheme
(path-force-extension path ext) -> path
```

Add a extension to a path:
given a `path` (string) and an extension `ext` (a string
starting with `"."`, or `""` for the empty extension,
or `#f` for no actual extension to force),
if `ext` is false, then return `path` unmodified,
otherwise, return a next string computed by
stripping any current extension from the `path`,
and replacing it with the provided extension `ext`
(which may be `""` at which point nothing is added to the stripped path).

Note how the semantics of `#f` and `""` differ here,
unlike in `path-default-extension`.

Also note that if a filename starts with `"."` (after disregarding any
`"/"`-delimited directory before it), then
that `"."` does not count as part of an extension;
however, there might be more than one `"."` in the filename, at which point
only the last one is considered as starting "the" extension,
but what comes before might suddenly become the extension if `ext` is `""`.
However, these are corner cases that shouldn't matter most of the time.

::: tip Examples:
```scheme
> (path-force-extension "foo.ss" ".o")
"foo.o"
> (path-force-extension "foo" ".o")
"foo.o"
> (path-force-extension "foo.ss" #f)
"foo.ss"
> (path-force-extension "foo.ss" "")
"foo"
```
:::

## path-extension-is?
```scheme
(path-extension-is? path extension) -> bool
```

Return true if the given `path` has the given `extension`.

::: tip Examples:
```scheme
> (path-extension-is? "foo.ss" ".ss")
#t
> (path-extension-is? "foo" "")
#t
> (path-extension-is? "foo.c" "") ;; Nope, extension is ".c"
#f
> (path-extension-is? ".foo" ".foo") ;; Nope, initial "." doesn't count.
#f
> (path-extension-is? "foo.b.c" ".b.c") ;; Nope, the extension is just ".c"
#f
> (path-extension-is? "foo.ss" "")
#f
```
:::

## subpath
```scheme
;; : String String ... -> String
(subpath top . sub-components)
```

Given a `top` path and any number of `sub-components`, all of them strings,
construct a path made by joining `top` and all the `sub-components` in order
into a subpath of the `top` path.

::: tip Examples:
```scheme
> (subpath "foo" "bar" "baz/quux" "myfile.ext")
"foo/bar/baz/quux/myfile.ext"
> (subpath "/home/user" ".gerbil" "lib" "static")
"/home/user/.gerbil/lib/static"
```
:::

## subpath?
```scheme
;; : (OrFalse String) (OrFalse String) -> (OrFalse String)
(subpath? maybe-subpath base-path)
```

If `maybe-subpath` is a pathname that is under `base-path`, return a pathname object that
when used with `path-expand` with defaults `base-path`, yields `maybe-subpath`.
Otherwise, return `#f`.

::: tip Examples:
```scheme
> (subpath? "/foo" "/bar")
#f
> (subpath? "/home/user/.gerbil/lib" "/home/user")
".gerbil/lib"
> (subpath? "foo/bar/baz/quux" "foo/bar")
"baz/quux"
```
:::

## path-absolute?
```scheme
;; : String -> Bool
(path-absolute? path)
```

Given `path`, a string, return true if that `path` is absolute.

We only support POSIX paths, where a path absolute iff it starts with `"/"`.
In a hypothetical future where we better support Windows,
the test may be platform-dependent and more complex.

::: tip Examples:
```scheme
> (path-absolute? "/foo")
#t
> (path-absolute? "foo")
#f
```
:::

## absolute-path?
```scheme
;; : Any -> Bool
(absolute-path? path)
```

Given an object `path` that may or may not be a string, return true if
that object is indeed a string, and that string indeed denotes an absolute path
as per `path-absolute?`.

::: tip Examples:
```scheme
> (absolute-path? "/foo")
#t
> (absolute-path? "foo")
#f
> (absolute-path? 'foo)
#f
> (absolute-path? 42)
#f
> (absolute-path? #f)
#f
> (absolute-path? #t)
#f
```
:::

## get-absolute-path
```scheme
;; : (Or String False (-> String)) -> String
(get-absolute-path path-designator)
```

Return the absolute path associated to a `path-designator`:
  - A string designates itself.
  - A thunk designates the result of calling it.
  - `#f` designates the `(current-directory)`.

Raise an error if the designator is invalid or does not designate an absolute path.

::: tip Examples:
```scheme
> (get-absolute-path "/foo")
"/foo"
> (get-absolute-path "foo")
ERROR
> (get-absolute-path (lambda () (or (getenv "MY_APP_HOME") (other-default))))
"/opt/my-application" ;; or wherever that environment variable points to,
                      ;; or an error if not defined to a absolute path
> (get-absolute-path #f)
"/home/user" ;; or wherever your (current-directory) points to
```
:::

## ensure-absolute-path
```scheme
;; : String (Or String False (-> String)) -> String
(ensure-absolute-path path (base #f))
```

Given a `path`, that may be absolute, or may be relative to a `base`,
try hard to return the absolute path that this `path` would designate
if used to open a file relative to the `base`.
Raise an error if that attempt is unsuccessful.

The `base` itself is only consulted if `path` is not absolute,
at which point it denotes a base absolute path as per `get-absolute-path`,
that will raise an exception if it cannot indeed
compute an absolute path out of it.

::: tip Examples:
```scheme
> (ensure-absolute-path "/foo" #f)
"/foo"
> (ensure-absolute-path "/foo" error)
"/foo"
> (ensure-absolute-path "foo" "/bar")
"/bar/foo"
> (ensure-absolute-path "foo" current-directory)
"/home/user/foo" ;; depends on your actual current-directory
> (ensure-absolute-path "foo" #f)
"/home/user/foo" ;; same as above
> (ensure-absolute-path "foo" "bar")
*** ERROR IN ? [Error]: Path not absolute
```
:::

## path-maybe-normalize
```scheme
;; : String -> String
(path-maybe-normalize path)
```

Try to `path-normalize` the given `path`, but if that fails, falls back to
using `path-simplify` to at least simplify the path as much as possible.

There are many reasons why `path-normalize` may fail:
  - The file doesn't exist, and so cannot have a canonical name.
  - Along the path there may be symlinks in unreadable directories,
    "interesting" filesystems that defy introspection,
    weird `chroot` situations, etc.
  - Race conditions with other threads or processes modifying the
    system rights at the same moment may cause `path-normalize`
    to yield inconsistent results.

So you may want to gracefully fall back to a non-normalized yet simplified path
when that's the case.

Note that when the `path` is a directory and `path-normalize` succeeds,
the path it returns will end with `"/"`; however, if a directory-to-be
does not exist yet, then the fallback to `path-simplify` will not *add*
a `"/"` at the end.

::: tip Examples:
```scheme
;; Assuming /etc is indeed already a normalized path
> (path-maybe-normalize "/etc/.")
"/etc/"

;; Goes through path-simplify and does not add the / at the end!
> (path-maybe-normalize "/../../../does////../not/../exist/../etc")
"/etc"
```
:::

## path-enough
```scheme
;; : String String -> String
(path-enough sub base)
```

If `sub` is a pathname that is under `base`, return a pathname string that
when used with `path-expand` with defaults `base`, returns `sub`.
Otherwise, return `sub` unchanged.

This function is broadly similar to the Common Lisp standard function
`enough-namestring`, or its semi-standard library variant `uiop:enough-pathname`.

::: tip Examples:
```scheme
> (path-enough "/home/user/.gerbil/lib" "/home/user")
".gerbil/lib"
> (path-enough "/etc" "/home/user")
"/etc"
> (path-enough "foo/bar/baz/quux" "foo/bar")
"bar/quux"
> (path-enough "foo/bar" "baz/quux")
"foo/bar"
```
:::

## path-simplify-directory
```scheme
;; : String -> String
(path-simplify-directory path)
```

Given a `path`, keep only its directory portion, then simplify it.

::: tip Examples:
```scheme
> (path-simplify-directory "/opt/local/bin/../stow/foo/bin/bar.sh")
"/opt/local/stow/foo/bin"
```
:::

## path-normalized-directory
```scheme
;; : String -> String
(path-normalized-directory path)
```

Given a `path`, keep only its directory portion, then try to normalize it
as per `path-maybe-normalize`.

::: tip Examples:
```scheme
> (path-normalized-directory "/etc/password")
"/etc/"

;; Here we first take the path-directory portion, which is only "/"
> (path-normalized-directory "/etc")
"/"
```
:::

## path-parent
```scheme
;; : String -> String
(path-parent path)
```

Given the `path` to a directory, with or without trailing `"/"`,
get the path to the parent directory, and try to normalize it
as per `path-maybe-normalize`, leaving a `"/"` at the end.

::: tip Examples:
```scheme
> (path-parent "/home/user")
"/home/"
> (path-parent "/home/user/")
"/home/"
> (path-parent "/etc/X11")
"/etc/"
> (path-parent "/etc/X11/")
"/etc/"
> (path-parent "does/not/exist/")
"does/not/"
> (path-parent "does/not/exist")
"does/not/"
```
:::

## path-simplify
```scheme
;; : String keep..?:Bool -> String
(path-simplify path keep..?: (keep..? #f))
```

Given a `path` to a file that may or may not exist on the current filesystem,
return a simplified path, eliminating redundant uses of `"."` or `"/"`.

Unless `keep..?` is true, also remove `".."` path components that follow
a non-`".."` path component, which is usually a valid simplification,
but may fail to preserve subtle behavior such as:
  - Deliberately following a symlink then going up from the target directory
  - Simplifying away an attempt to follow a directory that may or may not exist
    as a back-handed way to detect whether it exists or not.
  - Weird behavior that may happen due to filesystem mounts.

NB: Always simplify away a trailing `"/"` except for the root directory `"/"`.

::: tip Examples:
```scheme
> (path-simplify-directory "/foo/./..///.../../bar/../baz////")
"/bar/"
```
:::
