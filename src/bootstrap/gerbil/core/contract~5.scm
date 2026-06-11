(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g101419_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101421_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101423_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101425_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101426_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101427_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101428_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101430_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101431_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101432_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101433_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101435_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101436_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101437_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101438_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101440_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101441_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101442_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g101443_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj101241
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
              '#f
              '#f
              '#f))))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj101241
         'gerbil/core/contract~TypeEnv#type-env::t
         '2
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 'type-env '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj101241
         '(var type checked? super)
         '6
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 '() '5 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 '#t '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 '#f '12 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 '#f '13 '#f '#f))
      (let ((__tmp101418 |gerbil/core/contract~TypeEnv[1]#_g101419_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 __tmp101418 '4 '#f '#f))
      (let ((__tmp101420 |gerbil/core/contract~TypeEnv[1]#_g101421_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 __tmp101420 '14 '#f '#f))
      (let ((__tmp101422 |gerbil/core/contract~TypeEnv[1]#_g101423_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 __tmp101422 '15 '#f '#f))
      (let ((__tmp101424
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g101425_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g101426_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g101427_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g101428_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 __tmp101424 '16 '#f '#f))
      (let ((__tmp101429
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g101430_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g101431_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g101432_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g101433_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 __tmp101429 '17 '#f '#f))
      (let ((__tmp101434
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g101435_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g101436_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g101437_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g101438_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 __tmp101434 '18 '#f '#f))
      (let ((__tmp101439
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g101440_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g101441_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g101442_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g101443_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj101241 __tmp101439 '19 '#f '#f))
      __obj101241)))
