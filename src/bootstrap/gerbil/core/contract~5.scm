(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g80175_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80177_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80179_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80181_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80182_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80183_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80184_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80186_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80187_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80188_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80189_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80191_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80192_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80193_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80194_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80196_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80197_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80198_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80199_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj80028
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
         __obj80028
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj80028
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 '#f '11 '#f '#f))
      (let ((__tmp80174 |gerbil/core/contract~TypeEnv[1]#_g80175_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 __tmp80174 '12 '#f '#f))
      (let ((__tmp80176 |gerbil/core/contract~TypeEnv[1]#_g80177_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 __tmp80176 '13 '#f '#f))
      (let ((__tmp80178 |gerbil/core/contract~TypeEnv[1]#_g80179_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 __tmp80178 '14 '#f '#f))
      (let ((__tmp80180
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80181_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80182_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80183_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80184_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 __tmp80180 '15 '#f '#f))
      (let ((__tmp80185
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80186_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80187_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80188_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80189_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 __tmp80185 '16 '#f '#f))
      (let ((__tmp80190
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80191_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80192_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80193_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80194_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 __tmp80190 '17 '#f '#f))
      (let ((__tmp80195
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80196_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80197_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80198_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80199_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80028 __tmp80195 '18 '#f '#f))
      __obj80028)))
