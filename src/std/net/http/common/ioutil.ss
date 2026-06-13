;;; -*- Gerbil -*-
;;; © vyzo
;;; HTTP io utilities
(export #t)
(import :std/error
        :std/io
        :std/iter
        :std/net/url)

(def max-status-line-length 256)
(def max-request-line-length 1024)
(def max-headers-length 32768)

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

(def (read-request-line! (reader : BufferedReader)
                         (count : :box))
  => :values ; method target proto
  (match (string-split (read-line! reader count) #\space)
    ([method target proto]
     (values method target proto))))

(def (write-status-line! (writer : BufferedWriter)
                         (proto  : :string)
                         (status : :fixnum)
                         (text   : :string))
  (write-string! writer proto)
  (write-space! writer)
  (write-string! writer (number->string status))
  (write-space! writer)
  (write-string! writer text)
  (write-newline! writer))

(def (read-status-line! (reader : BufferedReader)
                        (count  : :box))
  => :values
  (let* ((line   (read-line! reader count))
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

(def (read-line! (reader : BufferedReader) (count : :box))
  => :string
  (let loop ((chars [] :- :list))
    => :string
    (let (next (reader.read-u8))
      (cond
       ((eof-object? next)
        (raise-premature-end-of-input read-status-line!))
       ((fx<= (unbox count) 0)
        (raise-io-error read-line! "maximum length exceeded"))
       ((eq? next (@int #\return))
        (consume-next-token! reader (@int #\newline))
        (list->string (reverse! chars)))
       (else
        (set! (box count)
          (fx1- (unbox count)))
        (loop (cons (integer->char next)
                    chars)))))))

(def (read-headers! (reader : BufferedReader) (count : :box))
  => :list
  (let loop ((result [] :- :list))
    => :list
    (let (next (read-header! reader count))
      (if next
        (loop (cons next result))
        (reverse! result)))))

(def (read-header! (reader : BufferedReader) (count : :box))
  (let loop ((chars [] :- :list)
             (upcase? #t))
    (let (next (reader.read-u8))
      (cond
       ((eof-object? next)
        (raise-premature-end-of-input read-header!))
       ((fx<= (unbox count) 0)
        (raise-io-error read-line! "maximum length exceeded"))
       ((eq? next (@int #\return))
        (set! (box count)
          (fx- (unbox count) 2))
        (if (null? chars)
          (begin
            (consume-next-token! reader (@int #\newline))
            #f)
          (raise-io-error read-header! "incomplete header"
                          (list->string (reverse! chars)))))
       ((eq? next (@int #\:))
        (set! (box count)
          (fx- (unbox count) 1))
        (if (null? chars)
          (raise-io-error read-header! "empty header")
          (let* ((key (list->string (reverse! chars)))
                 (_ (consume-next-token! reader (@int #\space)))
                 (val (read-line! reader count)))
            (cons key val))))
       ((eq? next (@int #\-))
        (set! (box count)
          (fx- (unbox count) 1))
        (let (char (##integer->char next))
          (loop (cons char chars)
                #t)))
       (else
        (set! (box count)
          (fx- (unbox count) 1))
        (let* ((char (##integer->char next))
               (char (if upcase? (char-upcase char) char)))
          (loop (cons char chars)
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
