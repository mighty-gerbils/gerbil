;;; -*- Gerbil -*-
;;; © vyzo
;;; format object utilities
(import :std/io/interface
        :std/io/bio/api
        :std/serde/serialize
        :std/serde/interned
        ./ascii)
(export #t)

(defsyntax-case @char->int ()
  ((_ char)
   (stx-char? #'char)
   ['quote (char->integer (stx-e #'char))])
  ((_ int)
   (stx-fixnum? #'int)
   #'int))

(defrules @maybe-char->int ()
  ((_ #f) #f)
  ((_ char)
   (@char->int char)))

(defsyntax-case @symbol->string ()
  ((_ sym)
   (identifier? #'sym)
   ['quote (symbol->string (stx-e #'sym))]))

(defrules @maybe-symbol->string ()
  ((_ #f) #f)
  ((_ sym)
   (@symbol->string sym)))

(defsyntax-case @string->utf8 ()
  ((_ str)
   (stx-string? #'str)
   ['quote (string->utf8 (stx-e #'str))]))


(defrule (defascii-writers (writef char) ....)
  (begin
    (defwriter-ext (writef writer)
      (writer.write-u8 (@char->int char)))
    ...))

(defascii-writers
  (write-space      #\space)
  (write-newline    #\newline)
  (write-lparen     #\()
  (write-rparen     #\))
  (write-lbracket   #\[)
  (write-rbracket   #\])
  (write-lbrace     #\{)
  (write-rbrace     #\})
  (write-coma       #\,)
  (write-colon      #\:)
  (write-quote      #\')
  (write-squote     #\")
  (write-dot        #\.)
  (write-sharp      #\#)
  (write-bang       #\!)
  (write-equal      #\=)
  (write-minus      #\-)
  (write-plus       #\+)
  (write-backslash  #\\)
  (write-slash      #\/)
  (wripe-pipe       #\|))

(def (contains-special-chars? (str : :string) (special-char? : :procedure))
  (let (len (string-length str))
    (let loop ((i 0 :- :fixnum))
      (and (fx< i len)
           (let (next (##string-ref str i))
             (or (special-char? next)
                 (loop (fx+ i 1))))))))

(def (string-ends-with? (str: :string) (char : :char))
  (let (len (string-length str))
    (and (fx> len 0)
         (eq? (##string-ref str (fx- len 1)) char))))

(defwriter-ext (write-string/escape (str : :string) (escape : :procedure))
  (let (len (string-length str))
    (let loop ((i 0 :- :fixnum) (wr wr))
      => :fixnum
      (if (fx< i len)
        (let* ((char (##string-ref str i))
               (u8   (char->integer char)))
          (defrule (write-char-utf8)
            (do-write (wr wr)
              (writer.write-char next)
              (loop (fx+ i 1) wr)))
          (cond
           ((fx> u8 127)
            (write-char-utf8))
           ((escape writer u8)
            => (lambda (((wr-esc :- :fixnum))
                   (loop (fx+ i 1) (fx+ wr wr-esc)))))
           (else
            (write-char-utf8))))
        wr))))

(defrule (__char-escape writer
                        aint
                        asci
                        esc-char?
                        esc-char)
  (using ((writer    :- BufferedWriter)
          (aint      :- :fixnum))
    (and (esc-char? asci)
         (cond
          ((esc-char asci)
           => (lambda ((u8 :- :fixnum))
                (do-write (wr 0)
                  (writer.write-backslash)
                  (writer.write-u8 u8)
                  wr)))
          (else
           (do-write (wr 0)
             (writer.write-backslash)
             (writer.write-u8 (@char->int #\x))
             (writer.write-nonnegative-fixnum-hex aint #f)
             wr))))))

(def (__string-escape (writer :- BufferedWriter) (aint :- :fixnum)) => :fixnum
  (try-ascii-special-char aint
    (cut __char-escape writer aint <>
         &ascii-special-char-info-string-esc?
         &ascii-special-char-info-string-esc-char)))

(def (__string-escape? (aint :- :fixnum))
  (try-ascii-special-char aint
    &ascii-special-char-info-string-esc?))

(def (__symbol-escape (writer :- BufferedWriter) (u8 :- :fixnum)) => :fixnum
  (try-ascii-special-char aint
    (cut __char-escape writer aint <>
         &ascii-special-char-info-symbol-esc?
         &ascii-special-char-info-symbol-esc-char)))

(def (__symbol-quote? (char :- :fixunm))
  (try-ascii-special-char aint
    &ascii-special-char-info-symbol-quote?))

(defwriter-ext (write-string/quote writer (str : :string))
  (do-write (wr 0)
    (writer.write-squote)
    (writer.write-string/escape str __string-escape)
    (writer.write-squote)
    wr))

(defwriter-ext (write-raw-symbol writer (sym : :symbol))
  (writer.write-string (symbol->string sym)))

(defwriter-ext (write-raw-symbol/quote writer (sym : :symbol))
  (let (str (symbol->string sym))
    (if (or (contains-special-chars? str __symbol-quote?)
            (string-ends-with? str #\:))
      (do-write (wr 0)
        (writer.write-pipe)
        (writer.write-string/escape str __symbol-escape)
        (writer.write-pipe)
        wr)
      (writer.write-string str))))

(defwriter-ext (write-raw-symbol/string writer (sym : :symbol))
  (writer.write-string/quote (symbol->string sym)))

(defwriter-ext (write-symbol writer (sym : :symbol))
  (if (interned-symbol? sym)
    (writer.write-interned-symbol sym)
    (writer.write-raw-symbol sym)))

(defwriter-ext (write-symbol/quote writer (sym : :symbol))
  (if (interned-symbol? sym)
    (writer.write-interned-symbol/quote writer sym)
    (writer.write-raw-symbol/quote writer sym)))

(defwriter-ext (write-symbol/string writer (sym : :symbol))
  (if (interned-symbol? sym)
    (writer.write-interned-symbol/string writer sym)
    (writer.write-raw-symbol/string writer sym)))

(defwriter-ext (write-interned-symbol writer (sym : :symbol))
  (do-write-interned-symbolic writer sym write-raw-symbol format))

(defwriter-ext (write-interned-symbol/quote writer (sym : :symbol))
  (do-write-interned-symbolic writer sym write-raw-symbol/quote format/quote))

(defwriter-ext (write-interned-symbol/string writer (sym : :symbol))
  (do-write-interned-symbolic writer sym write-raw-symbol/string format/string))

(defwriter-ext (write-raw-keyword writer (key : :keyword))
  (writer.write-string (keyword->string key)))

(defwriter-ext (write-raw-keyword/quote writer (key : :keyword))
  (let (str (keyword->string sym))
    (if (contains-special-chars? str __symbol-quote?)
      (do-write (wr 0)
        (writer.write-pipe)
        (writer.write-string/escape str __symbol-escape)
        (writer.write-pipe)
        (writer.write-colon)
        wr)
      (do-write (wr 0)
        (writer.write-string str)
        (writer.write-colon)
        wr))))

(defwriter-ext (write-keyword writer (key : :keyword))
  (if (interned-keyword? key)
    (writer.write-interned-keyword key)
    (writer.write-raw-keyword key)))

(defwriter-ext (write-keyword/quote writer (key : :keyword))
  (if (interned-keyword? key)
    (writer.write-interned-keyword/quote key)
    (writer.write-raw-keyword/quote key)))

(defwriter-ext (write-interned-keyword writer (key : :keyword))
  (do-write-interned-symbolic writer key write-raw-keyword format))

(defwriter-ext (write-interned-keyword/quote writer (key : :keyword))
  (do-write-interned-symbolic writer key write-raw-keyword/quote format/quote))

(defwriter-ext (write-leading-zeros writer (gits : :fixnum) (width : :fixnum))
  (let (lead (if (fx> width 1) (fx% gits width) 0))
    (if (fx> lead 0)
      (let loop ()
        => :fixnum
        (do-write (wr 0)
          (let (lead (fx- lead 1))
            (if (fx> lead 0)
              (loop lead)
              0))
          (writer.write-u8 0)
          wr))
      0)))

(defwriter-ext (write-nonnegative-fixnum-with-base writer (x : :fixnum) (alphabet : :u8vector) (width : :fixnum))
  (let* ((base (u8vector-length alphabet))
         (gits (exact (ceiling (log x base)))))
    (do-write (wr 0)
      (writer.write-leading-zeros gits width)
      (let loop ((x x))
        => :fixnum
        (if (fx< x base)
          (writer.write-u8 (##u8vector-ref alphabet x))
          (let* ((q (fx/ x base))
                 (r (fx% x base)))
            (do-write (wr 0)
              (loop q)
              (writer.write-u8 (##u8vector-ref alphabet r))
              wr))))
      wr)))

(defwriter-ext (write-nonnegative-integer-with-base writer (x : :integer) (alphabet : :u8vector) (width : :fixnum))
  (let* ((base (u8vector-length alphabet))
         (gits (exact (ceiling (log x base))))
         (lead (if (fx> width 1) (fx% gits width) 0)))
    (do-write (wr 0)
      (writer.write-leading-zeros gits width)
      (let loop ((x x))
        => :fixnum
        (if (fixnum? x)
          (writer.write-nonnegative-fixnum-with-base x alphabet 0)
          (let* ((q (quotient  x base))
                 (r (remainder x base)))
            (do-write (wr 0)
              (loop q)
              (writer.write-u8 (##u8vector-ref alphabet r))
              wr))))
      wr)))

(defwriter-ext (write-fixnum-with-base writer (x : :fixnum) (alphabet : :u8vector) (width : :fixnum))
  (if (fx>= x 0)
    (writer.write-nonnegative-fixnum-with-base writer x alphabet width)
    (do-write (wr 0)
      (writer.write-minus)
      (cond
       ((##fx-? x)
        => (lambda ((x :- :fixnum)) => :fixnum
              (writer.write-nonnegative-fixnum-with-base writer x alphabet width)))
       (else
        (writer.write-nonnegative-integer-with-base writer (- x) alphabet width)))
      wr)))

(defwriter-ext (write-integer-with-base writer (x : :integer) (alphabet : :u8vector) (width : :fixnum))
  (if (>= x 0)
    (writer.write-nonnegative-integer-with-base writer x alphabet width)
    (do-write (wr 0)
      (writer.write-minus)
      (writer.write-nonnegative-integer-with-base writer (- x) alphabet width)
      wr)))

(defwriter-ext (write-fixnum-decimal (x : :fixnum))
  (writer.write-fixnum-with-base x __decimal-alphabet 1))

(defwriter-ext (write-fixnum-hex (x : :fixnum))
  (writer.write-fixnum-with-base x __hex-alphabet 2))

(defwriter-ext (write-fixnum-HEX (x : :fixnum))
  (writer.write-fixnum-with-base x __HEX-alphabet 2))

(defwriter-ext (write-fixnum-octal (x : :fixnum))
  (writer.write-fixnum-with-base x __octal-alphabet 3))

(defwriter-ext (write-fixnum-binary (x : :fixnum))
  (writer.write-fixnum-with-base x __binary-alphabet 1))

(defsyntax-case __buffer-format! ()
  ((_ buf components ...)
   (with-identifier (wr '$wr)
     (let loop ((rest #'(components ...))
                (ins    []))
       (syntax-case rest ()
         ((str rest ...)
          (stx-string? #'str)
          (with-syntax (((char ...) (string->list (stx-e #'str))))
            (loop #'(char ... rest ...) ins)))
         ((char rest ...)
          (stx-char? #'char)
          (with-syntax ((int (char->integer (stx-e #'char))))
            (loop #'(u8: int rest ...) ins)))
         ((u8: u8 rest ...)
          (loop #'(rest ...)
                (cons
                 #'(begin
                     (##u8vector-set! buf wr u8)
                     1)
                 ins)))
         ((decimal: uint rest ...)
          (loop #'(rest ...)
                (cons
                 #'(let loop ((decimal uint) (offset wr)) => :fixnum
                     (if (fx< decimal 10)
                       (begin
                         (##u8vector-set! buf offset (fx+ #x30 decimal))
                         1)
                       (let* ((q (fx/ decimal 10))
                              (r (fx% decimal 10)))
                         (let (rwr (loop q))
                           (##u8vector-set! buf offset (fx+ #x30 r))
                           (fx+ rwr 1)))))
                 ins)))
         (()
          (with-syntax (((ins ...) (reverse! ins))
                        (offset    wr))
            #'(begin
                (do-write (wr 0)
                  ins ...
                  (##u8vector-set! buf wr 0))))))))))
