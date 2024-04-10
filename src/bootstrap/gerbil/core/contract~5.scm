(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g81650_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81652_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81654_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81656_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81657_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81658_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81659_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81661_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81662_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81663_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81664_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81666_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81667_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81668_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81669_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81671_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81672_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81673_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81674_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj81514
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
         __obj81514
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj81514
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 '#f '11 '#f '#f))
      (let ((__tmp81649 |gerbil/core/contract~TypeEnv[1]#_g81650_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 __tmp81649 '12 '#f '#f))
      (let ((__tmp81651 |gerbil/core/contract~TypeEnv[1]#_g81652_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 __tmp81651 '13 '#f '#f))
      (let ((__tmp81653 |gerbil/core/contract~TypeEnv[1]#_g81654_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 __tmp81653 '14 '#f '#f))
      (let ((__tmp81655
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g81656_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g81657_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g81658_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g81659_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 __tmp81655 '15 '#f '#f))
      (let ((__tmp81660
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g81661_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g81662_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g81663_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g81664_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 __tmp81660 '16 '#f '#f))
      (let ((__tmp81665
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g81666_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g81667_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g81668_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g81669_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 __tmp81665 '17 '#f '#f))
      (let ((__tmp81670
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g81671_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g81672_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g81673_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g81674_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj81514 __tmp81670 '18 '#f '#f))
      __obj81514)))
