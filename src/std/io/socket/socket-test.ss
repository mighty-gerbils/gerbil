;;; -*- Gerbil -*-
;;; © vyzo
;;; socket api tests
(import :std/error
        :std/test
        :std/net/address
        :std/net/address/parser
        :std/time/timeout
        :std/os/sockopt
        ../interface
        ../util
        ../tempfile
        ./api)
(export stream-socket-test
        datagram-socket-test)

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
    (Writer-close writer)))

(def (do-echo sock msg (timeo-in #f))
  (let* ((input (string->utf8 msg))
         (_ (when timeo-in
              (StreamSocket-set-input-timeout! sock (IOTimeout timeo-in))))
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
  (Socket-set-input-timeout! sock (IOTimeout 1))
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

(def echo-server-address
  (string->address "inet4:127.0.0.1:20001"))
(def echo-server-multicast-ip-address
  (string->ip4-address "224.100.100.100"))
(def echo-server-multicast-address
  (InetAddress echo-server-multicast-ip-address 20001))
(def echo-server-address-any
  (InetAddress inaddr-any4 20001))
(def echo-client-address-any
  (InetAddress inaddr-any4 0))

(def stream-socket-test
  (test-suite "stream sockets"
    (test-case "tcp echo"
      (let* ((input "the quick brown fox jumped over the fence")
             (srv (tcp-listen echo-server-address))
             (server (spawn/name 'echo-server echo-server srv))
             (_ (thread-yield!))
             (cli (tcp-connect echo-server-address)))
        (check (do-echo cli input) => input)
        (Socket-close cli)
        (Socket-close srv)
        (check-exception (thread-join! srv) true)))
    (test-case "unix echo"
      (call-with-temporary-file-name "echo"
        (lambda (path)
          (let* ((input "the quick brown fox jumped over the fence")
                 (addr (UnixAddress path))
                 (srv (unix-listen addr))
                 (server (spawn/name 'echo-server echo-server srv))
                 (_ (thread-yield!))
                 (cli (unix-connect addr)))
        (check (do-echo cli input) => input)
        (Socket-close cli)
        (Socket-close srv)
        (check-exception (thread-join! srv) true)))))
    (test-case "timeout"
      (let* ((input "the quick brown fox jumped over the fence")
             (srv (tcp-listen echo-server-address))
             (_ (thread-yield!))
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
             (_ (thread-yield!))
             (cli (udp-socket)))
        (check (do-echo-udp cli input echo-server-address) => input)
        (Socket-close cli)
        (Socket-close srv)
        (check-exception (thread-join! srv) true)))
    (test-case "connected udp echo"
      (let* ((input "the quick brown fox jumped over the fence")
             (srv (udp-socket echo-server-address))
             (server (spawn/name 'echo-server-udp echo-server-udp srv))
             (_ (thread-yield!))
             (cli (udp-socket)))
        (check (do-echo-udp/connect cli input echo-server-address) => input)
        (Socket-close cli)
        (Socket-close srv)
        (check-exception (thread-join! srv) true)))
    (test-case "multicast echo"
      (let* ((input "the quick brown fox jumped over the fence")
             (srv (udp-multicast-socket echo-server-multicast-ip-address echo-server-address-any))
             (server (spawn/name 'echo-server-udp echo-server-udp srv))
             (_ (thread-yield!))
             (cli (udp-socket)))
        (Socket-setsockopt cli IPPROTO_IP.IP_MULTICAST_TTL 1)
        (check (do-echo-udp cli input echo-server-multicast-address) => input)
        (Socket-close cli)
        (Socket-close srv)
        (check-exception (thread-join! srv) true)))))
