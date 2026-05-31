;;; -*- Gerbil -*-
;;; © vyzo
;;; serde utilities
(import :std/error)
(export #t)

;; class loader
(def (load-class (name : :string))
  => class
  (def (reference-it)
    (try (##global-var-ref (weak-string->symbol name))
	 (catch (e)
	   (runtime-contract-violation! load-class (global-ref name) e))))

  ;; get namespace to find the appropriate module; if empty, it is builtin
  (let (klass
	(cond
	 ((string-index name #\#)
	  => (lambda (idx)
	       (let (namespace (substring name 0 idx))
		 (load-module namespace)
		 (reference-it))))
	 (else
	  (reference-it))))
    (when (eq? klass #!unbound)
      (raise-contract-violation load-class class-type-descriptor? name: name))
    (: klass class)))

;; a weak variant of symbol->string that does not inject
;; new entries to the symbol table
(def (weak-string->symbol (str : :string))
  => :symbol
  (cond
   ((##find-interned-symbol str))
   (else
    (runtime-contract-violation! "no interned symbol for string"
                                 (interned? str)
                                 str))))

(def (weak-string->keyword (str : :string))
  => :keyword
  (cond
   ((##find-interned-keyword str))
   (else
    (runtime-contract-violation! "no interned keyword for string"
                                 (interned? str)
                                 str))))
