(export char-set-test)
(import
  :std/iter
  :std/sugar
  :std/test
  ./char-set)

(def char-set-test
  (test-suite "test :std/text/char-set"
    (test-case "codepoint-scheme-whitespace?, char-scheme-whitespace?"
      (for (i (in-range #x4000)) ;; we could go to (1+ max-char-code), but why bother?
        (when-let ((c (with-catch false (cut integer->char i))))
          (let (w? (char-whitespace? c))
            (check (and (member i [#x09 #x0A #x0B #x0C #x0D #x20 #xA0
                                   #x1680 (iota 11 #x2000)... #x202f #x205f #x3000
                                   #x85 #x2028 #x2029]) #t) => w?)
            (check (char-scheme-whitespace? c) => w?)
            (check (codepoint-scheme-whitespace? i) => w?)))))
    (test-case "char-digit, digit-char"
      (defrule (checks (n c base ...) ...)
        (begin
          (begin (when c (check (char-ascii-digit c base ...) => n))
                 (check (digit-char n base ...) => c)
                 (check (digit-char n (or base ... 10) #t) => (and c (char-upcase c)))) ...))
      (checks (0 #\0) (0 #\0 2) (0 #\0 35)
              (9 #\9) (9 #f 3) (9 #\9 24)
              (10 #f) (10 #\a 11) (10 #\a 33)
              (15 #f) (15 #\f 16) (15 #\f 35)
              (35 #f) (35 #f 35) (35 #\z 36)))))
