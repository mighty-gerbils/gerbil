(import
  :gerbil/gambit
  ./api
  ./message
  ./repl
  ./context
  ./debug)
(export
  #t
  swank:get-presented-object)

;; Recording and accessing results of computations

(def +record-repl-results+ #t)
(def object-to-presentation-id-table
  (make-hash-table weak-keys: #t))
(def presentation-id-to-object-table
  (make-hash-table weak-values: #t))

(def clrhash hash-clear!)

(def (clear-presentation-tables)
  (clrhash object-to-presentation-id-table)
  (clrhash presentation-id-to-object-table))

(def nil-surrogate (gensym 'nil-surrogate))

(def presentation-counter 0)

(def (save-presented-object obj)
  "Save OBJECT and return the assigned id.
  If OBJECT was saved previously return the old id."
  (let ((ref (hash-ref object-to-presentation-id-table obj #f)))
    (or ref
  	(let ((id (begin0 presentation-counter
  		    (set! presentation-counter (1+ presentation-counter)))))
  	  (hash-put! presentation-id-to-object-table id obj)
  	  (hash-put! object-to-presentation-id-table obj id)
  	  id))))

(def (present-repl-results object (writer #f))
  (unless writer (set! writer (current-slime-writer)))
					;(def id (current-slime-id))
  (def (writeme val (iden #f))
    (write-message
     writer
     `(:write-string ,(if iden val (##object->string val)) :repl-result)))
  (def (present val)
    (let ((id (if (not +record-repl-results+) 'nil
  		  (save-presented-object val))))
      (write-message
       writer `(:presentation-start ,id :repl-result))
      (writeme val)
      (write-message
       writer `(:presentation-end ,id :repl-result))
      (writeme "\n" #t)))
  
  (if (##values? object)
    (for-each present (values->list object))
    (present object)))

(def-swank (swank:init-presentations)
  (begin0 'present-repl-results
    (current-swank-repl-results-function present-repl-results)))

(extern namespace: #f
  swank:lookup-presented-object
  swank:lookup-presented-object-or-lose
  swank:get-presented-object)

(set-swank!
 (swank:get-presented-object id)
 (if (number? id)
   (hash-ref presentation-id-to-object-table (exact id) nil-surrogate)
   (if (list? id)
     (let ((type (car id)))
       (cond ((equal? type ':frame-var)
	      (apply find-swank-debug-frame-var (cdr id)))
	     (else (error "Unknown presentation id" id))))
     (error "Unknown presentation id" id))))

(set-swank!
 (swank:lookup-presented-object id)
 (let* ((val (swank:get-presented-object id))
  	(found? (not (eq? val nil-surrogate))))
   (values val (if found? 't 'nil))))

(set-swank!
 (swank:lookup-presented-object-or-lose id)
 (with ((values object found?) (swank:lookup-presented-object id))
   (if (eq? found? 't)
     `(swank:get-presented-object ,id)
     (error "Attempt to access unrecorded object" id))))

(def-swank (cl:nth-value n vs)
  (set! vs (eval vs))
  (if (not (##values? vs))
    (if (= n 0) vs (error "Invalid nth-value request" n vs))
    (values-ref vs n)))
