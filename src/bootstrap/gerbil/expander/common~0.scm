(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/common::timestamp 1734357961)
  (begin
    (define gx#AST::t
      (let ((__tmp118041 (list))
            (__tmp118040 (cons (cons 'struct: '#t) '((print: e)))))
        (declare (not safe))
        (__make-class-type
         'gerbil#AST::t
         'syntax
         __tmp118041
         '(e source)
         __tmp118040
         '#f)))
    (define gx#AST?
      (let () (declare (not safe)) (__make-class-predicate gx#AST::t)))
    (define gx#make-AST
      (lambda _%$args117939%_ (apply make-instance gx#AST::t _%$args117939%_)))
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
