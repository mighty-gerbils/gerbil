;;; -*- Gerbil -*-
;;; © vyzo
;;; actor TLS test
(import :std/test
        :std/os/temporaries
        :std/net/ssl/libssl
        ./tls)
(export tls-cert-test
        test-setup!
        test-cleanup!)

(def gerbil-path
  (make-temporary-file-name "gerbil"))

(def root-ca-pass "abc")
(def sub-ca-pass "123")
(def test-server1-id 'test-server1)
(def test-server2-id 'test-server2)
(def test-server1-cap '(admin))
(def test-server2-cap '(foo bar))

(def (test-setup!)
  (setenv "GERBIL_PATH" gerbil-path)
  (generate-actor-tls-root-ca! root-ca-pass)
  (generate-actor-tls-sub-ca! root-ca-pass sub-ca-pass)
  (generate-actor-tls-cert! sub-ca-pass
                            server-id: test-server1-id
                            capabilities: test-server1-cap)
  (generate-actor-tls-cert! sub-ca-pass
                            server-id: test-server2-id
                            capabilities: test-server2-cap))

(def (test-cleanup!)
  (when (file-exists? gerbil-path)
    (delete-file-or-directory gerbil-path #t))
  (setenv "GERBIL_PATH"))

(def tls-cert-test
  (test-suite "actor TLS certificates"
    (test-case "server id and capabilities"
      (def (check-cert server-id cap)
        (let (x509 (X509_read (path-expand "server.crt" (ensemble-tls-server-path server-id))))
          (check (actor-tls-certificate-id x509) => server-id)
          (check (actor-tls-certificate-cap x509) => cap)))

      (check-cert test-server1-id test-server1-cap)
      (check-cert test-server2-id test-server2-cap))))
