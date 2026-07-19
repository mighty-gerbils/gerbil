(import :std/error :std/test :std/io/bio/api :std/number/writer)
(export writer-test)

;; Write integer to a memory BufferedWriter, check size invariants, return the string.
;; Both write-integer and integer-write-length receive the same kwargs, so their
;; results must agree: nbytes = (string-length bstr) = integer-write-length.
(def (test-write-integer n . kwargs)
  (let* ((content (apply integer-write-length n kwargs))
         (bwr     (open-buffered-writer #f))
         (nbytes  (apply write-integer bwr n kwargs))
         (bstr    (get-memory-output-string-utf8 bwr)))
    (check nbytes => (string-length bstr))
    (check nbytes => content)
    bstr))

(def writer-test
  (test-suite "test suite for std/number/writer"
    (test-case "basic integers and bases"
      (check-function test-write-integer
        0              => "0"
        42             => "42"
        -42            => "-42"
        100 base: 16   => "64"
        -255 base: 16  => "-ff"
        884 base: 36   => "ok"
        3   sign?: #t  => "+3"
        0   sign?: #t  => "+0"
        -3  sign?: #t  => "-3"))

(test-case "upper-case hex"
      (check-function test-write-integer
        255 base: 16                             => "ff"
        255 base: 16 upper-case?: #t             => "FF"
        -1  base: 16 sign?: #t upper-case?: #t  => "-1"))

    (test-case "space-padding (default)"
      (check-function test-write-integer
        3   width: 5           => "    3"
        0   width: 5           => "    0"
        -3  width: 5           => "   -3"
        884 base: 36 width: 2  => "ok"    ; fits exactly, no padding
        3   width: 5 sign?: #t => "   +3"
        -3  width: 5 sign?: #t => "   -3"
        0   width: 5 sign?: #t => "   +0"))

    (test-case "zero-padding"
      (check-function test-write-integer
        3   width: 5 pad: #\0             => "00003"
        0   width: 5 pad: #\0             => "00000"
        -3  width: 5 pad: #\0             => "-0003"
        3   width: 5 sign?: #t pad: #\0   => "+0003"
        -3  width: 5 sign?: #t pad: #\0   => "-0003"
        0   width: 5 sign?: #t pad: #\0   => "+0000"))

    (test-case "overflow (soft — no error, no padding)"
      (check (test-write-integer 123456 width: 5) => "123456"))

    (test-case "left-align"
      (check-function test-write-integer
        3  width: 5 align: 'left           => "3    "
        -3 width: 5 align: 'left           => "-3   "
        3  width: 5 align: 'left sign?: #t => "+3   "))

    (test-case "center-align"
      (check-function test-write-integer
        3  width: 5 align: 'center           => "  3  "
        -3 width: 5 align: 'center           => " -3  "
        3  width: 7 align: 'center sign?: #t => "  +3   "))

))
