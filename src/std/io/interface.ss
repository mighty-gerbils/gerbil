;;; -*- Gerbil -*-
;;; © vyzo
;;; Standard IO interfaces
(import :std/interface)
(export #t)

;; generic binary IO
(interface Reader
  ;; read into a buffer; it _must_ be a u8vector.
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end
  ;; - need denotes the minimum required input; it must be a fixnum
  ;; Returns the number of bytes read; 0 denotes the end of input.
  ;; If less than the needed bytes are read, an io-error is raised.
  (read u8v (start 0) (end (u8vector-length u8v)) (need 0))

  ;; closes the underlying device
  (close))

(interface Writer
  ;; write from a buffer; it _must_ be a u8vector
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end; #f means the end of the buffer
  ;; Returns the number of bytes written.
  (write u8v (start 0) (end (u8vector-length u8v)))

  ;; closes the underlying device
  (close))

;; buffered IO
(interface (BufferedReader Reader)
  ;; reads a single byte
  (read-u8)
  ;; peeks the next byte
  (peek-u8)

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

;; socket interfaces
(interface StreamSocket
  ;; receives data into a buffer; it _must_ be a u8vecotr
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end.
  ;; Returns the number of bytes read.
  (recv u8v (start 0) (end (u8vector-length u8v)))

  ;; sends data from a buffer; it _must_ be a u8vector
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end.
  ;; Returns the number of bytes written.
  (send u8v (start 0) (end (u8vector-length u8v)))

  ;; returns a Reader instance reading from the socket
  (reader)

  ;; returns a Writer instance writing to the socket
  (writer)

  ;; returns the socket's local address
  (local-address)

  ;; returns the socket's peer address
  (peer-address)

  ;; shuts down the socket in one direction which must be 'in or 'out
  ;; if both directions are closed the socket is also closed.
  (shutdown direction)

  ;; closes the socket
  (close)

  ;; sets the input timeout, which must be a relative or absolute time.
  ;; #f clears the timeout
  (set-input-timeout! timeo)

  ;; sets the output timeout, which must be a relative or absolute time.
  ;; #f clears the timeout
  (set-output-timeout! timeo))

(interface ServerSocket
  ;; accept waits for an incoming connection and returns a StreamSocket
  ;; sockopts is an optional list of socket options
  (accept (sockopts #f))

  ;; closes the socket
  (close)

  ;; sets the accept timeout, which must be a relative or absolute time.
  ;; #f clears the timeout
  (set-accept-timeout! timeo))

(interface DatagramSocket
  ;; receives data into a buffer; it _must_ be a u8vecotr
  ;; - peer is a box to place the peer's address.
  ;; - start denotes the start of the read region; it must be a fixnum within the buffer range.
  ;; - end denotes the read region end
  ;; Returns the number of bytes read.
  (recvfrom peer u8v (start 0) (end (u8vector-length u8v)))

  ;; sends data from a buffer; it _must_ be a u8vector
  ;; - start denotes the start of the write region; it must be a fixnum within the buffer range.
  ;; - end denotes the write region end; #f means the end of the buffer
  ;; Returns the number of bytes written.
  (sendto peer u8v (start 0) (end (u8vector-length u8v)))

  ;; returns the socket's local address
  (local-address)

  ;; closes the socket
  (close)

  ;; sets the input timeout, which must be a relative or absolute time.
  ;; #f clears the timeout
  (set-input-timeout! timeo))
