;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO tests
(import :std/test
        :std/error
        :std/iter
        :std/misc/ports
        ../interface
        ../util
        ./port
        ./api)
(export bio-input-test
        bio-output-test
        bio-with-buffered-test
        ;;bio-varint-delimited-test
        )

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
        (check (BufferedReader-peek-u8 brd2) ? eof-object?)))

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
          (check (BufferedReader-read-char-utf8 brd) => char))
        (check (BufferedReader-read-char-utf8 brd) ? eof-object?)))

    (test-case "4-byte char input (fast path)"
      ;; bio-read-char-utf8 fast path via basic-input-buffer (memory-input-buffer).
      (let* ((input "café 中文 \U0001F600 résumé")
             (brd (open-string-buffered-reader input)))
        (for (char (string->list input))
          (check (BufferedReader-read-char-utf8 brd) => char))
        (check (BufferedReader-read-char-utf8 brd) ? eof-object?)))

    (test-case "string input"
      (let* ((input "the quick brown fox jumped over the lazy dog")
             (brd (open-string-buffered-reader input))
             (buf (make-string 16)))
        (for (i (in-range (fx/ (fx+ (string-length input) 15) 16)))
          (let* ((expected-chars (min 16 (fx- (string-length input) (* i 16))))
                 (expected-output (substring input (* i 16) (+ (* i 16) expected-chars))))
            (check
             (let (chars-read (box 0))
               (BufferedReader-read-string-utf8 brd buf 0 (string-length buf) 0 chars-read)
               (unbox chars-read))
               => expected-chars)
            (check (substring buf 0 expected-chars) => expected-output)))))

    (test-case "line input"
      (let ((input1 "the quick brown fox jumped over the lazy dog")
            (input2 "the quick brown fox jumped over the lazy dog\n")
            (input3 "the quick brown fox jumped over the lazy dog\r\n"))
        (let (brd (open-string-buffered-reader input1))
          (check (BufferedReader-read-line-utf8 brd) => input1))
        (let (brd (open-string-buffered-reader input2))
          (check (BufferedReader-read-line-utf8 brd) => input1))
        (let (brd (open-string-buffered-reader input2))
          (check (BufferedReader-read-line-utf8 brd #\newline #t) => input2))
        (let (brd (open-string-buffered-reader input3))
          (check (BufferedReader-read-line-utf8 brd '(#\return #\newline)) => input1))
        (let (brd (open-string-buffered-reader input3))
          (check (BufferedReader-read-line-utf8 brd '(#\return #\newline) #t) => input3))
        ;; separator is consumed but the character after it is not over-read
        (let (brd (open-string-buffered-reader "line1\nline2"))
          (check (BufferedReader-read-line-utf8 brd) => "line1")
          (check (BufferedReader-read-line-utf8 brd) => "line2"))
        ;; sep=#f: read to EOF including embedded newlines
        (let (brd (open-string-buffered-reader "hello\nworld"))
          (check (BufferedReader-read-line-utf8 brd #f) => "hello\nworld"))
        ;; sep=#f on empty input returns eof
        (let (brd (open-string-buffered-reader ""))
          (check (BufferedReader-read-line-utf8 brd #f) ? eof-object?))))
    ))

(def bio-output-test
  (test-suite "buffered writer"
    (test-case "u8vector output"
      (let* ((u8v (make-test-u8vector 1024))
             (bwr (open-buffered-writer #f 128)))
        (for (i (in-range 16))
          (check (BufferedWriter-write bwr u8v (* i 64) (* (+ i 1) 64)) => 64))
        (check (get-memory-output-u8vector bwr) => u8v)))

    (test-case "u8 output"
      (let* ((u8v (make-test-u8vector 1024))
             (bwr (open-buffered-writer #f 128)))
        (for (i (in-range 1024))
          (check (BufferedWriter-write-u8 bwr (u8vector-ref u8v i)) => 1))
        (check (get-memory-output-u8vector bwr) => u8v)))

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
        (check (get-memory-output-u8vector bwr) => u8v)))

    (test-case "char output"
      (let* ((input "the quick brown fox jumped over the lazy dog")
             (bwr (open-buffered-writer #f)))
        (for (char (string->list input))
          (check (BufferedWriter-write-char-utf8 bwr char) => 1))
        (check (get-memory-output-string-utf8 bwr) => input)))

    (test-case "string output"
      (let* ((input "the quick brown fox jumped over the lazy dog")
             (bwr (open-buffered-writer #f)))
        (for (i (in-range (fx/ (fx+ (string-length input) 15) 16)))
          (let* ((input-start (* i 16))
                 (input-end (fxmin (* (+ i 1) 16) (string-length input)))
                 (expected-chars (fx- input-end input-start)))
            (check (BufferedWriter-write-string-utf8 bwr input input-start input-end) => expected-chars)))
        (check (get-memory-output-string-utf8 bwr) => input)))

    (test-case "line output"
      (let ((input "the quick brown fox jumped over the lazy dog")
            (output1 "the quick brown fox jumped over the lazy dog\n")
            (output2 "the quick brown fox jumped over the lazy dog\r\n"))
        (let (bwr (open-buffered-writer #f))
          (check (BufferedWriter-write-line-utf8 bwr input) => (fx+ (string-length input) 1))
          (check (get-memory-output-string-utf8 bwr) => output1))
        (let (bwr (open-buffered-writer #f))
          (check (BufferedWriter-write-line-utf8 bwr input '(#\return #\newline)) => (fx+ (string-length input) 2))
          (check (get-memory-output-string-utf8 bwr) => output2))))
    ))

(def bio-with-buffered-test
  (test-suite "with-buffered-reader/writer"
    (test-case "with-buffered-reader from string"
      (check
        (with-buffered-reader (rd "hello")
          (BufferedReader-read-line-utf8 rd))
        => "hello"))

    (test-case "with-buffered-reader from u8vector"
      (with-buffered-reader (rd #u8(65 66 67))
        (check (BufferedReader-read-u8 rd) => 65)
        (check (BufferedReader-read-u8 rd) => 66)))

    (test-case "with-buffered-reader port passthrough"
      (let (port (open-input-u8vector #u8(1 2 3 4 5)))
        (with-buffered-reader (rd port)
          (check (BufferedReader-read-u8 rd) => 1)
          (check (BufferedReader-read-u8 rd) => 2))
        ;; port must still yield 3 4 5 after reader exits
        (check (read-u8 port) => 3)
        (check (read-u8 port) => 4)))

    (test-case "port-available counts putback plus port buffer"
      ;; open-input-u8vector pre-loads all bytes into the port's internal buffer.
      ;; After reading 2 and putting 1 back: putback=1 + port-buffer=3 = 4.
      (let (port (open-input-u8vector #u8(10 20 30 40 50)))
        (with-buffered-reader (rd port)
          (check (BufferedReader-read-u8 rd) => 10)
          (check (BufferedReader-read-u8 rd) => 20)
          (BufferedReader-put-back rd 20)
          (check (BufferedReader-available rd) => 4))))

    (test-case "with-buffered-writer 'string"
      (check
        (with-buffered-writer (wr 'string)
          (BufferedWriter-write-string-utf8 wr "hello"))
        => "hello"))

    (test-case "with-buffered-writer #f (string)"
      (check
        (with-buffered-writer (wr #f)
          (BufferedWriter-write-string-utf8 wr "world"))
        => "world"))

    (test-case "with-buffered-writer 'u8vector"
      (check
        (with-buffered-writer (wr 'u8vector)
          (BufferedWriter-write-u8 wr 42)
          (BufferedWriter-write-u8 wr 99))
        => #u8(42 99)))

    (test-case "with-buffered-writer binary port flush"
      (let (port (open-output-u8vector))
        (with-buffered-writer (wr port)
          (BufferedWriter-write-u8 wr 10)
          (BufferedWriter-write-u8 wr 20))
        (check (get-output-u8vector port) => #u8(10 20))))

    (test-case "binary port: 4-byte char via generic path"
      ;; port-input-buffer is not a basic-input-buffer, so read-char-utf8 uses
      ;; bio-read-char-utf8-generic.  This exercises the 4-byte (emoji) branch.
      (let* ((input "café 中文 \U0001F600 résumé")
             (port (open-input-u8vector (string->utf8 input))))
        (with-buffered-reader (rd port)
          (check (BufferedReader-read-line-utf8 rd) => input))))

    (test-case "string-port-input-buffer: multibyte UTF-8"
      ;; Reads 1/2/3/4-byte chars from a textual port via string-port-input-buffer.
      (let* ((input "café 中文 \U0001F600")
             (port (open-input-string input)))
        (with-buffered-reader (rd port)
          (check (BufferedReader-read-line-utf8 rd) => input))))

    (test-case "string-port-input-buffer: multiple fills"
      ;; A 16-byte buffer forces many fill! calls for a 200+ byte string.
      (let* ((input (string-append (make-string 80 #\a) "\U0001F600" (make-string 80 #\b)))
             (port (open-input-string input))
             (rd (open-string-port-buffered-reader port 16)))
        (check (BufferedReader-read-line-utf8 rd) => input)))

    (test-case "string-port-output-buffer: partial drain at boundary"
      ;; Write bytes one at a time through an 8-byte buffer.
      ;; "aaaaaaa中xyz": after 7 ASCII bytes and the first byte of '中' (0xe4),
      ;; the buffer is full.  The next write-u8 triggers drain; utf8-complete-prefix-end
      ;; detects the incomplete 3-byte sequence at position 7 and only flushes 7 bytes,
      ;; keeping 0xe4 in the buffer.
      (let* ((input "aaaaaaa中xyz")
             (bytes (string->utf8 input))
             (port  (open-output-string))
             (wr    (open-string-port-buffered-writer port 8)))
        (for (i (in-range (u8vector-length bytes)))
          (BufferedWriter-write-u8 wr (u8vector-ref bytes i)))
        (BufferedWriter-flush wr)
        (check (get-output-string port) => input)))

    (test-case "string-port-available after put-back"
      ;; put-back bytes land in buf[rlo..rhi] (or grow the buffer); rhi-rlo always
      ;; reflects the complete count, so available must include them.
      (let* ((input "hello")
             (rd (open-string-buffered-reader input)))
        ;; consume 3 bytes ("hel"), then put two back
        (check (BufferedReader-read-u8 rd) => (char->integer #\h))
        (check (BufferedReader-read-u8 rd) => (char->integer #\e))
        (check (BufferedReader-read-u8 rd) => (char->integer #\l))
        (BufferedReader-put-back rd (list (char->integer #\h)
                                          (char->integer #\e)))
        ;; available should be 2 (put-back) + 2 remaining ("lo") = 4
        (check (BufferedReader-available rd) => 4)
        ;; and the bytes come back in the right order
        (check (BufferedReader-read-u8 rd) => (char->integer #\h))
        (check (BufferedReader-read-u8 rd) => (char->integer #\e))
        (check (BufferedReader-read-u8 rd) => (char->integer #\l))
        (check (BufferedReader-read-u8 rd) => (char->integer #\o))))

    (test-case "string-port-output-buffer: malformed UTF-8 drain (orphaned continuation bytes)"
      ;; Without the utf8-complete-prefix-end fix, a buffer full of orphaned
      ;; continuation bytes (no leading byte) causes drain to return 0 every time
      ;; and stall forever.  With the fix, utf8-complete-prefix-end returns whi,
      ;; so drain calls utf8->string on the orphaned bytes; Gambit raises a decode
      ;; error rather than hanging.
      (let* ((str-port (open-output-string))
             (wr       (open-string-port-buffered-writer str-port 8)))
        (for (i (in-range 4))
          (BufferedWriter-write-u8 wr #x80))
        (check (BufferedWriter-flush wr) =>! true)))

    (test-case "with-buffered-reader textual port"
      ;; A textual (non-binary) port is wrapped lazily via string-port-input-buffer.
      ;; Reading "hello\n" consumes the separator; "world" is restored to the port
      ;; char buffer on detach, so the port is still usable after the reader exits.
      (let (port (open-input-string "hello\nworld"))
        (with-buffered-reader (rd port)
          (check (BufferedReader-read-line-utf8 rd) => "hello"))
        (check (read-all-as-string port) => "world")))

    (test-case "with-buffered-writer textual port"
      ;; Writing to a string output port via a buffered writer flushes as chars.
      (let (port (open-output-string))
        (with-buffered-writer (wr port)
          (BufferedWriter-write-string-utf8 wr "hello")
          (BufferedWriter-write-u8 wr (char->integer #\newline))
          (BufferedWriter-write-string-utf8 wr "world"))
        (check (get-output-string port) => "hello\nworld")))
    ))

;; (def bio-varint-delimited-test
;;   (test-suite "varint delimited i/o"
;;     (test-case "generic output and input"
;;       (let* ((input "the quick brown fox jumped over the lazy dog")
;;              (writer (open-buffered-writer #f))
;;              (_ (BufferedWriter-write-delimited writer (cut BufferedWriter-write-string-utf8 <> input)))
;;              (output (get-buffer-output-u8vector writer))
;;              (reader (open-buffered-reader output))
;;              (reinput (make-string (string-length input)))
;;              (_ (BufferedReader-read-delimited reader (cut BufferedReader-read-string <> reinput))))
;;         (check reinput => input)
;;         (check (BufferedReader-peek-char-utf8 reader) ? eof-object?)))
;;     (test-case "u8vector output and input"
;;       (let* ((input "the quick brown fox jumped over the lazy dog")
;;              (input-bytes (string->utf8 input))
;;              (writer (open-buffered-writer #f))
;;              (_ (BufferedWriter-write-delimited-u8vector writer input-bytes))
;;              (output (get-buffer-output-u8vector writer))
;;              (reader (open-buffered-reader output))
;;              (reinput-bytes (BufferedReader-read-delimited-u8vector reader))
;;              (reinput (utf8->string reinput-bytes)))
;;         (check reinput => input)
;;         (check (BufferedReader-peek-char-utf8 reader) ? eof-object?)))
;;     (test-case "string output and input"
;;       (let* ((input "the quick brown fox jumped over the lazy dog")
;;              (writer (open-buffered-writer #f))
;;              (_ (BufferedWriter-write-delimited-string-utf8 writer input))
;;              (output (get-buffer-output-u8vector writer))
;;              (reader (open-buffered-reader output))
;;              (reinput (BufferedReader-read-delimited-string-utf8 reader)))
;;         (check reinput => input)
;;         (check (BufferedReader-peek-char-utf8 reader) ? eof-object?)))))
