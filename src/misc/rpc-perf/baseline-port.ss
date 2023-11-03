;; -*- Gerbil -*-
package: misc/rpc-perf

(import :gerbil/gambit
        :std/cli/getopt
        :std/sugar)
(export main)

(defstruct message ()
  final: #t)

(def (run-client address count)
  (let (srv (open-tcp-client address))
    (let lp ((k 0))
      (when (fx< k count)
        (do-send srv (make-message))
        (do-recv srv)
        (lp (fx1+ k))))
    (close-port srv)))

(def (run-server address)
  (let (srv (open-tcp-server address))
    (let lp ()
      (let (cli (read srv))
        (spawn run-client-connection cli)
        (lp)))))

(def (run-client-connection port)
  (let lp ()
    (let (next (do-recv port))
      (do-send port next)
      (lp))))

(def (do-recv port)
  (let* ((len (read-u32 port))
         (bytes (make-u8vector len))
         (rd (read-subu8vector bytes 0 len port)))
    (if (fx= rd len)
      (u8vector->object bytes)
      (error "EOF"))))

(def (do-send port obj)
  (let* ((bytes (object->u8vector obj))
         (len (u8vector-length bytes)))
    (write-u32 len port)
    (write-subu8vector bytes 0 len port)
    (force-output port)))

(def (read-u32 port)
  (let ((b0 (read-u8* port))
        (b1 (read-u8* port))
        (b2 (read-u8* port))
        (b3 (read-u8* port)))
    (fxior (fxarithmetic-shift b0 24)
           (fxarithmetic-shift b1 16)
           (fxarithmetic-shift b2 8)
           b3)))

(def (read-u8* port)
  (let (next (read-u8 port))
    (if (eof-object? next)
      (error "EOF")
      next)))

(def (write-u32 u32 port)
  (write-u8 (fxand (fxarithmetic-shift u32 -24) #xff) port)
  (write-u8 (fxand (fxarithmetic-shift u32 -16) #xff) port)
  (write-u8 (fxand (fxarithmetic-shift u32 -8) #xff) port)
  (write-u8 (fxand u32 #xff) port))

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
