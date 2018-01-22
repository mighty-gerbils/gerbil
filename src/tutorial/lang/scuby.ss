;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Custom #lang prelude for a language with a custom surface syntax
(import :gerbil/core
        (phi: +1
              :std/sugar
              :std/parser/base
              :tutorial/lang/scuby-grammar))

(export (import: :gerbil/core)
        (rename: begin-module%% %%begin-module)
        (phi: +1 read-module-body))

;; scuby has no export, so we export everything
(defrules begin-module%% ()
  ((_ . body)
   (%%begin-module (export #t) . body)))

(begin-syntax
  ;; the module reader: uses the parser defined in scuby-grammar to parse the module
  (def (read-module-body port)
    (try
     (let (progn (parse-scuby port))
       (case (token-t progn)
         ((Program)                     ; we parsed a program
          [(token-e progn)])
         (($$)                          ; the empty program
          [])
         (else                          ; that really shouldn't happen with our grammar
          (raise-syntax-error #f "Bad syntax; unexpected token" (token->syntax progn)))))
     (catch (parse-error? exn)
       (apply raise-syntax-error #f
              (string-append "Bad syntax; " (error-message exn))
              (map token->syntax (error-irritants exn)))))))
