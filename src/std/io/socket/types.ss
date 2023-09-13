;;; -*- Gerbil -*-
;;; © vyzo
;;; socket types
(export #t)

;; socket base class
(defstruct basic-socket (sock domain timeo-in timeo-out laddr raddr lock closed?)
  unchecked: #t)

;; stream sockets
;; - state is the socket state
;;   - 0 means open in both directions
;;   - 1 means read closed (but write still open)
;;   - 2 means write closed (but read still open)
;;   - 3 means read and write closed; the socket is closed.
(defstruct (stream-socket basic-socket) (state)
  final: #t unchecked: #t)

;; stream-socket reader
(defstruct stream-socket-reader (sock)
  final: #t unchecked: #t)

;; stream-socket writer
;; - implements Writer
;; - sock is the tcp-socket
(defstruct stream-socket-writer (sock)
  final: #t unchecked: #t)

;; server sockets
(defstruct (basic-server-socket basic-socket) ()
  unchecked: #t)

;; datagram sockets
(defstruct (datagram-socket basic-socket) ()
  final: #t unchecked: #t)
