(import
      :std/interface :std/contract :std/instance :std/monad/syntax
      #;./transformer "transformer"
      #;./stream "stream"
      #;./combinators "combinators")
    (export #t)

(interface (ParsecChar ParsecCombinators)
 (letter) (char c) (string str (c=? char=?)) (newline))

(instance (P ParsecChar) (pt parsecT)
  ((letter) (P.satisfy char-alphabetic?))
  ((char c) (P.satisfy (cut char=? c <>)))
  ((newline) (P.char #\newline))
  ((string str (c=? char=?))
   (def lst (if (list? str) str (string->list str)))
   (def (pchars cs)
     (if (null? cs) (P.return [])
         (du P
  	 x <- (P.satisfy (cut c=? <> (car cs)))
  	 xs <- (pchars (cdr cs))
  	 (P.return (cons x xs)))))
   (du P
     cs <- (pchars lst)
     (P.return (list->string cs)))))


;; TODO: This is here for now but should be higher level.

(interface (Parsec ParsecChar))

(def current-parsec (make-parameter (Parsec (make-parsecT))))

(def (run-parser p inp)
 (using (P (current-parsec) : Parsec)
  (let (res (P.run p inp))
   (if (null? res) res
       (caar res)))))
