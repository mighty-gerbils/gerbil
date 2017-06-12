;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; socket server base
package: std/net/server

(import :std/actor/proto)
(export #t)

;; wrapped socket objects
;; e: socket device
;; srv: server thread
;; wait-in, wait-out: functions to wait for i/o readiness
;; close: function that closes and cancels i/o polling
(defstruct !socket (e srv wait-in wait-out close)
  final: #t)

;; socket io state
;; e: blocked, ready, input or output, closed
;; mx, cv: mutex and condvar
(defstruct !io-state (e mx cv)
  final: #t
  constructor: :init!)

;; socket blocking state
;; e: !socket
;; io-in, io-out: !io-state
(defstruct !socket-state (e io-in io-out)
  final: #t)

;; socket-server protocol 
(defproto socket-server
  (add sock)
  (close ssock dir shutdown)
  (shutdown!))
