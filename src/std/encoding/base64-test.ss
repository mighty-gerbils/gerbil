;;; -*- Gerbil -*-
;;; © fare
;;; :std/encoding/base64 unit test
(import :std/test
        ./base64
        ./hex)
(export base64-test)

(def base64-test
  (test-suite "test :std/encoding/base64"

    (test-case "RFC 4648 §10 test vectors — standard padded round-trip"
      ;; https://www.rfc-editor.org/rfc/rfc4648#section-10
      (def (str->b64 s)  (base64-encode (string->utf8 s)))
      (def (b64->str s)  (utf8->string (base64-decode s)))
      (check-codec str->b64 b64->str
        ""       <=> ""
        "f"      <=> "Zg=="
        "fo"     <=> "Zm8="
        "foo"    <=> "Zm9v"
        "foob"   <=> "Zm9vYg=="
        "fooba"  <=> "Zm9vYmE="
        "foobar" <=> "Zm9vYmFy"
        "Man"    <=> "TWFu"
        ;; standard decoder rejects unpadded input
        error? !<= "Zg"    ; "f" without its trailing ==
        error? !<= "Zm8"   ; "fo" without its trailing =
        ;; and rejects outright malformed input
        error? !<= "Z"     ; truncated: only 1 char in a group
        error? !<= "Zg=")) ; wrong padding: "Zg" needs "==" not "="

    (test-case "no-padding round-trip, and padded input also accepted"
      (def (str->b64/np s)  (base64-encode (string->utf8 s) padding: #f))
      (def (b64/np->str s)  (utf8->string (base64-decode s no-padding: #t)))
      (check-codec str->b64/np b64/np->str
        ""    <=> ""
        "f"   <=> "Zg"
        "fo"  <=> "Zm8"
        "foo" <=> "Zm9v"
        ;; one-way: no-padding decoder also accepts standard padded output
        "f"  <= "Zg=="
        "fo" <= "Zm8="
        ;; still rejects truly invalid input
        error? !<= "Z"))   ; 1-char group is always invalid

    (test-case "binary data round-trip via hex"
      (def (hex->b64 h)  (base64-encode (hex-decode h)))
      (def (b64->hex s)  (hex-encode (base64-decode s)))
      (check-codec hex->b64 b64->hex
        ""       <=> ""
        "000000" <=> "AAAA"
        "ffffff" <=> "////"
        "fbfffb" <=> "+//7"))  ; bytes whose 6-bit groups hit indices 62 (+) and 63 (/)

    (test-case "url-safe alphabet: - and _ instead of + and /"
      (def (hex->b64url h)  (base64-encode (hex-decode h) urlsafe: #t padding: #f))
      (def (b64url->hex s)  (hex-encode (base64-decode s urlsafe: #t no-padding: #t)))
      (check-codec hex->b64url b64url->hex
        ""       <=> ""
        "000000" <=> "AAAA"
        "ffffff" <=> "____"
        "fbfffb" <=> "-__7"))  ; standard "+//7" becomes urlsafe "-__7"

    (test-case "subu8vector->base64-string — encode a slice"
      ;; bytes at indices 1–3 of "xfoox" are "foo"
      (check (subu8vector->base64-string (string->utf8 "xfoox") 1 4) => "Zm9v"))

    (test-case "base64-substring->u8vector — decode a slice"
      ;; chars at indices 2–5 of "xxZm9vyy" are "Zm9v" → "foo"
      (check (base64-substring->u8vector "xxZm9vyy" 2 6) => (string->utf8 "foo")))

    (test-case "width: — wrap encoded output at given column"
      ;; 48 bytes → exactly 64 base64 chars; width:32 → two lines of 32
      (let* ((bv  (make-u8vector 48 65))
             (enc (base64-encode bv width: 32)))
        (check (string-length enc) => 65)   ; 32 + newline + 32
        (check (string-ref enc 32) => #\newline)
        ;; round-trip: splice out the newline and decode
        (check (base64-decode (string-append (substring enc 0 32)
                                             (substring enc 33 65)))
               => bv)))

    (test-case "all 256 byte values survive round-trip"
      (let (all-bytes (list->u8vector (iota 256)))
        (check (base64-decode (base64-encode all-bytes)) => all-bytes)))))
