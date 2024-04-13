(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g82564_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82566_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82568_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82570_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82571_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82572_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82573_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82575_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82576_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82577_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82578_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82580_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82581_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82582_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82583_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82585_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82586_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82587_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82588_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj82428
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
         __obj82428
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj82428
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 '#f '11 '#f '#f))
      (let ((__tmp82563 |gerbil/core/contract~TypeEnv[1]#_g82564_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 __tmp82563 '12 '#f '#f))
      (let ((__tmp82565 |gerbil/core/contract~TypeEnv[1]#_g82566_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 __tmp82565 '13 '#f '#f))
      (let ((__tmp82567 |gerbil/core/contract~TypeEnv[1]#_g82568_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 __tmp82567 '14 '#f '#f))
      (let ((__tmp82569
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82570_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82571_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82572_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82573_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 __tmp82569 '15 '#f '#f))
      (let ((__tmp82574
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82575_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82576_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82577_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82578_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 __tmp82574 '16 '#f '#f))
      (let ((__tmp82579
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82580_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82581_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82582_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82583_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 __tmp82579 '17 '#f '#f))
      (let ((__tmp82584
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82585_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82586_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82587_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82588_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82428 __tmp82584 '18 '#f '#f))
      __obj82428)))
