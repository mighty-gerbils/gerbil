(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g84978_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84980_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84982_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84984_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84985_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84986_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84987_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84989_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84990_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84991_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84992_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84994_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84995_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84996_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84997_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84999_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85000_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85001_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85002_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj84825
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
         __obj84825
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj84825
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 '#f '11 '#f '#f))
      (let ((__tmp84977 |gerbil/core/contract~TypeEnv[1]#_g84978_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 __tmp84977 '12 '#f '#f))
      (let ((__tmp84979 |gerbil/core/contract~TypeEnv[1]#_g84980_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 __tmp84979 '13 '#f '#f))
      (let ((__tmp84981 |gerbil/core/contract~TypeEnv[1]#_g84982_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 __tmp84981 '14 '#f '#f))
      (let ((__tmp84983
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84984_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84985_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84986_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84987_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 __tmp84983 '15 '#f '#f))
      (let ((__tmp84988
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84989_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84990_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84991_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84992_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 __tmp84988 '16 '#f '#f))
      (let ((__tmp84993
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84994_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84995_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84996_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84997_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 __tmp84993 '17 '#f '#f))
      (let ((__tmp84998
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84999_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g85000_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g85001_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g85002_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84825 __tmp84998 '18 '#f '#f))
      __obj84825)))
