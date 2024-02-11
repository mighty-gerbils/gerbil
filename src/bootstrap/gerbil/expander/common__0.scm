(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/common::timestamp 1707657569)
  (begin
    (define gx#AST::t
      (let ((__tmp134120 (list))
            (__tmp134118
             (let ((__tmp134119
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp134119 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#AST::t
         'syntax
         __tmp134120
         '(e source)
         __tmp134118
         '#f)))
    (define gx#AST?
      (let () (declare (not safe)) (make-class-predicate gx#AST::t)))
    (define gx#make-AST
      (lambda _$args129549_
        (apply make-class-instance gx#AST::t _$args129549_)))
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
