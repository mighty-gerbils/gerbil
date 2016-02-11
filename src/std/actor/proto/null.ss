;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc null protocol
package: std/actor/proto

(import :gerbil/gambit/ports
        :gerbil/gambit/hvectors
        :std/net/address
        :std/actor/proto
        :std/actor/proto/message
        )

(export rpc-null-proto
        rpc-null-proto-open-client
        rpc-null-proto-open-server
        rpc-null-proto-read
        rpc-null-proto-write)

;;; NULL proto; unathenticated clear text.
(def (rpc-null-proto-open-client inaddr)
  (open-tcp-client (inet-address->string inaddr)))

(def (rpc-null-proto-open-server inaddr)
  (open-tcp-server (inet-address->string inaddr)))

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
          (write-u8/force-output rpc-proto-connect-accept sock)
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
  (let (e (read-u8 sock))
    (cond
     ((eof-object? e)
      (error "rpc read error; port closed" sock))
     ((eq? e rpc-proto-keep-alive)
      #!void)
     ((eq? e rpc-proto-message)
      (let (len (read-u32 sock))
        (if (fx< len rpc-proto-message-max-length)
          (let* ((buf (make-u8vector len))
                 (rd  (read-subu8vector buf 0 len sock)))
            (if (fx= rd len)
              buf
              (error "rpc read error; premature port end" sock rd len)))
          (error "rpc read error; message too long" sock len))))
     (else
      (error "rpc read error; bad message" sock e)))))

(def (rpc-null-proto-write obj sock)
  (cond
   ((eq? obj #!void)
    (write-u8/force-output rpc-proto-keep-alive sock))
   ((u8vector? obj)
    (write-u8 rpc-proto-message sock)
    (write-u32 (u8vector-length obj) sock)
    (write-subu8vector obj 0 (u8vector-length obj) sock)
    (force-output sock))
   (else
    (error "rpc write error; unexpected type" obj))))

(def rpc-null-proto
  (make-!rpc-protocol
   rpc-null-proto-open-client
   rpc-null-proto-open-server
   rpc-null-proto-connect
   rpc-null-proto-accept))
