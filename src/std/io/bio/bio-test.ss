;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO tests
(import :gerbil/gambit/bits
        :std/test
        :std/error
        :std/iter
        ../interface
        ./api)
(export bio-input-test
        )

(def (make-test-u8vector size)
  (let (u8v (make-u8vector size))
    (for (i (in-range size))
      (u8vector-set! u8v i (modulo i 256)))
    u8v))

(def bio-input-test
  (test-suite "u8vector buffered reader"
    (test-case "u8vector reading"
      (let* ((u8v (make-test-u8vector 1024))
             (brd (open-u8vector-buffered-reader u8v))
             (buf (make-u8vector 64)))
        (for (i (in-range 16))
          (check (BufferedReader-read brd buf) => 64)
          (for (j (in-range 64))
            (check (u8vector-ref buf j) => (modulo (+ (* i 64) j) 256))))
        (check (BufferedReader-read brd buf) => 0)
        (check-exception (BufferedReader-read brd buf 0 64 1) io-error?)
        (check-exception (BufferedReader-read brd buf 0 64 30) io-error?)
        (check-exception (BufferedReader-read brd buf 0 64 64) io-error?)))

    (test-case "u8 reading"
      (let* ((u8v (make-test-u8vector 1024))
             (brd (open-u8vector-buffered-reader u8v)))
        (for (i (in-range 1024))
          (check (BufferedReader-peek-u8 brd) => (modulo i 256))
          (check (BufferedReader-read-u8 brd) => (modulo i 256)))
        (check (BufferedReader-peek-u8 brd) ? eof-object?)
        (check-exception (BufferedReader-read-u8 brd) io-error?)))

    (test-case "input skipping"
      (let* ((u8v (make-test-u8vector 1024))
             (brd (open-u8vector-buffered-reader u8v))
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
             (brd (open-u8vector-buffered-reader u8v))
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

    (test-case "test buffer refill"
      (let* ((u8v (make-test-u8vector 1024))
             (brd1 (open-u8vector-buffered-reader u8v))
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
             (brd (open-u8vector-buffered-reader u8v)))
        (check (BufferedReader-read-u16 brd) => #x0102)
        (check (BufferedReader-read-u32 brd) => #x01020304)
        (check (BufferedReader-read-u64 brd) => #x0102030405060708)
        (check (BufferedReader-read-s16 brd) => #x0102)
        (check (BufferedReader-read-s16 brd) => (bitwise-not #x8102))
        (check (BufferedReader-read-s32 brd) => #x01020304)
        (check (BufferedReader-read-s32 brd) => (bitwise-not #x81020304))
        (check (BufferedReader-read-s64 brd) => #x0102030405060708)
        (check (BufferedReader-read-s64 brd) => (bitwise-not #x8102030405060708))
        (check (BufferedReader-read-varuint brd) => 314159)
        (check (BufferedReader-read-varint brd) => 314159)
        (check (BufferedReader-read-varint brd) => -314159)))

    (test-case "char input"
      ;; TODO
      (void))

    (test-case "string input"
      ;; TODO
      (void))
    ))
