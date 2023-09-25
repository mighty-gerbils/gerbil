;; -*- Gerbil -*-
package: misc/rpc-perf

(import :gerbil/gambit
        :std/net/socket
        :std/net/bio
        :std/sugar
        :std/getopt)
(export main)

(defstruct message ()
  final: #t)

(def (run-client address count)
  (let* ((sock (ssocket-connect address))
         (inp (open-ssocket-input-buffer sock))
         (outp (open-ssocket-output-buffer sock)))
    (let lp ((k 0))
      (when (fx< k count)
        (do-send outp (make-message))
        (do-recv inp)
        (lp (fx1+ k))))
    (ssocket-close sock)))

(def (run-server address)
  (let (sock (ssocket-listen address))
    (let lp ()
      (let (cli (ssocket-accept sock))
        (spawn run-client-connection cli)
        (lp)))))

(def (run-client-connection sock)
  (def inp (open-ssocket-input-buffer sock))
  (def outp (open-ssocket-output-buffer sock))
  (let lp ()
    (let (next (do-recv inp))
      (do-send outp next)
      (lp)))
  (ssocket-close sock))

(def (do-recv inp)
  (let* ((len (bio-read-u32 inp))
         (bytes (make-u8vector len)))
    (bio-read-bytes bytes inp)
    (u8vector->object bytes)))

(def (do-send outp obj)
  (let* ((bytes (object->u8vector obj))
         (len (u8vector-length bytes)))
    (bio-write-u32 len outp)
    (bio-write-bytes bytes outp)
    (bio-force-output outp)))

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
