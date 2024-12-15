(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g135034_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135036_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135038_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135040_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135041_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135043_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135044_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135046_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135047_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135049_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g135050_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx134117%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx134117%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx134120%_)
        (let* ((_%g134123134147%_
                (lambda (_%g134124134143%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134124134143%_))))
               (_%g134122134450%_
                (lambda (_%g134124134151%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134124134151%_))
                      (let ((_%e134127134154%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134124134151%_))))
                        (let ((_%hd134128134158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134127134154%_)))
                              (_%tl134129134161%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134127134154%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134129134161%_))
                              (let ((_%e134130134164%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134129134161%_))))
                                (let ((_%hd134131134168%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134130134164%_)))
                                      (_%tl134132134171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134130134164%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl134132134171%_))
                                      (let ((_g135025_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl134132134171%_
                                                '0))))
                                        (begin
                                          (let ((_g135026_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135025_)
                                                       (##values-length
                                                        _g135025_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135026_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135026_)))
                                          (let ((_%target134133134174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g135025_ 0)))
                                                (_%tl134135134177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g135025_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134135134177%_))
                                                (letrec ((_%loop134136134180%_
                                                          (lambda (_%hd134134134184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause134140134187%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd134134134184%_))
                        (let ((_%e134137134190%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd134134134184%_))))
                          (let ((_%lp-hd134138134194%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134137134190%_)))
                                (_%lp-tl134139134197%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134137134190%_))))
                            (_%loop134136134180%_
                             _%lp-tl134139134197%_
                             (cons _%lp-hd134138134194%_
                                   _%clause134140134187%_))))
                        (let ((_%clause134141134200%_
                               (reverse _%clause134140134187%_)))
                          ((lambda (_%L134204%_ _%L134206%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L134206%_))
                                 (let* ((_%g134225134242%_
                                         (lambda (_%g134226134238%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g134226134238%_))))
                                        (_%g134224134303%_
                                         (lambda (_%g134226134246%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g134226134246%_))
                                               (let ((_g135027_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g134226134246%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g135028_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g135027_)
                        (##values-length _g135027_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g135028_ 2)))
                 (error "Context expects 2 values" _g135028_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target134228134249%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g135027_
                                                             0)))
                                                         (_%tl134230134252%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g135027_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl134230134252%_))
                                                         (letrec ((_%loop134231134255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd134229134259%_ _%clause134235134262%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd134229134259%_))
                                 (let ((_%e134232134265%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd134229134259%_))))
                                   (let ((_%lp-hd134233134269%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e134232134265%_)))
                                         (_%lp-tl134234134272%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e134232134265%_))))
                                     (_%loop134231134255%_
                                      _%lp-tl134234134272%_
                                      (cons _%lp-hd134233134269%_
                                            _%clause134235134262%_))))
                                 (let ((_%clause134236134275%_
                                        (reverse _%clause134235134262%_)))
                                   ((lambda (_%L134279%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%L134206%_
                                  (let ((__tmp135029
                                         (lambda (_%g134294134297%_
                                                  _%g134295134300%_)
                                           (cons _%g134294134297%_
                                                 _%g134295134300%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp135029 '() _%L134279%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause134236134275%_))))))
                   (_%loop134231134255%_ _%target134228134249%_ '()))
                 (_%g134225134242%_ _%g134226134246%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g134225134242%_
                                                _%g134226134246%_)))))
                                   (_%g134224134303%_
                                    (let ((__tmp135032
                                           (lambda (_%clause134307%_)
                                             (let* ((_%__stx134945134946%_
                                                     _%clause134307%_)
                                                    (_%g134311134338%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx134945134946%_)))))
                                               (let ((_%__kont134948134949%_
                                                      (lambda (_%L134423%_
                                                               _%L134425%_)
                                                        (cons _%L134425%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L134423%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont134950134951%_
                                                      (lambda (_%L134375%_
                                                               _%L134377%_
                                                               _%L134378%_)
                                                        (cons _%L134378%_
                                                              (cons _%L134377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L134375%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx134945134946%_))
                                                     (let ((_%e134315134403%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx134945134946%_))))
                                                       (let ((_%tl134317134410%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e134315134403%_)))
                     (_%hd134316134407%_
                      (let () (declare (not safe)) (##car _%e134315134403%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl134317134410%_))
                     (let ((_%e134318134413%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl134317134410%_))))
                       (let ((_%tl134320134420%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e134318134413%_)))
                             (_%hd134319134417%_
                              (let ()
                                (declare (not safe))
                                (##car _%e134318134413%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl134320134420%_))
                             (_%__kont134948134949%_
                              _%hd134319134417%_
                              _%hd134316134407%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl134320134420%_))
                                 (let ((_%e134330134365%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl134320134420%_))))
                                   (let ((_%tl134332134372%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e134330134365%_)))
                                         (_%hd134331134369%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e134330134365%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl134332134372%_))
                                         (_%__kont134950134951%_
                                          _%hd134331134369%_
                                          _%hd134319134417%_
                                          _%hd134316134407%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g134311134338%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g134311134338%_))))))
                     (let () (declare (not safe)) (_%g134311134338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g134311134338%_)))))))
                                          (__tmp135030
                                           (let ((__tmp135031
                                                  (lambda (_%g134441134444%_
                                                           _%g134442134447%_)
                                                    (cons _%g134441134444%_
                                                          _%g134442134447%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp135031
                                              '()
                                              _%L134204%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp135032 __tmp135030))))
                                 (_%g134123134147%_ _%g134124134151%_)))
                           _%clause134141134200%_
                           _%hd134131134168%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop134136134180%_
                                                   _%target134133134174%_
                                                   '()))
                                                (_%g134123134147%_
                                                 _%g134124134151%_)))))
                                      (_%g134123134147%_ _%g134124134151%_))))
                              (_%g134123134147%_ _%g134124134151%_))))
                      (_%g134123134147%_ _%g134124134151%_)))))
          (_%g134122134450%_ _%stx134120%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj134995
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
           __obj134995
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134995
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134995
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 ':init! '11 '#f '#f))
        (let ((__tmp135033 |gxc[1]#_g135034_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 __tmp135033 '12 '#f '#f))
        (let ((__tmp135035 |gxc[1]#_g135036_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 __tmp135035 '13 '#f '#f))
        (let ((__tmp135037 |gxc[1]#_g135038_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 __tmp135037 '14 '#f '#f))
        (let ((__tmp135039
               (cons (cons 'gensyms |gxc[1]#_g135040_|)
                     (cons (cons 'bindings |gxc[1]#_g135041_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 __tmp135039 '15 '#f '#f))
        (let ((__tmp135042
               (cons (cons 'gensyms |gxc[1]#_g135043_|)
                     (cons (cons 'bindings |gxc[1]#_g135044_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 __tmp135042 '16 '#f '#f))
        (let ((__tmp135045
               (cons (cons 'gensyms |gxc[1]#_g135046_|)
                     (cons (cons 'bindings |gxc[1]#_g135047_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 __tmp135045 '17 '#f '#f))
        (let ((__tmp135048
               (cons (cons 'gensyms |gxc[1]#_g135049_|)
                     (cons (cons 'bindings |gxc[1]#_g135050_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 __tmp135048 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj134995 '() '20 '#f '#f))
        __obj134995))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx134457%_)
        (let* ((_%g134461134475%_
                (lambda (_%g134462134471%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134462134471%_))))
               (_%g134460134516%_
                (lambda (_%g134462134479%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134462134479%_))
                      (let ((_%e134464134482%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134462134479%_))))
                        (let ((_%hd134465134486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134464134482%_)))
                              (_%tl134466134489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134464134482%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134466134489%_))
                              (let ((_%e134467134492%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134466134489%_))))
                                (let ((_%hd134468134496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134467134492%_)))
                                      (_%tl134469134499%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134467134492%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134469134499%_))
                                      ((lambda (_%L134502%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '__verbose-mutex))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%L134502%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd134468134496%_)
                                      (_%g134461134475%_ _%g134462134479%_))))
                              (_%g134461134475%_ _%g134462134479%_))))
                      (_%g134461134475%_ _%g134462134479%_)))))
          (_%g134460134516%_ _%$stx134457%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx134520%_)
        (let* ((_%g134524134538%_
                (lambda (_%g134525134534%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134525134534%_))))
               (_%g134523134579%_
                (lambda (_%g134525134542%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134525134542%_))
                      (let ((_%e134527134545%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g134525134542%_))))
                        (let ((_%hd134528134549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134527134545%_)))
                              (_%tl134529134552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134527134545%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134529134552%_))
                              (let ((_%e134530134555%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl134529134552%_))))
                                (let ((_%hd134531134559%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134530134555%_)))
                                      (_%tl134532134562%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134530134555%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134532134562%_))
                                      ((lambda (_%L134565%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L134565%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd134531134559%_)
                                      (_%g134524134538%_ _%g134525134542%_))))
                              (_%g134524134538%_ _%g134525134542%_))))
                      (_%g134524134538%_ _%g134525134542%_)))))
          (_%g134523134579%_ _%$stx134520%_))))))
