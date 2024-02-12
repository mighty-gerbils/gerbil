(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g185270_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185272_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185274_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185276_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185282_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185285_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185288_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185294_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185297_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185300_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185306_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185309_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185312_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185318_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185321_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185324_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj185020
           (let ()
             (declare (not safe))
             (##structure
              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
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
         __obj185020
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185268
             (let ((__tmp185269 |gx[1]#_g185270_|))
               (declare (not safe))
               (cons __tmp185269 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         __tmp185268
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185271 |gx[1]#_g185272_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         __tmp185271
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185273 |gx[1]#_g185274_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         __tmp185273
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185275 |gx[1]#_g185276_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         __tmp185275
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185277
             (let ((__tmp185286
                    (let ((__tmp185287 |gx[1]#_g185288_|))
                      (declare (not safe))
                      (cons 'id __tmp185287)))
                   (__tmp185278
                    (let ((__tmp185283
                           (let ((__tmp185284 |gx[1]#_g185285_|))
                             (declare (not safe))
                             (cons 'depth __tmp185284)))
                          (__tmp185279
                           (let ((__tmp185280
                                  (let ((__tmp185281 |gx[1]#_g185282_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185281))))
                             (declare (not safe))
                             (cons __tmp185280 '()))))
                      (declare (not safe))
                      (cons __tmp185283 __tmp185279))))
               (declare (not safe))
               (cons __tmp185286 __tmp185278))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         __tmp185277
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185289
             (let ((__tmp185298
                    (let ((__tmp185299 |gx[1]#_g185300_|))
                      (declare (not safe))
                      (cons 'id __tmp185299)))
                   (__tmp185290
                    (let ((__tmp185295
                           (let ((__tmp185296 |gx[1]#_g185297_|))
                             (declare (not safe))
                             (cons 'depth __tmp185296)))
                          (__tmp185291
                           (let ((__tmp185292
                                  (let ((__tmp185293 |gx[1]#_g185294_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185293))))
                             (declare (not safe))
                             (cons __tmp185292 '()))))
                      (declare (not safe))
                      (cons __tmp185295 __tmp185291))))
               (declare (not safe))
               (cons __tmp185298 __tmp185290))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         __tmp185289
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185301
             (let ((__tmp185310
                    (let ((__tmp185311 |gx[1]#_g185312_|))
                      (declare (not safe))
                      (cons 'id __tmp185311)))
                   (__tmp185302
                    (let ((__tmp185307
                           (let ((__tmp185308 |gx[1]#_g185309_|))
                             (declare (not safe))
                             (cons 'depth __tmp185308)))
                          (__tmp185303
                           (let ((__tmp185304
                                  (let ((__tmp185305 |gx[1]#_g185306_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185305))))
                             (declare (not safe))
                             (cons __tmp185304 '()))))
                      (declare (not safe))
                      (cons __tmp185307 __tmp185303))))
               (declare (not safe))
               (cons __tmp185310 __tmp185302))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         __tmp185301
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185313
             (let ((__tmp185322
                    (let ((__tmp185323 |gx[1]#_g185324_|))
                      (declare (not safe))
                      (cons 'id __tmp185323)))
                   (__tmp185314
                    (let ((__tmp185319
                           (let ((__tmp185320 |gx[1]#_g185321_|))
                             (declare (not safe))
                             (cons 'depth __tmp185320)))
                          (__tmp185315
                           (let ((__tmp185316
                                  (let ((__tmp185317 |gx[1]#_g185318_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185317))))
                             (declare (not safe))
                             (cons __tmp185316 '()))))
                      (declare (not safe))
                      (cons __tmp185319 __tmp185315))))
               (declare (not safe))
               (cons __tmp185322 __tmp185314))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj185020
         __tmp185313
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj185020)))
