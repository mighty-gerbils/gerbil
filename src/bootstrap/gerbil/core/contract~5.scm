(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g97803_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97805_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97807_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97809_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97810_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97811_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97812_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97814_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97815_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97816_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97817_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97819_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97820_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97821_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97822_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97824_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97825_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97826_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97827_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj97633
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
         __obj97633
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj97633
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 '#f '12 '#f '#f))
      (let ((__tmp97802 |gerbil/core/contract~TypeEnv[1]#_g97803_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 __tmp97802 '3 '#f '#f))
      (let ((__tmp97804 |gerbil/core/contract~TypeEnv[1]#_g97805_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 __tmp97804 '13 '#f '#f))
      (let ((__tmp97806 |gerbil/core/contract~TypeEnv[1]#_g97807_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 __tmp97806 '14 '#f '#f))
      (let ((__tmp97808
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97809_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97810_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97811_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97812_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 __tmp97808 '15 '#f '#f))
      (let ((__tmp97813
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97814_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97815_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97816_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97817_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 __tmp97813 '16 '#f '#f))
      (let ((__tmp97818
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97819_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97820_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97821_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97822_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 __tmp97818 '17 '#f '#f))
      (let ((__tmp97823
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97824_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97825_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97826_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97827_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97633 __tmp97823 '18 '#f '#f))
      __obj97633)))
