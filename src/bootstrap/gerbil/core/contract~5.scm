(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g80141_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80143_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80145_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80147_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80148_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80149_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80150_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80152_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80153_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80154_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80155_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80157_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80158_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80159_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80160_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80162_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80163_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80164_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80165_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj79994
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
         __obj79994
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj79994
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 '#f '11 '#f '#f))
      (let ((__tmp80140 |gerbil/core/contract~TypeEnv[1]#_g80141_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 __tmp80140 '12 '#f '#f))
      (let ((__tmp80142 |gerbil/core/contract~TypeEnv[1]#_g80143_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 __tmp80142 '13 '#f '#f))
      (let ((__tmp80144 |gerbil/core/contract~TypeEnv[1]#_g80145_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 __tmp80144 '14 '#f '#f))
      (let ((__tmp80146
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80147_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80148_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80149_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80150_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 __tmp80146 '15 '#f '#f))
      (let ((__tmp80151
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80152_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80153_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80154_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80155_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 __tmp80151 '16 '#f '#f))
      (let ((__tmp80156
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80157_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80158_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80159_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80160_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 __tmp80156 '17 '#f '#f))
      (let ((__tmp80161
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80162_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80163_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80164_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80165_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj79994 __tmp80161 '18 '#f '#f))
      __obj79994)))
