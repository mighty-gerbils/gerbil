(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g80726_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80728_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80730_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80732_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80733_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80734_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80735_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80737_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80738_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80739_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80740_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80742_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80743_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80744_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80745_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80747_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80748_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80749_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80750_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj80577
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
         __obj80577
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj80577
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 '#f '11 '#f '#f))
      (let ((__tmp80725 |gerbil/core/contract~TypeEnv[1]#_g80726_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 __tmp80725 '12 '#f '#f))
      (let ((__tmp80727 |gerbil/core/contract~TypeEnv[1]#_g80728_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 __tmp80727 '13 '#f '#f))
      (let ((__tmp80729 |gerbil/core/contract~TypeEnv[1]#_g80730_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 __tmp80729 '14 '#f '#f))
      (let ((__tmp80731
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80732_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80733_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80734_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80735_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 __tmp80731 '15 '#f '#f))
      (let ((__tmp80736
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80737_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80738_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80739_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80740_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 __tmp80736 '16 '#f '#f))
      (let ((__tmp80741
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80742_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80743_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80744_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80745_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 __tmp80741 '17 '#f '#f))
      (let ((__tmp80746
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80747_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80748_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80749_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80750_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80577 __tmp80746 '18 '#f '#f))
      __obj80577)))
