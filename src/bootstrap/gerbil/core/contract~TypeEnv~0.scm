(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~TypeEnv::timestamp 1781697548)
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
      (lambda _%$args53078%_
        (apply make-instance
               gerbil/core/contract~TypeEnv#type-env::t
               _%$args53078%_)))
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
      (lambda (_%var53068%_)
        (let _%loop53070%_ ((_%te53072%_
                             (gerbil/core/contract~TypeEnv#current-type-env)))
          (if (not _%te53072%_)
              '#f
              (if (gx#free-identifier=?
                   _%var53068%_
                   (##direct-structure-ref
                    _%te53072%_
                    '1
                    gerbil/core/contract~TypeEnv#type-env::t
                    '#f))
                  _%te53072%_
                  (_%loop53070%_
                   (##direct-structure-ref
                    _%te53072%_
                    '4
                    gerbil/core/contract~TypeEnv#type-env::t
                    '#f)))))))))
