;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket socket implementation
(import :std/error
        :std/interface
        :std/contract
        :std/io
        :std/misc/rwlock
        :std/sugar
        ./interface)
(export #t)

(defstruct websocket (sock reader writer server? closed? proto)
  final: #t
  constructor: :init!)

(defmethod {:init! websocket}
  (lambda (self sock reader writer server? proto)
    (using ((self :- websocket)
            (sock : StreamSocket)
            (reader : BufferedReader)
            (writer : BufferedWriter))
      (set! self.sock sock)
      (set! self.reader reader)
      (set! self.writer writer)
      (set! self.server? server?)
      (set! self.proto proto))))

;;; WebSocket interface implementation
(defmethod {send websocket}
  (lambda (self msg)
    (using ((self :- websocket)
            (msg :- message))

      (when self.closed?
        (raise-io-closed send "websocket has been closed" self))

      ;; TODO
      (error "IMPLEMENTME")
      )))

(defmethod {recv websocket}
  (lambda (self)
    (using (self :- websocket)
      (when self.closed?
        (raise-io-closed send "websocket has been closed" self))

      ;; TODO

      (error "IMPLEMENTME")
      )))

(defmethod {protocol websocket}
  websocket-proto)

;; Closer interface implementation
(defmethod {close websocket}
  (lambda (self)
    (using (self :- websocket)
      (unless self.closed?
        (set! self.closed? #t)

        ;; TODO graceful close with reason

        (let (sock self.sock)
          (using (sock :- StreamSocket)
            (sock.close)))))))

;;; Socket interface implementation passhtrough
(defsyntax (defsocket-dispatch-method stx)
  (syntax-case stx ()
    ((_ (method arg ...))
     (with-syntax ((sock.method (make-symbol 'sock "." (stx-e #'method))))
       #'(defmethod {method websocket}
         (lambda (self arg ...)
           (using (self :- websocket)
             (let (sock self.sock)
               (using (sock :- StreamSocket)
                 (sock.method arg ...))))))))))

(defsocket-dispatch-method (domain))
(defsocket-dispatch-method (address))
(defsocket-dispatch-method (peer-address))
(defsocket-dispatch-method (getsockopt level option))
(defsocket-dispatch-method (setsockopt level option value))
(defsocket-dispatch-method (set-input-timeout! timeo))
(defsocket-dispatch-method (set-output-timeout! timeo))
