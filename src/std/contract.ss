;;; -*- Gerbil -*-
;;; © vyzo
;;; contracts and type assertions
(export with-type with-struct with-class with-interface)
(import ./interface)

(defrules with-type ())
(defrules with-struct ())
(defrules with-class ())

(defsyntax (with-interface stx)
  (def (interface-id? id)
    (and (identifier? id)
         (interface-info? (syntax-local-value id false))))

  (def (expand-body var Interface body)
    (with-syntax ((@app (syntax-local-introduce '%%app))
                  (var var)
                  (Interface Interface)
                  ((body ...) body))
      #'(let-syntax ((__app
                      (syntax-rules ()
                        ((_ rator rand (... ...))
                         (@app rator rand (... ...))))))
          (let-syntax ((@app
                        (lambda (stx)
                          (syntax-case stx ()
                            ((_ method rator . rands)
                             (and (identifier? #'method)
                                  (string-prefix? "." (symbol->string (stx-e #'method)))
                                  (identifier? #'rator)
                                  (bound-identifier=? #'rator (syntax-local-introduce (syntax var))))
                             (with-syntax ((&method
                                            (stx-identifier
                                             #'method
                                             "&" 'Interface "-"
                                             (let (str (symbol->string (stx-e #'method)))
                                               (substring str 1 (string-length str))))))
                               #'(&method rator . rands)))
                            ((_ . args)
                             #'(__app . args))))))
            (let ()
              body ...)))))

  (def (expand var Interface body cast?)
    (let (expr-body (expand-body var Interface body))
      (if cast?
        (with-syntax ((var var) (Interface Interface) (expr-body expr-body))
          #'(let (var (Interface var))
              expr-body))
        expr-body)))

  (syntax-case stx (: :-)
    ((_ (var : Interface) body ...)
     (and (identifier? #'var)
          (interface-id? #'Interface))
     (expand #'var #'Interface #'(body ...) #t))
    ((_ (var :- Interface) body ...)
     (and (identifier? #'var)
          (interface-id? #'Interface))
     (expand #'var #'Interface #'(body ...) #f))
    ((macro ((var : Interface) . rest) body ...)
     #'(macro (var : Interface) (macro rest body ...)))
    ((macro ((var :- Interface) . rest) body ...)
     #'(macro (var :- Interface) (macro rest body ...)))
    ((_ () body ...)
     #'(let () body ...))))
