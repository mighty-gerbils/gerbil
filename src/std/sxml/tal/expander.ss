(import :std/misc/alist :std/sxml/tal/toplevel :std/sxml/html/parser :std/format)
(export #t)

(def (fmt sym . args) (apply format (symbol->string sym) args))

(def tal-end
  (lambda (tag attrs parent-seed seed v?)
    ;;(displayln "Got " tag seed " and pssed" parent-seed)
    (if (tal-attrs? attrs)
      (let (el (expand-tal-element tag attrs [] seed v?))
	[(cut push-toplevel-element el) ;]
	 (identity parent-seed) ...])
      (html-end tag attrs parent-seed seed v?))))

(def (html->tal-form html) (sxml->tal-form (html->sxml html end: tal-end)))
    
(def (tal-attr? attr attrs)
  (let (alist (member attr attrs (lambda (a b) (eq? a (and (pair? b) (car b))))))
    (and alist (car alist))))

(def (expand-tal-element tag attrs parent-seed seed v?)
  (def els [[tal:define? . expand-tal:define]
	    [tal:switch? . expand-tal:switch]
	    [tal:condition? . expand-tal:condition]
	    [tal:repeat? . expand-tal:repeat]
	    [tal:case? . expand-tal:case]
	    [tal:content? . expand-tal:content]
	    [tal:replace? . expand-tal:replace]
	    [tal:attributes? . expand-tal:attributes]
	    [tal:omit-tag? . expand-tal:omit-tag]
            [tal:on-error? . expand-tal:on-error]])
  (def (tal?)
    (let lp ((els els))
      (if (null? els) #f
	  (with* (([this rest ...] els)
		  ([t? . exp] this))
	    (if (t? attrs) exp (lp rest))))))
  (cond ((tal?) => (cut <> tag attrs parent-seed seed v?))
	(else 
	 (let (tag (html-end tag attrs parent-seed seed v?))
	   (sxml->tal-form tag)))))

(def (tal:define? attrs) (tal-attr? 'tal:define attrs))

(def (expand-tal:define tag attrs parent-seed seed virtual?)
  (def attr (tal:define? attrs))
     (with* (([_ bindings] attr) (globals []) (locals [])
	     (in (open-input-string bindings)))
       (def (push-g b) (set! globals (cons b globals)))
       (def (push-l b) (set! locals (cons b locals)))
       
       (let lp ()
	 (let* ((form (read in))
		(binding (if (keyword? form) (read in) form)))
	   ;(displayln form)
	   (unless (eof-object? binding)
	     (if (eq? form set!:)
	       (push-g binding)
	       (push-l binding))
	     (lp))))
       ['tal:form
	(if (null? globals) globals
	    [(cons 'begin (map (cut cons 'set! <>) globals))])
	...
	(if (null? locals)
	  (expand-tal-element tag (remove1 attr attrs) parent-seed seed virtual?)
	  ['let* (reverse locals) 
	    (expand-tal-element tag (remove1 attr attrs) parent-seed seed virtual?)
	    ])]))

