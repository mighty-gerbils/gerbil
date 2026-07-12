(export
  write-integer/fit
  write-integer/base)

(import
  :std/io/api
  :std/iter
  (only-in :std/error check-argument)
  (only-in :std/number/misc uint? exact-integer? positive-integer?)
  (only-in :std/text/parser/char-set digit-char))

(def (write-integer/base writer (integer : :integer) (base : :fixnum))
  (with-buffered-writer (writer)
    (when (< integer 0)
      (writer.write-char-utf8 #\-))
    (when (zero? integer)
      (writer.write-char-utf8 #\0))
    (let loop ((n (abs integer)))
      (unless (zero? n)
        (let-values (((q r) (floor/ n base)))
          (loop q)
          (writer.write-char-utf8 (digit-char r base)))))))

(def (write-integer/fit writer
                        (n : :integer)
                        (width :~ positive-integer? : :fixnum)
                        (base 10 : :fixnum))
  (with-buffered-writer (writer)
    (let* ((digits (write-integer/base #f (abs n) base))
           (padding (- width (string-length digits) (if (negative? n) 1 0))))
      (check-argument (uint? padding) "integer small enough for width" [n width])
      (when (negative? n) (writer.write-char-utf8 #\-))
      (when (positive? padding)
        (for ((i (in-range padding)))
          (writer.write-char-utf8 #\0)))
      (writer.write-string-utf8 digits))))
