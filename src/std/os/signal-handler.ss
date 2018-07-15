;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS signal handler interface
package: std/os

(import :gerbil/gambit/threads
        :std/os/signal
        :std/logger
        :std/sugar)
(cond-expand
  (linux (import :std/os/signalfd))
  ;; TODO bsd -- (import :std/os/kqueue)
  )
(export add-signal-handler! remove-signal-handler!)

(def current-signal-handler
  (make-parameter #f))

(def (add-signal-handler! signo thunk)
  (unless (and (fx> signo 0) (fx<= signo SIGRTMAX))
    (error "Invalid signal" signo))
  (let (han (get-signal-handler))
    (signal-handler-add! han signo thunk)))

(def (remove-signal-handler! signo)
  (unless (and (fx> signo 0) (fx<= signo SIGRTMAX))
    (error "Invalid signal" signo))
  (let (han (get-signal-handler))
    (signal-handler-remove! han signo)))

(def (get-signal-handler)
  (cond
   ((current-signal-handler) => values)
   (else
    (let (han (make-signal-handler))
      (current-signal-handler han)
      han))))

;;; signal handler implementation
(cond-expand
  (linux
   (defstruct signal-handler (tab sfd sigset mx)
     final: #t constructor: :init!)

   (defmethod {:init! signal-handler}
     (lambda (self)
       (let* ((tab (make-vector (fx1+ SIGRTMAX) #f))
              (sigset (make_sigset))
              (_ (sigemptyset sigset))
              (sfd (signalfd sigset))
              (mx (make-mutex 'signal-handler)))
         (struct-instance-init! self tab sfd sigset mx)
         (start-logger!)
         (spawn signal-handler-wait self))))

   (def (signal-handler-wait sh)
     (def buf (make-signalfd-siginfo))
     (with ((signal-handler tab sfd sigset mx) sh)
       (try
        (let loop ()
          (signalfd-read sfd buf)
          (let (signo (signalfd-siginfo-signo buf))
            (let (handler (with-lock mx (cut vector-ref tab signo)))
              (when handler
                (signal-handler-dispatch handler))))
          (loop))
        (catch (e)
          (log-error "Error handling signals" e)))))

   (def (signal-handler-dispatch handler)
     (try
      (handler)
      (catch (e)
        (log-error "error dispatching signal handler" e))))

   (def (signal-handler-add! sh signo thunk)
     (with ((signal-handler tab sfd sigset mx) sh)
       (with-lock mx
         (lambda ()
           (when (fxzero? (sigismember sigset signo))
             (sigaddset sigset signo)
             (block-signal! signo)
             (signalfd-reset! sfd sigset))
           (vector-set! tab signo thunk)))))

   (def (signal-handler-remove! sh signo)
     (with ((signal-handler tab sfd sigset mx) sh)
       (with-lock mx
         (lambda ()
           (unless (fxzero? (sigismember sigset signo))
             (sigdelset sigset signo)
             (signalfd-reset! sfd sigset)
             (unblock-signal! signo))
           (vector-set! tab signo #f)))))

   (def (block-signal! signo)
     (let (sigset (make_sigset))
       (sigemptyset sigset)
       (sigaddset sigset signo)
       (sigprocmask SIG_BLOCK sigset #f)))

   (def (unblock-signal! signo)
     (let (sigset (make_sigset))
       (sigemptyset sigset)
       (sigaddset sigset signo)
       (sigprocmask SIG_UNBLOCK sigset #f))))

  ;; TODO bsd -- kqueue implementation

  (else
   (def (make-signal-handler)
     (error "Signal handler not implemented in this system"))))
