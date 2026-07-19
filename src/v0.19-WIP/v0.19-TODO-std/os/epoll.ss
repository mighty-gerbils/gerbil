;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS epoll interface [linux]

(require linux)
(import :std/foreign
        ./error
        ./fd
        ./fcntl)
(export epoll-create epoll-ctl-add epoll-ctl-mod epoll-ctl-del epoll-wait
        make-epoll-events epoll-event-fd epoll-event-events
        EPOLLIN EPOLLOUT EPOLLERR EPOLLHUP EPOLLET EPOLLONESHOT)

(def (epoll-create)
  (let* ((fd (check-os-error (_epoll_create 1024)
               (epoll-create)))
         (raw (fdopen fd 'in 'epoll)))
    (fd-set-closeonexec raw)
    raw))

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

(def evtptr-key
  'std/os/epoll#evtptr)

(def (get-evtptr)
  (cond
   ((thread-local-get evtptr-key))
   (else
    (let (evtptr (check-ptr (make_epoll_evt 1)))
      (thread-local-set! evtptr-key evtptr)
      evtptr))))

(begin-ffi (EPOLLIN EPOLLOUT EPOLLERR EPOLLHUP EPOLLET EPOLLONESHOT
            EPOLL_CTL_ADD EPOLL_CTL_MOD EPOLL_CTL_DEL
            _epoll_create _epoll_ctl _epoll_wait
            make_epoll_evt
            epoll_evt_fd epoll_evt_fd_set
            epoll_evt_events epoll_evt_events_set)

  (c-declare "#include <sys/epoll.h>")

  ;; private
  (namespace ("std/os/epoll#"
              epoll_event epoll_event*
              __epoll_create __epoll_ctl __epoll_wait
              _epoll_create _epoll_ctl _epoll_wait))

  (define-const EPOLL_CTL_ADD)
  (define-const EPOLL_CTL_MOD)
  (define-const EPOLL_CTL_DEL)
  (define-const EPOLLIN)
  (define-const EPOLLOUT)
  (define-const EPOLLERR)
  (define-const EPOLLHUP)
  (define-const EPOLLET)
  (define-const EPOLLONESHOT)

  (c-define-type epoll_event (struct "epoll_event"))
  (c-define-type epoll_event*
    (pointer epoll_event (epoll_event*) "ffi_free"))

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
    "___arg1[___arg2].events = ___arg3; ___return;"))
