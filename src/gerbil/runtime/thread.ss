;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil thread primitives
prelude: :gerbil/core
package: gerbil/runtime
namespace: #f

(import "gambit" "util" "error")
(export #t)

;; spawn an actor thread apply f to args
(def (spawn f . args)
  (check-procedure f spawn)
  (spawn-actor f args '#!void #f))

;; spawn a named actor thread
(def (spawn/name name f . args)
  (check-procedure f spawn/name)
  (spawn-actor f args name #f))

;; spawn a named actor thread with a new thread group
(def (spawn/group name f . args)
  (check-procedure f spawn/group)
  (let (tgroup (make-thread-group name))
    (spawn-actor f args name tgroup)))

(def (spawn-actor f args name tgroup)
  (def (thread-main thunk)
    ;; install an abortive handler to force stack unwinding
    ;; this ensures that unwind-protect finalizers are invoked if
    ;; the actor exits with an unhandled exception.
    ;; debugging: when the unhandled-actor-exception-hook is set, then
    ;; it is invoked with the continuation and exception before unwinding
    ;; the stack.
    ;; in particular, set the hook to dump-stack-trace! to dump the
    ;; continuation backtrace together with the exception to ##stderr-port
    (lambda ()
      (with-exception-handler
       (lambda (exn)
         (##continuation-capture
          (lambda (cont)
            (when __unhandled-actor-exception-hook
              (with-catch void (cut __unhandled-actor-exception-hook cont exn)))
            ;; unwind stack and continue with the primordial exception handler
            ;; see discussion in gambit#295 about ##continuation-last
            (##continuation-graft
             (##continuation-last cont)
             ##primordial-exception-handler
             exn))))
       thunk)))

  (let* ((thunk (if (null? args) f (cut apply f args)))
         (thunk (cut with-exception-stack-trace thunk))
         (tgroup (or tgroup (current-thread-group))))
    (thread-start!
     (thread-init!
      (construct-actor-thread #f 0)
      (thread-main thunk) name tgroup))))

(def (spawn-thread thunk (name absent-obj) (tgroup absent-obj))
  (thread-start!
   (make-thread thunk name tgroup)))

;;; thread locals
(def (thread-local-ref key (default absent-obj))
  (let (tab (thread-local-table))
    (hash-ref tab key default)))

(def (thread-local-get key)
  (thread-local-ref key #f))

(def (thread-local-set! key value)
  (let (tab (thread-local-table))
    (hash-put! tab key value)))

(def (thread-local-clear! key)
  (let (tab (thread-local-table))
    (hash-remove! tab key)))

(def (thread-local-table)
  (let (thr (current-thread))
    (cond
     ((actor-thread? thr)
      (cond
       ((actor-thread-locals thr) => values)
       (else
        (let (tab (make-hash-table-eq))
          (actor-thread-locals-set! thr tab)
          tab))))
     ((eq? thr ##primordial-thread)
      __primordial-thread-locals)
     (else
      (mutex-lock! __thread-locals-mutex)
      (cond
       ((hash-get __thread-locals thr)
        => (lambda (tab)
             (mutex-unlock! __thread-locals-mutex)
             tab))
       (else
        (let (tab (make-hash-table-eq))
          (hash-put! __thread-locals thr tab)
          (mutex-unlock! __thread-locals-mutex)
          tab)))))))

(def __primordial-thread-locals
  (make-hash-table-eq))
(def __thread-locals
  (make-hash-table-eq weak-keys: #t))
(def __thread-locals-mutex
  (make-mutex 'thread-locals))

;;; actor debug hooks
(def __unhandled-actor-exception-hook #f)
(def (unhandled-actor-exception-hook-set! proc)
  (unless (procedure? proc)
    (raise (Error "Bad argument; expected procedure or #f"
                  where: 'unhandler-actor-exception-hook-set!
                  irritants: [proc])))
  (set! __unhandled-actor-exception-hook proc))

;;; utitilities
(def (current-thread-group)
  (thread-thread-group (current-thread)))

(def (with-lock mx proc)
  (let (handler (current-exception-handler))
    (with-exception-handler
     (lambda (e)
       (with-catch void
         (lambda ()
           (mutex-unlock! mx)
           (handler e)))
       ;; if the handler returns here the state is inconsistent -- we need to bail
       (##thread-end-with-uncaught-exception! e))
     (lambda ()
       (mutex-lock! mx)
       (let (result (proc))
         (mutex-unlock! mx)
         result)))))

(def (with-dynamic-lock mx proc)
  (dynamic-wind
      (cut mutex-lock! mx)
      proc
      (cut mutex-unlock! mx)))

;; utilities for exception printing
(def (with-exception-stack-trace thunk (error-port (current-error-port)))
  (with-exception-handler
   (let (E (current-exception-handler))
     (lambda (exn)
       (continuation-capture
        (lambda (cont)
          (when (dump-stack-trace?)
            (dump-stack-trace! cont exn error-port))
          (E exn)))))
   thunk))

(def (dump-stack-trace! cont exn (error-port (current-error-port)))
  (let ((out (open-output-string)))
    (fix-port-width! out)
    (display "*** Unhandled exception in " out)
    (display (current-thread) out)
    (newline out)
    (display-exception exn out)

    ;; only do that if there no stack trace in the exception already
    (unless (StackTrace? exn)
      (display "Continuation backtrace: " out)
      (newline out)
      (display-continuation-backtrace cont out))
    (##write-string (get-output-string out) error-port)))

;; actor thread type
(extern
  actor-thread? construct-actor-thread
  actor-thread-locals actor-thread-locals-set!
  actor-thread-nonce actor-thread-nonce-set!)
(begin-foreign
  (define-type-of-thread actor-thread
    constructor: construct-actor-thread
    id: gerbil#actor::t
    locals
    nonce))
