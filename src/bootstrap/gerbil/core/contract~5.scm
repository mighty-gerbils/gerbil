(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g80030_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80032_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80034_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80036_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80037_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80038_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80039_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80041_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80042_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80043_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80044_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80046_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80047_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80048_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80049_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80051_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80052_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80053_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80054_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj79887
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
         __obj79887
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj79887
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 '#f '11 '#f '#f))
      (let ((__tmp80029 |gerbil/core/contract~TypeEnv[1]#_g80030_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 __tmp80029 '12 '#f '#f))
      (let ((__tmp80031 |gerbil/core/contract~TypeEnv[1]#_g80032_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 __tmp80031 '13 '#f '#f))
      (let ((__tmp80033 |gerbil/core/contract~TypeEnv[1]#_g80034_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 __tmp80033 '14 '#f '#f))
      (let ((__tmp80035
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80036_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80037_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80038_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80039_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 __tmp80035 '15 '#f '#f))
      (let ((__tmp80040
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80041_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80042_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80043_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80044_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 __tmp80040 '16 '#f '#f))
      (let ((__tmp80045
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80046_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80047_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80048_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80049_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 __tmp80045 '17 '#f '#f))
      (let ((__tmp80050
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80051_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80052_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80053_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80054_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj79887 __tmp80050 '18 '#f '#f))
      __obj79887)))
