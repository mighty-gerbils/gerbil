(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g92292_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92294_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92296_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92298_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92299_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92300_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92301_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92303_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92304_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92305_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92306_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92308_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92309_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92310_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92311_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92313_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92314_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92315_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92316_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj92131
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
         __obj92131
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj92131
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 '#f '12 '#f '#f))
      (let ((__tmp92291 |gerbil/core/contract~TypeEnv[1]#_g92292_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 __tmp92291 '3 '#f '#f))
      (let ((__tmp92293 |gerbil/core/contract~TypeEnv[1]#_g92294_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 __tmp92293 '13 '#f '#f))
      (let ((__tmp92295 |gerbil/core/contract~TypeEnv[1]#_g92296_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 __tmp92295 '14 '#f '#f))
      (let ((__tmp92297
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92298_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92299_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92300_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92301_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 __tmp92297 '15 '#f '#f))
      (let ((__tmp92302
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92303_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92304_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92305_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92306_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 __tmp92302 '16 '#f '#f))
      (let ((__tmp92307
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92308_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92309_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92310_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92311_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 __tmp92307 '17 '#f '#f))
      (let ((__tmp92312
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92313_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92314_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92315_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92316_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92131 __tmp92312 '18 '#f '#f))
      __obj92131)))
