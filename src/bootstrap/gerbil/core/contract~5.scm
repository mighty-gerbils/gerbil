(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g82597_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82599_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82601_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82603_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82604_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82605_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82606_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82608_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82609_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82610_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82611_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82613_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82614_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82615_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82616_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82618_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82619_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82620_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82621_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj82461
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
         __obj82461
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj82461
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 '#f '11 '#f '#f))
      (let ((__tmp82596 |gerbil/core/contract~TypeEnv[1]#_g82597_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 __tmp82596 '12 '#f '#f))
      (let ((__tmp82598 |gerbil/core/contract~TypeEnv[1]#_g82599_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 __tmp82598 '13 '#f '#f))
      (let ((__tmp82600 |gerbil/core/contract~TypeEnv[1]#_g82601_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 __tmp82600 '14 '#f '#f))
      (let ((__tmp82602
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82603_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82604_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82605_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82606_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 __tmp82602 '15 '#f '#f))
      (let ((__tmp82607
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82608_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82609_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82610_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82611_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 __tmp82607 '16 '#f '#f))
      (let ((__tmp82612
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82613_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82614_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82615_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82616_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 __tmp82612 '17 '#f '#f))
      (let ((__tmp82617
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82618_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82619_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82620_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82621_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82461 __tmp82617 '18 '#f '#f))
      __obj82461)))
