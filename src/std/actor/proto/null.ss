;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc null protocol
package: std/actor/proto

(import :gerbil/gambit/ports
        :std/net/address
        :std/actor/proto
        :std/actor/proto/message
        )

(export rpc-proto-accept-e
        rpc-proto-connect-e
        rpc-null-proto
        rpc-null-proto-open-client
        rpc-null-proto-open-server
        rpc-null-proto-read
        rpc-null-proto-write)

;; generic rpc hello
(def (rpc-proto-accept-e sock proto-t K)
  (def (connection-closed . args)
    (apply raise-rpc-error 'rpc-proto-accept "connection closed" args))
  (def (bad-hello . args)
    (apply raise-rpc-error 'rpc-proto-accept "bad hello" args))
  
  (let (e (read-u8 sock))
    (cond
     ((eof-object? e)
      (connection-closed sock))
     ((eq? e rpc-proto-connect-hello)
      (let (e (read-u8 sock))
        (cond
         ((eof-object? e)
          (connection-closed sock))
         ((eq? e proto-t)
          (write-u8/force-output rpc-proto-connect-accept sock)
          (K sock))
         (else
          (write-u8/force-output rpc-proto-connect-reject sock)
          (bad-hello e sock)))))
     (else
      (bad-hello e sock)))))

(def (rpc-proto-connect-e sock proto-t K)
  (def (connection-rejected sock)
    (raise-rpc-error 'rpc-proto-connect "Connection hello rejected by peer" sock))
  (def (connection-closed . args)
    (apply raise-rpc-error 'rpc-proto-connect "connection closed" args))
  (def (bad-hello . args)
    (apply raise-rpc-error 'rpc-proto-connect "bad hello" args))

  (write-u8 rpc-proto-connect-hello sock)
  (write-u8 proto-t sock)
  (force-output sock)
  (let (e (read-u8 sock))
    (cond
     ((eof-object? e)
      (connection-closed sock))
     ((eq? e rpc-proto-connect-accept)
      (K sock))
     ((eq? e rpc-proto-connect-reject)
      (connection-rejected sock))
     (else
      (bad-hello e sock)))))

;;; NULL proto; unathenticated clear text.
(def (rpc-null-proto-open-client inaddr)
  (open-tcp-client (inet-address->string inaddr)))

(def (rpc-null-proto-open-server inaddr)
  (open-tcp-server (inet-address->string inaddr)))

(def (rpc-null-proto-accept sock)
  (rpc-proto-accept-e sock rpc-proto-null
    (lambda (sock)
      (values rpc-null-proto-read
              rpc-null-proto-write))))

(def (rpc-null-proto-connect sock)
  (rpc-proto-connect-e sock rpc-proto-null
    (lambda (sock)
      (values rpc-null-proto-read
              rpc-null-proto-write))))


(def (rpc-null-proto-read sock)
  (let (e (read-u8 sock))
    (cond
     ((eq? e rpc-proto-keep-alive)
      #!void)
     ((eq? e rpc-proto-message)
      (let (len (read-u32 sock))
        (if (fx< len rpc-proto-message-max-length)
          (let* ((buf (make-u8vector len))
                 (rd  (read-subu8vector buf 0 len sock)))
            (if (fx= rd len)
              buf
              (raise-rpc-error 'rpc-proto-read "remature port end" sock rd len)))
          (raise-rpc-error 'rpc-proto-read "message too long" sock len))))
     ((eof-object? e) e)
     (else
      (raise-rpc-error 'rpc-proto-read "bad message" sock e)))))

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
    (raise-rpc-error 'rpc-proto-write "unexpected object" obj))))

(def (rpc-null-proto)
  (make-!rpc-protocol
   rpc-null-proto-open-client
   rpc-null-proto-open-server
   rpc-null-proto-connect
   rpc-null-proto-accept))
