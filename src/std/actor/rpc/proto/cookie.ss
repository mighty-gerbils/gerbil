;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc cookie authen protocol

(import :std/net/bio
        :std/crypto/etc
        :std/crypto/digest
        :std/actor/xdr
        :std/actor/proto
        :std/actor/rpc/base
        :std/actor/rpc/proto/message
        :std/actor/rpc/proto/null)
(export rpc-cookie-proto
        rpc-generate-cookie!
        rpc-cookie-proto-challenge
        rpc-cookie-proto-challenge-respond)

(declare (not safe))

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
      (let (e (bio-read-u8 ibuf))
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
  (bio-write-u8 rpc-proto-challenge obuf)
  (let (challenge (random-bytes challenge-length))
    (bio-write-u32 challenge-length obuf)
    (bio-write-bytes challenge obuf)
    (bio-force-output obuf)
    (let* ((sz (bio-read-u32 ibuf))
           (_ (unless (fx= sz challenge-length)
                (raise-rpc-io-error 'rpc-proto-authen "challenge response size mismatch" sz)))
           (response (make-u8vector sz))
           (_ (bio-read-bytes response ibuf))
           (secret
            (let (digest (make-digest challenge-digest))
              (digest-update! digest cookie)
              (digest-update! digest challenge)
              (digest-final! digest))))
      (if (equal? response secret)
        (begin
          (bio-write-u8 rpc-proto-connect-accept obuf)
          (bio-force-output obuf))
        (begin
          (bio-write-u8 rpc-proto-connect-reject obuf)
          (bio-force-output obuf)
          (raise-rpc-io-error 'rpc-proto-authen "authentication failure" challenge response))))))

(def (rpc-cookie-proto-challenge-respond ibuf obuf cookie)
  (let* ((sz (bio-read-u32 ibuf))
         (_ (when (fx> sz 1024)
              (raise-rpc-io-error 'rpc-proto-authen "inordinately sized challenge" sz)))
         (challenge (make-u8vector sz))
         (_ (bio-read-bytes challenge ibuf))
         (digest (make-digest challenge-digest)))
    (digest-update! digest cookie)
    (digest-update! digest challenge)
    (let (response (digest-final! digest))
      (bio-write-u32 challenge-length obuf)
      (bio-write-bytes response obuf)
      (bio-force-output obuf))
    (let (e (bio-read-u8 ibuf))
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
