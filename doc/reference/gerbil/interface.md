# More about Interfaces

## Defining Interfaces

Interfaces are defined using the `interface` macro. The macro takes a
name for the interface (an identifier), together with its _mixin_
interfaces, and a list of method signatures. Method signatures carry
contracts, which are checked at the interface boundary. See also
[Interface Macrology](/reference/gerbil/core/interface.md) for additional
details.

For each method, and methods coming from mixin interfaces, the macro
generates a safe and an unsafe facade procedures.  The safe facade
checks the contracts, casts the object, and dispatches to the
unchecked procedure. The unchecked procedure (which can be used
directly if you want to bypass the cast and contract checks or if the
compiler can prove the contract is satisfied) dispatches to the actual
method implementation from the instance object.

Here is an example from the [Standard IO Interfaces](/reference/std/stdio.md):
```
(interface Closer
  (close) => :void)

(interface (Reader Closer)
  ;; read into a buffer; it _must_ be a u8vector.
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end
  ;; - need denotes the minimum required input; it must be a fixnum
  ;; Returns the number of bytes read; 0 denotes the end of input.
  ;; If less than the needed bytes are read, an io-error is raised.
  (read (u8v    : :u8vector)
        (start  :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
        (end    :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v))
        (need   :~  nonnegative-fixnum?                              :- :fixnum :=  0))
  => :fixnum)

(interface (Writer Closer)
  ;; write from a buffer; it _must_ be a u8vector
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end; #f means the end of the buffer
  ;; Returns the number of bytes written.
  (write (u8v   :  :u8vector)
         (start :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
         (end   :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v)))
  => :fixnum)

...
```

Let's unpack these definitions:
- we define a base interface, `Closer` that has a single method `close` and provides behavior for closing a source or sink of data.
- we define an interface for sources of data, `Reader`, which extends `Closer` with a `read` method to read data from a source into a binary buffer.
- we define an interface for sinks of data, `Writer`, which extends `Closer` with a `write` method to write data from a binary buffer into a sink.

The most salient feature of the method definitions are the contracts:
- `close` takes no argument and returns nothing usable (void)
- `read` takes a buffer, which is a `u8vector` and two optional arguments denoting the range of output in the buffer; it returns the number of bytes read as a fixnum.
- `write` similarly takes a buffer, which is a `u8vector`, and two optional arguments denoting the rage of input from the buffer; it returns the number of bytes written as a fixnum.

Let's further unpack the contracts for `read` and `write`:
- `(u8v    : :u8vector)`: this is the u8vector, with a type declaration. The type is checked at the interface boundary, unless the compiler can prove the type or the user explicitly bypasses.
- `(start  :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)`: this is the start of the output range, which must be within the u8vector. The contract check is a an expression check, using the `in-range?` macro. If the check succeeds, the argument is guaranteed to be a fixnum as denoted by the type assertion `:- :fixnum`. The argument is optional, with a default value of `0`.
- `(end    :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v))`: this is the end of input range, with similar semantics.
- `(need   :~  nonnegative-fixnum?                              :- :fixnum :=  0)`: this is an optional argument for `read`, which controls the blocking behavior of the method in the presence of buffers.

## Invoking Interface Methods

Given an object whose class implements an interface, the object can be
cast into the appropriate instance and its methods can be invoked.
There are two canonical ways to invoke a method:
- Using dotted notation, within the context of an appropriate `using`
  declaration; this is implicit inside lambda scopes that specify
  contracts for their arguments.
- Call the interface procedure directly, either the safe (checked)
  variant or the unchecked one if you are confident of your types.

### Method Invocation Using Dotted Notation
That's the easy and recommended way:
```
;; cast + check the contract
(using (r : Reader)
  (r.read buf))

;; no cast, check the contract
(using (r ::- Reader)
  (r.read buf))

;; (dangerous!) no cast, no contract check
(using (r :- Reader)
  (r.read buf))

;; inside an implicit using
(def (read-it! (r : Reader) (buf : u8vector)) => :fixnum
  (r.read buf))

;; living dangerously
(def (read-it! (r :- Reader) (buf :- u8vector)) => :fixnum
  (r.read buf))
```

### Direct Method Invocation
That's what dotted notation actually expands to:
```
;; cast + contract check
(Reader-read r buf)

;; unchecked
(&Reader-read r buf)
```

