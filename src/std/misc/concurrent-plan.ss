(export #t)

(import
  :gerbil/gambit/ports :gerbil/gambit/threads
  ../srfi/13 ../sugar
  ./ports ./pqueue
  ;;(for-syntax ../stxutil) ../stxutil
  )

(def (get-ncpu)
  (cond-expand
    (linux
     (length (filter (cut string-prefix? "processor\t:" <>) (read-file-lines "/proc/cpuinfo"))))
    (bsd ;; reported to work on darwin freebsd netbsd openbsd.
     (string->number (call-with-input-process [path: "sysctl" arguments: ["-n" "hw.ncpu"]] read-line)))
    (windows
     (alet (s (getenv "NUMBER_OF_PROCESSORS" #f)) (string->number s)))
    (else #f)))

(def max-actual-workers (make-parameter 0))

;; Perform a build plan concurrently
(def (perform-plan/threads
      fg-queue bg-queue
      perform: perform
      announce: announce on-success: on-success on-failure: on-failure
      deterministic-order: deterministic-order max-workers: (max-workers (get-ncpu)))
  (defrule (postprocess item form) (with-catch (cut on-failure item <>) (lambda () (on-success item form))))
  (def foreground-thread (current-thread))
  (def (fg-perform item) (announce item) (postprocess item (perform item)))
  (def workers 0) ;; number of currently active workers
  (let loop ()
    (def no-fg-item? (pqueue-empty? fg-queue))
    (def fg-item? (not no-fg-item?)) ;; are there foreground jobs waiting in the queue?
    (def no-bg-item? (pqueue-empty? bg-queue))
    (def bg-item? (not no-bg-item?)) ;; are there background jobs waiting in the queue?
    (def no-workers? (zero? workers))
    (def workers? (not no-workers?)) ;; are there workers currently running jobs?
    (def no-worker-slots? (>= workers max-workers))
    (def worker-slots? (not no-worker-slots?)) ;; is there space for more background workers?
    (def ready-to-spawn? (and bg-item? worker-slots?)) ;; are we ready to spawn a new process?
    (def wait? (and (not ready-to-spawn?) ;; reason to wait: nothing to spawn, and
                    (or no-fg-item? ;; nothing to do in foreground
                        deterministic-order))) ;; or it's blocked waiting for current batch
    (cond
     (;; If there are workers running, listen to them; wait if there's nothing better to do.
      (and workers? (thread-receive (if wait? #f 0) #f))
      => (match <>
           ([worker item] ;; Some background process reports termination
            (set! workers (- workers 1))
            (postprocess item (thread-join! worker))
            (loop))
           (m (error "unexpected message" m))))
     (;; Can run stuff in the background? Keep those CPUs busy!
      ready-to-spawn?
      (let ((item (pqueue-pop! bg-queue #f)))
        (announce item)
        (set! workers (+ workers 1))
        (spawn/name
         [worker: item]
         (lambda () (try (perform item)
                    (finally (thread-send foreground-thread [(current-thread) item])))))
        (when (< (max-actual-workers) workers) ;; measure actual level of parallelism reached
          (max-actual-workers workers)))
      (loop))
     (;; Foreground actions in non-deterministic mode? Opportunistically run one
      (and fg-item? (not deterministic-order))
      (fg-perform (pqueue-pop! fg-queue #f))
      (loop))
     (;; Foreground actions in deterministic mode after exhausting background actions?
      ;; run them all in priority order
      (and fg-item? deterministic-order no-workers? no-bg-item?)
      (until (pqueue-empty? fg-queue)
        (fg-perform (pqueue-pop! fg-queue #f)))
      (loop))
     (else ;; Nothing to do or wait for anymore? done!
      (assert! (and no-fg-item? no-bg-item? no-workers?))
      (void)))))
