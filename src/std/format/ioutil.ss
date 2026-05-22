;;; -*- Gerbil -*-
;;; © vyzo
;;; format object utilities
(import :std/io/interface
        :std/io/bio/api
        :std/serde/serialize
        :std/serde/interned
        :std/iter
        ./ascii
	./env)
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

(defrule (defascii-writers ascii-writer ...)
  (begin
    (defascii-writer ascii-writer)
    ...))

(defsyntax-case defascii-writer ()
  ((_ (writef char))
   (with-identifiers ((proc            #'writef "write-" #'writef)
                      (writer          '$writer)
                      (writer.write-u8 #'writer #'writer ".write-u8"))
     #'(defwriter-ext (proc writer)
         (writer.write-u8 (@char->int char))))))

(defascii-writers
  (space      #\space)
  (newline    #\newline)
  (lparen     #\()
  (rparen     #\))
  (lbracket   #\[)
  (rbracket   #\])
  (lbrace     #\{)
  (rbrace     #\})
  (coma       #\,)
  (colon      #\:)
  (quote      #\')
  (squote     #\")
  (dot        #\.)
  (sharp      #\#)
  (bang       #\!)
  (equal      #\=)
  (minus      #\-)
  (plus       #\+)
  (backslash  #\\)
  (slash      #\/)
  (pipe       #\|)
  (ampersand  #\&)
  (zero       #\0))

(defwriter-ext (write-zeros writer (count : :fixnum))
  (for (_ (in-range count))
    (writer.write-zero))
  count)

(defwriter-ext (write-spaces writer (count : :fixnum))
  (for (_ (in-range count))
    (writer.write-space))
  count)

(def (contains-special-chars? (str : :string) (special-char? : :procedure))
  (let (len (string-length str))
    (let loop ((i 0 :- :fixnum))
      (and (fx< i len)
           (let (next (string-ref str i))
             (or (special-char? next)
                 (loop (fx+ i 1))))))))

(def (string-ends-with? (str : :string) (char : :char))
  (let (len (string-length str))
    (and (fx> len 0)
         (eq? (string-ref str (fx- len 1)) char))))

(defwriter-ext (write-string/escape writer (str : :string) (escape : :procedure))
  (let (len (string-length str))
    (let loop ((i 0 :- :fixnum) (wr 0 :- :fixnum))
      => :fixnum
      (if (fx< i len)
        (let* ((char (##string-ref str i))
               (u8   (char->integer char)))
          (defrule (write-char)
            (do-write (wr wr)
              (writer.write-char-utf8 char)
              (loop (fx+ i 1) wr)))
          (cond
           ((fx> u8 127)
            (write-char))
           ((escape writer u8)
            => (lambda ((wr-esc :- :fixnum))
                 => :fixnum
                 (loop (fx+ i 1) (fx+ wr wr-esc))))
           (else
            (write-char))))
        wr))))

(defsyntax-case __char-escape ()
  ((_ output-writer
      aint
      asci
      esc-char?
      esc-char)
   (with-identifiers ((writer '$writer)
                      (writer.write-u8         #'writer #'writer ".write-u8")
                      (writer.write-fixnum-hex #'writer #'writer ".write-fixnum-hex")
                      (writer.write-backslash  #'writer #'writer ".write-backslash"))
     #'(using ((writer output-writer :- BufferedWriter)
               (aint                 :- :fixnum))
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
                  (writer.write-fixnum-hex aint)
                  wr))))))))

(def (__string-escape (writer :- BufferedWriter) (aint :- :fixnum)) => :fixnum
  (try-ascii-special-char aint
    (cut __char-escape writer aint <>
         &ascii-special-char-info-string-esc?
         &ascii-special-char-info-string-esc-char)))

(def (__string-escape? (aint :- :fixnum))
  (try-ascii-special-char aint
    &ascii-special-char-info-string-esc?))

(def (__symbol-escape (writer :- BufferedWriter) (u8 :- :fixnum)) => :fixnum
  (try-ascii-special-char u8
    (cut __char-escape writer u8 <>
         &ascii-special-char-info-symbol-esc?
         &ascii-special-char-info-symbol-esc-char)))

(def (__symbol-quote? (char :- :char))
  (let (aint (char->integer char))
    (try-ascii-special-char aint
      &ascii-special-char-info-symbol-quote?)))

(defwriter-ext (write-string/quote writer (str : :string))
  (do-write (wr 0)
    (writer.write-squote)
    (writer.write-string/escape str __string-escape)
    (writer.write-squote)
    wr))

(defwriter-ext (write-raw-symbol writer (sym : :symbol))
  (writer.write-string-utf8 (symbol->string sym)))

(defwriter-ext (write-raw-symbol/quote writer (sym : :symbol))
  (let (str (symbol->string sym))
    (if (or (contains-special-chars? str __symbol-quote?)
            (string-ends-with? str #\:))
      (do-write (wr 0)
        (writer.write-pipe)
        (writer.write-string/escape str __symbol-escape)
        (writer.write-pipe)
        wr)
      (writer.write-string-utf8 str))))

(defwriter-ext (write-raw-symbol/string writer (sym : :symbol))
  (writer.write-string/escape (symbol->string sym) __symbol-escape))

(defwriter-ext (write-interned-symbol/quote writer (sym : :symbol))
  (do-write-interned-symbolic writer sym write-raw-symbol/quote format/quote))

(defwriter-ext (write-interned-symbol writer (sym : :symbol))
  (do-write-interned-symbolic writer sym write-raw-symbol format))

(defwriter-ext (write-symbol/quote writer (sym : :symbol))
  (if (interned-symbol? sym)
    (writer.write-interned-symbol/quote sym)
    (writer.write-raw-symbol/quote sym)))

(defwriter-ext (write-symbol/raw writer (sym : :symbol))
  (if (interned-symbol? sym)
    (writer.write-interned-symbol sym)
    (writer.write-raw-symbol sym)))

(defwriter-ext (write-interned-symbol/string writer (sym : :symbol))
  (do-write-interned-symbolic writer sym write-raw-symbol/string format/string))

(defwriter-ext (write-symbol/string writer (sym : :symbol))
  (if (interned-symbol? sym)
    (writer.write-interned-symbol/string sym)
    (writer.write-raw-symbol/string sym)))

(defwriter-ext (write-raw-keyword writer (key : :keyword))
  (writer.write-string-utf8 (keyword->string key)))

(defwriter-ext (write-raw-keyword/quote writer (key : :keyword))
  (let (str (keyword->string key))
    (if (contains-special-chars? str __symbol-quote?)
      (do-write (wr 0)
        (writer.write-pipe)
        (writer.write-string/escape str __symbol-escape)
        (writer.write-pipe)
        (writer.write-colon)
        wr)
      (do-write (wr 0)
        (writer.write-string-utf8 str)
        (writer.write-colon)
        wr))))

(defwriter-ext (write-interned-keyword writer (key : :keyword))
  (do-write-interned-symbolic writer key write-raw-keyword format))

(defwriter-ext (write-interned-keyword/quote writer (key : :keyword))
  (do-write-interned-symbolic writer key write-raw-keyword/quote format/quote))

(defwriter-ext (write-keyword/raw writer (key : :keyword))
  (if (interned-keyword? key)
    (writer.write-interned-keyword key)
    (writer.write-raw-keyword key)))

(defwriter-ext (write-keyword/quote writer (key : :keyword))
  (if (interned-keyword? key)
    (writer.write-interned-keyword/quote key)
    (writer.write-raw-keyword/quote key)))


(defsyntax-case do-write-sign ()
  ((_ writer int sign? negative?)
   (with-identifiers ((writer.write-minus #'writer #'writer ".write-minus")
                      (writer.write-plus  #'writer #'writer ".write-plus"))
     #'(if sign?
         (if (negative? int)
           (writer.write-minus)
           (writer.write-plus))
         (if (negative? int)
           (writer.write-minus)
           0)))))

(defsyntax-case do-write-int-digits ()
  ((_ writer int alphabet gits <? // %%)
   (with-identifiers ((writer.write-u8    #'writer #'writer ".write-u8")
                      (writer.write-zeros #'writer #'writer ".write-zeros"))
     #'(let (base (u8vector-length alphabet))
         (do-write (wr 0)
           (if (fx> gits 1)
             (let* ((width (exact (ceiling (log int base))))
                    (lead  (fx% width gits)))
               (if (fx> lead 0)
                 (writer.write-zeros (fx- gits lead))
                 0))
             0)
           (let loop ((x int))
             => :fixnum
             (if (<? x base)
               (writer.write-u8 (##u8vector-ref alphabet x))
               (let* ((q (// x base))
                      (r (%% x base)))
                 (do-write (wr 0)
                   (loop q)
                   (writer.write-u8 (##u8vector-ref alphabet r))
                   wr))))
           wr)))))

(defwriter-ext (write-fixnum writer
                             (int      : :fixnum)
                             (alphabet : :u8vector)
                             (gits     : :fixnum)
                             (sign?    : :boolean))
  (do-write (wr 0)
    (do-write-sign writer int sign? fxnegative?)
    (do-write-int-digits  writer (fxabs int) alphabet gits fx< fx/ fx%)
    wr))

(defwriter-ext (write-fixnum-binary writer (int : :fixnum))
  (writer.write-fixnum int __alphabet-binary 1 #f))

(defwriter-ext (write-fixnum-octal writer (int : :fixnum))
  (writer.write-fixnum int __alphabet-octal 3 #f))

(defwriter-ext (write-fixnum-decimal writer (int : :fixnum))
  (writer.write-fixnum int __alphabet-decimal 1 #f))

(defwriter-ext (write-fixnum-hex writer (int : :fixnum))
  (writer.write-fixnum int __alphabet-hex 2 #f))

(defwriter-ext (write-fixnum-HEX writer (int : :fixnum))
  (writer.write-fixnum int __alphabet-HEX 2 #f))

(defwriter-ext (write-bignum writer
                             (int        : :bignum)
                             (alphabet   : :u8vector)
                             (gits       : :fixnum)
                             (sign?      : :boolean))
  (do-write (wr 0)
    (do-write-sign writer int sign? negative?)
    (do-write-int-digits  writer (abs int) alphabet gits < quotient remainder)
    wr))

(defsyntax-case do-write-integer ()
  ((_ writer int opt write-method)
   (with-identifiers ((opt.flags            #'opt #'opt ".flags")
                      (opt.width            #'opt #'opt ".width")
                      (opt.integer-prefix   #'opt #'opt ".integer-prefix")
                      (opt.integer-alphabet #'opt #'opt ".integer-alphabet")
                      (opt.integer-gits     #'opt #'opt ".integer-gits")
                      (writer.write-minus   #'writer #'writer ".write-minus")
                      (writer.write-sharp   #'writer #'writer ".write-sharp")
                      (writer.write-zeros   #'writer #'writer ".write-zeros")
                      (writer.write-spaces  #'writer #'writer ".write-spaces")
                      (writer.write-u8      #'writer #'writer ".write-u8")
                      (writer.write-method  #'writer #'writer "." #'write-method))
     #'(let-syntax ((getflag
                     (syntax-rules ()
                       ((_ c) (and opt.flags (memq c opt.flags))))))
         (let ((left-align  (getflag #\-))
               (zero-pad    (getflag #\0))
               (always-sign (and (getflag #\+) #t)))

           (defrule (write-prefix)
             (do-write (wr 0)
               (writer.write-sharp)
               (writer.write-u8 opt.integer-prefix)
               wr))

           (defrule (write-int int)
             (writer.write-method int
                                  opt.integer-alphabet
                                  opt.integer-gits
                                  always-sign))

           (defrule (write-int-pad int pad)
             (do-write (wr 0)
               (writer.write-zeros pad)
               (write-int int)
               wr))

           (defrule (write-int-negative-pad int pad)
             (do-write (wr 0)
               (writer.write-minus)
               (writer.write-zeros pad)
               (write-int (- int))
               wr))

           (defrule (do-format-int int expr)
             (do-format-style write-method opt
               (if opt.integer-prefix
                 (do-write (wr 0)
                   (write-prefix)
                   expr
                   wr)
                 expr)
               expr))

           (defrule (format-int int)
             (do-format-int int (write-int int)))

           (defrule (count-digits)
             (format-integer-length int
                                    opt.integer-alphabet
                                    opt.integer-gits
                                    always-sign))
           (if opt.width
             (let* ((digits (count-digits))
                    (digits (if opt.integer-prefix
                              (do-format-style write-method opt
                                (fx+ digits 2)
                                digits)
                              digits)))
               (if (fx< digits opt.width)
                 (let (pad (fx- opt.width digits))
                   (cond
                    (zero-pad
                     (if (negative? int)
                       (do-format-int int (write-int-negative-pad int pad))
                       (do-format-int int (write-int-pad int pad))))
                    (left-align
                     (format-int int))
                    (else
                     (do-write (wr 0)
                       (writer.write-spaces pad)
                       (format-int int)
                       wr))))
                 (format-int int)))
             (format-int int)))))))

(def (format-integer-length (int : :integer) (alphabet : :u8vector) (gits : :fixnum) (sign? : :boolean))
  => :fixnum
  (let* ((base  (u8vector-length alphabet))
         (width (exact (ceiling (log int base))))
         (width
          (if (fx> gits 1)
            (let (lead  (fx% width gits))
              (if (fx> lead 0)
                (fx+ width 1)
                width))
            width))
         (width
          (if (or sign? (negative? int))
            (fx+ width 1)
            width)))
    width))
