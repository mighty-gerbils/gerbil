;;; -*- Gerbil -*-
;;; © vyzo
;;; socket IO interfaces
(import :std/os/sockopt
        :std/time/timeout
        :std/net/address/types
        ./base)
(export #t)

(interface NetworkTimeout
  ;; input timeout
  (set-input-timeout! (timeo : IOTimeout))
  => :void
  ;; output timeout
  (set-output-timeout! (timeo : IOTimeout))
  => :void)

(interface (Socket NetworkTimeout Closer)
  ;; the sockert's domain; AF_INET, AF_INET6, AF_LOCAL, etc ...
  (domain) => :fixnum
  ;; the socket's address
  (address) => Address
  ;; the socket's peer address, a NullAddress if not connected
  (peer-address) => Address
  ;; getsockopt syscall
  (getsockopt (opt : SockOpt))
  => :t
  ;; setsockopt syscall
  (setsockopt (opt : SockOpt)
              (arg  :  :t))
  => :void
  )

(interface (ClientSocket Socket)
  ;; receives data into a buffer; it _must_ be a u8vecotr
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end.
  ;; Returns the number of bytes read.
  (recv (u8v   :  :u8vector)
        (start :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
        (end   :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v))
        (flags :  :fixnum                                                      :=  0))
  => :fixnum

  ;; sends data from a buffer; it _must_ be a u8vector
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end.
  ;; Returns the number of bytes written.
  (send (u8v   :  :u8vector)
        (start :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
        (end   :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v))
        (flags :  :fixnum                                                      :=  0))
  => :fixnum)

(interface (StreamSocket ClientSocket)
  ;; returns a Reader instance reading from the socket
  (reader) => Reader

  ;; returns a Writer instance writing to the socket
  (writer) => Writer

  ;; shuts down the socket in one direction which must be 'in, 'out or 'inout
  ;; if both directions are closed the socket is also closed.
  (shutdown (direction : :fixnum))
  => :void)

(interface (ServerSocket Socket)
  ;; accept waits for an incoming connection and returns a StreamSocket
  (accept) => StreamSocket)

(interface (DatagramSocket ClientSocket)
  ;; receives data into a buffer; it _must_ be a u8vecotr
  ;; - peer is a _box_ to place the peer's address.
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end
  ;; Returns the number of bytes read.
  (recvfrom (peer   :  :box)
            (u8v    :  :u8vector)
            (start  :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
            (end    :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v))
            (flags  :  :fixnum                                           :=  0))
  => :fixnum

  ;; sends data from a buffer; it _must_ be a u8vector
  ;; - peer is the address of the peer
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end; #f means the end of the buffer
  ;; Returns the number of bytes written.
  (sendto (peer   :  Address)
          (u8v    :  :u8vector)
          (start  :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
          (end    :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v))
          (flags  :  :fixnum                                                      :=  0))
  => :fixnum

  ;; connect the datagram socket to a peer
  (connect (peer : Address))
  => :void)
