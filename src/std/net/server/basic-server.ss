;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server -- sync server implementation
package: std/net/server

(import :gerbil/gambit/threads
        :gerbil/gambit/ports
        :std/net/server/base
        :std/os/fd
        :std/os/socket
        :std/actor/message
        :std/actor/proto
        :std/logger
        :std/iter
        :std/sugar
        )

(export basic-socket-server)

(def (basic-socket-server)
  (def socks (make-hash-table-eq))
  
  (def (loop)
    (<- ((!socket-server.add sock k)
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

  (def (wait-io! io timeo)
    (##wait-for-io! io (or timeo #t)))
  
  (def (add-socket sock)
    (let* ((io-in (fd-io-in sock))
           (wait-in
            (and io-in
                 (lambda (ssock timeo)
                   (wait-io! io-in timeo))))
           (io-out (fd-io-out sock))
           (wait-out
            (and io-out
                 (lambda (ssock timeo)
                   (wait-io! io-out timeo))))
           (close
            (lambda (ssock dir shutdown)
              (!!socket-server.close (!socket-srv ssock) ssock dir shutdown)))
           (ssock
            (make-!socket sock (current-thread) wait-in wait-out close))
           (state
            (make-!socket-state ssock io-in io-out)))
      (hash-put! socks ssock state)
      ssock))

  (def (close-socket ssock dir shutdown)
    (def (shutdown! sock)
      (try
       (socket-shutdown sock shutdown)
       (catch (e)
         (log-error "socket-server.close" e))))
    
    (def (close-io-in! sock)
      (if shutdown
        (shutdown! sock)
        (close-input-port sock)))

    (def (close-io-out! sock)
      (if shutdown
        (shutdown! sock)
        (close-output-port sock)))
    
    (with ((!socket sock) ssock)
      (let (state (hash-get socks ssock))
        (match state 
          ((!socket-state _ io-in io-out)
           (case dir
             ((in)
              (when io-in
                (unless io-out
                  (hash-remove! socks ssock))
                (set! (!socket-state-io-in state) #f)
                (close-io-in! sock)))
             ((out)
              (when io-out
                (unless io-in
                  (hash-remove! socks ssock)))
                (set! (!socket-state-io-out state) #f)
                (close-io-out! sock io-out))
             ((inout)
              (hash-remove! socks ssock)
              (when io-in
                (close-io-in! sock))
              (when io-out
                (close-io-out! sock))
              (close-port sock))
             (else
              (error "Bad direction" dir))))
          (else (void))))))

  (def (shutdown!)
    (debug "shutting down socket server")
    (for (ssock (in-hash-keys socks))
      (close-port (!socket-e ssock)))
    ;; release refs to raw devices
    (set! socks #f))
  
  (loop))
