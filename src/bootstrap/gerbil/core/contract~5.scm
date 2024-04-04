(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g80680_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80682_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80684_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80686_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80687_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80688_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80689_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80691_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80692_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80693_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80694_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80696_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80697_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80698_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80699_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80701_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80702_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80703_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80704_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj80537
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
         __obj80537
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj80537
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 '#f '11 '#f '#f))
      (let ((__tmp80679 |gerbil/core/contract~TypeEnv[1]#_g80680_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 __tmp80679 '12 '#f '#f))
      (let ((__tmp80681 |gerbil/core/contract~TypeEnv[1]#_g80682_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 __tmp80681 '13 '#f '#f))
      (let ((__tmp80683 |gerbil/core/contract~TypeEnv[1]#_g80684_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 __tmp80683 '14 '#f '#f))
      (let ((__tmp80685
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80686_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80687_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80688_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80689_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 __tmp80685 '15 '#f '#f))
      (let ((__tmp80690
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80691_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80692_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80693_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80694_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 __tmp80690 '16 '#f '#f))
      (let ((__tmp80695
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80696_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80697_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80698_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80699_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 __tmp80695 '17 '#f '#f))
      (let ((__tmp80700
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80701_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80702_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80703_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80704_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80537 __tmp80700 '18 '#f '#f))
      __obj80537)))
