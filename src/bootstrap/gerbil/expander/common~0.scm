(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/common::timestamp 1770513296)
  (begin
    (define gx#AST::t
      (let ((__tmp169040 (list)) (__tmp169039 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#AST::t
         'syntax
         __tmp169040
         '(e source)
         __tmp169039
         '#f)))
    (define gx#AST?
      (let () (declare (not safe)) (__make-class-predicate gx#AST::t)))
    (define gx#make-AST
      (lambda _%$args168938%_ (apply make-instance gx#AST::t _%$args168938%_)))
    (define gx#AST-e
      (let () (declare (not safe)) (__make-class-slot-accessor gx#AST::t 'e)))
    (define gx#AST-source
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#AST::t 'source)))
    (define gx#AST-e-set!
      (let () (declare (not safe)) (__make-class-slot-mutator gx#AST::t 'e)))
    (define gx#AST-source-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#AST::t 'source)))
    (define gx#&AST-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#AST::t 'e)))
    (define gx#&AST-source
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#AST::t 'source)))
    (define gx#&AST-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#AST::t 'e)))
    (define gx#&AST-source-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#AST::t 'source)))
    (define gx#__DEBUG-EXPANDER
      (if (string? __DEBUG)
          (let ()
            (declare (not safe))
            (##string-contains __DEBUG '"expansion"))
          '#f))))
