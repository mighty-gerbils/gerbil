;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil interactive environment initialization

;; Pleasantly greet user
(displayln gerbil-greeting)

;; Import Gambit prelude
(import :gerbil/gambit)

;; Intercative development
(begin-syntax
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
          (parameterize ((_gx#reload-module #t))
            (import-module mod #t #t)))
         (else                          ; top module
          (void)))))
     (else
      (error "Invalid module path" mod)))))

(defsyntax (reload! stx)
  (syntax-case stx ()
    ((_ mod)
     (begin
       (reload-module! (stx-e #'mod))
       #'(import mod)))))

(defrules reload ()
  ((_ mod ...)
   (begin (reload! mod) ...)))

(def (enter! mod)
  (parameterize ((gx#current-expander-context (gx#import-module mod #f #t)))
    (##repl)))

;; hook the repl path normalization -- it breaks buffer location popping
;; in gerbil mode for out of tree sources
(when (getenv "EMACS" #f)
  (set! ##repl-path-normalize-hook values))
