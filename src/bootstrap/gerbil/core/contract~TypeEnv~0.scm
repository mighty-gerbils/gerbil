(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~TypeEnv::timestamp 1712146022)
  (begin
    (define gerbil/core/contract~TypeEnv#type-env::t
      (make-class-type
       'gerbil/core/contract~TypeEnv#type-env::t
       'type-env
       (list)
       '(var type checked? super)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gerbil/core/contract~TypeEnv#type-env?
      (make-class-predicate gerbil/core/contract~TypeEnv#type-env::t))
    (define gerbil/core/contract~TypeEnv#make-type-env
      (lambda _%$args46621%_
        (apply make-instance
               gerbil/core/contract~TypeEnv#type-env::t
               _%$args46621%_)))
    (define gerbil/core/contract~TypeEnv#type-env-var
      (make-class-slot-accessor gerbil/core/contract~TypeEnv#type-env::t 'var))
    (define gerbil/core/contract~TypeEnv#type-env-type
      (make-class-slot-accessor
       gerbil/core/contract~TypeEnv#type-env::t
       'type))
    (define gerbil/core/contract~TypeEnv#type-env-checked?
      (make-class-slot-accessor
       gerbil/core/contract~TypeEnv#type-env::t
       'checked?))
    (define gerbil/core/contract~TypeEnv#type-env-super
      (make-class-slot-accessor
       gerbil/core/contract~TypeEnv#type-env::t
       'super))
    (define gerbil/core/contract~TypeEnv#type-env-var-set!
      (make-class-slot-mutator gerbil/core/contract~TypeEnv#type-env::t 'var))
    (define gerbil/core/contract~TypeEnv#type-env-type-set!
      (make-class-slot-mutator gerbil/core/contract~TypeEnv#type-env::t 'type))
    (define gerbil/core/contract~TypeEnv#type-env-checked?-set!
      (make-class-slot-mutator
       gerbil/core/contract~TypeEnv#type-env::t
       'checked?))
    (define gerbil/core/contract~TypeEnv#type-env-super-set!
      (make-class-slot-mutator
       gerbil/core/contract~TypeEnv#type-env::t
       'super))
    (define gerbil/core/contract~TypeEnv#&type-env-var
      (make-class-slot-unchecked-accessor
       gerbil/core/contract~TypeEnv#type-env::t
       'var))
    (define gerbil/core/contract~TypeEnv#&type-env-type
      (make-class-slot-unchecked-accessor
       gerbil/core/contract~TypeEnv#type-env::t
       'type))
    (define gerbil/core/contract~TypeEnv#&type-env-checked?
      (make-class-slot-unchecked-accessor
       gerbil/core/contract~TypeEnv#type-env::t
       'checked?))
    (define gerbil/core/contract~TypeEnv#&type-env-super
      (make-class-slot-unchecked-accessor
       gerbil/core/contract~TypeEnv#type-env::t
       'super))
    (define gerbil/core/contract~TypeEnv#&type-env-var-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/contract~TypeEnv#type-env::t
       'var))
    (define gerbil/core/contract~TypeEnv#&type-env-type-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/contract~TypeEnv#type-env::t
       'type))
    (define gerbil/core/contract~TypeEnv#&type-env-checked?-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/contract~TypeEnv#type-env::t
       'checked?))
    (define gerbil/core/contract~TypeEnv#&type-env-super-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/contract~TypeEnv#type-env::t
       'super))
    (define gerbil/core/contract~TypeEnv#current-type-env
      (lambda ()
        (gx#syntax-local-value (gx#syntax-local-introduce '@@type) false)))
    (define gerbil/core/contract~TypeEnv#type-env-lookup
      (lambda (_%var46611%_)
        (let _%loop46613%_ ((_%te46615%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))))
          (if (let () (declare (not safe)) (not _%te46615%_))
              (let () '#f)
              (if (gx#free-identifier=?
                   _%var46611%_
                   (##direct-structure-ref
                    _%te46615%_
                    '1
                    gerbil/core/contract~TypeEnv#type-env::t
                    '#f))
                  (let () _%te46615%_)
                  (let ((__tmp80073
                         (##direct-structure-ref
                          _%te46615%_
                          '4
                          gerbil/core/contract~TypeEnv#type-env::t
                          '#f)))
                    (declare (not safe))
                    (_%loop46613%_ __tmp80073)))))))))