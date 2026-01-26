;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser grammar prelude

(import :gerbil/core
        ./rlang
        ./base
        ./lexer
        ./defparser
        ./deflexer
        (phi: +1 :std/parser/grammar-reader))

(export (rename: begin-module%% %%begin-module)
        (phi: +1 read-module-body)
        (import: :gerbil/core
                 :std/parser/rlang
                 :std/parser/base
                 :std/parser/lexer
                 :std/parser/defparser
                 :std/parser/deflexer))

;; %%begin-module: flattens begins and auto-exports all defined parsers and lexers
(defsyntax (begin-module%% stx)
  (syntax-case stx ()
    ((_ body ...)
     (let lp ((rest #'(body ...)) (exports []) (body []))
       (match rest
         ([hd . rest]
          (syntax-case hd (defparser deflexer begin)
            ((defparser parser . _)
             (lp rest
                 (cons #'parser exports)
                 (cons hd body)))
            ((deflexer lexer . _)
             (lp rest
                 (cons #'lexer exports)
                 (cons hd body)))
            ((begin xbody ...)
             (lp (foldr cons rest #'(xbody ...))
                 exports body))
            (_
             (lp rest exports (cons hd body)))))
         (else
          (with-syntax (((name ...) (reverse exports))
                        (body (reverse body)))
            #'(%%begin-module (export name ...) . body))))))))
