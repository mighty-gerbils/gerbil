(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g183200_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183202_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183204_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183206_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183212_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183215_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183218_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183224_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183227_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183230_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183236_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183239_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183242_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183248_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183251_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183254_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj182951
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
         __obj182951
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183198
             (let ((__tmp183199 |gx[1]#_g183200_|))
               (declare (not safe))
               (cons __tmp183199 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         __tmp183198
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183201 |gx[1]#_g183202_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         __tmp183201
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183203 |gx[1]#_g183204_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         __tmp183203
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183205 |gx[1]#_g183206_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         __tmp183205
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183207
             (let ((__tmp183216
                    (let ((__tmp183217 |gx[1]#_g183218_|))
                      (declare (not safe))
                      (cons 'id __tmp183217)))
                   (__tmp183208
                    (let ((__tmp183213
                           (let ((__tmp183214 |gx[1]#_g183215_|))
                             (declare (not safe))
                             (cons 'depth __tmp183214)))
                          (__tmp183209
                           (let ((__tmp183210
                                  (let ((__tmp183211 |gx[1]#_g183212_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183211))))
                             (declare (not safe))
                             (cons __tmp183210 '()))))
                      (declare (not safe))
                      (cons __tmp183213 __tmp183209))))
               (declare (not safe))
               (cons __tmp183216 __tmp183208))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         __tmp183207
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183219
             (let ((__tmp183228
                    (let ((__tmp183229 |gx[1]#_g183230_|))
                      (declare (not safe))
                      (cons 'id __tmp183229)))
                   (__tmp183220
                    (let ((__tmp183225
                           (let ((__tmp183226 |gx[1]#_g183227_|))
                             (declare (not safe))
                             (cons 'depth __tmp183226)))
                          (__tmp183221
                           (let ((__tmp183222
                                  (let ((__tmp183223 |gx[1]#_g183224_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183223))))
                             (declare (not safe))
                             (cons __tmp183222 '()))))
                      (declare (not safe))
                      (cons __tmp183225 __tmp183221))))
               (declare (not safe))
               (cons __tmp183228 __tmp183220))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         __tmp183219
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183231
             (let ((__tmp183240
                    (let ((__tmp183241 |gx[1]#_g183242_|))
                      (declare (not safe))
                      (cons 'id __tmp183241)))
                   (__tmp183232
                    (let ((__tmp183237
                           (let ((__tmp183238 |gx[1]#_g183239_|))
                             (declare (not safe))
                             (cons 'depth __tmp183238)))
                          (__tmp183233
                           (let ((__tmp183234
                                  (let ((__tmp183235 |gx[1]#_g183236_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183235))))
                             (declare (not safe))
                             (cons __tmp183234 '()))))
                      (declare (not safe))
                      (cons __tmp183237 __tmp183233))))
               (declare (not safe))
               (cons __tmp183240 __tmp183232))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         __tmp183231
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183243
             (let ((__tmp183252
                    (let ((__tmp183253 |gx[1]#_g183254_|))
                      (declare (not safe))
                      (cons 'id __tmp183253)))
                   (__tmp183244
                    (let ((__tmp183249
                           (let ((__tmp183250 |gx[1]#_g183251_|))
                             (declare (not safe))
                             (cons 'depth __tmp183250)))
                          (__tmp183245
                           (let ((__tmp183246
                                  (let ((__tmp183247 |gx[1]#_g183248_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183247))))
                             (declare (not safe))
                             (cons __tmp183246 '()))))
                      (declare (not safe))
                      (cons __tmp183249 __tmp183245))))
               (declare (not safe))
               (cons __tmp183252 __tmp183244))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182951
         __tmp183243
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj182951)))
