# Interfaces

The `:std/interface` module provides an implementation of Go-style
interfaces.

Interfaces declare the methods that an object must implement and
provide a constructor to package an object together with the method
implementations in a flat instance. This allows interface method
invocations to bypass lookup and directly dispatch the method.
Furthermore, once an interface has been instantiated for some class,
the system keeps a prototype instance in cache; this allows subsequent
instantiations to reduce to a single hash table lookup to the
prototype which is then cloned.

::: tip To use the bindings from this module:
```scheme
(import :std/interface)
```
:::


## When to use interfaces

If you are interacting with an object using methods and you make many
method invocations, you should consider using interfaces.

Besides performance considerations, interfaces are great for creating
facades abstracting complex functionality and making it easy to
compose object interactions. See the standard IO interfaces for an
example.

Here is an example that demonstrates the performance advantages over direct dispatch:
```scheme
(interface Operation
  (start!)
  (apply x)
  (finish!))

(defstruct LinearAccumulator (state a b))

(defmethod {apply LinearAccumulator}
  (lambda (self x)
    (with ((LinearAccumulator state a b) self)
      (set! (LinearAccumulator-state self)
         (+ state (* a x) b)))))

(defmethod {start! LinearAccumulator}
  (lambda (self)
    (set! (LinearAccumulator-state self) 0)))

(defmethod {finish! LinearAccumulator}
  LinearAccumulator-state)


;; implementation using vanilla method dispatch
(def (fold-accumulator/vanilla acc iters)
  {start! acc}
  (for (x (in-range iters))
    {apply acc x})
  {finish! acc})

;; implementation using the Operation interface
(def (fold-accumulator/interface acc iters)
  (let (op (Operation acc))
    (Operation-start! op)
    (for (x (in-range iters))
      (Operation-apply op x))
    (Operation-finish! op)))

;; implementation using the _unchecked_ Operation interface
(def (fold-accumulator/unchecked-interface acc iters)
  (let (op (Operation acc))
    (&Operation-start! op)
    (for (x (in-range iters))
      (&Operation-apply op x))
    (&Operation-finish! op)))
```

And here are some timings for 1M iterations, after compiling the above code:
```scheme
> (import :tmp/interface-example)
> (def acc (LinearAccumulator #f 2 3))
> (time (fold-accumulator/vanilla acc 1000000))
(time (tmp/interface-example#fold-accumulator/vanilla acc (##quote 1000000)))
    0.045348 secs real time
    0.045350 secs cpu time (0.042612 user, 0.002738 system)
    no collections
    no bytes allocated
    no minor faults
    no major faults
1000002000000
> (time (fold-accumulator/interface acc 1000000))
(time (tmp/interface-example#fold-accumulator/interface acc (##quote 1000000)))
    0.016888 secs real time
    0.016891 secs cpu time (0.016401 user, 0.000490 system)
    no collections
    928 bytes allocated
    no minor faults
    no major faults
1000002000000
> (time (fold-accumulator/interface acc 1000000))
(time (tmp/interface-example#fold-accumulator/interface acc (##quote 1000000)))
    0.016777 secs real time
    0.016778 secs cpu time (0.016614 user, 0.000164 system)
    no collections
    144 bytes allocated
    no minor faults
    no major faults
1000002000000
> (time (fold-accumulator/unchecked-interface acc 1000000))
(time (tmp/interface-example#fold-accumulator/unchecked-interface acc (##quote 1000000)))
    0.015616 secs real time
    0.015617 secs cpu time (0.015581 user, 0.000036 system)
    no collections
    144 bytes allocated
    no minor faults
    no major faults
1000002000000
```

As we can see the interface version is significantly faster, and the
difference is becomes even more pronounced with deep/wide class
hierarchies.

## Tips for Effective Use of Interfaces

### Cast your objects and reuse them across many interface calls

Let's say an object `obj` implements an interface `A` and you have a
method `f` you want to invoke on the interface:

```scheme
(interface A
  (f ...))

(def obj ...)

;; what not to do as you will create unnecessary temporary instances from the cast.
(A-f obj ...) ; this will implicitly cast

;; what to do for better performance:
(def a (A obj))
(A-f a ...)
```

### Use the subtype methods for interface mixins

When you have interfaces `A` and `B` mixing `A`, then the interface macro will define
`A`'s methods for `B` as well.
In this case, if you have an instance of `B` you should use `B`'s methods directly to
avoid unnecessary casts.

```scheme
(interface A
  (f ...))

(interface (B A)
 ...)

(def b (B ...))

;; what not to do, as it would incur a performance penalty and allocate a temporary instance:
(A-f b ...)

;; what to do for better performance:
(B-f b ...)
```

### Use unchecked methods when you know the exact type

If you know the exact type of an instance, you can elide the checked cast by calling
the unchecked method.

Note: if you get this wrong and the type is not the right instance, there will be dragons.
Use with caution!

```scheme
(interface A
  (f ...))

(def a (A ...))

;; what to do for better performance:
(&A-f a ...)

```

## Macros
### interface
```scheme
(interface id method-spec ...)
(interface (id mixin-id ...) method-spec ...)

method-spec:
 (method-name . lambda-formals)
```

This is the interface definition macro; it creates an interface with
name `id`, optionally mixing in the methods from existing interfaces
`mixin-id ...`.  The body of the interface consists of zero or more
method specifications, which is simply the name of the method and the
lambda formals of the method, omitting self.

The macro generates a syntax binding for the interface meta
information (which is also a constructor macro), a constructor, two
predicates (for direct instance, `<interface??` and interface
satisfaction check `is-<interface>?`), and method definitions for all
the interface methods with the name `<interface>-<method>`. Here
`<interface>` means the symbolic name of the interface.

Here is an example:
```scheme
(interface Operation
  (start!)
  (apply x)
  (finish!))

; => expands to the following definitions:

(defsyntax Operation ...)
(def Operation::t ...)
(def Operation::descriptor ...)
(def (make-Operation obj) ...)
(def (Operation? obj) ...)
(def (is-Operation? obj) ...)
(def (Operation-start! self) ...)
(def (&Operation-start! self) ...)  ; unchecked
(def (Operation-apply self x) ...)
(def (&Operation-apply self x) ...) ; unchecked
(def (Operation-finish! self) ...)
(def (&Operation-finish! self) ...) ; unchecked
```


### interface-out
```scheme
(interface-out interface-id ...)
(interface-out unchecked: #t interface-id ...)
```

Export macro for exporting the symbols related to an interface.
By default, unchecked method stubs are not exported; you will need to
use the second form to also export them.
