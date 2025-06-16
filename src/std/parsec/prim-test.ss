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
   test-case: "Test parsec-plus"
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
   test-case: "Test parsec-or"
   
   > (using (p (current-parsec) : ParsecT)
       (p.run (parsec-or p (p.fail) (p.return 42)) " "))
   42
   > (using (p (current-parsec) : ParsecT)
       (p.run (parsec-or p (p.>> (p.token) (p.fail)) (p.return 42)) " "))
   #f
   
   > (def e (using (p (current-parsec) : ParsecT) 
   	   (p.run (parsec-or p (p.throw "Error Here") (p.return 42))
   		  " " match: identity)))
   > (with ([(cons err s)] e) (error-message err))
   "Error Here"
   > (length e)
   1
   
   )
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
 (test-inline
   test-case: "Test parsec-bind"
   > (def (&pkey-bind 
   	parser (kont #f) 
   	cok: (cok (lambda (p v) (ParsecT-return p `(consumed ,v))))
   	cerr: (cerr (lambda (p)  (ParsecT-return p 'consumed-but-failed)))
   	eok: (eok (lambda (p v) (ParsecT-return p `(empty ,v))))
   	eerr: (eerr (lambda (p)  (ParsecT-return p 'empty-but-failed))))
       (def parsec (current-parsec))
       (cut ParsecT-run
   	 parsec (parsec-bind
   		 parsec parser (or kont (cut ParsecT-return parsec <>))
   		 cok cerr eok eerr)
   	 <>))
   > (defrule (pkey-bind p rest ...)
       (using (p (current-parsec) : ParsecT)
         (&pkey-bind rest ...)))
   
   > ((pkey-bind p (p.token)) "qwerty")
    (consumed #\q)
   > ((pkey-bind p (p.return "unconsumed")) "qwerty")
   (empty "unconsumed")
   > ((pkey-bind p (p.>> (p.token) (p.fail))) "qwerty")
   consumed-but-failed
   > ((pkey-bind p (p.>> (p.return "never see this") (p.fail))) "qwerty")
   empty-but-failed)

  ))
