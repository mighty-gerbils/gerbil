(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~TypeEnv::timestamp 1771030465)
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
      (lambda _%$args51189%_
        (apply make-instance
               gerbil/core/contract~TypeEnv#type-env::t
               _%$args51189%_)))
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
      (lambda (_%var51179%_)
        (let _%loop51181%_ ((_%te51183%_
                             (gerbil/core/contract~TypeEnv#current-type-env)))
          (if (not _%te51183%_)
              '#f
              (if (gx#free-identifier=?
                   _%var51179%_
                   (##direct-structure-ref
                    _%te51183%_
                    '1
                    gerbil/core/contract~TypeEnv#type-env::t
                    '#f))
                  _%te51183%_
                  (_%loop51181%_
                   (##direct-structure-ref
                    _%te51183%_
                    '4
                    gerbil/core/contract~TypeEnv#type-env::t
                    '#f)))))))))
