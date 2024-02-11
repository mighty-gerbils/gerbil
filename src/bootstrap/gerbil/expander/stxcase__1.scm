(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g183196_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183198_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183200_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183202_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183208_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183211_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183214_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183220_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183223_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183226_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183232_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183235_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183238_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183244_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183247_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183250_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj182947
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
         __obj182947
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183194
             (let ((__tmp183195 |gx[1]#_g183196_|))
               (declare (not safe))
               (cons __tmp183195 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         __tmp183194
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183197 |gx[1]#_g183198_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         __tmp183197
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183199 |gx[1]#_g183200_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         __tmp183199
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183201 |gx[1]#_g183202_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         __tmp183201
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183203
             (let ((__tmp183212
                    (let ((__tmp183213 |gx[1]#_g183214_|))
                      (declare (not safe))
                      (cons 'id __tmp183213)))
                   (__tmp183204
                    (let ((__tmp183209
                           (let ((__tmp183210 |gx[1]#_g183211_|))
                             (declare (not safe))
                             (cons 'depth __tmp183210)))
                          (__tmp183205
                           (let ((__tmp183206
                                  (let ((__tmp183207 |gx[1]#_g183208_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183207))))
                             (declare (not safe))
                             (cons __tmp183206 '()))))
                      (declare (not safe))
                      (cons __tmp183209 __tmp183205))))
               (declare (not safe))
               (cons __tmp183212 __tmp183204))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         __tmp183203
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183215
             (let ((__tmp183224
                    (let ((__tmp183225 |gx[1]#_g183226_|))
                      (declare (not safe))
                      (cons 'id __tmp183225)))
                   (__tmp183216
                    (let ((__tmp183221
                           (let ((__tmp183222 |gx[1]#_g183223_|))
                             (declare (not safe))
                             (cons 'depth __tmp183222)))
                          (__tmp183217
                           (let ((__tmp183218
                                  (let ((__tmp183219 |gx[1]#_g183220_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183219))))
                             (declare (not safe))
                             (cons __tmp183218 '()))))
                      (declare (not safe))
                      (cons __tmp183221 __tmp183217))))
               (declare (not safe))
               (cons __tmp183224 __tmp183216))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         __tmp183215
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183227
             (let ((__tmp183236
                    (let ((__tmp183237 |gx[1]#_g183238_|))
                      (declare (not safe))
                      (cons 'id __tmp183237)))
                   (__tmp183228
                    (let ((__tmp183233
                           (let ((__tmp183234 |gx[1]#_g183235_|))
                             (declare (not safe))
                             (cons 'depth __tmp183234)))
                          (__tmp183229
                           (let ((__tmp183230
                                  (let ((__tmp183231 |gx[1]#_g183232_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183231))))
                             (declare (not safe))
                             (cons __tmp183230 '()))))
                      (declare (not safe))
                      (cons __tmp183233 __tmp183229))))
               (declare (not safe))
               (cons __tmp183236 __tmp183228))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         __tmp183227
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183239
             (let ((__tmp183248
                    (let ((__tmp183249 |gx[1]#_g183250_|))
                      (declare (not safe))
                      (cons 'id __tmp183249)))
                   (__tmp183240
                    (let ((__tmp183245
                           (let ((__tmp183246 |gx[1]#_g183247_|))
                             (declare (not safe))
                             (cons 'depth __tmp183246)))
                          (__tmp183241
                           (let ((__tmp183242
                                  (let ((__tmp183243 |gx[1]#_g183244_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183243))))
                             (declare (not safe))
                             (cons __tmp183242 '()))))
                      (declare (not safe))
                      (cons __tmp183245 __tmp183241))))
               (declare (not safe))
               (cons __tmp183248 __tmp183240))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182947
         __tmp183239
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj182947)))
