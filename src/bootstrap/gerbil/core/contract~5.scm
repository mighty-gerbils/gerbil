(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g97478_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97480_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97482_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97484_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97485_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97486_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97487_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97489_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97490_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97491_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97492_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97494_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97495_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97496_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97497_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97499_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97500_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97501_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97502_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj97308
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
         __obj97308
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj97308
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 '#f '12 '#f '#f))
      (let ((__tmp97477 |gerbil/core/contract~TypeEnv[1]#_g97478_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 __tmp97477 '3 '#f '#f))
      (let ((__tmp97479 |gerbil/core/contract~TypeEnv[1]#_g97480_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 __tmp97479 '13 '#f '#f))
      (let ((__tmp97481 |gerbil/core/contract~TypeEnv[1]#_g97482_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 __tmp97481 '14 '#f '#f))
      (let ((__tmp97483
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97484_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97485_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97486_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97487_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 __tmp97483 '15 '#f '#f))
      (let ((__tmp97488
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97489_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97490_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97491_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97492_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 __tmp97488 '16 '#f '#f))
      (let ((__tmp97493
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97494_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97495_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97496_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97497_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 __tmp97493 '17 '#f '#f))
      (let ((__tmp97498
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97499_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97500_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97501_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97502_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97308 __tmp97498 '18 '#f '#f))
      __obj97308)))
