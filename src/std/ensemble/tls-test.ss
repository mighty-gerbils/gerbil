;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble tls context test
(import :std/test
        :std/crypto/pkey
        :std/net/ssl
        :std/net/address
        :std/io
        ./interface
        ./ucan/did
        ./tls)
(export tls-context-test)

(def tls-context-test
  (test-suite "tls context"
    (test-case "make a connection"
      (def privk1 (generate-ed25519-key))
      (def privk2 (generate-ed25519-key))
      (def host1  "foo.internal")
      (def host2  "bar.internal")
      (def ctx1 (make-tls-context host1 privk1))
      (def ctx2 (make-tls-context host2 privk2))
      (def addr (InetAddress localhost4 20001))

      (def listener (ssl-listen addr ctx1))
      (def server-conn-thread
        (spawn ServerSocket-accept listener))
      (def client-conn-thread
        (spawn ssl-connect addr context: ctx2 host: host1))

      (def server-conn
        (thread-join! server-conn-thread))
      (def client-conn
        (thread-join! client-conn-thread))

      (check (tls-certificate->host-id (TLS-peer-certificate server-conn))
             => (HostID host2 (private-key->did privk2)))
      (check (tls-certificate->host-id (TLS-peer-certificate client-conn))
             => (HostID host1 (private-key->did privk1)))

      (Closer-close listener)
      (Closer-close server-conn)
      (Closer-close client-conn))))
