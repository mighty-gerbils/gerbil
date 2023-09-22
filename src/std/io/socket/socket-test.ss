;;; -*- Gerbil -*-
;;; © vyzo
;;; socket api tests
(import :gerbil/gambit
        :std/error
        :std/sugar
        :std/test
        :std/text/utf8
        :std/os/temporaries
        ../interface
        ../util
        ./api)
(export stream-socket-test
        datagram-socket-test
        test-setup! test-cleanup!)

(def (test-setup!)
  unhandled-actor-exception-hook-set! dump-stack-trace!)
(def (test-cleanup!)
  unhandled-actor-exception-hook-set! #f)

(def (echo-server srv)
  (let lp ()
    (let (cli (ServerSocket-accept srv))
      (spawn/name 'echo-server-handler echo-server-handler cli)
      (lp))))

(def (echo-server-handler cli)
  (let ((reader (StreamSocket-reader cli))
        (writer (StreamSocket-writer cli)))
    (io-copy! reader writer)
    (Reader-close reader)
    (Reader-close writer)))

(def (do-echo sock msg (timeo-in #f))
  (let* ((input (string->utf8 msg))
         (_ (when timeo-in
              (StreamSocket-set-input-timeout! sock timeo-in)))
         (reader (StreamSocket-reader sock))
         (writer (StreamSocket-writer sock))
         (wrote (Writer-write writer input))
         (_ (Writer-close writer))
         (buffer (make-u8vector wrote))
         (read (Reader-read reader buffer 0 wrote wrote))
         (_ (Reader-close reader)))
    (utf8->string buffer)))

(def (echo-server-udp sock)
  (let ((peer (box #f))
        (buffer (make-u8vector 2048)))
    (let lp ()
      (let (read (DatagramSocket-recvfrom sock peer buffer))
        (DatagramSocket-sendto sock (unbox peer) buffer 0 read)
        (lp)))))

(def (do-echo-udp sock input peer)
  (let* ((wrote (DatagramSocket-sendto sock peer (string->utf8 input)))
         (buffer (make-u8vector wrote))
         (read (DatagramSocket-recvfrom sock (box #f) buffer)))
    (utf8->string buffer)))

(def (do-echo-udp/connect sock input peer)
  (DatagramSocket-connect sock peer)
  (let* ((wrote (DatagramSocket-send sock (string->utf8 input)))
         (buffer (make-u8vector wrote))
         (read (DatagramSocket-recv sock buffer)))
    (utf8->string buffer)))

(def echo-server-address "127.0.0.1:20001")
(def echo-server-multicast-ip-address "224.100.100.100")
(def echo-server-multicast-address (cons echo-server-multicast-ip-address 20001))
(def echo-server-address-any (cons inaddr-any4 20001))
(def echo-client-address-any (cons inaddr-any4 0))

(def stream-socket-test
  (test-suite "stream sockets"
    (test-case "tcp echo"
      (let* ((input "the quick brown fox jumped over the fence")
             (srv (tcp-listen echo-server-address))
             (server (spawn/name 'echo-server echo-server srv))
             (cli (tcp-connect echo-server-address)))
        (check (do-echo cli input) => input)
        (Socket-close cli)
        (Socket-close srv)
        (check-exception (thread-join! srv) true)))
    (test-case "unix echo"
      (call-with-temporary-file-name "echo"
        (lambda (path)
          (let* ((input "the quick brown fox jumped over the fence")
                 (srv (unix-listen path))
                 (server (spawn/name 'echo-server echo-server srv))
                 (cli (unix-connect path)))
        (check (do-echo cli input) => input)
        (Socket-close cli)
        (Socket-close srv)
        (check-exception (thread-join! srv) true)))))
    (test-case "timeout"
      (let* ((input "the quick brown fox jumped over the fence")
             (srv (tcp-listen echo-server-address))
             (cli (tcp-connect echo-server-address)))
        (check-exception (do-echo cli input 1.0) timeout-error?)
        (Socket-close cli)
        (Socket-close srv)))))

(def datagram-socket-test
  (test-suite "datagram sockets"
    (test-case "udp echo"
      (let* ((input "the quick brown fox jumped over the fence")
             (srv (udp-socket echo-server-address))
             (server (spawn/name 'echo-server-udp echo-server-udp srv))
             (cli (udp-socket)))
        (check (do-echo-udp cli input echo-server-address) => input)
        (Socket-close cli)
        (Socket-close srv)
        (check-exception (thread-join! srv) true)))
    (test-case "connected udp echo"
      (let* ((input "the quick brown fox jumped over the fence")
             (srv (udp-socket echo-server-address))
             (server (spawn/name 'echo-server-udp echo-server-udp srv))
             (cli (udp-socket)))
        (check (do-echo-udp/connect cli input echo-server-address) => input)
        (Socket-close cli)
        (Socket-close srv)
        (check-exception (thread-join! srv) true)))
    (test-case "multicast echo"
      (let* ((input "the quick brown fox jumped over the fence")
             (srv (udp-multicast-socket echo-server-multicast-ip-address echo-server-address-any))
             (server (spawn/name 'echo-server-udp echo-server-udp srv))
             (cli (udp-socket)))
        (check (do-echo-udp cli input echo-server-multicast-address) => input)
        (Socket-close cli)
        (Socket-close srv)
        (check-exception (thread-join! srv) true)))))
