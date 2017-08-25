;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: threads
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
  (spawn/name/args (or (##procedure-name f) #!void) f args))

(def (spawn* f . args)
  (spawn/name/args #!void f args))

(def (spawn/name name f . args)
  (spawn/name/args name f args))

(def (spawn/name/args name f args)
  (def (thread-main thunk)
    ;; install an abortive handler to reliably unwind stacks
    (lambda () (with-catch ##primordial-exception-handler thunk)))

  (if (procedure? f)
    (spawn-thread
     (thread-main
      (if (null? args) f
          (lambda () (apply f args))))
     name)
    (error "Bad argument; expected procedure" f)))

(def (spawn-thread thunk name)
  (thread-start!
   (make-thread thunk name)))

(def (with-lock mx proc)
  (dynamic-wind
      (cut mutex-lock! mx)
      proc
      (cut mutex-unlock! mx)))
