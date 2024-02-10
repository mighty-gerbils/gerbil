(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g183164_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183166_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183168_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183170_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183176_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183179_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183182_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183188_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183191_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183194_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183200_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183203_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183206_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183212_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183215_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183218_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj182915
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
         __obj182915
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182915
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182915
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183162
             (let ((__tmp183163 |gx[1]#_g183164_|))
               (declare (not safe))
               (cons __tmp183163 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182915
         __tmp183162
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182915
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182915
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182915
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183165 |gx[1]#_g183166_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182915
         __tmp183165
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183167 |gx[1]#_g183168_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182915
         __tmp183167
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183169 |gx[1]#_g183170_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182915
         __tmp183169
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183171
             (let ((__tmp183180
                    (let ((__tmp183181 |gx[1]#_g183182_|))
                      (declare (not safe))
                      (cons 'id __tmp183181)))
                   (__tmp183172
                    (let ((__tmp183177
                           (let ((__tmp183178 |gx[1]#_g183179_|))
                             (declare (not safe))
                             (cons 'depth __tmp183178)))
                          (__tmp183173
                           (let ((__tmp183174
                                  (let ((__tmp183175 |gx[1]#_g183176_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183175))))
                             (declare (not safe))
                             (cons __tmp183174 '()))))
                      (declare (not safe))
                      (cons __tmp183177 __tmp183173))))
               (declare (not safe))
               (cons __tmp183180 __tmp183172))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182915
         __tmp183171
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183183
             (let ((__tmp183192
                    (let ((__tmp183193 |gx[1]#_g183194_|))
                      (declare (not safe))
                      (cons 'id __tmp183193)))
                   (__tmp183184
                    (let ((__tmp183189
                           (let ((__tmp183190 |gx[1]#_g183191_|))
                             (declare (not safe))
                             (cons 'depth __tmp183190)))
                          (__tmp183185
                           (let ((__tmp183186
                                  (let ((__tmp183187 |gx[1]#_g183188_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183187))))
                             (declare (not safe))
                             (cons __tmp183186 '()))))
                      (declare (not safe))
                      (cons __tmp183189 __tmp183185))))
               (declare (not safe))
               (cons __tmp183192 __tmp183184))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182915
         __tmp183183
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183195
             (let ((__tmp183204
                    (let ((__tmp183205 |gx[1]#_g183206_|))
                      (declare (not safe))
                      (cons 'id __tmp183205)))
                   (__tmp183196
                    (let ((__tmp183201
                           (let ((__tmp183202 |gx[1]#_g183203_|))
                             (declare (not safe))
                             (cons 'depth __tmp183202)))
                          (__tmp183197
                           (let ((__tmp183198
                                  (let ((__tmp183199 |gx[1]#_g183200_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183199))))
                             (declare (not safe))
                             (cons __tmp183198 '()))))
                      (declare (not safe))
                      (cons __tmp183201 __tmp183197))))
               (declare (not safe))
               (cons __tmp183204 __tmp183196))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182915
         __tmp183195
         '13
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
         __obj182915
         __tmp183207
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj182915)))
