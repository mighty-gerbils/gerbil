;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme base) library -- implementation details
package: scheme

(import :scheme/stubs
        :scheme/base-etc
        :scheme/base-vectors
        :scheme/base-ports
        (phi: +1 :gerbil/expander :gerbil/gambit))
(export #t
        (import: :scheme/base-etc)
        (import: :scheme/base-vectors)
        (import: :scheme/base-ports))

;; macros
;; R7RS spec:
(defsyntax (features stx)
  (syntax-case stx ()
    ((_)
     (let* ((feats (make-hash-table-eq))
            (add-feature!
             (rec (add bind)
               (cond
                ((import-binding? bind)
                 (add (import-binding-e bind)))
                ((alias-binding? bind)
                 (add (resolve-identifier (alias-binding-e bind))))
                ((syntax-binding? bind)
                 (let (expander (syntax-binding-e bind))
                   (when (feature-expander? expander)
                     (hash-put! feats (expander-e expander) #t))))))))
       (let lp ((ctx (core-context-shift (core-context-top) (current-expander-phi))))
         (when ctx
           (hash-for-each
            (lambda (_ bind)
              (add-feature! bind))
            (expander-context-table ctx))
           (when (phi-context? ctx)
             (lp (phi-context-super ctx)))))
       (with-syntax (((feat ...) (hash-keys feats)))
         #'(quote (feat ...)))))))

;; R7RS spec:
;; (guard (variable cond-clause ...) body ...)
;; "Semantics: The body is evaluated with an exception han-
;;  dler that binds the raised object (see raise in section 6.11)
;;  to variable and, within the scope of that binding, evalu-
;;  ates the clauses as if they were the clauses of a cond ex-
;;  pression. That implicit cond expression is evaluated with
;;  the continuation and dynamic environment of the guard
;;  expression. If every cond clause’s test evaluates to #f
;;  and there is no else clause, then raise-continuable is
;;  invoked on the raised object within the dynamic environ-
;;  ment of the original call to raise or raise-continuable,
;;  except that the current exception handler is that of the
;;  guard expression."
;;
;; There is no raise-continiuable per se in Gerbil on Gambit
;; [see comments on raise-continuable stub] but this macro
;; is still usable by implementing in the following manner
(defrules guard (else)
  ((_ (var clause ... (else else-body ...)) body ...)
   (identifier? #'var)
   (with-exception-handler
    (let (handler (current-exception-handler))
      (lambda (var)
        (with-exception-handler
         handler
         (lambda () (cond clause ... (else else-body ...))))))
    (lambda () body ...)))
  ((_ (var clause ...) body ...)
   (identifier? #'var)
   (with-exception-handler
    (let (handler (current-exception-handler))
      (lambda (var)
        (with-exception-handler
         handler
         (lambda () (cond clause ... (else (raise var)))))))
    (lambda () body ...))))

;; Gerbil on Gambit is fundamentally case sensitivie, so there
;; is no concept of of case-insensitive symbols
;; the best we can do is include with downcase conversion.
(defsyntax (include-ci stx)
  (syntax-case stx()
    ((_ path)
     (stx-string? #'path)
     (let* ((rpath (core-resolve-path #'path (stx-source stx)))
            (body
             (parameterize ((current-readtable
                             (readtable-case-conversion?-set
                              (current-readtable)
                              't)))
               (read-syntax-from-file rpath))))
       (syntax-local-introduce
        (stx-wrap-source
         (cons 'begin body)
         (stx-source stx)))))))

;; this differs from Gerbil include in that it admits multiple paths
(defrules r7rs-include ()
  ((_ path)
   (include path))
  ((_ path ...)
   (begin (include path) ...)))


;; R7RS spec:
;; "Raises an exception by invoking the current exception han-
;;  dler on obj . The handler is called with the same dynamic
;;  environment as the call to raise-continuable, except
;;  that: (1) the current exception handler is the one that was
;;  in place when the handler being called was installed, and
;;  (2) if the handler being called returns, then it will again
;;  become the current exception handler."
;;
;; This CANNOT be implemented without kernel changes in Gambit
;; as the previous exception handler is not accessible anywhere
;; but hidden on the local stack frame at the time of installation.
;; On the same time, all Gambit exceptions are continuable in the
;; sense that the exception handler can return, it just happens
;; that the current exception handler is itself during its invocation
;; So it will remain a stub; seek professional help if you need this in
;; a library module.
(defstub raise-continuable)

;; number theoretic functions are not my forte, so I am passing on these for now
(defstub floor/)
(defstub floor-quotient)
(defstub floor-remainder)
(defstub truncate/)
(defstub truncate-quotient)
(defstub truncate-remainder)

;; R7RS spec:
;; "Returns #t if port is still open and capable of performing
;;  input or output, respectively, and #f otherwise."
;;
;; Not possible to implement without kernel support from Gambit
(defstub input-port-open?)
(defstub output-port-open?)
