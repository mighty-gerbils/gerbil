(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g84102_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84104_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84106_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84108_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84109_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84110_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84111_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84113_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84114_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84115_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84116_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84118_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84119_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84120_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84121_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84123_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84124_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84125_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84126_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj83966
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
         __obj83966
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj83966
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 '#f '11 '#f '#f))
      (let ((__tmp84101 |gerbil/core/contract~TypeEnv[1]#_g84102_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 __tmp84101 '12 '#f '#f))
      (let ((__tmp84103 |gerbil/core/contract~TypeEnv[1]#_g84104_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 __tmp84103 '13 '#f '#f))
      (let ((__tmp84105 |gerbil/core/contract~TypeEnv[1]#_g84106_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 __tmp84105 '14 '#f '#f))
      (let ((__tmp84107
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84108_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84109_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84110_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84111_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 __tmp84107 '15 '#f '#f))
      (let ((__tmp84112
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84113_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84114_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84115_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84116_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 __tmp84112 '16 '#f '#f))
      (let ((__tmp84117
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84118_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84119_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84120_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84121_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 __tmp84117 '17 '#f '#f))
      (let ((__tmp84122
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84123_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84124_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84125_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84126_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj83966 __tmp84122 '18 '#f '#f))
      __obj83966)))