## Implementing Interface Methods

Interface methods are implemented as a method on the class
implementing the desired interface, optionally using the
`interface:  <Interface>` directive:
```
(defmethod {read MyReaderImplemention}
  (lambda (self buf start end need)
    ...)
  interface: Reader)
```

## Using Interfaces

First and foremost, interfaces are great for creating facades
abstracting complex functionality and implementation details. They
also make it easy to compose object interactions.
See the [standard IO interfaces](/reference/std/stdio.md) for an example.

Besides the abstraction, there are also performance reasons to use
interfaces.  If you are interacting with an object using methods and
you make many method invocations, you should be using interfaces as
interface dispatch is significantly faster than dynamic dispatch.

Here is an example that demonstrates the performance advantages over dynamic dispatch:
```scheme
(interface Operation
  (start!)
  (apply x)
  (finish!))

(defstruct LinearAccumulator (state a b))

(defmethod {apply LinearAccumulator}
  (lambda (self x)
    (set! self.state (+ self.state (* self.a x) self.b))))

(defmethod {start! LinearAccumulator}
  (lambda (self)
    (set! self.state 0)))

(defmethod {finish! LinearAccumulator}
  LinearAccumulator-state)

;; implementation using dynamic method dispatch
(def (fold-accumulator/dynamic acc iters)
  {acc.start!}
  (for (x (in-range iters))
    {acc.apply x})
  {acc.finish!})

;; implementation using the Operation interface
(def (fold-accumulator/interface acc iters)
  (using (op acc : Operation)
    (op.start!)
    (for (x (in-range iters))
      (op.apply x))
    (op.finish!)))

;; implementation using the _unchecked_ Operation interface
(def (fold-accumulator/unchecked-interface acc iters)
  (using (op acc :- Operation)
    (op.start!)
    (for (x (in-range iters))
      (op.apply x))
    (op.finish!)))
```

And here are some timings for 1M iterations, after compiling the above code in a binary:
```shell
$ gxc -O -exe -o interface-op interface-op.ss
$ ./interface-op 1000000
(time (let () (declare (not safe)) (tmp/benchmark/interface/interface-op#fold-accumulator/dynamic _acc71_ _iters70_)))
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
```

As we can see the interface version is significantly faster, and the
difference becomes ore pronounced with deep/wide class hierarchies.

## Some Tips for Effective Use of Interfaces

### Specify the interface in method definitions

Use the `interface: ...` directive in your method definitions, for the appropriate interface:
```
(defmethod {read MyReaderImplementation}
  (lambda (self u8v start end need)
    ;; Implicit declarations injected by the defmethod macro:
    ;; self ::- MyReaderImplementations
    ;; u8v :- :u8vector
    ;; start, end, need :- :fixnum
    ...)
  interface: Reader)
```

This allows for separation of call context, ensuring safety and
injecting the contract in the `lambda` form. The separation of call
context is important, as calls using the method name (e.g. with the
dotted notation) will call the exact interface method guaranteeing the
input argument constraints. This also allows a class to implement
disparate interfaces which may use the same method names with
disparate semantics or contracts. Finally, it discourages the
programmer from dynamically callin an interface method, which could
violate contract assumptions.

Note that in the spirit of Gerbil, it is not impossible to dynamically
call an interface method using the fully qualified synthetic name of
the method; it is merely discouraged, let there be dragons.

### Cast your objects and reuse them across many interface calls

Let's say an object `obj` implements an interface `A` and you have a
method `f` you want to invoke on the interface:

```scheme
(interface A
  (f ...))

(def obj ...)

;; what not to do as you will create unnecessary temporary instances from the cast.
(for ...
  (using (a obj : A) (a.f ...))) ; this will implicitly cast

;; what to do for better performance:
(using (a obj : A)
  (for ... (a.f ...))) ; this will not cast
```

### You may use unchecked methods when you know the exact type and satisfy the contract

If you know the exact type of an instance and you satisfy the contract,
you can elide the cast and contract checks by calling the unchecked method
the directly.

::: warning Note
Note: Use with caution; if you get this wrong and the type is not the right instance or
the contract is not satisfied, there will be dragons and your process will die a painful death... or launch missiles.
:::

```scheme
(interface A
  (f ...))

(def a (A ...))

;; what to do for better performance:
(using (A :- a)
  (a.f ...))

```
