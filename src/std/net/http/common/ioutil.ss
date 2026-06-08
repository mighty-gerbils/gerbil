;;; -*- Gerbil -*-
;;; © vyzo
;;; HTTP io utilities
(export #t)
(import :std/error
        :std/io
        :std/iter
        :std/net/url)

(def max-line-length 8192)
(def max-headers 64)

(defrule (@int char)
  (@eval (char->integer char)))

(def (consume-newline! (reader : BufferedReader))
  (consume-next-token! reader (@int #\return))
  (consume-next-token! reader (@int #\newline)))

(def (consume-next-token! (reader : BufferedReader) (token : :fixnum))
  (let (next (reader.read-u8))
    (when (eof-object? next)
      (raise-premature-end-of-input consume-next-token!))
    (unless (eq? next token)
      (raise-io-error consume-next-token! "unexpected token"
                      token: next expected: token))))

(defsyntax-case write-char->u8 ()
  ((_ writer char)
   (with-identifier (writer.write-u8 #'writer #'writer ".write-u8")
     #'(writer.write-u8 (@int char)))))

(defrule (write-newline! writer)
  (begin
    (write-char->u8 writer #\return)
    (write-char->u8 writer #\newline)))

(defrule (write-space! writer)
  (write-char->u8 writer #\space))

(defrule (write-colon! writer)
  (write-char->u8 writer #\:))

(def (write-string! (writer : BufferedWriter)
                    (str    : :string))
  (for (i (in-range 0 (string-length str)))
    (let* ((char (##string-ref str i))
           (int  (##char->integer char)))
      (writer.write-u8 int))))

(def (write-request-line! (writer : BufferedWriter)
                          (url    : URL)
                          (method : :string)
                          (proto  : :string := "HTTP/1.1"))
  => :void
  (write-string! writer method)
  (write-space! writer)
  (write-string! writer url.path)
  (when url.query
    (writer.write-u8 (@int #\?))
    (write-string! writer url.query))
  (write-space! writer)
  (write-string! writer proto)
  (write-newline! writer))

(def (read-request-line! (reader : BufferedReader))
  (TODO read-request-line!))

(def (write-status-line! (writer : BufferedWriter) . args)
  (TODO write-status-line!))

(def (read-status-line! (reader : BufferedReader))
  => :values
  (let* ((line   (read-line! reader))
         (space1 (string-index line #\space))
         (space2 (and space1
                      (string-index line #\space (fx1+ space1))))
         (status (and space2
                      (string->number
                       (substring line (fx1+ space1) space2)))))
    (unless status
      (raise-io-error read-status-line! "no status code"
                      line: line))
    (values status line)))

(def (read-line! (reader : BufferedReader) (count 0 : :fixnum))
  => :string
  (let loop ((chars [] :- :list) (count count :- :fixnum))
    => :string
    (let (next (reader.read-u8))
      (cond
       ((eof-object? next)
        (raise-premature-end-of-input read-status-line!))
       ((eq? next (@int #\return))
        (consume-next-token! reader (@int #\newline))
        (list->string (reverse! chars)))
       ((fx< count max-line-length)
        (loop (cons (integer->char next)
                    chars)
              (fx+ count 1)))
       (else
        (raise-io-error read-status-line! "maximum line length exceeded" chars: count))))))

(def (read-headers! (reader : BufferedReader))
  => :list
  (let loop ((result [] :- :list) (count 0 :- :fixnum))
    => :list
    (let (next (read-header! reader))
      (if next
        (if (fx< count max-headers)
          (loop (cons next result) (fx+ count 1))
          (raise-io-error read-headers! "too many headers"))
        (reverse! result)))))

(def (read-header! (reader : BufferedReader))
  (let loop ((chars [] :- :list)
             (count 0  :- :fixnum)
             (upcase? #t))
    (let (next (reader.read-u8))
      (cond
       ((eof-object? next)
        (raise-premature-end-of-input read-header!))
       ((eq? next (@int #\return))
        (if (null? chars)
          (begin
            (consume-next-token! reader (@int #\newline))
            #f)
          (raise-io-error read-header! "incomplete header"
                          (list->string (reverse! chars)))))
       ((fx> count max-line-length)
        (raise-io-error read-header! "maximum line length exceeded"))
       ((eq? next (@int #\:))
        (if (null? chars)
          (raise-io-error read-header! "empty header")
          (let* ((key (list->string (reverse! chars)))
                 (val (read-line! reader count)))
            (cons key val))))
       ((eq? next (@int #\-))
        (let (char (##integer->char next))
          (loop (cons char chars)
                (fx+ count 1)
                #t)))
       (else
        (let* ((char (##integer->char next))
               (char (if upcase? (char-upcase char) char)))
          (loop (cons char chars)
                (fx+ count 1)
                #f)))))))

(def (write-headers! (writer : BufferedWriter) (headers : :list))
  => :void
  (for ([k . v] (in-list headers))
    (write-header! writer
                   (: k :string)
                   (: v :string))))

(def (write-header! (writer : BufferedWriter)
                    (head   : :string)
                    (value  : :string))
  => :void
  (write-string! writer head)
  (write-colon! writer)
  (write-space! writer)
  (write-string! writer value)
  (write-newline! writer))
