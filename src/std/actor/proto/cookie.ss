;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc cookie authen protocol
package: std/actor/proto

(import :std/net/server
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

(def (rpc-cookie-proto-accept ibuf obuf cookie)
  (rpc-proto-accept-e ibuf obuf rpc-proto-cookie
    (lambda (ibuf obuf)
      (rpc-cookie-proto-challenge ibuf obuf cookie)
      (values rpc-null-proto-read
              rpc-null-proto-write))))

(def (rpc-cookie-proto-connect ibuf obuf cookie)
  (rpc-proto-connect-e ibuf obuf rpc-proto-cookie
    (lambda (ibuf obuf)
      (let (e (server-input-read-u8 ibuf))
        (cond
         ((eq? e rpc-proto-challenge)
          (rpc-cookie-proto-challenge-respond ibuf obuf cookie)
          (values rpc-null-proto-read
                  rpc-null-proto-write))
         ((eof-object? e)
          (raise-rpc-error 'rpc-proto-connect "connection closed"))
         (else
          (raise-rpc-error 'rpc-proto-connect "bad hello" e)))))))

(def (rpc-cookie-proto-challenge ibuf obuf cookie)
  (server-output-write-u8 obuf rpc-proto-challenge)
  (let ((challenge (random-bytes challenge-length))
        (digest (make-digest challenge-digest))
        (u8port (open-output-u8vector)))
    (xdr-binary-write challenge u8port)
    (server-output-write obuf (get-output-u8vector u8port))
    (server-output-force obuf)
    (let* ((buf (make-u8vector 256))
           (rd (server-input-read* buf))
           (u8port (open-input-u8vector (subu8vector buf 0 rd)))
           (response (xdr-binary-read u8port values))
           (secret
            (begin
              (digest-update! digest cookie)
              (digest-update! digest challenge)
              (digest-final! digest))))
      (if (equal? response secret)
        (begin
          (server-output-write-u8 obuf rpc-proto-connect-accept)
          (server-output-force obuf))
        (begin
          (server-output-write-u8 obuf rpc-proto-connect-reject)
          (server-output-force obuf)
          (raise-rpc-error 'rpc-proto-authen "authentication failure" challenge response))))))

(def (rpc-cookie-proto-challenge-respond ibuf obuf cookie)
  (let* ((buf (make-u8vector 256))
         (rd (server-input-read* buf))
         (u8port (open-input-u8vector (subu8vector buf 0 rd)))
         (challenge (xdr-binary-read u8port values))
         (digest (make-digest challenge-digest)))
    (digest-update! digest cookie)
    (digest-update! digest challenge)
    (let* ((response (digest-final! digest))
           (u8port (open-output-u8vector)))
      (xdr-binary-write response u8port)
      (server-output-write obuf (get-output-u8vector u8port))
      (server-output-force obuf))
    (let (e (server-input-read-u8 ibuf))
      (cond
       ((eq? e rpc-proto-connect-accept)
        #!void)
       ((eof-object? e)
        (raise-rpc-error 'rpc-proto-authen "connection closed"))
       (else
        (raise-rpc-error 'rpc-proto-authen "authentication failure" e))))))

(def (rpc-cookie-proto (cookie-file "~/.gerbil/cookie"))
  (let (cookie (call-with-input-file cookie-file read))
    (if (u8vector? cookie)
      (make-!rpc-protocol
       (cut rpc-cookie-proto-connect <> <> cookie)
       (cut rpc-cookie-proto-accept <> <> cookie))
      (error "Invalid cookie; expected u8vector"
        cookie-file cookie))))

(def (rpc-generate-cookie! (cookie-file "~/.gerbil/cookie"))
  (let (cookie (random-bytes challenge-length))
    (call-with-output-file cookie-file
      (cut write cookie <>))))
