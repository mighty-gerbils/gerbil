(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g80956_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80958_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80960_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80962_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80963_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80964_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80965_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80967_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80968_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80969_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80970_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80972_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80973_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80974_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80975_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80977_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80978_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80979_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80980_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj80820
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
         __obj80820
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj80820
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 '#f '11 '#f '#f))
      (let ((__tmp80955 |gerbil/core/contract~TypeEnv[1]#_g80956_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 __tmp80955 '12 '#f '#f))
      (let ((__tmp80957 |gerbil/core/contract~TypeEnv[1]#_g80958_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 __tmp80957 '13 '#f '#f))
      (let ((__tmp80959 |gerbil/core/contract~TypeEnv[1]#_g80960_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 __tmp80959 '14 '#f '#f))
      (let ((__tmp80961
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80962_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80963_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80964_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80965_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 __tmp80961 '15 '#f '#f))
      (let ((__tmp80966
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80967_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80968_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80969_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80970_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 __tmp80966 '16 '#f '#f))
      (let ((__tmp80971
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80972_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80973_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80974_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80975_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 __tmp80971 '17 '#f '#f))
      (let ((__tmp80976
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80977_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80978_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80979_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80980_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80820 __tmp80976 '18 '#f '#f))
      __obj80820)))
