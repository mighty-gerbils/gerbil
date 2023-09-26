;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered io extension methods
(import :gerbil/gambit
        :std/error
        :std/sugar
        :std/interface
        :std/srfi/1
        ../interface
        ./inline
        ./types
        ./input
        ./output)
(declare (not safe))

(export defreader-ext defreader-ext*  defwriter-ext defwriter-ext*)

(defsyntax (defreader-ext stx)
  (syntax-case stx ()
    ((_ (method . args) body ...)
     (with-syntax ((reader-method (stx-identifier #'method "BufferedReader-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedReader-" #'method)))
       #'(begin
           (defreader-ext* (method . args) body ...)
           (export reader-method unchecked-method))))))

(defsyntax (defreader-ext* stx)
  (syntax-case stx ()
    ((_ (method reader . args) body ...)
     (with-syntax ((reader-method (stx-identifier #'method "BufferedReader-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedReader-" #'method)))
       #'(begin
           (def (reader-method reader . args)
             (with-interface (reader : BufferedReader)
               body ...))
           (def (unchecked-method reader . args)
             (with-interface (reader :- BufferedReader)
               body ...)))))))

(defsyntax (defwriter-ext stx)
  (syntax-case stx ()
    ((_ (method . args) body ...)
     (with-syntax ((writer-method (stx-identifier #'method "BufferedWriter-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedWriter-" #'method)))
       #'(begin
           (defwriter-ext* (method . args) body ...)
           (export writer-method unchecked-method))))))

(defsyntax (defwriter-ext* stx)
  (syntax-case stx ()
    ((_ (method writer . args) body ...)
     (with-syntax ((writer-method (stx-identifier #'method "BufferedWriter-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedWriter-" #'method)))
       #'(begin
           (def (writer-method writer . args)
             (with-interface (writer : BufferedWriter)
               body ...))
           (def (unchecked-method writer . args)
             (with-interface (writer :- BufferedWriter)
               body ...)))))))

;; reader
(defreader-ext (read-u16 reader)
  (read-uint reader 2))
(defreader-ext (read-s16 reader)
  (read-sint reader 2))
(defreader-ext (read-u32 reader)
  (read-uint reader 4))
(defreader-ext (read-s32 reader)
  (read-sint reader 4))
(defreader-ext (read-u64 reader)
  (read-uint reader 8))
(defreader-ext (read-s64 reader)
  (read-sint reader 8))

(def (read-uint reader len)
  (with-interface (reader :- BufferedReader)
    (let lp ((i 0) (x 0))
      (if (fx< i len)
        (let (next (.read-u8-inline reader))
          (if (eof-object? next)
            (raise-premature-end-of-input read-uint)
            (lp (fx+ i 1) (bitwise-ior (arithmetic-shift x 8) next))))
        x))))

(def (read-sint reader len)
  (let (uint (read-uint reader len))
    (complement-input uint len)))

(def (complement-input uint len)
  (let (bits (fxarithmetic-shift-left len 3))
    (if (< uint (expt-cache-get (fx- bits 1)))
      uint
      (- uint (expt-cache-get bits)))))

(defreader-ext (read-varuint reader (max-bits 64))
  (def read-more?
    (if max-bits
        (lambda (shift)
          (fx< shift max-bits))
        (lambda (shift) #t)))

  (let lp ((shift 0) (x 0))
    (if (read-more? shift)
      (let (next (.read-u8-inline reader))
        (if (eof-object? next)
          (raise-premature-end-of-input read-varuint)
          (let* ((limb (fxand next #x7f))
                 (x (bitwise-ior (arithmetic-shift limb shift) x)))
            (if (fx= (fxand next #x80) 0)
              x
              (lp (fx+ shift 7) x)))))
      (raise-io-error read-varuint "varuint max bits exceeded" x max-bits))))

(defreader-ext (read-varint reader (max-bits 64))
  (let* ((uint (.read-varuint reader max-bits))
         (int (arithmetic-shift uint -1))
         (sign (bitwise-and uint 1)))
    (if (fx= sign 0)
      int
      (bitwise-not int))))

(defreader-ext (read-u8! reader)
  (let (u8 (.read-u8-inline reader))
    (if (eof-object? u8)
      (raise-premature-end-of-input read-u8!)
      u8)))

(defreader-ext (read-char reader)
  (if (is-input-buffer? reader)
    (let (bio (&interface-instance-object reader))
      (let recur ()
        (let ((rlo (&input-buffer-rlo bio))
              (rhi (&input-buffer-rhi bio))
              (buf (&input-buffer-buf bio)))
          (if (fx< rlo rhi)
            (let (byte1 (u8vector-ref buf rlo))
              (cond
               ((fx<= byte1 #x7f)
                (bio-input-advance! bio (fx+ rlo 1) rhi)
                (integer->char byte1))
               ((fx<= byte1 #xdf)
                (let (rlo+1 (fx+ rlo 1))
                  (if (fx< rlo+1 rhi)
                    (let (byte2 (u8vector-ref buf rlo+1))
                      (if (fx= (fxand byte2 #xc0) #x80)
                        (begin
                          (bio-input-advance! bio (fx+ rlo 2) rhi)
                          (integer->char
                           (fxior (fxarithmetic-shift-left (fxand byte1 #x1f) 6)
                                  (fxand byte2 #x3f))))
                        ;; bad continuation; replacement character
                        (begin
                          (bio-input-advance! bio rlo+1 rhi)
                          #\xfffd)))
                    (let (rhi (bio-input-normalize! bio buf rlo rhi 1))
                      (bio-input-fill! bio buf rhi 1)
                      (recur)))))
               ((fx<= byte1 #xef)
                (let ((rlo+1 (fx+ rlo 1))
                      (rlo+2 (fx+ rlo 2)))
                  (if (fx< rlo+2 rhi)
                    (let* ((byte2 (u8vector-ref buf rlo+1))
                           (byte3 (u8vector-ref buf rlo+2)))
                      (if (fx= (fxand byte2 #xc0) (fxand byte3 #xc0) #x80)
                        (begin
                          (bio-input-advance! bio (fx+ rlo 3) rhi)
                          (integer->char
                           (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                                  (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                                  (fxand byte3 #x3f))))
                        ;; bad continuation; replacement character
                        (begin
                          (bio-input-advance! bio rlo+1 rhi)
                          #\xfffd)))
                    (let* ((need (fx- 3 (fx- rhi rlo)))
                           (rhi (bio-input-normalize! bio buf rlo rhi need)))
                      (bio-input-fill! bio buf rhi need)
                      (recur)))))
               ((fx<= byte1 #xf4)
                (let ((rlo+1 (fx+ rlo 1))
                      (rlo+2 (fx+ rlo 2))
                      (rlo+3 (fx+ rlo 3)))
                  (if (fx< rlo+3 rhi)
                    (let* ((byte2 (u8vector-ref buf rlo+1))
                           (byte3 (u8vector-ref buf rlo+2))
                           (byte4 (u8vector-ref buf rlo+3)))
                      (if (fx= (fxand byte2 #xc0) (fxand byte3 #xc0) (fxand byte4 #xc0) #x80)
                        (begin
                          (bio-input-advance! bio (fx+ rlo 4) rhi)
                          (integer->char
                           (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                                  (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                                  (fxand byte3 #x3f))))
                        ;; bad continuation; replacement character
                        (begin
                          (bio-input-advance! bio rlo+1 rhi)
                          #\xfffd)))
                    (let* ((need (fx- 4 (fx- rhi rlo)))
                           (rhi (bio-input-normalize! bio buf rlo rhi need)))
                      (bio-input-fill! bio buf rhi need)
                      (recur)))))
               (else
                ;; Bad encoding; use replacement character
                (bio-input-advance! bio (fx+ rlo 1) rhi)
                #\xfffd)))
            ;; empty buffer
            (let (read (bio-input-fill! bio buf rhi 0))
              (if (fx> read 0)
                (recur)
                '#!eof))))))
    (read-char-generic reader)))

(defreader-ext (peek-char reader)
  (if (is-input-buffer? reader)
    (let (bio (&interface-instance-object reader))
      (let recur ()
        (let ((rlo (&input-buffer-rlo bio))
              (rhi (&input-buffer-rhi bio))
              (buf (&input-buffer-buf bio)))
          (if (fx< rlo rhi)
            (let (byte1 (u8vector-ref buf rlo))
              (cond
               ((fx<= byte1 #x7f)
                (integer->char byte1))
               ((fx<= byte1 #xdf)
                (let (rlo+1 (fx+ rlo 1))
                  (if (fx< rlo+1 rhi)
                    (let (byte2 (u8vector-ref buf rlo+1))
                      (if (fx= (fxand byte2 #xc0) #x80)
                        (integer->char
                         (fxior (fxarithmetic-shift-left (fxand byte1 #x1f) 6)
                                (fxand byte2 #x3f)))
                        ;; bad continuation; replacement character
                        #\xfffd))
                    (let (rhi (bio-input-normalize! bio buf rlo rhi 1))
                      (bio-input-fill! bio buf rhi 1)
                      (recur)))))
               ((fx<= byte1 #xef)
                (let ((rlo+1 (fx+ rlo 1))
                      (rlo+2 (fx+ rlo 2)))
                  (if (fx< rlo+2 rhi)
                    (let* ((byte2 (u8vector-ref buf rlo+1))
                           (byte3 (u8vector-ref buf rlo+2)))
                      (if (fx= (fxand (fxior byte2 byte3) #xc0) #x80)
                        (integer->char
                         (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                                (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                                (fxand byte3 #x3f)))
                        ;; bad continuation; replacement character
                        #\xfffd))
                    (let* ((need (fx- 3 (fx- rhi rlo)))
                           (rhi (bio-input-normalize! bio buf rlo rhi need)))
                      (bio-input-fill! bio buf rhi need)
                      (recur)))))
               ((fx<= byte1 #xf4)
                (let ((rlo+1 (fx+ rlo 1))
                      (rlo+2 (fx+ rlo 2))
                      (rlo+3 (fx+ rlo 3)))
                  (if (fx< rlo+3 rhi)
                    (let* ((byte2 (u8vector-ref buf rlo+1))
                           (byte3 (u8vector-ref buf rlo+2))
                           (byte4 (u8vector-ref buf rlo+3)))
                      (if (fx= (fxand (fxior byte2 byte3 byte4) #xc0) #x80)
                        (integer->char
                         (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                                (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                                (fxand byte3 #x3f)))
                        ;; bad continuation; replacement character
                        #\xfffd))
                    (let* ((need (fx- 4 (fx- rhi rlo)))
                           (rhi (bio-input-normalize! bio buf rlo rhi need)))
                      (bio-input-fill! bio buf rhi need)
                      (recur)))))
               (else
                ;; Bad encoding; use replacement character
                #\xfffd)))
            ;; empty buffer
            (let (read (bio-input-fill! bio buf rhi 0))
              (if (fx> read 0)
                (recur)
                '#!eof))))))
    (peek-char-generic reader)))

(defrule (&BufferedReader-read-char-inline reader)
  (if (is-input-buffer? reader)
    (let ()
      (declare (not interrupts-enabled))
      (with-interface (reader :- BufferedReader)
        (let (bio (&interface-instance-object reader))
          (let ((rlo (&input-buffer-rlo bio))
                (rhi (&input-buffer-rhi bio))
                (buf (&input-buffer-buf bio)))
            (if (fx< rlo rhi)
              (let (byte1 (u8vector-ref buf rlo))
                (cond
                 ((fx<= byte1 #x7f)
                  (bio-input-advance! bio (fx+ rlo 1) rhi)
                  (integer->char byte1))
                 (else
                  ;; multibyte character, dispatch to the method
                  (.read-char reader))))
              ;; buffer empty, dispatch to the method
              (.read-char reader))))))
    (read-char-generic reader)))

(export &BufferedReader-read-char-inline)

(defrule (&BufferedReader-peek-char-inline reader)
  (if (is-input-buffer? reader)
    (let ()
      (declare (not interrupts-enabled))
      (with-interface (reader :- BufferedReader)
        (let (bio (&interface-instance-object reader))
          (let ((rlo (&input-buffer-rlo bio))
                (rhi (&input-buffer-rhi bio))
                (buf (&input-buffer-buf bio)))
            (if (fx< rlo rhi)
              (let (byte1 (u8vector-ref buf rlo))
                (cond
                 ((fx<= byte1 #x7f)
                  (integer->char byte1))
                 (else
                  ;; multibyte character, dispatch to the method
                  (.peek-char reader))))
              ;; buffer empty, dispatch to method
              (.peek-char reader))))))
    (peek-char-generic reader)))

(export &BufferedReader-peek-char-inline)

(def (read-char-generic reader)
  (with-interface (reader :- BufferedReader)
    (let (byte1 (.read-u8 reader))
      (cond
       ((eof-object? byte1)
        '#!eof)
       ((fx<= byte1 #x7f)
        (integer->char byte1))
       ((fx<= byte1 #xdf)
        (let (byte2 (.read-u8! reader))
          (if (fx= (fxand byte2 #xc0) #x80)
            (integer->char
             (fxior (fxarithmetic-shift-left (fxand byte1 #x1f) 6)
                    (fxand byte2 #x3f)))
            (begin
              ;; bad continuation; put back the byte to the buffer and return replacement char
              (.put-back reader byte2)
              #\xfffd))))
       ((fx<= byte1 #xef)
        (let (byte2 (.read-u8! reader))
          (if (fx= (fxand byte2 #xc0) #x80)
            (let (byte3 (.read-u8! reader))
              (if (fx= (fxand byte3 #xc0) #x80)
                (integer->char
                 (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                        (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                        (fxand byte3 #x3f)))
                (begin
                  ;; bad continuation; put back and return replacement char
                  (.put-back reader [byte2 byte3])
                  #\xfffd)))
            (begin
              ;; bad continuation; put back and return replacement char
              (.put-back reader byte2)
              #\xfffd))))
       ((fx<= byte1 #xf4)
        (let (byte2 (.read-u8! reader))
          (if (fx= (fxand byte2 #xc0) #x80)
            (let (byte3 (.read-u8! reader))
              (if (fx= (fxand byte3 #xc0) #x80)
                (let (byte4 (.read-u8! reader))
                  (if (fx= (fxand byte4 #xc0) #x80)
                    (integer->char
                     (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                            (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                            (fxand byte3 #x3f)))
                    (begin
                      ;; bad continuation; put back and return replacement char
                      (.put-back reader [byte2 byte3 byte4])
                      #\xfffd)))
                (begin
                  ;; bad continuation; put back and return replacement char
                  (.put-back reader [byte2 byte3])
                  #\xfffd)))
            (begin
              ;; bad continuation; put back and return replacement char
              (.put-back reader byte2)
              #\xfffd))))
       (else
        ;; Bad encoding; use replacement character
        #\xfffd)))))

(def (peek-char-generic reader)
  (with-interface (reader :- BufferedReader)
    (let (byte1 (.peek-u8 reader))
      (cond
       ((eof-object? byte1)
        '#!eof)
       ((fx<= byte1 #x7f)
        (integer->char byte1))
       ((fx<= byte1 #xdf)
        (.read-u8 reader)
        (let (byte2 (.read-u8! reader))
          (if (fx= (fxand byte2 #xc0) #x80)
            (begin
              (.put-back reader [byte1 byte2])
              (integer->char
               (fxior (fxarithmetic-shift-left (fxand byte1 #x1f) 6)
                      (fxand byte2 #x3f))))
            (begin
              ;; bad continuation; put back the byte to the buffer and return replacement char
              (.put-back reader [byte1 byte2])
              #\xfffd))))
       ((fx<= byte1 #xef)
        (.read-u8 reader)
        (let (byte2 (.read-u8! reader))
          (if (fx= (fxand byte2 #xc0) #x80)
            (let (byte3 (.read-u8! reader))
              (if (fx= (fxand byte3 #xc0) #x80)
                (begin
                  (.put-back reader [byte1 byte2 byte3])
                  (integer->char
                   (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                          (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                          (fxand byte3 #x3f))))
                (begin
                  ;; bad continuation; return replacement char
                  (.put-back reader [byte1 byte2 byte3])
                  #\xfffd)))
            (begin
              ;; bad continuation; return replacement char
              (.put-back reader [byte1 byte2])
              #\xfffd))))
       ((fx<= byte1 #xf4)
        (.read-u8 reader)
        (let (byte2 (.read-u8! reader))
          (if (fx= (fxand byte2 #xc0) #x80)
            (let (byte3 (.read-u8! reader))
              (if (fx= (fxand byte3 #xc0) #x80)
                (let (byte4 (.read-u8! reader))
                  (if (fx= (fxand byte4 #xc0) #x80)
                    (begin
                      (.put-back reader [byte1 byte2 byte3 byte4])
                      (integer->char
                       (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                              (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                              (fxand byte3 #x3f))))
                    (begin
                      ;; bad continuation; return replacement char
                      (.put-back reader [byte1 byte2 byte3 byte4])
                      #\xfffd)))
                (begin
                  ;; bad continuation; return replacement char
                  (.put-back reader [byte1 byte2 byte3])
                  #\xfffd)))
            (begin
              ;; bad continuation; return replacement char
              (.put-back reader [byte1 byte2])
              #\xfffd))))
       (else
        ;; Bad encoding; use replacement character
        #\xfffd)))))

(defreader-ext (read-char! reader)
  (let (char (.read-char-inline reader))
    (if (eof-object? char)
      (raise-premature-end-of-input read-char!)
      char)))

(defreader-ext (read-string reader str (start 0) (end (string-length str)) (need 0))
  (let (count (fx- end start))
    (let lp ((i 0) (need need) (read 0))
      (if (fx< i count)
        (let (next (.read-char-inline reader))
          (if (eof-object? next)
            (if (fx> need 0)
              (raise-premature-end-of-input read-string)
              read)
            (begin
              (string-set! str i next)
              (lp (fx+ i 1) (fx- need 1) (fx+ read 1)))))
        read))))

(defreader-ext (read-line reader (sep #\newline) (include-sep? #f) (max-chars #f))
  (let* ((separators
          (cond
           ((pair? sep) sep)
           ((not sep) [])
           (else [sep])))
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
       ((and sep (null? separating))
        (finish chars drop))
       ((read-more? x)
        (let (next (.read-char-inline reader))
          (cond
           ((eof-object? next)
            (finish chars drop))
           ((and sep (eq? (car separating) next))
            (lp (fx+ x 1) (cdr separating) (fx+ drop 1) (cons next chars)))
           (else
            (lp (fx+ x 1) separators 0 (cons next chars))))))
       (else
        (raise-io-error read-line "too many characters" x))))))

;; writer
(defwriter-ext (write-u16 writer uint)
  (write-uint writer uint 2))
(defwriter-ext (write-s16 writer int)
  (write-sint writer int 2))
(defwriter-ext (write-u32 writer uint)
  (write-uint writer uint 4))
(defwriter-ext (write-s32 writer int)
  (write-sint writer int 4))
(defwriter-ext (write-u64 writer int)
  (write-uint writer int 8))
(defwriter-ext (write-s64 writer int)
  (write-sint writer int 8))

(def (write-uint writer uint len)
  (with-interface (writer :- BufferedWriter)
    (let lp ((i 0) (shift (fx- (fxarithmetic-shift-left len 3) 8)))
      (if (fx< i len)
        (let (u8 (bitwise-and (arithmetic-shift uint (fx- shift)) #xff))
          (.write-u8-inline writer u8)
          (lp (fx+ i 1) (fx- shift 8)))
        len))))

(def (write-sint writer int len)
  (write-uint writer (complement-output int len) len))

(def (complement-output int len)
  (if (< int 0)
    (let (bits (fxarithmetic-shift-left len 3))
      (+ (expt-cache-get bits) int))
    int))

(defwriter-ext (write-varuint writer uint (max-bits 64))
  (when (and max-bits (fx> (integer-length uint) max-bits))
    (raise-io-error write-varuint "varuint max bits exceeded"))
  (let lp ((uint uint) (wrote 0))
    (if (> uint #x7f)
      (let (limb (fxior (bitwise-and uint #x7f) #x80))
        (.write-u8-inline writer limb)
        (lp (arithmetic-shift uint -7) (fx+ wrote 1)))
      (begin
        (.write-u8-inline writer uint)
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
    (.write-varuint writer uint max-bits)))

(defwriter-ext (write-char writer char)
  (let (c (char->integer char))
    (cond
     ((fx<= c #x7f)
      (.write-u8-inline writer c))
     ((fx<= c #x7ff)
      (let ((b1 (fxior #xc0 (fxarithmetic-shift-right c 6)))
            (b2 (fxior #x80 (fxand c #x3f))))
        (.write-u8-inline writer b1)
        (.write-u8-inline writer b2)
        2))
     ((##fx<= c #xffff)
      (let ((b1 (fxior #xe0 (fxarithmetic-shift-right c 12)))
            (b2 (fxior #x80 (fxand (fxarithmetic-shift-right c 6) #x3f)))
            (b3 (fxior #x80 (fxand c #x3f))))
        (.write-u8-inline writer b1)
        (.write-u8-inline writer b2)
        (.write-u8-inline writer b3)
        3))
     (else                              ; max char is #x10ffff
      (let ((b1 (fxior #xf0 (fxarithmetic-shift-right c 18)))
            (b2 (fxior #x80 (fxand (fxarithmetic-shift-right c 12) #x3f)))
            (b3 (fxior #x80 (fxand (fxarithmetic-shift-right c 6) #x3f)))
            (b4 (fxior #x80 (fxand c #x3f))))
        (.write-u8-inline writer b1)
        (.write-u8-inline writer b2)
        (.write-u8-inline writer b3)
        (.write-u8-inline writer b4)
        4)))))

(defrule (&BufferedWriter-write-char-inline writer char)
  (let ()
    (declare (not interrupts-enabled))
    (with-interface (writer :- BufferedWriter)
      (let (c (char->integer char))
        (if (fx<= c #x7f)
          (.write-u8-inline writer c)
          ;; multibyte, fall back to the method
          (.write-char writer char))))))

(export &BufferedWriter-write-char-inline)

(defwriter-ext (write-string writer str (start 0) (end (string-length str)))
  (let lp ((i start) (result 0))
    (if (fx< i end)
      (let (wrote (.write-char-inline writer (string-ref str i)))
        (lp (fx+ i 1) (fx+ result wrote)))
      result)))

(defwriter-ext (write-line writer str (separator #\newline))
  (let (result (.write-string writer str))
    (if (pair? separator)
      (let lp ((rest separator) (result result))
        (match rest
          ([char . rest]
           (let (wrote (.write-char-inline writer char))
             (lp rest (fx+ result wrote))))
          (else result)))
      (let (wrote (.write-char-inline writer separator))
        (fx+ result wrote)))))

;; expt caches
(def +expt-cache+
  (let (cache (make-vector 64 #f))
    (for-each (lambda (i) (vector-set! cache i (expt 2 (fx+ i 1))))
              (iota 64))
    cache))

(def (expt-cache-get len)
  (vector-ref +expt-cache+ (fx- len 1)))
