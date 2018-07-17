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
  (bsd (import :std/os/kqueue :std/os/error)))

(export add-signal-handler! remove-signal-handler!)

(def system-signal-handler
  (delay (make-signal-handler)))

(def (add-signal-handler! signo thunk)
  (unless (and (fx> signo 0) (fx< signo SIGMAX))
    (error "Invalid signal" signo))
  (let (handler (force system-signal-handler))
    (signal-handler-add! handler signo thunk)))

(def (remove-signal-handler! signo)
  (unless (and (fx> signo 0) (fx< signo SIGMAX))
    (error "Invalid signal" signo))
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
        (log-error "Error handling signals" e)
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
           (vector-set! tab signo #f))))))

  (bsd

    (defstruct signal-handler (tab kq mx)
      final: #t constructor: :init!)

    (defmethod {:init! signal-handler}
      (lambda (self)
	(let* ((tab (make-vector SIGMAX #f))
	       (kq (kqueue))
	       (mx (make-mutex 'signal-handler)))
		  (struct-instance-init! self tab kq mx)
	  (start-logger!)
	  (spawn/name 'signal-handler signal-handler-wait self))))

    (def (signal-handler-wait sh)
      (try
	(defconst nevents 4)
	(def events (make-kevents nevents))
	(with ((signal-handler tab kq mx) sh)
	  (let wait-loop ()
	    (let (n (kqueue-wait kq events nevents))
	      (when (##fxpositive? n)
		(let event-loop ((i 0))
		  (when (fx< i n)
		    (if (##fxzero? (##fxand (kevent-flags events i)
					     EV_ERROR))
		      (when (fx= (kevent-filter events i) EVFILT_SIGNAL)
			(let (event-handler
			       (with-lock mx
				 (cut vector-ref tab
				      (kevent-ident events i))))
			  (when event-handler
			    (signal-handler-dispatch event-handler))))
		      (raise-os-error (kevent-data events i)
				      signal-handler-wait))
		    (event-loop (fx1+ i))))))
	    (wait-loop)))
	(catch (e)
	       (log-error "Error handling signals" e)
	       (raise e))))

    (def (signal-handler-add! sh signo thunk)
      (with ((signal-handler tab kq mx) sh)
	(with-lock mx
	  (lambda ()
	    (let ((ev (make-kevents 1)))
	      (set-kevent-filter! ev 0 EVFILT_SIGNAL)
	      (set-kevent-ident! ev 0 signo)
	      (set-kevent-flags! ev 0 EV_ADD)
	      (vector-set! tab signo thunk)
	      (kqueue-kevent kq ev 1 #f 0 #f)
	      (block-signal! signo))))))

    (def (signal-handler-remove! sh signo)
      (with ((signal-handler tab kq mx) sh)
	(with-lock mx
	  (lambda ()
	    (let ((ev (make-kevents 1)))
	      (set-kevent-filter! ev 0 EVFILT_SIGNAL)
	      (set-kevent-ident! ev 0 signo)
	      (set-kevent-flags! ev 0 EV_DELETE)
	      (unblock-signal! signo)
	      (vector-set! tab signo #f)
	      (kqueue-kevent kq ev 1 #f 0 #f)))))))

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
      (log-error "error dispatching signal handler" e))))

(def (block-signal! signo)
  (let (sigset (make_sigset))
    (sigemptyset sigset)
    (sigaddset sigset signo)
    (sigprocmask SIG_BLOCK sigset #f)))

(def (unblock-signal! signo)
  (let (sigset (make_sigset))
    (sigemptyset sigset)
    (sigaddset sigset signo)
    (sigprocmask SIG_UNBLOCK sigset #f)))
