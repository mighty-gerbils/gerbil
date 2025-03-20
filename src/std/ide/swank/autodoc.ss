(import :gerbil/expander
	:std/sugar
	:std/format
	:std/srfi/13
	
	:std/ide/swank/message
	:std/ide/swank/context
	:std/ide/swank/api
	
	:gerbil/compiler/optimize-base
	:gerbil/compiler/optimize)
(export #t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Completions, Autodoc and Signature
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; search for a procedure in gambit-procedures
;; returns the procedure symbol if it finds it

(optimizer-info-init!)
(def src
  (getenv "GERBIL_SOURCE"
	  (path-expand "src/" (gerbil-home))))

(try
 (import-module
  (path-expand "gerbil/builtin.ssxi.ss" src) #t #t)
 (import-module
  (path-expand "gerbil/builtin-inline-rules.ssxi.ss" src) #t #t)
 (let* ((lpath  (path-expand "lib/gerbil/runtime/" (gerbil-home)))
	(fs (filter (cut string-suffix? ".ssxi.ss" <>)
		    (directory-files lpath)))
	(mods (map (cut path-expand <> lpath) fs)))
   (for-each (cut import-module <> #t #t) mods))
 (catch (_) #f))

(def (swank-pp-proc-args args)
  (def (strim sym)
    (string->symbol
     (string-trim-both
      (symbol->string sym)  
      (? (or (cut char=? <> #\_) char-numeric?)))))
  (if (not (list? args)) args
      (let lp ((lst args))
	(if (null? lst) lst
	    (with ([kar . kdr] lst)
	      (cons (strim kar)
		    (if (null? kdr) kdr
			(if (pair? kdr) (lp kdr) (strim kdr)))))))))

(def (swank-autodoc-procedure sym proc)
  (def name (##procedure-name proc))
  (def opti (and name (optimizer-lookup-type name)))
  (def sig (and opti (!procedure? opti) (!procedure-signature opti)))
  (def ret (and sig (!signature? sig) (!signature-return sig)))
  (def args (and sig (!signature? sig) (!signature-arguments sig)))
  (def call (cons sym args))
  

  (if opti (format "~a => ~a" call ret)
      (let (form (##decompile proc))
	(cons sym (if form (swank-pp-proc-args (cadr form)) '/args/)))))

(def (autod sym)
  (try 
   (let* ((sym (and (string? sym) (string->symbol sym)))
	  (id (and sym (swank-eval-in-context `(gx#resolve-identifier ',sym)))))
     (if (not id)
       `(:not-available t)
       (if (syntax-binding? id)
	 (format "(~a /syntax/)" sym)
	 (let (val (swank-eval-in-context sym))
	   (if (procedure? val)
	     (try (swank-autodoc-procedure sym val)
		  (catch (e) (format "(~a . t::t) => t::t")))
	     (format "~a" sym))))))
  (catch (e)
    '(:not-available t))))

(def cursor 'swank::%cursor-marker%)

(def (cursor-symbol form (exit #f))
    (def (fnd)
      (when (pair? form)
	(foldl
	 (lambda (this prev)
		(cond
		 ((pair? this) (cursor-symbol this exit))
		 ((eq? this cursor) (exit prev))
		 ((equal? this "") prev)
		 
		 (else this)))
	 #f
	 form))
      #f)
    (if exit (fnd) 
	(call/cc (lambda (k) (set! exit k) (fnd)))))

(def-swank (swank:operator-arglist name module)
  (autod name))

(def-swank (swank:autodoc lst . args)
  (def d (autod (cursor-symbol lst)))
  (if (list? d) d [d]))
