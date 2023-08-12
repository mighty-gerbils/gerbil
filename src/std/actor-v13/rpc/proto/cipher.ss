;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc cookie authen protocol

(import :std/net/bio
        :std/crypto/etc
        :std/crypto/digest
        :std/crypto/cipher
        :std/crypto/dh
        :std/crypto/bn
        ../../xdr
        ../../proto
        ../base
        ./message
        ./null
        ./cookie)
(export rpc-cipher-proto
        rpc-cookie-cipher-proto
        rpc-cipher-proto-key-exchange)

(declare (not safe))

;; aes-128-gcm with sha256 hmac
(def ::digest-type        digest::sha256)
(def ::digest-size       (digest-size  ::digest-type))
(def ::cipher-type        cipher::aes-128-cbc)
(def ::cipher-key-length (cipher-key-length ::cipher-type))
(def ::cipher-iv-length  (cipher-iv-length  ::cipher-type))
(def ::cipher-block-size (cipher-block-size ::cipher-type))
(def ::DH::new            DH-get-1024-160)

(def (rpc-cipher-proto-key-exchange ibuf obuf)
  (let* ((dh   (::DH::new))
         (_    (DH-generate-key dh))
         (pubk (DH-pub-key dh))
         (bytes (BN->bytes pubk)))
    (bio-write-u8 rpc-proto-key-exchange obuf)
    (bio-write-u32 (u8vector-length bytes) obuf)
    (bio-write-bytes bytes obuf)
    (bio-force-output obuf)
    (let (e (bio-read-u8 ibuf))
      (cond
       ((eq? e rpc-proto-key-exchange)
        (let* ((sz (bio-read-u32 ibuf))
               (_ (when (fx> sz 1024)
                    (raise-rpc-io-error 'rpc-proto-key-exchange "inordinately sized key" sz)))
               (bytes (make-u8vector sz))
               (_ (bio-read-bytes bytes ibuf))
               (peerk (bytes->BN bytes)))
          (DH-compute-key dh peerk)))
       ((eof-object? e)
        (raise-rpc-io-error 'rpc-proto-key-exchange "connection closed"))
       (else
        (raise-rpc-io-error 'rpc-proto-key-exchange "key exchange error" e))))))

(def (rpc-cipher-proto-read-e secret)
  (let ((key   (subu8vector secret 0 ::cipher-key-length))
        (hmac  (make-u8vector ::digest-size))
        (iv    (make-u8vector ::cipher-iv-length))
        (ctext (box (make-u8vector 4096))))
    (cut rpc-cipher-proto-read <> <> secret key hmac iv ctext)))

(def (rpc-cipher-proto-read ibuf bytes secret key hmac iv ctext)
  (let (e (bio-read-u8 ibuf))
    (cond
     ((eq? e rpc-proto-message)
      (let* ((digest (make-digest ::digest-type))
             (cipher (make-cipher ::cipher-type))
             (_      (bio-read-bytes hmac ibuf))
             (_      (bio-read-bytes iv ibuf))
             (size   (bio-read-u32 ibuf))
             (_      (unless (fx<= size rpc-proto-message-max-length)
                       (raise-rpc-io-error 'rpc-proto-read "message too large" size)))
             (ctext  (let (buf (unbox ctext))
                       (if (fx< (u8vector-length buf) size)
                         (let (buf (make-u8vector size))
                           (set! (box ctext) buf)
                           buf)
                         buf)))
             (rd     (bio-read-subu8vector-unbuffered ctext 0 size ibuf))
             (_      (when (fx< rd size)
                       (raise-rpc-io-error 'rpc-proto-read "incomplete message" rd size)))
             (_      (digest-update! digest secret))
             (_      (digest-update! digest iv))
             (_      (digest-update! digest ctext 0 size))
             (hmac*  (digest-final! digest))
             (_      (unless (equal? hmac hmac*)
                       (raise-rpc-io-error 'rpc-proto-read "HMAC failure")))
             (bytes  (if (fx< (u8vector-length bytes) size)
                       (make-u8vector size)
                       bytes))
             (len    (decrypt-u8vector! cipher key iv ctext 0 size bytes)))
        (values bytes len)))
     ((eq? e rpc-proto-keep-alive)
      #!void)
     ((eof-object? e) e)
     (else
      (raise-rpc-io-error 'rpc-proto-read "bad message" e)))))

(def (rpc-cipher-proto-write-e secret)
  (let ((key   (subu8vector secret 0 ::cipher-key-length))
        (iv    (make-u8vector ::cipher-iv-length))
        (ctext (box (make-u8vector 4096))))
    (cut rpc-cipher-proto-write <> <> secret key iv ctext)))

(def (rpc-cipher-proto-write obuf obj secret key iv ctext)
  (cond
   ((eq? obj #!void)
    (bio-write-u8 rpc-proto-keep-alive obuf)
    (bio-force-output obuf))
   ((u8vector? obj)
    (bio-write-u8 rpc-proto-message obuf)
    (let* ((digest (make-digest ::digest-type))
           (cipher (make-cipher ::cipher-type))
           (_      (random-bytes! iv))
           (plen   (u8vector-length obj))
           (maxlen (fx+ plen ::cipher-block-size))
           (ctext  (let (buf (unbox ctext))
                     (if (fx< (u8vector-length buf) maxlen)
                       (let (buf (make-u8vector maxlen))
                         (set! (box ctext) buf)
                         buf)
                       buf)))
           (clen   (encrypt-u8vector! cipher key iv obj 0 plen ctext))
           (_      (digest-update! digest secret))
           (_      (digest-update! digest iv))
           (_      (digest-update! digest ctext 0 clen))
           (hmac   (digest-final! digest)))
      (bio-write-bytes hmac obuf)
      (bio-write-bytes iv obuf)
      (bio-write-u32 clen obuf)
      (bio-write-subu8vector ctext 0 clen obuf)
      (bio-force-output obuf)))
   ((chunked-output-buffer? obj)
    (bio-write-u8 rpc-proto-message obuf)
    (let* ((digest (make-digest ::digest-type))
           (cipher (make-cipher ::cipher-type))
           (_      (random-bytes! iv))
           (plen   (chunked-output-length obj))
           (chunks (chunked-output-chunks obj))
           (maxlen (fx+ plen ::cipher-block-size))
           (ctext  (let (buf (unbox ctext))
                     (if (fx< (u8vector-length buf) maxlen)
                       (let (buf (make-u8vector maxlen))
                         (set! (box ctext) buf)
                         buf)
                       buf)))
           (_      (encrypt-init! cipher key iv))
           (clen   (foldl
                     (lambda (chunk r)
                       (let (count (encrypt-update! cipher
                                                    ctext r
                                                    chunk 0 (u8vector-length chunk)))
                         (fx+ r count)))
                     0 chunks))
           (flen   (encrypt-final! cipher ctext clen))
           (clen   (fx+ clen flen))
           (_      (digest-update! digest secret))
           (_      (digest-update! digest iv))
           (_      (digest-update! digest ctext 0 clen))
           (hmac   (digest-final! digest)))
      (bio-write-bytes hmac obuf)
      (bio-write-bytes iv obuf)
      (bio-write-u32 clen obuf)
      (bio-write-subu8vector ctext 0 clen obuf)
      (bio-force-output obuf)))
   (else
    (raise-rpc-io-error 'rpc-proto-write "unexpected object" obj))))

(def (rpc-cipher-proto-accept ibuf obuf)
  (rpc-proto-accept-e ibuf obuf rpc-proto-cipher
    (lambda (ibuf obuf)
      (let (secret (rpc-cipher-proto-key-exchange ibuf obuf))
            (values
              (rpc-cipher-proto-read-e secret)
              (rpc-cipher-proto-write-e secret))))))

(def (rpc-cipher-proto-connect ibuf obuf)
  (rpc-proto-connect-e ibuf obuf rpc-proto-cipher
    (lambda (ibuf obuf)
      (let (secret (rpc-cipher-proto-key-exchange ibuf obuf))
        (values
          (rpc-cipher-proto-read-e secret)
          (rpc-cipher-proto-write-e secret))))))

(def (rpc-cookie-cipher-proto-accept ibuf obuf cookie)
  (rpc-proto-accept-e ibuf obuf rpc-proto-cookie-cipher
    (lambda (ibuf obuf)
      (rpc-cookie-proto-challenge ibuf obuf cookie)
      (let (secret (rpc-cipher-proto-key-exchange ibuf obuf))
        (values
          (rpc-cipher-proto-read-e secret)
          (rpc-cipher-proto-write-e secret))))))

(def (rpc-cookie-cipher-proto-connect ibuf obuf cookie)
  (rpc-proto-connect-e ibuf obuf rpc-proto-cookie-cipher
    (lambda (ibuf obuf)
      (let (e (bio-read-u8 ibuf))
        (cond
         ((eq? e rpc-proto-challenge)
          (rpc-cookie-proto-challenge-respond ibuf obuf cookie)
          (let (secret (rpc-cipher-proto-key-exchange ibuf obuf))
            (values
              (rpc-cipher-proto-read-e secret)
              (rpc-cipher-proto-write-e secret))))
         ((eof-object? e)
          (raise-rpc-io-error 'rpc-proto-connect "connect closed"))
         (else
          (raise-rpc-io-error 'rpc-proto-connect "bad hello" e)))))))

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
