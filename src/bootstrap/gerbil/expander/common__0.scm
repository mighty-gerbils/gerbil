(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/common::timestamp 1707565659)
  (begin
    (define gx#AST::t
      (let ((__tmp129856
             (let ((__tmp129857
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp129857 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil#AST::t
         'syntax
         '#f
         '(e source)
         __tmp129856
         '#f)))
    (define gx#AST?
      (let () (declare (not safe)) (make-struct-predicate gx#AST::t)))
    (define gx#make-AST
      (lambda _$args125561_
        (apply make-struct-instance gx#AST::t _$args125561_)))
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
