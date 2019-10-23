;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; synchronous sockets  -- epoll server implementation

(require linux)
(import :gerbil/gambit/threads
        :gerbil/gambit/ports
        :gerbil/gambit/misc
        :std/net/socket/base
        :std/net/socket/basic-server
        :std/os/fd
        :std/os/epoll
        :std/iter)
(export epoll-socket-server)

(def (epoll-socket-server)
  (def fdtab (make-hash-table-eq))
  (def epoll (epoll-create))
  (def maxevts 8192)
  (def evts (make-epoll-events maxevts))

  (def poll-in (##fxior EPOLLIN EPOLLHUP EPOLLERR))
  (def poll-out (##fxior EPOLLOUT EPOLLHUP EPOLLERR))

  (def (do-epoll)
    (let (count (epoll-wait epoll evts maxevts))
      (when (##fxpositive? count)
        (let lp ((k 0))
          (when (##fx< k count)
            (let ((fd (epoll-event-fd evts k))
                  (ready (epoll-event-events evts k)))
              (with ((!socket-state _ io-in io-out)
                     (hash-ref fdtab fd))
                (unless (##fxzero? (##fxand ready poll-in))
                  (when io-in
                    (io-state-signal-ready! io-in 'ready)))
                (unless (##fxzero? (##fxand ready poll-out))
                  (when io-out
                    (io-state-signal-ready! io-out 'ready)))
                (lp (##fx+ k 1)))))))))

  (def (add-socket sock)
    (let* ((self (current-thread))
           (fd (fd-e sock))
           (io-in
            (and (fd-io-in sock)
                 (make-!io-state)))
           (wait-in
            (and io-in
                 (lambda (ssock timeo)
                   (io-state-wait-io! io-in timeo 'input))))
           (io-out
            (and (fd-io-out sock)
                 (make-!io-state)))
           (wait-out
            (and io-out
                 (lambda (ssock timeo)
                   (io-state-wait-io! io-out timeo 'output))))
           (close
            (lambda (ssock dir shutdown)
              (!!socket-server.close self ssock dir shutdown)))
           (ssock
            (make-!socket sock wait-in wait-out close))
           (state
            (make-!socket-state sock io-in io-out))
           (events EPOLLET)
           (events
            (if io-in
              (##fxior EPOLLIN events)
              events))
           (events
            (if io-out
              (##fxior EPOLLOUT events)
              events)))
      (make-will ssock (cut close <> 'inout #f))
      (epoll-ctl-add epoll sock events)
      (hash-put! fdtab fd state)
      ssock))

  (def (close-socket ssock dir shutdown)
    (def (close-io-in! io-in sock)
      (io-state-close-in! io-in sock shutdown))
    (def (close-io-out! io-out sock)
      (io-state-close-out! io-out sock shutdown))

    (with ((!socket sock wait-in wait-out) ssock)
      (when (or wait-in wait-out)
        (let (state (hash-get fdtab (fd-e sock)))
          (match state
            ((!socket-state _ io-in io-out)
             (case dir
               ((in)
                (if io-out
                  (epoll-ctl-mod epoll sock (##fxior EPOLLET EPOLLOUT))
                  (begin
                    (epoll-ctl-del epoll sock)
                    (hash-remove! fdtab (fd-e sock))))
                (set! (!socket-wait-in ssock) #f)
                (set! (!socket-state-io-in state) #f)
                (close-io-in! io-in sock)
                (unless io-out
                  (close-port sock)))
               ((out)
                (if io-in
                  (epoll-ctl-mod epoll sock (##fxior EPOLLET EPOLLIN))
                  (begin
                    (epoll-ctl-del epoll sock)
                    (hash-remove! fdtab (fd-e sock))))
                (set! (!socket-wait-out ssock) #f)
                (set! (!socket-state-io-out state) #f)
                (close-io-out! io-out sock)
                (unless io-in
                  (close-port sock)))
               ((inout)
                (epoll-ctl-del epoll sock)
                (hash-remove! fdtab (fd-e sock))
                (when io-in
                  (set! (!socket-wait-in ssock) #f)
                  (set! (!socket-state-io-in state) #f)
                  (close-io-in! io-in sock))
                (when io-out
                  (set! (!socket-wait-out ssock) #f)
                  (set! (!socket-state-io-out state) #f)
                  (close-io-out! io-out sock))
                (close-port sock))
               (else
                (error "Bad direction" dir))))
            (else (void)))))))

  (def (shutdown!)
    (close-port epoll)
    (for (state (in-hash-values fdtab))
      (with ((!socket-state sock io-in io-out) state)
        (when io-in
          (io-state-close-in! io-in sock #f))
        (when io-out
          (io-state-close-out! io-out sock #f))
        (close-port sock)))
    ;; release refs to raw devices
    (set! fdtab #f)
    (set! epoll #f))

  (server-loop (fd-io-in epoll) do-epoll add-socket close-socket shutdown!))
