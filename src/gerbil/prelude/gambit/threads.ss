;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; thread primitives and gambit runtime symbols
package: gerbil/gambit

(export #t)
(extern namespace: #f
  current-thread
  thread?
  make-thread
  make-root-thread
  thread-name
  thread-specific
  thread-specific-set!
  thread-base-priority
  thread-base-priority-set!
  thread-priority-boost
  thread-priority-boost-set!
  thread-quantum
  thread-quantum-set!
  thread-start!
  thread-yield!
  thread-sleep!
  thread-terminate!
  thread-join!
  thread-send
  thread-receive
  thread-mailbox-next
  thread-mailbox-rewind
  thread-mailbox-extract-and-rewind
  mutex?
  make-mutex
  mutex-name
  mutex-specific
  mutex-specific-set!
  mutex-state
  mutex-lock!
  mutex-unlock!
  condition-variable?
  make-condition-variable
  condition-variable-name
  condition-variable-specific
  condition-variable-specific-set!
  condition-variable-signal!
  condition-variable-broadcast!

  ;; miscellanea
  make-thread-group thread-group? thread-group-name
  thread-group-specific thread-group-specific-set!
  thread-group-parent thread-group-resume! thread-group-suspend!
  thread-group-terminate! thread-group->thread-group-list
  thread-group->thread-group-vector thread-group->thread-list
  thread-group->thread-vector
  thread-state thread-state-uninitialized? thread-state-initialized?
  thread-state-running? thread-state-running-processor
  thread-state-waiting? thread-state-waiting-for thread-state-waiting-timeout
  thread-state-normally-terminated?
  thread-state-normally-terminated-result
  thread-state-abnormally-terminated?
  thread-state-abnormally-terminated-reason
  top thread-interrupt! thread-suspend! thread-resume!
  thread-thread-group thread-init!

  ;; system processors
  processor? current-processor processor-id
  )

(def (spawn f . args)
  (spawn-actor f args (or (##procedure-name f) #!void) #f))

(def (spawn* f . args)
  (spawn-actor f args #!void #f))

(def (spawn/name name f . args)
  (spawn-actor f args name #f))

(def (spawn/group name f . args)
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
            (when unhandled-actor-exception-hook
              (with-catch void (cut unhandled-actor-exception-hook cont exn)))
            ;; unwind stack and continue with the primordial exception handler
            ;; see discussion in gambit#295 about ##continuation-last
            (##continuation-graft
             (##continuation-last cont)
             ##primordial-exception-handler
             exn))))
       thunk)))

  (if (procedure? f)
    (let ((thunk (if (null? args) f
                     (lambda () (apply f args))))
          (tgroup (or tgroup (current-thread-group))))
      (thread-start!
       (make-thread (thread-main thunk) name tgroup)))
    (error "Bad argument; expected procedure" f)))

(def (spawn-thread thunk name)
  (thread-start!
   (make-thread thunk name)))

(def (current-thread-group)
  (thread-thread-group (current-thread)))

(def (with-lock mx proc)
  (dynamic-wind
      (cut mutex-lock! mx)
      proc
      (cut mutex-unlock! mx)))

;; actor debug hook
(def unhandled-actor-exception-hook #f)
(def (unhandled-actor-exception-hook-set! proc)
  (if (or (not proc) (procedure? proc))
    (set! unhandled-actor-exception-hook proc)
    (error "Bad argument; expected procedure or #f" proc)))

;; hook to dump continuation backtraces to ##stderr-port
(extern dump-stack-trace!)
(begin-foreign
  (namespace ("gerbil/gambit/threads#" dump-stack-trace!))

  (define (dump-stack-trace! cont exn #!optional (error-port ##stderr-port))
    (let ((out (open-output-string)))
      (display "*** Unhandled exception in " out)
      (display (current-thread) out)
      (newline out)
      (display-exception exn out)
      (display "Continuation backtrace: " out)
      (newline out)

      (##display-continuation-backtrace
       cont
       out
       #f                               ; display-env?
       #f                               ; all-frames?
       ##backtrace-default-max-head
       ##backtrace-default-max-tail
       0)

      (##write-string (get-output-string out) error-port))))
