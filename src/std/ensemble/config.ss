;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble configuration
(import :std/net/address)
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
  ((message-size    : :fixnum))
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
   ;; the host's passphrase for private key material
   (passphrase : :string)
   ;; the host's name
   (name : :string)
   ;; the host's did -- it must match the TLS certificate URI
   (did : :string)
   ;; (optional) host to use as name resolver
   (resolver :? :string)
   ;; network configuration
   (limits : Limits)
   ))

;; inet hosts
(defclass InetHostConfig
  (;; the host's tls certificate and key base directory
   (tls-path : :string)
   ))

;; server hosts
(defclass (ServerHostConfig BasicHostConfig)
  (;; the host's listen addresses
   (listen :~ (list-of? Address?) :- :list)
   ;; the host announce addresses
   (announce :~ (list-of? Address?) :- :list)
   ))

;; parent hosts
(defstruct ParentHostConfig
  (;; parent server name
   (name : :string)
   ;; parent address
   (address : Address)))

;;; the server configuration taxonomy

;; an inet accessible server host
(defclass (InetServerHostConfig
           ServerHostConfig
           InetHostConfig)
  ()
  final: #t)

;; a local server, accessible locally through unix
;; or optionally a parent host proxy
(defclass (LocalServerHostConfig
           ServerHostConfig)
  ((parent :? ParentHostConfig))
  final: #t)

;; a client host that can access inet hosts
(defclass (InetClientHostConfig
           BasicHostConfig
           InetHostConfig)
  ()
  final: #t)

;; a local client that can only access hosts locally through
;; unix
(defclass (LocalClientHostConfig
           BasicHostConfig)
  ()
  final: #t)
