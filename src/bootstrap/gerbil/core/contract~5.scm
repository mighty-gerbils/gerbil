(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g100222_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100224_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100226_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100228_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100229_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100230_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100231_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100233_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100234_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100235_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100236_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100238_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100239_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100240_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100241_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100243_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100244_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100245_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100246_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj100048
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
              '#f))))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj100048
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj100048
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 '#f '12 '#f '#f))
      (let ((__tmp100221 |gerbil/core/contract~TypeEnv[1]#_g100222_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 __tmp100221 '3 '#f '#f))
      (let ((__tmp100223 |gerbil/core/contract~TypeEnv[1]#_g100224_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 __tmp100223 '13 '#f '#f))
      (let ((__tmp100225 |gerbil/core/contract~TypeEnv[1]#_g100226_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 __tmp100225 '14 '#f '#f))
      (let ((__tmp100227
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100228_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100229_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100230_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100231_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 __tmp100227 '15 '#f '#f))
      (let ((__tmp100232
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100233_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100234_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100235_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100236_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 __tmp100232 '16 '#f '#f))
      (let ((__tmp100237
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100238_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100239_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100240_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100241_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 __tmp100237 '17 '#f '#f))
      (let ((__tmp100242
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100243_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100244_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100245_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100246_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100048 __tmp100242 '18 '#f '#f))
      __obj100048)))
