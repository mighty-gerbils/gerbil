(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g105173_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105175_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105177_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105179_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105180_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105181_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105182_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105184_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105185_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105186_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105187_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105189_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105190_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105191_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105192_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105194_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105195_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105196_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105197_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj104995
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
         __obj104995
         'gerbil/core/contract~TypeEnv#type-env::t
         '2
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 'type-env '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj104995
         '(var type checked? super)
         '6
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 '() '5 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 '#t '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 '#f '12 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 '#f '13 '#f '#f))
      (let ((__tmp105172 |gerbil/core/contract~TypeEnv[1]#_g105173_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 __tmp105172 '4 '#f '#f))
      (let ((__tmp105174 |gerbil/core/contract~TypeEnv[1]#_g105175_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 __tmp105174 '14 '#f '#f))
      (let ((__tmp105176 |gerbil/core/contract~TypeEnv[1]#_g105177_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 __tmp105176 '15 '#f '#f))
      (let ((__tmp105178
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g105179_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g105180_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g105181_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g105182_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 __tmp105178 '16 '#f '#f))
      (let ((__tmp105183
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g105184_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g105185_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g105186_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g105187_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 __tmp105183 '17 '#f '#f))
      (let ((__tmp105188
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g105189_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g105190_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g105191_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g105192_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 __tmp105188 '18 '#f '#f))
      (let ((__tmp105193
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g105194_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g105195_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g105196_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g105197_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj104995 __tmp105193 '19 '#f '#f))
      __obj104995)))
