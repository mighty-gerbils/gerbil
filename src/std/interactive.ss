;;; -*- Gerbil -*-
;;; © vyzo
;;; interactive development utilities

(export #t (for-syntax #t))

(module Util
  (import :gerbil/core/expander
          :gerbil/runtime/loader
          :std/sort)
  (export #t)
  ;; Module reloading
  (def (do-reload-module! mod)
    (cond
     ((string? mod)                     ; file path, resource it
      (import-module mod #t #t))
     ((symbol? mod)
      (let (str (symbol->string mod))
        (cond
         ((string-empty? str)
          (error "Invalid module path" mod))
         ((eq? (string-ref str 0) #\:)  ; library module
          (let (base (substring str 1 (string-length str)))
            (reload-all! base)
            (import-module mod #t #t)))
         (else                          ; top module
          (void)))))
     (else
      (error "Invalid module path" mod))))

  (def (reload-all! modbase)
    (let* ((loaded-modules (list-modules))
           (to-reload
            (filter-map
             (lambda (p)
               (with ([modpath . state] p)
                 (and (not (eq? state 'builtin))
                      (string-prefix? modbase modpath)
                      modpath)))
             loaded-modules))
           (load-order
            (list->hash-table
             (map (lambda (modpath) (cons modpath (module-load-order modpath)))
                  to-reload)))
           (to-reload
            (sort to-reload
                  (lambda (x y) (< (hash-ref load-order x) (hash-ref load-order y))))))
      (for-each reload-module! to-reload))))
(import (for-syntax Util))

(defsyntax (reload! stx)
  (syntax-case stx ()
    ((_ mod)
     (begin
       (do-reload-module! (stx-e #'mod))
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
