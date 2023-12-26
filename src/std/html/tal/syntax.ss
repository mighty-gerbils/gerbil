(import :std/sugar (for-syntax :std/text/utf8) :std/text/utf8
	  (for-syntax :std/error) :std/error
	  (for-syntax :std/misc/ports) :std/misc/ports
	  (for-syntax :std/source) :std/source
	  (for-syntax :gerbil/runtime/syntax)
	  :std/html/parser :std/html/tal/toplevel
      (for-syntax :std/html/tal/expander) :std/html/tal/expander)
(export #t)
(def current-tal-output-port (make-parameter (current-output-port)))

(defrule (tal:write thing)
  (let ((t thing)
        (p (current-tal-output-port)))
    (if (u8vector? t) (write-u8vector t p)
        (display t p))
    ""))

(defrule (tal:stringify thing)
  (let ((str thing))
    (if (string? str) str
	(if (not str) "" (with-output-to-string "" (cut display str))))))

(defstruct tal:switch-value (e))
(def current-tal-switch (make-parameter #f))

(defsyntax (tal:switch-test stx)
  (syntax-case stx ()
    ((_ (value test: test))
     #'(let* ((ts (current-tal-switch))
	      (tv (and (tal:switch-value? ts)
		       (tal:switch-value-e ts))))
	 (and ts (test tv value))))
    ((macro else:) #'(macro (#t test: (lambda _ #t))))
    ((macro value) #'(macro (value test: equal?)))))

(defrule (tal:switch exp body ...)
  (parameterize ((current-tal-switch (make-tal:switch-value exp)))
    body ...))

(defrule (tal:case exp body ...)
  (when (tal:switch-test exp)
    (current-tal-switch #f)
    body ...))

(defrule (tal:html sxml)
  (tal:write
   (u8vector-concatenate
    (map (lambda (x)
	   (cond
	    ((u8vector? x) x)
	    ((string? x) (string->utf8 x))
	    (else (call-with-output-u8vector #u8() (cut write x <>)))))
	 (cdr (sxml->tal-form sxml))))))

(def current-tal-catcher (make-parameter #f))

(extern namespace: #f RuntimeException-exception)
(def (tal-error-to-string e)
  (cond ((RuntimeException? e)
	 (tal-error-to-string (RuntimeException-exception e)))
	(else (or (error-message e)
		  (call-with-output-string
		   ""
		   (lambda (p) (parameterize ((current-error-port p))
			    (display-exception e))))))))

(def current-tal:on-error
  (make-parameter
   (lambda (e) (tal:write (html-escape (string-append
		      "ERROR: " (tal-error-to-string e)))))))

(defsyntax (tal:form stx)
 (syntax-case stx (tal:form)
   ((_ out rest ...)
    (stx-string? #'out)
    (let* ((str (stx-e #'out))
	   (vec (string->utf8 str)))
      (with-syntax ((u8v vec))
	#'(begin (write-u8vector u8v (current-tal-output-port))
		 (tal:form rest ...)))))
   ((_ (tal:form nest ...) rest ...)
    #'(tal:form nest ... rest ...))
   ((_ form rest ...)
    #'(begin ;;(tal:write "Where are we") (displayln 'form)
	(let (tal-raise? (current-tal-catcher))
	  (try
	   (let (u8v (call-with-output-u8vector
		      #u8() (lambda (p) (parameterize ((current-tal-output-port p))
				     form))))
	     (write-u8vector u8v (current-tal-output-port)))
	   (catch (e)
	     (if tal-raise? (raise e)
		 ((current-tal:on-error) e)))))
	     (tal:form rest ...)))
   ((_) #'(void))))

(defsyntax (define-TAL stx)
  (syntax-case stx ()
    ((_ (name args ...) str)
     (stx-string? #'str)
     #'(define-TAL (name args ...) string: str))
    ((_ (name args ...) file: pathname)
     (stx-string? #'pathname)
     (let* ((file (stx-e #'pathname))
	    (locat (stx-source stx))
            (con (##locat-container locat))
	    (path (##container->path con))
	    (dir (if path (path-directory path) (current-directory)))
	    (str (read-file-string (path-expand file dir))))
       (with-syntax ((syn str))
	 #'(define-TAL (name args ...) string: syn))))
    ((macro (name args ...) string: str)
     (let* ((nname  (stx-e #'name))
	    (aargs (stx-e #'(args ...)))
	    (mod (make-symbol (gensym) nname '::module))
            (exprt (make-symbol (gensym) nname '::proc)))
       (datum->syntax
	   #'name
	 `(begin
	    (module ,mod
	      (export (rename-out #t (,nname ,exprt)))
	      (import :std/contract :std/interface :std/sugar :std/text/utf8
		      :std/html (rename-in :std/html/tal/iter (tal:repeat? tal-iter?))
		      :std/html/tal/toplevel :std/html/tal/expander
		      :std/html/tal/syntax)
	      (def (,nname ,@aargs)
		,(html->tal-form (stx-e #'str))))
	    (import ,mod)
	    (def ,nname ,exprt)))))))
