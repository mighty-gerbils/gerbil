(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g80108_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80110_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80112_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80114_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80115_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80116_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80117_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80119_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80120_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80121_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80122_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80124_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80125_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80126_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80127_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80129_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80130_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80131_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80132_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj79963
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
         __obj79963
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj79963
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 '#f '11 '#f '#f))
      (let ((__tmp80107 |gerbil/core/contract~TypeEnv[1]#_g80108_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 __tmp80107 '12 '#f '#f))
      (let ((__tmp80109 |gerbil/core/contract~TypeEnv[1]#_g80110_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 __tmp80109 '13 '#f '#f))
      (let ((__tmp80111 |gerbil/core/contract~TypeEnv[1]#_g80112_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 __tmp80111 '14 '#f '#f))
      (let ((__tmp80113
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80114_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80115_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80116_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80117_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 __tmp80113 '15 '#f '#f))
      (let ((__tmp80118
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80119_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80120_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80121_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80122_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 __tmp80118 '16 '#f '#f))
      (let ((__tmp80123
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80124_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80125_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80126_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80127_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 __tmp80123 '17 '#f '#f))
      (let ((__tmp80128
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80129_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80130_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80131_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80132_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj79963 __tmp80128 '18 '#f '#f))
      __obj79963)))
