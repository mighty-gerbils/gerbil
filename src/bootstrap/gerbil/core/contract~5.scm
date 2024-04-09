(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g80496_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80498_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80500_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80502_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80503_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80504_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80505_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80507_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80508_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80509_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80510_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80512_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80513_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80514_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80515_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80517_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80518_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80519_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80520_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj80362
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
         __obj80362
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj80362
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 '#f '11 '#f '#f))
      (let ((__tmp80495 |gerbil/core/contract~TypeEnv[1]#_g80496_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 __tmp80495 '12 '#f '#f))
      (let ((__tmp80497 |gerbil/core/contract~TypeEnv[1]#_g80498_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 __tmp80497 '13 '#f '#f))
      (let ((__tmp80499 |gerbil/core/contract~TypeEnv[1]#_g80500_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 __tmp80499 '14 '#f '#f))
      (let ((__tmp80501
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80502_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80503_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80504_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80505_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 __tmp80501 '15 '#f '#f))
      (let ((__tmp80506
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80507_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80508_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80509_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80510_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 __tmp80506 '16 '#f '#f))
      (let ((__tmp80511
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80512_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80513_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80514_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80515_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 __tmp80511 '17 '#f '#f))
      (let ((__tmp80516
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80517_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80518_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80519_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80520_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80362 __tmp80516 '18 '#f '#f))
      __obj80362)))
