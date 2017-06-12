;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS epoll interface [linux]
package: std/os

(require linux-gnu)
(import :gerbil/gambit/threads
        (only-in :gerbil/gambit/ports close-port)
        :std/os/error
        :std/os/fd)
(export epoll-create epoll-ctl-add epoll-ctl-mod epoll-ctl-del epoll-wait
        make-epoll-events epoll-event-fd epoll-event-events
        EPOLLIN EPOLLOUT EPOLLERR EPOLLHUP EPOLLET EPOLLONESHOT) 

(def (epoll-create)
  (let (fd (check-os-error (_epoll_create 1024)
             (epoll-create)))
    (fdopen fd 'in 'epoll)))

(def (epoll-ctl-add epoll dev events)
  (epoll-ctl epoll EPOLL_CTL_ADD dev events))

(def (epoll-ctl-mod epoll dev events)
  (epoll-ctl epoll EPOLL_CTL_MOD dev events))

(def (epoll-ctl-del epoll dev)
  (epoll-ctl epoll EPOLL_CTL_DEL dev 0))

(def (epoll-ctl epoll op dev events)
  (let (evt (get-evtptr))
    (epoll_evt_fd_set evt 0 (fd-e dev))
    (epoll_evt_events_set evt 0 events)
    (check-os-error (_epoll_ctl (fd-e epoll) op (fd-e dev) evt)
      (epoll-ctl epoll op dev events))))

(def (epoll-wait epoll evts maxevts)
  (do-retry-nonblock (_epoll_wait (fd-e epoll) evts maxevts 0)
    (epoll-wait epoll evts maxevts)))

(def (epoll-close epoll)
  (close-port epoll))

(def (make-epoll-events size)
  (check-ptr (make_epoll_evt size)))

(def (epoll-event-fd evts k)
  (epoll_evt_fd evts k))

(def (epoll-event-events evts k)
  (epoll_evt_events evts k))

(def evtptr-cache
  (make-hash-table-eq weak-keys: #t))
(def evtptr-cache-mutex
  (make-mutex))

(def (get-evtptr)
  (with-lock evtptr-cache-mutex
    (lambda ()
      (cond
       ((hash-get evtptr-cache (current-thread)) => values)
       (else
        (let (evtptr (check-ptr (make_epoll_evt 1)))
          (hash-put! evtptr-cache (current-thread) evtptr)
          evtptr))))))

(extern
  EPOLLIN EPOLLOUT EPOLLERR EPOLLHUP EPOLLET EPOLLONESHOT
  EPOLL_CTL_ADD EPOLL_CTL_MOD EPOLL_CTL_DEL
  _epoll_create _epoll_ctl _epoll_wait
  make_epoll_evt
  epoll_evt_fd epoll_evt_fd_set
  epoll_evt_events epoll_evt_events_set)

(begin-foreign
  (c-declare "#include <errno.h>")
  (c-declare "#include <sys/epoll.h>")
  (c-declare "#include <stdlib.h>")

  (define-macro (define-c-lambda id args ret #!optional (name #f))
    (let ((name (or name (##symbol->string id))))
      `(define ,id
         (c-lambda ,args ,ret ,name))))

  (define-macro (define-const symbol)
    (let* ((str (##symbol->string symbol))
           (ref (##string-append "___return (" str ");")))
      `(define ,symbol
         ((c-lambda () int ,ref)))))

  (define-macro (define-with-errno symbol ffi-symbol args)
    `(define (,symbol ,@args)
       (declare (not interrupts-enabled))
       (let ((r (,ffi-symbol ,@args)))
         (if (##fx< r 0)
           (##fx- (__errno))
           r))))
  
  (namespace ("std/os/epoll#"
              EPOLL_CTL_ADD EPOLL_CTL_MOD EPOLL_CTL_DEL
              EPOLLIN EPOLLOUT EPOLLERR EPOLLHUP EPOLLET EPOLLONESHOT
              epoll_event epoll_event*
              __errno __epoll_create __epoll_ctl __epoll_wait
              _epoll_create _epoll_ctl _epoll_wait
              make_epoll_evt
              epoll_evt_fd epoll_evt_fd_set
              epoll_evt_events epoll_evt_events_set
              ))

  (define-const EPOLL_CTL_ADD)
  (define-const EPOLL_CTL_MOD)
  (define-const EPOLL_CTL_DEL)
  (define-const EPOLLIN)
  (define-const EPOLLOUT)
  (define-const EPOLLERR)
  (define-const EPOLLHUP)
  (define-const EPOLLET)
  (define-const EPOLLONESHOT)

  (c-declare "static ___SCMOBJ ffi_free (void *ptr);")
  
  (c-define-type epoll_event (struct "epoll_event"))
  (c-define-type epoll_event*
    (pointer epoll_event (epoll_event*) "ffi_free"))
  
  (define-c-lambda __errno () int
    "___return (errno);")

  (define-c-lambda __epoll_create (int) int
    "epoll_create")
  (define-c-lambda __epoll_ctl (int int int epoll_event*) int
    "epoll_ctl")
  (define-c-lambda __epoll_wait (int epoll_event* int int) int
    "epoll_wait")

  (define-with-errno _epoll_create __epoll_create (size))
  (define-with-errno _epoll_ctl __epoll_ctl (epfd op fd evt))
  (define-with-errno _epoll_wait __epoll_wait (epfd evts maxevts timeo))

  (define-c-lambda make_epoll_evt (int) epoll_event*
    "___return ((struct epoll_event*)malloc (___arg1 * sizeof (struct epoll_event)));")
  
  (define-c-lambda epoll_evt_fd (epoll_event* int) int
    "___return (___arg1[___arg2].data.fd);")
  (define-c-lambda epoll_evt_fd_set (epoll_event* int int) void
    "___arg1[___arg2].data.fd = ___arg3; ___return;")
  
  (define-c-lambda epoll_evt_events (epoll_event* int) int
    "___return (___arg1[___arg2].events);")
  (define-c-lambda epoll_evt_events_set (epoll_event* int int) void
    "___arg1[___arg2].events = ___arg3; ___return;")

  (c-declare #<<END-C
___SCMOBJ ffi_free (void *ptr)
{
 free (ptr);
 return ___FIX (___NO_ERR);
}
END-C
))
