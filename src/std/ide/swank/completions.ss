(import
  :gerbil/expander
  :std/sugar
  :std/srfi/13
  :std/iter
  :std/srfi/1
  ./message
  ./context
  ./api)
(export #t)


(def (symbol-string-prefix? sym str)
  ;; is the string a prefix of the symbol?
  (string-prefix? str (symbol->string sym)))

(def (symbol-ns-prefix? sym str)
  ;; Is the string a namespace prefix of the symbol?
  (def symstr (symbol->string sym))
  (def sp? (string-prefix? str symstr))
  (and sp?
       (let (idx (string-index symstr #\#))
	 (and idx (< 1 idx)
	      (if (> (string-length str) idx)
		symstr
		(substring/shared symstr 0 (1+ idx)))))))

(def (find-completions str (cxt (swank-context)))
  (append
   (for/collect ((s (in-hash-keys
		     (expander-context-table cxt))
		    when (symbol-string-prefix? s str)))
     (symbol->string s))
   (if (not (string-prefix? "##" str)) []
       (map symbol->string
	    (##global-var-table-foldl
	     (lambda (prev this)
	       (if (symbol-string-prefix? this str)
		 (cons this prev)
		 prev))
	     [])))
   (map symbol->string
	(##global-var-table-foldl
	 (lambda (prev this) (if (symbol-ns-prefix? this str)
			  (cons this prev)
			  prev))
	 []))))

(def (common-prefix strings)
  (let (n +inf.0)
    (fold (lambda (x y) ;(displayln x " " y)
	    (set! n (min (string-prefix-length x (or y x)) n))
	    x)
	  #f strings) 
    (substring (car strings) 0 (inexact->exact n))))

(def-swank (swank:completions str pkg)
  (when (and (pair? pkg) (eq? 'quote (car pkg)))
    (set! pkg (eval pkg)))
  (let (comp (find-completions str (swank-context pkg)))
    (if (null? comp) 'nil
	[comp (common-prefix comp)])))
