(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g82366_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82368_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82370_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82372_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82373_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82374_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82375_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82377_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82378_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82379_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82380_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82382_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82383_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82384_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82385_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82387_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82388_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82389_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82390_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj82230
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
         __obj82230
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj82230
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 '#f '11 '#f '#f))
      (let ((__tmp82365 |gerbil/core/contract~TypeEnv[1]#_g82366_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 __tmp82365 '12 '#f '#f))
      (let ((__tmp82367 |gerbil/core/contract~TypeEnv[1]#_g82368_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 __tmp82367 '13 '#f '#f))
      (let ((__tmp82369 |gerbil/core/contract~TypeEnv[1]#_g82370_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 __tmp82369 '14 '#f '#f))
      (let ((__tmp82371
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82372_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82373_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82374_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82375_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 __tmp82371 '15 '#f '#f))
      (let ((__tmp82376
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82377_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82378_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82379_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82380_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 __tmp82376 '16 '#f '#f))
      (let ((__tmp82381
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82382_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82383_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82384_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82385_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 __tmp82381 '17 '#f '#f))
      (let ((__tmp82386
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82387_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82388_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82389_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82390_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82230 __tmp82386 '18 '#f '#f))
      __obj82230)))
