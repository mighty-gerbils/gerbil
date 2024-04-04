(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g80695_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80697_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80699_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80701_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80702_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80703_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80704_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80706_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80707_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80708_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80709_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80711_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80712_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80713_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80714_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80716_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80717_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80718_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80719_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj80552
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
         __obj80552
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj80552
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 '#f '11 '#f '#f))
      (let ((__tmp80694 |gerbil/core/contract~TypeEnv[1]#_g80695_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 __tmp80694 '12 '#f '#f))
      (let ((__tmp80696 |gerbil/core/contract~TypeEnv[1]#_g80697_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 __tmp80696 '13 '#f '#f))
      (let ((__tmp80698 |gerbil/core/contract~TypeEnv[1]#_g80699_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 __tmp80698 '14 '#f '#f))
      (let ((__tmp80700
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80701_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80702_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80703_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80704_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 __tmp80700 '15 '#f '#f))
      (let ((__tmp80705
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80706_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80707_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80708_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80709_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 __tmp80705 '16 '#f '#f))
      (let ((__tmp80710
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80711_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80712_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80713_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80714_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 __tmp80710 '17 '#f '#f))
      (let ((__tmp80715
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80716_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80717_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80718_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80719_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80552 __tmp80715 '18 '#f '#f))
      __obj80552)))
