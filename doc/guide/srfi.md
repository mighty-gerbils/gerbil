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
| SRFI 111 | Boxes                                                  | runtime      |                           |
