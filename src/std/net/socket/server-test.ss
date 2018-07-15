;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Socket server tests

(import :gerbil/gambit/threads
        :std/misc/threads
        :std/net/socket
        :std/net/socket/base
        :std/os/socket
        :std/error
        :std/sugar
        :std/test)
(export socket-server-test)

(def socket-server-test
  (test-suite "test :std/net/socket"

    (def server-address "localhost:4242")

    (def (echo sock)
      (def buf (make-u8vector 256))
      (try
       (let lp ()
         (def len (ssocket-recv sock buf))
         (if (= len 0)
           (begin
             (ssocket-close sock)
             (values))
           (begin
             (ssocket-send sock buf 0 len)
             (lp))))
       (catch (io-error? exn)
         (values))))

    (def (run-echo-server address)
      (def sock (ssocket-listen address))
      (let lp ()
        (spawn/group 'echo-server echo (ssocket-accept sock))
        (lp)))

    (def (start-echo-server! address)
      (parameterize ((current-socket-server #f))
        (start-socket-server!)
        (let (echo-server (spawn/group 'echo-server run-echo-server address))
          (values (current-socket-server) echo-server))))

    (def (stop-echo-server! server)
      (let (tgroup (thread-thread-group server))
        (thread-group-kill! tgroup)))

    (def (receive-data sock)
      (def buf (make-u8vector 512))
      (def len (ssocket-recv sock buf))
      (bytes->string (subu8vector buf 0 len)))

    (define-values (socket-server echo-server)
      (start-echo-server! server-address))

    (thread-sleep! 0.2)

    (test-case "test socket-server"
      (def sock (ssocket-connect server-address))
      (ssocket-send sock (string->bytes "Hello"))
      (check (receive-data sock) => "Hello")
      (ssocket-close sock))

    (test-case "test socket-server multiple connections"
      (def conn-1 (ssocket-connect server-address))
      (def conn-2 (ssocket-connect server-address))
      (ssocket-send conn-2 (string->bytes "BBB"))
      (ssocket-send conn-1 (string->bytes "AAA"))
      (check (receive-data conn-1) => "AAA")
      (check (receive-data conn-2) => "BBB")
      (ssocket-close conn-1)
      (ssocket-close conn-2))

    (thread-sleep! 0.2)

    (stop-echo-server! echo-server)
    (stop-socket-server! socket-server)))
