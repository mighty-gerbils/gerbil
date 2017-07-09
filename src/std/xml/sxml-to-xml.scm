;;
;; SXML to XML serializer
;;
;; Copyright (C) 2005-2008 Christian Jaeger
;; Copyright (C) 2009, 2010, 2013 Mikael More
;; Copyright (C) 2016 vyzo at hackzen.org
;;
;; Published under the same terms as Gambit: dual LGPL version 2.1 or Apache version 2.0 license.
;;
;; Contributions by Mikael released under MIT license.
;;
;; ## History
;; 2009-12-21: Added (*UNENCODED* ) tag to include unencoded strings.
;;             Made XHTML JavaScript attributes (onclick, onmousedown etc.) output unencoded.
;; 2010-03-26: Added quote-char argument, to give the possibility to use #\' as character using
;;             which to start and end XML attributes.
;; 2010-03-26: Made div, span, iframe, textarea, link, script and style tags encode to <tag></tag> even
;;             if empty, for XHTML compliancy.
;; 2013-03-11: Made *UNENCODED* take several arguments, this makes good sense.
;; 2016-01-29: namespaced for gerbil, some v4.8 change porting

(declare
  (fixnum)
  (block)
  (standard-bindings)
  (extended-bindings))

(##namespace ("std/xml/sxml-to-xml#"
              xml-declaration:xml1.0-utf8
              xml-header:xhtml-1.0-transitional-en
              valid-quote-chars
              xml-declaration:xml1.0-utf8
              xml-header:xhtml-1.0-transitional-en
              sxml-unencoded
              sxml-char*
              sxml-char
              sxml-nbsp
              with-sxml-element/else
              with-sxml-element
              with-sxml-element-attributes/else
              sxml-element-attribute-ref
              maybe-sxml-element-attribute-alist
              sxml-element:add-attributes-unless-present
              stream-for-each
              last-pair
              append!
              sxml-element?
              @sxml-attributes
              @string>>
              @char>>
              @symbol>>
              @car
              @cdr
              @cddr
              promise?
              @attrlist>>
              @string>>htmlquoted
              html-whitespace?
              html-hyphenationchar?
              html-wordchar?
              @char>>htmlquoted
              atom-or-list>>htmlquoted
              atom>>htmlquoted
              indentation-width
              @sxml-element>>
              sxml>>fast
              @sxml>>fast
              sxml-element:add-attribute
              sxml>>html*
              sxml>>xhtml*
              sxml>>xml*
              make-sxml>>
              sxml>>html-fast
              sxml>>html
              sxml>>xhtml-fast
              sxml>>xhtml
              sxml>>xml-fast
              sxml>>xml
              pretty-filer
              sxml>>pretty-xml-file
              sxml>>pretty-xhtml-file
              fragment-stringifyer
              fragment-stringifyer2
              sxml->html-string-fragment
              sxml->xml-string-fragment
              sxml->xhtml-string
              serializeprocess-string-reset!
              serializeprocess-string-nextchar!
              chars-in-a-row-allowed
              paramdata make-param-data param-data?
              paramdata-chars-in-a-row paramdata-chars-in-a-row-set!
              paramdata/chars-in-a-row-reset!
              paramdata/chars-in-a-row-inc!
              next-separator
              ))

