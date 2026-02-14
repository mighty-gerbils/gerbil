(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g100203_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100205_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100207_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100209_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100210_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100211_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100212_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100214_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100215_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100216_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100217_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100219_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100220_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100221_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100222_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100224_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100225_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100226_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100227_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj100029
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
         __obj100029
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj100029
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 '#f '12 '#f '#f))
      (let ((__tmp100202 |gerbil/core/contract~TypeEnv[1]#_g100203_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 __tmp100202 '3 '#f '#f))
      (let ((__tmp100204 |gerbil/core/contract~TypeEnv[1]#_g100205_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 __tmp100204 '13 '#f '#f))
      (let ((__tmp100206 |gerbil/core/contract~TypeEnv[1]#_g100207_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 __tmp100206 '14 '#f '#f))
      (let ((__tmp100208
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100209_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100210_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100211_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100212_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 __tmp100208 '15 '#f '#f))
      (let ((__tmp100213
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100214_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100215_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100216_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100217_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 __tmp100213 '16 '#f '#f))
      (let ((__tmp100218
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100219_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100220_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100221_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100222_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 __tmp100218 '17 '#f '#f))
      (let ((__tmp100223
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100224_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100225_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100226_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100227_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100029 __tmp100223 '18 '#f '#f))
      __obj100029)))
