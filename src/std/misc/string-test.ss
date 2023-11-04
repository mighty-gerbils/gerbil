(export string-test)

(import
  :std/error
  :std/format
  :std/misc/repr
  :std/misc/string
  :std/pregexp
  :std/srfi/13
  :std/sugar
  :std/test)

(defstruct point (x y))
(defmethod {:pr point}
  (lambda (self port options)
    (fprintf port "(point ~a ~a)" (point-x self) (point-y self))))

(def string-test
  (test-suite "test :std/misc/string"
    (test-case "string-split-suffix"
      (check-equal? (values->list (string-split-suffix ".c" "foo.c")) ["foo" ".c"])
      (check-equal? (values->list (string-split-suffix ".c" "foo")) ["foo" ""]))
    (test-case "string-trim-suffix"
      (check-equal? (string-trim-suffix ".c" "foo.c") "foo")
      (check-equal? (string-trim-suffix ".c" "foo") "foo"))
    (test-case "string-split-eol"
      (check-equal? (values->list (string-split-eol "foo\n")) ["foo" "\n"])
      (check-equal? (values->list (string-split-eol "foo\r\n")) ["foo" "\r\n"])
      (check-equal? (values->list (string-split-eol "foo\r")) ["foo" "\r"])
      (check-equal? (values->list (string-split-eol "foo\n\n\n")) ["foo\n\n" "\n"])
      (check-equal? (values->list (string-split-eol "foo")) ["foo" ""])
      (check-equal? (string-trim-eol "foo\n") "foo")
      (check-equal? (string-trim-eol "foo\r") "foo")
      (check-equal? (string-trim-eol "foo\r\n") "foo")
      (check-equal? (string-trim-eol "foo\n\n") "foo\n")
      (check-equal? (string-trim-eol "foo\r\r") "foo\r")
      (check-equal? (string-trim-eol "foo\r\n\r\n") "foo\r\n")
      (check-equal? (string-trim-eol "foo") "foo"))
    (test-case "string-subst"
     (check-equal? (string-subst ""             ""   ""  count: 1)  "")
     (check-equal? (string-subst "abc"          "b"  "_" count: 0)  "abc")
     (check-equal? (string-subst "abc"          ""   ""  count: #f) "abc")
     (check-equal? (string-subst ""             "b"  "c" count: #f) "")
     (check-equal? (string-subst "hello, world" "l"  "_" count: 2)  "he__o, world")
     (check-equal? (string-subst "abb"          "b*" "_" count: #f) "abb")
     (check-exception
      (string-subst "abc" "b" "_" count: #t)
      contract-violation-error?)
     ;; empty old
     (check-equal? (string-subst ""     "" "_"  count: 1)  "_")
     (check-equal? (string-subst "a"    "" "_"  count: 1)  "_a")
     (check-equal? (string-subst "abba" "" "_"  count: 2)  "_a_bba")
     (check-equal? (string-subst "abc"  "" "_"  count: #f) "_a_b_c_")
     (check-equal? (string-subst "abc"  "" "_"  count: 3)  "_a_b_c")
     (check-equal? (string-subst "abc"  "" "_"  count: 2)  "_a_bc")
     (check-equal? (string-subst "abc"  "" "__" count: 2)  "__a__bc")
     (check-equal? (string-subst "a"    "" "_"  count: 3)  "_a_")
     ;; non-empty old
     (check-equal? (string-subst "abc"   "b"  "_" count: #f) "a_c")
     (check-equal? (string-subst "abc"   "b"  "_" count: 2)  "a_c")
     (check-equal? (string-subst "abbcb" "b"  "_" count: 2)  "a__cb")
     (check-equal? (string-subst "abbcb" "b"  "_" count: 3)  "a__c_")
     (check-equal? (string-subst "abbcb" "bb" "_" count: #f) "a_cb"))
    (test-case "string-whitespace?"
      (check-equal? (string-whitespace? "") #t)
      (check-equal? (string-whitespace? " ") #t)
      (check-equal? (string-whitespace? " \n") #t)
      (check-equal? (string-whitespace? " \n\t\r\f\v") #t)
      (check-equal? (string-whitespace? " a") #f))
    (test-case "random-string"
      (check-eq? (and (pregexp-match "^\\w+$" (random-string 100)) #t) #t)
      (check-equal? (random-string 0) "")
      (check-equal? (random-string -1) "")
      (check-equal? (string-length (random-string 5)) 5))
    (test-case "test str"
      (check (str)                    => "")
      (check (str "hi")               => "hi")
      (check (str "hello" ", world.") => "hello, world.")
      (check (str 0.1 "!")            => "0.1!")
      (check (str 2.0)                => "2.0")
      (check (str 1.2E+2)             => "120.0")
      (check (str 'abc)               => "abc")
      (check (str '(1 2))             => "[1 2]")
      (check (str (hash (a 10)))      => "(hash (a 10))")
      (check (str #(1 2))             => "(vector 1 2)")
      (check (str (values 1 2))       => "(values 1 2)")
      (check (str (make-point 1 2))   => "(point 1 2)"))
    (test-case "test string-substitute-char-if, string-substitute-char"
      (defrule (checks ((args ...) result) ...)
        (begin (begin (check (string-substitute-char "banana" #\o #\a args ...)
                             => result)
                      (check (string-substitute-char-if "banana" #\o (cut eqv? <> #\a) args ...)
                             => result)) ...))
      (checks (() "bonono")
              ((start: 3) "banono")
              ((end: 5) "bonona")
              ((start: 1 end: 5) "bonona")
              ((count: 2) "bonona")
              ((count: 2 from-end: #t) "banono"))
      (defrule (checks2 ((args ...) pred result) ...)
        (begin (begin (check (string-substitute-char "banana" #\o args ...)
                             => result)
                      (check (string-substitute-char-if "banana" #\o pred)
                             => result)) ...))
      (checks2 ((#\c test: char>?) (cut char>? #\c <>) "oonono")
               ((#\a test-not: equal?) (lambda (x) (not (equal? x #\a))) "oaoaoa")
               ((#\A key: char-upcase) (lambda (x) (equal? (char-upcase x) #\A)) "bonono")))
    (test-case "test as-string<?"
      (check (as-string<? '(foo: 1 bar) #(f #\o "o1" baz)) => #t)
      (check (as-string<? 'foo "foo") => #f))))
