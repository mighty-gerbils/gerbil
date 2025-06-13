;;; -*- Gerbil -*-
;;; (C) me at drewc.ca
;;; :std/parsec/prim unit-tests

(import :std/test
        :std/io/dummy :std/io/strio/input
        :std/monad
        :std/error
        :std/iter
        :std/interactive
        :std/srfi/13
        :std/instance
        :std/parsec/stream
        :std/parsec/prim
        :std/io
        :std/io/strio/types
        (only-in :std/io/strio/api make-string-buffer)
        :std/parser/base :std/parser/stream
        (only-in :std/sugar hash try)
        (only-in :gerbil/core error-object? with-catch))
(export stream-test)

(defsyntax (test-inline stx)
  (syntax-case stx (>)
    ((_ test-case: name rest ...)
     #'(test-case name (test-inline rest ...)))
    ((_ > form > rest ...)
     #'(begin (when std/test#*test-verbose*
		  (displayln "... "
			     (with-output-to-string (cut write 'form))))
		form (test-inline > rest ...)))
    ((_ > test result rest ...)
     #'(begin (check test => 'result) (test-inline rest ...)))
    ((empty ...) #!void)))

(def (loc->list loc) 
  (with ((location port line col _ xoff) loc)
    [line: line col: col xoff: xoff]))

(def stream-test
  (test-suite "Test :std/parsec/prim"
 (test-inline
   test-case: "Test Token"
   > (def str "Test \n Tokenizer")
   > (def prt (open-input-string str))
   > (def strm (make-tracking-stream str))
   
   > (TokenReader-token prt)
   #\T
   > (map (lambda _
   	 (using (t strm : TokenReader)
   	   (t.token char-alphabetic?)))
          (make-list 5))
   (#\T #\e #\s #\t #f)
   > (map (lambda _ (TokenReader-token strm (? (not char-alphabetic?))))
          (make-list 4))
   (#\space #\newline #\space #f)
   > (equal? (tracking-stream-lines strm)
   	  [(string-contains str "\n")])
   #t
   > (location-line (Location-location strm))
   1
   > (def port (open-input-string "asd"))
   > (using (s port : Stream) (s.token))
   #\a)
 (test-inline
   test-case: "Test Stream"
   )
 (test-inline
   test-case: "Test run-parsecT"
   > (def (noparser string)
       [['thing string ...]
        ['second-thing string ...]])
   
   > (run-parsecT noparser "string")
   thing
   > (def (failparser _) [])
   > (run-parsecT failparser "string")
   #f
   > (run-parsecT failparser "string" Nothing: (void))
   #!void
   > (map car (run-parsecT noparser "s" match: #f))
   (thing second-thing)
   > (run-parsecT noparser "s" match: caadr)
   second-thing)
 (test-inline
   test-case: "Test parser-bind"
   > (def (p-or p a b)
       (using ((p : ParsecT)
               (cnd p : Or))
         (def (xoff)
   	(p.state (lambda (s) 
     		   (using (l (Location-location s) :- location)
     		     [l.xoff s ...]))))
        (def Nope (gensym))
        (def err #f)
         (du p
   	start <- (xoff)
   	res <- (cnd.or
   		(p.catch a (lambda (e) (set! err e) (p.return Nope)))
   		(p.return Nope))
   	end <- (if (eq? Nope res) (xoff) (p.return #f))
   	(cond ((not end) (p.return res))
   	      ((and end (= start end)) b)
   	      (else (if err (p.return err) (p.fail)))))))
   
   > (using (p (current-parsec) : ParsecT)
       (p.run (p-or p (p.fail) (p.return 42)) " "))
   42
   > (using (p (current-parsec) : ParsecT)
       (p.run (p-or p (p.>> (p.token) (p.fail)) (p.return 42)) " "))
   #f
   
   > (def P (ParsecT (current-parsec)))
   > (using (P :- ParsecT) 
       (P.run (p-or P (P.throw "Error Here") (P.return 42)) " "))
   42
   > (def e 
       (using (P :- ParsecT) 
         (P.run (p-or P (P.>> (P.token) (P.throw "Error Here")) (P.return 42)) " ")))
   > (error-message e)
   "Error Here"
   > (du (p (current-parsec) : ParsecT)
       (p.run (parser-bind p (p.token)
              p.return (cut list 'consumed <>))
        "qwerty"))
   (consumed #\q)
   > (du (p (make-parsecT) : ParsecT)
       (p.run (parser-bind p (p.return 'not-consumed)
              p.return identity
              identity (cut list 'empty <>))
        "qwerty"))
   (empty not-consumed)
   > (def e1 (du (p (make-parsecT) : ParsecT)
       (p.run (parser-bind p (p.>> (p.token) (p.throw "Monad Error"))
              p.return identity
              (cut list 'error-consumed <>))
        "qwerty")))
   > (with ([name err] e1) [name (error-message err)])
   (error-consumed "Monad Error")
   > (def e2 (du (p (make-parsecT) : ParsecT)
       (p.run (parser-bind p (p.throw "Monad Error")
              p.return identity identity identity 
              (cut list 'error-not-consumed <>))
        "qwerty")))
   > (with ([name err] e2) [name (error-message err)])
   (error-not-consumed "Monad Error"))
 (test-inline
   test-case: "Test parser-bind"
   > (using (p (current-parsec) : ParsecT)
       (p.run (parsec-plus p (p.fail) (p.return 42)) " "))
   42
   > (error-message
      (using (p (current-parsec) : ParsecT)
       (p.run (parsec-plus p (p.throw "error") (p.return 42)) " ")))
   "error"
   > (def e
      (using (p (current-parsec) : ParsecT)
        (p.run (parsec-plus p (p.throw "error") (p.return 42))
   	    " "
   	    match: identity)))
   > (with ([(cons err _) rest ...] e) (error-message err))
   "error"
   > (with ([_ (cons n _)] e) n)
   42)
 (test-inline
   test-case: "Test ParsecT"
   > (def stream (open-input-string "asdfjkl;"))
   > (def my-parsecT (make-parsecT))
   > (run-parsecT (ParsecT-get my-parsecT) stream)
   > (run-parsecT (ParsecT-token my-parsecT char-alphabetic?) stream)
   #\a
   > (using (p my-parsecT : ParsecT)
      (p.run (p.token char-numeric?) stream))
   #f
   > (using (p my-parsecT : ParsecT)
      (p.run (p.token) stream))
   #\s
   > (using (p my-parsecT : ParsecT)
       (p.run
        (p.>>=
         (p.>> (p.token) (p.token))
         (lambda (f) (p.>>= (p.token) (lambda (j) (p.return [f j])))))
        stream))
   (#\f #\j)
   	   
   > (using (p my-parsecT : ParsecT)
       (p.run (du p
                (p.token)
   	     l <- (p.token)
   	     semi <- (p.token)
   	     (p.return [l semi]))
   	   stream))
   (#\l #\;))


  ))
