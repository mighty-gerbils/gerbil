(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/common::timestamp 1781119045)
  (begin
    (define gx#AST::t
      (make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '((print: e)))
       '#f))
    (define gx#AST? (make-class-predicate gx#AST::t))
    (define gx#make-AST
      (lambda _%$args151994%_ (apply make-instance gx#AST::t _%$args151994%_)))
    (define gx#AST-e (make-class-slot-accessor gx#AST::t 'e))
    (define gx#AST-source (make-class-slot-accessor gx#AST::t 'source))
    (define gx#AST-e-set! (make-class-slot-mutator gx#AST::t 'e))
    (define gx#AST-source-set! (make-class-slot-mutator gx#AST::t 'source))
    (define gx#&AST-e (make-class-slot-unchecked-accessor gx#AST::t 'e))
    (define gx#&AST-source
      (make-class-slot-unchecked-accessor gx#AST::t 'source))
    (define gx#&AST-e-set! (make-class-slot-unchecked-mutator gx#AST::t 'e))
    (define gx#&AST-source-set!
      (make-class-slot-unchecked-mutator gx#AST::t 'source))
    (define gx#__DEBUG-EXPANDER
      (if (string? __DEBUG) (string-contains __DEBUG '"expansion") '#f))
    (define gx#__DEBUG-VERBOSE
      (if (string? __DEBUG) (string-contains __DEBUG '"verbose") '#f))))
