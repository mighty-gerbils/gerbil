# Testing

Gerbil comes with a testing library and a testing tool that can be used to run your tests
in the command line.

## Running tests with gxtest

Test files by convention have the `-test.ss` suffix and are generally not compiled.
Each test file is a module that should export one or more _test suites_, with a name that
ends in `-test`. See below for definition of test suites and test cases.

Tests can also optionally export `test-setup!` and `test-cleanup!` thunks:
- `test-setup!` will be executed before any test-suite in the file has run.
- `test-cleanup!` will be executed (with unwind protection) when all the test suites in the
  file have run.

Once your tests are in place, you can run them using `gerbil test` or just `gxtest`.
If you invoke it without arguments it will run all the test files in the current directory.
You can also explicitly pass files or directories to be run, and if you want to run tests
in a directory recursively you can append `/...` in the directory.

For instance, the following will recursively run all tests in the current directory:
```
gxtest ./...
```

## Test suites

A test suite is created using the `test-suite` special form from `:std/test` and contains one
or more _test cases_ created with the `test-case` special form.

Test cases contain code executed by the test runner, and in general contain one or more _checks_ with the `check` family of special forms which perform assertions.


## Example
Here is a small example for unit testing a trivial module:

```
$ cat gerbil.pkg
(package: tmp)

$ cat mylib.ss
(export myadd)

(def (myadd x y)
 (+ x y))

$ cat mylib-test.ss
(import :std/test
        ./mylib)
(export mylib-test test-setup! test-cleanup!)

(def (test-setup!)
  (displayln "setting up..."))

(def (test-cleanup!)
  (displayln "cleaning up..."))

(def mylib-test
  (test-suite "test mylib"
    (test-case "test myadd"
      (check (myadd 1 2) => 3))))

$ gxc -O mylib.ss
$ gxtest
=== ./mylib-test.ss
>>> setup
setting up...
>>> run mylib-test
Test suite: test mylib
Test case: test myadd
... 1 checks OK
... All tests OK
>>> cleanup
cleaning up...
OK
$ echo $?
0
```


## The standard test library

::: tip To use the test library
```scheme
(import :std/test)
```
:::

### test-suite
```scheme
(test-suite description case ...) -> test-suite

  description := string; description of the test suite
  case := test-case
```

Creates a test suite with one ore more test cases.

### test-case
```scheme
(test-case description body ...) -> test-case

  description := string; description of the test case
  body := code, as in the body of a lambda
```

Creates a new test case, with the body executed in a thunk.

### check
```scheme
(check expr => value)
(check expr ? predicate)
(check equality-function expr value)
```

Evaluates an `expr` and asserts that its value is the expected one:
- the first form uses `equal?` to compare the result of `expr` with the expected value.
- the second form applies the predicate `predicate`.
- the third form compares the result with `value` using the equality function `equality-function`.


### checkf
```scheme
(checkf equality-predicate expr value)
```

Evaluates expr and asserts that the the value is as expected, using the equality-predicate.

### check-eq?
```scheme
(check-eq? expr value)
```

Equivalent to `(checkf eq? expr value)`.

### check-not-eq?
```scheme
(check-not-eq? expr value)
```

Equivalent to `(checkf (? not eq?) expr value)`.

### check-eqv?
```scheme
(check-eqv? expr value)
```

Equivalent to `(checkf eqv? expr value)`.


### check-not-eqv?
```scheme
(check-not-eqv? expr value)
```

Equivalent to `(checkf (? not eqv?) expr value)`.


### check-equal?
```scheme
(check-equal? expr value)
```

Equivalent to `(checkf equal? expr value)`.


### check-not-equal?
```scheme
(check-not-equal? expr value)
```

Equivalent to `(checkf (? not equal?) expr value)`.

### check-output
```scheme
(check-output expr output)
```

Evaluates `expr` capturing its output and asserts it is equal to the expected `output`.

### check-predicate
```scheme
(check-predicate expr pred)
```

Evaluates `expr` and asserts that its value satisfies the predicate `pred`.

### check-exception
```scheme
(check-exception expr exn-pred)
```

Evaluates `expr` and asserts that it raises an exception that satisfies the predicate `exn-pred`.
