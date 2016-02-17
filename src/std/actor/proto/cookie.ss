;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc cookie authen protocol
package: std/actor/proto

(import :gerbil/gambit/ports
        :gerbil/gambit/hvectors
        :std/net/address
        :std/crypto/etc
        :std/crypto/digest
        :std/actor/xdr
        :std/actor/proto
        :std/actor/proto/message
        :std/actor/proto/null
        )

(export rpc-cookie-proto
        rpc-generate-cookie!
        rpc-cookie-proto-challenge
        rpc-cookie-proto-challenge-respond)

(def challenge-digest digest::sha256)
(def challenge-length (digest-size challenge-digest))

(def (rpc-cookie-proto-accept sock cookie)
  (rpc-proto-accept-e sock rpc-proto-cookie
    (lambda (sock)
      (rpc-cookie-proto-challenge sock cookie)
      (values rpc-null-proto-read
              rpc-null-proto-write))))

(def (rpc-cookie-proto-connect sock cookie)
  (rpc-proto-connect-e sock rpc-proto-cookie
    (lambda (sock)
      (let (e (read-u8 sock))
        (cond
         ((eq? e rpc-proto-challenge)
          (rpc-cookie-proto-challenge-respond sock cookie)
          (values rpc-null-proto-read
                  rpc-null-proto-write))
         ((eof-object? e)
          (raise-rpc-error 'rpc-proto-connect "connection closed"))
         (else
          (raise-rpc-error 'rpc-proto-connect "bad hello" e sock)))))))

(def (rpc-cookie-proto-challenge sock cookie)
  (write-u8 rpc-proto-challenge sock)
  (let ((challenge (random-bytes challenge-length))
        (digest (make-digest challenge-digest)))
    (xdr-binary-write challenge sock)
    (force-output sock)
    (let* ((response (xdr-binary-read sock values))
           (secret
            (begin
              (digest-update! digest cookie)
              (digest-update! digest challenge)
              (digest-final! digest))))
      (if (equal? response secret)
        (write-u8/force-output rpc-proto-connect-accept sock)
        (raise-rpc-error 'rpc-proto-authen "authentication failure" challenge response)))))

(def (rpc-cookie-proto-challenge-respond sock cookie)
  (let* ((challenge (xdr-binary-read sock values))
         (digest (make-digest challenge-digest)))
    (digest-update! digest cookie)
    (digest-update! digest challenge)
    (let (response (digest-final! digest))
      (xdr-binary-write response sock)
      (force-output sock))
    (let (e (read-u8 sock))
      (cond
       ((eq? e rpc-proto-connect-accept)
        #!void)
       ((eof-object? e)
        (raise-rpc-error 'rpc-proto-authen "connection closed"))
       (else
        (raise-rpc-error 'rpc-proto-authen "authentication failure" e sock))))))

(def (rpc-cookie-proto (cookie-file "~/.gerbil/cookie"))
  (let (cookie (call-with-input-file cookie-file read))
    (if (u8vector? cookie)
      (make-!rpc-protocol
       rpc-null-proto-open-client
       rpc-null-proto-open-server
       (cut rpc-cookie-proto-connect <> cookie)
       (cut rpc-cookie-proto-accept <> cookie))
      (error "Invalid cookie; expected u8vector"
        cookie-file cookie))))

(def (rpc-generate-cookie! (cookie-file "~/.gerbil/cookie"))
  (let (cookie (random-bytes challenge-length))
    (call-with-output-file cookie-file
      (cut write cookie <>))))
