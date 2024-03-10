;;; -*- Gerbil -*-
;;; © vyzo
;;; interactive development utilities

(import (only-in :gerbil/gambit pretty-print))
(export #t (for-syntax #t))

(module <util>
  (import :gerbil/core/expander)
  (extern namespace: #f __reload-module)
  (export #t)
  ;; Module reloading
  (def (reload-module! mod)
    (cond
     ((string? mod)                     ; file path, resource it
      (import-module mod #t #t))
     ((symbol? mod)
      (let (str (symbol->string mod))
        (cond
         ((string-empty? str)
          (error "Invalid module path" mod))
         ((eq? (string-ref str 0) #\:)  ; library module
          (parameterize ((__reload-module #t))
            (import-module mod #t #t)))
         (else                          ; top module
          (void)))))
     (else
      (error "Invalid module path" mod)))))
(import (for-syntax <util>))

(defsyntax (reload! stx)
  (syntax-case stx ()
    ((_ mod)
     (begin
       (reload-module! (stx-e #'mod))
       #'(import mod)))))

(defrules reload ()
  ((_ mod ...)
   (begin (reload! mod) ...)))

;; Enter a nested repl with the syntactic context of a module
(def (enter-module! mod)
  (parameterize ((gx#current-expander-context (gx#import-module mod #f #t)))
    (##repl)))

(defrules enter! ()
  ((_ mod)
   (enter-module! 'mod)))

;; Macro expansion
;; These two macros expand a form, pretty print the expansion, and
;; return the result of the expansion for debugging purposes.
;; @expand uses core-expand* while @expand1 performs a single step
;; expansion with core-expand1
(defrules @expand ()
  ((_ expr) (macro-expand 'expr)))

(defrules @expand1 ()
  ((_ expr) (macro-expand1 'expr)))

(def (macro-expand expr (expand-e gx#core-expand*))
  (let (expr* (expand-e expr))
    (pretty-print (gx#syntax->datum expr*))
    expr*))

(def (macro-expand1 expr)
  (macro-expand expr gx#core-expand1))
