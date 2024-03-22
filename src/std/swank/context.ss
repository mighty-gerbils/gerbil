(import :gerbil/expander :std/swank/api)
(export #t)

(def (swank-context (:mod (current-slime-package)))
  (def cxt
    (identity ;; make-top-context
     (cond
      ((string? :mod)
       (if (string=? "TOP" :mod)
	 (gx#current-expander-context)
	 (swank-context
	  (string->symbol (string-append ":" :mod)))))
      ((not :mod) (gx#current-expander-context))
      ((symbol? :mod) (gx#import-module :mod #f #t))
      (else (error "Unknown Module" :mod)))))
  (parameterize ((gx#current-expander-context cxt))
    ;; TODO: This should be a shadow context or something that, along
    ;; with presestations, is part of the slime-connection.
    (gx#eval-syntax '(import :std/swank/top)))
  cxt)

(def (swank-eval-in-context form (cxt-name (current-slime-package)))
  (parameterize ((gx#current-expander-context (swank-context cxt-name)))
    (eval form)))
