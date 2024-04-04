(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g80703_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80705_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80707_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80709_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80710_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80711_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80712_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80714_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80715_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80716_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80717_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80719_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80720_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80721_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80722_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80724_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80725_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80726_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g80727_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj80560
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
         __obj80560
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj80560
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 '#f '11 '#f '#f))
      (let ((__tmp80702 |gerbil/core/contract~TypeEnv[1]#_g80703_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 __tmp80702 '12 '#f '#f))
      (let ((__tmp80704 |gerbil/core/contract~TypeEnv[1]#_g80705_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 __tmp80704 '13 '#f '#f))
      (let ((__tmp80706 |gerbil/core/contract~TypeEnv[1]#_g80707_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 __tmp80706 '14 '#f '#f))
      (let ((__tmp80708
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80709_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80710_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80711_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80712_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 __tmp80708 '15 '#f '#f))
      (let ((__tmp80713
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80714_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80715_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80716_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80717_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 __tmp80713 '16 '#f '#f))
      (let ((__tmp80718
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80719_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80720_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80721_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80722_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 __tmp80718 '17 '#f '#f))
      (let ((__tmp80723
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g80724_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g80725_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g80726_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g80727_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj80560 __tmp80723 '18 '#f '#f))
      __obj80560)))
