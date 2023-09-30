;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket socket implementation
(import :std/interface
        :std/contract
        :std/io
        :std/misc/rwlock
        ./interface)
(export #t)

(defstruct websocket (sock reader writer rw server?)
  final: #t
  constructor: :init!)

(defmethod {:init! websocket}
  (lambda (self sock reader writer server?)
    (using (self :- websocket)
      (set! self.sock sock)
      (set! self.reader reader)
      (set! self.writer writer)
      (set! self.rw (make-rwlock 'websocket))
      (set! self.server? server?))))
