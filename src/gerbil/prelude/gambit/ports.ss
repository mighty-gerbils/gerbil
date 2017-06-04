;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: ports
package: gerbil/gambit

(export #t)
(import (only-in :gerbil/gambit/hvectors u8vector-length))
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
  tcp-server-socket-info
  
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

(def (read-string str (port (current-input-port)))
  (read-substring str 0 (string-length str) port))

(def (write-u8vector bytes (port (current-output-port)))
  (write-subu8vector bytes 0 (u8vector-length bytes) port))

(def (read-u8vector bytes (port (current-input-port)))
  (read-subu8vector bytes 0 (u8vector-length bytes) port))
