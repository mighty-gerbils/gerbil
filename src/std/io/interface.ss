;;; -*- Gerbil -*-
;;; © vyzo
;;; Standard IO interfaces
(import :std/time/timeout
        :std/net/address/address)
(export #t)

(defrule (byte? o)
  (and (fixnum? o)
       (fx<= 0 o 255)))

;; closable io sources and sinks
(interface Closer
  (close) => :void)

;; Cursor-based IO
(interface Seeker
  ;; Seek to a particular position in the backing IO source.
  ;; - position denotes where, relative to `from` that the cursor should be moved to.
  ;;   When `START is supplied, `position` must be positive.
  ;;   When `END` or `CURRENT` is supplied, `position` may be positive or negative
  ;; - from is one of 3 possible origins to seek about. Defaults to `'start`.
  (seek (position : :integer)
        (whence   : :fixnum)
  => :void)

;; generic binary IO
(interface (Reader Closer)
  ;; read into a buffer; it _must_ be a u8vector.
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end
  ;; - need denotes the minimum required input; it must be a fixnum
  ;; Returns the number of bytes read; 0 denotes the end of input.
  ;; If less than the needed bytes are read, an io-error is raised.
  (read (u8v    : :u8vector)
        (start  :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
        (end    :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v))
        (need   :~  nonnegative-fixnum?                              :- :fixnum :=  0))
  => :fixnum)


(interface (Writer Closer)
  ;; write from a buffer; it _must_ be a u8vector
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end; #f means the end of the buffer
  ;; Returns the number of bytes written.
  (write (u8v   :  :u8vector)
         (start :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
         (end   :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v)))
  => :fixnum)

;; buffered IO
(interface (PeekableReader Reader)
  ;; reads a single byte
  ;; returns the byte or eof object
  (read-u8) => :t
  ;; peeks the next byte
  ;; returns the byte or eof object
  (peek-u8) => :t)

(deftype @BufferedReader BufferedReader)
(interface (BufferedReader PeekableReader)
  ;; puts back some bytes previously read; can also inject bytes.
  ;; - previous-input is a u8 or a list of u8s injected back into the buffer
  (put-back (previous-input :~ (previous-input? fixnum?)))
  => :void

  ;; skips the next count bytes of input
  (skip (count :~ nonnegative-fixnum? :- :fixnum))
  => :void

  ;; returns a new BufferedReader instance delimiting the input length that shares the underlying
  ;; buffer; the limit must be an nonnegative integer
  (delimit (limit :~ nonnegative-integer? :- :integer))
  => @BufferedReader

  ;; returns the number of buffered bytes available to read without further I/O
  (available)
  => :fixnum)

(interface (BufferedWriter Writer)
  ;; writes a single byte
  (write-u8 (u8 :~ byte? : :fixnum))
  => :fixnum

  ;; flushes the buffer to the underlying output instance
  (flush)
  => :void)

;; socket interfaces
(interface (Socket Closer)
  ;; the sockert's domain; AF_INET, AF_INET6, AF_LOCAL, etc ...
  (domain) => :fixnum
  ;; the socket's address
  (address) => Address
  ;; the socket's peer address, a NullAddress if not connected
  (peer-address) => Address
  ;; getsockopt syscall
  (getsockopt (level  :  :fixnum)
              (option :  :fixnum))
  => :t
  ;; setsockopt syscall
  (setsockopt (level  :  :fixnum)
              (option :  :fixnum)
              (value  :  :t))
  => :void
  ;; input timeout
  (set-input-timeout! (timeo : Timeout))
  => :void
  ;; output timeout
  (set-output-timeout! (timeo : Timeout))
  => :void)

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

(defrule (previous-input? type?)
  (lambda (o)
    (or (type? o)
        ((list-of? type?) o))))

(defrule (whence? p)
  (one-of start end current))
