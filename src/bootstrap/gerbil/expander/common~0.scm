(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/common::timestamp 1742223872)
  (begin
    (define gx#AST::t
      (let ((__tmp117977 (list))
            (__tmp117976 (cons (cons 'struct: '#t) '((print: e)))))
        (declare (not safe))
        (__make-class-type
         'gerbil#AST::t
         'syntax
         __tmp117977
         '(e source)
         __tmp117976
         '#f)))
    (define gx#AST?
      (let () (declare (not safe)) (__make-class-predicate gx#AST::t)))
    (define gx#make-AST
      (lambda _%$args117875%_ (apply make-instance gx#AST::t _%$args117875%_)))
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
