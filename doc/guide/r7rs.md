---
sidebarDepth: 1
---

# R7RS support in Gerbil

Gerbil supports R7RS as a custom language with the `:scheme/r7rs` prelude.
As such you can write and import modules written in R7RS Scheme and mix them
freely with other Gerbil modules. Gerbil also supports all the libraries from
R7RS-large, Red and Tangerine editions.

## R7RS in the REPL

In pure Gerbil, you can also evaluate R7RS expression by using the
`eval` procedure provided by `:scheme/eval`.

You can also start the Gerbil interpreter in an r7rs repl, by passing
the option `--lang r7rs`.
```bash
$ gxi --lang r7rs
R7RS Scheme in Gerbil 0.17.0-202-g6a00c01c on Gambit v4.9.5
>
```

The top context uses R7RS scheme syntax and includes bindings from `(scheme base)`.

## R7RS Modules

Writing (or porting) an R7RS module is simple: you just specify
`:scheme/r7rs` as the prelude. The prelude exports only the
necessities to support library definitions and imports.

Note that there can be only a single library defined within a module,
and its name must match the module id constructed by the package and
name of the file. This implementation restriction has to do with
library module resolution: Gerbil constructs a top module per file and
resolves by interpreting the library name as a load-path relative
path.

Gerbil modules can also have nested modules, but nested libraries are
unspecified by the R7RS report and so they are disallowed for R7RS
modules.

### Example

With this in mind, we can reproduce the Life example from the R7RS report.
First, let's define the `(example grid)` library:
```bash
$ cat > gerbil.pkg
(prelude: :scheme/r7rs)

$ mkdir example

$ cat > example/grid.ss
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
```bash
$ cat > example/life.ss
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
$ gxc -O example/grid.ss example/life.ss
```

And then we can run a little game of Life in the interpreter using the normal gerbil language prelude:
```bash
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

This is just a matter of using the r7rs language prelude in `gxi`:
```
$ gxi --lang r7rs
> (import (scheme base)
          (only (example life) life)
          (rename (prefix (example grid) grid-)
                  (grid-make make-grid)))
> (begin
    (define grid (make-grid 24 24))
    (grid-set! grid 1 1 #t)
    (grid-set! grid 2 2 #t)
    (grid-set! grid 3 0 #t)
    (grid-set! grid 3 1 #t)
    (grid-set! grid 3 2 #t))
> (life grid 80)
...
```

## Implementation Notes

- The `define-library` form can appear at most once per library module and
  the library id must match the id of the enclosing module.

- The `char-foldcase` and `string-foldcase` procedures from `(scheme char)`
  are not implemented.

- The reader doesn't accept shared structures by default, as cycles
  are not currently supported in syntax objects. You can enable it on
  a per-port basis with a custom readtable, but be advised that the
  repl will loop when given a cyclic structure as syntax input.

- ephemerons, in the `(scheme ephemeron)` library, are implemented
  using weak pairs.
