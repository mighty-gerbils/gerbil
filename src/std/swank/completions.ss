(import
  :gerbil/expander :std/swank/message :std/sugar
  :std/swank/context :std/swank/api :std/srfi/13 :std/iter :std/srfi/1)


(def (symbol-string-prefix? sym str)
  (def symstr (symbol->string sym))
  (= (string-prefix-length str symstr)
     (string-length str)))

(def (symbol-ns-prefix? sym str)
  (def symstr (symbol->string sym))
  (def string-prefix?
    (= (string-prefix-length str symstr)
       (string-length str)))
  (and string-prefix?
       (let (idx (string-index symstr #\#))
	 (and idx (< 1 idx) (substring/shared symstr 0 (1+ idx))))))

(def (find-completions str (cxt (swank-context)))
  (append (for/collect ((s (in-hash-keys (gx#expander-context-table cxt))

			   when (symbol-string-prefix? s str))) s)
	  (delete-duplicates!
	   (for/fold (kdr [])
	       (s (##symbol-table)) (let (ns (and (symbol? s) (symbol-ns-prefix? s str)))
				      (if ns (cons ns kdr) kdr))))))
