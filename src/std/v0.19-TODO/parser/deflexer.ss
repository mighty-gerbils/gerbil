;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser lexer generator

(import (phi: +1 :std/parser/base :std/parser/rx-parser :std/stxutil)
        ./base
        ./rlang
        ./lexer)

(export deflexer)

(defsyntax (deflexer stx)
  (def (parse-rx-e rx rule)
    (with-catch
     (lambda (exn)
       (if (parse-error? exn)
         (let ((msg (string-append "Bad syntax; malformed rx: " (error-message exn)))
               (details (map (lambda (x) (if (token? x) (token->syntax x) x))
                             (error-irritants exn))))
           (apply raise-syntax-error #f msg stx rule rx details))
         (raise exn)))
     (lambda ()
       (token-e (parse-rx (stx-e rx))))))

  (def (parse-rules id rules)
    (let lp ((rest rules) (defs []) (langs []) (actions []))
      (match rest
        ([rule . rest]
         (syntax-case rule (@method $ $$)
           ((rx {macro})
            (and (stx-string? #'rx)
                 (identifier? #'macro))
            (with-syntax* ((rlang (parse-rx-e #'rx rule))
                           (defn (stx-wrap-source
                                  #'(def macro rlang)
                                  (or (stx-source #'rx)
                                      (stx-source rule)
                                      (stx-source stx)))))
              (lp rest (cons #'defn defs) langs actions)))
           ((rx $)
            (stx-string? #'rx)
            (let ((rlang (parse-rx-e #'rx rule))
                  (action #'(lambda (@@ @loc) $)))
              (lp rest defs (cons rlang langs) (cons action actions))))
           ((rx $$)
            (stx-string? #'rx)
            (let ((rlang (parse-rx-e #'rx rule))
                  (action #'(lambda (@@ @loc) ($$ @loc))))
              (lp rest defs (cons rlang langs) (cons action actions))))
           ((rx (token-t expr))
            (and (stx-string? #'rx)
                 (identifier? #'token-t))
            (with-syntax* ((@@ (datum->syntax id '@@))
                           (@loc (datum->syntax id '@loc))
                           (rlang (parse-rx-e #'rx rule))
                           (action (stx-wrap-source
                                    #'(lambda (@@ @loc)
                                        (make-token 'token-t expr @loc))
                                    (or (stx-source #'expr)
                                        (stx-source rule)
                                        (stx-source stx)))))
              (lp rest defs (cons #'rlang langs) (cons #'action actions))))
           (_ (raise-syntax-error #f "Bad syntax; illegal rule" stx rule))))
        (else
         (values (reverse defs) (reverse langs) (reverse actions))))))

  (syntax-case stx ()
    ((_ id rule ...)
     (identifier? #'id)
     (parameterize ((current-rx-syntax-context #'id))
       (let ((values defs langs actions)
             (parse-rules #'id #'(rule ...)))
         (with-syntax* (((defn ...) defs)
                        ((lang ...) langs)
                        ((action ...) actions)
                        (lexer::L (format-id #'id "~a::L" #'id))
                        (lexer::R (format-id #'id "~a::R" #'id))
                        (def::L (stx-wrap-source
                                 #'(def lexer::L [lang ...])
                                 (stx-source stx)))
                        (def::R (stx-wrap-source
                                 #'(def lexer::R [action ...])
                                 (stx-source stx))))
           #'(begin
               defn ...
               def::L def::R
               (def (id input)
                 (lex input lexer::L lexer::R)))))))))
