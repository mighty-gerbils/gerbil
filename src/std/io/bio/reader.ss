;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered reader extension methods
(import :std/error
        ../interface
        ./types
        ./buffer
        ./cache
        ./macros
        ./input)
(export #t)
(declare (not safe))

(cond-expand
  (,(compilation-target? C)
   (import :std/ffi)
   (C-ffi-macrology)

   (def-C (__bytes->float32 (buf :- :u8vector))
     => :flonum
     "({double r = *(float*)___arg1; r;})")
   (def-C (__bytes->float64 (buf :- :u8vector))
     => :flonum
     "({double r = *(double*)___arg1; r;})"))
  (else
   (syntax-error "unsupported target")))

(defreader-ext (read-u8! reader)
  => :fixnum
  (let (u8 (reader.read-u8))
    (if (eof-object? u8)
      (raise-premature-end-of-input read-u8!)
      (:- u8 :fixnum))))

(def (bio-read-uint (bio : basic-input-buffer) (len : :fixnum))
  => :integer
  (let* ((buf bio.buf)
         (rlo bio.rlo)
         (rhi bio.rhi)
         (rlo+len (fx+ rlo len)))
    (cond
     ((fx<= rlo+len rhi)
      (let loop ((rlo rlo :- :fixnum) (x 0 :- :integer))
        => :integer
        (if (fx< rlo rlo+len)
          (let (next (u8vector-ref buf rlo))
            (loop (fx+ rlo 1) (bitwise-ior (arithmetic-shift x 8) next)))
          (begin
            (__bio-input-advance! bio rlo+len rhi)
            x))))
     (else
      (let (need (fx- rlo+len rhi))
        (__bio-input-buffer-fill! bio buf rhi need)
        (__bio-read-uint bio len))))))

(def (bio-read-uint-generic (reader : BufferedReader) (len : :fixnum))
  => :integer
  (let loop ((i 0 :- :fixnum) (x 0 :- :integer))
    => :integer
    (if (fx< i len)
      (let (next (reader.read-u8))
        (if (eof-object? next)
          (raise-premature-end-of-input read-uint)
          (loop (fx+ i 1) (bitwise-ior (arithmetic-shift x 8) next))))
      x)))

(defreader-ext (read-uint reader (len : :fixnum))
  => :integer
  (if (is-input-buffer-instance? reader)
    (using (bio (&interface-instance-object reader) :- basic-input-buffer)
      (__check-buffer-open! read-uint bio)
      (if (fx<= len (u8vector-length bio.buf))
        (__bio-read-uint bio len)
        (__bio-read-uint-generic reader len)))
    (__bio-read-uint-generic reader len)))

(def (complement-input (uint : :integer) (len : :fixnum))
  => :integer
  (let (bits (fxarithmetic-shift-left len 3))
    (if (< uint (expt-cache.get (fx- bits 1)))
      uint
      (- uint (expt-cache.get bits)))))

(defreader-ext (read-sint reader (len : :fixnum))
  => :integer
  (let (uint (reader.read-uint len))
    (complement-input uint len)))

(defreader-ext (read-s8 reader)
  => :fixnum
  (:- (reader.read-sint 1) :fixnum))
(defreader-ext (read-u16 reader)
  => :fixnum
  (:- (reader.read-uint 2) :fixnum))
(defreader-ext (read-s16 reader)
  => :fixnum
  (:- (reader.read-sint 2) :fixnum))
(defreader-ext (read-u32 reader)
  => :integer
  (reader.read-uint 4))
(defreader-ext (read-s32 reader)
  => :integer
  (reader.read-sint 4))
(defreader-ext (read-u64 reader)
  => :integer
  (reader.read-uint 8))
(defreader-ext (read-s64 reader)
  => :integer
  (reader.read-sint 8))

(defreader-ext (read-f32 reader)
  => :flonum
  (let* ((buf (buffer-cache.get 4))
         (_   (reader.read buf 0 4 4))
         (flo (__bytes->float32 buf)))
    (buffer-cache.put! buf)
    flo))

(defreader-ext (read-f64 reader)
  => :flonum
  (let* ((buf (buffer-cache.get 8))
         (_   (reader.read buf 0 8 8))
         (flo (__bytes->float64 buf)))
    (buffer-cache.put! buf)
    flo))

(def (bio-read-varuint (bio : basic-input-buffer) (max-bits : :fixnum))
  => :integer
  (let (buf bio.buf)
    (let loop ((rlo bio.rlo :- :fixnum) (rhi bio.rhi :- :fixnum) (shift 0 :- :fixnum) (x 0 :- :integer))
      => :integer
      (if (fx< shift max-bits)
        (if (fx< rlo rhi)
          (let* ((next (u8vector-ref buf rlo))
                 (limb (fxand next #x7f))
                 (x (bitwise-ior (arithmetic-shift limb shift) x)))
            (if (fx= (fxand next #x80) 0)
              (let (rlo (fx+ rlo 1))
                (__bio-input-advance! bio rlo rhi)
                x)
              (loop (fx+ rlo 1) rhi (fx+ shift 7) x)))
          (begin
            (__bio-input-advance! bio rlo rhi)
            (__bio-input-buffer-fill! bio buf bio.rhi 1)
            (loop bio.rlo bio.rhi shift x)))
        (raise-io-error bio-read-varuint "maximum bits exceeded" shift: shift max-bits: max-bits)))))

(def (bio-read-varuint-generic (reader : BufferedReader) (max-bits : :fixnum))
  => :integer
  (let loop ((shift 0 :- :fixnum) (x 0 :- :integer))
    => :integer
    (if (fx< shift max-bits)
      (let* ((next (reader.read-u8))
             (limb (fxand next #x7f))
             (x (bitwise-ior (arithmetic-shift limb shift) x)))
        (if (fx= (fxand next #x80) 0)
          x
          (loop (fx+ shift 7) x)))
      (raise-io-error bio-read-varuint "maximum bits exceeded" shift: shift max-bits: max-bits))))

(defreader-ext (read-varuint reader (max-bits 64 : :fixnum))
  => :integer
  (if (is-input-buffer-instance? reader)
    (using (bio (&interface-instance-object reader) :- basic-input-buffer)
      (__check-buffer-open! read-varuint bio)
      (if (fx<= (fx/ max-bits 8) (u8vector-length bio.buf))
        (__bio-read-varuint bio max-bits)
        (__bio-read-varuint-generic reader max-bits)))
    (__bio-read-varuint-generic reader max-bits)))

(defreader-ext (read-varint reader (max-bits 64 : :fixnum))
  => :integer
  (let* ((uint (reader.read-varuint max-bits))
         (int  (arithmetic-shift uint -1))
         (sign (bitwise-and uint 1)))
    (if (fx= sign 0)
      int
      (bitwise-not int))))

(def (bio-read-char-utf8 (bio : basic-input-buffer))
  (let loop ()
    (let ((rlo bio.rlo)
          (rhi bio.rhi)
          (buf bio.buf))
      (if (fx< rlo rhi)
        (let (byte1 (u8vector-ref buf rlo))
          (cond
           ((fx<= byte1 #x7f)
            (__bio-input-advance! bio (fx+ rlo 1) rhi)
            (integer->char byte1))
           ((fx<= byte1 #xdf)
            (let (rlo+1 (fx+ rlo 1))
              (if (fx< rlo+1 rhi)
                (let (byte2 (u8vector-ref buf rlo+1))
                  (if (fx= (fxand byte2 #xc0) #x80)
                    (begin
                      (__bio-input-advance! bio (fx+ rlo 2) rhi)
                      (integer->char
                       (fxior (fxarithmetic-shift-left (fxand byte1 #x1f) 6)
                              (fxand byte2 #x3f))))
                    ;; bad continuation; replacement character
                    (begin
                      (__bio-input-advance! bio rlo+1 rhi)
                      #\xfffd)))
                (let (rhi (__bio-input-normalize! bio buf rlo rhi 1))
                  (__bio-input-buffer-fill! bio buf rhi 1)
                  (loop)))))
           ((fx<= byte1 #xef)
            (let ((rlo+1 (fx+ rlo 1))
                  (rlo+2 (fx+ rlo 2)))
              (if (fx< rlo+2 rhi)
                (let* ((byte2 (u8vector-ref buf rlo+1))
                       (byte3 (u8vector-ref buf rlo+2)))
                  (if (fx= (fxand byte2 #xc0) (fxand byte3 #xc0) #x80)
                    (begin
                      (__bio-input-advance! bio (fx+ rlo 3) rhi)
                      (integer->char
                       (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                              (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                              (fxand byte3 #x3f))))
                    ;; bad continuation; replacement character
                    (begin
                      (__bio-input-advance! bio rlo+1 rhi)
                      #\xfffd)))
                (let* ((need (fx- 3 (fx- rhi rlo)))
                       (rhi (__bio-input-normalize! bio buf rlo rhi need)))
                  (__bio-input-buffer-fill! bio buf rhi need)
                  (loop)))))
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
                      (__bio-input-advance! bio (fx+ rlo 4) rhi)
                      (integer->char
                       (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                              (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                              (fxand byte3 #x3f))))
                    ;; bad continuation; replacement character
                    (begin
                      (__bio-input-advance! bio rlo+1 rhi)
                      #\xfffd)))
                (let* ((need (fx- 4 (fx- rhi rlo)))
                       (rhi (__bio-input-normalize! bio buf rlo rhi need)))
                  (__bio-input-buffer-fill! bio buf rhi need)
                  (loop)))))
           (else
            ;; Bad encoding; use replacement character
            (__bio-input-advance! bio (fx+ rlo 1) rhi)
            #\xfffd)))
        ;; empty buffer
        (let (read (__bio-input-buffer-fill! bio buf rhi 0))
          (if (fx> read 0)
            (loop)
            '#!eof))))))

(def (bio-read-char-utf8-generic (reader : BufferedReader))
  (let (byte1 (reader.read-u8))
    (cond
     ((eof-object? byte1)
      '#!eof)
     ((fx<= byte1 #x7f)
      (integer->char byte1))
     ((fx<= byte1 #xdf)
      (let (byte2 (reader.read-u8!))
        (if (fx= (fxand byte2 #xc0) #x80)
          (integer->char
           (fxior (fxarithmetic-shift-left (fxand byte1 #x1f) 6)
                  (fxand byte2 #x3f)))
          (begin
            ;; bad continuation; put back the byte to the buffer and return replacement char
            (reader.put-back byte2)
            #\xfffd))))
     ((fx<= byte1 #xef)
      (let (byte2 (reader.read-u8!))
        (if (fx= (fxand byte2 #xc0) #x80)
          (let (byte3 (reader.read-u8!))
            (if (fx= (fxand byte3 #xc0) #x80)
              (integer->char
               (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                      (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                      (fxand byte3 #x3f)))
              (begin
                ;; bad continuation; put back and return replacement char
                (reader.put-back [byte2 byte3])
                #\xfffd)))
          (begin
            ;; bad continuation; put back and return replacement char
            (reader.put-back byte2)
            #\xfffd))))
     ((fx<= byte1 #xf4)
      (let (byte2 (reader.read-u8!))
        (if (fx= (fxand byte2 #xc0) #x80)
          (let (byte3 (reader.read-u8!))
            (if (fx= (fxand byte3 #xc0) #x80)
              (let (byte4 (reader.read-u8!))
                (if (fx= (fxand byte4 #xc0) #x80)
                  (integer->char
                   (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                          (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                          (fxand byte3 #x3f)))
                  (begin
                    ;; bad continuation; put back and return replacement char
                    (reader.put-back [byte2 byte3 byte4])
                    #\xfffd)))
              (begin
                ;; bad continuation; put back and return replacement char
                (reader.put-back [byte2 byte3])
                #\xfffd)))
          (begin
            ;; bad continuation; put back and return replacement char
            (reader.put-back byte2)
            #\xfffd))))
     (else
      ;; Bad encoding; use replacement character
      #\xfffd))))

(defreader-ext (read-char-utf8 reader)
  ;; => :char or :eof
  (if (is-input-buffer-instance? reader)
    (using (bio (&interface-instance-object reader) :- basic-input-buffer)
      (__check-buffer-open! read-char-utf8 bio)
      (if (fx<= 4 (u8vector-length bio.buf))
        (__bio-read-char-utf8 bio)
        (__bio-read-char-utf8-generic reader)))
    (__bio-read-char-utf8-generic reader)))

(def (bio-peek-char-utf8 (bio : basic-input-buffer))
  (let loop ()
    (let ((rlo bio.rlo)
          (rhi bio.rhi)
          (buf bio.buf))
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
                (let (rhi (__bio-input-normalize! bio buf rlo rhi 1))
                  (__bio-input-buffer-fill! bio buf rhi 1)
                  (loop)))))
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
                       (rhi (__bio-input-normalize! bio buf rlo rhi need)))
                  (__bio-input-buffer-fill! bio buf rhi need)
                  (loop)))))
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
                       (rhi (__bio-input-normalize! bio buf rlo rhi need)))
                  (__bio-input-buffer-fill! bio buf rhi need)
                  (loop)))))
           (else
            ;; Bad encoding; use replacement character
            #\xfffd)))
        ;; empty buffer
        (let (read (__bio-input-buffer-fill! bio buf rhi 0))
          (if (fx> read 0)
            (loop)
            '#!eof))))))

(def (bio-peek-char-utf8-generic (reader : BufferedReader))
  (let (byte1 (reader.peek-u8))
    (cond
     ((eof-object? byte1)
      '#!eof)
     ((fx<= byte1 #x7f)
      (integer->char byte1))
     ((fx<= byte1 #xdf)
      (reader.read-u8)
      (let (byte2 (reader.read-u8!))
        (if (fx= (fxand byte2 #xc0) #x80)
          (begin
            (reader.put-back [byte1 byte2])
            (integer->char
             (fxior (fxarithmetic-shift-left (fxand byte1 #x1f) 6)
                    (fxand byte2 #x3f))))
          (begin
            ;; bad continuation; put back the byte to the buffer and return replacement char
            (reader.put-back [byte1 byte2])
            #\xfffd))))
     ((fx<= byte1 #xef)
      (reader.read-u8)
      (let (byte2 (reader.read-u8!))
        (if (fx= (fxand byte2 #xc0) #x80)
          (let (byte3 (reader.read-u8!))
            (if (fx= (fxand byte3 #xc0) #x80)
              (begin
                (reader.put-back [byte1 byte2 byte3])
                (integer->char
                 (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                        (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                        (fxand byte3 #x3f))))
              (begin
                ;; bad continuation; return replacement char
                (reader.put-back [byte1 byte2 byte3])
                #\xfffd)))
          (begin
            ;; bad continuation; return replacement char
            (reader.put-back [byte1 byte2])
            #\xfffd))))
     ((fx<= byte1 #xf4)
      (reader.read-u8)
      (let (byte2 (reader.read-u8!))
        (if (fx= (fxand byte2 #xc0) #x80)
          (let (byte3 (reader.read-u8!))
            (if (fx= (fxand byte3 #xc0) #x80)
              (let (byte4 (reader.read-u8!))
                (if (fx= (fxand byte4 #xc0) #x80)
                  (begin
                    (reader.put-back [byte1 byte2 byte3 byte4])
                    (integer->char
                     (fxior (fxarithmetic-shift-left (fxand byte1 #x0f) 12)
                            (fxarithmetic-shift-left (fxand byte2 #x3f) 6)
                            (fxand byte3 #x3f))))
                  (begin
                    ;; bad continuation; return replacement char
                    (reader.put-back [byte1 byte2 byte3 byte4])
                    #\xfffd)))
              (begin
                ;; bad continuation; return replacement char
                (reader.put-back [byte1 byte2 byte3])
                #\xfffd)))
          (begin
            ;; bad continuation; return replacement char
            (reader.put-back [byte1 byte2])
            #\xfffd))))
     (else
      ;; Bad encoding; use replacement character
      #\xfffd))))

(defreader-ext (peek-char-utf8 reader)
  ;; => :char or :eof
  (if (is-input-buffer-instance? reader)
    (using (bio (&interface-instance-object reader) :- basic-input-buffer)
      (__check-buffer-open! peer-char-utf8 bio)
      (if (fx<= 4 (u8vector-length bio.buf))
        (__bio-peek-char-utf8 bio)
        (__bio-peek-char-utf8-generic reader)))
    (__bio-peek-char-utf8-generic reader)))

(defreader-ext (read-char-utf8! reader)
  (let (char (reader.read-char-utf8))
    (if (eof-object? char)
      (raise-premature-end-of-input read-char!)
      char)))

(defrule (__bio-input-read-string input str start end need chars __read-char)
  (let (count (fx- end start))
    (let loop ((i    0    :- :fixnum)
               (need need :- :fixnum)
               (read 0    :- :fixnum))
      => :fixnum
      (defrule (return read)
        (begin0 read
          (when chars
            (set! (box chars) i))))
      (if (fx< i count)
        (let (next (__read-char input))
          (if (eof-object? next)
            (if (fx> need 0)
              (raise-premature-end-of-input read-string)
              (return read))
            (begin
              (string-set! str i next)
              (loop (fx+ i 1) (fx- need 1) (fx+ read 1)))))
        (return read)))))

(def (bio-read-string-utf8 (bio                       : basic-input-buffer)
                           (str                       : :string)
                           (start 0                   : :fixnum)
                           (end   (string-length str) : :fixnum)
                           (need  0                   : :fixnum)
                           (chars #f                  :? :box))
  => :fixnum
  (__bio-input-read-string bio str start end need chars __bio-read-char-utf8))

(def (bio-read-string-utf8-generic (reader                    : BufferedReader)
                                   (str                       : :string)
                                   (start 0                   : :fixnum)
                                   (end   (string-length str) : :fixnum)
                                   (need  0                   : :fixnum)
                                   (chars #f                  :? :box))
  => :fixnum
  (__bio-input-read-string reader str start end need chars __bio-read-char-utf8-generic))

(defreader-ext (read-string-utf8 reader
                                 (str   : :string)
                                 (start 0
                                        :~ (in-range? 0 (string-length str))
                                        :- :fixnum)
                                 (end   (string-length str)
                                        :~ (in-range-inclusive? start (string-length str))
                                        :- :fixnum)
                                 (need  0
                                        :~ nonnegative-fixnum?
                                        :- :fixnum)
                                 (chars #f
                                        :? :box))
  => :fixnum
  (if (is-input-buffer-instance? reader)
    (using (bio (&interface-instance-object reader) :- basic-input-buffer)
      (__check-buffer-open! read-string-utf8 bio)
      (__bio-read-string-utf8 bio str start end need chars))
    (__bio-read-string-utf8-generic reader str start end need chars)))

(defrule (__bio-input-read-line input separators read-more? finish __peek-char __read-char)
  (let (next (__peek-char input))
    (if (eof-object? next)
      '#!eof
      (let loop ((chars []) (chars-read 0) (separators-rest separators) (separators-count 0))
        (if (read-more? chars-read)
          (let (next (__read-char input))
            (if (eof-object? next)
              (finish chars separators-count)
              (match separators-rest
                ([sep . separators-rest]
                 (if (eq? sep next)
                   (loop (cons next chars) (fx+ chars-read 1) separators-rest (fx+ separators-count 1))
                   (loop (cons next chars) (fx+ chars-read 1) separators 0)))
                ([]
                 (finish (cons next chars) separators-count)))))
          (finish chars separators-count))))))

(def (bio-read-line-utf8 (bio        : basic-input-buffer)
                         (separators : :list)
                         (read-more? : :procedure)
                         (finish     : :procedure))
  (__bio-input-read-line bio separators read-more? finish
                         __bio-peek-char-utf8
                         __bio-read-char-utf8))

(def (bio-read-line-utf8-generic (reader     : Reader)
                                 (separators : :list)
                                 (read-more? : :procedure)
                                 (finish     : :procedure))
  (__bio-input-read-line reader separators read-more? finish
                         __bio-peek-char-utf8-generic
                         __bio-read-char-utf8-generic))

(defreader-ext (read-line-utf8 reader
                               (sep          #\newline : :t) ; Maybe char or list of chars
                               (include-sep? #f        : :boolean)
                               (max-chars    0         : :fixnum))
  ;; => :string or :eof
  (let* ((separators
          (cond
           ((pair? sep) sep)
           ((not sep) [])
           (else [sep])))
         (read-more?
          (if (fx> max-chars 0)
            (lambda (x) (fx< x max-chars))
            (lambda (x) #t)))
         (finish
          (if include-sep?
            (lambda (chars drop) (list->string (reverse! chars)))
            (lambda (chars drop) (list->string (reverse! (list-tail chars drop)))))))
    (if (is-input-buffer-instance? reader)
      (using (bio (&interface-instance-object reader) :- basic-input-buffer)
        (__check-buffer-open! read-line-utf8 bio)
        (__bio-read-line-utf8 bio
                              separators
                              read-more?
                              finish))
      (__bio-read-line-utf8-generic (&interface-instance-object reader)
                                    separators
                                    read-more?
                                    finish))))
