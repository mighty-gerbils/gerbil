(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g82599_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82601_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82603_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82605_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82606_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82607_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82608_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82610_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82611_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82612_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82613_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82615_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82616_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82617_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82618_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82620_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82621_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82622_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82623_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj82463
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
         __obj82463
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj82463
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 '#f '11 '#f '#f))
      (let ((__tmp82598 |gerbil/core/contract~TypeEnv[1]#_g82599_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 __tmp82598 '12 '#f '#f))
      (let ((__tmp82600 |gerbil/core/contract~TypeEnv[1]#_g82601_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 __tmp82600 '13 '#f '#f))
      (let ((__tmp82602 |gerbil/core/contract~TypeEnv[1]#_g82603_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 __tmp82602 '14 '#f '#f))
      (let ((__tmp82604
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82605_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82606_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82607_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82608_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 __tmp82604 '15 '#f '#f))
      (let ((__tmp82609
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82610_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82611_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82612_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82613_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 __tmp82609 '16 '#f '#f))
      (let ((__tmp82614
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82615_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82616_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82617_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82618_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 __tmp82614 '17 '#f '#f))
      (let ((__tmp82619
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82620_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82621_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82622_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82623_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82463 __tmp82619 '18 '#f '#f))
      __obj82463)))
