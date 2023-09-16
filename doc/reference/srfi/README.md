# SRFI support in Gerbil

The following SRFIs are supported by gerbil:

| SRFI                                                     | Title                                                  | support      | import                    |
|----------------------------------------------------------|--------------------------------------------------------|--------------|---------------------------|
| [SRFI  0](https://srfi.schemers.org/srfi-0/srfi-0.html)  | Feature-based conditional expansion construct          | core prelude |                           |
| [SRFI  1](https://srfi.schemers.org/srfi-1/srfi-1.html)  | List Library                                           | stdlib       | `:std/srfi/1`             |
| [SRFI  2](https://srfi.schemers.org/srfi-2/srfi-2.html)  | AND-LET*                                               | core prelude |                           |
| [SRFI  4](https://srfi.schemers.org/srfi-4/srfi-4.html)  | Homogeneous numeric vector datatypes                   | runtime      | `:gerbil/gambit/hvectors` |
| [SRFI  6](https://srfi.schemers.org/srfi-6/srfi-6.html)  | Basic String Ports                                     | runtime      | `:gerbil/gambit/ports`    |
| [SRFI  8](https://srfi.schemers.org/srfi-8/srfi-8.html)  | receive                                                | stdlib       | `:std/srfi/8`             |
| [SRFI  9](https://srfi.schemers.org/srfi-9/srfi-9.html)  | Defining Record Types                                  | stdlib       | `:std/srfi/9`             |
| [SRFI 13](https://srfi.schemers.org/srfi-13/srfi-13.html)  | String Library                                         | stdlib       | `:std/srfi/13`            |
| [SRFI 14](https://srfi.schemers.org/srfi-14/srfi-14.html)  | Character-Set Library                                  | stdlib       | `:std/srfi/14`            |
| [SRFI 16](https://srfi.schemers.org/srfi-16/srfi-16.html)  | Syntax for procedures of variable arity                | core prelude |                           |
| [SRFI 18](https://srfi.schemers.org/srfi-18/srfi-18.html)  | Multithreading support                                 | runtime      | `:gerbil/gambit/threads`  |
| [SRFI 19](https://srfi.schemers.org/srfi-19/srfi-19.html)  | Time Data Types and Procedures                         | stdlib       | `:std/srfi/19`            |
| [SRFI 21](https://srfi.schemers.org/srfi-21/srfi-21.html)  | Real-time multithreading support                       | runtime      | `:gerbil/gambit/threads`  |
| [SRFI 22](https://srfi.schemers.org/srfi-22/srfi-22.html)  | Running Scheme Scripts on Unix                         | runtime      |                           |
| [SRFI 23](https://srfi.schemers.org/srfi-23/srfi-23.html)  | Error reporting mechanism                              | runtime      |                           |
| [SRFI 26](https://srfi.schemers.org/srfi-26/srfi-26.html)  | Notation for Specializing Parameters without Currying  | core prelude |                           |
| [SRFI 27](https://srfi.schemers.org/srfi-27/srfi-27.html)  | Sources of Random Bits                                 | runtime      | `:gerbil/gambit/random`   |
| [SRFI 28](https://srfi.schemers.org/srfi-28/srfi-28.html)  | Basic Format Strings                                   | stdlib       | `:std/format`             |
| [SRFI 30](https://srfi.schemers.org/srfi-30/srfi-30.html)  | Nested Multi-line Comments                             | reader       |                           |
| [SRFI 31](https://srfi.schemers.org/srfi-31/srfi-31.html)  | A special form for recursive evaluation                | core prelude |                           |
| [SRFI 34](https://srfi.schemers.org/srfi-34/srfi-34.html)  | Exception Handling for Programs                        | runtime      |                           |
| [SRFI 38](https://srfi.schemers.org/srfi-38/srfi-38.html)  | External Representation for Data With Shared Structure | reader       |                           |
| [SRFI 39](https://srfi.schemers.org/srfi-39/srfi-39.html)  | Parameter objects                                      | runtime      |                           |
| [SRFI 41](https://srfi.schemers.org/srfi-41/srfi-41.html)  | Streams                                                | stdlib       | `:std/srfi/41`            |
| [SRFI 42](https://srfi.schemers.org/srfi-42/srfi-42.html)  | Eager Comprehensions                                   | stdlib       | `:std/srfi/42`            |
| [SRFI 43](https://srfi.schemers.org/srfi-43/srfi-43.html)  | Vector Library                                         | stdlib       | `:std/srfi/43`            |
| [SRFI 45](https://srfi.schemers.org/srfi-45/srfi-45.html)  | Primitives for Expressing Iterative Lazy Algorithms    | stdlib       | `:std/lazy`               |
| [SRFI 48](https://srfi.schemers.org/srfi-48/srfi-48.html)  | Intermediate Format Strings                            | stdlib       | `:std/format`             |
| [SRFI 60](https://srfi.schemers.org/srfi-60/srfi-60.html)  | Integers as Bits                                       | runtime      | `:gerbil/gambit/bits`     |
| [SRFI 62](https://srfi.schemers.org/srfi-62/srfi-62.html)  | S-expression comments                                  | reader       |                           |
| [SRFI 78](https://srfi.schemers.org/srfi-78/srfi-78.html)  | Lightweight testing                                    | stdlib       | `:std/srfi/78`            |
| [SRFI 87](https://srfi.schemers.org/srfi-87/srfi-87.html)  | => in case clauses                                     | core prelude |                           |
| [SRFI 88](https://srfi.schemers.org/srfi-88/srfi-88.html)  | Keyword Objects                                        | runtime      |                           |
| [SRFI 95](https://srfi.schemers.org/srfi-95/srfi-95.html)  | Sorting and Merging                                    | stdlib       | `:std/srfi/95`            |
| [SRFI 101](https://srfi.schemers.org/srfi-101/srfi-101.html) | Purely Functional Random-Access Pairs and Lists        | stdlib       | `:std/srfi/101`           |
| [SRFI 111](https://srfi.schemers.org/srfi-111/srfi-111.html) | Boxes                                                  | runtime      |                           |
| [SRFI 113](https://srfi.schemers.org/srfi-113/srfi-113.html) | Sets and bags                                          | stdlib       | `:std/srfi/113`           |
| [SRFI 115](https://srfi.schemers.org/srfi-115/srfi-115.html) | Scheme Regular Expressions                             | stdlib       | `:std/srfi/115`           |
| [SRFI 116](https://srfi.schemers.org/srfi-116/srfi-116.html) | Immutable List Library                                 | stdlib       | `:std/srfi/116`           |
| [SRFI 117](https://srfi.schemers.org/srfi-117/srfi-117.html) | Queues based on lists                                  | stdlib       | `:std/srfi/117`           |
| [SRFI 121](https://srfi.schemers.org/srfi-121/srfi-121.html) | Generators                                             | stdlib       | `:std/srfi/121`           |
| [SRFI 124](https://srfi.schemers.org/srfi-124/srfi-124.html) | Ephemerons                                             | stdlib       | `:std/srfi/124`           |
| [SRFI 125](https://srfi.schemers.org/srfi-125/srfi-125.html) | Intermediate hash tables                               | stdlib       | `:std/srfi/125`           |
| [SRFI 127](https://srfi.schemers.org/srfi-127/srfi-127.html) | Lazy Sequences                                         | stdlib       | `:std/srfi/127`           |
| [SRFI 128](https://srfi.schemers.org/srfi-128/srfi-128.html) | Comparators (reduced)                                  | stdlib       | `:std/srfi/128`           |
| [SRFI 130](https://srfi.schemers.org/srfi-130/srfi-130.html) | Cursor-based string library                            | stdlib       | `:std/srfi/130`           |
| [SRFI 132](https://srfi.schemers.org/srfi-132/srfi-132.html) | Sort Libraries                                         | stdlib       | `:std/srfi/132`           |
| [SRFI 133](https://srfi.schemers.org/srfi-133/srfi-133.html) | Vector Library (R7RS-compatible)                       | stdlib       | `:std/srfi/133`           |
| [SRFI 134](https://srfi.schemers.org/srfi-134/srfi-134.html) | Immutable Deques                                       | stdlib       | `:std/srfi/134`           |
| [SRFI 135](https://srfi.schemers.org/srfi-135/srfi-135.html) | Immutable Texts                                        | stdlib       | `:std/srfi/135`           |
| [SRFI 141](https://srfi.schemers.org/srfi-141/srfi-141.html) | Integer Division                                       | stdlib       | `:std/srfi/141`           |
| [SRFI 143](https://srfi.schemers.org/srfi-143/srfi-143.html) | Fixnums                                                | stdlib       | `:std/srfi/143`           |
| [SRFI 144](https://srfi.schemers.org/srfi-144/srfi-144.html) | Flonums                                                | stdlib       | `:std/srfi/144`           |
| [SRFI 145](https://srfi.schemers.org/srfi-145/srfi-145.html) | Assumptions                                            | stdlib       | `:std/srfi/145`           |
| [SRFI 146](https://srfi.schemers.org/srfi-146/srfi-146.html) | Mappings                                               | stdlib       | `:std/srfi/146{/hash}`    |
| [SRFI 151](https://srfi.schemers.org/srfi-151/srfi-151.html) | Bitwise Operations                                     | stdlib       | `:std/srfi/151`           |
| [SRFI 158](https://srfi.schemers.org/srfi-158/srfi-158.html) | Generators and Accumulators                            | stdlib       | `:std/srfi/158`           |
| [SRFI 159](https://srfi.schemers.org/srfi-159/srfi-159.html) | Combinator Formatting                                  | stdlib       | `:std/srfi/159`           |
| [SRFI 160](https://srfi.schemers.org/srfi-160/srfi-160.html) | Homogeneous Numeric Vector Libraries                   | stdlib       | `:std/srfi/160/{lib}` for `base`, `u8`, `s8`, `u16`, `s16`, `u32`, `s32`, `u64`, `s64`, `f32`, `f64`, `c64`, `c128` |
