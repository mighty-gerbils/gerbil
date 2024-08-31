(import :std/monad/syntax :std/sugar
    (for-syntax :gerbil/expander :std/sugar)
        #;./transformer "transformer"
        #;./mid-level "char")
(export #t)
(begin-syntax (def (dot-identifier? id)
    (and (identifier? id)
         (let (id-str (symbol->string (stx-e id)))
	   (eqv? (string-ref id-str 0) #\.)))))

(defsyntax (do-parse stx)
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

(defrule (def-parse id forms ...) (def id (do-parse forms ...)))
