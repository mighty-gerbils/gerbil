;;; -*- Gerbil -*-
;;; © vyzo
;;; transparent TCP proxy using stdio
(import :std/sugar
        :std/logger
        :std/getopt
        :std/net/address
        :std/io)
(export main)

(deflogger tcp-proxy)

(def (run local remote)
  (let* ((laddr (resolve-address local))
         (raddr (resolve-address remote))
         (sock (tcp-listen laddr)))
    (while #t
      (try
       (let (cli (ServerSocket-accept sock))
         (when cli
           (debugf "Accepted connection from ~a" (StreamSocket-peer-address cli))
           (spawn proxy cli raddr)))
       (catch (e)
         (errorf "Error accepting connection: ~a" e))))))

(def (proxy client raddr)
  (try
   (let (remote (tcp-connect raddr))
     (spawn proxy-io! (StreamSocket-reader client) (StreamSocket-writer remote))
     (spawn proxy-io! (StreamSocket-reader remote) (StreamSocket-writer client)))
   (catch (e)
     (errorf "Error proxying connection: ~a" e)
     (StreamSocket-close client))))

(def (proxy-io! reader writer)
  (io-copy! reader writer)
  (Writer-close writer)
  (Reader-close reader))

(def (main . args)
  (call-with-getopt proxy-main args
    program: "tcp-proxy"
    help: "A transparent TCP proxy"
    (argument 'local help: "local address to bind")
    (argument 'remote help: "remote address to proxy to")))

(def (proxy-main opt)
  (start-logger!)
  (run (hash-get opt 'local) (hash-get opt 'remote)))
