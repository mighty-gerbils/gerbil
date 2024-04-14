(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g82871_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82873_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82875_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82877_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82878_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82879_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82880_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82882_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82883_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82884_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82885_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82887_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82888_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82889_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82890_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82892_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82893_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82894_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g82895_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj82735
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
         __obj82735
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj82735
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 '#f '11 '#f '#f))
      (let ((__tmp82870 |gerbil/core/contract~TypeEnv[1]#_g82871_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 __tmp82870 '12 '#f '#f))
      (let ((__tmp82872 |gerbil/core/contract~TypeEnv[1]#_g82873_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 __tmp82872 '13 '#f '#f))
      (let ((__tmp82874 |gerbil/core/contract~TypeEnv[1]#_g82875_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 __tmp82874 '14 '#f '#f))
      (let ((__tmp82876
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82877_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82878_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82879_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82880_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 __tmp82876 '15 '#f '#f))
      (let ((__tmp82881
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82882_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82883_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82884_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82885_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 __tmp82881 '16 '#f '#f))
      (let ((__tmp82886
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82887_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82888_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82889_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82890_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 __tmp82886 '17 '#f '#f))
      (let ((__tmp82891
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g82892_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g82893_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g82894_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g82895_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj82735 __tmp82891 '18 '#f '#f))
      __obj82735)))
