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
      (let (e (server-buffer-read-u8 ibuf))
        (cond
         ((eq? e rpc-proto-challenge)
          (rpc-cookie-proto-challenge-respond ibuf obuf cookie)
          (values rpc-null-proto-read
                  rpc-null-proto-write))
         ((eof-object? e)
          (raise-rpc-io-error 'rpc-proto-connect "connection closed"))
         (else
          (raise-rpc-io-error 'rpc-proto-connect "bad hello" e)))))))

(def (rpc-cookie-proto-challenge ibuf obuf cookie)
  (server-buffer-write-u8 rpc-proto-challenge obuf)
  (let (challenge (random-bytes challenge-length))
    (server-buffer-write-u32 challenge-length obuf)
    (server-buffer-write-bytes challenge obuf)
    (server-buffer-force-output obuf)
    (let* ((sz (server-buffer-read-u32 ibuf))
           (_ (unless (fx= sz challenge-length)
                (raise-rpc-io-error 'rpc-proto-authen "challenge response size mismatch" sz)))
           (response (make-u8vector sz))
           (_ (server-buffer-read-bytes response ibuf))
           (secret
            (let (digest (make-digest challenge-digest))
              (digest-update! digest cookie)
              (digest-update! digest challenge)
              (digest-final! digest))))
      (if (equal? response secret)
        (begin
          (server-buffer-write-u8 rpc-proto-connect-accept obuf)
          (server-buffer-force-output obuf))
        (begin
          (server-buffer-write-u8 rpc-proto-connect-reject obuf)
          (server-buffer-force-output obuf)
          (raise-rpc-io-error 'rpc-proto-authen "authentication failure" challenge response))))))

(def (rpc-cookie-proto-challenge-respond ibuf obuf cookie)
  (let* ((sz (server-buffer-read-u32 ibuf))
         (_ (when (fx> sz 1024)
              (raise-rpc-io-error 'rpc-proto-authen "inordinately sized challenge" sz)))
         (challenge (make-u8vector sz))
         (_ (server-buffer-read-bytes challenge ibuf))
         (digest (make-digest challenge-digest)))
    (digest-update! digest cookie)
    (digest-update! digest challenge)
    (let (response (digest-final! digest))
      (server-buffer-write-u32 challenge-length obuf)
      (server-buffer-write-bytes response obuf)
      (server-buffer-force-output obuf))
    (let (e (server-buffer-read-u8 ibuf))
      (cond
       ((eq? e rpc-proto-connect-accept)
        #!void)
       ((eof-object? e)
        (raise-rpc-io-error 'rpc-proto-authen "connection closed"))
       (else
        (raise-rpc-io-error 'rpc-proto-authen "authentication failure" e))))))

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
