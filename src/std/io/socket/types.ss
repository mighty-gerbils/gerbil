;;; -*- Gerbil -*-
;;; © vyzo
;;; socket types
(import :std/os/socket
        :std/time/timeout
        :std/sync/rwlock)
(export #t)

;; socket base class
(defstruct basic-socket
  ((dev         :- SocketDevice)
   (lock        :- RWLock)
   (timeo-in    :- IOTimeout)
   (timeo-out   :- IOTimeout)
   (local       :? Address)
   (remote      :? Address))
  constructor: :init!)

(defstruct (basic-client-socket basic-socket) ())

(defstruct (stream-socket basic-client-socket) ())

;; stream-socket reader
(defstruct stream-socket-reader ((sock :- stream-socket))
  final: #t)

;; stream-socket writer
;; - implements Writer
;; - sock is the tcp-socket
(defstruct stream-socket-writer ((sock :- stream-socket))
  final: #t)

;; datagram sockets
(defstruct (datagram-socket basic-client-socket) ())

;; server sockets
(defstruct (basic-server-socket basic-socket) ())

;; constructor
(defmethod {:init! basic-socket}
  (lambda (self (dev : SocketDevice))
    (set! self.dev dev)
    (set! self.lock (make-rwlock 'socket))
    (set! self.timeo-in !NoTimeout)
    (set! self.timeo-out !NoTimeout)))

(defmethod {:init! basic-client-socket}
  basic-socket:::init!)
(defmethod {:init! stream-socket}
  basic-socket:::init!)
(defmethod {:init! datagram-socket}
  basic-socket:::init!)
(defmethod {:init! basic-server-socket}
  basic-socket:::init!)
