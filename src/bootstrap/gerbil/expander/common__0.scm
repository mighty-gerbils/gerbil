(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/common::timestamp 1695292397)
  (begin
    (define gx#AST::t
      (let ()
        (declare (not safe))
        (make-struct-type 'gerbil#AST::t '#f '2 'syntax '() '#f '(e source))))
    (define gx#AST?
      (let () (declare (not safe)) (make-struct-predicate gx#AST::t)))
    (define gx#make-AST
      (lambda _$args1320_ (apply make-struct-instance gx#AST::t _$args1320_)))
    (define gx#AST-e
      (let () (declare (not safe)) (make-struct-field-accessor gx#AST::t '0)))
    (define gx#AST-source
      (let () (declare (not safe)) (make-struct-field-accessor gx#AST::t '1)))
    (define gx#AST-e-set!
      (let () (declare (not safe)) (make-struct-field-mutator gx#AST::t '0)))
    (define gx#AST-source-set!
      (let () (declare (not safe)) (make-struct-field-mutator gx#AST::t '1)))
    (define gx#&AST-e
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gx#AST::t '0)))
    (define gx#&AST-source
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gx#AST::t '1)))
    (define gx#&AST-e-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gx#AST::t '0)))
    (define gx#&AST-source-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gx#AST::t '1)))))
