# The Gerbil Profiler

Gerbil ships with a basic profiler tool, gxprof. The tool can profile dynamically compiled executable modules, by running them with an interrupt handler that samples the current continuation on every scheduler heartbeat.

To invoke:
```bash
gxprof :your/module arg ...
```

This will run the main function in `:your/module` with the given arguments. The function is run to completion, at which point the profiler writes the captured continuation samples in gxprof.out in the current directory.

The contents of the file is a list of lists that contain the names of the continuation creator for each frame in the captured continuations. You can process the samples to extract detailed profiling statistics.

Here is a simple example that aggregates the top frames and sorts them by sample count:

```
(import :std/sort)
(def (count-top samples)
  (def ht (make-hash-table-eq))
  (let lp ((rest samples))
    (match rest
      ([[fun . _] . rest]
       (hash-update! ht fun fx1+ 0)
       (lp rest))
      (else
       (let (cs (hash->list ht))
         (sort! cs (lambda (a b) (> (cdr a) (cdr b)))))))))

(def samples (call-with-input-file "gxprof.out" read))

> (length samples)
...
> (count-top samples)
...
```