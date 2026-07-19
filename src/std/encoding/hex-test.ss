(export hex-test)

(import :std/test
        ./hex)

(def hex-test
  (test-suite "test :std/text/hex"
    (test-case "test hex-decode, hex-encode"
      (check-equal? (hex-decode "1234567890ABCDEF" 1 6) #u8(2 52 86))
      (for-each (match <>
                  ([hex bytes]
                   (check-equal? (hex-decode hex) bytes)
                   (check-equal? (hex-encode bytes) (string-downcase hex))))
                [["1234567890ABCDEF" #u8(18 52 86 120 144 171 205 239)]
                 ["deadbeef" #u8(222 173 190 239)]
                 ["1BADC0DE" #u8(27 173 192 222)]
                 ["" #u8()]
                 ["00" #u8(0)]
                 ["0000" #u8(0 0)]
                 ["61626364" (@bytes "abcd")]
                 ["0d0a" (@bytes "\r\n")]]))))
