;;; -*- Gerbil -*-
;;; © vyzo
;;; transparent TCP proxy using low level socket programming
(import :std/os/socket
        :std/os/fd
        :std/os/error
        :std/event
        :std/getopt
        :std/logger
        :std/sugar)
(export main)

(deflogger tcp-proxy)

(def (run local remote)
  (let* ((laddr (socket-address local))
         (raddr (socket-address remote))
         (caddr (make-socket-address (socket-address-family laddr)))
         (sock (server-socket (socket-address-family laddr) SOCK_STREAM)))
    (socket-setsockopt sock SOL_SOCKET SO_REUSEADDR 1)
    (socket-bind sock laddr)
    (socket-listen sock 10)
    (while #t
      (wait (fd-io-in sock))
      (try
       (let (cli (socket-accept sock caddr))
         (when cli
           (debugf "Accepted connection from ~a" (socket-address->string caddr))
           (spawn proxy cli raddr)))
       (catch (e)
         (errorf "Error accepting connection: ~a" e))))))

(def (proxy clisock raddr)
  (try
   (let* ((srvsock (socket (socket-address-family raddr) SOCK_STREAM))
          (rcon (socket-connect srvsock raddr)))
     (unless rcon
       (wait (fd-io-out srvsock)))
     (let (r (or rcon (socket-getsockopt srvsock SOL_SOCKET SO_ERROR)))
       (unless (fxzero? r)
         (error "Connection error" (strerror r)))
       (spawn proxy-io! clisock srvsock)
       (spawn proxy-io! srvsock clisock)))
   (catch (e)
     (errorf "Error creating proxy: ~a" e))))

(def (proxy-io! isock osock)
  (def buf (make-u8vector 4096))
  (try
   (let lp ()
     (let (rd (socket-recv isock buf))
       (cond
        ((not rd)
         (wait (fd-io-in isock))
         (lp))
        ((fxzero? rd)
         (close-input-port isock)
         (socket-shutdown osock SHUT_WR))
        (else
         (let (end rd)
           (let lp2 ((start 0))
             (if (fx< start end)
               (let (wr (try (socket-send osock buf start end)
                             (catch (e)
                               (socket-shutdown isock SHUT_RD)
                               (raise e))))
                 (cond
                  ((not wr)
                   (wait (fd-io-out osock))
                   (lp2 start))
                  (else
                   (lp2 (fx+ start wr)))))
               (lp))))))))
   (catch (e)
     (errorf "Error proxying connection: ~a" e)
     (close-input-port isock)
     (close-output-port osock))))

(def (main . args)
  (call-with-getopt proxy-main args
    program: "tcp-proxy"
    help: "A transparent TCP proxy"
    (argument 'local help: "local address to bind")
    (argument 'remote help: "remote address to proxy to")))

(def (proxy-main opt)
  (start-logger!)
  (run (hash-get opt 'local) (hash-get opt 'remote)))
