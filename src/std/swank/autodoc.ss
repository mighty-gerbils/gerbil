(import :gerbil/expander :std/swank/message :std/sugar :std/swank/context :std/swank/api
	:std/srfi/13)
(export #t)

(def (swank-pp-proc-args args)
  (def (strim sym)
    (string->symbol
     (string-trim-both
      (symbol->string sym)
      (? (or (cut char=? <> #\_) char-numeric?)))))
  (let lp ((lst args))
    (if (null? lst) lst
	(with ([kar . kdr] lst)
	  (cons (strim kar)
		(if (pair? kdr) (lp kdr) (strim kdr)))))))

(def (swank-autodoc-procedure sym proc)
  (def form (##decompile proc))
  (if (not (and (pair? form) (eq? (car form) '##lambda)))
    `(,sym . /args/)
    (cons sym (swank-pp-proc-args (cadr form)))))

(def-swank (swank:autodoc lst . args)
  (try
   (if (eq? 'quote (car lst))
     (set! lst (cadr lst)))
  (let* ((sym (string->symbol (car lst)))
	 (id (swank-eval-in-context
	      `(gx#resolve-identifier ',sym))))
     (if (not id)
       `(:not-available t)
       `(,(##object->string
	   (if (syntax-binding? id)
	     (cons sym '/syntax/)
	     (let (val (swank-eval-in-context sym))
	       (if (procedure? val)
		 (try (swank-autodoc-procedure sym val)
		      (catch (e) `(,sym . /args/)))
		 sym
		  )))))))
  (catch (e)
    '(:not-available t))))
