(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/common::timestamp 1709375797)
  (begin
    (define gx#AST::t
      (let ((__tmp80109 (list))
            (__tmp80107
             (let ((__tmp80108
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp80108 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#AST::t
         'syntax
         __tmp80109
         '(e source)
         __tmp80107
         '#f)))
    (define gx#AST?
      (let () (declare (not safe)) (make-class-predicate gx#AST::t)))
    (define gx#make-AST
      (lambda _$args80006_ (apply make-instance gx#AST::t _$args80006_)))
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
