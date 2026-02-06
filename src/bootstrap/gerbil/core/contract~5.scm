(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g97715_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97717_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97719_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97721_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97722_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97723_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97724_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97726_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97727_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97728_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97729_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97731_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97732_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97733_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97734_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97736_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97737_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97738_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97739_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj97545
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
         __obj97545
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj97545
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 '#f '12 '#f '#f))
      (let ((__tmp97714 |gerbil/core/contract~TypeEnv[1]#_g97715_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 __tmp97714 '3 '#f '#f))
      (let ((__tmp97716 |gerbil/core/contract~TypeEnv[1]#_g97717_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 __tmp97716 '13 '#f '#f))
      (let ((__tmp97718 |gerbil/core/contract~TypeEnv[1]#_g97719_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 __tmp97718 '14 '#f '#f))
      (let ((__tmp97720
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97721_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97722_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97723_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97724_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 __tmp97720 '15 '#f '#f))
      (let ((__tmp97725
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97726_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97727_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97728_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97729_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 __tmp97725 '16 '#f '#f))
      (let ((__tmp97730
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97731_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97732_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97733_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97734_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 __tmp97730 '17 '#f '#f))
      (let ((__tmp97735
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97736_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97737_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97738_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97739_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj97545 __tmp97735 '18 '#f '#f))
      __obj97545)))
