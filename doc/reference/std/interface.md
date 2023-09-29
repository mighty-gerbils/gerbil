# Interfaces

The `:std/interface` module provides the implementation of interfaces.

::: tip To use the bindings from this module:
```scheme
(import :std/interface)
```
:::


## General

Interfaces declare the methods that an object must implement and
provide a constructor to package an object together with the method
implementations in a flat instance. This allows interface method
invocations to bypass lookup and directly dispatch the method.
Furthermore, once an interface has been instantiated for some class,
the system keeps a prototype instance in cache; this allows subsequent
instantiations to reduce to a single hash table lookup to the
prototype which is then cloned.

## Defining interfaces

In order to define an interface, you use the `interface` macro (see
below). The macro takes a name for the interface (an identifier),
together with its _mixin_ interfaces, and a list of method signatures.
Method signatures can carry contracts, which are checked at the interface boundary.

For each method, and methods coming from mixin interfaces, the macro
generates a safe and an unsafe facade procedures.  The safe facade
checks the contracts, casts the object, and dispatches to the
unchecked procedure. The unchecked procedure (which can be used
directly if you want to bypass the cast and contract checks)
dispatches to the actual method implementation from the instance
object.

Here is an example from the [Standard IO Interfaces](stdio.md):
```scheme
(interface Closer
  (close))

(interface (Reader Closer)
  (read (u8v    :~  u8vector?)
        (start  :~ (in-range? 0 (u8vector-length u8v))               :=  0)
        (end    :~ (in-range-inclusive? start (u8vector-length u8v)) := (u8vector-length u8v))
        (need   :~  nonnegative-fixnum?                              :=  0)))
```

In this example we define two interfaces, `Closer` and `Reader`.
- `Closer` is a base interface with a single method `close` that takes no arguments
- `Reader` is a refinement of `Closer` that defines a method `read` with a contract:
  - u8v is a required argument, which must satisfy the `u8vector?`
    predicate; in short, it must be a u8vector.
  - `start` is an optional argument, which must satisfy the
    `(in-range? 0 (u8vector-length u8v))` predicate. Notice that
    optional argument contracts can be _dependent_ on required
    arguments or previous optional arguments. In this case, `start` must be a valid index
    in the length range of the `u8v` u8vector.
  - `end` and `need` are also optional arguments with attached contracts.

Given these interface definitions, the macro will generate rougly the following:
```scheme
;; Closer interface
(defsyntax Closer ...)
(def Closer::descriptor ...)
(def (Closer? obj) ...)
(def (is-Closer? obj) ...)
(def (Closer-close obj) ...)
(def (&Closer-close obj) ...)

;; Reader interface
(defsyntax Reader ...)
(def Reader::descriptor ...)
(def (Reader? obj) ...)
(def (is-Reader? obj) ...)
(def (Reader-close obj) ...)
(def (&Reader-close obj) ...)
(def (Reader-read obj arg ...) ...)
(def (&Reader-read obj arg ...) ...)
```

- The `Closer` and `Reader` macros can be used to cast objects to the concrete interface
  implementations.
- The `Closer::descriptor` and `Reader::descriptor` are runtime descriptors for interface
  reflection.
- The `Closer?` and `Reader?` predicates can be used to check if an object is an
  _exact instance_ of the respective interfaces.
- The `is-Closer?` and `is-Reader?` can be used to check whether an object satisfies the
  interface (i.e. implements the required methods) and can be safely cast without causing
  a runtime error.
- The `Closer-close` procedure casts the object to be an exact `Closer` instance and
  dispatches to `&Closer-close`.
- The `&Closer-close` procedure is the _unchecked_ variant, which expects an exact instance
  of the interface, extracts the object from the instance and dispatches to the method
  implementation.
- The `Reader-close` procedure casts the object to be an exact `Reader` instance and
  dispatches to `&Reader-close`.
- The `&Reader-close` procedure dispatches the method to the implementation.
- The `Reader-read` procedure _checks the contract_, casts the object to an exact instance
  of `Reader` and dispatches to `&Reader-read`.
- The `&Reader-read` procedure dispatches the method to the implementation.

::: warning Note
You can call the unchecked `&` procedures directly if you want to bypass the cast and the
contract check, but you should be very careful doing that. The object _must_ be an exact
instance of your interface, and the contract _must_ be satisfied. The underlying method
implementation has no obligation to perform any checks or casts whatsoever and will likely
be using unsafe operations that can crash or worse, lead to undefined behavior and launch
the missiles.
:::


## When to use interfaces

First and foremost, interfaces are great for creating facades
abstracting complex functionality and implementation details.  They
also make it easy to compose object interactions.  See the standard IO
interfaces for an example.

Besides the abstraction, there are also performance reasons to use interfaces.
If you are interacting with an object using methods and you make many
method invocations, you should consider using interfaces.

