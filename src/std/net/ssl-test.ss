;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL tests
(import :gerbil/gambit
        :std/error
        :std/sugar
        :std/test
        :std/io
        :std/net/ssl
        :std/net/httpd
        :std/net/request
        :std/misc/process
        :std/text/utf8
        :std/os/temporaries)
(export ssl-client-test
        ssl-server-test
        http-client-test
        http-server-test
        test-setup!
        test-cleanup!)

(def test-directory
  (make-temporary-file-name "ssl-test"))
(def test-private-key
  (path-expand "test.priv.pem" test-directory))
(def test-certificate
  (path-expand "test.cert" test-directory))
(def test-server-name
  "www.example.local")
(def test-server-address
  "127.0.0.1:39999")

(def test-csr-template #<<END
[req]
prompt             = no
distinguished_name = dn
req_extensions     = ext

[dn]
CN                 = www.example.local
emailAddress       = gerbil@example.local
O                  = Mighty Gerbil
L                  = Internet
C                  = UN

[ext]
subjectAltName       = DNS:www.example.local
END
  )

(def (test-setup!)
  (create-directory* test-directory)
  (call-with-output-file (path-expand "test.conf" test-directory)
    (lambda (outp)
      (display test-csr-template outp)))
  ;; create self-signed certificate
  (invoke "openssl"
          ["genpkey"
           "-quiet"
           "-algorithm" "RSA"
           "-pkeyopt" "rsa_keygen_bits:2048"
           "-out" test-private-key])
  (invoke "openssl"
          ["req" "-new" "-batch"
           "-key" test-private-key
           "-config" (path-expand "test.conf" test-directory)
           "-out" (path-expand "test.csr" test-directory)])
  (invoke "openssl"
          ["x509" "-req"
           "-days" "30"
           "-in" (path-expand "test.csr" test-directory)
           "-signkey" test-private-key
           "-out" test-certificate]))

(def (test-cleanup!)
  (when (file-exists? test-directory)
    (delete-file-or-directory test-directory #t)))

(def ssl-client-test
  (test-suite "ssl client"
    (def request
      (string->utf8
       "GET / HTTP/1.1\r\n\r\nUser-Agent: test\r\nConnection: close\r\nAccept: */*\r\n\r\n"))

    (def (test-request-ok addr (ctx (default-client-ssl-context)))
      (let (sock (ssl-connect addr 5 context: ctx))
        (Writer-write (SSLSocket-writer sock) request)
        (let (buf (make-u8vector 8))
          (Reader-read (SSLSocket-reader sock) buf)
          (check (utf8->string buf) => "HTTP/1.1")
          (SSLSocket-close sock))))

    (def (test-request-error addr)
      (check-exception (ssl-connect addr 5) ssl-error?))

    (test-case "ssl connection: google"
      (test-request-ok "www.google.com:443"))

    (test-case "ssl connection failure: badssl"
      (test-request-error "expired.badssl.com:443")
      (test-request-error "wrong.host.badssl.com:443")
      (test-request-error "self-signed.badssl.com:443")
      (test-request-error "untrusted-root.badssl.com:443")
      (test-request-error "revoked.badssl.com:443"))

    (test-case "ssl insecure connection: badssl"
      (test-request-ok "expired.badssl.com:443" (insecure-client-ssl-context))
      (test-request-ok "wrong.host.badssl.com:443" (insecure-client-ssl-context))
      (test-request-ok "self-signed.badssl.com:443" (insecure-client-ssl-context))
      (test-request-ok "untrusted-root.badssl.com:443" (insecure-client-ssl-context))
      (test-request-ok "revoked.badssl.com:443" (insecure-client-ssl-context)))))

(def ssl-server-test
  (test-suite "ssl server"
    (def (test-server cert privk)
      (let* ((srv-ctx (make-server-ssl-context cert privk))
             (srv-sock (ssl-listen test-server-address context: srv-ctx))
             (cli-sock (ServerSocket-accept srv-sock))
             (buf (make-u8vector 1024))
             (r   (Reader-read (SSLSocket-reader cli-sock) buf))
             (greet (utf8->string (subu8vector buf 0 r)))
             (reply (string-append "hello, " greet)))
        (Writer-write (SSLSocket-writer cli-sock) (string->utf8 reply))
        (SSLSocket-close cli-sock)
        (ServerSocket-close srv-sock)
        (void)))

    (def (test-client ctx)
      (let (sock (ssl-connect test-server-address 5
                              context: ctx
                              host: test-server-name))
        (Writer-write (SSLSocket-writer sock) (string->utf8 "world"))
        (let (buf (make-u8vector 12))
          (Reader-read (SSLSocket-reader sock) buf)
          (check (utf8->string buf) => "hello, world"))
        (SSLSocket-close sock)))

    (test-case "self-signed certificate"
      (let (srv (spawn test-server test-certificate test-private-key))
        (thread-sleep! .1)
        (test-client (insecure-client-ssl-context))
        (check (thread-join! srv) => (void))))))

(def http-client-test
  (test-suite "https client"
    (test-case  "https request: www.google.com"
      (let (req (http-get "https://www.google.com"))
        (check (request-status req) => 200)
        (request-close req)))
    (test-case "https request failure: badssl"
      (check-exception (http-get "https://expired.badssl.com") ssl-error?))
    (test-case "https request insecure: badssl"
      (let (req (http-get "https://www.google.com" ssl-context: (insecure-client-ssl-context)))
        (check (request-status req) => 200)
        (request-close req)))))

(def http-server-test
  (test-suite "https server"
    (test-case "self-signed certificate"
      (let* ((ssl-ctx (make-server-ssl-context test-certificate test-private-key))
             (httpd (start-http-server! [ssl:  test-server-address ssl-ctx])))
        (check (http-register-handler httpd "/"
                 (lambda (req res)
                   (http-response-write res 200 '(("Content-Type" . "text/plain"))
                                        "hello, ssl")))
               => (void))
        (let (req (http-get (string-append "https://" test-server-address)
                            ssl-context: (insecure-client-ssl-context))) ; self-signed cert
          (check (request-status req) => 200)
          (check (request-text req) => "hello, ssl")
          (request-close req))))))
