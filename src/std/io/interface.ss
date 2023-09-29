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
  (close))

;; generic binary IO
(interface (Reader Closer)
  ;; read into a buffer; it _must_ be a u8vector.
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end
  ;; - need denotes the minimum required input; it must be a fixnum
  ;; Returns the number of bytes read; 0 denotes the end of input.
  ;; If less than the needed bytes are read, an io-error is raised.
  (read (u8v    :~  u8vector?)
        (start  :~ (in-range? 0 (u8vector-length u8v))               :=  0)
        (end    :~ (in-range-inclusive? start (u8vector-length u8v)) := (u8vector-length u8v))
        (need   :~  nonnegative-fixnum?                              :=  0)))


(interface (Writer Closer)
  ;; write from a buffer; it _must_ be a u8vector
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end; #f means the end of the buffer
  ;; Returns the number of bytes written.
  (write (u8v   :~  u8vector?)
         (start :~ (in-range? 0 (u8vector-length u8v))               :=  0)
         (end   :~ (in-range-inclusive? start (u8vector-length u8v)) := (u8vector-length u8v))))

;; buffered IO
(interface (PeekableReader Reader)
  ;; reads a single byte
  (read-u8)
  ;; peeks the next byte
  (peek-u8))

(interface (BufferedReader PeekableReader)
  ;; puts back some bytes previously read; can also inject bytes.
  ;; - previous-input is a u8 or a list of u8s injected back into the buffer
  (put-back (previous-input :~ (previous-input? fixnum?)))

  ;; skips the next count bytes of input
  (skip (count :~ nonnegative-fixnum?))

  ;; returns a new BufferedReader instance delimiting the input length that shares the underlying
  ;; buffer; the limit must be a fixnum.
  (delimit (limit :~ nonnegative-fixnum?))

  ;; resets the underlying reader and buffer state, allowing reuse of buffers.
  (reset! (reader : Reader)))

(interface (BufferedWriter Writer)
  ;; writes a single byte
  (write-u8 (u8 :~ fixnum?))

  ;; flushes the buffer to the underlying output instance
  (flush)

  ;; resets the underlying output and buffer state, allowing reuse of buffers.
  (reset! (output : Writer)))

;; string/textual IO
(interface (StringReader Closer)
  ;; read into a string
  (read-string (str   :~  string?)
               (start :~ (in-range? 0 (string-length str))               :=  0)
               (end   :~ (in-range-inclusive? start (string-length str)) := (string-length str))
               (need  :~  nonnegative-fixnum?                            :=  0)))

(interface (PeekableStringReader StringReader)
  ;; reads a single char
  (read-char)
  ;; peeks the next char
  (peek-char))

(interface (BufferedStringReader PeekableStringReader)
  ;; puts back some chars previously read; can also inject characters.
  ;; - previous-input is a char or a list of chars injected into the buffer
  (put-back (previous-input :~ (previous-input? char?)))

  ;; skips the next count chars of input
  (skip (count :~ nonnegative-fixnum?))

  ;; returns a new StringBufferedReader instance delimiting the input length that shares
  ;; the underlying buffer; the limit must be a fixnum.
  (delimit (limit :~ nonnegative-fixnum?))

  ;; resets the underlying reader and buffer state, allowing reuse of buffers.
  (reset! (reader : StringReader)))

(interface (StringWriter Closer)
  ;; write a string
  (write-string (str   :~  string?)
                (start :~ (in-range? 0 (string-length str))               :=  0)
                (end   :~ (in-range-inclusive? start (string-length str)) := (string-length str))))

(interface (BufferedStringWriter StringWriter)
  ;; write a single char
  (write-char (char :~ char?))
  ;; flush output
  (flush)
  ;; resets the underlying output and buffer state, allowing reuse of buffers.
  (reset! (writer : StringWriter)))

;; socket interfaces
(interface (Socket Closer)
  ;; the sockert's domain; AF_INET, AF_INET6, AF_LOCAL, etc ...
  (domain)
  ;; the socket's address
  (address)
  ;; the socket's peer address, if any
  (peer-address)
  ;; getsockopt syscall
  (getsockopt (level  :~  fixnum?)
              (option :~  fixnum?))
  ;; setsockopt syscall
  (setsockopt (level  :~  fixnum?)
              (option :~  fixnum?)
               value)
  ;; input timeout
  (set-input-timeout! (timeo :~ (maybe timeout?)))
  ;; output timeout
  (set-output-timeout! (timeo :~ (maybe timeout? ))))

(interface (StreamSocket Socket)
  ;; receives data into a buffer; it _must_ be a u8vecotr
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end.
  ;; Returns the number of bytes read.
  (recv (u8v   :~  u8vector?)
        (start :~ (in-range? 0 (u8vector-length u8v))               :=  0)
        (end   :~ (in-range-inclusive? start (u8vector-length u8v)) := (u8vector-length u8v))
        (flags :~  fixnum?                                          :=  0))

  ;; sends data from a buffer; it _must_ be a u8vector
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end.
  ;; Returns the number of bytes written.
  (send (u8v   :~  u8vector?)
        (start :~ (in-range? 0 (u8vector-length u8v))               :=  0)
        (end   :~ (in-range-inclusive? start (u8vector-length u8v)) := (u8vector-length u8v))
        (flags :~  fixnum?                                          :=  0))

  ;; returns a Reader instance reading from the socket
  (reader)

  ;; returns a Writer instance writing to the socket
  (writer)

  ;; shuts down the socket in one direction which must be 'in, 'out or 'inout
  ;; if both directions are closed the socket is also closed.
  (shutdown (direction :~  symbol?)))

(interface (ServerSocket Socket)
  ;; accept waits for an incoming connection and returns a StreamSocket
  (accept))

(interface (DatagramSocket Socket)
  ;; receives data into a buffer; it _must_ be a u8vecotr
  ;; - peer is a _box_ to place the peer's address.
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end
  ;; Returns the number of bytes read.
  (recvfrom (peer   :~  box?)
            (u8v    :~  u8vector?)
            (start  :~ (in-range? 0 (u8vector-length u8v))               :=  0)
            (end    :~ (in-range-inclusive? start (u8vector-length u8v)) := (u8vector-length u8v))
            (flags  :~  fixnum?                                          :=  0))

  ;; sends data from a buffer; it _must_ be a u8vector
  ;; - peer is the address of the peer
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end; #f means the end of the buffer
  ;; Returns the number of bytes written.
  (sendto (peer  :~  address?)
          (u8v   :~  u8vector?)
          (start :~ (in-range? 0 (u8vector-length u8v))               :=  0)
          (end   :~ (in-range-inclusive? start (u8vector-length u8v)) := (u8vector-length u8v))
          (flags :~  fixnum?                                          :=  0 ))

  ;; connect the datagram socket to a peer
  (connect (peer :~ address?))

  ;; recv data from the connected peer
  (recv (u8v   :~  u8vector?)
        (start :~ (in-range? 0 (u8vector-length u8v))               :=  0)
        (end   :~ (in-range-inclusive? start (u8vector-length u8v)) := (u8vector-length u8v))
        (flags :~  fixnum?                                          :=  0))

  ;; send data to the connected peer
  (send (u8v   :~ u8vector?)
        (start :~ (in-range? 0 (u8vector-length u8v))               :=  0 )
        (end   :~ (in-range-inclusive? start (u8vector-length u8v)) := (u8vector-length u8v))
        (flags :~  fixnum?                                          :=  0)))

(defrule (address? o)
  (or (pair? o)
      (string? o)))

(defrule (previous-input? type?)
  (lambda (o)
    (or (type? o)
        ((list-of? type?) o))))
