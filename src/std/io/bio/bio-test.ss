;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO tests
(import :gerbil/gambit
        :std/test
        :std/error
        :std/iter
        :std/text/utf8
        ../interface
        ./api)
(export bio-input-test
        bio-output-test
        bio-varint-delimited-test)

(def (make-test-u8vector size)
  (let (u8v (make-u8vector size))
    (for (i (in-range size))
      (u8vector-set! u8v i (modulo i 256)))
    u8v))

(def (open-string-buffered-reader input)
  (open-buffered-reader (string->utf8 input)))

(def bio-input-test
  (test-suite "buffered reader"
    (test-case "u8vector input"
      (let* ((u8v (make-test-u8vector 1024))
             (brd (open-buffered-reader u8v))
             (buf (make-u8vector 64)))
        (for (i (in-range 16))
          (check (BufferedReader-read brd buf) => 64)
          (for (j (in-range 64))
            (check (u8vector-ref buf j) => (modulo (+ (* i 64) j) 256))))
        (check (BufferedReader-read brd buf) => 0)
        (check-exception (BufferedReader-read brd buf 0 64 1) io-error?)
        (check-exception (BufferedReader-read brd buf 0 64 30) io-error?)
        (check-exception (BufferedReader-read brd buf 0 64 64) io-error?)))

    (test-case "u8 input"
      (let* ((u8v (make-test-u8vector 1024))
             (brd (open-buffered-reader u8v)))
        (for (i (in-range 1024))
          (check (BufferedReader-peek-u8 brd) => (modulo i 256))
          (check (BufferedReader-read-u8 brd) => (modulo i 256)))
        (check (BufferedReader-peek-u8 brd) ? eof-object?)
        (check (BufferedReader-read-u8 brd) ? eof-object?)))

    (test-case "input skipping"
      (let* ((u8v (make-test-u8vector 1024))
             (brd (open-buffered-reader u8v))
             (buf (make-u8vector 64)))
        (BufferedReader-skip brd 3)
        (check (BufferedReader-read brd buf) => 64)
        (for (i (in-range 64))
          (check (u8vector-ref buf i) => (modulo (+ i 3) 256)))
        (BufferedReader-skip brd 950)
        (u8vector-fill! buf 0)
        (check (BufferedReader-read brd buf) => 7)
        (for (i (in-range 7))
          (check (u8vector-ref buf i) => (modulo (+ 1017 i) 256)))
        (for (i (in-range 7 64))
          (check (u8vector-ref buf i) => 0))))

    (test-case "input delimiting"
      (let* ((u8v (make-test-u8vector 1024))
             (brd (open-buffered-reader u8v))
             (buf (make-u8vector 64)))
        (BufferedReader-skip brd 7)
        (let (dbrd (BufferedReader-delimit brd 10))
          (check (BufferedReader-read dbrd buf) => 10)
          (for (i (in-range 10))
            (check (u8vector-ref buf i) => (+ 7 i)))
          (for (i (in-range 10 64))
            (check (u8vector-ref buf i) => 0))
          (check (BufferedReader-read dbrd buf) => 0))
        (check (BufferedReader-read brd buf) => 64)
        (for (i (in-range 64))
          (check (u8vector-ref buf i) => (modulo (+ 17 i) 256)))))

    (test-case "buffer refill"
      (let* ((u8v (make-test-u8vector 1024))
             (brd1 (open-buffered-reader u8v))
             (brd2 (open-buffered-reader (Reader brd1) 384))
             (buf (make-u8vector 64)))
        (def (verify-buf start end offset)
          (for (i (in-range start end))
            (check (u8vector-ref buf i) => (modulo (+ offset i) 256))))
        (for (i (in-range 16))
          (check (BufferedReader-read brd2 buf) => 64)
          (verify-buf 0 64 (* i 64)))
        (check (BufferedReader-peek-u8 brd2) ? eof-object)))

    (test-case "integer input"
      (let* ((u8v (u8vector
                   ;; u16
                   #x01 #x02
                   ;; u32
                   #x01 #x02 #x03 #x04
                   ;; u64
                   #x01 #x02 #x03 #x04 #x05 #x06 #x07 #x08
                   ;; s16
                   #x01 #x02
                   #x81 #x02
                   ;; s32
                   #x01 #x02 #x03 #x04
                   #x81 #x02 #x03 #x04
                   ;; s64
                   #x01 #x02 #x03 #x04 #x05 #x06 #x07 #x08
                   #x81 #x02 #x03 #x04 #x05 #x06 #x07 #x08
                   ;; varuint
                   #xaf #x96 #x13
                   ;; varint
                   #xde #xac #x26
                   #xdd #xac #x26
                   ))
             (brd (open-buffered-reader u8v)))
        (check (BufferedReader-read-u16 brd) => #x0102)
        (check (BufferedReader-read-u32 brd) => #x01020304)
        (check (BufferedReader-read-u64 brd) => #x0102030405060708)
        (check (BufferedReader-read-s16 brd) => #x0102)
        (check (BufferedReader-read-s16 brd) => -32510)
        (check (BufferedReader-read-s32 brd) => #x01020304)
        (check (BufferedReader-read-s32 brd) => -2130574588)
        (check (BufferedReader-read-s64 brd) => #x0102030405060708)
        (check (BufferedReader-read-s64 brd) => -9150748177064392952)
        (check (BufferedReader-read-varuint brd) => 314159)
        (check (BufferedReader-read-varint brd) => 314159)
        (check (BufferedReader-read-varint brd) => -314159)))

    (test-case "char input"
      (let* ((input "the quick brown fox jumped over the lazy dog")
             (brd (open-string-buffered-reader input)))
        (for (char (string->list input))
          (check (BufferedReader-read-char brd) => char))
        (check (BufferedReader-read-char brd) ? eof-object?)))

    (test-case "string input"
      (let* ((input "the quick brown fox jumped over the lazy dog")
             (brd (open-string-buffered-reader input))
             (buf (make-string 16)))
        (for (i (in-range (fx/ (fx+ (string-length input) 15) 16)))
          (let* ((expected-chars (min 16 (fx- (string-length input) (* i 16))))
                 (expected-output (substring input (* i 16) (+ (* i 16) expected-chars))))
            (check (BufferedReader-read-string brd buf) => expected-chars)
            (check (substring buf 0 expected-chars) => expected-output)))))

    (test-case "line input"
      (let ((input1 "the quick brown fox jumped over the lazy dog")
            (input2 "the quick brown fox jumped over the lazy dog\n")
            (input3 "the quick brown fox jumped over the lazy dog\r\n"))
        (let (brd (open-string-buffered-reader input1))
          (check (BufferedReader-read-line brd) => input1))
        (let (brd (open-string-buffered-reader input2))
          (check (BufferedReader-read-line brd) => input1))
        (let (brd (open-string-buffered-reader input2))
          (check (BufferedReader-read-line brd #\newline #t) => input2))
        (let (brd (open-string-buffered-reader input3))
          (check (BufferedReader-read-line brd '(#\return #\newline)) => input1))
        (let (brd (open-string-buffered-reader input3))
          (check (BufferedReader-read-line brd '(#\return #\newline) #t) => input3))))))

(def bio-output-test
  (test-suite "buffered writer"
    (test-case "u8vector output"
      (let* ((u8v (make-test-u8vector 1024))
             (bwr (open-buffered-writer #f 128)))
        (for (i (in-range 16))
          (check (BufferedWriter-write bwr u8v (* i 64) (* (+ i 1) 64)) => 64))
        (BufferedWriter-close bwr)
        (check (get-buffer-output-u8vector bwr) => u8v)))

    (test-case "u8 output"
      (let* ((u8v (make-test-u8vector 1024))
             (bwr (open-buffered-writer #f 128)))
        (for (i (in-range 1024))
          (check (BufferedWriter-write-u8 bwr (u8vector-ref u8v i)) => 1))
        (BufferedWriter-close bwr)
        (check (get-buffer-output-u8vector bwr) => u8v)))

    (test-case "integer output"
      (let* ((u8v (u8vector
                   ;; u16
                   #x01 #x02
                   ;; u32
                   #x01 #x02 #x03 #x04
                   ;; u64
                   #x01 #x02 #x03 #x04 #x05 #x06 #x07 #x08
                   ;; s16
                   #x01 #x02
                   #x81 #x02
                   ;; s32
                   #x01 #x02 #x03 #x04
                   #x81 #x02 #x03 #x04
                   ;; s64
                   #x01 #x02 #x03 #x04 #x05 #x06 #x07 #x08
                   #x81 #x02 #x03 #x04 #x05 #x06 #x07 #x08
                   ;; varuint
                   #xaf #x96 #x13
                   ;; varint
                   #xde #xac #x26
                   #xdd #xac #x26
                   ))
             (bwr (open-buffered-writer #f)))
        (check (BufferedWriter-write-u16 bwr #x0102) => 2)
        (check (BufferedWriter-write-u32 bwr #x01020304) => 4)
        (check (BufferedWriter-write-u64 bwr #x0102030405060708) => 8)
        (check (BufferedWriter-write-s16 bwr #x0102) => 2)
        (check (BufferedWriter-write-s16 bwr -32510) => 2)
        (check (BufferedWriter-write-s32 bwr #x01020304) => 4)
        (check (BufferedWriter-write-s32 bwr -2130574588) => 4)
        (check (BufferedWriter-write-s64 bwr #x0102030405060708) => 8)
        (check (BufferedWriter-write-s64 bwr -9150748177064392952) => 8)
        (check (BufferedWriter-write-varuint bwr 314159) => 3)
        (check (BufferedWriter-write-varint bwr 314159) => 3)
        (check (BufferedWriter-write-varint bwr -314159) => 3)
        (BufferedWriter-close bwr)
        (check (get-buffer-output-u8vector bwr) => u8v)))

    (test-case "char output"
      (let* ((input "the quick brown fox jumped over the lazy dog")
             (output (string->utf8 input))
             (bwr (open-buffered-writer #f)))
        (for (char (string->list input))
          (check (BufferedWriter-write-char bwr char) => 1))
        (BufferedWriter-close bwr)
        (check (get-buffer-output-u8vector bwr) => output)))

    (test-case "string output"
      (let* ((input "the quick brown fox jumped over the lazy dog")
             (output (string->utf8 input))
             (bwr (open-buffered-writer #f)))
        (for (i (in-range (fx/ (fx+ (string-length input) 15) 16)))
          (let* ((input-start (* i 16))
                 (input-end (fxmin (* (+ i 1) 16) (string-length input)))
                 (expected-chars (fx- input-end input-start)))
            (check (BufferedWriter-write-string bwr input input-start input-end) => expected-chars)))
        (BufferedWriter-close bwr)
        (check (get-buffer-output-u8vector bwr) => output)))

    (test-case "line output"
      (let ((input "the quick brown fox jumped over the lazy dog")
            (output1 (string->utf8 "the quick brown fox jumped over the lazy dog\n"))
            (output2 (string->utf8 "the quick brown fox jumped over the lazy dog\r\n")))
        (let (bwr (open-buffered-writer #f))
          (check (BufferedWriter-write-line bwr input) => (fx+ (string-length input) 1))
          (BufferedWriter-close bwr)
          (check (get-buffer-output-u8vector bwr) => output1))
        (let (bwr (open-buffered-writer #f))
          (check (BufferedWriter-write-line bwr input '(#\return #\newline)) => (fx+ (string-length input) 2))
          (check (get-buffer-output-u8vector bwr) => output2))))

    (test-case "digit output"
      (def (write->string int)
        (let (bwr (open-buffered-writer #f))
          (BufferedWriter-write-digits bwr int)
          (utf8->string (get-buffer-output-u8vector bwr))))

      (check (write->string 6) => "6")
      (check (write->string 666) => "666")
      (check (write->string 1337) => "1337")
      (check (write->string 123456789012345678901234567890123456789) => "123456789012345678901234567890123456789")
      (check (write->string -6) => "-6")
      (check (write->string -666) => "-666")
      (check (write->string -1337) => "-1337")
      (check (write->string -123456789012345678901234567890123456789) => "-123456789012345678901234567890123456789"))))

(def bio-varint-delimited-test
  (test-suite "varint delimited i/o"
    (test-case "generic output and input"
      (let* ((input "the quick brown fox jumped over the lazy dog")
             (writer (open-buffered-writer #f))
             (_ (BufferedWriter-write-delimited writer (cut BufferedWriter-write-string <> input)))
             (output (get-buffer-output-u8vector writer))
             (reader (open-buffered-reader output))
             (reinput (make-string (string-length input)))
             (_ (BufferedReader-read-delimited reader (cut BufferedReader-read-string <> reinput))))
        (check reinput => input)
        (check (BufferedReader-peek-char reader) ? eof-object?)))
    (test-case "u8vector output and input"
      (let* ((input "the quick brown fox jumped over the lazy dog")
             (input-bytes (string->utf8 input))
             (writer (open-buffered-writer #f))
             (_ (BufferedWriter-write-delimited-u8vector writer input-bytes))
             (output (get-buffer-output-u8vector writer))
             (reader (open-buffered-reader output))
             (reinput-bytes (BufferedReader-read-delimited-u8vector reader))
             (reinput (utf8->string reinput-bytes)))
        (check reinput => input)
        (check (BufferedReader-peek-char reader) ? eof-object?)))
    (test-case "string output and input"
      (let* ((input "the quick brown fox jumped over the lazy dog")
             (writer (open-buffered-writer #f))
             (_ (BufferedWriter-write-delimited-string writer input))
             (output (get-buffer-output-u8vector writer))
             (reader (open-buffered-reader output))
             (reinput (BufferedReader-read-delimited-string reader)))
        (check reinput => input)
        (check (BufferedReader-peek-char reader) ? eof-object?)))))
