(export extensible-vector-test)

(import
  :std/test
  ./number ./evector)

(def extensible-vector-test
  (test-suite "test suite for std/misc/extensible-vector"
    (test-case "evector"
      (def e (list->evector '(a b c d)))
      (check-equal? (evector? e) #t)
      (check-equal? (evector-ref e 0) 'a)
      (check-equal? (evector-push! e 'x extend: #f) #f)
      (check-equal? (evector-push! e 'x) 4)
      (check-equal? (evector-ref e 1) 'b)
      (check-equal? (evector-ref e 2) 'c)
      (check-equal? (evector-ref e 3) 'd)
      (check-equal? (evector-ref e 4) 'x)
      (check-equal? (evector->vector e) #(a b c d x)))
    (test-case "ebytes"
      (def e (string->ebytes "abcd"))
      (check-equal? (ebytes? e) #t)
      (check-equal? (ebytes-ref e 0) 97)
      (check-equal? (ebytes-push! e 120 extend: #f) #f)
      (check-equal? (ebytes-push! e 120) 4)
      (check-equal? (ebytes-ref e 1) 98)
      (check-equal? (ebytes-ref e 2) 99)
      (check-equal? (ebytes-ref e 3) 100)
      (check-equal? (ebytes-ref e 4) 120)
      (check-equal? (ebytes->bytes e) #u8(97 98 99 100 120)))
    (test-case "ebits"
      (def e (bits->ebits #xAC 11))
      (check-equal? (ebits? e) #t)
      (check-equal? (map (cut ebits-ref e <>) (iota 11)) [0 0 1 1 0 1 0 1 0 0 0])
      (check-equal? (map (cut ebits-set? e <>) (iota 11)) [#f #f #t #t #f #t #f #t #f #f #f])
      (check-equal? (ebits-push! e 1) 11)
      (check-equal? (ebits-push! e 0) 12)
      (check-equal? (ebits-push! e 1) 13)
      (check-equal? (ebits-push! e 0) 14)
      (check-equal? (ebits-push! e 0) 15)
      (check-equal? (ebits-push! e 0 extend: #f) #f)
      (check-equal? (ebits-push! e 0) 16)
      (check-equal? (ebits-push! e 1) 17)
      (check-equal? (ebits-push! e 0) 18)
      (check-equal? (ebits-push! e 1) 19)
      (check-equal? (ebits-push! e 0) 20)
      (check-equal? (ebits-push! e 0) 21)
      (check-equal? (values->list (ebits->bits e)) '(665772 22)))
    ))
