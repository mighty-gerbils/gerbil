(import
      :std/interface :std/contract :std/instance :std/monad/syntax
      :std/sugar
      #;./transformer "transformer"
      #;./stream "stream")
    (export #t)
(def Nothing (gensym))
(def (Nothing? t) (eq? Nothing t))
(interface (ParsecCombinators ParsecT)
  (satisfy f) (eof)
  (any-token)
  (try p)
  (many p) (many1 p) (many-till p end))

(def (manyAccum P p)
(using (P : ParsecCombinators)
  (def (parse?)
    (du P
      soff <- (P.xoff)
      ret <- (P.or p (P.return Nothing))
      (if (Nothing? ret) (P.return ret)
	  (du P eoff <- (P.xoff)
	      (if (= soff eoff)
		(P.fail "combinator 'many' is applied to a parser that does not consume")
		(P.return ret))))))
  (def (recur)
    (du P kar <- (parse?)
	(if (Nothing? kar) (P.return '())
	    (du P kdr <- (recur)
		(P.return (cons kar kdr))))))
  (recur)))
		

(instance (P ParsecCombinators) (pt parsecT)
  ((try parser (Nothing (gensym)))
   (def (ret-stream la (p? #t))
     (using ((la :- lookahead-char-stream)
  	   (b la.bcr :- buffered-char-reader))
       (if (= b.lo b.hi) b.port b)))
   (using (inner pt.inner : ParsecT-inner)
     (du P
       orig-stream <- (P.state (lambda (s) [s (make-lookahead-char-stream s) ...]))
       ret <- (P.catch (inner.or parser (P.return [Nothing])) (lambda (e) (P.return [Nothing e ...])))
       new <- (P.state
        (lambda (s) 
  	(if (not (and (pair? ret) (eq? (car ret) Nothing)))
  	  ;; success!
            [ret orig-stream ...]
  	  ;; failure
  	  [Nothing (ret-stream s) ...])))
       (if (eq? new Nothing)
         (if (pair? ret) (P.return (cdr ret)) (P.fail))
         (P.return new)))))
  
  ((many p) (manyAccum P p))
  ((many1 p) (du P
  	     x <- p
  	     xs <- (manyAccum P p)
  	     (P.return (cons x xs))))
  ((many-till p end)
   (def scan
     (P.or (P.>> end (P.return []))
  	 (du P
  	   x <- p
  	   xs <- scan
  	   (P.return (cons x xs)))))
  
   scan)
    
  ((eof)
   (du P tok? <- (P.token eof-object? Nothing: Nothing)
     (if (Nothing? tok?) (P.zero) (P.return tok?))))
  ((any-token (Nothing #f))
   (du P tok? <- (P.token (? (not eof-object?)))
     (if (eq? tok? Nothing) (P.zero) (P.return tok?))))
  ((satisfy f)
   (du P tok? <- (P.token f Nothing: Nothing)
     (if (eq? tok? Nothing) (P.zero) (P.return tok?)))))
