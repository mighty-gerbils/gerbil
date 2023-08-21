;;; -*- Gerbil -*-
;;; © vyzo
;;; String Buffered IO tests
(import :gerbil/gambit/bits
        :std/test
        :std/error
        :std/iter
        ../interface
        ./api)
(export strbuf-input-test
        strbuf-output-test)

(def (make-test-string size)
  (let (str (make-string size))
    (for (i (in-range size))
      (string-set! str i (integer->char (modulo i 256))))
    str))

(def strbuf-input-test
  (test-suite "buffered string reader"
    (test-case "string input"
      (let* ((str (make-test-string 1024))
             (brd (open-buffered-string-reader str))
             (buf (make-string 64)))
        (for (i (in-range 16))
          (check (BufferedStringReader-read-string brd buf) => 64)
          (for (j (in-range 64))
            (check (string-ref buf j) => (integer->char (modulo (+ (* i 64) j) 256)))))
        (check (BufferedStringReader-read-string brd buf) => 0)
        (check-exception (BufferedStringReader-read-string brd buf 0 64 1) io-error?)
        (check-exception (BufferedStringReader-read-string brd buf 0 64 30) io-error?)
        (check-exception (BufferedStringReader-read-string brd buf 0 64 64) io-error?)))

    (test-case "char input"
      (let* ((str (make-test-string 1024))
             (brd (open-buffered-string-reader str)))
        (for (i (in-range 1024))
          (check (BufferedStringReader-peek-char brd) => (integer->char (modulo i 256)))
          (check (BufferedStringReader-read-char brd) => (integer->char (modulo i 256))))
        (check (BufferedStringReader-peek-char brd) ? eof-object?)
        (check (BufferedStringReader-read-char brd) ? eof-object?)))

    (test-case "input skipping"
      (let* ((str (make-test-string 1024))
             (brd (open-buffered-string-reader str))
             (buf (make-string 64)))
        (BufferedStringReader-skip brd 3)
        (check (BufferedStringReader-read-string brd buf) => 64)
        (for (i (in-range 64))
          (check (string-ref buf i) => (integer->char (modulo (+ i 3) 256))))
        (BufferedStringReader-skip brd 950)
        (string-fill! buf (integer->char 0))
        (check (BufferedStringReader-read-string brd buf) => 7)
        (for (i (in-range 7))
          (check (string-ref buf i) => (integer->char (modulo (+ 1017 i) 256))))
        (for (i (in-range 7 64))
          (check (string-ref buf i) => (integer->char 0)))))

    (test-case "input delimiting"
      (let* ((str (make-test-string 1024))
             (brd (open-buffered-string-reader str))
             (buf (make-string 64)))
        (BufferedStringReader-skip brd 7)
        (let (dbrd (BufferedStringReader-delimit brd 10))
          (check (BufferedStringReader-read-string dbrd buf) => 10)
          (for (i (in-range 10))
            (check (string-ref buf i) => (integer->char (+ 7 i))))
          (for (i (in-range 10 64))
            (check (string-ref buf i) => (integer->char 0)))
          (check (BufferedStringReader-read-string dbrd buf) => 0))
        (check (BufferedStringReader-read-string brd buf) => 64)
        (for (i (in-range 64))
          (check (string-ref buf i) => (integer->char (modulo (+ 17 i) 256))))))

    (test-case "buffer refill"
      (let* ((str (make-test-string 1024))
             (brd1 (open-buffered-string-reader str))
             (brd2 (open-buffered-string-reader (StringReader brd1) 384))
             (buf (make-string 64)))
        (def (verify-buf start end offset)
          (for (i (in-range start end))
            (check (string-ref buf i) => (integer->char (modulo (+ offset i) 256)))))
        (for (i (in-range 16))
          (check (BufferedStringReader-read-string brd2 buf) => 64)
          (verify-buf 0 64 (* i 64)))
        (check (BufferedStringReader-peek-char brd2) ? eof-object)))

    (test-case "line input"
      (let ((input1 "the quick brown fox jumped over the lazy dog")
            (input2 "the quick brown fox jumped over the lazy dog\n")
            (input3 "the quick brown fox jumped over the lazy dog\r\n"))
        (let (brd (open-buffered-string-reader input1))
          (check (BufferedStringReader-read-line brd) => input1))
        (let (brd (open-buffered-string-reader input2))
          (check (BufferedStringReader-read-line brd) => input1))
        (let (brd (open-buffered-string-reader input2))
          (check (BufferedStringReader-read-line brd #\newline #t) => input2))
        (let (brd (open-buffered-string-reader input3))
          (check (BufferedStringReader-read-line brd '(#\return #\newline)) => input1))
        (let (brd (open-buffered-string-reader input3))
          (check (BufferedStringReader-read-line brd '(#\return #\newline) #t) => input3))))))

(def strbuf-output-test
  (test-suite "buffered string writer"
    (test-case "string output"
      (let* ((str (make-test-string 1024))
             (bwr (open-buffered-string-writer #f 128)))
        (for (i (in-range 16))
          (check (BufferedStringWriter-write-string bwr str (* i 64) (* (+ i 1) 64)) => 64))
        (BufferedStringWriter-close bwr)
        (check (get-buffer-output-string bwr) => str)))

    (test-case "char output"
      (let* ((str (make-test-string 1024))
             (bwr (open-buffered-string-writer #f 128)))
        (for (i (in-range 1024))
          (check (BufferedStringWriter-write-char bwr (string-ref str i)) => 1))
        (BufferedStringWriter-close bwr)
        (check (get-buffer-output-string bwr) => str)))

    (test-case "line output"
      (let ((input "the quick brown fox jumped over the lazy dog")
            (output1 "the quick brown fox jumped over the lazy dog\n")
            (output2 "the quick brown fox jumped over the lazy dog\r\n"))
        (let (bwr (open-buffered-string-writer #f))
          (check (BufferedStringWriter-write-line bwr input) => (fx+ (string-length input) 1))
          (BufferedStringWriter-close bwr)
          (check (get-buffer-output-string bwr) => output1))
        (let (bwr (open-buffered-string-writer #f))
          (check (BufferedStringWriter-write-line bwr input '(#\return #\newline)) => (fx+ (string-length input) 2))
          (check (get-buffer-output-string bwr) => output2))))))
