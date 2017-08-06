;; -*- Gerbil -*-
;; compile:
;; gxc -static -exe -o nullproto -O -ld-options -lcrypto
;;     -gsc-option -prelude '(declare (not safe))'
;;     -gsc-option -e '(include "~~lib/_gambit#.scm")'
;;     nullproto.ss
package: perf/rpc

(import :gerbil/gambit/threads
        :std/actor
        :std/net/address
        :std/getopt
        :std/sugar)
(export main)

(defproto null-proto
  (call))

(def (run-client rpc-proto address count)
  (let* ((rpcd (start-rpc-server! proto: rpc-proto))
         (srv (rpc-connect rpcd 'null address null-proto::proto)))
    (let lp ((k 0))
      (when (fx< k count)
        (!!null-proto.call srv)
        (lp (fx1+ k))))))

(def (run-server rpc-proto address)
  (let (rpcd (start-rpc-server! address proto: rpc-proto))
    (rpc-register rpcd 'null null-proto::proto)
    (while #t
      (<- ((!null-proto.call k)
           (!!value (void) k))))))

(def (run-server-prof rpc-proto address count)
  (let (rpcd (start-rpc-server! address proto: rpc-proto))
    (rpc-register rpcd 'null null-proto::proto)
    (let lp ((n 0))
      (when (fx< n count)
        (<- ((!null-proto.call k)
             (!!value (void) k)
             (lp (fx1+ n))))))))

(def (main . args)
  (def srvcmd
    (command 'server help: "run as a server"))
  (def srvprofcmd
    (command 'server-prof help: "run as a limited server for profiling"
             (argument 'count help: "numbers of calls to serve"
                       value: string->number)))
  (def clicmd
    (command 'client help: "run as a client"
             (argument 'count help: "number of calls"
                       value: string->number)))
  (def gopt
    (getopt (option 'address "-a" "--address"
                    help: "server address"
                    default: "127.0.0.1:9999")
            (option 'proto "-p" "--proto"
                    help: "rpc protocol to use"
                    default: 'null
                    value: string->symbol)
            srvcmd
            srvprofcmd
            clicmd))

  (try
   (let ((values cmd opt) (getopt-parse gopt args))
     (let* ((proto (hash-ref opt 'proto))
            (rpc-proto
             (case proto
               ((null) (rpc-null-proto))
               ((cookie) (rpc-cookie-proto))
               ((cipher) (rpc-cipher-proto))
               ((cookie-cipher) (rpc-cookie-cipher-proto))
               (else
                (error "Bad protocol" proto)))))

       (case cmd
         ((client)
          (run-client rpc-proto
                      (hash-get opt 'address)
                      (hash-get opt 'count)))
         ((server)
          (run-server rpc-proto
                      (hash-get opt 'address)))
         ((server-prof)
          (run-server-prof rpc-proto
                           (hash-get opt 'address)
                           (hash-get opt 'count))))))
   (catch (getopt-error? exn)
     (getopt-display-help exn "nullproto" (current-error-port))
     (exit 1))))
