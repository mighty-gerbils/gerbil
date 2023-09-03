;;; -*- Gerbil -*-
;;; © vyzo
;;; Rudimentary gerbil profiler
;;; Invocation: gxprof exe-module-path arg ...
;;; Imports module exe-module and executes main with arguments arg ...
;;; Output: gxprof.out in current directory on main function return
;;;         contains  continuation backtraces from thread heartbeat interrupt
;;;         as a list [[procedure-name ....] ...]

(import :gerbil/expander
        :std/sugar)
(export main)

(def (main . args)
  (match args
    ([mod . args]
     (let* ((ctx (import-module (module-path mod) #f #t))
            (main-id (find-runtime-symbol ctx 'main))
            (main-fn (eval main-id)))
       (profile main-fn args)))
    (else
     (displayln "Usage: gxprof exe-module-path arg ..."))))

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

(def (profile fun args)
  (try
   (dynamic-wind
       profile-start!
       (cut apply fun args)
       profile-end!)
   (finally
    (call-with-output-file "gxprof.out" (cut write-samples samples <>)))))

(def samples [])

(def (profile-start!)
  (##set-heartbeat-interval! (exact->inexact 1/1000))
  (##interrupt-vector-set! 2 profile-heartbeat!))

(def (profile-end!)
  (##set-heartbeat-interval! (exact->inexact 1/100))
  (##interrupt-vector-set! 2 ##thread-heartbeat!))

(def (profile-heartbeat!)
  (##continuation-capture
   (lambda (cont)
     (##thread-heartbeat!)
     (set! samples (cons (continuation->sample cont) samples)))))

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
