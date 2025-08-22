(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g88399_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88401_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88403_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88405_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88406_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88407_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88408_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88410_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88411_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88412_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88413_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88415_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88416_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88417_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88418_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88420_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88421_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88422_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g88423_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj88246
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
         __obj88246
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj88246
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 '#f '11 '#f '#f))
      (let ((__tmp88398 |gerbil/core/contract~TypeEnv[1]#_g88399_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 __tmp88398 '12 '#f '#f))
      (let ((__tmp88400 |gerbil/core/contract~TypeEnv[1]#_g88401_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 __tmp88400 '13 '#f '#f))
      (let ((__tmp88402 |gerbil/core/contract~TypeEnv[1]#_g88403_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 __tmp88402 '14 '#f '#f))
      (let ((__tmp88404
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g88405_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g88406_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g88407_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g88408_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 __tmp88404 '15 '#f '#f))
      (let ((__tmp88409
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g88410_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g88411_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g88412_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g88413_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 __tmp88409 '16 '#f '#f))
      (let ((__tmp88414
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g88415_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g88416_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g88417_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g88418_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 __tmp88414 '17 '#f '#f))
      (let ((__tmp88419
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g88420_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g88421_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g88422_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g88423_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj88246 __tmp88419 '18 '#f '#f))
      __obj88246)))
