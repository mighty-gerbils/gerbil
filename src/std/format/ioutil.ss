;;; -*- Gerbil -*-
;;; © vyzo
;;; format object utilities
(import :std/io/interface
        :std/io/bio/api
        :std/serde/serialize
        :std/serde/interned
        :std/iter
        (only-in :std/number/writer write-integer integer-write-length)
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

;; Escape a string according to some string-escaping rules,
;; wherein special characters needing escape are assumed to be ASCII:
;; all post-ASCII characters (codepoint > 127) will be written as UTF-8.
;; The escape procedure, given an ASCII codepoint, must either return #f
;; (meaning that write-string/escape will write the character without escape),
;; or must directly write the suitable escape sequence to the buffer,
;; and return as a fixnum the number of bytes written.
(defwriter-ext (write-string/escape writer (str : :string) (escape : :procedure))
  (let (len (string-length str))
    (let loop ((i 0 :- :fixnum) (wr 0 :- :fixnum))
      => :fixnum
      (if (fx< i len)
        (let* ((char (##string-ref str i))
               (codepoint (char->integer char)))
          (defrule (write-char)
            (do-write (wr wr)
              (writer.write-char-utf8 char)
              (loop (fx+ i 1) wr)))
          (cond
           ((fx> codepoint 127)
            (write-char))
           ((escape writer codepoint)
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


(defwriter-ext (write-fixnum-binary writer (int : :fixnum))
  (write-integer writer int base: 2))

(defwriter-ext (write-fixnum-octal writer (int : :fixnum))
  (write-integer writer int base: 8))

(defwriter-ext (write-fixnum-decimal writer (int : :fixnum))
  (write-integer writer int))

(defwriter-ext (write-fixnum-hex writer (int : :fixnum))
  (write-integer writer int base: 16))

(defwriter-ext (write-fixnum-HEX writer (int : :fixnum))
  (write-integer writer int base: 16 upper-case?: #t))

;; Format an integer with explicit options — flags, width, precision (min-digits), base, upper-case?.
;; Flags: #\- left-align, #\0 zero-pad, #\+ always-sign, #\# Scheme prefix (#x/#o/#b).
;; precision suppresses #\0 zero-pad (C rule): %.6x 42→ "00002a"; suppresses #\0 zero-pad flag.
(defsyntax-case do-write-integer ()
  ((_ writer int flags width precision base upper-case?)
   (with-identifiers ((writer.write-sharp         #'writer #'writer ".write-sharp")
                      (writer.write-u8             #'writer #'writer ".write-u8")
                      (writer.write-spaces         #'writer #'writer ".write-spaces")
                      (writer.write-fixnum-decimal #'writer #'writer ".write-fixnum-decimal")
                      (writer.write-string-utf8    #'writer #'writer ".write-string-utf8"))
     #'(let-syntax ((getflag
                     (syntax-rules ()
                       ((_ c) (and flags (memq c flags))))))
         (if (and (not flags) (not width) (not precision)
                  (fx= base 10))
           ;; Fast path: plain decimal, no flags/width/precision
           (if (##fixnum? int)
             (writer.write-fixnum-decimal int)
             (writer.write-string-utf8 (number->string int)))
           ;; General path: flags, width, precision, or non-decimal base
           (let* ((left-align  (getflag #\-))
                  (always-sign (and (getflag #\+) #t))
                  ;; #\# flag: Scheme-style prefix (#x/#o/#b); no prefix for decimal
                  (prefix-char (and (getflag #\#)
                                    (case base
                                      ((2)  (char->integer #\b))
                                      ((8)  (char->integer #\o))
                                      ((16) (char->integer #\x))
                                      (else #f))))
                  ;; C rule: precision (min-digits) suppresses the zero-pad flag
                  (zero-pad    (and (getflag #\0) (not precision))))

             ;; Write Scheme prefix (#x/#o/#b); contributes 0 if no # flag or decimal.
             (def (write-prefix!)
               (if prefix-char
                 (begin (writer.write-sharp) (writer.write-u8 prefix-char) 2)
                 0))

             (def (write-int-bare)
               (write-integer writer int
                              base:        base
                              sign?:       always-sign
                              upper-case?: upper-case?
                              min-digits:  precision))

             (if width
               (let* ((content     (integer-write-length int
                                                         base:        base
                                                         sign?:       always-sign
                                                         min-digits:  precision))
                      (prefix-size (if prefix-char 2 0))
                      (total       (fx+ content prefix-size))
                      (pad         (fxmax 0 (fx- width total))))
                 (cond
                  (zero-pad
                   ;; prefix first (if any), then sign + zeros + digits
                   (do-write (wr 0)
                     (write-prefix!)
                     (write-integer writer int
                                    base:        base
                                    width:       (fx- width prefix-size)
                                    sign?:       always-sign
                                    pad:         #\0
                                    upper-case?: upper-case?
                                    min-digits:  precision)
                     wr))
                  (left-align
                   ;; prefix + sign + digits, then trailing spaces
                   (do-write (wr 0)
                     (write-prefix!)
                     (write-int-bare)
                     (writer.write-spaces pad)
                     wr))
                  (else
                   ;; leading spaces, then prefix + sign + digits
                   (do-write (wr 0)
                     (writer.write-spaces pad)
                     (write-prefix!)
                     (write-int-bare)
                     wr))))
               (do-write (wr 0)
                 (write-prefix!)
                 (write-int-bare)
                 wr))))))))


