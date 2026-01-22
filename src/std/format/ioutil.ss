;;; -*- Gerbil -*-
;;; © vyzo
;;; format object utilities
(import :std/io/interface
        :std/io/bio/api
        :std/serde/serialize)
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

(def __string-escape
  (hash-eq (#\newline #\n)
           (#\return #\r)
           (#\" #\")
           (#\\ #\\)))

(def __symbol-escape
  (hash-eq (#\space #\space)
           (#\newline #\n)
           (#\return #\r)
           (#\| #\|)
           (#\( #\()
           (#\) #\))
           (#\[ #\[)
           (#\] #\])
           (#\{ #\{)
           (#\} #\})
           (#\" #\")
           (#\\ #\\)))

(def (contains-restricted-chars? (str : :string) (cs : HashTable))
  (let (len (string-length str))
    (let loop ((i 0 :- :fixnum))
      (and (fx< i len)
           (let (next (##string-ref str i))
             (or (hash-get cs next)
                 (loop (fx+ i 1))))))))

(def (string-ends-with? (str: :string) (char : :char))
  (let (len (string-length str))
    (and (fx> len 0)
         (eq? (##string-ref str (fx- len 1)) char))))

(defwriter-ext (write-string/escape (str : :string) (esc : HashTable))
  (let (len (string-length str))
    (let loop ((i 0 :- :fixnum) (wr wr))
      => :fixnum
      (if (fx< i len)
        (let (next (##string-ref str i))
          (cond
           ((hash-get esc next)
            => (lambda ((next :- :char))
                 (do-write (wr wr)
                   (writer.write-backslash)
                   (writer.write-char next)
                   (loop (fx+ i 1) wr))))
           (else
            (do-write (wr wr)
              (writer.write-char next)
              (loop (fx+ i 1) wr)))))
        wr))))

(defwriter-ext (write-string/quote (str : :string))
  (do-write (wr 0)
    (writer.write-squote)
    (writer.write-string/escape str __string-escape)
    (writer.write-squote)
    wr))

(defwriter-ext (write-symbol (sym : :symbol))
  (writer.write-string (symbol->string sym)))

(defwriter-ext (write-symbol/quote (sym : :symbol))
  (let (str (symbol->string sym))
    (if (or (contains-restricted-chars? str __symbol-escape)
            (string-ends-with? str #\:))
      (do-write (wr 0)
        (writer.write-pipe)
        (writer.write-string/escape str __symbol-escape)
        (writer.write-pipe)
        wr)
      (writer.write-string str))))

(defwriter-ext (write-keyword (key : :keyword))
  (writer.write-string (keyword->string key)))

(defwriter-ext (write-keyword/quote (key : :keyword))
  (let (str (keyword->string sym))
    (if (contains-restricted-chars? str __symbol-escape)
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
