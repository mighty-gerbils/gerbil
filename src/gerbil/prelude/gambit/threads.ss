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
  thread-state-active?
  thread-state-active-waiting-for thread-state-active-timeout
  thread-state-normally-terminated?
  thread-state-normally-terminated-result
  thread-state-abnormally-terminated?
  thread-state-abnormally-terminated-reason
  top thread-interrupt! thread-suspend! thread-resume!
  thread-thread-group thread-init!
  )

(def (spawn f . args)
  (spawn/name/args (or (##procedure-name f) #!void) f args))

(def (spawn/name name f . args)
  (spawn/name/args name f args))

(def (spawn/name/args name f args)
  (unless (procedure? f)
    (error "Expected procedure" f))
  (thread-start!
   (make-thread
    (if (null? args) f
        (lambda () (apply f args)))
    name)))

(def (with-lock mx proc)
  (mutex-lock! mx)
  (unwind-protect
    (proc)
    (mutex-unlock! mx)))
