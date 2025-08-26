(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g91437_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91439_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91441_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91443_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91444_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91445_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91446_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91448_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91449_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91450_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91451_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91453_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91454_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91455_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91456_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91458_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91459_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91460_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91461_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj91285
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
         __obj91285
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj91285
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 '#f '11 '#f '#f))
      (let ((__tmp91436 |gerbil/core/contract~TypeEnv[1]#_g91437_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 __tmp91436 '12 '#f '#f))
      (let ((__tmp91438 |gerbil/core/contract~TypeEnv[1]#_g91439_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 __tmp91438 '13 '#f '#f))
      (let ((__tmp91440 |gerbil/core/contract~TypeEnv[1]#_g91441_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 __tmp91440 '14 '#f '#f))
      (let ((__tmp91442
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g91443_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g91444_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g91445_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g91446_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 __tmp91442 '15 '#f '#f))
      (let ((__tmp91447
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g91448_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g91449_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g91450_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g91451_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 __tmp91447 '16 '#f '#f))
      (let ((__tmp91452
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g91453_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g91454_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g91455_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g91456_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 __tmp91452 '17 '#f '#f))
      (let ((__tmp91457
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g91458_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g91459_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g91460_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g91461_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj91285 __tmp91457 '18 '#f '#f))
      __obj91285)))
