;; -*- Gerbil -*-
;;;; Basic LL(1) parser combinators
;; With this module, you can use parser combinators to create LL(1) parsers
;; working over a BufferedReader input. Build your parser then use one of
;; ll1/reader ll1/string ll1/port ll1/file or ll1/file-lines to consume input.
;;
;; Beware that these parsers use only one character of look-ahead, and that
;; if an alternative in a ll1-or fails further than at the start,
;; the next alternative will start from where the previous one failed,
;; and not from the point at which the ll1-or started.
;; This may be a reason to prefer ll1-case over ll1-or.
;; Use a more advanced kind of parser this is not enough. See std/parser.

(export #t)

(import
  (for-syntax :std/number/misc)
  :std/error
  :std/io/api
  (only-in :std/text/parser/base ParseError? raise-parse-error)
  :std/iter
  :std/vector/u8vector
  :std/list/list
  :std/list/list-builder
  :std/text/parser/char-set)

;;; empty string parser
(def (ll1-empty reader)
  (void))

;;; ll1 parser combinators

(defrule (ll1-result result) (lambda (reader) result))
(def (ll1-pure value) (ll1-result value))
(def (ll1-bind processed processor)
  (lambda (reader) ((processor (processed reader)) reader)))
(defrule (ll1-begin ignored ... last)
  (lambda (reader) (ignored reader) ... (last reader)))
(defrule (ll1-begin0 first ignored ...)
  (lambda (reader) (begin0 (first reader) (ignored reader) ...)))
(def (ll1-or . alternatives)
  (ll1-or/list alternatives))
(def ((ll1-or/list alternatives) reader)
  (let loop ((as alternatives))
    (match as
      ([] (raise-parse-error ll1-or "out of alternatives" alternatives reader))
      ([a . r] (with-catch (lambda (e) (if (ParseError? e) (loop r) (raise e)))
                           (cut a reader))))))
(def (ll1-repeated element terminator (rhead '()))
  (let loop ((r rhead))
    (ll1-or
     (ll1-begin terminator (ll1-result (reverse r)))
     (ll1-bind element (lambda (e) (loop [e . r]))))))
(def (ll1-separated element separator terminator (rhead '()))
  (ll1-or
   (ll1-begin terminator (ll1-pure (reverse rhead)))
   (ll1-bind element (lambda (e) (ll1-repeated (ll1-begin separator element) terminator [e . rhead])))))
(def ((ll1* f . elements) reader)
  (apply f (map-in-order (cut <> reader) elements)))
(def (ll1-list . elements)
  (apply ll1* list elements))
(def ((ll1-n-times n element) reader)
  (for/collect ((_ (in-range n))) (element reader)))

;;; Peeker procedure from user-friendly spec
(def (peeker spec)
  (cond
   ((procedure? spec) spec)
   ((char? spec) (lambda (y) (and (eqv? spec y) y)))
   ((string? spec) (lambda (y) (and (char? y) (string-index spec y) y)))
   ((hash-table? spec) (cut hash-get spec <>))
   ((eof-object? spec) eof-object?)
   ((list? spec) (lambda (y) (ormap (lambda (s) ((peeker s) y)) spec)))))

(defsyntax (ll1-case stx)
  (syntax-case stx (else)
    ((_ (spec body ...) ... (else e ...)) ;; NB: body is allowed to start with => !
     (with-syntax (((p ...)
                    (map (let (c (make-counter)) (lambda (_) (make-symbol "var" (c))))
                         (syntax->list #'(spec ...)))))
       #'(let ((p (peeker spec)) ...)
           (lambda (reader)
             (let (c (BufferedReader-peek-char-utf8 reader))
               ((cond
                 ((p c) body ...) ...
                 (else e ...)) reader))))))
    ((ll1-case (spec body ...) ...)
     #'(ll1-case (spec body ...) ...
                 (else (lambda (reader)
                         (raise-parse-error 'll1-case "unexpected input"
                                            (BufferedReader-peek-char-utf8 reader) reader)))))))

(def (ll1-peek spec)
  (ll1-case (spec BufferedReader-peek-char-utf8)))

(def (ll1-char spec)
  (ll1-case (spec BufferedReader-read-char-utf8)))

(def (ll1-string string)
  (lambda (reader)
    (string-for-each (lambda (c) ((ll1-char c) reader)) string)
    string))

(def (ll1-char? spec)
  (let (p (peeker spec))
    (lambda (reader)
      (using (reader : BufferedReader)
        (and (p (reader.peek-char-utf8)) (reader.read-char-utf8))))))

(def (ll1-char* spec)
  (let (p (peeker spec))
    (lambda (reader)
      (using (reader : BufferedReader)
        (and (p (reader.peek-char-utf8))
             (call-with-output-string
              (lambda (o) (while (begin (write-char (reader.read-char-utf8) o)
                                   (p (reader.peek-char-utf8)))))))))))

(def (ll1-char+ spec)
  (let (p (peeker spec))
    (lambda (reader)
      (using (reader : BufferedReader)
        (if (p (reader.peek-char-utf8))
          (call-with-output-string
           (lambda (o) (while (begin (write-char (reader.read-char-utf8) o)
                                (p (reader.peek-char-utf8))))))
          (raise-parse-error ll1-char+ "Unexpected character"
                             (reader.peek-char-utf8) reader))))))

(def (ll1-skip-char* spec)
  (let (p (peeker spec))
    (lambda (reader)
      (using (reader : BufferedReader)
        (while (p (reader.peek-char-utf8))
          (reader.read-char-utf8))))))

(def ll1-skip-space* (ll1-skip-char* char-strict-whitespace?))

(def (eolf? c)
  (or (eqv? c #\newline) (eof-object? c) (eqv? c #\return)))

(def (peekable-eof? reader)
  (eof-object? (BufferedReader-peek-char-utf8 reader)))

(def ll1-eof (ll1-peek eof-object?))

(def ll1-eolf? (ll1-peek eolf?))

(def ll1-eol
  (let ((rp BufferedReader-peek-char-utf8) (rc BufferedReader-read-char-utf8))
    (ll1-case (#\newline (lambda (r) (rc r) "\n"))
              (#\return (lambda (r) (rc r) (if (eqv? (rp r) #\newline) (begin (rc r) "\r\n") "\r"))))))

(def (ll1-eolf reader)
  (if (peekable-eof? reader) #!eof
      (ll1-eol reader)))

;;; Parse a natural number in decimal on the current reader, return it.
(def (ll1-uint reader (base 10))
  (using (reader : BufferedReader)
    (cond
     ((char-ascii-digit (reader.peek-char-utf8) base) =>
      (lambda (digit)
        (let loop ((n digit))
          (reader.read-char-utf8)
          (cond
           ((char-ascii-digit (reader.peek-char-utf8) base) =>
            (lambda (next-digit)
              (loop (+ next-digit (* base n)))))
           (else n)))))
     (else
      (raise-parse-error ll1-uint "Not a digit in requested base"
                         (reader.peek-char-utf8) base reader)))))

(def (ll1-sint reader (base 10))
  (using (reader : BufferedReader)
    (let ((char (reader.peek-char-utf8)))
      (cond
       ((eqv? char #\+)
        (reader.read-char-utf8)
        (ll1-uint reader base))
       ((eqv? char #\-)
        (reader.read-char-utf8)
        (- (ll1-uint reader base)))
       ((char-ascii-digit char base)
        (ll1-uint reader base))
       (else
        (raise-parse-error ll1-sint "Neither a sign nor a digit in requested base"
                           char base reader))))))

(def (ll1-n-chars n spec)
  (let (p (peeker spec))
    (lambda (reader)
      (using (reader : BufferedReader)
        (def s (make-string n))
        (for (i (in-range n))
          (def c (reader.peek-char-utf8))
          (unless (p c)
            (raise-parse-error parse-n-chars "invalid character" c n spec i))
          (string-set! s i (reader.read-char-utf8)))
        s))))

(def (ll1-n-digits n (base 10))
  (lambda (reader)
    (using (reader : BufferedReader)
      (let loop ((i n) (r 0))
        (if (zero? i) r
            (let* ((char (reader.peek-char-utf8))
                   (digit (char-ascii-digit char base)))
              (if digit
                (begin (reader.read-char-utf8) (loop (1- i) (+ digit (* base r))))
                (raise-parse-error ll1-n-digits "not a digit" char reader n base i r))))))))

;; Parse a line, stop before any EOF or newline or return (but don't consume it)
(def (ll1-line reader)
  (using (reader : BufferedReader)
    (call-with-output-string
     [] (lambda (o)
          (let loop ()
            (let ((char (reader.peek-char-utf8)))
              (cond
               ((eolf? char) (void))
               (else (display char o) (reader.read-char-utf8) (loop)))))))))

(def (ll1-lines reader (parse-line ll1-line))
  (with-list-builder (c)
    (until (peekable-eof? reader)
      (c (parse-line reader))
      (ll1-eolf reader))))

(def (ll1-to-eof parse) (ll1-begin0 parse ll1-eof))

(def ll1-skip-space-to-eof (ll1-to-eof ll1-skip-space*))

;; Parse an entire reader
(def (ll1 parser reader (description reader) (where 'll1))
  (with-buffered-reader (reader)
    (with-catch (lambda (e) (raise-parse-error where "failure parsing" description (error-message e)))
                (cut (ll1-to-eof parser) reader))))

;; Parse an entire reader line-by-line
(def (ll1/lines parse-line file (description file) (where 'll1/lines))
  (ll1 (cut ll1-lines <> parse-line) file description where))
