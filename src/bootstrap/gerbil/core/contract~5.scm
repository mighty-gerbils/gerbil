(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g97721_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97723_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97725_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97727_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97728_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97729_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97730_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97732_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97733_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97734_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97735_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97737_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97738_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97739_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97740_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97742_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97743_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97744_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97745_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj97551
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
         __obj97551
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj97551
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 '#f '12 '#f '#f))
      (let ((__tmp97720 |gerbil/core/contract~TypeEnv[1]#_g97721_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 __tmp97720 '3 '#f '#f))
      (let ((__tmp97722 |gerbil/core/contract~TypeEnv[1]#_g97723_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 __tmp97722 '13 '#f '#f))
      (let ((__tmp97724 |gerbil/core/contract~TypeEnv[1]#_g97725_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 __tmp97724 '14 '#f '#f))
      (let ((__tmp97726
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97727_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97728_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97729_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97730_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 __tmp97726 '15 '#f '#f))
      (let ((__tmp97731
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97732_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97733_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97734_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97735_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 __tmp97731 '16 '#f '#f))
      (let ((__tmp97736
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97737_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97738_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97739_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97740_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 __tmp97736 '17 '#f '#f))
      (let ((__tmp97741
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97742_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97743_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97744_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97745_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97551 __tmp97741 '18 '#f '#f))
      __obj97551)))
