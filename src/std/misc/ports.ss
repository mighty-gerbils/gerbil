;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; miscellaneous port utilities
package: std/misc

(import :gerbil/gambit/ports
        :std/sugar)
(export copy-port)

;; _gambit#.scm
(extern namespace: #f
  macro-byte-port?
  macro-character-port?
  macro-port-mutex-lock!
  macro-port-mutex-unlock!
  macro-character-port-rlo
  macro-character-port-rlo-set!
  macro-character-port-rhi
  macro-character-port-rbuf
  macro-character-port-rbuf-fill
  macro-character-port-peek-eof?
  macro-character-port-peek-eof?-set!
  macro-byte-port-rlo
  macro-byte-port-rlo-set!
  macro-byte-port-rhi
  macro-byte-port-rbuf
  macro-byte-port-rbuf-fill
  )

(def (copy-port in out)
  (cond
   ((not (input-port? in))
    (error "Expected input port" in))
   ((not (output-port? out))
    (error "Expected output port" out))
   ((macro-byte-port? in)
    (cond
     ((macro-byte-port? out)
      (try-copy-byte-port in out))
     ((macro-character-port? out)
      (copy-character-port in out))
     (else
      (copy-object-port in out))))
   ((macro-character-port? in)
    (if (macro-character-port? out)
      (copy-character-port in out)
      (copy-object-port in out)))
   (else
    (copy-object-port in out))))

(def (try-copy-byte-port in out)
  (macro-port-mutex-lock! in)
  (if (or (fx< (macro-character-port-rlo in)
               (macro-character-port-rhi in))  ; has unread characters
          (macro-character-port-peek-eof? in)) ; eof is coming
    (copy-character-port/lock in out)
    (copy-byte-port/lock in out)))

(def (copy-character-port in out)
  (macro-port-mutex-lock! in)
  (copy-character-port/lock in out))

(def (copy-byte-port/lock in out)
  (def (loop)
    (let ((rlo (macro-byte-port-rlo in))
          (rhi (macro-byte-port-rhi in)))
      (if (fx< rlo rhi)
        (let (rbuf (macro-byte-port-rbuf in))
          (try
           (when (eq? in out)
             (macro-port-mutex-unlock! in))
           (write-subu8vector rbuf rlo rhi out)
           (when (eq? in out)
             (macro-port-mutex-lock! in))
           (catch (e)
             (unless (eq? in out)
               (macro-port-mutex-unlock! in))
             (raise e)))
          (macro-byte-port-rlo-set! in rhi)
          (rbuf-fill))
        (rbuf-fill))))

  (def (rbuf-fill)
    (let* ((rbuf (macro-byte-port-rbuf in))
           (res ((macro-byte-port-rbuf-fill in) in
                 (##u8vector-length rbuf) #t)))
      (cond
       ((eq? res ##err-code-EAGAIN)     ; timeout -> eof, we are done
        (macro-port-mutex-unlock! in))
       ((fixnum? res)                   ; error
        (macro-port-mutex-unlock! in)
        (##raise-os-io-exception in #f res copy-port in out))
       (res                             ; bytes were added
        (loop))
       (else                            ; no bytes were added, eof
        (macro-port-mutex-unlock! in)))))

  (loop))

(def (copy-character-port/lock in out)
  (def (loop)
    (let ((rlo (macro-character-port-rlo in))
          (rhi (macro-character-port-rhi in)))
      (cond
       ((fx< rlo rhi)
        (let (rbuf (macro-character-port-rbuf in))
          (try
           (when (eq? in out)
             (macro-port-mutex-unlock! in))
           (write-substring rbuf rlo rhi out)
           (when (eq? in out)
             (macro-port-mutex-lock! in))
           (catch (e)
             (unless (eq? in out)
               (macro-port-mutex-unlock! in))
             (raise e)))
          (macro-character-port-rlo-set! in rhi)
          (rbuf-fill)))
       ((macro-character-port-peek-eof? in)
        (macro-character-port-peek-eof?-set! in #f)
        (macro-port-mutex-unlock! in))
       (else
        (rbuf-fill)))))

  (def (rbuf-fill)
    (let* ((rbuf (macro-character-port-rbuf in))
           (res ((macro-character-port-rbuf-fill in) in
                 (##string-length rbuf) #t)))
      (cond
       ((eq? res ##err-code-EAGAIN)     ; timeout -> eof
        (macro-port-mutex-unlock! in))
       ((fixnum? res)
        (macro-port-mutex-unlock! in)
        (##raise-os-io-exception in #f res copy-port in out))
       (res                             ; some chars were added
        (loop))
       (else                            ; no chars were added, eof
        (macro-port-mutex-unlock! in)))))

  (loop))

(def (copy-object-port in out)
  (let lp ((next (read in)))
    (unless (eof-object? next)
      (write next out)
      (lp (read in)))))
