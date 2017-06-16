;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc null protocol
package: std/actor/proto

(import :std/net/server
        :std/actor/proto
        :std/actor/proto/message
        )

(export rpc-proto-accept-e
        rpc-proto-connect-e
        rpc-null-proto
        rpc-null-proto-read
        rpc-null-proto-write)

;; generic rpc hello
(def (rpc-proto-accept-e ibuf obuf proto-t K)
  (def (connection-closed)
    (raise-rpc-error 'rpc-proto-accept "connection closed"))
  (def (bad-hello e)
    (raise-rpc-error 'rpc-proto-accept "bad hello" e))
  
  (let (e (server-input-read-u8 ibuf #f))
    (cond
     ((eof-object? e)
      (connection-closed))
     ((eq? e rpc-proto-connect-hello)
      (let (e (server-input-read-u8 ibuf #f))
        (cond
         ((eof-object? e)
          (connection-closed))
         ((eq? e proto-t)
          (server-output-write-u8 obuf rpc-proto-connect-accept)
          (server-output-force obuf)
          (K ibuf obuf))
         (else
          (server-output-write-u8 obuf rpc-proto-connect-reject)
          (server-output-force obuf)
          (bad-hello e)))))
     (else
      (bad-hello)))))

(def (rpc-proto-connect-e ibuf obuf proto-t K)
  (def (connection-rejected)
    (raise-rpc-error 'rpc-proto-connect "Connection hello rejected by peer"))
  (def (connection-closed)
    (raise-rpc-error 'rpc-proto-connect "connection closed"))
  (def (bad-hello)
    (raise-rpc-error 'rpc-proto-connect "bad hello"))

  (server-output-write-u8 obuf rpc-proto-connect-hello)
  (server-output-write-u8 obuf proto-t)
  (server-output-force obuf)
  (let (e (server-input-read-u8 ibuf #f))
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
      (values rpc-null-proto-read
              rpc-null-proto-write))))

(def (rpc-null-proto-connect ibuf obuf)
  (rpc-proto-connect-e ibuf obuf rpc-proto-null
    (lambda (ibuf obuf)
      (values rpc-null-proto-read
              rpc-null-proto-write))))

(def (rpc-null-proto-read ibuf)
  (let (e (server-input-read-u8 ibuf #f))
    (cond
     ((eq? e rpc-proto-keep-alive)
      #!void)
     ((eq? e rpc-proto-message)
      (let (len (server-input-read-u32 ibuf))
        (if (fx<= len rpc-proto-message-max-length)
          (let* ((buf (make-u8vector len))
                 (rd  (server-input-read ibuf buf)))
            (if (fx= rd len)
              buf
              (raise-rpc-error 'rpc-proto-read "premature end of input" rd len)))
          (raise-rpc-error 'rpc-proto-read "message too long" len))))
     ((eof-object? e) e)
     (else
      (raise-rpc-error 'rpc-proto-read "bad message" e)))))

(def (rpc-null-proto-write obuf obj)
  (cond
   ((eq? obj #!void)
    (server-output-write-u8 obuf rpc-proto-keep-alive)
    (server-output-force obuf))
   ((u8vector? obj)
    (server-output-write-u8 obuf rpc-proto-message)
    (server-output-write-u32 obuf (u8vector-length obj))
    (server-output-write obuf obj)
    (server-output-force obuf))
   (else
    (raise-rpc-error 'rpc-proto-write "unexpected object" obj))))

(def (rpc-null-proto)
  (make-!rpc-protocol
   rpc-null-proto-connect
   rpc-null-proto-accept))
