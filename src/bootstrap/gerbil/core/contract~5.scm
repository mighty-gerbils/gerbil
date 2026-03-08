(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g100819_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100821_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100823_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100825_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100826_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100827_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100828_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100830_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100831_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100832_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100833_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100835_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100836_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100837_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100838_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100840_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100841_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100842_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g100843_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj100642
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
         __obj100642
         'gerbil/core/contract~TypeEnv#type-env::t
         '2
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100642 'type-env '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj100642
         '(var type checked? super)
         '6
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100642 '() '5 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100642 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100642 '#t '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100642 '#f '12 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj100642 '#f '13 '#f '#f))
      (let ((__tmp100818 |gerbil/core/contract~TypeEnv[1]#_g100819_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj100642 __tmp100818 '4 '#f '#f))
      (let ((__tmp100820 |gerbil/core/contract~TypeEnv[1]#_g100821_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj100642 __tmp100820 '14 '#f '#f))
      (let ((__tmp100822 |gerbil/core/contract~TypeEnv[1]#_g100823_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj100642 __tmp100822 '15 '#f '#f))
      (let ((__tmp100824
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100825_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100826_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100827_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100828_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100642 __tmp100824 '16 '#f '#f))
      (let ((__tmp100829
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g100830_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g100831_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g100832_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g100833_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj100642 __tmp100829 '17 '#f '#f))
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
        (##unchecked-structure-set! __obj100642 __tmp100834 '18 '#f '#f))
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
        (##unchecked-structure-set! __obj100642 __tmp100839 '19 '#f '#f))
      __obj100642)))
