;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Custom #lang prelude for a language with a custom surface syntax
(import :std/parser/base)
(export #t)

;; string token value
;; peels off surrounding "s and processes (some) escape characters
(def (string-e str loc)
  (let lp ((rest (cdr (string->list str))) (chars []))
    (match rest
      ([#\"] (list->string (reverse chars)))
      ([char . rest]
         (if (eq? char #\\)
           (match rest
             ([char . rest]
              (case char
                ((#\" #\\) (lp rest (cons char chars)))
                ((#\n) (lp rest (cons #\newline chars)))
                ((#\t) (lp rest (cons #\tab chars)))
                (else
                 (raise-parse-error lex-scuby "Unrecognized escape character"
                                    (make-token 'String str loc)
                                    char))))
             (else
              (raise-parse-error lex-scuby "Misplaced escape character"
                                 (make-token 'String str loc)
                                 char)))
           (lp rest (cons char chars)))))))
