;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme repl) library -- implementation details
(import :gerbil/expander)
(export r7rs-interaction-environment
        r7rs-null-environment
        r7rs-scheme-report-environment)

(def (with-id! ctx id)
  (set! (expander-context-id ctx)
    id)
  ctx)

(def r5rs-top (with-id! (make-top-context) 'r5rs-top))
(def r5rs-null (with-id! (make-top-context) 'r5rs-null-top))
(def interaction (with-id! (make-top-context) 'r7rs-interaction))

(def (repl-environment-init!)
  (def (import! ctx mod)
    (parameterize ((current-expander-context ctx))
      (eval-syntax ['import mod])))

  (gerbil-load-expander!)
  (import! r5rs-top ':scheme/r5rs)
  (import! r5rs-null ':scheme/r5rs-null)
  (import! interaction ':scheme/r7rs)
  (import! interaction '(scheme base)))

;; this needs to be delayed because it calls eval/import from within a module loader
;; with a circular dependency [r5rs depends on repl]
(def init! (delay (repl-environment-init!)))

(def (r7rs-interaction-environment)
  (force init!)
  interaction)

;; we wrap another context to make the null/report environments effectively immutable
(def (r7rs-null-environment version)
  (force init!)
  (case version
    ((5) (with-id! (make-top-context r5rs-null) 'r5rs-null))
    (else
     (error "Unrecognized Scheme Report version" version))))

(def (r7rs-scheme-report-environment version)
  (force init!)
  (case version
    ((5) (with-id! (make-top-context r5rs-top) 'r5rs-report))
    (else
     (error "Unrecognized Scheme Report version" version))))
