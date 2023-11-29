;;; -*- Gerbil -*-
;;; © vyzo
;;; transparent TCP proxy using stdio
(import :std/cli/getopt
        :std/contract
        :std/io
        :std/logger
        :std/net/address
        :std/sugar)
(export main)

(deflogger tcp-proxy)

(def (run local remote)
  (let ((laddr (resolve-address local))
        (raddr (resolve-address remote)))
    (using (sock (tcp-listen laddr) : ServerSocket)
    (while #t
      (try
       (using (cli (sock.accept) : StreamSocket)
         (debugf "Accepted connection from ~a" (cli.peer-address))
         (spawn proxy cli raddr))
       (catch (e)
         (errorf "Error accepting connection: ~a" e)))))))

(def (proxy client raddr)
  (using (client :- StreamSocket)
    (try
     (using (remote (tcp-connect raddr) : StreamSocket)
       (spawn proxy-io! (client.reader) (remote.writer))
       (spawn proxy-io! (remote.reader) (client.writer)))
     (catch (e)
       (errorf "Error proxying connection: ~a" e)
       (client.close)))))

(def (proxy-io! reader writer)
  (using ((reader :- Reader)
          (writer :- Writer))
    (io-copy! reader writer)
    (writer.close)
    (reader.close)))

(def (main . args)
  (call-with-getopt proxy-main args
    program: "tcp-proxy"
    help: "A transparent TCP proxy"
    (argument 'local help: "local address to bind")
    (argument 'remote help: "remote address to proxy to")))

(def (proxy-main opt)
  (start-logger!)
  (run (hash-get opt 'local) (hash-get opt 'remote)))
