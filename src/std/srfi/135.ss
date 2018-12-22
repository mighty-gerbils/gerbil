;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-134: Immutable Texts
package: std/srfi

(import :std/srfi/9
        (only-in :std/srfi/13 string-downcase string-upcase string-titlecase)
        :std/text/utf8)
(export
  ;; Predicates

  text?                 textual?
  textual-null?
  textual-every         textual-any

  ;; Constructors

  make-text             text
  text-tabulate
  text-unfold           text-unfold-right

  ;; Conversion

  textual->text
  textual->string       textual->vector      textual->list
  string->text          vector->text         list->text    reverse-list->text
  textual->utf8         textual->utf16be
  textual->utf16        textual->utf16le
  utf8->text            utf16be->text
  utf16->text           utf16le->text

  ;; Selection

  text-length           textual-length
  text-ref              textual-ref
  subtext               subtextual
  textual-copy
  textual-take          textual-take-right
  textual-drop          textual-drop-right
  textual-pad           textual-pad-right
  textual-trim          textual-trim-right   textual-trim-both

  ;; Replacement

  textual-replace

  ;; Comparison

  textual=?             textual-ci=?
  textual<?             textual-ci<?
  textual>?             textual-ci>?
  textual<=?            textual-ci<=?
  textual>=?            textual-ci>=?

  ;; Prefixes & suffixes

  textual-prefix-length textual-suffix-length
  textual-prefix?       textual-suffix?

  ;; Searching

  textual-index         textual-index-right
  textual-skip          textual-skip-right
  textual-contains      textual-contains-right

  ;; Case conversion

  textual-upcase        textual-downcase
  textual-foldcase      textual-titlecase

  ;; Concatenation

  textual-append        textual-concatenate  textual-concatenate-reverse
  textual-join

  ;; Fold & map & friends

  textual-fold          textual-fold-right
  textual-map           textual-for-each
  textual-map-index     textual-for-each-index
  textual-count
  textual-filter        textual-remove
                                        ;  textual-reverse

  ;; Replication & splitting

  textual-replicate     textual-split
  )


(def (exact-integer? o)
  (and (exact? o) (integer? o)))

(def (string-copy! s i x)
  (substring-move! s i x 0 (string-length x)))

(define (div-and-mod x y)
  (cond ((and (exact-integer? x) (exact-integer? y))
         (cond ((= y 0)
                (error "mod: zero divisor" x y))
               ((>= x 0)
                (values (quotient x y) (remainder x y)))
               ((< y 0)
                                        ; x < 0, y < 0
                (let* ((q (quotient x y))
                       (r (- x (* q y))))
                  (if (= r 0)
                    (values q 0)
                    (values (+ q 1) (- r y)))))
               (else
                                        ; x < 0, y > 0
                (let* ((q (quotient x y))
                       (r (- x (* q y))))
                  (if (= r 0)
                    (values q 0)
                    (values (- q 1) (+ r y)))))))
        (else
         (error "div or mod: illegal arguments" x y))))

(define (div x y)
  (cond ((and (exact-integer? x)
              (exact-integer? y)
              (>= x 0))
         (quotient x y))
        (else
         (call-with-values
             (lambda () (div-and-mod x y))
           (lambda (q r) q)))))

(define (mod x y)
  (cond ((and (exact-integer? x)
              (exact-integer? y)
              (>= x 0))
         (remainder x y))
        (else
         (call-with-values
             (lambda () (div-and-mod x y))
           (lambda (q r) r)))))

(defalias string-foldcase string-downcase)
(defalias char-foldcase char-downcase)
(defalias bytevector? u8vector?)
(defalias bytevector-length u8vector-length)
(defalias bytevector-u8-ref u8vector-ref)
(defalias bytevector-u8-set! u8vector-set!)
(defalias make-bytevector make-u8vector)

(include "srfi-135/kernel8.body.scm")
(include "srfi-135/135.body.scm")