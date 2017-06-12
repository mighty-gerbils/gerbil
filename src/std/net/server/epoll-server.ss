;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server -- epoll server implementation
package: std/net/server

(require linux-gnu)

(import :gerbil/gambit/threads
        :gerbil/gambit/ports
        :std/net/server/base
        :std/os/fd
        :std/os/socket
        :std/os/epoll
        :std/actor/message
        :std/actor/proto
        :std/sugar
        :std/logger
        :std/iter
        )
(export epoll-socket-server)

(extern namespace: #f macro-absent-obj)

(def (epoll-socket-server)
  (def fdtab (make-hash-table-eq))
  (def epoll (epoll-create))
  (def maxevts 1024)
  (def evts (make-epoll-events maxevts))

  (def (loop)
    (<- (! (_ (fd-io-in epoll))
           (try
            (do-epoll)
            (loop)
            (catch (e)
              ;; log it and die -- that's not good.
              (log-error "socket-server.do-epoll" e)
              (shutdown!))))
        ((!socket-server.add sock k)
         (try
          (let (ssock (add-socket sock))
            (!!value ssock k))
          (catch (e)
            (log-error "socket-server.add" e)
            (!!error (error-message e) k)))
         (loop))
        ((!socket-server.close ssock dir shutdown k)
         (try
          (close-socket ssock dir shutdown)
          (!!value (void) k)
          (catch (e)
            (log-error "socket-server.close" e)
            (!!error (error-message e) k)))
         (loop))
        ((!socket-server.shutdown! k)
         (try
          (shutdown!)
          (!!value (void) k)
          (catch (e)
            (log-error "socket-server.shutdown!" e)
            (!!error (error-message e) k))))
        (msg
         (warning "Unexpected message: ~a" msg)
         (loop))))

  (def (do-epoll)
    (let (count (epoll-wait epoll evts maxevts))
      (when (fxpositive? count)
        (for (k (in-range count))
          (let ((fd (epoll-event-fd evts k))
                (ready (epoll-event-events evts k)))
            (with ((!socket-state ssock io-in io-out)
                   (hash-ref fdtab fd))
              (unless (fxzero? (fxand ready (fxior EPOLLIN EPOLLHUP EPOLLERR)))
                (when io-in
                  (signal-ready! io-in 'ready)))
              (unless (fxzero? (fxand ready (fxior EPOLLOUT EPOLLHUP EPOLLERR)))
                (when io-out
                  (signal-ready! io-out 'ready)))))))))

  (def (signal-ready! iostate how)
    (with ((!io-state _ mx cv) iostate)
      (mutex-lock! mx)
      (set! (!io-state-e iostate)
        how)
      (condition-variable-broadcast! cv)
      (mutex-unlock! mx)))

  (def (wait-io! iostate timeo how)
    (with ((!io-state _ mx cv) iostate)
      (let lp ()
        (mutex-lock! mx)
        (case (!io-state-e iostate)
          ((closed)
           (mutex-unlock! mx)
           (error "Socket direction has been closed" how))
          ((ready)
           (set! (!io-state-e iostate) how)
           (mutex-unlock! mx)
           (void))
          (else
           (set! (!io-state-e iostate)
             'blocked)
           (and (mutex-unlock! mx cv (or timeo (macro-absent-obj)))
                (lp)))))))
  
  (def (add-socket sock)
    (let* ((fd (fd-e sock))
           (io-in
            (and (fd-io-in sock)
                 (make-!io-state 'blocked (make-mutex) (make-condition-variable))))
           (wait-in
            (and io-in
                 (lambda (ssock timeo)
                   (wait-io! io-in timeo 'input))))
           (io-out
            (and (fd-io-out sock)
                 (make-!io-state 'blocked (make-mutex) (make-condition-variable))))
           (wait-out
            (and io-out
                 (lambda (ssock timeo)
                   (wait-io! io-out timeo 'output))))
           (close
            (lambda (ssock dir shutdown)
              (!!socket-server.close (!socket-srv ssock) ssock dir shutdown)))
           (ssock
            (make-!socket sock (current-thread) wait-in wait-out close))
           (state
            (make-!socket-state ssock io-in io-out))
           (events EPOLLET)
           (events
            (if io-in
              (fxior EPOLLIN events)
              events))
           (events
            (if io-out
              (fxior EPOLLOUT events)
              events)))
      (epoll-ctl-add epoll sock events)
      (hash-put! fdtab fd state)
      ssock))
  
  (def (close-socket ssock dir shutdown)
    (def (shutdown! sock)
      (try
       (socket-shutdown sock shutdown)
       (catch (e)
         (log-error "socket-server.close" e))))
    
    (def (close-io-in! sock io-in)
      (if shutdown
        (shutdown! sock)
        (close-input-port sock))
      (signal-ready! io-in 'closed))

    (def (close-io-out! sock io-out)
      (if shutdown
        (shutdown! sock)
        (close-output-port sock))
      (signal-ready! io-out 'closed))
    
    (with ((!socket sock) ssock)
      (let (state (hash-get fdtab (fd-e sock)))
        (match state 
          ((!socket-state ssock io-in io-out)
           (case dir
             ((in)
              (when io-in
                (if io-out
                  (epoll-ctl-mod epoll sock (fxior EPOLLET EPOLLOUT))
                  (begin
                    (epoll-ctl-del epoll sock)
                    (hash-remove! fdtab (fd-e sock))))
                (set! (!socket-state-io-in state) #f)
                (close-io-in! sock io-in)))
             ((out)
              (when io-out
                (if io-in
                  (epoll-ctl-mod epoll sock (fxior EPOLLET EPOLLIN))
                  (begin
                    (epoll-ctl-del epoll sock)
                    (hash-remove! fdtab (fd-e sock))))
                (set! (!socket-state-io-out state) #f)
                (close-io-out! sock io-out)))
             ((inout)
              (epoll-ctl-del epoll sock)
              (hash-remove! fdtab (fd-e sock))
              (when io-in
                (close-io-in! sock io-in))
              (when io-out
                (close-io-out! sock io-out))
              (close-port sock))
             (else
              (error "Bad direction" dir))))
          (else (void))))))

  (def (shutdown!)
    (debug "shutting down socket server")
    (close-port epoll)
    (for (state (in-hash-values fdtab))
      (close-port (!socket-e (!socket-state-e state)))))
  
  (loop))
