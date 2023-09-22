;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Socket server tests
(import :std/build-config)
(cond-expand
  (config-enable-deprecated
   (cond-expand
     ((or linux bsd)
      (import :gerbil/gambit
              :std/misc/threads
              :std/net/socket
              :std/net/socket/base
              :std/os/socket
              :std/error
              :std/sugar
              :std/test)
      (export server-test test-setup! test-cleanup!)

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
               (ssocket-send-all sock buf 0 len)
               (lp))))
         (catch (io-error? exn)
           (display-exception exn)
           (values))))

      (def (run-echo-server address)
        (def sock (ssocket-listen address))
        (let lp ()
          (spawn echo (ssocket-accept sock))
          (lp)))

      (def (start-echo-server! address)
        (parameterize ((current-socket-server #f))
          (start-socket-server!)
          (let (echo-server (spawn/group 'echo-server run-echo-server address))
            (values (current-socket-server) echo-server))))

      (def (stop-echo-server! server)
        (let (tgroup (thread-thread-group server))
          (thread-group-kill! tgroup)))

      (def (send+recv sock txt)
        (def len (string-length txt))
        (def buf (make-u8vector len))
        (ssocket-send-all sock (string->bytes txt))
        (ssocket-recv-all sock buf 0 len 5)
        (bytes->string buf))

      (def socket-server #f)
      (def echo-server #f)

      (def (test-setup!)
        (let-values (((my-socket-server my-echo-server)
                      (start-echo-server! server-address)))
          (set! socket-server my-socket-server)
          (set! echo-server my-echo-server)
          (thread-sleep! 0.2)))

      (def (test-cleanup!)
        (stop-echo-server! echo-server)
        (stop-socket-server! socket-server))

      (def server-test
        (test-suite "test :std/net/socket"
          (test-case "test socket-server"
            (def sock (ssocket-connect server-address))
            (check (send+recv sock "Hello") => "Hello")
            (check (send+recv sock "Test") => "Test")
            (check (send+recv sock "1.2.3.4.5") => "1.2.3.4.5")
            (ssocket-close sock))

          (test-case "test socket-server multiple connections"
            (def conn-1 (ssocket-connect server-address))
            (def conn-2 (ssocket-connect server-address))
            (check (send+recv conn-2 "BBB") => "BBB")
            (check (send+recv conn-1 "AAA") => "AAA")
            (ssocket-close conn-1)
            (ssocket-close conn-2))))))))
