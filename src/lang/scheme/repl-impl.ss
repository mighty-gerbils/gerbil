;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme repl) library -- implementation details
package: scheme

(import :scheme/stubs
        :gerbil/expander)
(export r7rs-interaction-environment
        r7rs-null-environment
        r7rs-scheme-report-environment)

(def (with-id! ctx id)
  (set! (expander-context-id ctx)
    id)
  ctx)

(def r5rs-top (with-id! (make-top-context) 'r5rs-top))
(def r5rs-null (with-id! (make-top-context) 'r5rs-null-top))
(def r7rs-top (with-id! (make-top-context) 'r7rs-top))
(def r7rs-null (with-id! (make-top-context) 'r7rs-null-top))
(def interaction (with-id! (make-top-context) 'r7rs-interaction))

(def (repl-environment-init!)
  (def (import! ctx mod)
    (parameterize ((current-expander-context ctx))
      (eval-syntax ['import mod])))

  (import! r5rs-top ':scheme/r5rs)
  (import! r5rs-null ':scheme/r5rs-null)
  ;; (import! r7rs-top ':scheme/r7rs)
  ;; (import! r7rs-null ':scheme/r7rs-null)
  ;; (import! interaction ':scheme/r7rs)
  )

(def (r7rs-interaction-environment)
  interaction)

;; we wrap another context to make the null/report environments effectively immutable
(def (r7rs-null-environment version)
  (case version
    ((5) (with-id! (make-top-context r5rs-null) 'r5rs-null))
    ((7) (with-id! (make-top-context r7rs-null) 'r7rs-null))
    (else
     (error "Unrecognized Scheme Report version" version))))

(def (r7rs-scheme-report-environment version)
  (case version
    ((5) (with-id! (make-top-context r5rs-top) 'r5rs-report))
    ((7) (with-id! (make-top-context r7rs-top) 'r7rs-report))
    (else
     (error "Unrecognized Scheme Report version" version))))

(repl-environment-init!)