Here is an example that demonstrates the performance advantages over dynamic dispatch:
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

And here are some timings for 1M iterations, after compiling the above code in a binary:
```shell
$ gxc -O -exe -o interface-op interface-op.ss
$ ./interface-op 1000000
(time (let () (declare (not safe)) (tmp/benchmark/interface/interface-op#fold-accumulator/vanilla _acc71_ _iters70_)))
    0.058732 secs real time
    0.058726 secs cpu time (0.058726 user, 0.000000 system)
    no collections
    64 bytes allocated
    no minor faults
    no major faults
    153354940 cpu cycles
(time (let () (declare (not safe)) (tmp/benchmark/interface/interface-op#fold-accumulator/interface _acc71_ _iters70_)))
    0.036777 secs real time
    0.036777 secs cpu time (0.036777 user, 0.000000 system)
    no collections
    448 bytes allocated
    no minor faults
    no major faults
    96028762 cpu cycles
(time (let () (declare (not safe)) (tmp/benchmark/interface/interface-op#fold-accumulator/unchecked-interface _acc71_ _iters70_)))
    0.022321 secs real time
    0.022313 secs cpu time (0.022313 user, 0.000000 system)
    no collections
    160 bytes allocated
    no minor faults
    no major faults
    58279314 cpu cycles

$ gxc -O -exe -full-program-optimization -o interface-op-optimized interface-op.ss
$ ./interface-op-optimized 1000000
(time (let () (declare (not safe)) (tmp/benchmark/interface/interface-op#fold-accumulator/vanilla _acc71_ _iters70_)))
    0.044859 secs real time
    0.044846 secs cpu time (0.042098 user, 0.002748 system)
    no collections
    64 bytes allocated
    no minor faults
    no major faults
    117129276 cpu cycles
(time (let () (declare (not safe)) (tmp/benchmark/interface/interface-op#fold-accumulator/interface _acc71_ _iters70_)))
    0.021684 secs real time
    0.021672 secs cpu time (0.021599 user, 0.000073 system)
    no collections
    704 bytes allocated
    no minor faults
    no major faults
    56617088 cpu cycles
(time (let () (declare (not safe)) (tmp/benchmark/interface/interface-op#fold-accumulator/unchecked-interface _acc71_ _iters70_)))
    0.020295 secs real time
    0.020296 secs cpu time (0.016758 user, 0.003538 system)
    no collections
    160 bytes allocated
    no minor faults
    no major faults
    52992136 cpu cycles
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

### Use unchecked methods when you know the exact type and satisfy the contract

If you know the exact type of an instance and you satisfy the contract,
you can elide the cast and contract checks by calling the unchecked method
the directly.

::: warning Note
Note: Use with caution; if you get this wrong and the type is not the right instance or
the contract is not satisfied, there will be dragons.
:::

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
(interface (id mixin-id ...) method-signature ...)

method-signature:
 (id required-argument ... optional-argument ... keyword-argument ... [. rest])

required-argument:
 id                    ; any type
 (id : Type)           ; specific Type: struct, class, or interface type
 (id :~ predicate)     ; predicate contract check

 optional-argument:
  (id default)
  (id : Type := default)
  (id :~ predicate := default)
  (id := default : Type)
  (id := default :~ predicate)

keyword-argument:
 keyword required-argument
 keyword optional-argument
```

This is the interface definition macro; it creates an interface with
name `id`, optionally mixing in the methods from existing interfaces
`mixin-id ...`.  The body of the interface consists of zero or more
method specifications, which is the name of the method and the
signature of the method, omitting self.

The macro generates a syntax binding for the interface meta
information (which is also a constructor macro), a constructor, two
predicates (for direct instance, `<interface>?` and interface
satisfiability check `is-<interface>?`), and checked and unchcked
procedure definitions for all the interface methods with the name
`<interface>-<method>` and `&<interface>-<method>`. Here `<interface>`
means the symbolic name of the interface.

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


## Procedures related to interfaces

### interface-instance?
```scheme
(interface-instance? obj)
```

Predicate that checks whether an object is an instance of an interface.

### interface-instance-object
```scheme
(interface-instance-object instance)
```

Extracts the underlying object from an interface instance.

### interface-descriptor?
```scheme
(interface-descriptor? obj)
```

Predicate that checks whether an object is an interface descriptor.

### interface-descriptor-type
```scheme
(interface-descriptor-type descriptor)
```

Returns the class type of exact instances of the interface described by the descriptor.

### interface-descriptor-methods
```scheme
(interface-descriptor-methods descriptor)
```

Returns the list of methods in the interface; a list of symbols.

### interface-cast-error?
```scheme
(interface-cast-error? obj)
```

Predicate that checks whether an exception condition is a interface cast failure.