(define valid-quote-chars '(#\" #\'))

; The following regards HTML/XHTML though as XML is so frequently used, we include it here.
(define xml-declaration:xml1.0-utf8 "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n")
(define xml-header:xhtml-1.0-transitional-en "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n")


; (sxml->xml-string-fragment `(raw ,(xml-unencoded "&nbsp;"))) ="<raw>&nbsp;</raw>"
(define sxml-unencoded string->uninterned-symbol)
(define (sxml-char* char) (sxml-unencoded (string-append "&" (symbol->string char) ";")))
(define-macro (sxml-char char) `(sxml-char* ',char))
(define sxml-nbsp (sxml-char nbsp))

(define (with-sxml-element/else elt cont-name-attrs-body
                                #!optional
                                (cont-else #f))
  (if (not cont-else)
      (set! cont-else
            (lambda () (error "not an sxml element:" elt))))
  (if (pair? elt)
      (let ((maybe-name (car elt)))
        (if (symbol? maybe-name)
            (let ((has-attrs (lambda (attrs rest)
                               (cont-name-attrs-body maybe-name attrs rest)))
                  (no-attrs (lambda (rest)
                              (cont-name-attrs-body maybe-name '(@) rest))))
              (let ((maybe-2nd (cdr elt)))
                (if (pair? maybe-2nd)
                    (let ((2nd-val (car maybe-2nd)))
                      (if (and (pair? 2nd-val)
                               (eq? (car 2nd-val)
                                    '@))
                          (has-attrs 2nd-val
                                     (cdr maybe-2nd))
                          (no-attrs maybe-2nd)))
                    (no-attrs maybe-2nd))))
            (cont-else)))
      (cont-else)))

(define (with-sxml-element elt cont-name-attrs-body)
  (with-sxml-element/else elt cont-name-attrs-body))

(define (with-sxml-element-attributes/else element yes no)
  (with-sxml-element element
                     (lambda (name attrs body)
                       (let ((alis (cdr attrs)))
                         (if (pair? alis)
                             ;;(yes alis)
                             (yes attrs);; Wed, 31 May 2006 12:13:12
                                        ;; +0200: "attributes" soll
                                        ;; MIT @ sein. hatt ich doch
                                        ;; mal entschlossen. und
                                        ;; untige funcs sind sonst
                                        ;; falsch.
                             (no))))))

(define (sxml-element-attribute-ref element attrname #!optional (missing #!unbound)) ;; attrname must be a symbol
  (with-sxml-element-attributes/else
   element
   (lambda (attrs)
     (cond ((assoc attrname (cdr attrs))
            => cdr)
           (else #f)))
   (lambda ()
     (if (eq? missing #!unbound)
         (error "missing sxml-attribute:" attrname)
         missing))))


(define (maybe-sxml-element-attribute-alist element)
  (with-sxml-element-attributes/else element
                                     cdr
                                     (lambda ()
                                       #f)))

(define (sxml-element:add-attributes-unless-present element alis)
  (let ((newattrs
         (cons '@
               (cond ((maybe-sxml-element-attribute-alist element)
                      => (lambda (present-alis)
                           (let lp ((alis alis)
                                    (prepend '()))
                             (if (null? alis)
                                 (begin
                                   ;;(step)
                                   (append! prepend present-alis))
                                 (let* ((p (car alis))
                                        (newkey (car p)))
                                   (if (assoc newkey present-alis)
                                       (lp (cdr alis)
                                           prepend)
                                       (lp (cdr alis)
                                           (cons p prepend))))))))
                     (else
                      alis)))))
    ;; now check (todo: make namespaceetc aware!..) if attributes are
    ;; already present
    (let* ((nam (car element))
           (r1 (cdr element))
           (possibly-oldattrs (and (pair? r1)
                                   (car r1)))
           (have-oldattrs (and (pair? possibly-oldattrs)
                               (eq? '@ (car possibly-oldattrs))))
           (body (if have-oldattrs
                     (cdr r1)
                     r1)))
      (cons nam (cons newattrs body)))))


(define (stream-for-each proc strm)
  (let loop ((strm strm))
    (let ((strm (force strm)))
      (if (##pair? strm)
          (begin (proc (##car strm))
            (loop (##cdr strm)))
          (if (##not (##null? strm))
              (error "stream-for-each: improper stream:" strm))))))


(define (last-pair lis)
  ;;(check-arg pair? lis last-pair)
  (let lp ((lis lis))
    (let ((tail (cdr lis)))
      (if (pair? tail) (lp tail) lis))))

(define (append! . lists)
  ;; First, scan through lists looking for a non-empty one.
  (let lp ((lists lists) (prev '()))
    (if (not (pair? lists)) prev
        (let ((first (car lists))
              (rest (cdr lists)))
          (if (not (pair? first)) (lp rest first)

              ;; Now, do the splicing.
              (let lp2 ((tail-cons (last-pair first))
                        (rest rest))
                (if (pair? rest)
                    (let ((next (car rest))
                          (rest (cdr rest)))
                      (set-cdr! tail-cons next)
                      (lp2 (if (pair? next) (last-pair next) tail-cons)
                           rest))
                    first)))))))


;; todo use those from cj-sxml lib
(define (sxml-element? l)
  (and (pair? l)
       (symbol? (##car l))))

(define (@sxml-attributes l) ;; l must be an sxml-element; returns the
  ;; *rest* of the attribute list, or #f
  (let ((2ndpair (##cdr l)))
    (if (pair? 2ndpair)
        (let ((2nd (##car 2ndpair)))
          (if (and (pair? 2nd)
                   (eq? (##car 2nd) '@))
              (##cdr 2nd)
              #f))
        #f)))

(define @string>> ##write-string)
(define @char>> ##write-char)
(define (@symbol>> sym port)
  (@string>> (##symbol->string sym) port))

(define @car ##car)
(define @cdr ##cdr)
(define @cddr ##cddr)
(define promise? ##promise?) ;; promise? does not exist

(define (@attrlist>> attrlist port xml? quote-char)
  (cond
   ((pair? attrlist)
    (let ((d (@car attrlist)))
      (if (pair? d)
          (let ((key (@car d))
                (val (@cdr d)))
            (if (symbol? key)
                (begin
                  (let ((atom>>
                         (lambda (val)
                           (and val
                                (begin
                                  (@char>> #\space port)
                                  (@symbol>> key port)
                                  (@char>> #\= port)
                                  (@char>> quote-char port)
                                  (if (memq key '(onclick onchange onkeypress onkeydown onkeyup onmousedown onmouseup
                                                          onmousemove onload oninit onclose onunload))
                                      (@string>> val port)
                                      (atom>>htmlquoted val port #f xml? #t quote-char))
                                  (@char>> quote-char port))))))
                    (cond
                     ((pair? val)
                      (atom>> (@car val)))
                     ((null? val)
                      ;; empty attribute value. ok for html.
                      (if xml?
                          (error "missing value for attribute:" key)
                          (begin
                            (@char>> #\space port)
                            (@symbol>> key port))))
                     (else
                      (atom>> val)))))
                (error "attribute key is not a symbol:" key)
                ;; or treat the whole thing like elements, e.g. accept listwraps?
                ))
          ;; else something is strange.
          ;;(error "attrlist-display: invalid attrlist:" attrlist)))
          ;; nope, accept it, like in '(img (@ (src
          ;; "http://www.ethlife.ethz.ch/pix/favicon.png") (align
          ;; "absbottom") (alt "") #f (border 0)))
          ))
    (@attrlist>> (@cdr attrlist) port xml? quote-char))
   ((null? attrlist))
   (else
    (error "@attrlist>>: not a list:" attrlist))))

(define (@string>>htmlquoted str port count-chars? in-attributes? quote-char)
  (let ((len (##string-length str)))
    (let loop ((pos 0))
      (if (fx< pos len)
          (begin
            (@char>>htmlquoted (##string-ref str pos)
                               port
                               count-chars?
                               in-attributes?
                               quote-char)
            (loop (fx+ pos 1)))))))


(define (html-whitespace? char)
  (case char
    ((#\space #\newline #\return #\tab #\page) #t)
    (else #f)))

(define (html-hyphenationchar? char)
  (case char
    ((#\- #\~ ;; todo weitere.
          ) #t)
    (else #f)))

;; hmm.  basically everything that's not a word char is a word break.

(define (html-wordchar? char)
  (or (and (char>=? char #\a)
           (char<=? char #\z))
      (and (char>=? char #\A)
           (char<=? char #\Z))
      (case char
        ((#\xe4 #\xf6 #\xfc #\xc4 #\xd6 #\xdc #\xc7 #\xe7
                                                        #\x5f #\xc9 #\xe9 #\xc8 #\xe8 #\xe0 #\xc0) #t)
        (else #f))))

(define (@char>>htmlquoted char port count-chars? in-attributes? quote-char)
;   (if count-chars?
;       (if (html-wordchar? char)
; 	  (serializeprocess-string-nextchar! port)
; 	  (serializeprocess-string-reset!)))
  (cond ((cond ((and (eq? char #\') (eq? quote-char #\'))
                (if in-attributes?
                    "&apos;"
                    (begin (@char>> char port) #f)))

               ((and (eq? char #\") (eq? quote-char #\"))
                (if in-attributes?
                    "&quot;"
                    (begin (@char>> char port) #f)))
               (else

                (case char
                  ((#\<) "&lt;")
                  ((#\>) "&gt;")
                  ((#\&) "&amp;")
                  (else
                   (@char>> char port)
                   #f))))

         =>(lambda(str)
             (@string>> str port)))))


(define (atom-or-list>>htmlquoted value
                                  port
                                  count-chars?
                                  xml?
                                  in-attributes?
                                  maybe-level
                                  quote-char)
  ;;(since this is used only once, I could just as well integrate it
  ;;into sxml>>fast)
  (define subproc
    (lambda (item)
      (sxml>>fast item port xml? maybe-level quote-char)))
  (cond ((pair? value)
         (for-each subproc value))
        ((promise? value)
         (stream-for-each subproc value))
        (else
         (atom>>htmlquoted value port count-chars? xml? in-attributes? quote-char))))

(define (atom>>htmlquoted atom port count-chars? xml? in-attributes? quote-char)
  (let self ((atom atom))
    (cond ((string? atom)
           (@string>>htmlquoted atom port count-chars? in-attributes? quote-char))
          ((char? atom)
           (@char>>htmlquoted atom port count-chars? in-attributes? quote-char))
          ((symbol? atom)
           (@symbol>> atom port) ;;; I'm using this for outputting
           ;;; |&nbsp;| etc.; but maybe should
           ;;; use something else, for better
           ;;; error checking.(flattenedtags) ?
           ;; (serializeprocess-string-reset!)
           )
          ((null? atom)
           #|nothing|#)
          ((number? atom)
           (##display atom port))
          ((boolean? atom) ;; ##boolean? und ##number? gibts nicht.
           #|nothing|#)

          ;; text (or more general: atom) lists or streams: (no subelements!)
          ((pair? atom)
           (for-each self atom)) ;;"; das abschnittli kommt inzwischen 3mal vor."
          ((promise? atom)
           (stream-for-each self atom))

          (else
           (error "atom>>htmlquoted: unknown type of:" atom)))))


(define indentation-width 1)

(define (@sxml-element>> l port xml? maybe-level quote-char)
  ;   (serializeprocess-string-reset!)
  (let* ((next-level (and maybe-level
                          (+ maybe-level indentation-width)))
         (body->>> ;; proxy back to sxml>>fast
          (lambda (body)
            (lambda () (for-each (lambda (item)
                                   (sxml>>fast item port xml? next-level quote-char))
                                 body))))
         (nam (@car l))
         (is-comment (or (eq? nam '*COMMENT*) ;; upcase version is the one shown in the ref
                         (eq? nam '*comment*))) ;; dunno about the lowercase version.
         (is-cdata (or (eq? nam '*CDATA*)
                       (eq? nam '*cdata*)))
         (is-raw-out (eq? nam '*UNENCODED*)))
    (cond (is-comment
           (@string>> "<!--" port))
          (is-cdata
           (@string>> "<![CDATA[" port))
          (is-raw-out #!void)
          (else
           (@char>> #\< port)
           (@symbol>> nam port)))
    (let ((content (cond ((@sxml-attributes l) ;; well.. what should happen with *COMMENT* elements having attributes? being handled strangely currently, probably.
                          =>(lambda(attrlist)
                              (@attrlist>> attrlist port xml? quote-char)
                              (@cddr l)))
                         (else (@cdr l)))))
      (cond
       (is-comment
        (cond ((pair? content)
               ((body->>> content))
               (@string>> "-->" port))
              ((null? content)
               (@string>> "-->" port))
              (else
               (error "@sxml-element>>: improper list: " l))))
       (is-cdata
        ; (print "content=") (write content) (print ".\n\n") (force-output)
        (if (not (and (list? content) (= 1 (length content)))) (error "Invalid CDATA section."))
        (@string>> (car content) port)
        (@string>> "]]>" port))
       (is-raw-out
        (for-each
         (lambda (s)
           (if (not (string? s)) (error "Invalid *UNENCODED* content element." s))
           (@string>> s port))
         content))
       (else
        (let* ((maybe-indent>> (lambda (maybe-level)
                                 (if maybe-level
                                     (begin
                                       (@char>> #\newline port)
                                       (let lp ((i maybe-level))
                                         (if (> i 0)
                                             (begin
                                               (@char>> #\space port)
                                               (lp (- i 1)))))))))
               (out>>/body>> (lambda (body>>)
                               (maybe-indent>> next-level)
                               (@char>> #\> port)
                               (body>>)
                               (@char>> #\< port)
                               (@char>> #\/ port)
                               (@symbol>> (@car l) port)
                               (maybe-indent>> maybe-level)
                               (@char>> #\> port)))
               (end>> (lambda ()
                        (if xml? (begin
                                   (@char>> #\space port)
                                   (@char>> #\/ port)))
                        (@char>> #\> port))))
          (cond ((or (pair? content)
                     (memq nam '(iframe div span textarea link script style ul))) ; For XHTML support
                 (out>>/body>> (body->>> content))) ;; first I called it body->>> body>>/body. that would be sick
                ((null? content)
                 (end>>))
                (else
                 ;; (error "@sxml-element>>: improper list: " l)
                 (out>>/body>> (lambda () (sxml>>fast content port xml? next-level quote-char)))	;; (output a single element as opposed to a list) --todo:  should just use a for-each which accepts dotted lists.
                 ;; (end>>) hm why do I not need this?
                 ))))))))


;; item may be an atom, element, or list containing elements (tree).
(define (sxml>>fast item port xml? maybe-level quote-char)
  (if (and (port? port)
           (or (not maybe-level)
               (fixnum? maybe-level))
           (memq quote-char valid-quote-chars))
      (@sxml>>fast item port xml? maybe-level quote-char)
      (error "invalid input type(s):" port maybe-level quote-char)))


(define (@sxml>>fast item port xml? maybe-level quote-char)
  (let self ((item item))
    ;;(paramdata (make-paramdata 0));;UNFINISHED! not threadsafe like this.
    (cond
     ((pair? item)
      ;; is the first element a symbol?
      (if (sxml-element? item)
          (@sxml-element>> item port xml? maybe-level quote-char)
          (for-each self item)))
     ((promise? item) ;; IIRC this check is slow, right?, replace with
      ;; own one? (or maybe fix gambit)
      (stream-for-each self item))
     ((null? item))
     ((procedure? item)
      (@sxml>>fast (item) port xml? maybe-level quote-char))
     (else
      (atom-or-list>>htmlquoted item port #t xml? #f maybe-level quote-char)))))

;;FRAGE warum wenn ich doch atom schon habe, nicht die promise, null,
;;procedure, [und sogar pair?] ebenfalls dort drin?  [ hm war es zur
;;unterscheidung von rein rekursen vs andere ? (beim ein fügen von
;;maybe-level merk isch dass das ev schönisch? ?)]



(define (sxml-element:add-attribute el attributes)
  ;;;todo do it right. currently cheap and simple.
  `(,(car el)
    ,attributes
    ,@(cdr el)))


; (define (sxml>>html-fast item
; 			 #!optional
; 			 (port (current-output-port)))
;   (sxml>>fast item port #f #f))

(define (sxml>>html* item
                     #!optional
                     (port (current-output-port))
                     maybe-level
                     (quote-char #\"))
  (sxml>>fast item port #f
              (and maybe-level
                   (if (boolean? maybe-level)
                       0
                       maybe-level))
              quote-char))

(define (sxml>>xhtml* item
                      #!optional
                      (port (current-output-port))
                      maybe-level
                      (quote-char #\"))
  ;;(display "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\n" port)
  (display xml-declaration:xml1.0-utf8 port)
  (display xml-header:xhtml-1.0-transitional-en port)
  (let ((lang (or (sxml-element-attribute-ref item 'xml:lang #f)
                  (sxml-element-attribute-ref item 'lang #f)
                  "en")))
    (sxml>>fast (sxml-element:add-attributes-unless-present
                 item
                 `((xmlns "http://www.w3.org/1999/xhtml")
                   (xml:lang ,lang)
                   (lang ,lang)	;; (note: would be added (copied from
                   ;; xml:lang) by xmllint anyway if
                   ;; missing. but be kind here already)
                   ))
                port
                #t
                (and maybe-level
                     (if (boolean? maybe-level)
                         0
                         maybe-level))
                quote-char)))

;(define sxml>>xhtml sxml>>xhtml-fast)



(define (sxml>>xml* item
                    #!optional
                    (port (current-output-port))
                    maybe-level
                    (quote-char #\"))
  ;; find out which output encoding the port is using:
  ;; -> meinung fragen todo.
  ;;(display "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\n" port)
  (display "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n" port)
  (sxml>>fast item port #t
              (and maybe-level
                   (if (boolean? maybe-level)
                       0
                       maybe-level))
              quote-char))

;(define sxml>>xml sxml>>xml-fast)


(define (make-sxml>> sxml>>* maybe-level)
  (lambda (item port)
    (sxml>>* item
             port
             maybe-level)))

(define (sxml>>html-fast item #!optional (port (current-output-port)))
  ((make-sxml>> sxml>>html* #f) item port))

(define (sxml>>html item #!optional (port (current-output-port)))
  ((make-sxml>> sxml>>html* #t) item port))

(define (sxml>>xhtml-fast item #!optional (port (current-output-port)))
  ((make-sxml>> sxml>>xhtml* #f) item port))

(define (sxml>>xhtml item #!optional (port (current-output-port)))
  ((make-sxml>> sxml>>xhtml* #t) item port))

(define (sxml>>xml-fast item #!optional (port (current-output-port)))
  ((make-sxml>> sxml>>xml* #f) item port))

(define (sxml>>xml item #!optional (port (current-output-port)))
  ((make-sxml>> sxml>>xml* #t) item port))

(define (pretty-filer serialize)
  (lambda (item outpath #!optional noblanks)
    (let ((tmppath (string-append outpath
                                  "~"
                                  (number->string
                                   (random-integer 100000)))))
      (let ((p (open-process
                `(path: "xmllint" ;;ewig why path.but~egal
                        ;;arguments: ("--format" "-" "--output" ,tmppath)
                        ;;order plays a role
                        arguments: ("--output" ,tmppath
                                                ,@(if noblanks
                                                      '()
                                                      '("--format"))
                                                ;;"--noblanks"
                                                "-")
                        char-encoding: UTF-8
                        buffering: #t))))
        (with-exception-catcher
         (lambda (e)
           (with-exception-catcher
            (lambda (e2)
              (print "delete-file didn't succeed on: "tmppath))
            (lambda()
              (delete-file tmppath)
              (print "successfully deleted " tmppath)))
           (raise e))
         (lambda()
           ;;(close-input-port p) leads to 'Unknown error'
           (serialize item p)
           ;;(close-port p) leads to 'Unknown error'
           (close-output-port p)
           ;;(thread-sleep! 0.03) much faster than process-status but
           ;;of course unsafe in every regard
           (let ((r (process-status p) ;; sloooow.  aha: see _io.scm
                    ;; ##thread-sleep! loop /
                    ;; polling notice
                    ))
             (if (= r 0)
                 (rename-file tmppath outpath)
                 (error "sxml>>pretty-..-file: xmllint gave exit status: " r)))))))))

(define sxml>>pretty-xml-file (pretty-filer sxml>>xml-fast))
(define sxml>>pretty-xhtml-file (pretty-filer sxml>>xhtml-fast))


;; 'fragment' means, that it's output doesn't include a <?..?> line.
(define (fragment-stringifyer xml?)
  (lambda (item #!optional maybe-level (quote-char #\"))
    (let ((port (open-output-string '())))
      (sxml>>fast item port xml? maybe-level quote-char)
      (get-output-string port))))

(define (fragment-stringifyer2 serialize)
  (lambda (item #!optional maybe-level (quote-char #\"))
    (let ((port (open-output-string '())))
      (serialize item port)
      (get-output-string port))))

(define sxml->html-string-fragment (fragment-stringifyer #f))
(define sxml->xml-string-fragment  (fragment-stringifyer #t))

(define sxml->xhtml-string (fragment-stringifyer2 sxml>>xhtml-fast))

;(TEST
;> (sxml->xml-string-fragment '(a (@ (href "ha")) . "welt"))
;"<a href=\"ha\">welt</a>"
;> (sxml->xml-string-fragment '(a (@ (href "ha")) "welt"))
;"<a href=\"ha\">welt</a>"
;> (sxml->xml-string-fragment '(a (@ (href . "ha")) "welt"))
;"<a href=\"ha\">welt</a>"

;)

;; ---------------------------------------------------------
; idea to offer some serializer herlper;

; Idee 1: refactor. Cleaner einhaken.
; Idee 2: stubs. drin lassen als gleichnamig quasi aber einfach emptymachen.  hm wie gleich alles aufsmal?.  Oder: wie kann man ein SET von  variablen  um lenken?.  im obigen code?.
;  Na: mal so. serializeprocess-string-reset! und eben.

;(define serializeprocess-string-reset! paramdata/chars-in-a-row-reset!);; kein param
;(define serializeprocess-string-nextchar! paramdata/chars-in-a-row-inc!);; port param heh.
; ps JA staun obiges geht sogar  obwohl pre definition  und som it auch  runtimig  eigtl nicht geht  aber  es geht.

(define serializeprocess-string-reset! (lambda()#f));; kein param
(define serializeprocess-string-nextchar! (lambda(port)#f));; port param heh.


(define chars-in-a-row-allowed 5)
;(define chars-in-a-row-allowed 50000)

(define-structure paramdata
                  chars-in-a-row  ; integer, chars seen since the last element.
                  )

(define paramdata (make-parameter #f))

; (define (paramdata-chars-in-a-row-add! n)
;   (...

; (define (paramdata/chars-in-a-row)
;   (paramdata-chars-in-a-row (paramdata)))

; (define (paramdata/chars-in-a-row-set! n)
;   (paramdata-chars-in-a-row-set! (paramdata) n))

(define (paramdata/chars-in-a-row-reset!)
  (paramdata-chars-in-a-row-set! (paramdata) 0))

(define (paramdata/chars-in-a-row-inc! port)
  (let* ((p (paramdata))
         (chars-in-a-row (paramdata-chars-in-a-row p)))
    ;; now I could use references. and an incf which then deref-inkrements.
    (if (>= chars-in-a-row chars-in-a-row-allowed)
        (begin
          ;;(@string>> "&shy;" port)
          ;;(@string>> "&#173;" port)
          ;;(@string>> "&#45;" port)
          (@string>> (next-separator) port)
          (paramdata-chars-in-a-row-set! p 0))
        (paramdata-chars-in-a-row-set! p (+ chars-in-a-row 1)))))


(define next-separator
  (let* ((vec (vector
               ;"&shy;"  ;todo entities hum?. also nbsp 'sadly'.
               "&#173;"
               ;"&#45;"
               ))
         (pos 0)
         (len (vector-length vec)))
    (lambda()
      (set! pos (+ pos 1))
      (if (>= pos len)
          (set! pos 0))
      (vector-ref vec pos))))
