# Debugging Libraries

These are miscallenous libraries useful for debugging running programs.

## Heap debugging utilities
::: tip To use bindings from this module
(import :std/debug/heap)
:::

### memory-usage
```
(memory-usage)
```

Aggregates useful memory statistics.

Example:
```
> (memory-usage)
((gc-heap-size . 31101000)
 (gc-alloc . 35786424)
 (gc-live . 12172776)
 (gc-movable . 11480480)
 (gc-still . 692296))

```

### heap-type-stats
```
(heap-type-stats) -> (values live-objects type-table)
```

Returns two values, the number of live objects and a table containing
a count for each type of live object.

### dump-heap-stats!
```
(dump-heap-stats! (port (current-error-port)))
```

Dumps the current live heap statistics to `port`.

Example:
```
> (dump-heap-stats!)
=== memory usage ===
gc-heap-size: 31118680
gc-alloc: 72143824
gc-live: 12403320
gc-movable: 11693344
gc-still: 709976
=== heap summary ===
objects: 185028
still: 73
refcounted: 1
=== heap type counts ===
pair 59812
gx#import-binding::t 26592
gx#module-import::t 23607
string 17595
symbol 16772
gx#syntax-quote::t 11961
gx#module-export::t 7968
procedure 7476
vector 6542
gx#module-binding::t 2065
gx#extern-binding::t 1551
gx#syntax-binding::t 523
gx#macro-expander::t 357
bignum 311
##type-6-F3F63A41-2974-4D41-8B24-1744E866741D 251
weak 226
##type-5 166
keyword 164
gx#import-set::t 126
foreign 111
promise 103
gx#export-set::t 81
gx#context-phi::t 62
gx#module-context::t 58
gx#private-feature-expander::t 58
gerbil.core#runtime-struct-exhibitor::t 49
gerbil.core#extended-stuct-info::t 49
std/generic/macros#primitive-type-info::t 36
gerbil.core#extended-class-info::t 27
gerbil.core#runtime-class-exhibitor::t 27
std/generic/macros#builtin-type-info::t 21
gx#expander-mark::t 21
##type-11-42fe9aac-e9c6-4227-893e-a0ad76f58932 19
gx#alias-binding::t 19
gx#rename-macro-expander::t 18
box 18
gx#expression-form::t 15
gerbil/runtime/eval#__core-special-form::t 13
gerbil/runtime/eval#__core-expression::t 12
gerbil.core#runtime-class-info::t 10
gx#core-macro::t 10
u8vector 9
gx#reserved-expander::t 8
gerbil#AST::t 8
gx#top-special-form::t 8
gx#feature-expander::t 7
u16vector 6
##type-11-6bd864f0-27ec-4639-8044-cf7c0135d716 6
gx#export-expander::t 5
gx#import-expander::t 5
##type-49-a1d146d0-78f6-437f-aa67-3b9b5bb333dc 4
s32vector 4
f64vector 4
gx#definition-form::t 4
##type-41-B1E5C9EE-B4F9-4D3C-AACD-FE12D696101F 4
gerbil/runtime/eval#__core-form::t 4
gx#prelude-context::t 3
frame 2
##type-2-EACE4200-EB43-4891-852A-03C7B5D385E4 2
gx#import-export-expander::t 2
gx#module-special-form::t 2
unknown 2
gx#top-binding::t 2
continuation 2
gx#special-form::t 2
##type-7-cd5f5bad-f96f-438d-8d63-ff887b7b39de 2
##type-15-713f0ba8-1d76-4a68-8dfa-eaebd4aef1e3 2
gerbil/runtime/eval#__context::t 2
std/generic/dispatch#generic-table::t 1
std/generic/dispatch#generic::t 1
std/generic/macros#generic-info::t 1
##type-34-d05e0aa7-e235-441d-aa41-c1ac02065460 1
flonum 1
std/interface#interface-info::t 1
std/interface#interface-descriptor::t 1
gx#top-context::t 1
##type-8-1b002758-f900-4e96-be5e-fa407e331fc0 1
tmp/benchmark/interface/interface-lib#Operation::t 1
std/iter#:iter-end::t 1
tmp/benchmark/interface/interface-lib#LinearAccumulator::t 1
gx#root-context::t 1
##type-21-A6899D11-290C-42A6-B47A-57C6B908698F 1
##type-17-D7D5784C-16DC-4453-8832-CC05A6FE9353 1
```

### walk-heap!
```
(walk-heap! walk: (walk #f) root: (root #f)) -> hash-table
```

Walks the heap, optionally starting from the specified `root` object
and optionally using `walk` as the function for walking container objects.

Returns a table of all visited objects.

### count-still
```
(count-still) -> (values still refcounted)
```

Returns two values: the number of still objects and how many of them are
reference counted in the heap.

### still-objects
```
(still-objects ...)
```

Counts the still objects in the heap.

### still-objects/refcount
```
(still-objects/refcount ...)
```

Counts the reference counted objects in the heap.


## Memory leak debugging utilities
::: tip To use bindings from this module
(import :std/debug/memleak)
:::

### heap-summary
```
(heap-summary)
```

Returns a differentiable heap summary.

### heap-summary-delta
```
(heap-summary-delta old new)
```

Differentiates two heap summaries.

### dump-heap-summary!
```
(dump-heap-summary! summary (port (current-error-port)))
```

Dumps a heap summary to `port`.

