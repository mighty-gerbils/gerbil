;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; kvstore command line client
(import :gerbil/gambit
        :std/sugar
        :std/getopt
        :std/actor
        :std/text/json
        :tutorial/kvstore/proto)
(export main)

(def (kvstore-connect opt)
  (let (rpcd (start-rpc-server! proto: (rpc-cookie-proto)))
    (rpc-connect rpcd 'kvstore (hash-get opt 'server))))

(def (kvstore-get opt)
  (let* ((remote (kvstore-connect opt))
         (val (!!kvstore.get remote (hash-get opt 'key))))
    (write-json val)
    (newline)))

(def (kvstore-ref opt)
  (let* ((remote (kvstore-connect opt))
         (val (!!kvstore.ref remote (hash-get opt 'key))))
    (write-json val)
    (newline)))

(def (kvstore-put! opt)
  (let* ((val (call-with-input-file (hash-get opt 'file) read-json))
         (remote (kvstore-connect opt)))
    (!!kvstore.put! remote (hash-get opt 'key) val)))

(def (kvstore-remove! opt)
  (let (remote (kvstore-connect opt))
    (!!kvstore.remove! remote (hash-get opt 'key))))

(def (main . args)
  (def getcmd
    (command 'get help: "get the json object associated with key or false if none is"
             (argument 'key help: "object key, a string")))
  (def refcmd
    (command 'ref help: "get the json object associated with key or error"
             (argument 'key help: "object key, a string")))
  (def putcmd
    (command 'put help: "put a json object to store"
             (argument 'key help: "object key, a string")
             (argument 'file help: "json file")))
  (def delcmd
    (command 'remove help: "remove an object from the store"
             (argument 'key help: "object key, a string")))
  (def helpcmd
    (command 'help help: "display usage help"
             (optional-argument 'command value: string->symbol)))

  (def gopt
    (getopt (option 'server "-s" "--server"
                    default: "127.0.0.1:9999"
                    help: "server rpc address")
            getcmd
            refcmd
            putcmd
            delcmd
            helpcmd))

  (try
   (let ((values cmd opt) (getopt-parse gopt args))
     (case cmd
       ((get) (kvstore-get opt))
       ((ref) (kvstore-ref opt))
       ((put) (kvstore-put! opt))
       ((remove) (kvstore-remove! opt))
       ((help)
        (getopt-display-help-topic gopt (hash-get opt 'command) "kvstorec"))))
   (catch (getopt-error? exn)
     (getopt-display-help exn "kvstorec" (current-error-port))
     (exit 1))
   (catch (remote-error? exn)
     (displayln (error-message exn))
     (exit 1))))
