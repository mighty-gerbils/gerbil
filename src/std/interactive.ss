;;; -*- Gerbil -*-
;;; © vyzo
;;; interactive development utilities
(import :gerbil/expander)
(export #t (for-syntax #t))

(module Util
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
            (do-reload-all! base)
            (import-module mod #t #t)))
         (else                          ; top module
          (void)))))
     (else
      (error "Invalid module path" mod))))

  (def (do-reload-all! modbase)
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
            (list-sort
             (lambda (x y) (< (hash-ref load-order x) (hash-ref load-order y)))
             to-reload)))
      (for-each reload-module! to-reload))))
(import (for-syntax Util))

(defsyntax-case reload1! ()
  ((_ mod)
   (begin
     (do-reload-module! (stx-e #'mod))
     #'(import mod))))

(defrule (reload! mod ...)
  (begin (reload1! mod) ...))

(defsyntax-case reload-all! ()
  ((_ base)
   (stx-string? #'base)
   (begin
     (do-reload-all! (stx-e #'base))
     #'(import/base base))))

(defsyntax-case import/base ()
  ((_ base)
   (stx-string? #'base)
   (let* ((modbase (stx-e #'base))
          (loaded-modules (list-modules))
          (to-import
           (filter-map
            (lambda (p)
              (with ([modpath . state] p)
                 (and (not (eq? state 'builtin))
                      (string-prefix? modbase modpath)
                      (string->symbol
                       (string-append ":" modpath)))))
            loaded-modules)))
     (with-syntax (((mod ...) to-import))
       #'(import mod ...)))))

;; Enter a nested repl with the syntactic context of a module
(def (enter-module! mod)
  (parameterize ((current-expander-context (import-module mod #f #t)))
    (##repl)))

(defrule (enter! mod)
  (enter-module! 'mod))

;; Macro expansion
;; These two macros expand a form, pretty print the expansion, and
;; return the result of the expansion for debugging purposes.
;; @expand uses core-expand* while @expand1 performs a single step
;; expansion with core-expand1
(defrule (@expand expr)
  (macro-expand 'expr))

(defrule (@expand1 expr)
  (macro-expand1 'expr))

(defrule (@expand-expr expr)
  (macro-expand-expr 'expr))

(def (macro-expand expr (expand-e core-expand*))
  (let (expanded (expand-e expr))
    (pretty-print (syntax->datum expanded))
    expanded))

(def (macro-expand1 expr)
  (macro-expand expr core-expand1))

(def (macro-expand-expr expr)
  (macro-expand expr core-expand-expression))
