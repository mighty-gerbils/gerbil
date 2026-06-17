(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g194840_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194842_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194844_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194846_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194848_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194849_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194850_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194852_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194853_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194854_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194856_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194857_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194858_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194860_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194861_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g194862_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (let ((__obj194717
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
           __obj194717
           'gx#syntax-pattern::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 'syntax-pattern '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 '(id depth) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 '(e id depth) '8 '#f '#f))
        (let ((__tmp194839 (cons |gx[1]#_g194840_| '())))
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 __tmp194839 '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 '#f '13 '#f '#f))
        (let ((__tmp194841 |gx[1]#_g194842_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 __tmp194841 '4 '#f '#f))
        (let ((__tmp194843 |gx[1]#_g194844_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 __tmp194843 '14 '#f '#f))
        (let ((__tmp194845 |gx[1]#_g194846_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 __tmp194845 '15 '#f '#f))
        (let ((__tmp194847
               (cons (cons 'id |gx[1]#_g194848_|)
                     (cons (cons 'depth |gx[1]#_g194849_|)
                           (cons (cons 'e |gx[1]#_g194850_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 __tmp194847 '16 '#f '#f))
        (let ((__tmp194851
               (cons (cons 'id |gx[1]#_g194852_|)
                     (cons (cons 'depth |gx[1]#_g194853_|)
                           (cons (cons 'e |gx[1]#_g194854_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 __tmp194851 '17 '#f '#f))
        (let ((__tmp194855
               (cons (cons 'id |gx[1]#_g194856_|)
                     (cons (cons 'depth |gx[1]#_g194857_|)
                           (cons (cons 'e |gx[1]#_g194858_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 __tmp194855 '18 '#f '#f))
        (let ((__tmp194859
               (cons (cons 'id |gx[1]#_g194860_|)
                     (cons (cons 'depth |gx[1]#_g194861_|)
                           (cons (cons 'e |gx[1]#_g194862_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 __tmp194859 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj194717 '() '21 '#f '#f))
        __obj194717))
    (define |gx[:0:]#syntax-split-splice*|
      (lambda (_%$stx193172%_)
        (let* ((_%$%g193176193198%_
                (lambda (_%$%g193177193194%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g193177193194%_))))
               (_%$%g193175193268%_
                (lambda (_%$%g193177193202%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g193177193202%_))
                      (let ((_%$%e193181193205%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g193177193202%_))))
                        (let ((_%$%hd193182193209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e193181193205%_)))
                              (_%$%tl193183193212%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e193181193205%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl193183193212%_))
                              (let ((_%$%e193184193215%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl193183193212%_))))
                                (let ((_%$%hd193185193219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e193184193215%_)))
                                      (_%$%tl193186193222%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e193184193215%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl193186193222%_))
                                      (let ((_%$%e193187193225%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl193186193222%_))))
                                        (let ((_%$%hd193188193229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e193187193225%_)))
                                              (_%$%tl193189193232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e193187193225%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl193189193232%_))
                                              (let ((_%$%e193190193235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl193189193232%_))))
                                                (let ((_%$%hd193191193239%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e193190193235%_)))
                                                      (_%$%tl193192193242%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e193190193235%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl193192193242%_))
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
                                            (cons _%$%hd193185193219%_ '()))
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
                                  (cons (cons (cons _%$%hd193188193229%_
                                                    (cons _%$%hd193188193229%_
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
                        (cons (cons _%$%hd193191193239%_
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
                                    (cons _%$%hd193188193229%_ '()))
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'lp))
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'fx1-))
                                                      (cons _%$%hd193188193229%_
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
                                    (cons (cons _%$%hd193191193239%_
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
              (_%$%g193176193198%_ _%$%g193177193202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g193176193198%_
                                               _%$%g193177193202%_))))
                                      (_%$%g193176193198%_
                                       _%$%g193177193202%_))))
                              (_%$%g193176193198%_ _%$%g193177193202%_))))
                      (_%$%g193176193198%_ _%$%g193177193202%_)))))
          (_%$%g193175193268%_ _%$stx193172%_))))))
