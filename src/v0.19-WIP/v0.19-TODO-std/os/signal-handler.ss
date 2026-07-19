;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS signal handler interface

(import :std/error
        :std/logger
        :std/sugar
        ./signal)

(cond-expand
  (linux (import ./signalfd))
  (bsd (import ./kqueue ./error ./fd)))

(export add-signal-handler! remove-signal-handler!)

(deflogger signal)

(def system-signal-handler
  (delay (make-signal-handler)))

(def (add-signal-handler! signo thunk)
  (unless (and (fx> signo 0) (fx< signo SIGMAX))
    (raise-bad-argument add-signal-handler! "signal number" signo))
  (let (handler (force system-signal-handler))
    (signal-handler-add! handler signo thunk)))

(def (remove-signal-handler! signo)
  (unless (and (fx> signo 0) (fx< signo SIGMAX))
    (raise-bad-argument remove-signal-handler! "signal number" signo))
  (let (handler (force system-signal-handler))
    (signal-handler-remove! handler signo)))

;;; signal handler implementation
(cond-expand
  (linux
   (defstruct signal-handler (tab sfd sigset mx)
     final: #t constructor: :init!)

   (defmethod {:init! signal-handler}
     (lambda (self)
       (let* ((tab (make-vector SIGMAX #f))
              (sigset (make_sigset))
              (_ (sigemptyset sigset))
              (sfd (signalfd sigset))
              (mx (make-mutex 'signal-handler)))
         (struct-instance-init! self tab sfd sigset mx)
         (start-logger!)
         (spawn/name 'signal-handler signal-handler-wait self))))

   (def (signal-handler-wait sh)
     (try
      (def buf (make-signalfd-siginfo))
      (with ((signal-handler tab sfd sigset mx) sh)
        (let loop ()
          (signalfd-read sfd buf)
          (let (signo (signalfd-siginfo-signo buf))
            (let (handler (with-lock mx (cut vector-ref tab signo)))
              (when handler
                (signal-handler-dispatch handler))))
          (loop)))
      (catch (e)
        (errorf "Error handling signals: ~a" e)
        (raise e))))

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

  (bsd

   (defstruct signal-handler (handlers default-handlers kq mx)
     final: #t constructor: :init!)

   (defmethod {:init! signal-handler}
     (lambda (self)
       (let* ((handlers (make-vector SIGMAX #f))
              (default-handlers (make-vector SIGMAX #f))
              (kq (kqueue))
              (mx (make-mutex 'signal-handler)))
         (struct-instance-init! self handlers default-handlers kq mx)
         (start-logger!)
         (spawn/name 'signal-handler signal-handler-wait self))))

   (def (signal-handler-wait sh)
     (try
      (defconst nevents 4)
      (def events (make-kevents nevents))
      (with ((signal-handler handlers default-handlers kq mx) sh)
        (let wait-loop ()
          (##wait-for-io! (fd-io-in kq) #t)
          (let (n (kqueue-poll kq events nevents))
            (when (##fxpositive? n)
              (let event-loop ((i 0))
                (when (fx< i n)
                  (if (##fxzero? (##fxand (kevent-flags events i)
                                          EV_ERROR))
                    (when (fx= (kevent-filter events i) EVFILT_SIGNAL)
                      (let (event-handler
                            (with-lock mx
                              (cut vector-ref handlers
                                   (kevent-ident events i))))
                        (when event-handler
                          (signal-handler-dispatch event-handler))))
                    (raise-os-error signal-handler-wait
                                    EIO
                                    (kevent-data events i)
                                    signal-handler-wait))
                  (event-loop (fx1+ i))))))
          (wait-loop)))
      (catch (e)
        (errorf "Error handling signals ~a" e)
        (raise e))))

   (def (signal-handler-add! sh signo thunk)
     (with ((signal-handler handlers default-handlers kq mx) sh)
       (with-lock mx
         (lambda ()
           (let ((ev (make-kevents 1)))
             (vector-set! handlers signo thunk)
             (kqueue-kevent-add kq signo EVFILT_SIGNAL)
             (ignore-signal! sh signo))))))

   (def (signal-handler-remove! sh signo)
     (with ((signal-handler handlers default-handlers kq mx) sh)
       (with-lock mx
         (lambda ()
           (let ((ev (make-kevents 1)))
             (restore-signal! sh signo)
             (kqueue-kevent-del kq signo EVFILT_SIGNAL)
             (vector-set! handlers signo #f))))))

   (extern set-signal! signal-null-handler SIG_IGN)

   (def (ignore-signal! sh signo)
     (let* ((default-handlers (signal-handler-default-handlers sh))
            (default-handler (set-signal! signo SIG_IGN)))
       (unless (vector-ref default-handlers signo)
         (vector-set! default-handlers signo default-handler))))

   (def (restore-signal! sh signo)
     (let* ((default-handlers (signal-handler-default-handlers sh))
            (default-handler (vector-ref default-handlers signo)))
       (when (vector-ref default-handlers signo)
         (set-signal! signo default-handler))))

   (begin-foreign
     (c-declare "#include <signal.h>")

     (namespace ("std/os/signal-handler#"
                 SIG_IGN
                 set-signal!))

     (define SIG_IGN
       ((c-lambda () (pointer "void") "___return((void *)SIG_IGN);")))

     (define set-signal!
       (c-lambda (int (pointer "void")) (pointer "void")
            "___return((void*)signal(___arg1, (void (*)(int))(___arg2)));"))))

  (else
   (def (make-signal-handler)
     (error "Signal handler not implemented in this system"))

   (def (signal-handler-add! sh signo thunk)
     (error "Signal handler not implemented in this system"))

   (def (signal-handler-remove! sh signo)
     (error "Signal handler not implemented in this system"))))

(def (signal-handler-dispatch handler)
  (try
   (handler)
   (catch (e)
     (errorf "error dispatching signal handler: ~a" e))))
