;;; -*- Gerbil -*-
;;; © vyzo
;;; format object utilities
(import :std/io/interface
        :std/io/bio/api)
(export #t)

(defsyntax (@char->int stx)
  ((_ char)
   (if (stx-char? #'char)
     ['quote (char->integer (stx-e char))]
     #'(char->integer char))))

(defrule (defascii-writers (writef char) ....)
  (begin
    (defwriter-ext (writef writer)
      (writer.write-u8-inline (@char->int char)))
    ...))

(defascii-writers
  (write-space     #\space)
  (write-newline   #\newline)
  (write-lparen    #\()
  (write-rparen    #\))
  (write-lbracket  #\[)
  (write-rbracket  #\])
  (write-lbrace    #\{)
  (write-rbrace    #\})
  (write-coma      #\,)
  (write-colon     #\:)
  (write-quote     #\')
  (write-squote    #\")
  (write-dot       #\.)
  (write-sharp     #\#)
  (write-equal     #\=)
  (write-minus     #\-))

(defwriter-ext (write-symbol (sym : :symbol))
  (writer.write-string (symbol->string sym)))

(defwriter-ext (write-keyword (key : :keyword))
  (writer.write-string (keyword->string key)))

(defwriter-ext (write-nonnegative-fixnum-decimal (x : :fixnum))
  (if (fx> x 10)
    (let loop ((x x) (wr 0 :- :fixnum))
      => :fixnum
      (cond
       ((fx> x 10)
        (let (wr (loop (fx/ x 10) wr))
          (fx+ wr (writer.write-digit-decimal (fx% x 10)))))
       ((fx> x 0)
        (fx+ wr (writer.write-digit-decimal x)))
       (else wr)))
    (fx+ wr (writer.write-digit-decimal x))))

(defwriter-ext (write-fixnum-decimal (x : :fixnum))
  (if (fx< x 0)
    (let (wr (writer.write-minus))
      (fx+ wr (writer.write-nonnegative-fixnum-decimal (fx- x))))
    (writer.write-nonnegative-fixnum-decimal x)))

(defwriter-ext (write-fixnum-digit-decimal (x : :fixnum))
  (let (byte (fx+ x #x30))
    (writer-.write-u8-inline byte)))
