(export #t)

(import :gerbil/gambit/threads
        :std/sugar
        :std/assert
        :std/error
        ./pqueue)

;; This parameter is purely for checking whether indeed concurrency was used.
;; A more useful statistics would measure the total CPU time burned,
;; compared to the wall-clock time elapsed, and/or (for small enough runs)
;; total time with or without parallelism. But that's more work.
(def max-actual-workers (make-parameter 0))

;; Perform a build plan concurrently
;; Parameters:
;; - fg-queue: a pqueue that contains jobs that are ready, but must be run in the foreground
;;   in the current process (before its side-effects are what's desired, or because it uses
;;   some resource requiring mutual exclusion of other job workers).
;; - bg-queue: a pqueue that contains jobs that are ready, and may be run in the background
;;   in a separate process (we'll spawn a green thread to monitor said separate process).
;; - perform: a function that will be called on each element of either queue
;;   TODO: should we instead have two separate functions fg-perform and bg-perform?
;; - announce: a function called in the foreground thread that will announce that the job is issued
;;   TODO: should there be a separate one for foreground and background tasks? Or a flag argument?
;; - on-success: a function of two arguments (item, result) that will be called after performing
;;   an item with success. The function will take the item and the result as parameter, and do
;;   whatever needs to be done, including scheduling onto the fg-queue and bg-queue any new items
;;   that need to be processed.
;; - on-failure: a function of two arguments (item, exception) that will be called after performing
;;   an item with failure. The function will take the item and the result as parameter, and do
;;   whatever needs to be done, including reproducing the error in a debuggable foreground context,
;;   or attaching a debugging window or REPL to a separate process, etc.
;; - deterministic-order: if true, forces the plan to be performed in a deterministic order.
;;   TODO: execute the plan virtually first (and/or record a previous run without the constraint),
;;   and schedule the jobs so the starting events are in the same order, temporarily blocking
;;   any foreground job that was unblocked before "the" official foreground job was ready.
;;   This only really matters if you care to ensure the in-image foreground side-effects
;;   are deterministic, admittedly not as much of an issue in the module-scoped Gerbil Scheme
;;   as it was in the more global-scoped Common Lisp.
;; - max-workers: a number no less than 1, the maximum number of workers allowed.
;;   TODO: support limits based on system load, but then be sensitive to system load.
(def (perform-plan/threads
      fg-queue bg-queue
      perform: perform
      announce: announce on-success: on-success on-failure: on-failure
      deterministic-order: deterministic-order max-workers: (max-workers (max (##cpu-count) 1)))
  (defrule (postprocess item form) (with-catch (cut on-failure item <>) (lambda () (on-success item form))))
  (def foreground-thread (current-thread))
  (def (fg-perform item) (announce item) (postprocess item (perform item)))
  (def serial? (< max-workers 2)) (def parallel? (not serial?))
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
      (and parallel? workers? (thread-receive (if wait? #f 0) #f))
      => (match <>
           ([worker item] ;; Some background process reports termination
            (set! workers (- workers 1))
            (postprocess item (worker-join! worker))
            (loop))
           (m (BUG 'perform-plan/threads "unexpected message" m))))
     (;; Can run stuff in the background? Keep those CPUs busy!
      (and parallel? ready-to-spawn?)
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
     (;; Background actions in serial mode
      (and serial? bg-item?)
      (fg-perform (pqueue-pop! bg-queue #f))
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

(def (worker-join! thread)
  (try
   (thread-join! thread)
   (catch (uncaught-exception? exn)
     (raise (WorkerError exception: exn)))))

(defclass (WorkerError Exception) (exception)
  final: #t)

(defmethod {display-exception WorkerError}
  (lambda (self port)
    (let (e (WorkerError-exception self))
      (display "Uncaught exception: " port)
      (display-exception (uncaught-exception-reason e) port))))
