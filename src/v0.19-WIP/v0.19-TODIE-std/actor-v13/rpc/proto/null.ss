;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc null protocol

(import :std/net/bio
        ../../proto
        ../base
        ./message)
(export rpc-proto-accept-e
        rpc-proto-connect-e
        rpc-null-proto
        rpc-null-proto-read
        rpc-null-proto-write)

(declare (not safe))

;; generic rpc hello
(def (rpc-proto-accept-e ibuf obuf proto-t K)
  (def (connection-closed)
    (raise-rpc-io-error 'rpc-proto-accept "connection closed"))
  (def (bad-hello e)
    (raise-rpc-io-error 'rpc-proto-accept "bad hello" e))

  (let (e (bio-read-u8 ibuf))
    (cond
     ((eof-object? e)
      (connection-closed))
     ((eq? e rpc-proto-connect-hello)
      (let (e (bio-read-u8 ibuf))
        (cond
         ((eof-object? e)
          (connection-closed))
         ((eq? e proto-t)
          (bio-write-u8 rpc-proto-connect-accept obuf)
          (K ibuf obuf))
         (else
          (bio-write-u8 rpc-proto-connect-reject obuf)
          (bio-force-output obuf)
          (bad-hello e)))))
     (else
      (bad-hello e)))))

(def (rpc-proto-connect-e ibuf obuf proto-t K)
  (def (connection-rejected)
    (raise-rpc-io-error 'rpc-proto-connect "Connection hello rejected by peer"))
  (def (connection-closed)
    (raise-rpc-io-error 'rpc-proto-connect "connection closed"))
  (def (bad-hello)
    (raise-rpc-io-error 'rpc-proto-connect "bad hello"))

  (bio-write-u8 rpc-proto-connect-hello obuf)
  (bio-write-u8 proto-t obuf)
  (bio-force-output obuf)
  (let (e (bio-read-u8 ibuf))
    (cond
     ((eof-object? e)
      (connection-closed))
     ((eq? e rpc-proto-connect-accept)
      (K ibuf obuf))
     ((eq? e rpc-proto-connect-reject)
      (connection-rejected))
     (else
      (bad-hello)))))

;;; NULL proto; unathenticated clear text.
(def (rpc-null-proto-accept ibuf obuf)
  (rpc-proto-accept-e ibuf obuf rpc-proto-null
    (lambda (ibuf obuf)
      (bio-force-output obuf)
      (values rpc-null-proto-read
              rpc-null-proto-write))))

(def (rpc-null-proto-connect ibuf obuf)
  (rpc-proto-connect-e ibuf obuf rpc-proto-null
    (lambda (ibuf obuf)
      (values rpc-null-proto-read
              rpc-null-proto-write))))

(def (rpc-null-proto-read ibuf bytes)
  (let (e (bio-read-u8 ibuf))
    (cond
     ((eq? e rpc-proto-keep-alive)
      #!void)
     ((eq? e rpc-proto-message)
      (let (len (bio-read-u32 ibuf))
        (if (fx<= len rpc-proto-message-max-length)
          (let (bytes
                (if (fx< (u8vector-length bytes) len)
                  (make-u8vector len)
                  bytes))
            (bio-read-subu8vector-unbuffered bytes 0 len ibuf)
            (values bytes len))
          (raise-rpc-io-error 'rpc-proto-read "message too long" len))))
     ((eof-object? e) e)
     (else
      (raise-rpc-io-error 'rpc-proto-read "bad message" e)))))

(def (rpc-null-proto-write obuf obj)
  (cond
   ((eq? obj #!void)
    (bio-write-u8 rpc-proto-keep-alive obuf)
    (bio-force-output obuf))
   ((u8vector? obj)
    (bio-write-u8 rpc-proto-message obuf)
    (bio-write-u32 (u8vector-length obj) obuf)
    (bio-write-bytes obj obuf)
    (bio-force-output obuf))
   ((chunked-output-buffer? obj)
    (let* ((len (chunked-output-length obj))
           (chunks (chunked-output-chunks obj)))
      (bio-write-u8 rpc-proto-message obuf)
      (bio-write-u32 len obuf)
      (for-each (cut bio-write-bytes <> obuf) chunks)
      (bio-force-output obuf)))
   (else
    (raise-rpc-io-error 'rpc-proto-write "unexpected object" obj))))

(def (rpc-null-proto)
  (make-!rpc-protocol
   rpc-null-proto-connect
   rpc-null-proto-accept))
