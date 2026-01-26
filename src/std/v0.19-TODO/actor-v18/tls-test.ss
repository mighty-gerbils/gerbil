;;; -*- Gerbil -*-
;;; © vyzo
;;; actor TLS test
(import :std/test
        :std/os/temporaries
        :std/net/ssl/libssl
        :std/io
        :std/logger
        ./tls
        ./server-identifier
        "test-util")
(export actor-tls-test
        test-setup!
        test-cleanup!)

(def gerbil-path
  (make-temporary-file-name "gerbil"))

(def root-ca-pass "abc")
(def sub-ca-pass "123")
(def test-server1-id '(test-server1 . /))
(def test-server2-id '(test-server2 . /))
(def test-server1-cap '(shutdown foo))
(def test-server2-cap '(shutdown bar))

(def (test-setup!)
  ;; uncomment this if you are debugging test failures
  ;; (current-logger-options 'VERBOSE)
  (setenv "GERBIL_PATH" gerbil-path)
  (generate-actor-tls-root-ca! root-ca-pass)
  (generate-actor-tls-sub-ca! root-ca-pass sub-ca-pass)
  (generate-actor-tls-cafiles!)
  (generate-actor-tls-cert! sub-ca-pass
                            server-id: (car test-server1-id)
                            capabilities: test-server1-cap)
  (generate-actor-tls-cert! sub-ca-pass
                            server-id: (car test-server2-id)
                            capabilities: test-server2-cap))

(def (test-cleanup!)
  ;; uncomment this if you uncommented above
  ;; (current-logger-options 'WARN)
  (when (file-exists? gerbil-path)
    (delete-file-or-directory gerbil-path #t))
  (setenv "GERBIL_PATH"))

(def actor-tls-test
  (test-suite "actor TLS"
    (test-case "certificates"
      (def (check-cert server-id cap)
        (let (x509 (X509_read (path-expand "server.crt" (ensemble-tls-server-path server-id))))
          (check (actor-tls-certificate-server-id x509) => server-id)
          (check (actor-tls-certificate-capabilities x509) => cap)))

      (check-cert test-server1-id test-server1-cap)
      (check-cert test-server2-id test-server2-cap))

    (test-case "TLS IPC"
      (let* ((addr1 (cons localhost4 33333))
             (addr2 (cons localhost4 44444)))
        (test-ipc test-server1-id [tls: addr1]
                  test-server2-id [tls: addr2]
                  #f)))))
