;;; -*- Gerbil -*-
;;;; CSV support, ported from Common Lisp's fare-csv
;;; © fare at tunes.org
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
  current-csv-options csv-options make-csv-options
  csv-options-separator csv-options-separator-set!
  csv-options-quote csv-options-quote-set!
  csv-options-unquoted-quotequote? csv-options-unquoted-quotequote?-set!
  csv-options-loose-quote? csv-options-loose-quote?-set!
  csv-options-allow-binary? csv-options-allow-binary?-set!
  csv-options-eol csv-options-eol-set!
  csv-options-accept-lf? csv-options-accept-lf?-set!
  csv-options-accept-cr? csv-options-accept-cr?-set!
  csv-options-accept-crlf? csv-options-accept-crlf?-set!
  csv-options-skip-whitespace? csv-options-skip-whitespace?-set!
  creativyst-csv-options rfc4180-csv-options strict-rfc4180-csv-options
  call-with-creativyst-csv-syntax call-with-rfc4180-csv-syntax call-with-strict-rfc4180-csv-syntax
  with-creativyst-csv-syntax with-rfc4180-csv-syntax with-strict-rfc4180-csv-syntax
  read-csv-line read-csv-lines read-csv-file write-csv-line write-csv-lines write-csv-file
  )

(import
  (for-syntax :std/stxutil)
  :std/error :std/misc/list :std/misc/string :std/srfi/1 :std/srfi/13 :std/stxparam :std/sugar
  :std/assert)

;;; constants
(def +line-endings+
  [+cr+ +lf+ +crlf+])

(def +strict-line-endings+
  [+crlf+ +lf+])

