# R7RS support in Gerbil

Gerbil supports R7RS as a custom language for library modules with the
`:scheme/r7rs` prelude.  As such you can write and import modules
written in R7RS Scheme and mix them freely with other Gerbil
modules.

<!-- toc -->

- [R7RS Library Modules](#r7rs-library-modules)
- [Evaluating R7RS Expressions](#evaluating-r7rs-expressions)
- [Implementation Restrictions](#implementation-restrictions)

<!-- tocstop -->

## R7RS in the REPL

In pure Gerbil, you can also evaluate R7RS expression by using the
`eval` procedure provided by `:scheme/eval`.

You can also start the Gerbil interpreter in an r7rs repl, by setting the
environment variable `GERBIL_LANG=r7rs`.
```
$ GERBIL_LANG=r7rs gxi
R7RS Scheme in Gerbil v0.12-DEV on Gambit v4.8.8
> _
```

The top context uses r7rs scheme syntax and includes bindings from `(scheme base)`.

## R7RS Library Modules

Writing (or porting) an R7RS module is simple: you just specify
`:scheme/r7rs` as the prelude.  The prelude exports only the
necessities to support library definitions: `define-library` and the
associated symbols for library declarations.

There can be only a single library defined within a module, and its
name must match the module id constructed by the package and name of
the file. This implementation restriction has to do with library
module resolution: Gerbil supports only a single top module per
library file and constructs the module before expanding the body.
Gerbil supports nested modules, but they are true nested modules and
thus inappropriate for nested R7RS library definitions as these are
inherently top level.

### Example

With this in mind, we can reproduce the Life example from the R7RS report.
First, let's define the `(example grid)` library:
```
$ mkdir example
$ cat > example/grid.ss
prelude: :scheme/r7rs
package: example

(define-library (example grid)
  (export make rows cols ref each
          (rename put! set!))
  (import (scheme base))
  (begin
    ;; Create an NxM grid.
    (define (make n m)
      (let ((grid (make-vector n)))
        (do ((i 0 (+ i 1)))
            ((= i n) grid)
          (let ((v (make-vector m #f)))
            (vector-set! grid i v)))))
    (define (rows grid)
      (vector-length grid))
    (define (cols grid)
      (vector-length (vector-ref grid 0)))
    ;; Return #false if out of range.
    (define (ref grid n m)
      (and (< -1 n (rows grid))
           (< -1 m (cols grid))
           (vector-ref (vector-ref grid n) m)))
    (define (put! grid n m v)
      (vector-set! (vector-ref grid n) m v))
    (define (each grid proc)
      (do ((j 0 (+ j 1)))
          ((= j (rows grid)))
        (do ((k 0 (+ k 1)))
            ((= k (cols grid)))
          (proc j k (ref grid j k)))))))
```

And then we define the `(example life)` library:
```
$ cat > example/life.ss
prelude: :scheme/r7rs
package: example

(define-library (example life)
  (export life)
  (import (except (scheme base) set!)
          (scheme write)
          (example grid))
  (begin
    (define (life-count grid i j)
      (define (count i j)
        (if (ref grid i j) 1 0))
      (+ (count (- i 1) (- j 1))
         (count (- i 1) j)
         (count (- i 1) (+ j 1))
         (count i (- j 1))
         (count i (+ j 1))
         (count (+ i 1) (- j 1))
         (count (+ i 1) j)
         (count (+ i 1) (+ j 1))))
    (define (life-alive? grid i j)
      (case (life-count grid i j)
        ((3) #t)
        ((2) (ref grid i j))
        (else #f)))
    (define (life-print grid)
      (display "\x1B;[1H\x1B;[J")       ; clear vt100
      (each grid
            (lambda (i j v)
              (display (if v "*" " "))
              (when (= j (- (cols grid) 1))
                (newline)))))
    (define (life grid iterations)
      (do ((i 0 (+ i 1))
           (grid0 grid grid1)
           (grid1 (make (rows grid) (cols grid))
                  grid0))
          ((= i iterations))
        (each grid0
              (lambda (j k v)
                (let ((a (life-alive? grid0 j k)))
                  (set! grid1 j k a))))
        (life-print grid1)))))

```

We compile our library modules with `gxc` as usual:
```
$ gxc example/grid.ss example/life.ss
```

And then we can run a little game of Life in the interpreter:
```
$ gxi
> (import (only-in :example/life life)
        (rename-in (prefix-in :example/grid grid-)
                   (grid-make make-grid)))

;; Initialize a grid with a glider.
> (define grid (make-grid 24 24))
> (grid-set! grid 1 1 #t)
> (grid-set! grid 2 2 #t)
> (grid-set! grid 3 0 #t)
> (grid-set! grid 3 1 #t)
> (grid-set! grid 3 2 #t)

;; Run for 80 iterations
> (life grid 80)
...
```

## Evaluating R7RS Expressions

This is just a matter of using the R7RS eval.
Continuing the example above, we can do the same evaluations with pure R7RS syntax:
```
$ gxi
> (import :scheme/eval :scheme/repl)
> (eval '(import (scheme base)
               (only (example life) life)
               (rename (prefix (example grid) grid-)
                       (grid-make make-grid)))
      (interaction-environment))
> (eval '(begin (define grid (make-grid 24 24))
              (grid-set! grid 1 1 #t)
              (grid-set! grid 2 2 #t)
              (grid-set! grid 3 0 #t)
              (grid-set! grid 3 1 #t)
              (grid-set! grid 3 2 #t))
      (interaction-environment))
> (eval '(life grid 80)
        (interaction-environment))
...
```

## Implementation Restrictions

- The `define-library` can appear at most once per library module and
  the library id must match the id of the enclosing module.

- The following procedures from `(scheme base)` are not implemented:
```
raise-continuable input-port-open? output-port-open?
floor/ floor-quotient floor-remainder
truncate/ truncate-quotient truncate-remainder
```

- The following procedures from `(scheme char)` are not implemented:
```
char-foldcase string-foldcase
```

- The `delay-force` special from `(scheme base)` is not implemented.
- The `cond-expand` special form does not understand `library` features.
- The `#true` and `#false` datums are not recognized by the reader.
