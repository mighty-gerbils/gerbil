(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g90709_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90711_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90713_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90715_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90716_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90717_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90718_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90720_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90721_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90722_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90723_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90725_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90726_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90727_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90728_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90730_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90731_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90732_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g90733_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj90557
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
         __obj90557
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj90557
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 '#f '11 '#f '#f))
      (let ((__tmp90708 |gerbil/core/contract~TypeEnv[1]#_g90709_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 __tmp90708 '12 '#f '#f))
      (let ((__tmp90710 |gerbil/core/contract~TypeEnv[1]#_g90711_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 __tmp90710 '13 '#f '#f))
      (let ((__tmp90712 |gerbil/core/contract~TypeEnv[1]#_g90713_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 __tmp90712 '14 '#f '#f))
      (let ((__tmp90714
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g90715_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g90716_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g90717_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g90718_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 __tmp90714 '15 '#f '#f))
      (let ((__tmp90719
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g90720_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g90721_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g90722_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g90723_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 __tmp90719 '16 '#f '#f))
      (let ((__tmp90724
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g90725_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g90726_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g90727_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g90728_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 __tmp90724 '17 '#f '#f))
      (let ((__tmp90729
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g90730_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g90731_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g90732_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g90733_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj90557 __tmp90729 '18 '#f '#f))
      __obj90557)))
