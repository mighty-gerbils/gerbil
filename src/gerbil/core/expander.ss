;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil core prelude: expansion time bindings
;;;
prelude: :<root>
package: gerbil/core

(import "runtime" (phi: +1 "runtime"))
(export #t (import: ExpanderRuntime SyntaxCase SyntaxSugar))

(module ExpanderRuntime
  (export #t)
  (extern namespace: gx
    ;; syntax and friends
    raise-syntax-error syntax-error?
    identifier? identifier-list? free-identifier=? bound-identifier=?
    datum->syntax syntax->datum syntax-e syntax->list
    genident gentemps
    stx-identifier
    stx-boolean? stx-keyword? stx-char? stx-number? stx-fixnum? stx-string?
    stx-null? stx-pair? stx-pair/null? stx-list?
    stx-box? stx-vector? stx-datum?
    stx-eq? stx-eqv? stx-equal? stx-false?
    stx-e stx-source stx-wrap-source
    stx-car stx-cdr stx-length
    stx-for-each stx-map stx-foldl stx-foldr stx-reverse
    stx-last stx-last-pair stx-list-tail stx-list-ref
    stx-andmap stx-ormap
    stx-plist? stx-getq
    macro-expand-syntax
    macro-expand-syntax-case
    syntax-pattern? syntax-local-pattern?
    make-syntax-pattern syntax-pattern-id syntax-pattern-depth
    syntax-check-splice-targets
    syntax-split-splice
    underscore? ellipsis?
    check-duplicate-identifiers
    ;; core expander -- user api
    current-expander-context
    current-expander-marks
    current-expander-path
    current-expander-phi
    current-expander-compiling?
    current-compilation-target
    current-module-reader-path
    current-module-reader-args
    local-context? top-context? module-context? prelude-context?
    core-context-top
    expander-context-id  module-context-ns
    module-context-import module-context-export module-context-code
    make-local-context
    eval-syntax core-expand core-expand-head core-expand-expression+1
    import-module eval-module
    core-library-module-path? core-resolve-library-module-path
    core-resolve-module-path
    core-quote-syntax
    core-identifier=? core-identifier-key
    core-apply-expander
    syntax-local-introduce syntax-local-rewrap syntax-local-unwrap
    syntax-local-e syntax-local-value
    resolve-identifier core-resolve-identifier
    binding? binding-id
    runtime-binding? top-binding? module-binding? extern-binding?
    syntax-binding? syntax-binding-e
    alias-binding? alias-binding-e
    import-binding? import-binding-e
    expander? expander-binding? expander-e expander-binding-e
    feature-expander?
    user-expander? make-user-expander
    user-expander-context user-expander-phi
    import-expander? make-import-expander
    export-expander? make-export-expander
    import-export-expander? make-import-export-expander
    module-import? make-module-import
    module-import-source module-import-name module-import-phi
    module-import-weak?
    module-export? make-module-export
    module-export-context module-export-key module-export-phi
    module-export-name module-export-weak?
    import-set? import-set-source import-set-phi import-set-imports
    export-set? export-set-source export-set-phi export-set-exports
    core-resolve-module-export
    core-module-export->import
    core-expand-import-source
    core-expand-export-source))

(module SyntaxCase
  (export #t)
  (import ExpanderRuntime
          (phi: +1 ExpanderRuntime))
  (define-syntax syntax
    macro-expand-syntax)
  (define-syntax syntax-case
    macro-expand-syntax-case))

(module SyntaxSugar
  (export #t)
  (import ExpanderRuntime SyntaxCase
          (phi: +1 ExpanderRuntime SyntaxCase))

  (define-syntax syntax-rules
    (lambda% (stx)
      (syntax-case stx ()
        ((_ ids clauses ...)
         (identifier-list? #'ids)
         (let-values (((body)
                       (stx-map
                        (lambda% (clause)
                          (syntax-case clause ()
                            ((hd body)
                             #'(hd (syntax body)))
                            ((hd fender body)
                             #'(hd fender (syntax body)))))
                        #'(clauses ...))))
           (syntax-case body ()
             ((clause ...)
              #'(lambda% ($stx)
                  (syntax-case $stx ids
                    clause ...)))))))))

  (define-syntax with-syntax
    (lambda% (stx)
      (syntax-case stx ()
        ((_ () body ...)
         #'(let-values () body ...))
        ((_ ((pat e)) body ...)
         #'(syntax-case e ()
             (pat (let-values () body ...))))
        ((_ ((pat e) ...) body ...)
         #'(syntax-case (list e ...) ()
             ((pat ...) (let-values () body ...)))))))

  (define-syntax with-syntax*
    (lambda% (stx)
      (syntax-case stx (values)
        ((_ () body ...)
         #'(let-values () body ...))
        ((recur (((values . hd) e) . rest) body ...)
         #'(let-values ((hd e))
             (recur rest body ...)))
        ((recur (hd . rest) body ...)
         #'(with-syntax (hd)
             (recur rest body ...))))))

  (define-syntax syntax/loc
    (lambda% (stx)
      (syntax-case stx ()
        ((_ src-stx form)
         #'(stx-wrap-source
            (syntax form)
            (stx-source src-stx)))))))

(import ExpanderRuntime SyntaxCase SyntaxSugar)
