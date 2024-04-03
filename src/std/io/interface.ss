;;; -*- Gerbil -*-
;;; © vyzo
;;; Standard IO interfaces
(import :std/interface
        :std/contract
        :std/sugar
        :std/misc/timeout)
(export #t timeout?)

;; closable io sources and sinks
(interface Closer
  (close) => :void)

;; Cursor-based IO
(interface Seeker
  ;; Seek to a particular position in the backing IO source.
  ;; - position denotes where, relative to `from` that the cursor should be moved to.
  ;;   When `'start` is supplied, `position` must be positive.
  ;;   When `'end` `'current` is supplied, `position` may be positive or negative
  ;; - from is one of 3 possible origins to seek about. Defaults to `'start`.
  (seek (position : :fixnum)
        (from :~ whence? := 'start))
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
  ;; buffer; the limit must be a fixnum.
  (delimit (limit :~ nonnegative-fixnum? :- :fixnum))
  => @BufferedReader

  ;; resets the underlying reader and buffer state, allowing reuse of buffers.
  (reset! (reader : Reader) (close? :- :t := #t))
  => :void

  ;; returns the number of buffered bytes available to read without further I/O
  (available)
  => :fixnum)


(interface (BufferedWriter Writer)
  ;; writes a single byte
  (write-u8 (u8 : :fixnum))
  => :fixnum

  ;; flushes the buffer to the underlying output instance
  (flush)
  => :void

  ;; resets the underlying output and buffer state, allowing reuse of buffers.
  (reset! (output : Writer)
          (close? : :t := #t))
  => :void)

;; string/textual IO
(interface (StringReader Closer)
  ;; read into a string
  (read-string (str   :  :string)
               (start :~ (in-range? 0 (string-length str))               :- :fixnum :=  0)
               (end   :~ (in-range-inclusive? start (string-length str)) :- :fixnum := (string-length str))
               (need  :~  nonnegative-fixnum?                            :- :fixnum :=  0))
  => :fixnum)

(interface (PeekableStringReader StringReader)
  ;; reads a single char
  ;; returns the char or eof
  (read-char) => :t
  ;; peeks the next char
  ;; returns the char or eof
  (peek-char) => :t)

(deftype @BufferedStringReader BufferedStringReader)

(interface (BufferedStringReader PeekableStringReader)
  ;; puts back some chars previously read; can also inject characters.
  ;; - previous-input is a char or a list of chars injected into the buffer
  (put-back (previous-input :~ (previous-input? char?)))
  => :void

  ;; skips the next count chars of input
  (skip (count :~ nonnegative-fixnum? :- :fixnum))
  => :void

  ;; returns a new StringBufferedReader instance delimiting the input length that shares
  ;; the underlying buffer; the limit must be a fixnum.
  (delimit (limit :~ nonnegative-fixnum? :- :fixnum))
  => @BufferedStringReader

  ;; resets the underlying reader and buffer state, allowing reuse of buffers.
  (reset! (reader : StringReader)
          (close? : :t := #t))
  => :void

  ;; returns the number of buffered chars available to read without further I/O
  (available)
  => :fixnum)


(interface (StringWriter Closer)
  ;; write a string
  (write-string (str   :  :string)
                (start :~ (in-range? 0 (string-length str))               :- :fixnum :=  0)
                (end   :~ (in-range-inclusive? start (string-length str)) :- :fixnum := (string-length str)))
  => :fixnum)

(interface (BufferedStringWriter StringWriter)
  ;; write a single char
  (write-char (char : :char))
  => :fixnum
  ;; flush output
  (flush)
  => :void
  ;; resets the underlying output and buffer state, allowing reuse of buffers.
  (reset! (writer : StringWriter)
          (close? : :t := #t))
  => :void)

;; socket interfaces
(interface (Socket Closer)
  ;; the sockert's domain; AF_INET, AF_INET6, AF_LOCAL, etc ...
  (domain) => :fixnum
  ;; the socket's address
  (address) => :t
  ;; the socket's peer address, if any
  (peer-address) => :t
  ;; getsockopt syscall
  (getsockopt (level  :  :fixnum)
              (option :  :fixnum))
  => :t
  ;; setsockopt syscall
  (setsockopt (level  :  :fixnum)
              (option :  :fixnum)
              value)
  => :void
  ;; input timeout
  (set-input-timeout! (timeo :~ (maybe timeout?)))
  => :void
  ;; output timeout
  (set-output-timeout! (timeo :~ (maybe timeout? )))
  => :void)

(interface (StreamSocket Socket)
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
  => :fixnum

  ;; returns a Reader instance reading from the socket
  (reader) => Reader

  ;; returns a Writer instance writing to the socket
  (writer) => Writer

  ;; shuts down the socket in one direction which must be 'in, 'out or 'inout
  ;; if both directions are closed the socket is also closed.
  (shutdown (direction : :symbol))
  => :void)

(interface (ServerSocket Socket)
  ;; accept waits for an incoming connection and returns a StreamSocket
  (accept) => StreamSocket)

(interface (DatagramSocket Socket)
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
  (sendto (peer   :~  address?)
          (u8v    :  :u8vector)
          (start  :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
          (end    :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v))
          (flags  :  :fixnum                                                      :=  0))
  => :fixnum

  ;; connect the datagram socket to a peer
  (connect (peer :~ address?))
  => :void

  ;; recv data from the connected peer
  (recv (u8v   :  :u8vector)
        (start :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
        (end   :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v))
        (flags :  :fixnum                                                      :=  0))
  => :fixnum

  ;; send data to the connected peer
  (send (u8v   :  :u8vector)
        (start :~ (in-range? 0 (u8vector-length u8v))               :- :fixnum :=  0)
        (end   :~ (in-range-inclusive? start (u8vector-length u8v)) :- :fixnum := (u8vector-length u8v))
        (flags :  :fixnum                                                      :=  0))
  => :fixnum)

(defrule (address? o)
  (or (pair? o)
      (string? o)))

(defrule (previous-input? type?)
  (lambda (o)
    (or (type? o)
        ((list-of? type?) o))))

(defrule (whence? p)
  (cut <> memq '(start end current)))
