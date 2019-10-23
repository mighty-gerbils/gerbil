;;; -*- Gerbil -*-
;;; (C) fare at tunes.org
;;; :std/text/csv unit test

(export csv-test)

(import
  :gerbil/gambit/exceptions
  :std/format :std/misc/ports :std/misc/string :std/test :std/text/csv)

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
       '()))))
