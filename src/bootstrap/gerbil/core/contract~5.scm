(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g84881_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84883_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84885_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84887_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84888_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84889_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84890_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84892_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84893_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84894_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84895_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84897_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84898_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84899_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84900_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84902_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84903_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84904_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84905_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj84735
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
         __obj84735
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj84735
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 '#f '11 '#f '#f))
      (let ((__tmp84880 |gerbil/core/contract~TypeEnv[1]#_g84881_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 __tmp84880 '12 '#f '#f))
      (let ((__tmp84882 |gerbil/core/contract~TypeEnv[1]#_g84883_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 __tmp84882 '13 '#f '#f))
      (let ((__tmp84884 |gerbil/core/contract~TypeEnv[1]#_g84885_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 __tmp84884 '14 '#f '#f))
      (let ((__tmp84886
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84887_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84888_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84889_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84890_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 __tmp84886 '15 '#f '#f))
      (let ((__tmp84891
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84892_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84893_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84894_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84895_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 __tmp84891 '16 '#f '#f))
      (let ((__tmp84896
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84897_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84898_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84899_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84900_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 __tmp84896 '17 '#f '#f))
      (let ((__tmp84901
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84902_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84903_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84904_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84905_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84735 __tmp84901 '18 '#f '#f))
      __obj84735)))
