(import :std/monad/syntax :std/sugar
    (for-syntax :gerbil/expander :std/sugar)
        #;./transformer "transformer"
        #;./mid-level "char")
(export #t)
(begin-syntax (def (dot-identifier? id)
    (and (identifier? id)
         (let (id-str (symbol->string (stx-e id)))
	   (eqv? (string-ref id-str 0) #\.)))))

(defsyntax (do-parsec stx)
     (syntax-case stx ()
    ((_ parser ps ...)
     (with-syntax ((@app (syntax-local-introduce '%%app))
		   (@parser (syntax-local-introduce '%%parse)))
    #'(let-syntax ((__app
                    (syntax-rules ()
                      ((_ rator rand (... ...))
                       (@app rator rand (... ...))))))
        (let-syntax ((@app
                      (lambda (stx)
                        (syntax-case stx ()
                          ((_ rator . args)
                           (dot-identifier? #'rator)
                             (with-syntax ((method (stx-identifier #'rator '@parser #'rator)))
                               (syntax/loc stx
                                 (method . args))))
                          ((_ . args)
                           (syntax/loc stx
                             (__app . args)))))))
	  (du (@parser (current-parsec) : Parsec)
	    parser ps ...)))))))

(defrule (def-parsec id forms ...) (def id (do-parsec forms ...)))

(defsyntax (def-parsec-bnf stx)
  (def (expand-body forms)
    (with-syntax (((frms ...)
		   (stx-foldr
		    (lambda (x xs)
		      (if (and
			    (stx-pair? xs)
			    (identifier? (stx-car xs))
			    (free-identifier=?
			     (stx-car xs) #'::=))
			[]
			(cons x xs)))
		    [] forms))
		  (forms forms))
      (syntax-case #'(frms ...) ()
	((foo ...)	 
	 #'(do-parsec frms ...)))))
  (def (expand-tail forms)
    (with-syntax* (((rest ...)
		   (let lp ((forms forms))
		     (if (stx-null? forms) forms
		    (let (id (and (not (stx-null? (stx-cdr forms)))
				  (stx-car (stx-cdr forms))))
		      (if (and (identifier? id)
			        (free-identifier=?
				 id #'::=))
			forms
			(lp (stx-cdr forms))))))))
      (if (stx-null? #'(rest ...))
	#'(begin rest ...)
	#'(def-parsec-bnf rest ...))))
  (syntax-case stx (:body :tail)
    ((macro ID cceq forms ...)
     (with-syntax ((body (expand-body #'(forms ...)))
		   (tail (expand-tail #'(forms ...))))
       #'(begin (def ID body) tail)))))
