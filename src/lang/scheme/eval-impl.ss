;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme eval) library -- implementation details
(import :gerbil/expander)
(export r7rs-eval r7rs-environment)

(def init!
  (delay (_gx#load-expander!)))

(def (r7rs-eval expr environment)
  (force init!)
  (parameterize ((current-expander-context environment))
    (eval-syntax expr)))

(def environments (make-hash-table))

(def (make-environment imports)
  (force init!)
  (let (ctx (make-top-context))
    (parameterize ((current-expander-context ctx))
      (eval-syntax '(import :scheme/r7rs))
      (for-each (lambda (in) (eval-syntax ['import in]))
                imports)
      ctx)))

(def (r7rs-environment . imports)
  (let (ctx
        (cond
         ((hash-get environments imports)
          => values)
         (else
          (let (ctx (make-environment imports))
            (hash-put! environments imports ctx)
            ctx))))
    ;; wrap a context to make it effectively immutable
    (make-top-context ctx)))
