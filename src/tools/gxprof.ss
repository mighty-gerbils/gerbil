;;; -*- Gerbil -*-
;;; © vyzo
;;; Rudimentary gerbil profiler
;;; Invocation: gxprof exe-module-path arg ...
;;; Imports module exe-module and executes main with arguments arg ...
;;; Output: gxprof.out in current directory on main function return
;;;         contains  continuation backtraces from thread heartbeat interrupt
;;;         as a list [[procedure-name ....] ...]

(import :gerbil/expander
        :std/sugar
        :std/getopt
        :std/format
        :std/sort)
(export main)

(def (main . args)
  (call-with-getopt gxprof-main args
    program: "gxprof"
    help: "The Gerbil profiler"
    (option 'output "-o" "--output"
      help: "gxprof output file"
      default: "gxprof.out")
    (option 'heartbeat "--heartbeat"
      help: "heartbeat interval for sampling, in seconds"
      value: string->number
      default: .001)
    (flag 'ignore-kernel-frames "-k" "--ignore-kernel-frames"
      help: "ignore kernel functions in the analysis")
    (optional-argument 'module
      help: "dynamic executable module to run; analyze an existing output file if omitted")
    (rest-arguments 'module-args
      help: "arguments to pass to the executable module's main")))

(def (gxprof-main opt)
  (let-hash opt
    (if .?module
      (let* ((ctx (import-module (module-path .module) #f #t))
             (main-id (find-runtime-symbol ctx 'main))
             (main-fn (eval main-id)))
        (profile main-fn .module-args .heartbeat .output))
      (analyze .output .?ignore-kernel-frames))))

(def (module-path str)
  (if (and (> (string-length str) 0)
           (eq? (string-ref str 0) #\:))
    (string->symbol str)
    str))

(def (find-export-binding ctx id)
  (cond
   ((find (match <>
            ((module-export _ _ 0 (eq? id)) #t)
            (else #f))
          (module-context-export ctx))
    => core-resolve-module-export)
   (else #f)))

(def (find-runtime-symbol ctx id)
  (cond
   ((find-export-binding ctx id)
    => (lambda (bind)
         (unless (runtime-binding? bind)
           (error "export is not a runtime binding" id))
         (binding-id bind)))
   (else
    (error "module does not export symbol" (expander-context-id ctx) id))))

(def (profile fun args heartbeat output)
  (try
   (dynamic-wind
       (cut profile-start! heartbeat)
       (cut apply fun args)
       profile-end!)
     (finally
      (call-with-output-file output (cut write-samples samples <>)))))

(def samples [])

(def (profile-start! heartbeat)
  (##set-heartbeat-interval! heartbeat)
  (##interrupt-vector-set! 2 profile-heartbeat!))

(def (profile-end!)
  (##set-heartbeat-interval! (exact->inexact 1/100))
  (##interrupt-vector-set! 2 ##thread-heartbeat!))

(def (profile-heartbeat!)
  (##continuation-capture
   (lambda (cont)
     (set! samples (cons (continuation->sample cont) samples))
     (##thread-heartbeat!))))

(def (continuation->sample cont)
  (let lp ((cont (##continuation-next-frame cont #t)) (bt []))
    (if cont
      (let (trace (##continuation-creator cont))
        (lp (##continuation-next-frame cont #t)
            (cons trace bt)))
      (reverse bt))))

(def (write-samples samples port)
  (def traces (make-hash-table-eq))

  (def (trace->name trace)
    (cond
     ((hash-get traces trace) => values)
     (else
      (let (name (##procedure-name trace))
        (hash-put! traces trace name)
        name))))

  (let (samples/names
        (map (lambda (bt) (map trace->name bt))
             samples))
    (write samples/names port)))

(def (analyze file ignore-kernel-frames?)
  (displayln "... analyzing " file)
  (analyze-samples (call-with-input-file file read) ignore-kernel-frames?))

(def (analyze-samples samples ignore-kernel-frames?)
  (def sample-count
    (length samples))
  (def (pct cont-samples)
    (format "~3,3f"
            (* 100 (exact->inexact (/ cont-samples sample-count)))))
  (def (display-aggregate agg)
    (for-each
      (match <>
        ([cont . cont-samples]
         (displayln cont ": " cont-samples " [" (pct cont-samples) "%]")))
      agg))

  (let (top (count-top samples ignore-kernel-frames?))
    (displayln "Top Continuation Samples")
    (displayln "------------------------")
    (display-aggregate top))

  (let (callgraph (aggregate-callgraph samples ignore-kernel-frames?))
    (displayln)
    (displayln "Call Graph Samples")
    (displayln "------------------")
    (display-aggregate callgraph)))

(def (analyze-update-samples! ht cont ignore-kernel-frames?)
  (def (kernel-frame? cont)
    (memq cont
          '(##interp-procedure-wrapper
            ##dynamic-wind
            ##dynamic-env-bind
            ##kernel-handlers
            ##load-vm
            ##repl-debug
            ##repl-debug-main
            ##repl-within
            ##eval-within
            ##with-no-result-expected
            ##with-no-result-expected-toplevel
            ##check-heap
            ##nontail-call-for-leap
            ##nontail-call-for-step
            ##trace-generate
            ##thread-check-interrupts!
            ##thread-interrupt!
            ##thread-execute-and-end!
            ##thread-resume-execution!
            ##thread-sleep!
            ##thread-call)))
  (unless (and ignore-kernel-frames? (kernel-frame? cont))
    (hash-update! ht cont fx1+ 0)))

(def (analyze-sort-samples! lst)
  (sort! lst (lambda (a b) (> (cdr a) (cdr b)))))

(def (count-top samples ignore-kernel-frames?)
  (def ht (make-hash-table-eq))
  (let lp ((rest samples))
    (match rest
      ([[fun . _] . rest]
       (analyze-update-samples! ht fun ignore-kernel-frames?)
       (lp rest))
      (else
       (analyze-sort-samples! (hash->list ht))))))

(def (aggregate-callgraph samples ignore-kernel-frames?)
  (def ht (make-hash-table-eq))
  (let lp ((rest samples))
    (match rest
      ([hd . rest]
       (for-each (cut analyze-update-samples! ht <> ignore-kernel-frames?) hd)
       (lp rest))
      (else
       (analyze-sort-samples! (hash->list ht))))))
