(export #t)

(import
  :gerbil/gambit
  :std/srfi/13
  :std/srfi/141
  :std/error
  :std/misc/number
  :std/misc/ports
  :std/sugar
  :std/text/char-set)

(def (repeat-call n thunk)
  (let loop ((i n))
    (cond
     ((< i 1) (void))
     ((= i 1) (thunk)) ;; put thunk in tail position
     (else (thunk) (loop (1- i))))))

(defrule (repeat-do n body ...)
  (repeat-call n (lambda () body ...)))

(def (write-n-chars n char port)
  (repeat-do n (write-char char port)))

(def (display-integer/fit n width (out #t))
  (with-output (out)
    (check-argument (nat? n) "natural" n)
    (check-argument (and (exact-integer? width) (positive? width)) "positive integer" width)
    (let* ((digits (number->string n))
           (padding (- width (string-length digits))))
      (check-argument (nat? padding) "integer small enough for width" [n width])
      (display (make-string padding #\0) out)
      (display digits out))))

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
