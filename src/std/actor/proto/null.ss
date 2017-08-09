;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc null protocol
package: std/actor/proto

(import :std/net/server
        :std/actor/proto
        :std/actor/proto/message
        :std/misc/buffer
        )

(export rpc-proto-accept-e
        rpc-proto-connect-e
        rpc-null-proto
        rpc-null-proto-read
        rpc-null-proto-write)

;; generic rpc hello
(def (rpc-proto-accept-e ibuf obuf proto-t K)
  (def (connection-closed)
    (raise-rpc-io-error 'rpc-proto-accept "connection closed"))
  (def (bad-hello e)
    (raise-rpc-io-error 'rpc-proto-accept "bad hello" e))

  (let (e (server-buffer-read-u8 ibuf))
    (cond
     ((eof-object? e)
      (connection-closed))
     ((eq? e rpc-proto-connect-hello)
      (let (e (server-buffer-read-u8 ibuf))
        (cond
         ((eof-object? e)
          (connection-closed))
         ((eq? e proto-t)
          (server-buffer-write-u8 rpc-proto-connect-accept obuf)
          (K ibuf obuf))
         (else
          (server-buffer-write-u8 rpc-proto-connect-reject obuf)
          (server-buffer-force-output obuf)
          (bad-hello e)))))
     (else
      (bad-hello)))))

(def (rpc-proto-connect-e ibuf obuf proto-t K)
  (def (connection-rejected)
    (raise-rpc-io-error 'rpc-proto-connect "Connection hello rejected by peer"))
  (def (connection-closed)
    (raise-rpc-io-error 'rpc-proto-connect "connection closed"))
  (def (bad-hello)
    (raise-rpc-io-error 'rpc-proto-connect "bad hello"))

  (server-buffer-write-u8 rpc-proto-connect-hello obuf)
  (server-buffer-write-u8 proto-t obuf)
  (server-buffer-force-output obuf)
  (let (e (server-buffer-read-u8 ibuf))
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
      (server-buffer-force-output obuf)
      (values rpc-null-proto-read
              rpc-null-proto-write))))

(def (rpc-null-proto-connect ibuf obuf)
  (rpc-proto-connect-e ibuf obuf rpc-proto-null
    (lambda (ibuf obuf)
      (values rpc-null-proto-read
              rpc-null-proto-write))))

(def (rpc-null-proto-read ibuf)
  (let (e (server-buffer-read-u8 ibuf))
    (cond
     ((eq? e rpc-proto-keep-alive)
      #!void)
     ((eq? e rpc-proto-message)
      (let (len (server-buffer-read-u32 ibuf))
        (if (fx<= len rpc-proto-message-max-length)
          (let (buf (make-u8vector len))
            (server-buffer-read-bytes buf ibuf)
            buf)
          (raise-rpc-io-error 'rpc-proto-read "message too long" len))))
     ((eof-object? e) e)
     (else
      (raise-rpc-io-error 'rpc-proto-read "bad message" e)))))

(def (rpc-null-proto-write obuf obj)
  (cond
   ((eq? obj #!void)
    (server-buffer-write-u8 rpc-proto-keep-alive obuf)
    (server-buffer-force-output obuf))
   ((u8vector? obj)
    (server-buffer-write-u8 rpc-proto-message obuf)
    (server-buffer-write-u32 (u8vector-length obj) obuf)
    (server-buffer-write-bytes obj obuf)
    (server-buffer-force-output obuf))
   ((output-buffer? obj)
    (let* ((len (buffer-output-length obj))
           (chunks (buffer-output-chunks obj)))
      (server-buffer-write-u8 rpc-proto-message obuf)
      (server-buffer-write-u32 len obuf)
      (for-each (cut server-buffer-write-bytes <> obuf) chunks)
      (server-buffer-force-output obuf)))
   (else
    (raise-rpc-io-error 'rpc-proto-write "unexpected object" obj))))

(def (rpc-null-proto)
  (make-!rpc-protocol
   rpc-null-proto-connect
   rpc-null-proto-accept))
