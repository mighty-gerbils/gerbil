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
(def ::hmac-type          digest::sha256)
(def ::hmac-length       (digest-size  ::hmac-type))
(def ::cipher-type        cipher::aes-128-gcm)
(def ::cipher-key-length (cipher-key-length ::cipher-type))
(def ::cipher-iv-length  (cipher-iv-length  ::cipher-type))
(def ::cipher-block-size (cipher-block-size ::cipher-type))
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
        (error "rpc key exchange error; connection closed" sock))
       (else
        (error "rpc key exchange; exchange error" e sock))))))

(def (rpc-cipher-proto-write sock secret)
  (error 'XXX)
  )

(def (rpc-cipher-proto-read sock secret)
  (error 'XXX)
  )

(def (rpc-cipher-proto-accept sock)
  (def connection-closed "rpc accept error; connection closed")
  (def bad-hello "rpc accept error; bad hello")
  (let (e (read-u8 sock))
    (cond
     ((eof-object? e)
      (error connection-closed))
     ((eq? e rpc-proto-connect-hello)
      (let (e (read-u8 sock))
        (cond
         ((eq? e rpc-proto-cipher)
          (let (secret (rpc-cipher-proto-key-exchange sock))
            (values
              (cut rpc-cipher-proto-read <> secret)
              (cut rpc-cipher-proto-write <> secret))))
         ((eof-object? e)
          (error connection-closed))
         (else
          (error bad-hello e sock)))))
     (else
      (write-u8/force-output rpc-proto-connect-reject sock)
      (error bad-hello e sock)))))

(def (rpc-cipher-proto-connect sock)
  (def connection-closed "rpc connect error; connection closed")
  (def bad-hello "rpc connect error; bad hello")
  (write-u8 rpc-proto-connect-hello sock)
  (write-u8 rpc-proto-cipher sock)
  (force-output sock)
  (let (secret (rpc-cipher-proto-key-exchange sock))
    (values
      (cut rpc-cipher-proto-read <> secret)
      (cut rpc-cipher-proto-write <> secret))))

(def (rpc-cookie-cipher-proto-accept sock cookie)
  (def connection-closed "rpc accept error; connection closed")
  (def bad-hello "rpc accept error; bad hello")
  (let (e (read-u8 sock))
    (cond
     ((eof-object? e)
      (error connection-closed))
     ((eq? e rpc-proto-connect-hello)
      (let (e (read-u8 sock))
        (cond
         ((eq? e rpc-proto-cookie-cipher)
          (rpc-cookie-proto-challenge sock cookie)
          (let (secret (rpc-cipher-proto-key-exchange sock))
            (values
              (cut rpc-cipher-proto-read <> secret)
              (cut rpc-cipher-proto-write <> secret))))
         ((eof-object? e)
          (error connection-closed))
         (else
          (error bad-hello e sock)))))
     (else
      (write-u8/force-output rpc-proto-connect-reject sock)
      (error bad-hello e sock)))))

(def (rpc-cookie-cipher-proto-connect sock cookie)
  (def connection-closed "rpc connect error; connection closed")
  (def bad-hello "rpc connect error; bad hello")
  (write-u8 rpc-proto-connect-hello sock)
  (write-u8 rpc-proto-cookie sock)
  (force-output sock)
  (let (e (read-u8 sock))
    (cond
     ((eof-object? e)
      (error connection-closed))
     ((eq? e rpc-proto-challenge)
      (rpc-cookie-proto-challenge-respond sock cookie)
      (let (secret (rpc-cipher-proto-key-exchange sock))
        (values
          (cut rpc-cipher-proto-read <> secret)
          (cut rpc-cipher-proto-write <> secret))))
     (else
      (error bad-hello e sock)))))

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
