;;; -*- Gerbil -*-
;;; (C) fare at tunes.org
;;; :std/text/csv unit test

(export csv-test)

(import
  :gerbil/gambit/exceptions
  :std/format :std/misc/ports :std/misc/string :std/sugar :std/test :std/text/csv)

(def (normalize-crlf input)
  (call-with-output-string
    []
    (lambda (port)
      (for-each
        (cut fprintf port "~a~%" <>)
        (map string-trim-eol
             (call-with-input-string input read-all-as-lines))))))

(def (csv->lines csv)
  (call-with-input-string csv read-csv-lines))

(def (lines->csv lines)
  (normalize-crlf (call-with-output-string [] (cut write-csv-lines lines <>))))

(defrules test-read ()
  ((_ csv expected)
   (check-equal? (csv->lines csv) expected)))

(defrules test-write ()
  ((_ lists expected)
   (check-equal? (lines->csv lists) expected)))

(defrules test-both ()
  ((_ csv lists)
   (begin (test-read csv lists) (test-write lists csv))))

(defrules test-read-write ()
  ((_ csv lists csv-again)
   (begin (test-read csv lists) (test-write lists csv-again))))

(defrules test-both-lf ()
  ((_ csv lists)
   (begin (test-read csv lists) (test-write lists (string-append csv +lf+)))))

(def csv-test
  (test-suite "test :std/text/csv"
    (test-case "test-empty-fields"
      (test-both
       "1,2,3
,2,3
1,,3
1,2,
"
       '(("1" "2" "3")
         ("" "2" "3")
         ("1" "" "3")
         ("1" "2" ""))))
    (test-case "test-happy-ending"
      (test-both-lf
       "one,two,three,"
       '(("one" "two" "three" "")))
      (test-read-write
       "one,two,three   "
       '(("one" "two" "three"))
       "one,two,three
")
      (test-read-write
       "   "
       '(())
       +lf+)
      (test-both
       ""
       '()))
    (test-case "parameters"
      (def setters
        (hash (separator csv-options-separator-set!)
              (quote csv-options-quote-set!)
              (unquoted-quotequote? csv-options-unquoted-quotequote?-set!)
              (loose-quote? csv-options-loose-quote?-set!)
              (allow-binary? csv-options-allow-binary?-set!)
              (eol csv-options-eol-set!)
              (accept-lf? csv-options-accept-lf?-set!)
              (accept-cr? csv-options-accept-cr?-set!)
              (accept-crlf? csv-options-accept-crlf?-set!)
              (skip-whitespace? csv-options-skip-whitespace?-set!)))
      (def (csv<-str s) (call-with-input-string s (lambda (p) (read-csv-lines p))))
      (def (str<-csv c) (call-with-output-string (lambda (p) (write-csv-lines c p))))
      (def (lines<-str s) (map string-trim-eol (call-with-input-string s read-all-as-lines)))
      (def str "\"a,b c\"\n;\"e,f;g\",h\ri',j;'k,l\nm,n;o,p")
      (def (param-test str str2 csv . options)
        (write [TESTING: str str2 csv . options]) (newline)
        (def opts (struct-copy creativyst-csv-options))
        (for-each (match <> ([slot val] ((hash-get setters slot) opts val))) options)
        (parameterize ((current-csv-options opts))
          (let/cc return
            (cond
             ((string? csv)
              (check-exception (csv<-str str) (lambda (e) (equal? (error-message e) csv))) (return))
             ((list? csv)
              (check-equal? (csv<-str str) csv))
             ((not csv)
              (set! csv (csv<-str str))))
            (check-equal? (str<-csv csv) (or str2 str))
            (when str2 (check-equal? (csv<-str str2) csv)))))
      (def (param-tests str . l) (for-each (cut apply param-test str <>) l))
      (def (T l) (for-each (cut apply param-tests <>) l))
      (T '(("a,b;c\r\n"
            (#f (("a" "b;c")))
            (#f (("a,b" "c")) (separator #\;))
            ("a,b;c\n" (("a" "b;c")) (eol "\n")))
           ("\"a,b\"\r'c,d'\r\"e f\""
            ("\"a,b\"\r\n'c,d'\r\ne f\r\n" (("a,b") ("'c" "d'") ("e f")))
            ("\"a,b\"\r\n'c,d'\r\n\"e f\"\r\n" (("\"a" "b\"") ("c,d") ("\"e f\"")) (quote #\')))
           ("foo''bar"
            (#f "unexpected quote in middle of field" (quote #\'))
            ("'foo''bar'\r\n" (("foo'bar")) (quote #\') (unquoted-quotequote? #t))
            ("foobar\r\n" (("foobar")) (quote #\') (loose-quote? #t))
            ("'foo''bar'\r\n" (("foo'bar")) (quote #\') (unquoted-quotequote? #t))
            ("'foo''bar'\r\n" (("foo'bar")) (quote #\') (loose-quote? #t) (unquoted-quotequote? #t)))
           ("f'o'o"
            (#f "unexpected quote in middle of field" (quote #\'))
            (#f "unexpected quote in middle of field" (quote #\') (unquoted-quotequote? #t))
            ("foo\r\n" (("foo")) (quote #\') (loose-quote? #t)))
           ("'a\n'"
            ("'a\r\n'\r\n" (("'a") ("'")))
            ("'a\n'\r\n" (("a\n")) (quote #\')))
           ("Faré"
            ("\"Faré\"\r\n" (("Faré")))
            ("Faré\r\n" "binary data not allowed" (allow-binary? #f)))
           ("foo\nbar\r\nbaz\r"
            ("foo\r\nbar\r\nbaz\r\n" (("foo") ("bar") ("baz")))
            ("foo\nbar\nbaz\n" (("foo") ("bar") ("baz")) (eol "\n"))
            ("foo\n\"bar\r\"\n\"baz\r\"\n" (("foo") ("bar\r") ("baz\r")) (eol "\n") (accept-cr? #f) (accept-crlf? #f))
            (#f "Carriage-Return without Linefeed!" (eol "\n") (accept-cr? #f))
            ("\"foo\nbar\"\r\"\nbaz\"\r" (("foo\nbar") ("\nbaz")) (eol "\r") (accept-lf? #f) (accept-crlf? #f)))
           ("  foo  , "
            ("foo,\r\n" (("foo" "")))
            ("\"  foo  \",\" \"\r\n" (("  foo  " " ")) (skip-whitespace? #f))
           ))))))
