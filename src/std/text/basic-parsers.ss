;; -*- Gerbil -*-
;;;; Basic LL(1) parsers

;; These basic LL(1) parsers work with an object satisfying the PeekableStringReader interface.
;; Be sure to wrap your port in a (raw-port port) and cast your wrapped port or BufferedStringReader
;; to a PeekableStringReader to avoid performance penalty in calling these methods.

;; TODO: parsing combinators that produce generating functions for all the values of a parse
;; from a generator (or stream?) of values?
;; OR, combinators that use interface-passing to handle the specific

(export #t)

(import
  :std/error
  :std/contract
  :std/io
  (only-in :std/parser/base parse-error? raise-parse-error)
  :std/iter
  :std/misc/bytes
  :std/misc/list-builder
  :std/srfi/1
  :std/srfi/13
  :std/sugar
  :std/text/char-set)


(def (string-reader-eof? reader)
  (using (reader : PeekableStringReader)
    (eof-object? (reader.peek-char))))

;;; Parse an empty string
(def (parse-empty reader)
  (void))

;;; Parse a natural number in decimal on the current reader, return it.
(def (parse-natural reader (base 10))
  (using (reader : PeekableStringReader)
    (if-let (digit (char-ascii-digit (reader.peek-char) base))
      (let loop ((n digit))
        (reader.read-char)
        (if-let (next-digit (char-ascii-digit (reader.peek-char) base))
          (loop (+ next-digit (* base n)))
          n))
      (raise-parse-error parse-natural "Not a digit in requested base"
                         (reader.peek-char) base reader))))

(def (parse-signed-integer reader (base 10))
  (using (reader : PeekableStringReader)
    (let ((char (reader.peek-char)))
      (cond
       ((eqv? char #\+)
        (reader.read-char)
        (parse-natural reader base))
       ((eqv? char #\-)
        (reader.read-char)
        (- (parse-natural reader base)))
       ((char-ascii-digit char)
        (parse-natural reader base))
       (else
        (raise-parse-error parse-signed-integer "Neither a sign nor a digit in requested base"
                           char base reader))))))

(def (parse-maybe-one-of char-pred?)
  (lambda (reader)
    (using (reader : PeekableStringReader)
      (def c (reader.peek-char))
      (and (char-pred? c) c))))

(def (parse-one-of char-pred?)
  (lambda (reader)
    (using (reader : PeekableStringReader)
      (def c (reader.peek-char))
      (if (char-pred? c)
        c
        (raise-parse-error parse-one-of "Unexpected character"
                           c char-pred? reader)))))

(def (parse-any-number-of char-pred?)
  (lambda (reader)
    (using (reader : PeekableStringReader)
      (and (char-pred? (reader.peek-char))
           (call-with-output-string
            (lambda (out) (while (begin (write-char (reader.read-char) out)
                                   (char-pred? (reader.peek-char))))))))))

(def (parse-one-or-more-of char-pred?)
  (lambda (reader)
    (using (reader : PeekableStringReader)
      (or ((parse-any-number-of char-pred?) reader)
          (raise-parse-error parse-one-or-more-of "Unexpected character"
                             (reader.peek-char) reader)))))

(def (parse-maybe-char char)
  (parse-maybe-one-of (cut eqv? char <>)))

(def (parse-one-char char)
  (parse-one-of (cut eqv? char <>)))

(def (parse-and-skip-any-whitespace reader (whitespace? char-strict-whitespace?))
  (using (reader : PeekableStringReader)
    (while (whitespace? (reader.peek-char))
      (reader.read-char))))

(def parse-eof (parse-one-of eof-object?))

(def (parse-eol reader)
  (def char ((parse-one-of char-eol?) reader))
  (when (eqv? char #\return)
    ((parse-maybe-char #\newline) reader)))

(def (parse-literal-string string)
  (lambda (reader)
    (string-for-each (lambda (c) ((parse-one-char c) reader)) string)))

(def (parse-n-chars n (char-pred? char?))
  (lambda (reader)
    (using (reader : PeekableStringReader)
      (def s (make-string n))
      (for (i (in-range n))
        (def c (reader.peek-char))
        (unless (char-pred? c)
          (raise-parse-error parse-n-chars "invalid character" c n char-pred? i))
        (string-set! s i c))
      s)))

(def (parse-n-digits n (base 10))
  (lambda (reader)
    (using (reader : PeekableStringReader)
      (let loop ((n n) (r 0))
        (if (zero? n) r
            (let* ((char (reader.peek-char))
                   (digit (char-ascii-digit char base)))
              (if digit
                (begin (reader.read-char) (loop (- n 1) (+ digit (* base r))))
                (raise-parse-error parse-n-digits "not a digit" char reader n base))))))))

;; Like parse-line, but handles (and still strips) any of the CRLF, CR and LF line endings
(def (parse-line reader)
  (using (reader : PeekableStringReader)
    (call-with-output-string
     [] (lambda (out)
          (let loop ()
            (let ((char (reader.peek-char)))
              (cond
               ((char-eol? char) (parse-eol reader))
               ((eof-object? char) (void))
               (else (display char out) (reader.read-char) (loop)))))))))

(def (parse-lines reader (parse-line parse-line))
  (with-list-builder (c)
    (until (string-reader-eof? reader)
      (c (parse-line reader))
      (parse-eol reader))))

(def (parse-to-eof parse)
  (lambda (reader) (begin0 (parse reader) (parse-eof reader))))

(def (parse-whitespace-to-eof (whitespace? char-strict-whitespace?))
  (parse-to-eof (cut parse-and-skip-any-whitespace <> whitespace?)))

;; Parse an entire PeekableReader
(def (parse-reader parser reader (description reader) (where 'parse-reader))
  (with-catch (lambda (e) (raise-parse-error where "failure parsing" description (error-message e)))
              (lambda () ((parse-to-eof parser) reader))))

;; Parse an entire port
(def (parse-port parser port (description port) (where 'parse-port))
  (parse-reader parser (PeekableStringReader (make-raw-textual-input-port port)) description where))

;; Parse an entire file
(def (parse-file parser file (description file) (where 'parse-file))
  (call-with-input-file file (lambda (port) (parse-port parser port description where))))

;; Parse an entire string
(def (parse-string parser string (description string) (where 'parse-string))
  (parse-reader parser (PeekableStringReader (open-buffered-string-reader string)) description where))

;; Parse an entire file line-by-line
(def (parse-file-lines parse-line file (description file) (where 'parse-file-lines))
  (parse-file file (cut parse-lines <> parse-line) description where))


;; Monadic parsing combinators
(def ((parse-alternatives alternatives (where 'parse-alternatives)) reader)
  (let loop ((as alternatives))
    (if (null? as)
      (raise-parse-error where "none applied" alternatives reader)
      (with-catch (lambda (e) (if (parse-error? e) (loop (cdr as)) (raise e)))
                  (lambda () ((car as) reader))))))
(defrule (parse-result result) (lambda (_port) result))
(def (parse-pure value) (parse-result value))
(def (parse-bind processed processor)
  (lambda (reader) ((processor (processed reader)) reader)))
(def (parse-or . alternatives)
  (parse-alternatives alternatives 'parse-or))
(defrule (parse-begin parse-ignored ... parse-value)
  (lambda (reader) (parse-ignored reader) ... (parse-value reader)))
(defrule (parse-begin0 parse-value parse-ignored ...)
  (lambda (reader) (begin0 (parse-value reader) (parse-ignored reader) ...)))
(def (parse-repeated parse-element parse-terminator (rhead '()))
  (let loop ((r rhead))
    (parse-or
     (parse-begin parse-terminator (parse-result (reverse r)))
     (parse-bind parse-element (lambda (e) (loop [e . r]))))))
(def (parse-separated parse-element parse-separator parse-terminator)
  (parse-or
   (parse-begin parse-terminator (parse-pure '()))
   (parse-bind parse-element
               (lambda (e) (parse-repeated (parse-begin parse-separator parse-element)
                                      parse-terminator [e])))))
(def ((parse-n-repeats n parse-element) reader)
  (for/collect ((_ (in-range n))) (parse-element reader)))
(def ((parse* f . parse-elements) reader)
  (apply f (map-in-order (lambda (ee) (ee reader)) parse-elements)))
(def (parse-list . parse-elements)
  (apply parse* list parse-elements))
