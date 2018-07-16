;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; synchronous sockets  -- kqueue server implementation
package: std/net/sockets

(require bsd)
(import :gerbil/gambit/threads
        :gerbil/gambit/ports
        :gerbil/gambit/misc
        :std/net/socket/base
        :std/net/socket/basic-server
        :std/os/fd
        :std/os/kqueue
        :std/iter)
(export kqueue-socket-server)

(def (kqueue-socket-server)
  (def fdtab (make-hash-table-eq))
  (def kq (kqueue))
  (def maxevts 8192)
  (def evts (make-kevents maxevts))

  (def ev-in (##fxior EVFILT_READ EV_EOF EV_ERROR))
  (def ev-out (##fxior EVFILT_WRITE EV_EOF EV_ERROR))

  (def (do-kevent)
    (let (count (kqueue-wait kq evts maxevts))
      (when (##fxpositive? count)
        (let lp ((k 0))
          (when (##fx< k count)
            (let ((fd (kevent-ident evts k))
                  (ready (kevent-flags evts k)))
              (with ((!socket-state _ io-in io-out)
                     (hash-ref fdtab fd))
                (cond
                 ((##fxpositive? (##fxand ready ev-in))
                  (when io-in
                    (io-state-signal-ready! io-in 'ready)))
                 ((##fxpositive? (##fxand ready ev-out))
                  (when io-out
                    (io-state-signal-ready! io-out 'ready))))
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
           (filter 0))
      (when io-in
        (set! filter (##fxior filter EVFILT_READ)))
      (when io-out
        (set! filter (##fxior filter EVFILT_WRITE)))
      (make-will ssock (cut close <> 'inout #f))
      (kqueue-kevent-add kq sock filter)
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
                  (kqueue-kevent-add kq sock EVFILT_WRITE)
                  (begin
                    (kqueue-kevent-del kq sock)
                    (hash-remove! fdtab (fd-e sock))))
                (set! (!socket-wait-in ssock) #f)
                (set! (!socket-state-io-in state) #f)
                (close-io-in! io-in sock)
                (unless io-out
                  (close-port sock)))
               ((out)
                (if io-in
                  (kqueue-kevent-add kq sock EVFILT_READ)
                  (begin
                    (kqueue-kevent-del kq sock)
                    (hash-remove! fdtab (fd-e sock))))
                (set! (!socket-wait-out ssock) #f)
                (set! (!socket-state-io-out state) #f)
                (close-io-out! io-out sock)
                (unless io-in
                  (close-port sock)))
               ((inout)
                (kqueue-kevent-del kq sock)
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
    (close-port kq)
    (for (state (in-hash-values fdtab))
      (with ((!socket-state sock io-in io-out) state)
        (when io-in
          (io-state-close-in! io-in sock #f))
        (when io-out
          (io-state-close-out! io-out sock #f))
        (close-port sock)))
    ;; release refs to raw devices
    (set! fdtab #f)
    (set! kqueue #f))

  (server-loop (fd-io-in kq) do-kevent add-socket close-socket shutdown!))
