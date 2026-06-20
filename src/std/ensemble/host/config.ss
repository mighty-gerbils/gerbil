;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host configuration
(export #t)

;;; configuration mixin classes

(defstruct NetworkLimits
  ((max-connections-in  : :fixnum)
   (max-connections-out : :fixnum)
   (max-streams-in      : :fixnum)
   (max-streams-out     : :fixnum)
   (max-actor-threads   : :fixnum)
   (max-message-size    : :fixnum)
   ))

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
   (limits : NetworkLimits)
   ))

;; inet hosts
(defclass InetHostConfig
  (;; the host's tls certificate and key base directory
   (tls-path : :string)
   ))

;; server hosts
(defclass ServerHostConfig
  (;; the host's listen addresses; string form
   (listen : :list)
   ;; the host announce addresses; string form
   (announce : :list)
   ))

;; parent hosts
(defstruct ParentHostConfig
  (;; parent server name
   (name : :string)
   ;; parent server did
   (did  : :string)
   ;; parent unix address
   (address : :string)))

;;; the server configuration taxonomy

;; an inet accessible server host
(defclass (InetServerHostConfig
           BasicHostConfig
           InetHostConfig
           ServerHostConfig)
  ()
  final: #t)

;; a local server, accessible locally through unix
;; or optionally a parent host proxy
(defclass (LocalServerHostConfig
           BasicHostConfig
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
