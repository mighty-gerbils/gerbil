(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g87628_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87629_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87630_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87631_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87632_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87633_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87634_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87635_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87636_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87637_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87638_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87639_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87640_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87641_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87642_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87643_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87644_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87645_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g87646_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (gerbil/core/mop~MOP-2#make-class-type-info
     'id:
     'gerbil/core/contract~TypeEnv#type-env::t
     'name:
     'type-env
     'slots:
     '(var type checked? super)
     'super:
     '()
     'struct?:
     '#t
     'final?:
     '#t
     'metaclass:
     '#f
     'constructor-method:
     '#f
     'type-descriptor:
     |gerbil/core/contract~TypeEnv[1]#_g87628_|
     'constructor:
     |gerbil/core/contract~TypeEnv[1]#_g87629_|
     'predicate:
     |gerbil/core/contract~TypeEnv[1]#_g87630_|
     'accessors:
     (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g87631_|)
           (cons (cons 'type |gerbil/core/contract~TypeEnv[1]#_g87632_|)
                 (cons (cons 'checked?
                             |gerbil/core/contract~TypeEnv[1]#_g87633_|)
                       (cons (cons 'super
                                   |gerbil/core/contract~TypeEnv[1]#_g87634_|)
                             '()))))
     'mutators:
     (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g87635_|)
           (cons (cons 'type |gerbil/core/contract~TypeEnv[1]#_g87636_|)
                 (cons (cons 'checked?
                             |gerbil/core/contract~TypeEnv[1]#_g87637_|)
                       (cons (cons 'super
                                   |gerbil/core/contract~TypeEnv[1]#_g87638_|)
                             '()))))
     'unchecked-accessors:
     (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g87639_|)
           (cons (cons 'type |gerbil/core/contract~TypeEnv[1]#_g87640_|)
                 (cons (cons 'checked?
                             |gerbil/core/contract~TypeEnv[1]#_g87641_|)
                       (cons (cons 'super
                                   |gerbil/core/contract~TypeEnv[1]#_g87642_|)
                             '()))))
     'unchecked-mutators:
     (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g87643_|)
           (cons (cons 'type |gerbil/core/contract~TypeEnv[1]#_g87644_|)
                 (cons (cons 'checked?
                             |gerbil/core/contract~TypeEnv[1]#_g87645_|)
                       (cons (cons 'super
                                   |gerbil/core/contract~TypeEnv[1]#_g87646_|)
                             '())))))))
