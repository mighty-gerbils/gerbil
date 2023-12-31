(import :std/srfi/13)
(export #t)

;;; This source file is tangled from README,org

(def (sxml-element? t) (and (pair? t) (symbol? (car t))))
(def (sxml-element-attributes el)
  (match el
    ([name [(eq? '@) attr ...] _ ...] attr)
    (else #f)))

(def current-sxml-output-port (make-parameter (current-output-port)))
(def current-sxml-output-xml? (make-parameter #f))

(def (write-sxml
      sxml
      port: (port (current-sxml-output-port))
      indent: (indent #f)
      xml?: (xml? (current-sxml-output-xml?))
      quote-char: (quote-char #\"))
  (def args [port: port indent: indent xml?: xml? quote-char: quote-char])
  
  (match sxml
    ([(? symbol? sym) _ ...]
     (if (eqv? (string-ref (symbol->string sym) 0) #\*)
       (apply write-sxml-special-tag sxml args)
       (apply write-sxml-element sxml args)))
    ((? pair?) (for-each (cut apply write-sxml <> args) sxml))
    ((? (or null? not)) (void))
    ((? procedure?) (apply write-sxml (sxml) args))
    (else (write-sxml-atom sxml port: port in-attribute?: #f))))

(def (write-sxml-atom
      thing
      port: (port (current-sxml-output-port))
      in-attribute?: (in-attribute? #f)
      quote-char: (quote-char #\"))
  
  (def html-character-escapes
    '((#\< . "&lt;")
      (#\> . "&gt;")
      (#\& . "&amp;")
      (#\" . "&quot;")
      (#\' . "&apos;")))

  (def (escape-char? char)
    (case char
      ((#\" #\') in-attribute?)
      ((#\< #\> #\&) #t)
      (else #f)))
       
  (cond
   ((char? thing)
    (case thing
      ((#\' #\") (if (and in-attribute? (eqv? thing quote-char))
		   (write-string (assget thing html-character-escapes) port)
		   (write-char thing port)))
      ((#\< #\> #\&)
       (write-string (assget thing html-character-escapes) port))
      (else (write-char thing port))))
   ((string? thing)
    (let* ((str thing)
	   (start 0)
           (end (string-length str)))
      (let lp ((from start) (to start))
        (if (>= to end)
          (display (substring str from to) port)
	  (let (char (string-ref str to))
            (cond
             ((escape-char? char)
              (display (substring str from to) port)
              (write-sxml-atom
	       char port: port in-attribute?: in-attribute? quote-char: quote-char)
              (lp (+ to 1) (+ to 1)))
             (else
              (lp from (+ to 1)))))))))
   (else (write-sxml-atom (call-with-output-string "" (cut write thing <>))))))

(def (write-sxml-attribute
      attr
      port: (port (current-sxml-output-port))
      xml?: (xml? (current-sxml-output-xml?))
      quote-char: (quote-char #\"))

  (def (write-name n)
    (match n
    ((? symbol?) (write n port))
    ((? string?) (write-string n port))))
  (match attr
    ((cons name val)
     (when (and (null? val) xml?)
       (error "Invalid attribute, XML needs a value." attr))
     (set! val (if (not (pair? val)) val (car val)))
     (unless (not val)
       (write-name name)
       (when (not (null? val))
	 (write-char #\= port)
	 (write-char quote-char port)
	 (write-sxml-atom
	  val in-attribute?: #t port: port quote-char: quote-char)
	 (write-char quote-char port))))
    ((? (or symbol? string?))
     (write-sxml-attribute
      [attr] port: port quote-char: quote-char xml?: xml?))
    ((? not) (void))))

(def (sxml-special-tag? t)
 (and (pair? t) (symbol? (car t)) (eqv? #\* (string-ref (symbol->string t) 0))))
(def (write-sxml-special-tag sxml
      port: (port (current-sxml-output-port))
      xml?: (xml? (current-sxml-output-xml?))
      quote-char: (quote-char #\")
      indent: (indent #f))
  (def both-specials '("*comment*" "*top*" "*unencoded*"))
  (def xml-specials ["*cdata*" both-specials ...])
  (def html-specials ["*decl*" "*pi*" both-specials ...])
  (def tag (string-downcase (symbol->string (car sxml))))
  (def xml-special? (member tag xml-specials))
  (def html-special? (member tag html-specials))

  (def (display-pi-or-decl bdy)
    (when (car bdy) (display (car bdy) port))
    (for-each (lambda (x) (display " " port) (display x port))
	      (cdr bdy)))
    

  (unless (or (and xml? xml-special?) (and (not xml?) html-special?))
    (if xml? (error "Invalid XML tag" tag)
	(error "Invalid HTML tag" tag)))

  (let* ((name (car sxml))
	 (attributes (and (pair? (cadr sxml)) (eq? '@ (caadr sxml))
			  (sxml-element-attributes sxml)))
	 (body (if (not attributes) (cdr sxml) (cddr sxml))))

    (case (string->symbol tag)
      ((*top*)
       (write-sxml
	body port: port xml?: xml? quote-char: quote-char indent: indent))
      ((*comment*)
       (write-string "<!--" port) (for-each (cut display <> port) body)
       (write-string "-->" port))
      ((*cdata*)
       (write-string "<![CDATA[" port) (for-each (cut display <> port) body)
       (write-string "]]>" port))
      ((*decl*)
       (write-string "<!" port) (display-pi-or-decl body) (write-string ">" port))
      ((*pi*)
       (write-string "<?" port) (display-pi-or-decl body) (write-string "?>" port))
      ((*unencoded*) (for-each (cut display <> port) body))))

  (void))

(def current-indentation-width (make-parameter 0))

(def current-html-void-tags
  (make-parameter
   '(area base br col command embed hr img input keygen
     link meta param source track wbr)))

(def (html-void-tag? name)
  (member name (current-html-void-tags)
	  (lambda xy (apply string-ci= (map symbol->string xy)))))

(def current-html-raw-tags
  (make-parameter '(script style xmp)))

(def (html-raw-tag? name)
  (member name (current-html-raw-tags)
	  (lambda xy (apply string-ci= (map symbol->string xy)))))

(def (write-sxml-element
      el
      port: (port (current-sxml-output-port))
      indent: (maybe-level #f)
      xml?: (xml? (current-sxml-output-xml?))
      quote-char: (quote-char #\"))
  (def name (car el))
  (def attrs (sxml-element-attributes el))
  (def body (if attrs (cddr el) (cdr el)))

  (def (indent (end #f))
    (def n (if end maybe-level (current-indentation-width)))
    (when maybe-level
      (write-char #\newline port)
      (let lp ((n n)) (write-char #\space port)
	   (when (>= n 1) (lp (1- n))))))

  (parameterize ((current-indentation-width
		  (+ (current-indentation-width) (or maybe-level 0))))
    ;; Open Tag
    (write-char #\< port)
    (write-string (symbol->string name) port)
    (when attrs
      (for-each
	(lambda (attr)
	  (write-char #\space port)
	  (write-sxml-attribute
	   attr port: port xml?: xml? quote-char: quote-char))
	attrs))
    (unless (html-void-tag? name) (indent))
    (when (and xml? (html-void-tag? name))
      (write-char #\space port)
      (write-char #\/ port))
    (write-char #\> port)
    ;; Body
    (if (and (not xml?) (html-raw-tag? name))
      (for-each (cut display <> port) body)
      (write-sxml
       body port: port xml?: xml?
       quote-char: quote-char
       indent: (and maybe-level (current-indentation-width))))
    ;; End Tag
    (unless (html-void-tag? name)
      (write-char #\< port) (write-char #\/ port)
      (write-string (symbol->string name) port)
      (indent #t) (write-char #\> port)))
  (void))
