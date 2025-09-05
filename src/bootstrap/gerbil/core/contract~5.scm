(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g91812_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91814_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91816_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91818_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91819_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91820_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91821_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91823_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91824_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91825_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91826_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91828_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91829_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91830_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91831_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91833_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91834_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91835_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g91836_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj91660
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
         __obj91660
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj91660
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 '#f '11 '#f '#f))
      (let ((__tmp91811 |gerbil/core/contract~TypeEnv[1]#_g91812_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 __tmp91811 '12 '#f '#f))
      (let ((__tmp91813 |gerbil/core/contract~TypeEnv[1]#_g91814_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 __tmp91813 '13 '#f '#f))
      (let ((__tmp91815 |gerbil/core/contract~TypeEnv[1]#_g91816_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 __tmp91815 '14 '#f '#f))
      (let ((__tmp91817
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g91818_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g91819_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g91820_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g91821_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 __tmp91817 '15 '#f '#f))
      (let ((__tmp91822
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g91823_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g91824_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g91825_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g91826_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 __tmp91822 '16 '#f '#f))
      (let ((__tmp91827
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g91828_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g91829_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g91830_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g91831_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 __tmp91827 '17 '#f '#f))
      (let ((__tmp91832
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g91833_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g91834_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g91835_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g91836_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj91660 __tmp91832 '18 '#f '#f))
      __obj91660)))
