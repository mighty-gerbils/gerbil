(export hex-test)

(import
  :gerbil/gambit/bytes :gerbil/gambit/exceptions
  :std/assert :std/error :std/srfi/1 :std/srfi/13 :std/sugar :std/text/hex :std/test)

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
      (check-equal? (hex-decode "1234567890ABCDEF" 1 6) #u8(2 52 86))
      (for-each (match <> ([hex bytes]
                           (check-equal? (hex-decode hex) bytes)
                           (check-equal? (hex-encode bytes) (string-downcase hex))))
                [["1234567890ABCDEF" #u8(18 52 86 120 144 171 205 239)]
                 ["deadbeef" #u8(222 173 190 239)]
                 ["1BADC0DE" #u8(27 173 192 222)]
                 ["" #u8()]
                 ["00" #u8(0)]
                 ["0000" #u8(0 0)]
                 ["61626364" (@bytes "abcd")]
                 ["0d0a" (@bytes "\r\n")]]))
    ))
