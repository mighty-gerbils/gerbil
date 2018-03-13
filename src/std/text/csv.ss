;;; -*- Gerbil -*-
;;;; CSV support, ported from Common Lisp's fare-csv
;;; (C) fare at tunes.org
package: std/text
;;
;; CSV is intrinsically an underspecified lossy format,
;; and even popular PC applications lose heavily
;; (i.e. no quoting convention at all, not even a pascal-like one)
;; when text fields contain the quote character. Ouch.
;;
;; This spec seems to explain popular usage, is refered by docs below.
;; http://www.creativyst.com/Doc/Articles/CSV/CSV01.htm
;;
;; This one says about the same:
;; http://edoceo.com/utilitas/csv-file-format
;;
;; There's now an RFC that tries to standardize CSV:
;; http://www.rfc-editor.org/rfc/rfc4180.txt
;;
;; Here's what Perl hackers think CSV is:
;; http://search.cpan.org/~hmbrand/Text-CSV_XS-0.59/CSV_XS.pm
;;
;;        (read-csv-file "foo.csv")
;;        (read-csv-lines port)
;;        (read-csv-line port)
;;        (write-csv-lines lines port)
;;        (write-csv-line fields port)
;;

(export
  csv-separator csv-quote csv-unquoted-quotequote? csv-loose-quote?
  csv-eol csv-line-endings csv-skip-whitespace?
  csv-allow-binary?
  call-with-creativyst-csv-syntax call-with-rfc4180-csv-syntax call-with-strict-rfc4180-csv-syntax
  read-csv-line read-csv-lines read-csv-file write-csv-line write-csv-lines)

(import
  :std/error :std/misc/list :std/misc/string :std/srfi/1 :std/srfi/13 :std/sugar)

;;; constants
(def +line-endings+
  [+cr+ +lf+ +crlf+])

(def +strict-line-endings+
  [+crlf+ +lf+])

; -----------------------------------------------------------------------------
;;; Parameters

