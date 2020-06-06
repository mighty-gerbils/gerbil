;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; extensible binary i/o buffers with port compatible interface
;;; Warning: Low level unsafe interface; let their be Dragons.

(import :gerbil/gambit/bits
        :std/text/utf8
        :std/error)
(export (except-out #t 2^15 2^16 2^31 2^32))

(declare (not safe))

;;; Input buffers
;;; e: u8vector
;;; rlo: read range low mark, where the next read can begin
;;; rhi: read range hi mark, where the read must end
;;; fill: lambda (buf need) => fixnum?
;;;       fill the buffer with need bytes in read range
;;; read: lambda (bytes start end buf) => fixnum?
;;;       read unbuffered
;;;       precondition: buffer is empty
(defstruct input-buffer (e rlo rhi fill read)
  unchecked: #t)

(def (bio-input-fill! buf need)
  ((&input-buffer-fill buf) buf need))

(def (bio-input-read bytes start end buf)
  ((&input-buffer-read buf) bytes start end buf))

(def (bio-read-u8 buf)
  (let ((rlo (&input-buffer-rlo buf))
        (rhi (&input-buffer-rhi buf)))
    (if (##fx< rlo rhi)
      (let (u8 (##u8vector-ref (&input-buffer-e buf) rlo))
        (set! (&input-buffer-rlo buf)
          (##fx+ rlo 1))
        u8)
      (let (rd (bio-input-fill! buf 1))
        (if (##fxzero? rd)
          (eof-object)
          (let* ((rlo (&input-buffer-rlo buf))
                 (u8 (##u8vector-ref (&input-buffer-e buf) rlo)))
            (set! (&input-buffer-rlo buf)
              (##fx+ rlo 1))
            u8))))))

(def (bio-peek-u8 buf)
  (let ((rlo (&input-buffer-rlo buf))
        (rhi (&input-buffer-rhi buf)))
    (if (##fx< rlo rhi)
      (##u8vector-ref (&input-buffer-e buf) rlo)
      (let (rd (bio-input-fill! buf 1))
        (if (##fxzero? rd)
          (eof-object)
          (let (rlo (&input-buffer-rlo buf))
            (##u8vector-ref (&input-buffer-e buf) rlo)))))))

(def (bio-read-subu8vector bytes start end buf)
  (let* ((rlo (&input-buffer-rlo buf))
         (rhi (&input-buffer-rhi buf))
         (need (##fx- end start))
         (rlo+need (##fx+ rlo need)))
    (cond
     ((##fx<= rlo+need rhi)             ; have all
      (##subu8vector-move! (&input-buffer-e buf) rlo rlo+need bytes start)
      (set! (&input-buffer-rlo buf)
        rlo+need)
      need)
     ((##fx< rlo rhi)                   ; have some
      (##subu8vector-move! (&input-buffer-e buf) rlo rhi bytes start)
      (set! (&input-buffer-rlo buf)
        rhi)
      (let* ((have (##fx- rhi rlo))
             (need (##fx- need have)))
        ;; does it make sense to buffer?
        (if (##fx< need (##u8vector-length (&input-buffer-e buf)))
          (let (rd (bio-input-fill! buf need))
            (if (##fx> rd 0)
              (##fx+ have (bio-read-subu8vector bytes (##fx+ start have) end buf))
              have))
          (##fx+ have (bio-input-read bytes (##fx+ start have) end buf)))))
     ;; have none, does it make sense to buffer?
     ((##fx< need (##u8vector-length (&input-buffer-e buf)))
      (let (rd (bio-input-fill! buf need))
        (if (##fx> rd 0)
          (bio-read-subu8vector bytes start end buf)
          0)))
     ;; read unbuffered
     (else
      (bio-input-read bytes start end buf)))))

(def (bio-read-subu8vector* bytes start end buf (need 0))
  (let* ((rlo  (&input-buffer-rlo buf))
         (rhi  (&input-buffer-rhi buf))
         (have (##fx- rhi rlo))
         (want (##fx- end start))
         (need (##fxmin want need))
         (copy (##fxmin want have)))
    (when (##fx> copy 0)
      (let (rlo+copy (##fx+ rlo copy))
        (##subu8vector-move! (&input-buffer-e buf) rlo rlo+copy bytes start)
        (set! (&input-buffer-rlo buf)
          rlo+copy)))
    (if (##fx>= copy need)
      copy
      (let (rd (bio-input-fill! buf 1))
        (if (##fx> rd 0)
          (bio-read-subu8vector* bytes (##fx+ start copy) end buf (##fx- need copy))
          copy)))))

(def (bio-read-subu8vector-unbuffered bytes start end buf)
  (let* ((need (##fx- end start))
         (rlo (&input-buffer-rlo buf))
         (rhi (&input-buffer-rhi buf))
         (rlo+need (##fx+ rlo need)))
    (cond
     ((##fx<= rlo+need rhi)             ; have all
      (##subu8vector-move! (&input-buffer-e buf) rlo rlo+need bytes start)
      (set! (&input-buffer-rlo buf)
        rlo+need)
      need)
     ((##fx< rlo rhi)                   ; have some
      (let (have (##fx- rhi rlo))
        (##subu8vector-move! (&input-buffer-e buf) rlo rhi bytes start)
        (set! (&input-buffer-rlo buf)
          rhi)
        (##fx+ have (bio-input-read bytes (##fx+ start have) end buf))))
     (else                              ; have none
      (bio-input-read bytes start end buf)))))

(def (bio-read-bytes bytes buf)
  (let* ((len (u8vector-length bytes))
         (rd (bio-read-subu8vector bytes 0 len buf)))
    (unless (##fx= rd len)
      (raise-io-error 'bio-read-bytes "premature end of input" buf rd len))))

(def (bio-read-bytes-unbuffered bytes buf)
  (let* ((len (u8vector-length bytes))
         (rd (bio-read-subu8vector-unbuffered bytes 0 len buf)))
    (unless (##fx= rd len)
      (raise-io-error 'bio-read-bytes "premature end of input" buf rd len))))

(def (bio-read-u32 buf)
  (let* ((rlo (&input-buffer-rlo buf))
         (rhi (&input-buffer-rhi buf))
         (rlo+4 (##fx+ rlo 4)))
    (if (##fx<= rlo+4 rhi)
      (let (u32 (bio-get-u32 (&input-buffer-e buf) rlo))
        (set! (&input-buffer-rlo buf)
          rlo+4)
        u32)
      (let* ((_ (bio-input-fill! buf 4))
             (rlo (&input-buffer-rlo buf))
             (rhi (&input-buffer-rhi buf))
             (rlo+4 (##fx+ rlo 4)))
        (if (##fx<= rlo+4 rhi)
          (let (u32 (bio-get-u32 (&input-buffer-e buf) rlo))
            (set! (&input-buffer-rlo buf)
              rlo+4)
            u32)
          (raise-io-error 'bio-read-u32 "Premature end of input" buf rlo rhi))))))

(def (bio-get-u32 u8v start)
  (cond
   ((##fxarithmetic-shift-left? (##u8vector-ref u8v start) 24)
    => (lambda (bits)
         (##fxior bits
                  (##fxarithmetic-shift-left (##u8vector-ref u8v (##fx+ start 1)) 16)
                  (##fxarithmetic-shift-left (##u8vector-ref u8v (##fx+ start 2)) 8)
                  (##u8vector-ref u8v (##fx+ start 3)))))
   (else
    (bitwise-ior (arithmetic-shift (##u8vector-ref u8v start) 24)
                 (##fxarithmetic-shift-left (##u8vector-ref u8v (##fx+ start 1)) 16)
                 (##fxarithmetic-shift-left (##u8vector-ref u8v (##fx+ start 2)) 8)
                 (##u8vector-ref u8v (##fx+ start 3))))))

(def 2^31 (expt 2 31))
(def 2^32 (expt 2 32))

(def (bio-read-s32 buf)
  (let (u32 (bio-read-u32 buf))
    (if (> u32 2^31)
      (- u32 2^32)
      u32)))

(def (bio-read-u16 buf)
  (let* ((rlo (&input-buffer-rlo buf))
         (rhi (&input-buffer-rhi buf))
         (rlo+2 (##fx+ rlo 2)))
    (if (##fx<= rlo+2 rhi)
      (let (u16 (bio-get-u16 (&input-buffer-e buf) rlo))
        (set! (&input-buffer-rlo buf)
          rlo+2)
        u16)
      (let* ((_ (bio-input-fill! buf 2))
             (rlo (&input-buffer-rlo buf))
             (rhi (&input-buffer-rhi buf))
             (rlo+2 (##fx+ rlo 2)))
        (if (##fx<= rlo+2 rhi)
          (let (u16 (bio-get-u16 (&input-buffer-e buf) rlo))
            (set! (&input-buffer-rlo buf)
              rlo+2)
            u16)
          (raise-io-error 'bio-read-u16 "Premature end of input" buf rlo rhi))))))

(def (bio-get-u16 u8v start)
  (##fxior (##fxarithmetic-shift-left (##u8vector-ref u8v start) 8)
           (##u8vector-ref u8v (##fx+ start 1))))

(def 2^15 (expt 2 15))
(def 2^16 (expt 2 16))

(def (bio-read-s16 buf)
  (let (u16 (bio-read-u16 buf))
    (if (##fx> u16 2^15)
      (##fx- u16 2^16)
      u16)))

(def (bio-read-char buf)
  (def (fill+recur! need)
    (let (rd (bio-input-fill! buf need))
      (if (##fxzero? rd)
        (raise-io-error 'bio-read-char "Incomplete character" buf)
        (bio-read-char buf))))

  (def (get-byte i)
    (##u8vector-ref (&input-buffer-e buf) i))

  (let ((rlo (&input-buffer-rlo buf))
        (rhi (&input-buffer-rhi buf)))
    (if (##fx< rlo rhi)
      (let (byte (get-byte rlo))
        (cond
         ((##fx<= byte #x7f)
          (set! (&input-buffer-rlo buf)
            (##fx+ rlo 1))
          (##integer->char byte))
         ((##fx<= byte #xdf)
          (let (rlo+1 (##fx+ rlo 1))
            (if (##fx< rlo+1 rhi)
              (let (byte2 (get-byte rlo+1))
                (set! (&input-buffer-rlo buf)
                  (##fx+ rlo 2))
                (##integer->char
                 (##fxior (##fxarithmetic-shift-left (##fxand byte #x1f) 6)
                          (##fxand byte2 #x3f))))
              (fill+recur! 2))))
         ((##fx<= byte #xef)
          (let (rlo+2 (##fx+ rlo 2))
            (if (##fx< rlo+2 rhi)
              (let ((byte2 (get-byte (##fx+ rlo 1)))
                    (byte3 (get-byte rlo+2)))
                (set! (&input-buffer-rlo buf)
                  (##fx+ rlo 3))
                (##integer->char
                 (##fxior (##fxarithmetic-shift-left (##fxand byte #x0f) 12)
                          (##fxarithmetic-shift-left (##fxand byte2 #x3f) 6)
                          (##fxand byte3 #x3f))))
              (fill+recur! 3))))
         ((##fx<= byte #xf4)
          (let (rlo+3 (##fx+ rlo 3))
            (if (##fx< rlo+3 rhi)
              (let ((byte2 (get-byte (##fx+ rlo 1)))
                    (byte3 (get-byte (##fx+ rlo 2)))
                    (byte4 (get-byte rlo+3)))
                (set! (&input-buffer-rlo buf)
                  (##integer->char
                   (##fxior (##fxarithmetic-shift-left (##fxand byte #x07) 18)
                            (##fxarithmetic-shift-left (##fxand byte2 #x3f) 12)
                            (##fxarithmetic-shift-left (##fxand byte3 #x3f) 6)
                            (##fxand byte4 #x3f)))))
              (fill+recur! 4))))
         (else
          ;; invalid character, issue UTF-8 replacement character
          (set! (&input-buffer-rlo buf)
            (##fx+ rlo 1))
          #\xfffd)))
      (let (rd (bio-input-fill! buf 1))
        (if (##fxzero? rd)
          (eof-object)
          (bio-read-char buf))))))

(def (bio-read-substring str start end buf)
  (let lp ((i start) (count 0))
    (if (##fx< i end)
      (let (char (bio-read-char str))
        (if (eof-object? char)
          count
          (begin
            (##string-set! str i char)
            (lp (##fx+ start 1) (##fx+ count 1)))))
      count)))

(def (bio-read-string str start end buf)
  (let* ((len (string-length str))
         (rd (bio-read-substring str 0 len buf)))
    (unless (##fx= rd len)
      (raise-io-error 'bio-read-string "premature end of input" buf rd len))))

(def (bio-read-line buf (sep #\newline) (include-sep? #f) (maxchars #f))
  (let (root [#f])
    (let lp ((tl root) (count 0))
      (if (or (not maxchars) (##fx< count maxchars))
        (let (char (bio-read-char buf))
          (cond
           ((eof-object? char)
            (if (null? (cdr root))
              (eof-object)
              (list->string (cdr root))))
           ((eq? char sep)
            (list->string
             (if include-sep?
               (let (tl* [char])
                 (set! (cdr tl) tl*)
                 (cdr root))
               (cdr root))))
           (else
            (let (tl* [char])
              (set! (cdr tl) tl*)
              (lp tl* (##fx+ count 1))))))
        (list->string (cdr root))))))

(def (bio-input-utf8-decode count buf)
  (let* ((rlo (&input-buffer-rlo buf))
         (rhi (&input-buffer-rhi buf))
         (rlo+count (##fx+ rlo count)))
    (if (##fx<= rlo+count rhi)
      (let (str (utf8-decode (&input-buffer-e buf) rlo rlo+count))
        (set! (&input-buffer-rlo buf)
          rlo+count)
        str)
      ;; TODO fill buffer, streaming decode
      (raise-io-error 'bio-input-utf8-decode "not enough bytes" buf count))))

(def (bio-input-skip count buf)
  (let lp ((count count))
    (let* ((rlo (&input-buffer-rlo buf))
           (rhi (&input-buffer-rhi buf))
           (have (##fx- rhi rlo)))
      (if (##fx< have count)
        (let (need (##fx- count have))
          (set! (&input-buffer-rlo buf)
            rhi)
          (let (rd (bio-input-fill! buf need))
            (if (##fxzero? rd)
              (raise-io-error 'bio-input-skip "premature end of input" buf count)
              (lp need))))
        (let (rlo+count (##fx+ rlo count))
          (set! (&input-buffer-rlo buf)
            rlo+count))))))

(def (bio-input-count buf)
  (let ((rlo (&input-buffer-rlo buf))
        (rhi (&input-buffer-rhi buf)))
    (##fx- rhi rlo)))
