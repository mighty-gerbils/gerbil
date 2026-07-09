;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network interface
(import :std/io/interface
        :std/time/timeout
        (only-in :std/os/device
                 DIRECTION-IN
                 DIRECTION-OUT)
        ./ucan
        ./message
        ./address)
(export #t
        DIRECTION-IN
        DIRECTION-OUT)

(deftype @Network Network)
(deftype @Broadcast Broadcast)
(deftype @Connection Connection)
(deftype @Stream Stream)

;; incoming stream handlers
(interface NetworkMonitor
  (on-open-connection (conn : @Connection))
  => :void
  (on-close-connection (conn : @Connection))
  => :void

  (on-open-stream (stream : @Stream))
  => :void
  (on-close-stream (stream : @Stream))
  => :void
  )

;; network connection abstraction
(interface (Connection NetworkTimeout Closer)
  ;; the address of the connection
  (address)
  => HostAddress

  ;; the peer address of the connection
  (peer)
  => HostAddress

  ;; the connection iniator direction
  ;; DIRECTION-IN or DIRECTION-OUT
  (direction)
  => :fixnum

  ;; opens an outbound stream
  (open-stream! (proto : :string)
                (auth  :? Token))
  => @Stream
  )

;; low level data streams
(interface (Stream NetworkTimeout Closer)
  ;; the stream iniator direction
  ;; DIRECTION-IN or DIRECTION-OUT
  (direction)
  => :fixnum

  ;; the connection of the stream
  (connection)
  => Connection

  ;; the protocol of the stream
  (protocol)
  => :string

  ;; the stream data reader
  (reader)
  => Reader

  ;; the stream data writer
  (writer)
  => Writer
  )

;; the network abstraction
(interface (Network Closer)
  ;; current network peers
  ;; returns a list of HostID
  (peers)
  => :list

  ;; current network connections
  ;; returns a list of Connection
  (connections)
  => :list

  ;; retrieve a connection to a peer, if any
  (peer-connection (peer : HostID))
  => :t

  ;; retrieve the network's listening addresses
  ;; return a list of HostAddress
  (listening)
  => :list

  ;; connect to any one address (or reuse an existing connect)
  (connect! (addrs :~ (list-of? HostAddress?)
                   :- :list))
  => Connection

  ;; listen to all addresses in a list
  (listen! (addrs :~ (list-of? HostAddress?)
                  :- :list))
  => :void
  )
