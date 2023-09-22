(export base58-test)
(import
  :std/test
  ./base58)

(def base58-test
  (test-suite "test :std/text/base58"
    (test-case "test base58-decode, base58-encode"
      (for-each (match <> ([str bytes]
                           (check-equal? (base58-decode str) bytes)
                           (check-equal? (base58-encode bytes) str)))
                [["123456789ABCDEFabcdef" #u8(0 163 89 140 109 105 107 241 109 67 181 205 111 52 208)]
                 ["ToastedCheeseSandwich" #u8(3 190 11 230 157 37 194 9 165 223 221 144 36 40 180 106)]
                 ["1Mistake99Prob1ems" #u8(0 4 74 24 171 130 219 235 172 113 26 234 188 126)]
                 ["16Uiu2HAmUXHHL7qEMNmwgynPF3GLGjo8n72TDnMPAgAFYPmnfpv8" #u8(0 37 8 2 18 33 3 235 193 125 55 15 184 96 250 206 87 185 196 180 142 51 120 96 78 195 51 232 148 176 47 140 17 62 124 35 37 197 229)]
                 ["" #u8()]
                 ["1" #u8(0)]
                 ["11" #u8(0 0)]
                 ["3VNr6P" (@bytes "abcd")]
                 ["zZ" (@bytes "\r\n")]]))
    ))
