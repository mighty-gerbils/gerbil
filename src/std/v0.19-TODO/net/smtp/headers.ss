(import ./session) (export #t)

(def (headers->alist hlist)
  (let lp ((hs hlist) (alist []))
    (if (null? hs) (reverse alist)
	(with ([item rest ...] hs)
	  (if (pair? item) (lp rest [item alist ...])
	      (with ([key val rest ...] hs)
		(lp rest [[key . val] alist ...])))))))

(def (send-headers headers send-one)
  (set! headers (headers->alist headers))
  (def (key->string key)
    (cond ((string? key) key)
	  ((or (keyword? key)
	       (symbol? key))
	   (with-output-to-string "" (cut write key)))
	  (else (error "Header key must be a keyword, symbol or string"))))
  (def header->string
    (cut match <>
	 ([k . v] (string-append (key->string k) " " v))))

  (for-each send-one (map header->string headers)))
