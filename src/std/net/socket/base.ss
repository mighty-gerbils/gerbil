;;; -*- Gerbil -*-
;;; (C) vyzo
;;; synchronous sockets -- base

;;; --- DEPRECATED ---

(import :gerbil/gambit
        :std/actor-v13/proto
        :std/misc/timeout)
(export #t)

(def current-socket-server
  (make-parameter #f))

;; synchronous socket objects
;; e: socket device
;; srv: server thread -- if the socket is managed by a server
;; wait-in, wait-out: functions to wait for i/o readiness
;; close: function that closes and cancels i/o polling
(defstruct !socket (e wait-in wait-out close)
  final: #t)

;; server-managed socket io state
;; e: blocked, ready, input or output, closed
;; mx, cv: mutex and condvar
(defstruct !io-state (e mx cv)
  final: #t
  constructor: :init!)

;; server-managed socket blocking state
;; e: socket device
;; io-in, io-out: !io-state
(defstruct !socket-state (e io-in io-out)
  final: #t)

;; server protocol
(defproto socket-server
  (shutdown!)
  (add sock)
  (poll)
  event:
  (close ssock dir shutdown))


;; utility
(def (abs-timeout timeo)
  (make-timeout timeo #f))
