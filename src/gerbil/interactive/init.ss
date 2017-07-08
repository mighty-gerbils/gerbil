;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil interactive environment initialization

;; Pleasantly greet user
(displayln (gerbil-system-version-string))

;; Import Gambit prelude
(import :gerbil/gambit)

;; Intercative development
(begin-syntax
  (def (reload-module mod)
    (cond
     ((string? mod)                     ; file path, resource it
      (import-module mod #t))
     ((symbol? mod)
      (let (str (symbol->string mod))
        (cond
         ((string-empty? str)
          (error "Invalid module path" mod))
         ((eq? (string-ref str 0) #\:)  ; library module
          (let (modpath (substring str 1 (string-length str)))
            (reload-compiled-module modpath)
            (import-module mod #t)))
         (else                          ; top module
          (void)))))
     (else
      (error "Invalid module path" mod))))

  (def (reload-compiled-module modpath)
    (def (reload modpath)
      (with-catch display-exception (cut load-module modpath #t)))
    
    (let ((registry (&current-module-registry))
          (modrt (string-append modpath "__rt")))
      (if (hash-get registry modpath)
        (reload modpath)
        (let lp ((k 1))
          (let (modk (string-append modpath "__" (number->string k)))
            (if (hash-get registry modk)
              (begin
                (reload modk)
                (lp (fx1+ k)))
              (let (mod0 (string-append modpath "__0"))
                (when (hash-get registry mod0)
                  (reload mod0)))))))
      (when (hash-get registry modrt)
        (reload modrt)))))

(defrules reload ()
  ((_ mod ...)
   (begin (begin (begin-syntax (reload-module 'mod)) (import mod)) ...)))
