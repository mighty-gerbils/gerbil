;;; -*- Gerbil -*-
;;; © vyzo
;;; contracts and type assertions
(export with-type with-interface with-struct with-class with-contract)
(import ./error
        ./interface)

(defsyntax (with-type stx)
  (syntax-case stx (:~)
    ((_ (id ~ Type) body ...)
     (and (identifier? #'id)
          (identifier? #'Type)
          (identifier? #'~)
          (or (free-identifier=? #'~ #':)
              (free-identifier=? #'~ #':-)))
     (let (meta (syntax-local-value #'Type false))
       (cond
        ((not meta)
         (raise-syntax-error #f "unknown type" stx  #'Type))
        ((interface-info? meta)
         #'(with-interface (id ~ Type) body ...))
        ((extended-struct-info? meta)
         #'(with-struct (id ~ Type) body ...))
        ((extended-class-info? meta)
         #'(with-class (id ~ Type) body ...))
        (else
         (raise-syntax-error #f "bad type; must be an interface, struct, or class type" stx #'Type meta)))))
    ((_ (id :~ pred) body ...)
     (identifier? #'id)
     #'(with-contract (id :~ pred) body ...))
    ((macro ((id ~ contract) . rest) body ...)
     (and (identifier? #'id)
          (identifier? #'~)
          (or (free-identifier=? #'~ #':)
              (free-identifier=? #'~ #':-)
              (free-identifier=? #'~ #':~)))
     #'(macro (id ~ contract) (macro rest body ...)))
    ((_ () body ...)
     #'(let () body ...))))

(defrules with-contract (:~)
  ((_ (id :~ predicate-expr) body ...)
   (identifier? #'id)
   (let ()
     (begin-annotation @contract
       (unless (predicate-expr id)
         (raise-contract-violation id predicate-expr)))
     body ...)))

(defrules with-struct ())
(defrules with-class ())

(defsyntax (with-interface stx)
  (def (interface-id? id)
    (and (identifier? id)
         (interface-info? (syntax-local-value id false))))

  (def (expand-body var Interface body checked?)
    (with-syntax ((@app (syntax-local-introduce '%%app))
                  (var var)
                  (Interface Interface)
                  (checked? checked?)
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
                             (with-syntax ((->method
                                            (stx-identifier
                                             #'method
                                             (if checked? "" "&")
                                             'Interface "-"
                                             (let (str (symbol->string (stx-e #'method)))
                                               (substring str 1 (string-length str))))))
                               #'(->method rator . rands)))
                            ((_ . args)
                             #'(__app . args))))))
            (begin-annotation (@type (var interface: Interface))
              (let ()
                body ...))))))

  (def (expand var Interface body checked?)
    (let (expr-body (expand-body var Interface body checked?))
      (if checked?
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
     (expand #'var #'Interface #'(body ...) #f))))
