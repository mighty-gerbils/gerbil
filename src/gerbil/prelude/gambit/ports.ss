;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: ports
package: gerbil/gambit

(export #t)
(extern namespace: #f
  port? close-port force-output

  input-port-timeout-set!
  output-port-timeout-set!
  input-port-line
  input-port-column
  output-port-line
  output-port-column

  output-port-width
  read-all
  read-line
  read-substring
  write-substring
  input-port-readtable
  output-port-readtable
  input-port-readtable-set!
  output-port-readtable-set!

  read-u8
  write-u8
  read-subu8vector
  write-subu8vector
  open-file
  input-port-byte-position
  output-port-byte-position
  open-tcp-client
  open-tcp-server
  tcp-service-register!
  tcp-service-unregister!

  ;; v4.8+
  make-tls-context

  socket-info?
  socket-info-family
  socket-info-port-number
  socket-info-address
  tcp-client-peer-socket-info
  tcp-client-self-socket-info
  tcp-client-local-socket-info ; v4.8.8-20180130
  tcp-server-socket-info

  ;; UDP v4.8.8-20180130
  open-udp
  udp-destination-set!
  udp-local-socket-info
  udp-read-subu8vector
  udp-read-u8vector
  udp-source-socket-info
  udp-write-subu8vector
  udp-write-u8vector

  open-directory

  open-vector
  open-input-vector
  open-output-vector
  call-with-input-vector
  call-with-output-vector
  with-input-from-vector
  with-output-to-vector
  open-vector-pipe
  get-output-vector

  open-string
  open-input-string
  open-output-string
  call-with-input-string
  call-with-output-string
  with-input-from-string
  with-output-to-string
  open-string-pipe
  get-output-string
  object->string

  print
  println

  open-u8vector open-input-u8vector open-output-u8vector
  call-with-input-u8vector with-input-from-u8vector
  call-with-output-u8vector with-output-to-u8vector
  open-u8vector-pipe
  get-output-u8vector
  object->u8vector

  open-process open-input-process open-output-process
  call-with-input-process call-with-output-process
  with-input-from-process with-output-to-process
  process-pid process-status

  with-input-from-port with-output-to-port
  input-port-char-position output-port-char-position
  open-event-queue
  open-dummy
  port-settings-set!
  input-port-bytes-buffered
  input-port-characters-buffered
  repl-input-port repl-output-port console-port
  )

(def (write-string str (port (current-output-port)))
  (write-substring str 0 (string-length str) port))

(def (read-string obj (port (current-input-port)))
  (cond
   ((fixnum? obj)
    ;; r7rs semantics
    (unless (##fx>= obj 0)
      (error "Bad argument; expected non-negative fixnum" obj))
    (let* ((str (make-string obj))
           (rd (read-substring str 0 obj port)))
      (cond
       ((##fxzero? obj)
        str)
       ((##fxzero? rd)
        (eof-object))
       ((##fx< rd obj)
        (string-shrink! str rd)
        str)
       (else str))))
   ((string? obj)
    (read-substring obj 0 (##string-length obj) port))
   (else
    (error "Bad argument; expected string or non-negative fixnum" obj))))

(def (write-u8vector bytes (port (current-output-port)))
  (write-subu8vector bytes 0 (u8vector-length bytes) port))

(def (read-u8vector obj (port (current-input-port)))
  (cond
   ((fixnum? obj)
    ;; r7rs semantics
    (unless (##fx>= obj 0)
      (error "Bad argument; expected non-negative fixnum" obj))
    (let* ((bytes (make-u8vector obj))
           (rd (read-subu8vector bytes 0 obj port)))
      (cond
       ((##fxzero? obj)
        bytes)
       ((##fxzero? rd)
        (eof-object))
       ((##fx< rd obj)
        (u8vector-shrink! bytes rd)
        bytes)
       (else bytes))))
   ((u8vector? obj)
    (read-subu8vector obj 0 (##u8vector-length obj) port))
   (else
    (error "Bad argument; expected u8vector or non-negative fixnum" obj))))
