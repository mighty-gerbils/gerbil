;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme base) library -- implementation details
package: scheme

(import :gerbil/gambit/ports
        :gerbil/gambit/misc
        :gerbil/gambit/exceptions)
(export #t)

(def (r7rs-read-string k (port (current-input-port)))
  (unless (and (fixnum? k) (fx> k 0))
    (error "Illegal argument; expected positive fixnum" k))
  (let* ((str (make-string k))
         (rd (read-substring str 0 k port)))
    (cond
     ((fxzero? rd)
      (eof-object))
     ((fx< rd k)
      (string-shrink! str rd)
      str)
     (else
      str))))

(def (read-bytevector k (port (current-input-port)))
  (unless (and (fixnum? k) (fx> k 0))
    (error "Illegal argument; expected positive fixnum" k))
  (let* ((bytes (make-u8vector k))
         (rd (read-subu8vector bytes 0 k port)))
    (cond
     ((fxzero? rd)
      (eof-object))
     ((fx< rd k)
      (u8vector-shrink! bytes rd)
      bytes)
     (else
      bytes))))

(def (read-bytevector! bytes (port (current-input-port)) (start 0) (end (u8vector-length bytes)))
  (unless (and (fixnum? start) (fixnum? end) (fx< start end))
    (error "Illegal bytevector range; need at least one char" start end))
  (let (rd (read-subu8vector bytes start end port))
    (if (fxzero? rd)
      (eof-object)
      rd)))

(def (write-bytevector bytes (port (current-output-port)) (start 0) (end (u8vector-length bytes)))
  (write-subu8vector bytes start end port))

(def (read-error? obj)
  (or (datum-parsing-exception? obj)
      (expression-parsing-exception? obj)))

(def (file-error? obj)
  (or (no-such-file-or-directory-exception? obj)
      (os-exception? obj)))

;; _gambit#.scm
(extern namespace: #f
  macro-byte-port?
  macro-character-port?)

(def (binary-port? obj)
  (macro-byte-port? obj))

(def (textual-port? obj)
  (macro-character-port? obj))


;; R7RS spec:
;; "The call-with-port procedure calls proc with port as an
;;  argument. If proc returns, then the port is closed auto-
;;  matically and the values yielded by the proc are returned.
;;  If proc does not return, then the port must not be closed
;;  automatically unless it is possible to prove that the port
;;  will never again be used for a read or write operation."
;;
;; We can't prove anything about the behaviour of the exception
;; handler, so we can't close a port in an exceptoin catcher.
;; The only sensible thing to do is to close it on a normal
;; return and will a close by the finalizer otherwise.
(def (call-with-port port proc)
  (let* ((will (make-will port close-port))
         (res (proc port)))
    (will-execute! will)
    res))

;; _gambit#.scm
(extern namespace: #f
  macro-port-mutex-lock!
  macro-port-mutex-unlock!
  macro-character-port-rlo
  macro-character-port-rhi
  macro-character-port-peek-eof?
  macro-byte-port-rlo
  macro-byte-port-rhi
  macro-byte-port-rbuf
  macro-byte-port-rbuf-fill
  )

(def (port-buffered-chars? port)
  (or (fx< (macro-character-port-rlo port)
           (macro-character-port-rhi port))
      (macro-character-port-peek-eof? port)))

(def (check-byte-port/lock! port proc)
  (unless (macro-byte-port? port)
    (error "Illegal argument; expected byte-port" port))
  (macro-port-mutex-lock! port)
  (when (port-buffered-chars? port)
    (macro-port-mutex-unlock! port)
    (##raise-nonempty-input-port-character-buffer-exception port proc port)))

(def (u8-ready? port)
  (check-byte-port/lock! port u8-ready?)
  (let ((byte-rlo (macro-byte-port-rlo port))
        (byte-rhi (macro-byte-port-rhi port)))
    (if (fx< byte-rlo byte-rhi)
      (begin
        (macro-port-mutex-unlock! port)
        #t)
      (let (res ((macro-byte-port-rbuf-fill port) port 1 #f))
        (macro-port-mutex-unlock! port)
        (cond
         ((eq? res ##err-code-EAGAIN)   ; read-u8 would block
          #f)
         ((fixnum? res)
          (##raise-os-io-exception port #f res peek-u8 port))
         (else #t))))))

(def (peek-u8 port)
  (check-byte-port/lock! port peek-u8)
  (let lp ()
    (let ((byte-rlo (macro-byte-port-rlo port))
          (byte-rhi (macro-byte-port-rhi port)))
      (if (fx< byte-rlo byte-rhi)
        (let (byte (u8vector-ref (macro-byte-port-rbuf port) byte-rlo))
          (macro-port-mutex-unlock! port)
          byte)
        (let (res ((macro-byte-port-rbuf-fill port) port 1 #t))
          (cond
           ((eq? res ##err-code-EAGAIN) ; timeout thunk => #f => eof
            (macro-port-mutex-unlock! port)
            (eof-object))
           ((fixnum? res)
            (macro-port-mutex-unlock! port)
            (##raise-os-io-exception port #f res peek-u8 port))
           (res                    ; some bytes were added to the buffer
            (lp))
           (else                   ; no bytes were added - eof reached
            (macro-port-mutex-unlock! port)
            (eof-object))))))))
