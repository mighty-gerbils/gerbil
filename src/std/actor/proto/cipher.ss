;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc cookie authen protocol
package: std/actor/proto

(import :gerbil/gambit/ports
        :gerbil/gambit/hvectors
        :std/net/address
        :std/crypto/etc
        :std/crypto/digest
        :std/crypto/cipher
        :std/crypto/dh
        :std/crypto/bn
        :std/actor/xdr
        :std/actor/proto
        :std/actor/proto/message
        :std/actor/proto/null
        :std/actor/proto/cookie
        )
(export rpc-cipher-proto
        rpc-cookie-cipher-proto
        rpc-cipher-proto-key-exchange)

;; aes-128-gcm with sha256 hmac
(def ::digest-type        digest::sha256)
(def ::digest-size       (digest-size  ::digest-type))
(def ::cipher-type        cipher::aes-128-cbc)
(def ::cipher-key-length (cipher-key-length ::cipher-type))
(def ::cipher-iv-length  (cipher-iv-length  ::cipher-type))
(def ::DH::new            DH-get-1024-160)

(def (rpc-cipher-proto-key-exchange sock)
  (write-u8 rpc-proto-key-exchange sock)
  (let* ((dh   (::DH::new))
         (_    (DH-generate-key dh))
         (pubk (DH-pub-key dh)))
    (xdr-binary-write (BN->bytes pubk) sock)
    (force-output sock)
    (let (e (read-u8 sock))
      (cond
       ((eq? e rpc-proto-key-exchange)
        (let (peerk (xdr-binary-read sock values))
          (DH-compute-key dh (bytes->BN peerk))))
       ((eof-object? e)
        (raise-rpc-error 'rpc-proto-key-exchange "connection closed" sock))
       (else
        (raise-rpc-error 'rpc-proto-key-exchange "key exchange error" e sock))))))

(def (rpc-cipher-proto-read sock secret)
  (let (e (read-u8 sock))
    (cond
     ((eq? e rpc-proto-keep-alive)
      #!void)
     ((eq? e rpc-proto-message)
      (let* ((digest (make-digest ::digest-type))
             (cipher (make-cipher ::cipher-type))
             (key    (subu8vector secret 0 ::cipher-key-length))
             (hmac   (make-u8vector ::digest-size))
             (rd     (read-subu8vector hmac 0 ::digest-size sock))
             (_      (when (fx< rd ::digest-size)
                       (raise-rpc-error 'rpc-proto-read "premature port end")))
             (iv     (make-u8vector ::cipher-iv-length))
             (rd     (read-subu8vector iv 0 ::cipher-iv-length sock))
             (_      (when (fx< rd ::cipher-iv-length)
                       (raise-rpc-error 'rpc-proto-read "premature port end")))
             (size   (read-u32 sock))
             (_      (unless (fx< size rpc-proto-message-max-length)
                       (raise-rpc-error 'rpc-proto-read "message too large" size)))
             (ctext  (make-u8vector size))
             (rd     (read-subu8vector ctext 0 size sock))
             (_      (when (fx< rd size)
                       (raise-rpc-error 'rpc-proto-read "premature port end")))
             (_      (digest-update! digest secret))
             (_      (digest-update! digest iv))
             (_      (digest-update! digest ctext))
             (hmac*  (digest-final! digest))
             (_      (unless (equal? hmac hmac*)
                       (raise-rpc-error 'rpc-proto-read "HMAC failure" sock))))
        (decrypt cipher key iv ctext)))
     ((eof-object? e) e)
     (else
      (raise-rpc-error 'rpc-proto-read "bad message" sock e)))))


(def (rpc-cipher-proto-write obj sock secret)
  (cond
   ((eq? obj #!void)
    (write-u8/force-output rpc-proto-keep-alive sock))
   ((u8vector? obj)
    (write-u8 rpc-proto-message sock)
    (let* ((digest (make-digest ::digest-type))
           (cipher (make-cipher ::cipher-type))
           (key    (subu8vector secret 0 ::cipher-key-length))
           (iv     (random-bytes ::cipher-iv-length))
           (ctext  (encrypt cipher key iv obj))
           (_      (digest-update! digest secret))
           (_      (digest-update! digest iv))
           (_      (digest-update! digest ctext))
           (hmac   (digest-final! digest)))
      (write-subu8vector hmac 0 ::digest-size sock)
      (write-subu8vector iv 0 ::cipher-iv-length sock)
      (write-u32 (u8vector-length ctext) sock)
      (write-subu8vector ctext 0 (u8vector-length ctext) sock)
      (force-output sock)))
   (else
    (raise-rpc-error 'rpc-proto-write "unexpected object" obj))))

(def (rpc-cipher-proto-accept sock)
  (rpc-proto-accept-e sock rpc-proto-cipher
    (lambda (sock)
      (let (secret (rpc-cipher-proto-key-exchange sock))
            (values
              (cut rpc-cipher-proto-read <> secret)
              (cut rpc-cipher-proto-write <> <> secret))))))

(def (rpc-cipher-proto-connect sock)
  (rpc-proto-connect-e sock rpc-proto-cipher
    (lambda (sock)
      (let (secret (rpc-cipher-proto-key-exchange sock))
        (values
          (cut rpc-cipher-proto-read <> secret)
          (cut rpc-cipher-proto-write <> <> secret))))))

(def (rpc-cookie-cipher-proto-accept sock cookie)
  (rpc-proto-accept-e sock rpc-proto-cookie-cipher
    (lambda (sock)
      (rpc-cookie-proto-challenge sock cookie)
      (let (secret (rpc-cipher-proto-key-exchange sock))
        (values
          (cut rpc-cipher-proto-read <> secret)
          (cut rpc-cipher-proto-write <> <> secret))))))

(def (rpc-cookie-cipher-proto-connect sock cookie)
  (rpc-proto-connect-e sock rpc-proto-cookie-cipher
    (lambda (sock)
      (let (e (read-u8 sock))
        (cond
         ((eof-object? e)
          (raise-rpc-error 'rpc-proto-connect "connect closed"))
         ((eq? e rpc-proto-challenge)
          (rpc-cookie-proto-challenge-respond sock cookie)
          (let (secret (rpc-cipher-proto-key-exchange sock))
            (values
              (cut rpc-cipher-proto-read <> secret)
              (cut rpc-cipher-proto-write <> <> secret))))
         (else
          (raise-rpc-error 'rpc-proto-connect "bad hello" e sock)))))))

(def (rpc-cipher-proto)
  (make-!rpc-protocol
   rpc-null-proto-open-client
   rpc-null-proto-open-server
   rpc-cipher-proto-accept
   rpc-cipher-proto-connect))

(def (rpc-cookie-cipher-proto (cookie-file "~/.gerbil/cookie"))
  (let (cookie (call-with-input-file cookie-file read))
    (if (u8vector? cookie)
      (make-!rpc-protocol
       rpc-null-proto-open-client
       rpc-null-proto-open-server
       (cut rpc-cookie-cipher-proto-connect <> cookie)
       (cut rpc-cookie-cipher-proto-accept <> cookie))
      (error "Invalid cookie; expected u8vector"
        cookie-file cookie))))
