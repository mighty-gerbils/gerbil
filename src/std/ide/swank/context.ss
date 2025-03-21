(import :gerbil/expander ./api ./message)
(export #t)

(def (swank-context (:mod (current-slime-package)))
  (def cxt
    (identity ;; make-top-context
     (cond
      ((string? :mod)
       (if (string=? "TOP" :mod)
	 (current-expander-context)
	 (swank-context
	  (string->symbol (string-append ":" :mod)))))
      ((not :mod) (current-expander-context))
      ((symbol? :mod) (import-module :mod #f #t))
      (else (error "Unknown Module" :mod)))))
  (parameterize ((current-expander-context cxt))
    ;; TODO: This should be a shadow context or something.
    (eval-syntax '(extern namespace: #f
		       swank:lookup-presented-object
		       swank:lookup-presented-object-or-lose
		       swank:get-presented-object
		       repl-result-history-ref))) 
  cxt)

(def (swank-eval-in-context form (cxt-name (current-slime-package)))
  (parameterize ((current-expander-context (swank-context cxt-name)))
    (eval form)))

(def (list-all-context-names)
  (##list-sort
   string<?
   ["TOP"
    (map
      (lambda (cxt)
	(symbol->string (expander-context-id cxt)))
      (filter module-context?
	      (map cdr
		   (hash->list
		   __module-registry))))
    ...]))

(def (swank-read-from-string-in-context str (cxt-name (current-slime-package)))
  (let (form
	(swank-eval-in-context
	 `(call-with-input-string
	   ,str
	   (lambda (p)
	     (input-port-readtable-set!
	      p
	      (readtable-eval-allowed?-set
	       (input-port-readtable p) #t))
	     (let lp ((form (read p)) (lst []))
	       (if (eof-object? form)
		 (reverse lst)
		 (lp (read p) (cons form lst))))))
	 cxt-name))
    (case (length form)
      ((0) (eof-object))
      ((1) (car form))
      (else (cons 'begin form)))))

(def-swank (swank:list-all-package-names . _)
  (list-all-context-names))

(def-swank (swank:set-package name)
  [name (if (equal? name "TOP") "TOP"
	    (string-append ":" name))])

