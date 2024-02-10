(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/common::timestamp 1707573211)
  (begin
    (define gx#AST::t
      (let ((__tmp134250
             (let ((__tmp134251
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp134251 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil#AST::t
         'syntax
         '#f
         '(e source)
         __tmp134250
         '#f)))
    (define gx#AST?
      (let () (declare (not safe)) (make-struct-predicate gx#AST::t)))
    (define gx#make-AST
      (lambda _$args129681_
        (apply make-struct-instance gx#AST::t _$args129681_)))
    (define gx#AST-e
      (let () (declare (not safe)) (make-struct-slot-accessor gx#AST::t 'e)))
    (define gx#AST-source
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#AST::t 'source)))
    (define gx#AST-e-set!
      (let () (declare (not safe)) (make-struct-slot-mutator gx#AST::t 'e)))
    (define gx#AST-source-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#AST::t 'source)))
    (define gx#&AST-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#AST::t 'e)))
    (define gx#&AST-source
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#AST::t 'source)))
    (define gx#&AST-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#AST::t 'e)))
    (define gx#&AST-source-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#AST::t 'source)))))
