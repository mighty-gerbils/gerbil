(export hex-test)

(import
  :gerbil/gambit/exceptions
  :std/sugar
  :std/error :std/text/hex :std/test :std/srfi/1)

(def (error-with-message? message)
  (lambda (e)
    (and (error-exception? e) (equal? (error-exception-message e) message))))

(def hex-test
  (test-suite "test :std/text/hex"
    (test-case "test hex, hex*"
      (def l (string->list "0123456789ABCDEFabcdef"))
      (def m '(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 10 11 12 13 14 15))
      (check-equal? (map hex m) (map char-downcase l))
      (check-equal? (map unhex l) m)
      (check-equal? (map unhex* l) m)
      (assert! (every not (map unhex* (string->list "Gg$%$#%*zZ\n")))))
    (test-case "test hex-decode, hex-encode"
      (check-equal? (hex-decode "1234567890ABCDEF") #u8(18 52 86 120 144 171 205 239))
      (check-equal? (hex-decode "1234567890ABCDEF" 1 6) #u8(2 52 86))
      (check-equal? (hex-encode #u8(222 173 190 239)) "deadbeef")
      (check-equal? (hex-encode #u8(27 173 192 222)) "1badc0de"))
    ))
