# SRFI support in Gerbil

The following SRFIs are supported by gerbil:

| SRFI     | Title                                                  | support      | import                    |
|----------|--------------------------------------------------------|--------------|---------------------------|
| SRFI  O  | Feature-based conditional expansion construct          | core prelude |                           |
| SRFI  1  | List Library                                           | stdlib       | `:std/srfi/1`             |
| SRFI  2  | AND-LET*                                               | core prelude |                           |
| SRFI  4  | Homogeneous numeric vector datatypes                   | runtime      | `:gerbil/gambit/hvectors` |
| SRFI  6  | Basic String Ports                                     | runtime      | `:gerbil/gambit/ports`    |
| SRFI  8  | receive                                                | stdlib       | `:std/srfi/8`             |
| SRFI  9  | Defining Record Types                                  | stdlib       | `:std/srfi/9`             |
| SRFI 13  | String Library                                         | stdlib       | `:std/srfi/13`            |
| SRFI 14  | Character-Set Library                                  | stdlib       | `:std/srfi/14`            |
| SRFI 16  | Syntax for procedures of variable arity                | core prelude |                           |
| SRFI 18  | Multithreading support                                 | runtime      | `:gerbil/gambit/threads`  |
| SRFI 19  | Time Data Types and Procedures                         | stdlib       | `:std/srfi/19`            |
| SRFI 21  | Real-time multithreading support                       | runtime      | `:gerbil/gambit/threads`  |
| SRFI 22  | Running Scheme Scripts on Unix                         | runtime      |                           |
| SRFI 23  | Error reporting mechanism                              | runtime      |                           |
| SRFI 26  | Notation for Specializing Parameters without Currying  | core prelude |                           |
| SRFI 27  | Sources of Random Bits                                 | runtime      | `:gerbil/gambit/random`   |
| SRFI 28  | Basic Format Strings                                   | stdlib       | `:std/format`             |
| SRFI 30  | Nested Multi-line Comments                             | reader       |                           |
| SRFI 31  | A special form for recursive evaluation                | core prelude |                           |
| SRFI 34  | Exception Handling for Programs                        | runtime      |                           |
| SRFI 38  | External Representation for Data With Shared Structure | reader       |                           |
| SRFI 39  | Parameter objects                                      | runtime      |                           |
| SRFI 41  | Streams                                                | stdlib       | `:std/srfi/41`            |
| SRFI 42  | Eager Comprehensions                                   | stdlib       | `:std/srfi/42`            |
| SRFI 43  | Vector Library                                         | stdlib       | `:std/srfi/43`            |
| SRFI 45  | Primitives for Expressing Iterative Lazy Algorithms    | stdlib       | `:std/lazy`               |
| SRFI 48  | Intermediate Format Strings                            | stdlib       | `:std/format`             |
| SRFI 60  | Integers as Bits                                       | runtime      | `:gerbil/gambit/bits`     |
| SRFI 62  | S-expression comments                                  | reader       |                           |
| SRFI 78  | Lightweight testing                                    | stdlib       | `:std/srfi/78`            |
| SRFI 87  | => in case clauses                                     | core prelude |                           |
| SRFI 88  | Keyword Objects                                        | runtime      |                           |
| SRFI 95  | Sorting and Merging                                    | stdlib       | `:std/srfi/95`            |
| SRFI 101 | Purely Functional Random-Access Pairs and Lists        | stdlib       | `:std/srfi/101`           |
| SRFI 111 | Boxes                                                  | runtime      |                           |
| SRFI 113 | Sets and bags                                          | stdlib       | `:std/srfi/113`           |
| SRFI 116 | Immutable List Library                                 | stdlib       | `:std/srfi/116`           |
| SRFI 117 | Queues based on lists                                  | stdlib       | `:std/srfi/117`           |
| SRFI 121 | Generators                                             | stdlib       | `:std/srfi/121`           |
| SRFI 125 | Intermediate hash tables                               | stdlib       | `:std/srfi/125`           |
| SRFI 127 | Lazy Sequences                                         | stdlib       | `:std/srfi/127`           |
| SRFI 128 | Comparators (reduced)                                  | stdlib       | `:std/srfi/128`           |
| SRFI 132 | Sort Libraries                                         | stdlib       | `:std/srfi/132`           |
| SRFI 133 | Vector Library (R7RS-compatible)                       | stdlib       | `:std/srfi/133`           |
| SRFI 134 | Immutable Deques                                       | stdlib       | `:std/srfi/134`           |
| SRFI 135 | Immutable Texts                                        | stdlib       | `:std/srfi/135`           |
