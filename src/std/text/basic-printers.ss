(export
  write-n-chars
  display-integer/fit
  display-integer/base)

(import
  (only-in :std/srfi/13 string-reverse)
  (only-in :std/srfi/141 floor/)
  (only-in :std/error check-argument)
  (only-in :std/misc/number uint? check-argument-uint check-argument-positive-integer)
  (only-in :std/misc/ports with-output)
  (only-in :std/text/char-set digit-char))

(def (write-n-chars n char port)
  (display (make-string n char) port))

(def (display-integer/base integer base (out #t))
  (def s
    (string-reverse
     (call-with-output-string
      []
      (lambda (port)
        (if (= integer 0)
          (write-char #\0)
          (let loop ((n (abs integer)))
            (unless (zero? n)
              (let-values (((q r) (floor/ n base)))
                (write-char (digit-char r base) port)
                (loop q)))))
        (when (< integer 0)
          (write-char #\- port))))))
  (if out
    (with-output (out) (display s out))
    s))

(def (display-integer/fit n width (out #t) base: (base 10))
  (with-output (out)
    (check-argument-uint n)
    (check-argument-positive-integer width)
    (let* ((digits (display-integer/base (abs n) base #f))
           (padding (- width (string-length digits) (if (negative? n) 1 0))))
      (check-argument (uint? padding) "integer small enough for width" [n width])
      (when (negative? n) (display #\- out))
      (write-n-chars padding #\0 out)
      (display digits out))))
