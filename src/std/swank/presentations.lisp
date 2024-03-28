(import :std/swank/api :std/swank/message
	:std/swank/repl
	:gerbil/gambit)
(export #t)
;;;; Recording and accessing results of computations

(def +record-repl-results+ #t)
(def object-to-presentation-id-table
  (##make-table weak-keys: #t))
(def presentation-id-to-object-table
  (##make-table weak-values: #t))

(def (clrhash tbl)
  (table-for-each (lambda (k _) (table-set! tbl k)) tbl))

(def (clear-presentation-tables)
  (clrhash object-to-presentation-id-table)
  (clrhash presentation-id-to-object-table))

(def nil-surrogate (gensym 'nil-surrogate))

(def presentation-counter 0)

;; XXX thread safety? [2006-09-13] mb: not in the slightest (fwiw the
;; rest of slime isn't thread safe either), do we really care?
(def (save-presented-object obj)
  "Save OBJECT and return the assigned id.
If OBJECT was saved previously return the old id."
  (let ((ref (table-ref object-to-presentation-id-table obj #f)))
    (or ref
	(let ((id (begin0 presentation-counter
		    (set! presentation-counter (1+ presentation-counter)))))
	  (table-set! presentation-id-to-object-table id obj)
	  (table-set! object-to-presentation-id-table obj id)
	  id))))

(def (present-repl-results object (writer #f))
  (unless writer (set! writer (current-slime-writer)))
  (def (writeme val (iden #f))
    (write-message
     writer
     `(:write-string ,(if iden val (##object->string val)) :repl-result)))
  (def (present val)
    (let ((id (if (not +record-repl-results+) 'nil
		  (save-presented-object val))))
      (write-message
       writer `(:presentation-start ,id :repl-results))
      (writeme val)
      (write-message
       writer `(:presentation-end ,id :repl-results))
      (writeme "\n" #t)))
  
  (if (##values? object)
    (for-each present (values->list object))
    (present object)))


(def-swank (swank:init-presentations)
  (begin0 'present-repl-results
    (set! *send-repl-results-function* present-repl-results)))
