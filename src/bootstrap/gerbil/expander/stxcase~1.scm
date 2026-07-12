(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g196190_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196192_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196194_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196196_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196198_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196199_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196200_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196202_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196203_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196204_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196206_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196207_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196208_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196210_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196211_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g196212_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (let ((__obj196067
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
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196067
           'gx#syntax-pattern::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 'syntax-pattern '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 '(id depth) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 '(e id depth) '8 '#f '#f))
        (let ((__tmp196189 (cons |gx[1]#_g196190_| '())))
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 __tmp196189 '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 '#f '13 '#f '#f))
        (let ((__tmp196191 |gx[1]#_g196192_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 __tmp196191 '4 '#f '#f))
        (let ((__tmp196193 |gx[1]#_g196194_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 __tmp196193 '14 '#f '#f))
        (let ((__tmp196195 |gx[1]#_g196196_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 __tmp196195 '15 '#f '#f))
        (let ((__tmp196197
               (cons (cons 'id |gx[1]#_g196198_|)
                     (cons (cons 'depth |gx[1]#_g196199_|)
                           (cons (cons 'e |gx[1]#_g196200_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 __tmp196197 '16 '#f '#f))
        (let ((__tmp196201
               (cons (cons 'id |gx[1]#_g196202_|)
                     (cons (cons 'depth |gx[1]#_g196203_|)
                           (cons (cons 'e |gx[1]#_g196204_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 __tmp196201 '17 '#f '#f))
        (let ((__tmp196205
               (cons (cons 'id |gx[1]#_g196206_|)
                     (cons (cons 'depth |gx[1]#_g196207_|)
                           (cons (cons 'e |gx[1]#_g196208_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 __tmp196205 '18 '#f '#f))
        (let ((__tmp196209
               (cons (cons 'id |gx[1]#_g196210_|)
                     (cons (cons 'depth |gx[1]#_g196211_|)
                           (cons (cons 'e |gx[1]#_g196212_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 __tmp196209 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj196067 '() '21 '#f '#f))
        __obj196067))
    (define |gx[:0:]#syntax-split-splice*|
      (lambda (_%$stx194522%_)
        (let* ((_%$%g194526194548%_
                (lambda (_%$%g194527194544%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g194527194544%_))))
               (_%$%g194525194618%_
                (lambda (_%$%g194527194552%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g194527194552%_))
                      (let ((_%$%e194531194555%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g194527194552%_))))
                        (let ((_%$%hd194532194559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e194531194555%_)))
                              (_%$%tl194533194562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e194531194555%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl194533194562%_))
                              (let ((_%$%e194534194565%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl194533194562%_))))
                                (let ((_%$%hd194535194569%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e194534194565%_)))
                                      (_%$%tl194536194572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e194534194565%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl194536194572%_))
                                      (let ((_%$%e194537194575%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl194536194572%_))))
                                        (let ((_%$%hd194538194579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e194537194575%_)))
                                              (_%$%tl194539194582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e194537194575%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl194539194582%_))
                                              (let ((_%$%e194540194585%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl194539194582%_))))
                                                (let ((_%$%hd194541194589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e194540194585%_)))
                                                      (_%$%tl194542194592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e194540194585%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl194542194592%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'let))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'lp))
                          (cons (cons (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'rest))
                                            (cons _%$%hd194535194569%_ '()))
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'r))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '@list))
                      '())
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))
                                (cons (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'if))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'stx-pair?))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'rest))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'match))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax-e))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'rest))
                                        '()))
                            (cons (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 '@list))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'hd))
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rest))))
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'lp))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'rest))
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'cons))
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'hd))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'r))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '())))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'let))
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'lp))
                                  (cons (cons (cons _%$%hd194538194579%_
                                                    (cons _%$%hd194538194579%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'l))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'r))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'r))
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'rest))
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'cond))
                                                    (cons (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'null?))
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'l))
                                    '()))
                        (cons (cons _%$%hd194541194589%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'l))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0 '#f 'r))
                                                '())))
                              '()))
                  (cons (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'fxpositive?))
                                    (cons _%$%hd194538194579%_ '()))
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'lp))
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'fx1-))
                                                      (cons _%$%hd194538194579%_
                                                            '()))
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'cdr))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'l))
                          '()))
              (cons (cons (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'cons))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'car))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'l))
                                            '()))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'r))
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'else))
                                    (cons (cons _%$%hd194541194589%_
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'reverse!))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'l))
                          '()))
              (cons (let () (declare (not safe)) (gx#datum->syntax__0 '#f 'r))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))
              (_%$%g194526194548%_ _%$%g194527194552%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g194526194548%_
                                               _%$%g194527194552%_))))
                                      (_%$%g194526194548%_
                                       _%$%g194527194552%_))))
                              (_%$%g194526194548%_ _%$%g194527194552%_))))
                      (_%$%g194526194548%_ _%$%g194527194552%_)))))
          (_%$%g194525194618%_ _%$stx194522%_))))))