;; Separator between CSV fields
(def csv-separator (make-parameter #\,))

;; Delimiter of string data; pascal-like quoted as double itself in a string.
(def csv-quote (make-parameter #\"))

;; Does a pair of quotes represent a quote outside of quotes? M$, RFC says #f, csv.3tcl says #t
(def csv-unquoted-quotequote? (make-parameter #f))

;; Can quotes appear anywhere in a field?
(def csv-loose-quote? (make-parameter #f))

;; Shall we skip unquoted whitespace around separators?
(def csv-skip-whitespace? (make-parameter #t))

;; Do we accept non-ascii data?
(def csv-allow-binary? (make-parameter #t))

;; Line ending when exporting CSV
(def csv-eol (make-parameter +crlf+))

;; Acceptable line endings when importing CSV
(def csv-line-endings (make-parameter +line-endings+))

(def (call-with-creativyst-csv-syntax thunk)
  (parameterize
      ((csv-separator #\,)
       (csv-quote #\")
       (csv-unquoted-quotequote? #f)
       (csv-loose-quote? #f)
       (csv-allow-binary? #t)
       (csv-eol +crlf+)
       (csv-line-endings +line-endings+)
       (csv-skip-whitespace? #t))
    (thunk)))

(def (call-with-rfc4180-csv-syntax thunk)
  (parameterize
      ((csv-separator #\,)
       (csv-quote #\")
       (csv-unquoted-quotequote? #f)
       (csv-loose-quote? #f)
       (csv-allow-binary? #t)
       (csv-eol +lf+)
       (csv-line-endings +strict-line-endings+)
       (csv-skip-whitespace? #f))
    (thunk)))

(def (call-with-strict-rfc4180-csv-syntax thunk)
  (call-with-rfc4180-csv-syntax
   (lambda () (parameterize ((csv-line-endings +strict-line-endings+) (csv-allow-binary? #f))
                (thunk)))))

(def (valid-eol? x)
  (member x +line-endings+))

(def (validate-csv-parameters)
  (assert! (char? (csv-separator)))
  (assert! (char? (csv-quote)))
  (assert! (not (equal? (csv-separator) (csv-quote))))
  (assert! (boolean? (csv-unquoted-quotequote?)))
  (assert! (boolean? (csv-loose-quote?)))
  (assert! (boolean? (csv-skip-whitespace?)))
  (assert! (valid-eol? (csv-eol)))
  (assert! (not (member (string-ref (csv-eol) 0) [(csv-separator) (csv-quote)])))
  (assert! (and (list? (csv-line-endings)) (every valid-eol? (csv-line-endings)))))

;; For internal use only
(def csv-eol-matrix (make-parameter #(#t #t #t))) ;; internal: do we accept cr? lf? crlf?

(def (csv-eol-matrix<-line-endings line-endings)
  (def (? x) (and (member x line-endings) #t))
  (vector (? +cr+) (? +lf+) (? +crlf+)))

; -----------------------------------------------------------------------------
;;; The parser

;; Is character c some kind of white space?
;; NB: this only handles a tiny subset of whitespace characters, even if restricted to ASCII.
;; However, it's rather portable, and it is what the creativyst document specifies.
;; Be careful to not skip a separator, as it could be e.g. a tab!
(def (char-csv-space? c)
  (and (or (eqv? c #\space) (eqv? c #\tab)) (not (eqv? c (csv-separator)))))

(def (char-ascii-text? c)
  (let ((i (char->integer c)))
    (or (<= #x20 i #x7E) (= i 10) (= i 13))))

(def (accept pred port)
  (and (pred (peek-char port)) (read-char port)))

(def (accept-char c port)
  (accept (cut eqv? c <>) port))

(def (accept-eof port)
  (accept eof-object? port))

(def (accept-eol port)
  (match (csv-eol-matrix)
    ((vector lf? cr? crlf?)
     (or (and lf? (accept-char #\newline port) #t)
         (and (or cr? crlf?)
              (and (accept-char #\return port)
                   (or (and crlf? (accept-char #\newline port))
                       cr?
                       (raise-io-error 'accept-eol "Carriage-Return without Linefeed!"))))))))

(def (accept-space port)
  (accept char-csv-space? port))

(def (accept-spaces port)
  (with-list-builder (c) (let loop () (let ((x (accept-space port))) (when x (c x) (loop))))))

(def (accept-quote port)
  (accept (cut eqv? <> (csv-quote)) port))

(def (accept-separator port)
  (accept (cut eqv? <> (csv-separator)) port))

;; Read one line from PORT in CSV format, using the current syntax parameters.
;; Return a list of strings, one for each field in the line.
;; Entries are read as strings;
;; it is up to you to interpret the strings as whatever you want.
(def (read-csv-line port)
  (def ss (open-output-string))
  (def fields '())
  (def had-quotes? #f)
  (def (do-fields)
    (set! had-quotes? #f)
    (when (csv-skip-whitespace?)
      (accept-spaces port))
    (if (and (null? fields) (or (accept-eol port) (accept-eof port)))
      (done)
      (do-field-start)))
  (def (do-field-start)
    (cond
     ((accept-separator port)
      (add "") (do-fields))
     ((accept-quote port)
      (cond
       ((and (csv-unquoted-quotequote?) (accept-quote port))
        (add-char (csv-quote))
        (do-field-unquoted))
       (else
        (do-field-quoted))))
     (else
      (do-field-unquoted))))
  (def (do-field-quoted)
    (set! had-quotes? #t)
    (cond
     ((accept-eof port)
      (raise-io-error 'read-csv-line "unexpected eof in quotes"))
     ((accept-quote port)
      (cond
       ((accept-quote port)
        (quoted-field-char (csv-quote)))
       ((csv-loose-quote?)
        (do-field-unquoted))
       (else
        (add (current-string))
        (end-of-field))))
     (else
      (quoted-field-char (read-char port)))))
  (def (quoted-field-char c)
    (add-char c)
    (do-field-quoted))
  (def (do-field-unquoted)
    (if (csv-skip-whitespace?)
      (let ((spaces (accept-spaces port)))
        (cond
         ((accept-separator port)
          (add (current-string))
          (do-fields))
         ((or (accept-eol port) (accept-eof port))
          (add (current-string))
          (done))
         (else
          (for-each add-char spaces)
          (do-field-unquoted-no-skip))))
      (do-field-unquoted-no-skip)))
  (def (do-field-unquoted-no-skip)
    (cond
     ((accept-separator port)
      (add (current-string))
      (do-fields))
     ((or (accept-eol port) (accept-eof port))
      (add (current-string))
      (done))
     ((accept-quote port)
      (cond
       ((and (csv-unquoted-quotequote?) (accept-quote port))
        (add-char (csv-quote)) (do-field-unquoted))
       ((csv-loose-quote?)
        (do-field-quoted))
       (else
        (raise-io-error 'read-csv-line "unexpected quote in middle of field"))))
     (else
      (add-char (read-char port))
      (do-field-unquoted))))
  (def (end-of-field)
    (when (csv-skip-whitespace?)
      (accept-spaces port))
    (cond
     ((or (accept-eol port) (accept-eof port))
      (done))
     ((accept-separator port)
      (do-fields))
     (else
      (raise-io-error 'read-csv-line "end of field expected"))))
  (def (add x)
    (push! x fields))
  (def (add-char c)
    (unless (or (csv-allow-binary?) (char-ascii-text? c))
      (raise-io-error 'read-csv-line "binary data not allowed" c))
    (write-char c ss))
  (def (current-string)
    (get-output-string ss))
  (def (done)
    (reverse! fields))
  (parameterize ((csv-eol-matrix (csv-eol-matrix<-line-endings (csv-line-endings))))
    (do-fields)))

;; Read lines from PORT in CSV format, using the current syntax parameters.
;; Return a list of list of strings, one entry for each line,
;; that contains one entry for each field.
;; Entries are read as strings;
;; it is up to you to interpret the strings as whatever you want.
(def (read-csv-lines port)
  (validate-csv-parameters)
  (call-with-list-builder (lambda (c _) (until (accept-eof port) (c (read-csv-line port))))))

;; Open the file designated by the path, using the provided settings if any,
;; and call read-csv-lines on it.
(def (read-csv-file path . settings)
  (call-with-input-file (cons* path: path settings) read-csv-lines))

(def (char-needs-quoting? x)
  (or (eqv? x (csv-quote))
      (eqv? x (csv-separator))
      (eqv? x #\newline)
      (eqv? x #\return)
      (not (char-ascii-text? x))))

(def (string-needs-quoting? x)
  (and (not (string-null? x))
       (or (char-csv-space? (string-ref x 0))
           (char-csv-space? (string-ref x (1- (string-length x))))
           (string-any char-needs-quoting? x))
       #t))

;; Given a list of LINES, each of them a list of fields, and a PORT,
;; format those lines as CSV according to the current syntax parameters.
(def (write-csv-lines lines port)
  (for-each (cut write-csv-line <> port) lines))

;; Format one line of FIELDS to PORT in CSV format,
;; using the current syntax parameters.
(def (write-csv-line fields port)
  (let loop ((fields fields))
    (match fields
      ([first . rest]
       (write-csv-field first port)
       (unless (null? rest)
         (write-char (csv-separator) port))
       (loop rest))
      ([] (display (csv-eol) port)))))

(def (write-csv-field field port)
  (match field
    ((? not) (void))
    ((? number?) (display field port))
    ((? string?) (write-csv-string-safely field port))
    ((? symbol?) (write-csv-string-safely (symbol->string field) port))
    (else (error "invalid CSV field" field))))

(def (write-csv-string-safely string port)
  (if (string-needs-quoting? string)
      (write-quoted-string string port)
      (display string port)))

(def (write-quoted-string string port)
  (write-char (csv-quote) port)
  (string-for-each
   (lambda (c)
    (when (char=? c (csv-quote))
      (write-char c port))
    (write-char c port))
   string)
  (write-char (csv-quote) port))