Example:
```
> (dump-heap-summary! (heap-summary))
==================================
timestamp: 1696260626.4030066
=== memory usage ===
gc-heap-size: 32177600
gc-live: 12572848
gc-movable: 11852528
gc-still: 720320
=== heap summary ===
objects: 187230
still: 74
refcounted: 1
=== heap type counts ===
pair: 60419
gx#import-binding::t: 27122
gx#module-import::t: 24133
string: 17807
symbol: 16977
gx#syntax-quote::t: 12013
gx#module-export::t: 7972
procedure: 7490
vector: 6567
gx#module-binding::t: 2078
gx#extern-binding::t: 1551
gx#syntax-binding::t: 524
gx#macro-expander::t: 357
bignum: 311
##type-6-F3F63A41-2974-4D41-8B24-1744E866741D: 252
weak: 227
keyword: 167
##type-5: 166
gx#import-set::t: 129
foreign: 112
promise: 104
gx#export-set::t: 81
gx#context-phi::t: 62
gx#module-context::t: 59
gx#private-feature-expander::t: 59
gerbil.core#runtime-struct-exhibitor::t: 49
gerbil.core#extended-stuct-info::t: 49
std/generic/macros#primitive-type-info::t: 36
gerbil.core#extended-class-info::t: 27
gerbil.core#runtime-class-exhibitor::t: 27
std/generic/macros#builtin-type-info::t: 21
gx#expander-mark::t: 21
##type-11-42fe9aac-e9c6-4227-893e-a0ad76f58932: 19
gx#alias-binding::t: 19
gx#rename-macro-expander::t: 18
box: 18
gx#expression-form::t: 15
gerbil/runtime/eval#__core-special-form::t: 13
gerbil/runtime/eval#__core-expression::t: 12
gerbil.core#runtime-class-info::t: 10
gx#core-macro::t: 10
u8vector: 9
gerbil#AST::t: 9
gx#reserved-expander::t: 8
gx#top-special-form::t: 8
gx#feature-expander::t: 7
u16vector: 6
##type-11-6bd864f0-27ec-4639-8044-cf7c0135d716: 6
gx#export-expander::t: 5
gx#import-expander::t: 5
##type-49-a1d146d0-78f6-437f-aa67-3b9b5bb333dc: 4
s32vector: 4
f64vector: 4
gx#definition-form::t: 4
##type-41-B1E5C9EE-B4F9-4D3C-AACD-FE12D696101F: 4
gerbil/runtime/eval#__core-form::t: 4
gx#prelude-context::t: 3
frame: 2
##type-2-EACE4200-EB43-4891-852A-03C7B5D385E4: 2
gx#import-export-expander::t: 2
gx#module-special-form::t: 2
unknown: 2
gx#top-binding::t: 2
continuation: 2
gx#special-form::t: 2
##type-7-cd5f5bad-f96f-438d-8d63-ff887b7b39de: 2
##type-15-713f0ba8-1d76-4a68-8dfa-eaebd4aef1e3: 2
gerbil/runtime/eval#__context::t: 2
std/generic/dispatch#generic::t: 1
std/generic/dispatch#generic-table::t: 1
std/generic/macros#generic-info::t: 1
##type-34-d05e0aa7-e235-441d-aa41-c1ac02065460: 1
flonum: 1
std/interface#interface-descriptor::t: 1
std/interface#interface-info::t: 1
gx#top-context::t: 1
##type-8-1b002758-f900-4e96-be5e-fa407e331fc0: 1
tmp/benchmark/interface/interface-lib#Operation::t: 1
std/iter#:iter-end::t: 1
tmp/benchmark/interface/interface-lib#LinearAccumulator::t: 1
gx#root-context::t: 1
##type-21-A6899D11-290C-42A6-B47A-57C6B908698F: 1
##type-17-D7D5784C-16DC-4453-8832-CC05A6FE9353: 1
=== frame counts ===
##with-no-result-expected-toplevel: 1
##kernel-handlers: 1
==================================
```

### watch-heap!
```
(watch-heap! (port (current-error-port))
              delay: (initial-delay 60)
              period: (period (* 60 15))
              dump: (dump! dump-heap-summary!))
```

Watches the heap and dumps differential heap summaries with `period`,
after `initial-delay`.


## Thread debugging utilities
::: tip To use bindings from this module
(import :std/debug/threads)
:::

### dump-all-threads!
```
(dump-all-threads! (port (current-error-port))
                   (filter true))
```

Dumps the state of all threads that satisfy the `filter` procedure.


### dump-all-threads/queue!
```
(dump-all-threads/queue! (port (current-error-port)))
```

Dumps all threads with a non empty message queue (mailbox).


### dump-thread-group!
```
(dump-thread-group! (tg (current-thread-group))
                    (port (current-error-port))
                    (filter true))
```

Dumps all threads in the specified thread group `tg`, that satisfy
the filter `filter`.


### dump-thread-group!*
```
(dump-thread-group!* (tg (current-thread-group))
                          (port (current-error-port))
                          (filter true))
```

Like `dump-thread-group!`, but also recursively dumps all child thread groups.

### dump-thread!
```
(dump-thread! thread (port (current-error-port)))
```

Dumps the state of a thread, including the size of its message queue
and stack trace.

### dump-thread-stack-trace!
```
(dump-thread-stack-trace! thread (port (current-error-port)))
```

Dumps a thread's stack trace.

### thread-queue-length
```
(thread-queue-length thread)
```

Returns the current length of a thread's message queue.

### thread-queue-empty?
```
(thread-queue-empty? thread)
```

Returns true if the `thread`'s message queue is empty.
