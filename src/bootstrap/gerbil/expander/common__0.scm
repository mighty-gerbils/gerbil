(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/common::timestamp 1709111636)
  (begin
    (define gx#AST::t
      (let ((__tmp79695 (list))
            (__tmp79693
             (let ((__tmp79694
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79694 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#AST::t
         'syntax
         __tmp79695
         '(e source)
         __tmp79693
         '#f)))
    (define gx#AST?
      (let () (declare (not safe)) (make-class-predicate gx#AST::t)))
    (define gx#make-AST
      (lambda _$args79592_ (apply make-instance gx#AST::t _$args79592_)))
    (define gx#AST-e
      (let () (declare (not safe)) (make-class-slot-accessor gx#AST::t 'e)))
    (define gx#AST-source
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#AST::t 'source)))
    (define gx#AST-e-set!
      (let () (declare (not safe)) (make-class-slot-mutator gx#AST::t 'e)))
    (define gx#AST-source-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#AST::t 'source)))
    (define gx#&AST-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#AST::t 'e)))
    (define gx#&AST-source
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#AST::t 'source)))
    (define gx#&AST-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#AST::t 'e)))
    (define gx#&AST-source-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#AST::t 'source)))))
