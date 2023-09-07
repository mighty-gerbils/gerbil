;;; -*- Gerbil -*-
;;; © vyzo
;;; Standard IO interfaces
(import :std/interface)
(export #t)

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
  (read u8v (start 0) (end (u8vector-length u8v)) (need 0)))


(interface Writer
  ;; write from a buffer; it _must_ be a u8vector
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end; #f means the end of the buffer
  ;; Returns the number of bytes written.
  (write u8v (start 0) (end (u8vector-length u8v))))

;; buffered IO
(interface (BufferedReader Reader)
  ;; reads a single byte
  (read-u8)
  ;; peeks the next byte
  (peek-u8)

  ;; puts back some bytes previously read; can also inject bytes.
  ;; - previous-input is a u8 or a list of u8s injected back into the buffer
  (put-back previous-input)

  ;; skips the next count bytes of input
  (skip count)

  ;; returns a new BufferedReader instance delimiting the input length that shares the underlying
  ;; buffer; the limit must be a fixnum.
  (delimit limit)

  ;; resets the underlying reader and buffer state, allowing reuse of buffers.
  (reset! reader))

(interface (BufferedWriter Writer)
  ;; writes a single byte
  (write-u8 u8)

  ;; flushes the buffer to the underlyin output instance
  (flush)

  ;; resets the underlying output and buffer state, allowing reuse of buffers.
  (reset! output))

;; string/textual IO
(interface (StringReader Closer)
  ;; read into a string
  (read-string str (start 0) (end (string-length str)) (need 0)))

(interface (BufferedStringReader StringReader)
  ;; reads a single char
  (read-char)
  ;; peeks the next char
  (peek-char)

  ;; puts back some chars previously read; can also inject characters.
  ;; - previous-input is a char or a list of chars injected into the buffer
  (put-back previous-input)

    ;; skips the next count bytes of input
  (skip count)

  ;; returns a new StringBufferedReader instance delimiting the input length that shares
  ;; the underlying buffer; the limit must be a fixnum.
  (delimit limit)

  ;; resets the underlying reader and buffer state, allowing reuse of buffers.
  (reset! reader))

(interface (StringWriter Closer)
  ;; write a string
  (write-string str (start 0) (end (string-length str))))

(interface (BufferedStringWriter StringWriter)
  ;; write a single char
  (write-char char)
  ;; flush output
  (flush)
  ;; resets the underlying output and buffer state, allowing reuse of buffers.
  (reset! output))

;; socket interfaces
(interface (Socket Closer)
  (domain)
  (address)
  (peer-address)
  (getsockopt level option)
  (setsockopt level option value)
  (set-input-timeout! timeo)
  (set-output-timeout! timeo))

(interface (StreamSocket Socket)
  ;; receives data into a buffer; it _must_ be a u8vecotr
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end.
  ;; Returns the number of bytes read.
  (recv u8v (start 0) (end (u8vector-length u8v)) (flags 0))

  ;; sends data from a buffer; it _must_ be a u8vector
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end.
  ;; Returns the number of bytes written.
  (send u8v (start 0) (end (u8vector-length u8v)) (flags 0))

  ;; returns a Reader instance reading from the socket
  (reader)

  ;; returns a Writer instance writing to the socket
  (writer)

  ;; shuts down the socket in one direction which must be 'in, 'out or 'inout
  ;; if both directions are closed the socket is also closed.
  (shutdown direction))

(interface (ServerSocket Socket)
  ;; accept waits for an incoming connection and returns a StreamSocket
  (accept))

(interface (DatagramSocket Socket)
  ;; receives data into a buffer; it _must_ be a u8vecotr
  ;; - peer is a _box_ to place the peer's address.
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end
  ;; Returns the number of bytes read.
  (recvfrom peer u8v (start 0) (end (u8vector-length u8v)) (flags 0))

  ;; sends data from a buffer; it _must_ be a u8vector
  ;; - peer is the address of the peer
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end; #f means the end of the buffer
  ;; Returns the number of bytes written.
  (sendto peer u8v (start 0) (end (u8vector-length u8v)) (flags 0))

  ;; connect the datagram socket to a peer
  (connect peer)
  ;; recv data from the connected peer
  (recv u8v (start 0) (end (u8vector-length u8v)) (flags 0))
  ;; send data to the connected peer
  (send u8v (start 0) (end (u8vector-length u8v)) (flags 0)))
