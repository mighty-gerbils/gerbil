(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g100829_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100831_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100833_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100835_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100836_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100837_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100838_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100840_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100841_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100842_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100843_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100845_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100846_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100847_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100848_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100850_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100851_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100852_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100853_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj100652
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
              '#f
              '#f))))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj100652
         'gerbil/core/contract~TypeEnv#type-env::t
         '2
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 'type-env '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj100652
         '(var type checked? super)
         '6
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 '() '5 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 '#t '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 '#f '12 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 '#f '13 '#f '#f))
      (let ((__tmp100828 |gerbil/core/contract~TypeEnv[1]#_g100829_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 __tmp100828 '4 '#f '#f))
      (let ((__tmp100830 |gerbil/core/contract~TypeEnv[1]#_g100831_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 __tmp100830 '14 '#f '#f))
      (let ((__tmp100832 |gerbil/core/contract~TypeEnv[1]#_g100833_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 __tmp100832 '15 '#f '#f))
      (let ((__tmp100834
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100835_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100836_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100837_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100838_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 __tmp100834 '16 '#f '#f))
      (let ((__tmp100839
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100840_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100841_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100842_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100843_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 __tmp100839 '17 '#f '#f))
      (let ((__tmp100844
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100845_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100846_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100847_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100848_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 __tmp100844 '18 '#f '#f))
      (let ((__tmp100849
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100850_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100851_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100852_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100853_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100652 __tmp100849 '19 '#f '#f))
      __obj100652)))
