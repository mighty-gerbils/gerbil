;;; -*- Gerbil -*-
;;; © vyzo
;;; format object utilities
(import :std/io/interface
        :std/io/bio/api
        :std/serde/serialize)
(export #t)

(defsyntax (@char->int stx)
  (syntax-case stx ()
    ((_ char)
     (stx-char? #'char)
     ['quote (char->integer (stx-e #'char))])
    ((_ int)
     (stx-fixnum? #'int)
     #'int)))

(defrules @maybe-char->int ()
  ((_ #f) #f)
  ((_ char)
   (@char->int char)))

(defsyntax (@symbol->string stx)
  (syntax-case stx ()
    ((_ sym)
     (identifier? #'sym)
     ['quote (symbol->string (stx-e #'sym))])))

(defrules @maybe-symbol->string ()
  ((_ #f) #f)
  ((_ sym)
   (@symbol->string sym)))

(def __ascii-special-chars
  (make-vector #f 128))

(defstruct ascii-special-char-info
  ((char            :- :fixnum)
   (string-esc?     :- :boolean)
   (string-esc-char :- :fixnum)
   (symbol-quote?   :- :boolean)
   (symbol-esc?     :- :boolean)
   (symbol-esc-char :- :fixnum)
   (char-esc?       :- :boolean)
   (char-scm-name   :- :string)
   (char-std-name   :- :string))
  final: #t)

(defrule (defascii-special-chars spec ...)
  (begin
    (defascii-special-char spec) ...))

(defrule (defascii-special-char
           (char
            str-escape? str-esc-char
            symbol-quote?
            symbol-esc?
            symbol-esc-char
            char-esc?
            char-scheme-name
            char- std-name))
  (vector-set! __ascii-special-chars char
               (asci-special-char
                (@char->int char)
                str-escape?
                (@maybe-char->int str-esc-char)
                symbol-quote?
                symbol-esc?
                (@maybe-char->int symbol-esc-char)
                char-esc?
                (@maybe-symbol->string char-scheme-name)
                (@maybe-symbol->string char-std-name))))

(defrule (try-ascii-special-char aint K)
  (cond
   ((##vector-ref __ascii-special-chars aint)
    => K)
   (else #f)))

(defascii-special-chars
  ;; char   str-esc? esc-char sym-quote? sym-esc? esc-char char-esc? scm-name std-name
  (#x00    #t      #f        #t         #t       #f       #t        nul      NUL)
  (#x01    #t      #f        #t         #t       #f       #t        #f       SOH)
  (#x02    #t      #f        #t         #t       #f       #t        #f       STX)
  (#x03    #t      #f        #t         #t       #f       #t        #f       ETX)
  (#x04    #t      #f        #t         #t       #f       #t        #f       EOT)
  (#x05    #t      #f        #t         #t       #f       #t        #f       ENQ)
  (#x06    #t      #f        #t         #t       #f       #t        #f       ACK)
  (#x07    #t      #\a       #t         #t       #\a      #t        #f       BEL)
  (#x08    #t      #\b       #t         #t       #\b      #t        #f       BS)
  (#x09    #t      #\t       #t         #t       #\t      #t        tab      HT)
  (#x0A    #t      #\n       #t         #t       #\n      #t        newline  LF)
  (#x0B    #t      #\v       #t         #t       #\v      #t        #f       VT)
  (#x0C    #t      #\f       #t         #t       #\f      #t        #f       FF)
  (#x0D    #t      #\r       #t         #t       #\r      #t        return   CR)
  (#x0E    #t      #f        #t         #t       #f       #t        #f       SO)
  (#x0F    #t      #f        #t         #t       #f       #t        #f       SI)
  (#x10    #t      #f        #t         #t       #f       #t        #f       DLE)
  (#x11    #t      #f        #t         #t       #f       #t        #f       DC1)
  (#x12    #t      #f        #t         #t       #f       #t        #f       DC2)
  (#x13    #t      #f        #t         #t       #f       #t        #f       DC3)
  (#x14    #t      #f        #t         #t       #f       #t        #f       DC4)
  (#x15    #t      #f        #t         #t       #f       #t        #f       NAK)
  (#x16    #t      #f        #t         #t       #f       #t        #f       SYN)
  (#x17    #t      #f        #t         #t       #f       #t        #f       ETB)
  (#x18    #t      #f        #t         #t       #f       #t        #f       CAN)
  (#x19    #t      #f        #t         #t       #f       #t        #f       EM)
  (#x1A    #t      #f        #t         #t       #f       #t        #f       SUB)
  (#x1B    #t      #f        #t         #t       #f       #t        #f       ESC)
  (#x1C    #t      #f        #t         #t       #f       #t        #f       FS)
  (#x1D    #t      #f        #t         #t       #f       #t        #f       GS)
  (#x1E    #t      #f        #t         #t       #f       #t        #f       RS)
  (#x1F    #t      #f        #t         #t       #f       #t        #f       US)
  (#x20    #f      #f        #t         #f       #f       #t        space    SPACE)

  (#\"     #t      #\"        #t         #t      #\"       #f        #f       #f)
  (#\(     #f      #f         #t         #f      #f        #f        #f       #f)
  (#\)     #f      #f         #t         #f      #f        #f        #f       #f)
  (#\[     #f      #f         #t         #f      #f        #f        #f       #f)
  (#\\     #t      #\\        #t         #t      #\\       #f        #f       #f)
  (#\]     #f      #f         #t         #f      #f        #f        #f       #f)
  (#\{     #f      #f         #t         #f      #f        #f        #f       #f)
  (#\|     #f      #f         #t         #f      #f        #f        #f       #f)
  (#\}     #f      #f         #t         #f      #f        #f        #f       #f)

  (#x7F    #t      #f        #t         #t       #f       #t        #f       DEL)
  )

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
  (write-equal      #\=)
  (write-minus      #\-)
  (write-backslash  #\\)
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

(defwriter-ext (write-symbol writer (sym : :symbol))
  (writer.write-string (symbol->string sym)))

(defwriter-ext (write-symbol/quote writer (sym : :symbol))
  (let (str (symbol->string sym))
    (if (or (contains-special-chars? str __symbol-quote?)
            (string-ends-with? str #\:))
      (do-write (wr 0)
        (writer.write-pipe)
        (writer.write-string/escape str __symbol-escape)
        (writer.write-pipe)
        wr)
      (writer.write-string str))))

(defwriter-ext (write-keyword writer (key : :keyword))
  (writer.write-string (keyword->string key)))

(defwriter-ext (write-keyword/quote writer (key : :keyword))
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

(defwriter-ext (write-nonnegative-fixnum-with-base writer (x : :fixnum) (tr : :u8vector) (width : :fixnum))
  XXX
  )

(defwriter-ext (write-fixnum-with-base writer (x : :fixnum) (tr : :u8vector) (width : :fixnum))
  (if (fx>= x 0)
    (writer.write-nonnegative-fixnum-with-base writer x tr width)
    (do-write (wr 0)
      (writer.write-minus)
      (writer.write-nonnegative-fixnum-with-base writer (fx- x) tr width)
      wr)))

(def __decimal-base
  '#u8(#x30 #x31 #x32 #x33 #x34 #x35 #x36 #x37 #x38 #x39))

(def __hex-base
  '#u8(#x30 #x31 #x32 #x33 #x34 #x35 #x36 #x37 #x38 #x39 #x61 #x62 #x63 #x64 #x65 #x66))

(def __hex-caps-base
  '#u8(#x30 #x31 #x32 #x33 #x34 #x35 #x36 #x37 #x38 #x39 #x41 #x42 #x43 #x44 #x45 #x46))

(defwriter-ext (write-fixnum-decimal (x : :fixnum))
  (if (fx>= x 0)
    (writer.write-nonnegative-fixnum-decimal x)
    (writer.write-nonnegative-fixnum-decimal (fx- x))))

(defwriter-ext (write-nonnegative-fixnum-decimal (x : :fixnum))
  (writer.write-nonnegative-fixnum-with-base x __decimal-base 1))

(defwriter-ext (write-nonnegative-fixnum-hex (x : :fixnum) (caps? : :boolean := #t))
  (if caps?
    (writer.write-nonnegative-fixnum-with-base x __hex-caps-base 2)
    (writer.write-nonnegative-fixnum-with-base x __hex-base 2)))

(defwriter-ext (write-nonnegative-fixnum-octal (x : :fixnum))
  (writer.write-nonnegative-fixnum-with-base x __octal-base 3))
