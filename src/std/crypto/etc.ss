;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto etc
package: std/crypto

(export libcrypto-error? raise-libcrypto-error with-libcrypto-error
        check-bytes check-bytes-start check-bytes-end check-bytes-range
        call-with-binary-input
        random-bytes random-bytes!)
(import :gerbil/gambit/threads
        :gerbil/gambit/ports
        :std/error
        :std/format
        :std/text/utf8
        :std/crypto/libcrypto)

;; _gambit#
(extern namespace: #f
  macro-byte-input-port?
  macro-character-input-port?
  macro-port-mutex
  macro-character-port-rlo
  macro-character-port-rhi
  macro-character-port-rbuf
  macro-character-port-rlo-set!)

(defstruct (libcrypto-error <error>) ()
  constructor: :init!)

(defmethod {:init! libcrypto-error}
  (lambda (self errno irritants)
    (struct-instance-init!
     self
     (or (ERR_reason_error_string errno) "Unknown error")
     (cons errno irritants)
     (string-append
      (or (ERR_lib_error_string errno) "?") ":"
      (or (ERR_func_error_string errno) "?")))))

(defmethod {display-exception libcrypto-error}
  (lambda (self port)
    (fprintf port "Libcrypto error [~a]: ~a ~a~n"
      (error-trace self)
      (error-message self)
      (error-irritants self))))

(def (raise-libcrypto-error . irritants)
  (raise (make-libcrypto-error (ERR_get_error) irritants)))

(defrules with-libcrypto-error ()
  ((_ expr irritants ...)
   (let (res expr)
     (when (fxzero? res)
       (apply raise-libcrypto-error '(irritants ...))))))

(def (check-bytes bytes (size #f))
  (unless (u8vector? bytes)
    (error "Expected bytes" bytes))
  (when size
    (unless (fx= (u8vector-length bytes) size)
      (error (format "Expected bytes with size ~a" size) bytes size))))

(def (check-bytes-start bytes start)
  (unless (and (fixnum? start) (fx<= 0 start (u8vector-length bytes)))
    (error "Invalid byte range start" start (u8vector-length bytes))))

(def (check-bytes-end bytes start end)
  (unless (and (fixnum? end) (fx<= start end (u8vector-length bytes)))
    (error "Invalid byte range end" end start (u8vector-length bytes))))

(def (check-bytes-range bytes start end)
  (check-bytes bytes)
  (check-bytes-start bytes start)
  (check-bytes-end bytes start end))

(def (call-with-binary-input proc in . args)
  (cond
   ((u8vector? in)
    (apply call-with-binary-input-u8vector proc in args))
   ((string? in)
    (apply call-with-binary-input-string proc in args))
   ((input-port? in)
    (apply call-with-binary-input-port proc in args))
   (else
    (error "Unexpected input source" in))))

(def* call-with-binary-input-u8vector
  ((proc in)
   (proc in 0 (##u8vector-length in)))
  ((proc in start)
   (check-bytes-start in start)
   (proc in start (##u8vector-length in)))
  ((proc in start end)
   (check-bytes-start in start)
   (check-bytes-end in start end)
   (proc in start end)))

(def* call-with-binary-input-string
  ((proc in)
   (call-with-binary-input-u8vector proc (string->utf8 in)))
  ((proc in start)
   (call-with-binary-input-u8vector proc
     (utf8-encode in start (##string-length in))))
  ((proc in start end)
   (call-with-binary-input-u8vector proc (utf8-encode in start end))))

(def (call-with-binary-input-port proc in (fill? #t))
  (cond
   ((macro-byte-input-port? in)
    (call-with-binary-input-byte-port proc in fill?))
   ((macro-character-input-port? in)
    (call-with-binary-input-character-port proc in fill?))
   (else
    (error "Unusable input-port; need a character or byte port" in))))

(def (call-with-binary-input-byte-port proc in fill?)
  ;; drain the character buf first so that we can use ##read-subu8vector
  ;; assumes that there is no contention reading to the port
  ;; ideally the gambit runtime would do this itself
  (let (bytes (drain-input-character-buffer in))
    (when bytes
      (proc bytes 0 (##u8vector-length bytes))))

  (let ((buf (##make-u8vector 1024))
        (need (if fill? 1 absent-obj)))
    (let lp ()
      (let (rd (##read-subu8vector buf 0 1024 in need))
        (unless (fxzero? rd)
          (proc buf 0 rd)
          (lp))))))

(def (call-with-binary-input-character-port proc in fill?)
  (let ((buf (##make-string 512))
        (need (if fill? 1 absent-obj)))
    (let lp ()
      (let (rd (##read-substring buf 0 512 in need))
        (unless (fxzero? rd)
          (let (bytes (utf8-encode buf 0 rd))
            (proc bytes 0 (##u8vector-length bytes))
            (lp)))))))

(def (drain-input-character-buffer port)
  (with-lock (macro-port-mutex port)
    (lambda ()
      (if (##fx< (macro-character-port-rlo port)
                 (macro-character-port-rhi port))
        (let (buf (utf8-encode (macro-character-port-rbuf port)
                               (macro-character-port-rlo port)
                               (macro-character-port-rhi port)))
          (macro-character-port-rlo-set! port (macro-character-port-rhi port))
          buf)
        #f))))

(def *urandom* (open-input-file "/dev/urandom"))

(def (random-bytes len)
  (let (bytes (make-u8vector len))
    (random-bytes! bytes 0 len)
    bytes))

(def (random-bytes! bytes (start 0) (end (u8vector-length bytes)))
  (let (count (read-subu8vector bytes start end *urandom*))
    (unless (eq? count (fx- end start))
      (error "Could not read enough random bytes" count start end))))
