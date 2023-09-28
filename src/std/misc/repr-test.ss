(export repr-test)

(import
  :gerbil/expander
  :gerbil/gambit
  :std/format
  :std/iter
  :std/misc/repr
  :std/pregexp
  :std/sugar
  :std/test)

(defclass foo (a b) transparent: #t)
(defclass bar (a b))
(defclass baz (a b))
(defmethod {:pr baz}
  (lambda (object (port (current-output-port)) (options (current-representation-options)))
    (fprintf port "#~d #;(baz a: ~r b: ~r)"
             (object->serial-number object) (@ object a) (@ object b))))

(def repr-test
  (test-suite "test suite for std/misc/repr"
    (import-module ':std/sugar #t #t)
    (defsyntax (stx-read stx)
      (syntax-case stx ()
        ((s r) (datum->syntax #'s (call-with-input-string (syntax->datum #'r) read)))))
    (defrule (representable-checks r ...)
      (begin
        (test-case r
          (check-equal? (repr (stx-read r)) r)) ...))
    (representable-checks
     "0"
     "(vector -42 3.14 +inf.0 #f #t \"simple\" #\\$ #!void keyword: #!eof)"
     "identity" ;; function with a global name
     "['symbol []]" ;; symbol, empty list
     "[1 2 [3 . 4] [5 #u8(114 101 112 114) ...]]"
     "(vector #f #!void #!eof)"
     ;;"(hash (a 1) (b 2) (,(vector 'x 'y) 'xyzzy))"
     "(hash-eq (a 1) (b 2))"
     "(hash-eqv (1 'a) (2 'b))"
     "(foo a: 1 b: 2)"
     "(values 1 2 3)"
     "(values)")
    (defrule (unrepresentable-checks (oo rr) ...)
      (begin
        (test-case oo
          (check-equal?
           (let (o (stx-read oo))
             (match (pregexp-match (string-append "^#([0-9]+) #;" rr) (repr o))
               ([_ sn . _] (equal? (serial-number->object (string->number sn)) o))
               (else (repr o)))) #t)) ...))
    (unrepresentable-checks
     ("(lambda (lambda) lambda)" "\"#<procedure #[0-9]+>\"")
     ("(bar a: 1 b: 2)" "\"#<bar #[0-9]+>\"")
     ("(baz a: 1 b: 2)" "[(]baz a: 1 b: 2[)]"))))