; -----------------------------------------------------------------------------
;;; Parameters
(defstruct csv-options
  (separator ;; char ;; Separator between CSV fields, usually #\, as in the name; sometimes #\tab.
   quote ;; char ;; delimiter of string data; pascal-like quoted as double itself in a string.
   unquoted-quotequote? ;; bool ;; does a pair of quotes represent a quote outside of quotes?
                                ;; M$, RFC says no, csv.3tcl says yes
   loose-quote? ;; bool ;; can quotes appear anywhere in a field?
   allow-binary? ;; bool ;; do we accept non-ascii data?
   eol ;; string ;; what eol value do we output?
   accept-lf? ;; bool ;; is lf valid line-ending on input?
   accept-cr? ;; bool ;; is cr valid line-ending on input?
   accept-crlf? ;; bool ;; is crlf valid line-ending on input?
   skip-whitespace?) ;; bool ;; shall we skip unquoted whitespace around separators?
  transparent: #t)

(def rfc4180-csv-options
  (make-csv-options #\, #\" #f #f #t +lf+ #t #f #t #f))
(def strict-rfc4180-csv-options
  (make-csv-options #\, #\" #f #f #f +crlf+ #f #f #t #f))
(def creativyst-csv-options
  (make-csv-options #\, #\" #f #f #t +crlf+ #t #t #t #t))

(def current-csv-options (make-parameter creativyst-csv-options))

(def (call-with-rfc4180-csv-syntax thunk)
  (parameterize ((current-csv-options rfc4180-csv-options)) (thunk)))
(defrule (with-rfc4180-csv-syntax () body ...)
  (call-with-rfc4180-csv-syntax (lambda () body ...)))

(def (call-with-strict-rfc4180-csv-syntax thunk)
  (parameterize ((current-csv-options strict-rfc4180-csv-options)) (thunk)))
(defrule (with-strict-rfc4180-csv-syntax () body ...)
  (call-with-strict-rfc4180-csv-syntax (lambda () body ...)))

(def (call-with-creativyst-csv-syntax thunk)
  (parameterize ((current-csv-options creativyst-csv-options)) (thunk)))
(defrule (with-creativyst-csv-syntax () body ...)
  (call-with-creativyst-csv-syntax (lambda () body ...)))

(def (valid-eol? x)
  (member x +line-endings+))

;; Only for inside this file: quick access to CSV options from variable csv-options.
(defsyntax-parameter* ambient-csv-options csv-options-param "Bad syntax; not in def/opt context")
(defsyntax (def/opt stx)
  (syntax-case stx ()
    ((d (f args ...) body ...)
     #'(def (f args ... (csv-options (current-csv-options)))
         (syntax-parameterize ((csv-options-param (quote-syntax csv-options)))
           body ...)))))
(defsyntax {stx}
  (syntax-case stx ()
    ((_ v)
     [(format-id #'v "csv-options-~a" #'v) #'ambient-csv-options])))
(defsyntax (w/opt stx)
  (syntax-case stx ()
    ((w f args ...)
     #'(f args ... ambient-csv-options))))
;;; Same in plain non-hygienic style (which wouldn't work if other macros expanded to def/opt, etc.):
;; (defsyntax (def/opt stx)
;;   (syntax-case stx ()
;;     ((d (f args ...) body ...)
;;      (with-syntax ((csv-options (datum->syntax #'d 'csv-options)))
;;        #'(def (f args ... (csv-options (current-csv-options)))
;;            body ...)))))
;; (defsyntax {stx}
;;   (syntax-case stx () ((x v) (datum->syntax #'v [(string->symbol (string-append "csv-options-" (symbol->string (stx-e #'v)))) 'csv-options]))))
;; (defsyntax (w/opt stx)
;;   (syntax-case stx ()
;;     ((w f args ...)
;;      (with-syntax ((csv-options (datum->syntax #'w 'csv-options))) #'(f args ... csv-options)))))

(def/opt (validate-csv-options)
  (assert! (char? {separator}))
  (assert! (char? {quote}))
  (assert! (not (equal? {separator} {quote})))
  (assert! (boolean? {unquoted-quotequote?}))
  (assert! (boolean? {loose-quote?}))
  (assert! (boolean? {skip-whitespace?}))
  (assert! (valid-eol? {eol}))
  (assert! (not (member (string-ref {eol} 0) [{separator} {quote}])))
  (assert! (boolean? {accept-lf?}))
  (assert! (boolean? {accept-cr?}))
  (assert! (boolean? {accept-crlf?}))
  (assert! (boolean? {skip-whitespace?})))

; -----------------------------------------------------------------------------
;;; The parser

(def (char-ascii-text? c)
  (let ((i (char->integer c)))
    (or (<= #x20 i #x7E) (= i 10) (= i 13))))

(def (accept pred port)
  (and (pred (peek-char port)) (read-char port)))

(def (accept= c port)
  (and (eqv? c (peek-char port)) (read-char port)))

(def (accept-eof port)
  (accept= #!eof port))

;; Read one line from PORT in CSV format, using the current syntax parameters.
;; Return a list of strings, one for each field in the line.
;; Entries are read as strings;
;; it is up to you to interpret the strings as whatever you want.
(def/opt (read-csv-line port)
  (def ss (open-output-string))
  (def fields '())
  (def had-quotes? #f)
  (def (accept-eol port)
    (or (and {accept-lf?} (accept= #\newline port) #t)
        (and (or {accept-cr?} {accept-crlf?})
             (and (accept= #\return port)
                  (or (and {accept-crlf?} (accept= #\newline port))
                      {accept-cr?}
                      (raise-io-error 'accept-eol "Carriage-Return without Linefeed!"))))))
  ;; Is character c some kind of white space?
  ;; NB: this only handles a tiny subset of whitespace characters, even if restricted to ASCII.
  ;; However, it's rather portable, and it is what the creativyst document specifies.
  ;; Be careful to not skip a separator, as it could be e.g. a tab!
  (def (char-csv-space? c)
    (and (or (eqv? c #\space) (eqv? c #\tab)) (not (eqv? c {separator}))))
  (def (accept-space port)
    (accept char-csv-space? port))
  (def (accept-spaces port)
    (with-list-builder (c) (let loop () (let ((x (accept-space port))) (when x (c x) (loop))))))
  (def (accept-fields)
    (set! had-quotes? #f)
    (when {skip-whitespace?} (accept-spaces port))
    (if (and (null? fields) (or (accept-eol port) (accept-eof port)))
      (done)
      (accept-field-start)))
  (def (accept-field-start)
    (cond
     ((accept= {separator} port)
      (add "") (accept-fields))
     ((accept= {quote} port)
      (cond
       ((and {unquoted-quotequote?} (accept= {quote} port))
        (add-char {quote})
        (accept-field-unquoted))
       (else
        (accept-field-quoted))))
     (else
      (accept-field-unquoted))))
  (def (accept-field-quoted)
    (set! had-quotes? #t)
    (cond
     ((accept-eof port)
      (raise-io-error 'read-csv-line "unexpected eof in quotes"))
     ((accept= {quote} port)
      (cond
       ((accept= {quote} port)
        (quoted-field-char {quote}))
       ({loose-quote?}
        (accept-field-unquoted))
       (else
        (add (current-string))
        (end-of-field))))
     (else
      (quoted-field-char (read-char port)))))
  (def (quoted-field-char c)
    (add-char c)
    (accept-field-quoted))
  (def (accept-field-unquoted)
    (if {skip-whitespace?}
      (let ((spaces (accept-spaces port)))
        (cond
         ((accept= {separator} port)
          (add (current-string))
          (accept-fields))
         ((or (accept-eol port) (accept-eof port))
          (add (current-string))
          (done))
         (else
          (for-each add-char spaces)
          (accept-field-unquoted-no-skip))))
      (accept-field-unquoted-no-skip)))
  (def (accept-field-unquoted-no-skip)
    (cond
     ((accept= {separator} port)
      (add (current-string))
      (accept-fields))
     ((or (accept-eol port) (accept-eof port))
      (add (current-string))
      (done))
     ((accept= {quote} port)
      (cond
       ((and {unquoted-quotequote?} (accept= {quote} port))
        (add-char {quote}) (accept-field-unquoted))
       ({loose-quote?}
        (accept-field-quoted))
       (else
        (raise-io-error 'read-csv-line "unexpected quote in middle of field"))))
     (else
      (add-char (read-char port))
      (accept-field-unquoted))))
  (def (end-of-field)
    (when {skip-whitespace?} (accept-spaces port))
    (cond
     ((or (accept-eol port) (accept-eof port))
      (done))
     ((accept= {separator} port)
      (accept-fields))
     (else
      (raise-io-error 'read-csv-line "end of field expected"))))
  (def (add x)
    (push! x fields))
  (def (add-char c)
    (unless (or {allow-binary?} (char-ascii-text? c))
      (raise-io-error 'read-csv-line "binary data not allowed" c))
    (write-char c ss))
  (def (current-string)
    (get-output-string ss))
  (def (done)
    (reverse! fields))
  (accept-fields))

;; Read lines from PORT in CSV format, using the current syntax parameters.
;; Return a list of list of strings, one entry for each line,
;; that contains one entry for each field.
;; Entries are read as strings;
;; it is up to you to interpret the strings as whatever you want.
(def/opt (read-csv-lines port)
  (w/opt validate-csv-options)
  (call-with-list-builder (lambda (c _) (until (accept-eof port) (c (w/opt read-csv-line port))))))

;; Open the file designated by the path, using the provided settings if any,
;; and call read-csv-lines on it.
(def/opt (read-csv-file path-or-settings)
  (call-with-input-file path-or-settings (cut w/opt read-csv-lines <>)))

(def/opt (char-needs-quoting? x)
  (or (eqv? x {quote})
      (eqv? x {separator})
      (eqv? x #\newline)
      (eqv? x #\return)
      (not (char-ascii-text? x))))

;; Is character c some kind of white space?
;; NB: this only handles a tiny subset of whitespace characters, even if restricted to ASCII.
;; However, it's rather portable, and it is what the creativyst document specifies.
;; Be careful to not skip a separator, as it could be e.g. a tab!
(def/opt (char-csv-space? c)
  (and (or (eqv? c #\space) (eqv? c #\tab)) (not (eqv? c {separator}))))

(def/opt (string-needs-quoting? x)
  (and (not (string-null? x))
       (or (w/opt char-csv-space? (string-ref x 0))
           (w/opt char-csv-space? (string-ref x (1- (string-length x))))
           (string-any (cut w/opt char-needs-quoting? <>) x))
       #t))

;; Given a list of LINES, each of them a list of fields, and a PORT,
;; format those lines as CSV according to the current syntax parameters.
(def/opt (write-csv-lines lines port)
  (for-each (cut w/opt write-csv-line <> port) lines))

;; Writes list of LINES to the designated PATH using write-csv-lines
;; and the provided settings.
(def/opt (write-csv-file path-or-settings lines)
  (call-with-output-file path-or-settings
    (cut w/opt write-csv-lines lines <>)))

;; Format one line of FIELDS to PORT in CSV format,
;; using the current syntax parameters.
(def/opt (write-csv-line fields port)
  (let loop ((fields fields))
    (match fields
      ([first . rest]
       (write-csv-field first port)
       (unless (null? rest)
         (write-char {separator} port))
       (loop rest))
      ([] (display {eol} port)))))

(def/opt (write-csv-field field port)
  (match field
    ((? not) (void))
    ((? number?) (display field port))
    ((? string?) (w/opt write-csv-string-safely field port))
    ((? symbol?) (w/opt write-csv-string-safely (symbol->string field) port))
    (else (error "invalid CSV field" field))))

(def/opt (write-csv-string-safely string port)
  (if (string-needs-quoting? string)
    (w/opt write-quoted-string string port)
    (display string port)))

(def/opt (write-quoted-string string port)
  (write-char {quote} port)
  (string-for-each
   (lambda (c)
    (when (char=? c {quote})
      (write-char c port))
    (write-char c port))
   string)
  (write-char {quote} port))
