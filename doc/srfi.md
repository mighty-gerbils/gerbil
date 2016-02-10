# SRFI support in Gerbil

The following SRFIs are supported by gerbil:

- SRFI O: Feature-based conditional expansion construct
core prelude

- SRFI 1: List Library
stdlib
```
import :std/srfi/1
```

- SRFI 2: AND-LET*: an AND with local bindings, a guarded LET* special
core prelude

- SRFI 4: Homogeneous numeric vector datatypes
gambit runtime
```
import :gerbil/gambit/hvectors
```

- SRFI 6: Basic String Ports
gambit runtime
```
import :gerbil/gambit/ports
```

- SRFI 8: receive: Binding to multiple values
stdlib
```
import :std/srfi/8
```

- SRFI 9: Defining Record Types
stdlib
```
import :std/srfi/9
```

- SRFI 13: String Library
stdlib
```
import :std/srfi/13
```

- SRFI 14: Character-Set Library
stdlib
```
import :std/srfi/14
```

- SRFI 16: Syntax for procedures of variable arity
core prelude

- SRFI 18: Multithreading support
gambit runtime
```
import :gerbil/gambit/threads
```

- SRFI 19: Time Data Types and Procedures
stdlib; current-time is named current-time-tc to avoid shadowing
runtime's current-time.
```
import :std/srfi/19
```

- SRFI 21: Real-time multithreading support
gambit runtime
```
import :gerbil/gambit/threads
```

- SRFI 22: Running Scheme Scripts on Unix
gambit runtime

- SRFI 23: Error reporting mechanism
gambit runtime

- SRFI 26: Notation for Specializing Parameters without Currying
core prelude provides `cut`

- SRFI 27: Sources of Random Bits
gambit runtime
```
import :gerbil/gambit/random
```

- SRFI 28: Basic Format Strings
stdlib
```
import :std/format
```

- SRFI 30: Nested Multi-line Comments
gambit reader

- SRFI 31: A special form for recursive evaluation
core prelude

- SRFI 34: Exception Handling for Programs
gambit runtime provides `with-exception-handler` and `raise`

- SRFI 38: External Representation for Data With Shared Structure
gambit reader

- SRFI 39: Parameter objects
gambit runtime

- SRFI 41: Streams
stdlib
```
import :std/srfi/41
```

- SRFI 42: Eager Comprehensions
stdlib
```
import :std/srfi/42
```

- SRFI 43: Vector Library
stdlib
```
import :std/srfi/43
```

- SRFI 48: Intermediate Format Strings
stdlib
```
import :std/format
```

- SRFI 60: Integers as Bits
gambit runtime
```
import :gerbil/gambit/bits
```

- SRFI 62: S-expression comments
gambit reader

- SRFI 66: Octet Vectors
gambit runtime
```
import :gerbil/gambit/hvectors
```

- SRFI 78: Lightweight testing
stdlib
```
import :std/srfi/78
```

- SRFI 87: => in case clauses
core prelude

- SRFI 88: Keyword Objects
gambit runtime

- SRFI 95: Sorting and Merging
stdlib
```
import :std/srfi/95
```

- SRFI 111: Boxes
gambit runtime


