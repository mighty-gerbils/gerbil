(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/common::timestamp 1712773525)
  (begin
    (define gx#AST::t
      (let ((__tmp113788 (list))
            (__tmp113787 (cons (cons 'struct: '#t) '((print: e)))))
        (declare (not safe))
        (__make-class-type
         'gerbil#AST::t
         'syntax
         __tmp113788
         '(e source)
         __tmp113787
         '#f)))
    (define gx#AST?
      (let () (declare (not safe)) (__make-class-predicate gx#AST::t)))
    (define gx#make-AST
      (lambda _%$args113686%_ (apply make-instance gx#AST::t _%$args113686%_)))
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
        (__make-class-slot-unchecked-mutator gx#AST::t 'source)))))
