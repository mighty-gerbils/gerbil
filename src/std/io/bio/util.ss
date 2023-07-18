;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered io extension methods
(import :gerbil/gambit/threads
        :gerbil/gambit/bits
        :gerbil/gambit/fixnum
        :std/error
        :std/sugar
        :std/srfi/1
        ../interface)
(declare (not safe))

(defsyntax (defreader-ext stx)
  (syntax-case stx ()
    ((_ (method reader . args) body ...)
     (with-syntax ((reader-method (stx-identifier #'method "BufferedReader-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedReader-" #'method)))
       #'(begin
           (def (reader-method reader . args)
             (unless (BufferedReader? reader)
               (error "object is not an interface instance" reader 'BufferedReader))
             body ...)
           (def (unchecked-method reader . args)
             body ...)
           (export reader-method unchecked-method))))))

(defreader-ext (read-u16 reader)
  (read-uXX reader 2))
(defreader-ext (read-s16 reader)
  (read-sXX reader 2))
(defreader-ext (read-u32 reader)
  (read-uXX reader 4))
(defreader-ext (read-s32 reader)
  (read-sXX reader 4))
(defreader-ext (read-u64 reader)
  (read-uXX reader 8))
(defreader-ext (read-s64 reader)
  (read-sXX reader 8))

(def (read-uXX reader len)
  (let (buf (smob-cache-get len))
    ;; note: on exception we will leak the buf, but it will be garbage collected.
    ;; this is preferable to wrapping an exception handler or try/finally block
    ;; around it as it will allocate more than the leak anyway.
    (&BufferedReader-read reader buf 0 len len)
    (let (bits (fxarithmetic-shift-left len 3))
      (let lp ((i 0) (x 0))
        (if (fx< i len)
          (let (next (u8vector-ref buf i))
            (lp (fx+ i 1) (bitwise-ior (arithmetic-shift x -8) next)))
          (begin
            (smob-cache-put buf)
            x))))))

(def (read-sXX reader len)
  (let* ((x (read-uXX reader len))
         (bits (fxarithmetic-shift-left len 3))
         (2^bits (expt-cache-get bits))
         (2^bits-1 (expt-cache-get (- bits 1))))
    (if (< x 2^bits-1)
      x
      (- x 2^bits))))

(defreader-ext (read-varuint reader (max-bits 64))
  (let lp ((shift 0) (x 0))
    (if (fx< shift max-bits)
      (let* ((next (&BufferedReader-read-u8 reader))
             (limb (fxand next #x7f))
             (x (bitwise-ior (arithmetic-shift limb (fx- shift)) x)))
        (if (fx= (fxand next #x80) 0)
          x
          (lp (fx+ shift 7) x)))
      (raise-io-error 'BufferedReader-read-varint "varint max length exceeded" x max-bits))))

(defreader-ext (read-varint reader (max-bits 64))
  (let* ((uint (&BufferedReader-read-varuint reader max-bits))
         (2^bits (expt-cache-get max-bits))
         (2^bits-1 (expt-cache-get (fx- max-bits 1))))
    (if (< uint 2^bits-1)
      uint
      (- uint 2^bits))))

(defreader-ext (read-char reader)
  (if (eof-object? (&BufferedReader-peek-u8 reader))
    '#!eof
    (let (byte1 (&BufferedReader-read-u8 reader))
      (cond
       ((fx<= byte1 #x7f)
        (integer->char byte1))
       ((fx<= byte1 #xdf)
        (let (byte2 (&BufferedReader-read-u8 reader))
          (integer->char
           (fxior (fxarithmetic-shift-left (fxand byte1 #x1f) 6)
                  (fxand byte2 #x3f)))))
       ((fx<= byte1 #xef)
        (let* ((byte2 (&BufferedReader-read-u8 reader))
               (byte3 (&BufferedReader-read-u8 reader)))
          (integer->char
           (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                  (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                  (fxand byte3 #x3f)))))
       ((fx<= byte1 #xf4)
        (let* ((byte2 (&BufferedReader-read-u8 reader))
               (byte3 (&BufferedReader-read-u8 reader))
               (byte4 (&BufferedReader-read-u8 reader)))
          (integer->char
           (fxior (fxarithmetic-shift-left (fxand byte1 #x07) 18)
                  (fxarithmetic-shift-left (fxand byte2 #x3f) 12)
                  (fxarithmetic-shift-left (fxand byte3 #x3f) 6)
                  (fxand byte4 #x3f)))))
       (else
        ;; Bad encoding; use utf8 replacement character
        #\xfffd)))))

(defreader-ext (read-string reader str (start 0) (end (string-length str)) (need 0))
  (let lp ((i start) (need need) (read 0))
    (if (fx< i end)
      (let (next (&BufferedReader-read-char reader))
        (if (eof-object? next)
          (if (fx> need 0)
            (raise-io-error 'BufferedReader-read-string "premature end of input")
            read)
          (begin
            (string-set! str i next)
            (lp (fx+ start 1) (fx- need 1) (fx+ read 1)))))
      read)))

(defreader-ext (read-line reader (sep #\newline) (include-sep? #f) (max-chars #f))
  (let* ((separators (if (list? sep) sep [sep]))
         (read-more?
          (if max-chars
            (lambda (x) (fx< x max-chars))
            (lambda (x) #t)))
         (finish
          (if include-sep?
            (lambda (chars) (list->string (reverse! chars)))
            (lambda (chars) (list->string (reverse! (drop chars (length separators))))))))
    (let lp ((x 0) (separating separators) (chars []))
      (cond
       ((null? separating)
        (finish chars))
       ((read-more? x)
        (let (next (&BufferedReader-read-char reader))
          (cond
           ((eof-object? next)
            (finish chars))
           ((eq? (car separating) next)
            (lp (fx+ x 1) (cdr separating) (cons next chars)))
           (else
            (lp (fx+ x 1) separators (cons next chars))))))
       (else
        (raise-io-error 'BufferedReader-read-line "too many characters" x))))))

;; caches
(def +smob-cache+ (make-vector 8 []))
(def +smob-cache-mx+ (make-mutex 'bio-smob-cache))

(def (smob-cache-get len)
  (let (i (fx- len 1))
    (mutex-lock! +smob-cache-mx+)
    (match (vector-ref +smob-cache+ i)
      ([buf . rest]
       (vector-set! +smob-cache+ i rest)
       (mutex-unlock! +smob-cache-mx+)
       buf)
      (else
       (mutex-unlock! +smob-cache-mx+)
       (make-u8vector len)))))

(def (smob-cache-put buf)
  (let (i (fx- (u8vector-length buf) 1))
    (mutex-lock! +smob-cache-mx+)
    (vector-set! +smob-cache+ i (cons buf (vector-ref +smob-cache+ i)))
    (mutex-unlock! +smob-cache-mx+)))

(def +expt-cache+
  (let (cache (make-vector 64 #f))
    (def (cache-set! bits)
      (vector-set! cache (fx- bits 1) (expt 2 bits)))
    (for-each cache-set! (iota 64 1))
    cache))

(def (expt-cache-get bits)
  (if (fx<= bits 64)
    (vector-ref +expt-cache+ (fx- bits 1))
    (expt 2 bits)))
