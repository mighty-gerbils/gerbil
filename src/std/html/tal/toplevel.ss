(import ../parser :std/srfi/1)
(export #t)

(def current-toplevel (make-parameter #f))
(def current-out-str (make-parameter #f))

(def (sxml->tal-form sxml)
  (def top [html:])
  (def str (open-output-string ""))
  (parameterize ((current-toplevel top)
		 (current-out-str str))
    (sxml->html sxml str)
    (push-toplevel (get-output-string (current-out-str)))
    (cons 'tal:form (reverse (cdr top)) #;
	  (concatenate (map (lambda (x) (if (list? x) x [x]))
			    )))))
(def (push-toplevel thing)
  (def top (current-toplevel))
  ;;(unless (string? thing) (displayln "pushing " thing))
  (match top
    ([title . smrof] (set! (cdr top) (cons thing smrof)))))


(def (push-toplevel-element el)
  (push-toplevel (get-output-string (current-out-str)))
  (push-toplevel el)
  [])

(def (tal-attrs? attrs)
  (let lp ((ats attrs))
    (if (null? ats) #f
	(with ([name . rest] (car ats))
	  (if (string-prefix? "tal:" (symbol->string name))
	    #t
	    (lp (cdr ats)))))))

(def html-end (pgetq end: default-html->sxml-plist))
