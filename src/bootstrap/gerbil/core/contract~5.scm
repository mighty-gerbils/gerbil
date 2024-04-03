(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g80159_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80161_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80163_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80165_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80166_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80167_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80168_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80170_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80171_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80172_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80173_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80175_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80176_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80177_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80178_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80180_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80181_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80182_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80183_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj80013
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
         __obj80013
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj80013
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 '#f '11 '#f '#f))
      (let ((__tmp80158 |gerbil/core/contract~TypeEnv[1]#_g80159_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 __tmp80158 '12 '#f '#f))
      (let ((__tmp80160 |gerbil/core/contract~TypeEnv[1]#_g80161_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 __tmp80160 '13 '#f '#f))
      (let ((__tmp80162 |gerbil/core/contract~TypeEnv[1]#_g80163_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 __tmp80162 '14 '#f '#f))
      (let ((__tmp80164
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80165_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80166_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80167_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80168_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 __tmp80164 '15 '#f '#f))
      (let ((__tmp80169
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80170_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80171_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80172_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80173_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 __tmp80169 '16 '#f '#f))
      (let ((__tmp80174
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80175_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80176_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80177_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80178_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 __tmp80174 '17 '#f '#f))
      (let ((__tmp80179
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80180_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80181_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80182_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80183_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80013 __tmp80179 '18 '#f '#f))
      __obj80013)))
