;;; -*- Gerbil -*-
;;; © vyzo, fare
;;; :std/encoding/json unit test
(import :std/test
        :std/error
        :std/hash/misc
        :std/list/walist
        :std/io/bio/api
        ./env
        ./api)
(export json-test)

;;;
;;; Helpers
;;;

;; Create a BufferedReader from a string (via UTF-8)
(def (string->buffered-reader str)
  (open-buffered-reader (string->utf8 str)))

;; Create a BufferedWriter, run proc on it, return the UTF-8 decoded string
(def (call-with-buffered-writer proc)
  (let (bwr (open-buffered-writer #f))
    (proc bwr)
    (get-memory-output-string-utf8 bwr)))

;; Encode obj to string using write-json on a BufferedWriter
(def (write-json->string obj (ctx (json-write-context)))
  (call-with-buffered-writer (cut write-json <> obj ctx)))

;; Decode a string using read-json on a BufferedReader
(def (string->read-json str (ropt (current-json-read-options)))
  (let (brd (string->buffered-reader str))
    (read-json brd ropt)))

;;;
;;; Check macros
;;;
(def (call-with-json-options thunk
       ;; read options
       key-as-symbol: (key-as-symbol #f)
       array-as-vector: (array-as-vector #f)
       object-as-hash: (object-as-hash #f)
       ;; write options
       sort-keys: (sort-keys #f)
       pretty:    (pretty    #f)
       indent:    (indent    2))
  (parameterize
      ((current-json-read-options (JSONReadOptions key-as-symbol array-as-vector object-as-hash))
       (current-json-write-options (JSONWriteOptions sort-keys pretty indent)))
    (thunk)))

(defrule (with-json-options (options ...) body ...)
  (call-with-json-options (lambda () body ...) options ...))

(defrule (check-encoding (options ...) x ...)
  (with-json-options (options ...) (check-codec json->string string->json x ...)))

;; check-pretty: verify encoding AND that the result decodes back to the same object.
;; Use string-keyed walists (= default decode representation) so equal? works on round-trip.
(defrule (check-pretty (option ...) checks ...)
  (check-function (cut pretty-json #f <> option ...) checks ...))

;;;
;;; Test suite
;;;

(def json-test
  (test-suite "json encoding and decoding"

    ;;
    ;; Scalars: null, booleans, strings
    ;;
    (test-case "null and booleans"
      (check-encoding ()
        #t     <=> "true"
        #f     <=> "false"
        (void) <=> "null"))

    (test-case "strings"
      (check-encoding ()
        "hello"    <=> "\"hello\""
        "a string" <=> "\"a string\""
        ""         <=> "\"\""
        ;; escape sequences
        "a\"b"     <=> "\"a\\\"b\""   ; " → \"
        "a\\b"     <=> "\"a\\\\b\""   ; \ → \\
        "a\nb"     <=> "\"a\\nb\""    ; newline → \n
        "a\tb"     <=> "\"a\\tb\""    ; tab → \t
        "a\rb"     <=> "\"a\\rb\""    ; cr → \r
        "a\x08;b"  <=> "\"a\\bb\""    ; backspace → \b
        "a\x0c;b"  <=> "\"a\\fb\""    ; form-feed → \f
        "λάμδα"    <=> "\"λάμδα\""    ; most unicode characters just pass through
        ))

    ;;
    ;; \uXXXX escapes and surrogate pairs
    ;;
    ;; The writer escapes only ASCII (0–127) characters that need escaping; codepoints > 127
    ;; are emitted as raw UTF-8 bytes.  For control chars the writer uses named escapes
    ;; (\n, \t, …) or \uXXXX for DEL (U+007F) and the remaining C0 controls.
    ;; The reader must handle \uXXXX for all BMP codepoints and recognize surrogate pairs for
    ;; supplementary-plane codepoints (RFC 8259 §7 / I-JSON RFC 7493).
    ;;
    ;; Legend:  <=> round-trip (encoder produces that exact JSON form)
    ;;          <=  decode only (encoder produces a different but equivalent form)
    ;;

    (test-case "\\uXXXX decode: BMP codepoints"
      (check-encoding ()
        ;; These are <= (decode only): the encoder prefers its own forms.
        ;; Printable ASCII chars are written without any escape.
        "A"     <= "\"\\u0041\""    ; U+0041 — encoder emits "A"
        "\""    <= "\"\\u0022\""    ; U+0022 — encoder emits \"
        "\\"    <= "\"\\u005C\""    ; U+005C — encoder emits \\
        ;; Non-ASCII BMP: UTF-8 passthrough, so decode only.
        "\xe9;" <= "\"\\u00e9\""    ; U+00E9 é (hex digits are case-insensitive)
        "☃"     <= "\"\\u2603\""    ; U+2603 SNOWMAN
        ;; U+007F DELETE: encoder escapes it as , so this is a full round-trip.
        "\x7f;" <=> "\"\\u007F\"")) ; U+007F DEL — encoder writes 

    (test-case "\\uXXXX round-trip: non-ASCII chars write as raw UTF-8"
      ;; Codepoints > 127 are UTF-8 passthrough; the encoder never emits \uXXXX for them.
      (check-encoding ()
        "λ"  <=> "\"λ\""
        "é"  <=> "\"é\""
        "☃"  <=> "\"☃\""
        "😀" <=> "\"😀\""))

    (test-case "\\uXXXX decode: surrogate pairs for supplementary-plane characters"
      ;; RFC 8259 §7: supplementary codepoints MUST be written as \uHHHH\uLLLL in JSON.
      ;; Our decoder reconstructs the codepoint; the encoder never produces this form
      ;; (it writes UTF-8 directly), so these are decode-only (<=).
      (check-encoding ()
        "😀"        <= "\"\\uD83D\\uDE00\""   ; U+1F600 GRINNING FACE
        "\x10000;"  <= "\"\\uD800\\uDC00\""   ; U+10000 minimum supplementary
        "\x10FFFF;" <= "\"\\uDBFF\\uDFFF\""))  ; U+10FFFF maximum codepoint

    (test-case "\\uXXXX error: lone low surrogate"
      ;; A low surrogate (U+DC00–U+DFFF) in the first \\u position is always invalid.
      (check-function string->json
        "\"\\uDC00\"" =>! true    ; minimum low surrogate
        "\"\\uDC01\"" =>! true
        "\"\\uDFFF\"" =>! true))  ; maximum low surrogate

    (test-case "\\uXXXX error: lone high surrogate not followed by \\uLOW"
      ;; After a high surrogate (U+D800–U+DBFF) the very next token must be \\uLOW.
      (check-function string->json
        "\"\\uD800\""    =>! true   ; end of string — no \\uLOW follows
        "\"\\uD800x\""   =>! true   ; literal char instead of backslash
        "\"\\uD800 \""   =>! true   ; space instead of backslash
        "\"\\uD800\\n\"" =>! true   ; different escape (\\n, not \\u)
        "\"\\uD800\\t\"" =>! true)) ; different escape (\\t, not \\u)

    (test-case "\\uXXXX error: high surrogate followed by \\u with non-low-surrogate value"
      ;; The second \\uXXXX must produce a value in U+DC00–U+DFFF.
      (check-function string->json
        "\"\\uD800\\u0041\"" =>! true   ; \\u"A" — not a low surrogate
        "\"\\uD800\\u0000\"" =>! true   ; null codepoint — not a low surrogate
        "\"\\uD800\\uD800\"" =>! true   ; two high surrogates
        "\"\\uDBFF\\uD800\"" =>! true)) ; both high

    (test-case "\\uXXXX error: truncated hex sequence"
      ;; \\uXXXX requires exactly 4 hex digits before end-of-string or a non-hex char.
      (check-function string->json
        "\"\\u\""    =>! true   ; 0 hex digits
        "\"\\u0\""   =>! true   ; 1 hex digit
        "\"\\u00\""  =>! true   ; 2 hex digits
        "\"\\u000\"" =>! true)) ; 3 hex digits

    (test-case "\\uXXXX error: non-hex digit in sequence"
      (check-function string->json
        "\"\\uGGGG\"" =>! true   ; G is not a hex digit
        "\"\\u00GG\"" =>! true   ; G in position 3
        "\"\\u000G\"" =>! true)) ; G in position 4

    ;;
    ;; Numbers
    ;;
    (test-case "integers"
      (check-encoding ()
        0    <=> "0"
        1    <=> "1"
        -1   <=> "-1"
        5    <=> "5"
        -5   <=> "-5"
        42   <=> "42"
        -42  <=> "-42"
        101  <=> "101"))

    (test-case "floats: Gambit and JSON agree on notation"
      ;; Gambit prints these with digits on both sides of the decimal, matching JSON.
      (check-encoding ()
        1.5    <=> "1.5"
        1.337  <=> "1.337"
        2.5    <=> "2.5"
        3.5    <=> "3.5"
        -1.5   <=> "-1.5"
        -3.5   <=> "-3.5"
        1e-4   <=> "1e-4"
        1e-10  <=> "1e-10"
        -1e-4  <=> "-1e-4"))

    (test-case "floats: JSON encoder normalizes Gambit's abbreviated notation"
      ;; Gambit writes ".5" and "1." for 0.5 and 1.0; JSON requires the full form.
      ;; .5 and 0.5 are the same Scheme value, so <=> works exactly.
      (check-encoding ()
        .5     <=> "0.5"
        -.5    <=> "-0.5"
        0.     <=> "0.0"
        1.     <=> "1.0"
        -1.    <=> "-1.0"
        .1     <=> "0.1"
        .1     <=  "0.10000000000000001"
        -.1    <=> "-0.1"
        .01    <=> "0.01"
        .001   <=> "0.001"
        1000.        <=> "1000.0"
        1000000.     <=> "1000000.0"
        1333700.     <=> "1333700.0"
        1234000000.  <=> "1234000000.0"))

    ;;
    ;; Arrays
    ;;
    (test-case "arrays as lists (default)"
      (check-encoding ()
        '()                            <=> "[]"
        '(1 2 3)                       <=> "[1,2,3]"
        '(1 2 #f #t 3)                 <=> "[1,2,false,true,3]"
        '(1 2 3 (4 5) ("six" "seven")) <=> "[1,2,3,[4,5],[\"six\",\"seven\"]]"))

    (test-case "arrays as vectors (array-as-vector: #t)"
      (check-encoding (array-as-vector: #t)
        #()              <=> "[]"
        #(1 2 3)         <=> "[1,2,3]"
        (vector #t #f (void)) <=> "[true,false,null]"
        #(#(1 2) #(3 4)) <=> "[[1,2],[3,4]]"))

    ;;
    ;; Objects
    ;;
    (test-case "objects: string-keyed walist (default)"
      (check-encoding ()
        (walist '())                       <=> "{}"
        (walist '(("a" . 1) ("b" . 2)))    <=> "{\"a\":1,\"b\":2}"
        (walist '(("x" . #t) ("y" . "v"))) <=> "{\"x\":true,\"y\":\"v\"}"))

    (test-case "objects: symbol-keyed walist (key-as-symbol: #t)"
      ;; insertion order preserved; <=> round-trips because decoder produces walistq
      (check-encoding (key-as-symbol: #t)
        (walistq '())                          <=> "{}"
        (walistq '((a . 1) (b . 2)))           <=> "{\"a\":1,\"b\":2}"
        (walistq '((d . 41) (c . 23) (a . 1))) <=> "{\"d\":41,\"c\":23,\"a\":1}"))

    (test-case "objects: nested symbol-keyed walist"
      (check-encoding (key-as-symbol: #t)
        (walistq (list (cons 'a 1) (cons 'b (walistq (list (cons 'c 3))))))
        <=> "{\"a\":1,\"b\":{\"c\":3}}"))

    (test-case "objects: sort-keys alphabetizes output (encode only)"
      ;; sorted order ≠ insertion order, so decoded result ≠ original; test encode only
      (check-encoding (sort-keys: #t)
        (walistq '((z . 26) (a . 1) (m . 13))) => "{\"a\":1,\"m\":13,\"z\":26}"
        (hash ("z" 26) ("a" 1) ("m" 13))        => "{\"a\":1,\"m\":13,\"z\":26}"))

    (test-case "objects: sort-keys round-trip when input is already sorted"
      (check-encoding (sort-keys: #t key-as-symbol: #t)
        (walistq '((a . 1) (m . 13) (z . 26))) <=> "{\"a\":1,\"m\":13,\"z\":26}"))

    (test-case "object-as-hash: #t"
      (let (ropt (json-read-options object-as-hash: #t))
        (let (obj (string->json "{\"a\":1,\"b\":2}" ropt))
          (check (hash-table? obj) => #t)
          (check (hash-ref obj "a") => 1)
          (check (hash-ref obj "b") => 2)))
      (let (ropt (json-read-options object-as-hash: #t key-as-symbol: #t))
        (let (obj (string->json "{\"a\":1,\"b\":2}" ropt))
          (check (hash-table? obj) => #t)
          (check (hash-ref obj 'a) => 1)
          (check (hash-ref obj 'b) => 2))))

    (test-case "hash-table encode/decode round-trip (sort-keys + object-as-hash)"
      (let* ((original (hash ("a" 1) ("b" 2) ("c" (hash ("d" 3) ("e" 4) ("f" 5)))))
             (ctx  (json-write-context (json-write-options sort-keys: #t)))
             (ropt (json-read-options object-as-hash: #t))
             (str  "{\"a\":1,\"b\":2,\"c\":{\"d\":3,\"e\":4,\"f\":5}}"))
        (check (json->string original ctx) => str)
        (check (string->json str ropt) => original :: equal-hash?)))

    ;;
    ;; Symbols and keywords encoded as strings
    ;;
    (test-case "symbols and keywords encoded as strings"
      ;; JSON strings always decode as Scheme strings, so only encode is tested
      (check-encoding ()
        'hello    => "\"hello\""
        'foo-bar  => "\"foo-bar\""
        hello:    => "\"hello\""
        foo-bar:  => "\"foo-bar\""))

    ;;
    ;; u8vector encode/decode
    ;;
    (test-case "u8vector: json->u8vector / u8vector->json"
      (check (u8vector->json (json->u8vector '(1 2 3))) => '(1 2 3))
      (check (u8vector->json (json->u8vector #t))       => #t)
      (check (u8vector->json (json->u8vector "hello"))  => "hello"))

    (test-case "u8vector: array-as-vector option"
      (let (ropt (json-read-options array-as-vector: #t))
        (check (u8vector->json (json->u8vector #(1 2 3)) ropt) => #(1 2 3))))

    ;;
    ;; BufferedReader / BufferedWriter (write-json / read-json)
    ;;
    (test-case "buffered write-json / read-json"
      (check (write-json->string '(1 2 3)) => "[1,2,3]")
      (check (string->read-json  "[1,2,3]") => '(1 2 3)))

    (test-case "buffered write-json / read-json: nested hash-table"
      (let* ((obj  (hash ("a" 1) ("b" 2) ("c" (hash ("d" 3) ("e" 4) ("f" 5)))))
             (ctx  (json-write-context (json-write-options sort-keys: #t)))
             (ropt (json-read-options object-as-hash: #t))
             (str  "{\"a\":1,\"b\":2,\"c\":{\"d\":3,\"e\":4,\"f\":5}}"))
        (check (write-json->string obj ctx) => str)
        (check (string->read-json  str ropt) => obj :: equal-hash?)))

    ;;
    ;; Port I/O (write-json / read-json)
    ;;
    (test-case "port write-json / read-json"
      (let* ((obj '(1 2 3)) (str "[1,2,3]"))
        (let (out (open-output-string))
          (write-json out obj)
          (check (get-output-string out) => str))
        (check (read-json (open-input-string str)) => obj)))

    ;;
    ;; Error cases
    ;;
    (test-case "trailing junk rejected"
      (check-exception (string->json "true junk") true)
      (check-exception (string->json "1 2")       true)
      (check-exception (string->json "\"ok\" trailing") true))

    (test-case "duplicate keys rejected"
      (check-exception (string->json "{\"a\":1,\"a\":2}") true))

    (test-case "malformed JSON rejected"
      (check-exception (string->json "{")              true)
      (check-exception (string->json "[")              true)
      (check-exception (string->json "\"unterminated") true)
      (check-exception (string->json "")               true))

    ;;
    ;; Pretty-print (pretty-json)
    ;;
    ;; Use string-keyed walists (= default decode representation) so that the
    ;; pretty-printed string round-trips back to an equal? object via string->json.
    ;; Keys are in sorted order so the round-trip is stable regardless of sort-keys.
    ;;
    (test-case "pretty-print: lisp and standard styles"
      (let (my-obj (walist [(cons "l3" '(1 2 3))
                            (cons "obj0" (walist '()))
                            (cons "obj1" (walist [(cons "age" 33)
                                                  (cons "name" "John Doe")]))]))
        ;; lisp style: no initial/final newline in objects, complex values on next line
        (check-pretty (style: 'lisp) my-obj =>
          #<<END
{"l3":
  [1,
   2,
   3],
 "obj0": {},
 "obj1":
  {"age": 33,
   "name": "John Doe"}}

END
)
        ;; standard style: initial/final newlines, always space before value
        (check-pretty (style: 'standard) my-obj =>
          #<<END
{
  "l3": [
    1,
    2,
    3
  ],
  "obj0": {},
  "obj1": {
    "age": 33,
    "name": "John Doe"
  }
}

END
          )))

    (test-case "io zoo"
      (let* ((obj  (hash-eq (a 1) (b 2) (c (hash-eq (d 3) (e 4) (f 5)))))
             (ropt (json-read-options key-as-symbol: #t object-as-hash: #t))
             (ctx  (json-write-context (json-write-options sort-keys: #t)))
             (str  "{\"a\":1,\"b\":2,\"c\":{\"d\":3,\"e\":4,\"f\":5}}"))
        ;; Gambit port (character)
        (check (let (out (open-output-string))
                 (write-json out obj ctx)
                 (get-output-string out))
               => str)
        (check (read-json (open-input-string str) ropt) => obj :: equal-hash?)
        ;; BufferedWriter/Reader
        (check (json->string obj ctx) => str)
        (check (string->json str ropt) => obj :: equal-hash?)
        ;; u8vector
        (check (u8vector->json (json->u8vector obj ctx) ropt) => obj :: equal-hash?)))

    ;;; v0.19-TODO: trivial-struct->json / trivial-json->struct
    ;;; when struct reflection is available, port the trivial-struct test cases.

    ))
