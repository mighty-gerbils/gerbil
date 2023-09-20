(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/common::timestamp 1695117494)
  (begin
    (define gx#AST::t
      (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source)))
    (define gx#AST? (make-struct-predicate gx#AST::t))
    (define gx#make-AST
      (lambda _$args1320_ (apply make-struct-instance gx#AST::t _$args1320_)))
    (define gx#AST-e (make-struct-field-accessor gx#AST::t '0))
    (define gx#AST-source (make-struct-field-accessor gx#AST::t '1))
    (define gx#AST-e-set! (make-struct-field-mutator gx#AST::t '0))
    (define gx#AST-source-set! (make-struct-field-mutator gx#AST::t '1))
    (define gx#&AST-e (make-struct-field-unchecked-accessor gx#AST::t '0))
    (define gx#&AST-source (make-struct-field-unchecked-accessor gx#AST::t '1))
    (define gx#&AST-e-set! (make-struct-field-unchecked-mutator gx#AST::t '0))
    (define gx#&AST-source-set!
      (make-struct-field-unchecked-mutator gx#AST::t '1))))
