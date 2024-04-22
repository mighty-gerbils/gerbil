(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g83993_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g83995_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g83997_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g83999_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84000_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84001_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84002_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84004_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84005_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84006_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84007_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84009_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84010_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84011_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84012_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84014_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84015_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84016_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84017_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj83857
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
         __obj83857
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj83857
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 '#f '11 '#f '#f))
      (let ((__tmp83992 |gerbil/core/contract~TypeEnv[1]#_g83993_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 __tmp83992 '12 '#f '#f))
      (let ((__tmp83994 |gerbil/core/contract~TypeEnv[1]#_g83995_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 __tmp83994 '13 '#f '#f))
      (let ((__tmp83996 |gerbil/core/contract~TypeEnv[1]#_g83997_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 __tmp83996 '14 '#f '#f))
      (let ((__tmp83998
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g83999_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84000_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84001_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84002_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 __tmp83998 '15 '#f '#f))
      (let ((__tmp84003
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84004_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84005_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84006_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84007_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 __tmp84003 '16 '#f '#f))
      (let ((__tmp84008
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84009_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84010_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84011_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84012_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 __tmp84008 '17 '#f '#f))
      (let ((__tmp84013
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84014_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84015_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84016_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84017_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj83857 __tmp84013 '18 '#f '#f))
      __obj83857)))
