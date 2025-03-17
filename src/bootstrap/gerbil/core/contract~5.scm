(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g84997_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84999_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85001_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85003_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85004_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85005_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85006_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85008_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85009_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85010_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85011_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85013_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85014_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85015_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85016_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85018_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85019_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85020_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g85021_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj84844
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
         __obj84844
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj84844
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 '#f '11 '#f '#f))
      (let ((__tmp84996 |gerbil/core/contract~TypeEnv[1]#_g84997_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 __tmp84996 '12 '#f '#f))
      (let ((__tmp84998 |gerbil/core/contract~TypeEnv[1]#_g84999_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 __tmp84998 '13 '#f '#f))
      (let ((__tmp85000 |gerbil/core/contract~TypeEnv[1]#_g85001_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 __tmp85000 '14 '#f '#f))
      (let ((__tmp85002
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g85003_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g85004_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g85005_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g85006_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 __tmp85002 '15 '#f '#f))
      (let ((__tmp85007
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g85008_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g85009_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g85010_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g85011_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 __tmp85007 '16 '#f '#f))
      (let ((__tmp85012
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g85013_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g85014_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g85015_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g85016_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 __tmp85012 '17 '#f '#f))
      (let ((__tmp85017
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g85018_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g85019_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g85020_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g85021_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84844 __tmp85017 '18 '#f '#f))
      __obj84844)))
