;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc cookie authen protocol
package: std/actor/proto

(import :std/net/server
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

(def (rpc-cipher-proto-key-exchange ibuf obuf)
  (server-output-write-u8 obuf rpc-proto-key-exchange)
  (let* ((dh   (::DH::new))
         (_    (DH-generate-key dh))
         (pubk (DH-pub-key dh))
         (u8port (open-output-u8vector)))
    (xdr-binary-write (BN->bytes pubk) u8port)
    (server-output-write obuf (get-output-u8vector u8port))
    (server-output-force obuf)
    (let (e (server-input-read-u8 ibuf))
      (cond
       ((eq? e rpc-proto-key-exchange)
        (let* ((buf (make-u8vector 1024))
               (rd (server-input-read* ibuf buf))
               (u8port (open-input-u8vector (subu8vector buf 0 rd)))
               (peerk (xdr-binary-read u8port values)))
          (DH-compute-key dh (bytes->BN peerk))))
       ((eof-object? e)
        (raise-rpc-error 'rpc-proto-key-exchange "connection closed"))
       (else
        (raise-rpc-error 'rpc-proto-key-exchange "key exchange error" e))))))

(def (rpc-cipher-proto-read ibuf obuf secret)
  (let (e (server-input-read-u8 ibuf))
    (cond
     ((eq? e rpc-proto-keep-alive)
      #!void)
     ((eq? e rpc-proto-message)
      (let* ((digest (make-digest ::digest-type))
             (cipher (make-cipher ::cipher-type))
             (key    (subu8vector secret 0 ::cipher-key-length))
             (hmac   (make-u8vector ::digest-size))
             (_      (server-input-read ibuf hmac))
             (iv     (make-u8vector ::cipher-iv-length))
             (_      (server-input-read ibuf iv))
             (size   (server-input-read-u32 ibuf))
             (_      (unless (fx< size rpc-proto-message-max-length)
                       (raise-rpc-error 'rpc-proto-read "message too large" size)))
             (ctext  (make-u8vector size))
             (_      (server-input-read ibuf ctext))
             (_      (digest-update! digest secret))
             (_      (digest-update! digest iv))
             (_      (digest-update! digest ctext))
             (hmac*  (digest-final! digest))
             (_      (unless (equal? hmac hmac*)
                       (raise-rpc-error 'rpc-proto-read "HMAC failure"))))
        (decrypt cipher key iv ctext)))
     ((eof-object? e) e)
     (else
      (raise-rpc-error 'rpc-proto-read "bad message" e)))))

(def (rpc-cipher-proto-write obuf obj secret)
  (cond
   ((eq? obj #!void)
    (server-output-write-u8 obuf rpc-proto-keep-alive)
    (server-output-force obuf))
   ((u8vector? obj)
    (server-output-write-u8 obuf rpc-proto-message)
    (let* ((digest (make-digest ::digest-type))
           (cipher (make-cipher ::cipher-type))
           (key    (subu8vector secret 0 ::cipher-key-length))
           (iv     (random-bytes ::cipher-iv-length))
           (ctext  (encrypt cipher key iv obj))
           (_      (digest-update! digest secret))
           (_      (digest-update! digest iv))
           (_      (digest-update! digest ctext))
           (hmac   (digest-final! digest)))
      (server-output-write obuf hmac)
      (server-output-write obuf iv)
      (server-output-write-u32 obuf (u8vector-length ctext))
      (server-output-write obuf ctext)
      (server-output-force obuf)))
   (else
    (raise-rpc-error 'rpc-proto-write "unexpected object" obj))))

(def (rpc-cipher-proto-accept ibuf obuf)
  (rpc-proto-accept-e ibuf obuf rpc-proto-cipher
    (lambda (ibuf obuf)
      (let (secret (rpc-cipher-proto-key-exchange ibuf obuf))
            (values
              (cut rpc-cipher-proto-read <> secret)
              (cut rpc-cipher-proto-write <> <> secret))))))

(def (rpc-cipher-proto-connect ibuf obuf)
  (rpc-proto-connect-e ibuf obuf rpc-proto-cipher
    (lambda (ibuf obuf)
      (let (secret (rpc-cipher-proto-key-exchange ibuf obuf))
        (values
          (cut rpc-cipher-proto-read <> secret)
          (cut rpc-cipher-proto-write <> <> secret))))))

(def (rpc-cookie-cipher-proto-accept ibuf obuf cookie)
  (rpc-proto-accept-e ibuf obuf rpc-proto-cookie-cipher
    (lambda (ibuf obuf)
      (rpc-cookie-proto-challenge ibuf obuf cookie)
      (let (secret (rpc-cipher-proto-key-exchange ibuf obuf))
        (values
          (cut rpc-cipher-proto-read <> secret)
          (cut rpc-cipher-proto-write <> <> secret))))))

(def (rpc-cookie-cipher-proto-connect ibuf obuf cookie)
  (rpc-proto-connect-e ibuf obuf rpc-proto-cookie-cipher
    (lambda (ibuf obuf)
      (let (e (server-input-read-u8 ibuf))
        (cond
         ((eof-object? e)
          (raise-rpc-error 'rpc-proto-connect "connect closed"))
         ((eq? e rpc-proto-challenge)
          (rpc-cookie-proto-challenge-respond ibuf obuf cookie)
          (let (secret (rpc-cipher-proto-key-exchange ibuf obuf))
            (values
              (cut rpc-cipher-proto-read <> secret)
              (cut rpc-cipher-proto-write <> <> secret))))
         (else
          (raise-rpc-error 'rpc-proto-connect "bad hello" e)))))))

(def (rpc-cipher-proto)
  (make-!rpc-protocol
   rpc-cipher-proto-accept
   rpc-cipher-proto-connect))

(def (rpc-cookie-cipher-proto (cookie-file "~/.gerbil/cookie"))
  (let (cookie (call-with-input-file cookie-file read))
    (if (u8vector? cookie)
      (make-!rpc-protocol
       (cut rpc-cookie-cipher-proto-connect <> <> cookie)
       (cut rpc-cookie-cipher-proto-accept <> <> cookie))
      (error "Invalid cookie; expected u8vector"
        cookie-file cookie))))
