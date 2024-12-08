(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g84039_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84041_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84043_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84045_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84046_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84047_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84048_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84050_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84051_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84052_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84053_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84055_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84056_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84057_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84058_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84060_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84061_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84062_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84063_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj83903
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
         __obj83903
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj83903
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 '#f '11 '#f '#f))
      (let ((__tmp84038 |gerbil/core/contract~TypeEnv[1]#_g84039_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 __tmp84038 '12 '#f '#f))
      (let ((__tmp84040 |gerbil/core/contract~TypeEnv[1]#_g84041_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 __tmp84040 '13 '#f '#f))
      (let ((__tmp84042 |gerbil/core/contract~TypeEnv[1]#_g84043_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 __tmp84042 '14 '#f '#f))
      (let ((__tmp84044
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84045_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84046_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84047_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84048_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 __tmp84044 '15 '#f '#f))
      (let ((__tmp84049
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84050_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84051_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84052_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84053_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 __tmp84049 '16 '#f '#f))
      (let ((__tmp84054
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84055_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84056_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84057_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84058_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 __tmp84054 '17 '#f '#f))
      (let ((__tmp84059
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84060_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84061_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84062_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84063_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj83903 __tmp84059 '18 '#f '#f))
      __obj83903)))
