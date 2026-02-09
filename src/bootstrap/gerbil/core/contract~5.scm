(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g98871_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98873_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98875_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98877_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98878_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98879_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98880_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98882_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98883_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98884_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98885_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98887_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98888_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98889_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98890_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98892_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98893_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98894_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g98895_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj98701
           (let ()
             (declare (not safe))
             (##structure
              gerbil/core/mop~MOP-2#class-type-info::t
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f))))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj98701
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj98701
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 '#f '12 '#f '#f))
      (let ((__tmp98870 |gerbil/core/contract~TypeEnv[1]#_g98871_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 __tmp98870 '3 '#f '#f))
      (let ((__tmp98872 |gerbil/core/contract~TypeEnv[1]#_g98873_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 __tmp98872 '13 '#f '#f))
      (let ((__tmp98874 |gerbil/core/contract~TypeEnv[1]#_g98875_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 __tmp98874 '14 '#f '#f))
      (let ((__tmp98876
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g98877_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g98878_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g98879_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g98880_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 __tmp98876 '15 '#f '#f))
      (let ((__tmp98881
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g98882_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g98883_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g98884_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g98885_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 __tmp98881 '16 '#f '#f))
      (let ((__tmp98886
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g98887_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g98888_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g98889_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g98890_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 __tmp98886 '17 '#f '#f))
      (let ((__tmp98891
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g98892_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g98893_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g98894_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g98895_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj98701 __tmp98891 '18 '#f '#f))
      __obj98701)))
