;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Custom prelude that rebinds %%app and %%ref
(import :gerbil/core) ;; so that we can re-export
(export (import: :gerbil/core)
        (rename: my-%%app %%app)
        (rename: my-%%ref %%ref))

(begin-syntax
  (def (dotted-identifier? stx)
    (and (identifier? stx)
         (let (str (symbol->string (stx-e stx)))
           (string-index str #\.))))

  (def (split-dotted-identifier stx)
    (map string->symbol (string-split (symbol->string (stx-e stx)) #\.))))


;; custom %%app that transforms dotted identifiers to object method calls
(defsyntax (my-%%app stx)
  (syntax-case stx ()
    ((_ rator . rands)
     (dotted-identifier? #'rator)
     (with ([hd . chain] (split-dotted-identifier #'rator))
       (let lp ((rest chain) (obj (datum->syntax #'rator hd)))
         (match rest
           ([method]
            (with-syntax ((obj obj) (method method))
              #'{method obj . rands}))
           ([method . rest]
            (with-syntax ((obj obj) (method method))
              (lp rest #'{method obj})))))))
    ((_ rator . rands)
     ;; default -- up the chain to core %%app
     #'(%%app rator . rands))))

;; custom %%ref that transforms dotted references to method references
(defsyntax (my-%%ref stx)
  (syntax-case stx ()
    ((_ id)
     (dotted-identifier? #'id)
     (with ([hd . chain] (split-dotted-identifier #'id))
       (let lp ((rest chain) (obj (datum->syntax #'id hd)))
         (match rest
           ([method]
            (with-syntax ((obj obj) (method method))
              #'(lambda args (apply call-method obj 'method args))))
           ([method . rest]
            (with-syntax ((obj obj) (method method))
              (lp rest #'{method obj})))))))
    ((_ id)
     ;; default -- up the chain to core %%ref
     #'(%%ref id))))
