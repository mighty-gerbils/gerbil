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

(defsyntax (defwriter-ext stx)
  (syntax-case stx ()
    ((_ (method writer . args) body ...)
     (with-syntax ((writer-method (stx-identifier #'method "BufferedWriter-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedWriter-" #'method)))
       #'(begin
           (def (writer-method writer . args)
             (unless (BufferedWriter? writer)
               (error "object is not an interface instance" writer 'BufferedWriter))
             body ...)
           (def (unchecked-method writer . args)
             body ...)
           (export writer-method unchecked-method))))))

;; reader
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
    (let lp ((i 0) (x 0))
      (if (fx< i len)
        (let (next (u8vector-ref buf i))
          (lp (fx+ i 1) (bitwise-ior (arithmetic-shift x 8) next)))
        (begin
          (smob-cache-put buf)
          x)))))

(def (read-sXX reader len)
  (let ((ux (read-uXX reader len))
        (bits (fxarithmetic-shift-left len 3)))
    (if (bit-set? (fx- bits 1) ux)
      (bitwise-not ux)
      ux)))

(defreader-ext (read-varuint reader (max-bits 64))
  (let lp ((shift 0) (x 0))
    (if (fx< shift max-bits)
      (let* ((next (&BufferedReader-read-u8 reader))
             (limb (fxand next #x7f))
             (x (bitwise-ior (arithmetic-shift limb shift) x)))
        (if (fx= (fxand next #x80) 0)
          x
          (lp (fx+ shift 7) x)))
      (raise-io-error 'BufferedReader-read-varuint "varuint max bits exceeded" x max-bits))))

(defreader-ext (read-varint reader (max-bits 64))
  (let* ((uint (&BufferedReader-read-varuint reader max-bits))
         (int (arithmetic-shift uint -1))
         (sign (bitwise-and uint 1)))
    (if (fx= sign 0)
      int
      (bitwise-not int))))

(defreader-ext (read-u8! reader)
  (let (u8 (&BufferedReader-read-u8 read))
    (if (eof-object? u8)
      (raise-io-error 'BufferedReader-read-u8! "premature end of input")
      u8)))

(defreader-ext (read-char reader)
  (let (byte1 (&BufferedReader-read-u8 reader))
    (cond
     ((eof-object? byte1)
      '#!eof)
     ((fx<= byte1 #x7f)
      (integer->char byte1))
     ((fx<= byte1 #xdf)
      (let (byte2 (&BufferedReader-read-u8! reader))
        (integer->char
         (fxior (fxarithmetic-shift-left (fxand byte1 #x1f) 6)
                (fxand byte2 #x3f)))))
     ((fx<= byte1 #xef)
      (let* ((byte2 (&BufferedReader-read-u8! reader))
             (byte3 (&BufferedReader-read-u8! reader)))
        (integer->char
         (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                (fxand byte3 #x3f)))))
     ((fx<= byte1 #xf4)
      (let* ((byte2 (&BufferedReader-read-u8! reader))
             (byte3 (&BufferedReader-read-u8! reader))
             (byte4 (&BufferedReader-read-u8! reader)))
        (integer->char
         (fxior (fxarithmetic-shift-left (fxand byte1 #x07) 18)
                (fxarithmetic-shift-left (fxand byte2 #x3f) 12)
                (fxarithmetic-shift-left (fxand byte3 #x3f) 6)
                (fxand byte4 #x3f)))))
     (else
      ;; Bad encoding; use utf8 replacement character
      #\xfffd))))

(defreader-ext (read-char! reader)
  (let (char (&BufferedReader-read-char reader))
    (if (eof-object? char)
      (raise-io-error 'BufferedReader-read-char! "premature end of input")
      char)))

(defreader-ext (read-string reader str (start 0) (end (string-length str)) (need 0))
  (let (count (fx- end start))
    (let lp ((i 0) (need need) (read 0))
      (if (fx< i count)
        (let (next (&BufferedReader-read-char reader))
          (if (eof-object? next)
            (if (fx> need 0)
              (raise-io-error 'BufferedReader-read-string "premature end of input")
              read)
            (begin
              (string-set! str i next)
              (lp (fx+ i 1) (fx- need 1) (fx+ read 1)))))
        read))))

(defreader-ext (read-line reader (sep #\newline) (include-sep? #f) (max-chars #f))
  (let* ((separators (if (pair? sep) sep [sep]))
         (read-more?
          (if max-chars
            (lambda (x) (fx< x max-chars))
            (lambda (x) #t)))
         (finish
          (if include-sep?
            (lambda (chars drop) (list->string (reverse! chars)))
            (lambda (chars drop) (list->string (reverse! (list-tail chars drop)))))))
    (let lp ((x 0) (separating separators) (drop 0) (chars []))
      (cond
       ((null? separating)
        (finish chars drop))
       ((read-more? x)
        (let (next (&BufferedReader-read-char reader))
          (cond
           ((eof-object? next)
            (finish chars drop))
           ((eq? (car separating) next)
            (lp (fx+ x 1) (cdr separating) (fx+ drop 1) (cons next chars)))
           (else
            (lp (fx+ x 1) separators 0 (cons next chars))))))
       (else
        (raise-io-error 'BufferedReader-read-line "too many characters" x))))))

;; writer
(defwriter-ext (write-u16 writer uint)
  (write-uXX writer uint 2))
(defwriter-ext (write-s16 writer int)
  (write-sXX writer int 2))
(defwriter-ext (write-u32 writer uint)
  (write-uXX writer uint 4))
(defwriter-ext (write-s32 writer int)
  (write-sXX writer int 4))
(defwriter-ext (write-u64 writer int)
  (write-uXX writer int 8))
(defwriter-ext (write-s64 writer int)
  (write-sXX writer int 8))

(def (write-uXX writer uint len)
  (let (buf (smob-cache-get len))
    (let lp ((i 0) (shift (fx- (fxarithmetic-shift-left len 3) 8)))
      (if (fx< i len)
        (let (u8 (bitwise-and (arithmetic-shift uint (fx- shift)) #xff))
          (u8vector-set! buf i u8)
          (lp (fx+ i 1) (fx- shift 8)))
        (&BufferedWriter-write writer buf 0 len)))))

(def (write-sXX writer int len)
  (if (< int 0)
    (write-uXX writer (bitwise-not int) len)
    (write-uXX writer int len)))

(defwriter-ext (write-varuint writer uint (max-bits 64))
  (when (fx> (integer-length uint) max-bits)
    (raise-io-error 'BufferedWriter-write-varuint "varuint max bits exceeded"))
  (let lp ((uint uint) (wrote 0))
    (if (> uint #x7f)
      (let (limb (fxior (bitwise-and uint #x7f) #x80))
        (&BufferedWriter-write-u8 writer limb)
        (lp (arithmetic-shift uint -7) (fx+ wrote 1)))
      (begin
        (&BufferedWriter-write-u8 writer uint)
        (fx+ wrote 1)))))

(defwriter-ext (write-varint writer int (max-bits 64))
  (let* ((signed (< int 0))
         (uint
          (if signed
            (bitwise-not int)
            int))
         (uint
          (arithmetic-shift uint 1))
         (uint
          (if signed
            (bitwise-ior uint 1)
            uint)))
    (&BufferedWriter-write-varuint writer uint max-bits)))

(defwriter-ext (write-char writer char)
  (let (c (char->integer char))
    (cond
     ((fx<= c #x7f)
      (&BufferedWriter-write-u8 writer c)
      1)
     ((fx<= c #x7ff)
      (let (buf (smob-cache-get 2))
        (u8vector-set! buf 0 (fxior #xc0 (fxarithmetic-shift-right c 6)))
        (u8vector-set! buf 1 (fxior #x80 (fxand c #x3f)))
        (&BufferedWriter-write writer buf 0 2)
        (smob-cache-put buf)
        2))
     ((##fx<= c #xffff)
      (let (buf (smob-cache-get 3))
        (u8vector-set! buf 0 (fxior #xe0 (fxarithmetic-shift-right c 12)))
        (u8vector-set! buf 1 (fxior #x80 (fxand (fxarithmetic-shift-right c 6) #x3f)))
        (u8vector-set! buf 2 (fxior #x80 (fxand c #x3f)))
        (&BufferedWriter-write writer buf 0 3)
        (smob-cache-put buf)
        3))
     (else ; max char is #x10ffff
      (let (buf (smob-cache-get 4))
        (u8vector-set! buf 0 (fxior #xf0 (fxarithmetic-shift-right c 18)))
        (u8vector-set! buf 1 (fxior #x80 (fxand (fxarithmetic-shift-right c 12) #x3f)))
        (u8vector-set! buf 2 (fxior #x80 (fxand (fxarithmetic-shift-right c 6) #x3f)))
        (u8vector-set! buf 3 (fxior #x80 (fxand c #x3f)))
        (&BufferedWriter-write writer buf 0 4)
        (smob-cache-put buf)
        4)))))

(defwriter-ext (write-string writer str (start 0) (end (string-length str)))
  (let lp ((i start) (result 0))
    (if (fx< i end)
      (let (wrote (&BufferedWriter-write-char writer (string-ref str i)))
        (lp (fx+ i 1) (fx+ result wrote)))
      result)))

(defwriter-ext (write-line writer str (separator #\newline))
  (let (result (&BufferedWriter-write-string writer str))
    (if (pair? separator)
      (let lp ((rest separator) (result result))
        (match rest
          ([char . rest]
           (let (wrote (&BufferedWriter-write-char writer char))
             (lp rest (fx+ result wrote))))
          (else result)))
      (let (wrote (&BufferedWriter-write-char writer separator))
        (fx+ result wrote)))))

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