(def (tal:switch? attrs) (tal-attr? 'tal:switch attrs))
(def (tal:case? attrs) (tal-attr? 'tal:case attrs))

(def (expand-tal:switch tag attrs parent-seed seed v?)
 (def attr (tal:switch? attrs))
 (with* (([_ str] attr) (in (open-input-string str)) (switch (read in)))
   ['tal:switch switch (expand-tal-element tag (remove1 attr attrs) parent-seed seed v?)]))

(def (expand-tal:case tag attrs parent-seed seed v?)
  (def attr (tal:case? attrs))
 ;; (displayln "ws" (call-with-output-string (cut write parent-seed <>)) "seed" seed)
 (with* (([_ str] attr) (in (open-input-string str)) (case (read in)))
   ['tal:case
     case (expand-tal-element tag (remove1 attr attrs) parent-seed seed v?)]))

(def (tal:condition? attrs) (tal-attr? 'tal:condition attrs))
(def (expand-tal:condition tag attrs parent-seed seed v?)
  (def attr (tal:condition? attrs))
  ;; (displayln attrs: attrs " ws" (call-with-output-string (cut write parent-seed <>)) "seed" seed)
 (with* (([_ str] attr) (in (open-input-string str)) (case (read in)))
   ['when case (expand-tal-element tag (remove1 attr attrs) parent-seed seed v?)]))

(def  (tal:repeat? attrs) (tal-attr? 'tal:repeat attrs))
(def (expand-tal:repeat tag attrs ps seed v?)
  (def attr (tal:repeat? attrs))
  (set! attrs (remove1 attr attrs))
  (with* (([_ str] attr)
	  ([var expression] (read (open-input-string str)))
	  (var.repeat (string->symbol
		       (string-append (symbol->string var) ".repeat")))
	  (repeat/var (string->symbol
		       (string-append "repeat/" (symbol->string var)))))
    `(let (,var.repeat (tal:repeat ,expression))
       (using (,repeat/var ,var.repeat : Repeat)
	 (let tal:loop ()
	   (unless (Repeat-end? ,repeat/var)
	     (let (,var (tal:repeat-next! ,var.repeat))
	       ,(expand-tal-element tag attrs ps seed v?)
	       (tal:loop))))))))

(def (tal:content? attrs) (tal-attr? 'tal:content attrs))

(def (expand-tal:content tag attrs parent-seed seed virtual?)
  (def cnt (tal:content? attrs))
  (with* (([_ content] cnt)
	  (type text:)
  	  (body [])
  	  (p (open-input-string content)))
    (let lp ((bdy []))
      (def form (read p))
      (if (and (null? bdy) (keyword? form))
  	(begin (if (member form [text: as-is: raw:])
		 (set! type form)
  		 (error "Unknown content type" form))
	       (lp []))
  	(if (eof-object? form)
  	  (set! body (reverse bdy))
  	  (lp (cons form bdy)))))
	
    (when (null? body) (set! body [""]))

    (set! body (cons 'begin body))

    (unless (eq? type raw:)
      (set! body
	`(let ((%body ,body))
	   (if (eq? %body default:)
	     ,(sxml->tal-form (reverse seed))
	     ,['tal:write (if (eq? type as-is:) '%body
			      `(html-escape (tal:stringify %body)))]))))
        

    (expand-tal-element
     tag (remove1 cnt attrs) parent-seed
     [(cut push-toplevel-element body)] virtual?)))

(def (tal:replace? attrs) (tal-attr? 'tal:replace attrs))

(def (expand-tal:replace tag attrs parent-seed seed virtual?)
  (def attr (tal:replace? attrs))
  (with* (([_ content] attr) (type text:) (body [])
	  (p (open-input-string content)))
    (let lp ((bdy []))
      (def form (read p))
      (if (and (null? bdy) (keyword? form))
  	(begin (if (member form [text: as-is: raw:])
		 (set! type form)
  		 (error "Unknown content type for replace" attr))
	       (lp []))
  	(if (eof-object? form)
  	  (set! body (reverse bdy))
  	  (lp (cons form bdy)))))
	
    (when (null? body) (set! body [""]))

    (set! body (cons 'begin body))
    (unless (eq? type raw:)
      (set! body ['tal:write (if (eq? type as-is:) body
				 `(html-escape (tal:stringify ,body)))]))

    body))

(def (tal:on-error? attrs) (tal-attr? 'tal:on-error attrs))

(def (expand-tal:on-error tag attrs parent-seed seed virtual?)
  (def attr (tal:on-error? attrs))
  (with* (([_ handler] attr) (type text:) (body [])
	  (p (open-input-string handler)))
    (let lp ((bdy []))
      (def form (read p))
      (if (and (null? bdy)
	       (or (keyword? form) (eq? form 'ignore)))
  	(begin (if (member form [text: as-is: raw: ignore: 'ignore])
		 (set! type form)
  		 (error "Unknown content type for replace" attr))
	       (lp []))
  	(if (eof-object? form)
  	  (set! body (reverse bdy))
  	  (lp (cons form bdy)))))
    ;;(displayln "Type: " type " body: " body)

    (when (null? body) (set! body [""]))
    
    (set! body (cons 'begin body))
    (unless (member type [raw: 'ignore ignore:])
      (set! body ['tal:write (if (eq? type as-is:) body
				 `(html-escape (tal:stringify ,body)))]))
    `(try
      (let (u8v (call-with-output-u8vector
		 #u8() (lambda (p) (parameterize ((current-tal-output-port p))
			(parameterize ((current-tal-catcher #t))
                      ,(expand-tal-element
			    tag (remove1 attr attrs) parent-seed seed virtual?))))))
	     (write-u8vector u8v (current-tal-output-port)))
	   (catch (err)
	     ,(if (member type ['ignore ignore:])
		  body
		  (expand-tal-element
		   tag (remove1 attr attrs) parent-seed
		   [(cut push-toplevel-element body)]
		   virtual?))))))

(def (tal:attributes? attrs) (tal-attr? 'tal:attributes attrs))

(def (expand-tal:attributes tag attrs parent-seed seed virtual?)
  (def _attrs (tal:attributes? attrs))
  (set! attrs (remove1 _attrs attrs))
  ;; (error _attrs)
  (with* (([_ attrs-str] _attrs)
  	  (alst (read (open-input-string
  		       (string-append "(" attrs-str ")")))))
    ;;(displayln "attrs:" attrs alst)
    (if (null? attrs) (set! attrs alst)
  	(for-each (lambda (kv) (with ([k . v] kv) (aset! attrs k v)))
  		  alst))
     ['tal:html
      ['quasiquote [tag
       ['@ (map (lambda (kv) `(,(car kv) ,['unquote (cadr kv)])) attrs) ...]
       ['unquote
	`(lambda ()
           (begin0 []
	     (push-toplevel-element
	      (call-with-output-u8vector
	       #u8() (lambda (p)
		       (parameterize((current-tal-output-port p))
			  ,(sxml->tal-form (reverse seed))))))))]]]]))

(def (tal:omit-tag? attrs) (tal-attr? 'tal:omit-tag attrs))

(def (expand-tal:omit-tag tag attrs parent-seed seed virtual?)
  (def attr (tal:omit-tag? attrs))
  ;; (error _attrs)
  (with* (([_ str] attr)
  	  (in (open-input-string
  	       (string-append "(" str ")")))
	  (cnd (read in)))
    
    (if (null? cnd)
      (sxml->tal-form (reverse seed))
      ['if (cons 'begin cnd)
	(sxml->tal-form (reverse seed))
	(expand-tal-element
	 tag (remove1 attr attrs) parent-seed seed virtual?)])))
