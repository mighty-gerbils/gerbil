;; -*- Gerbil -*-
package: misc/rpc-perf

(import :gerbil/gambit/threads
        :gerbil/gambit/bytes
        :std/net/server
        :std/sugar
        :std/getopt)
(export main)

(def (run-client address count)
  (let* ((socksrv (start-socket-server!))
         (sock (server-connect socksrv address))
         (msg (@bytes "ping pong! i love ping poong!"))
         (inb (make-u8vector (u8vector-length msg))))
    (let lp ((k 0))
      (when (fx< k count)
        (server-send-all sock msg)
        (server-recv-all sock inb)
        (lp (fx1+ k))))))

(def (run-server address)
  (let* ((socksrv (start-socket-server!))
         (sock (server-listen socksrv address)))
    (let lp ()
      (let (cli (server-accept sock))
        (spawn run-client-connection cli)
        (lp)))))

(def (run-client-connection sock)
  (def buf (make-u8vector 256))
  (let lp ()
    (let (rd (server-recv sock buf))
      (unless (fx= rd 0)
        (server-send-all sock buf 0 rd)
        (lp)))))

(def (main . args)
  (def srvcmd
    (command 'server help: "run as a server"))
  (def clicmd
    (command 'client help: "run as a client"
             (argument 'count help: "number of calls"
                       value: string->number)))
  (def gopt
    (getopt (option 'address "-a" "--address"
                    help: "server address"
                    default: "127.0.0.1:9999")
            srvcmd
            clicmd))

  (try
   (let ((values cmd opt) (getopt-parse gopt args))
     (case cmd
       ((client)
        (run-client (hash-get opt 'address)
                    (hash-get opt 'count)))
       ((server)
        (run-server (hash-get opt 'address)))))
   (catch (getopt-error? exn)
     (getopt-display-help exn "baseline" (current-error-port))
     (exit 1))))
