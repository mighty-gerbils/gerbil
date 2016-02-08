;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc null protocol
package: std/actor/proto

(import :gerbil/gambit/ports
        :gerbil/gambit/hvectors
        :std/actor/proto
        :std/actor/proto/message
        )

(export
  rpc-null-proto-accept
  rpc-null-proto-connect)

;;; NULL proto; unathenticated clear text.
(def (rpc-null-proto-accept sock)
  (def connection-closed "rpc accept error; connection closed")
  (def bad-hello "rpc accept error; bad hello")
  (let (e (read-u8 sock))
    (cond
     ((eof-object? e)
      (error connection-closed sock))
     ((eq? e rpc-proto-connect-hello)
      (let (e (read-u8 sock))
        (cond
         ((eof-object? e)
          (error connection-closed sock))
         ((eq? e rpc-proto-null)
          (write-u8 rpc-proto-connect-accept sock)
          (force-output sock)
          (values rpc-null-proto-read
                  rpc-null-proto-write))
         (else
          (error bad-hello e sock)))))
     (else
      (error bad-hello e sock)))))

(def (rpc-null-proto-connect sock)
  (write-u8 rpc-proto-connect-hello sock)
  (write-u8 rpc-proto-null sock)
  (force-output sock)
  (let (e (read-u8 sock))
    (cond
     ((eof-object? e)
      (error "rpc connect error; connection closed" sock))
     ((eq? e rpc-proto-connect-accept)
      (values rpc-null-proto-read
              rpc-null-proto-write))
     (else
      (error "rpc accept error; bad hello" e sock)))))


(def (rpc-null-proto-read sock)
  (let (len (read-u32 sock))
    (if (fx< len rpc-proto-message-max-length)
      (let* ((buf (make-u8vector len))
             (rd  (read-subu8vector buf 0 len sock)))
        (if (fx= rd len)
          buf
          (error "rpc read error; premature port end" sock rd len)))
      (error "rpc read error; message too long" sock len))))

(def (rpc-null-proto-write obj sock)
  (cond
   ((eq? obj #!void)
    (write-u8 rpc-proto-keep-alive sock)
    (force-output sock))
   ((u8vector? obj)
    (write-u8 rpc-proto-message sock)
    (write-u32 (u8vector-length obj) sock)
    (write-subu8vector obj 0 (u8vector-length obj) sock)
    (force-output sock))
   (else
    (error "rpc write error; unexpected type" obj))))


