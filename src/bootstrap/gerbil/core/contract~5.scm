(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g97164_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97166_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97168_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97170_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97171_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97172_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97173_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97175_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97176_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97177_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97178_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97180_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97181_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97182_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97183_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97185_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97186_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97187_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g97188_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj96994
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
         __obj96994
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj96994
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 '#f '12 '#f '#f))
      (let ((__tmp97163 |gerbil/core/contract~TypeEnv[1]#_g97164_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 __tmp97163 '3 '#f '#f))
      (let ((__tmp97165 |gerbil/core/contract~TypeEnv[1]#_g97166_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 __tmp97165 '13 '#f '#f))
      (let ((__tmp97167 |gerbil/core/contract~TypeEnv[1]#_g97168_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 __tmp97167 '14 '#f '#f))
      (let ((__tmp97169
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97170_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97171_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97172_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97173_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 __tmp97169 '15 '#f '#f))
      (let ((__tmp97174
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97175_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97176_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97177_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97178_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 __tmp97174 '16 '#f '#f))
      (let ((__tmp97179
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97180_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97181_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97182_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97183_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 __tmp97179 '17 '#f '#f))
      (let ((__tmp97184
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g97185_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g97186_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g97187_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g97188_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj96994 __tmp97184 '18 '#f '#f))
      __obj96994)))
