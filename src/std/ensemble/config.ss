;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble configuration
(import :std/net/address
        ./interface)
(export #t)

;;; configuration classes

(defclass HostLimits
  ((connections-in  : :fixnum)
   (connections-out : :fixnum)
   (streams-in      : :fixnum)
   (streams-out     : :fixnum)
   (actor-threads   : :fixnum))
  final: #t)

(defclass BroadcastLimits
  ((handler-threads : :fixnum))
  final: #t)

(defclass NetworkLimits
  ((message-size    : :fixnum)
   (stream-window   : :fixnum))
  final: #t)

(defclass Limits
  ((host      : HostLimits)
   (broadcast : BroadcastLimits)
   (network   : NetworkLimits))
  final: #t)

;; basic host configuration
(defclass BasicHostConfig
  (;; the host's base directory for persistent data and state
   (dir : :string)
   ;; the host's id
   (id : HostID)
   ;; (optional) host to use as name resolver
   (resolver :? :string)
   ;; network configuration
   (limits : Limits)
   ))

;; server hosts
(defclass (ServerHostConfig BasicHostConfig)
  (;; the host's listen addresses
   (listen :~ (list-of? HostAddress?) :- :list)
   ;; the host announce addresses
   (announce :~ (list-of? HostAddress?) :- :list)
   ))
