;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL tests
(import :std/sugar
        :std/test
        :std/io
        :std/net/ssl
        :std/text/utf8)
(export ssl-client-test)

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
