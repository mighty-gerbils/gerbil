(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g283025_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283027_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283029_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283031_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283032_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283033_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283034_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283036_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283037_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283038_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283039_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283041_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283042_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283043_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283044_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283046_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283047_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283048_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g283049_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj282855
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
         __obj282855
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj282855
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 '#f '12 '#f '#f))
      (let ((__tmp283024 |gerbil/core/contract~TypeEnv[1]#_g283025_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 __tmp283024 '3 '#f '#f))
      (let ((__tmp283026 |gerbil/core/contract~TypeEnv[1]#_g283027_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 __tmp283026 '13 '#f '#f))
      (let ((__tmp283028 |gerbil/core/contract~TypeEnv[1]#_g283029_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 __tmp283028 '14 '#f '#f))
      (let ((__tmp283030
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g283031_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g283032_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g283033_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g283034_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 __tmp283030 '15 '#f '#f))
      (let ((__tmp283035
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g283036_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g283037_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g283038_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g283039_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 __tmp283035 '16 '#f '#f))
      (let ((__tmp283040
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g283041_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g283042_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g283043_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g283044_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 __tmp283040 '17 '#f '#f))
      (let ((__tmp283045
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g283046_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g283047_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g283048_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g283049_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj282855 __tmp283045 '18 '#f '#f))
      __obj282855)))
