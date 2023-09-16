;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto etc

(export libcrypto-error? raise-libcrypto-error with-libcrypto-error
        call-with-binary-input
        random-bytes random-bytes!
        as-bytes)
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

(defclass (LibCryptoError Error) ())
(defmethod {:init! LibCryptoError}
  (lambda (self errno . irritants)
    (Error:::init! self
                   (or (ERR_reason_error_string errno) "Unknown error")
                   where: (string-append
                           (or (ERR_lib_error_string errno) "?") ":"
                           (or (ERR_func_error_string errno) "?"))
                   irritants: (cons errno irritants))))
(def libcrypto-error? LibCryptoError?)

(def (raise-libcrypto-error . irritants)
  (raise (LibCryptoError (ERR_get_error) irritants)))

(defrules with-libcrypto-error ()
  ((_ expr irritants ...)
   (let (res expr)
     (if (##fxpositive? res)
       res
       (apply raise-libcrypto-error '(irritants ...))))))

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
   (proc in start (##u8vector-length in)))
  ((proc in start end)
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
        (unless (##fxzero? rd)
          (proc buf 0 rd)
          (lp))))))

(def (call-with-binary-input-character-port proc in fill?)
  (let ((buf (##make-string 512))
        (need (if fill? 1 absent-obj)))
    (let lp ()
      (let (rd (##read-substring buf 0 512 in need))
        (unless (##fxzero? rd)
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

(def (random-bytes len)
  (let (bytes (make-u8vector len))
    (random-bytes! bytes 0 len)
    bytes))

(def (random-bytes! bytes (start 0) (end (u8vector-length bytes)))
  (let (result (RAND_bytes bytes start end))
    (unless (= result 1)
      (raise-libcrypto-error "Error in RAND_bytes"))))

(def (as-bytes in)
  (cond
   ((u8vector? in) in)
   ((string? in) (string->utf8 in))
   (else
    (error "Expected u8vector or string" in))))
