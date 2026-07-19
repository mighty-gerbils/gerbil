;;; -*- Gerbil -*-
;;; © vyzo
;;; format ascii char meta
(export #t)

(def __ascii-special-chars
  (make-vector 128 #f))

(def __string-escape-chars
  (make-vector 128 #f))

(defstruct ascii-special-char-info
  ((char            :- :char)
   (ascii           :- :fixnum)
   (string-esc?     :- :boolean)
   (string-esc-char :- :fixnum)
   (symbol-quote?   :- :boolean)
   (symbol-esc?     :- :boolean)
   (symbol-esc-char :- :fixnum)
   (char-esc?       :- :boolean)
   (char-scm-name   :- :symbol)
   (char-std-name   :- :symbol))
  final: #t)

(defrule (defascii-special-chars spec ...)
  (begin
    (defascii-special-char spec) ...))

(defsyntax-case defascii-special-char ()
  ((_ (char-or-ascii
       str-esc?
       str-esc-char
       symbol-quote?
       symbol-esc?
       symbol-esc-char
       char-esc?
       char-esc-scheme-name
       char-esc-std-name))
   (let (char-or-ascii (stx-e #'char-or-ascii))
     (with-syntax ((char (if (char? char-or-ascii)
                           char-or-ascii
                           (integer->char char-or-ascii)))
                   (ascii (if (char? char-or-ascii)
                            (char->integer char-or-ascii)
                            char-or-ascii)))
       #'(begin
           (vector-set! __ascii-special-chars ascii
                        (ascii-special-char-info
                         char ascii
                         str-esc?
                         (and str-esc-char (char->integer str-esc-char))
			 symbol-quote?
                         symbol-esc?
                         (and symbol-esc-char (char->integer symbol-esc-char))
                         char-esc?
                         'char-esc-scheme-name
                         'char-esc-std-name))
           (when str-esc-char
             (vector-set! __string-escape-chars
                          (char->integer str-esc-char)
                          char)))))))

(defrules try-ascii-special-char ()
  ((_ aint K E)
   (cond
    ((vector-ref __ascii-special-chars aint)
     => K)
    (else E)))
  ((_ aint K)
   (try-ascii-special-char aint K #f)))

(defrule (try-string-escape-char char K E)
  (let ((index (char->integer char))
        ($E E))
    (if (fx< index (vector-length __string-escape-chars))
      (cond
       ((vector-ref __string-escape-chars index) => K)
       (else ($E)))
      ($E))))

(defascii-special-chars
  ;; char   str-esc? esc-char sym-quote? sym-esc? esc-char char-esc? scm-name std-name
  (#x00    #t      #f         #t         #t       #f       #t        null     NUL)
  (#x01    #t      #f         #t         #t       #f       #t        #f       SOH)
  (#x02    #t      #f         #t         #t       #f       #t        #f       STX)
  (#x03    #t      #f         #t         #t       #f       #t        #f       ETX)
  (#x04    #t      #f         #t         #t       #f       #t        #f       EOT)
  (#x05    #t      #f         #t         #t       #f       #t        #f       ENQ)
  (#x06    #t      #f         #t         #t       #f       #t        #f       ACK)
  (#x07    #t      #\a        #t         #t       #\a      #t        alarm    BEL)
  (#x08    #t      #\b        #t         #t       #\b      #t        backspace BS)
  (#x09    #t      #\t        #t         #t       #\t      #t        tab      HT)
  (#x0A    #t      #\n        #t         #t       #\n      #t        newline  LF)
  (#x0B    #t      #\v        #t         #t       #\v      #t        vtab     VT)
  (#x0C    #t      #\f        #t         #t       #\f      #t        page     FF)
  (#x0D    #t      #\r        #t         #t       #\r      #t        return   CR)
  (#x0E    #t      #f         #t         #t       #f       #t        #f       SO)
  (#x0F    #t      #f         #t         #t       #f       #t        #f       SI)
  (#x10    #t      #f         #t         #t       #f       #t        #f       DLE)
  (#x11    #t      #f         #t         #t       #f       #t        #f       DC1)
  (#x12    #t      #f         #t         #t       #f       #t        #f       DC2)
  (#x13    #t      #f         #t         #t       #f       #t        #f       DC3)
  (#x14    #t      #f         #t         #t       #f       #t        #f       DC4)
  (#x15    #t      #f         #t         #t       #f       #t        #f       NAK)
  (#x16    #t      #f         #t         #t       #f       #t        #f       SYN)
  (#x17    #t      #f         #t         #t       #f       #t        #f       ETB)
  (#x18    #t      #f         #t         #t       #f       #t        #f       CAN)
  (#x19    #t      #f         #t         #t       #f       #t        #f       EM)
  (#x1A    #t      #f         #t         #t       #f       #t        #f       SUB)
  (#x1B    #t      #f         #t         #t       #f       #t        escape   ESC)
  (#x1C    #t      #f         #t         #t       #f       #t        #f       FS)
  (#x1D    #t      #f         #t         #t       #f       #t        #f       GS)
  (#x1E    #t      #f         #t         #t       #f       #t        #f       RS)
  (#x1F    #t      #f         #t         #t       #f       #t        #f       US)
  (#x20    #f      #f         #t         #f       #f       #f        space    SPACE)
  (#x7F    #t      #f         #t         #t       #f       #t        delete   DEL)

  (#\"     #t      #\"        #t         #f       #\"      #f        #f       #f)
  (#\(     #f      #f         #t         #f       #\(      #f        #f       #f)
  (#\)     #f      #f         #t         #f       #\)      #f        #f       #f)
  (#\[     #f      #f         #t         #f       #\[      #f        #f       #f)
  (#\\     #t      #\\        #t         #f       #\\      #f        #f       #f)
  (#\]     #f      #f         #t         #f       #\]      #f        #f       #f)
  (#\{     #f      #f         #t         #f       #\{      #f        #f       #f)
  (#\|     #f      #f         #t         #f       #\|      #f        #f       #f)
  (#\}     #f      #f         #t         #f       #\}      #f        #f       #f)
  )

(defrule (defascii-encoding name (char int) ...)
  (def name
    (let (vec (make-vector 128 #f))
      (vector-set! vec (char->integer char) int)
      ...
      vec)))

(defascii-encoding __encoding-hex
  (#\0 0)
  (#\1 1)
  (#\2 2)
  (#\3 3)
  (#\4 4)
  (#\5 5)
  (#\6 6)
  (#\7 7)
  (#\8 8)
  (#\9 9)
  (#\a 10)
  (#\b 11)
  (#\c 12)
  (#\d 13)
  (#\e 14)
  (#\f 15))

(defascii-encoding __encoding-HEX
  (#\0 0)
  (#\1 1)
  (#\2 2)
  (#\3 3)
  (#\4 4)
  (#\5 5)
  (#\6 6)
  (#\7 7)
  (#\8 8)
  (#\9 9)
  (#\A 10)
  (#\B 11)
  (#\C 12)
  (#\D 13)
  (#\E 14)
  (#\F 15))
