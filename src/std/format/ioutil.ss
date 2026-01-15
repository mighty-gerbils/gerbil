;;; -*- Gerbil -*-
;;; © vyzo
;;; format object utilities
(import
  :std/io
  :std/io/bio/api
  ./io)
(export #t)

(defrule (defchar-writers (writef char) ....)
  (begin
    (defwriter-ext (writef writer)
      (writer.write-char-inline char))
    ...))

(defchar-writers
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
  (write-squote    #\"))

(defwriter-ext (write-symbol (sym : :symbol))
  (writer.write-string (symbol->string sym)))

(defwriter-ext (write-keyword (key : :keyword))
  (writer.write-string (keyword->string key)))

(defwriter-ext (format-string writer (str : :string) (env : WriteEnv))
  (if env.display?
    (writer.write-string str)
    (let* ((wr (writer.write-squote))
           (wr (fx+ wr (writer.write-string str)))
           (wr (fx+ wr (writer.write-squote))))
      wr)))

(defwriter-ext (format-symbol writer (sym : :symbol) (env : WriteEnv))
  (writer.write-symbol sym))

(defwriter-ext (format-keyword writer (key : :keyword) (env : WriteEnv))
  (if env.display?
    (writer.write-keyword key)
    (let* ((wr (writer.write-keyword key))
           (wr (fx+ wr (writer.write-colon))))
      wr)))
