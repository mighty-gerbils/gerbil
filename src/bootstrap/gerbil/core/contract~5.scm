(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g92635_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92637_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92639_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92641_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92642_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92643_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92644_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92646_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92647_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92648_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92649_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92651_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92652_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92653_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92654_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92656_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92657_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92658_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92659_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj92474
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
         __obj92474
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj92474
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 '#f '12 '#f '#f))
      (let ((__tmp92634 |gerbil/core/contract~TypeEnv[1]#_g92635_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 __tmp92634 '3 '#f '#f))
      (let ((__tmp92636 |gerbil/core/contract~TypeEnv[1]#_g92637_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 __tmp92636 '13 '#f '#f))
      (let ((__tmp92638 |gerbil/core/contract~TypeEnv[1]#_g92639_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 __tmp92638 '14 '#f '#f))
      (let ((__tmp92640
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92641_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92642_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92643_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92644_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 __tmp92640 '15 '#f '#f))
      (let ((__tmp92645
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92646_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92647_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92648_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92649_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 __tmp92645 '16 '#f '#f))
      (let ((__tmp92650
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92651_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92652_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92653_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92654_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 __tmp92650 '17 '#f '#f))
      (let ((__tmp92655
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92656_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92657_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92658_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92659_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92474 __tmp92655 '18 '#f '#f))
      __obj92474)))
