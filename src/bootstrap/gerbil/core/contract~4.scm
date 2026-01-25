(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g92631_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g92632_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g92633_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx49310%_)
        (let* ((_%g4931349331%_
                (lambda (_%g4931449327%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4931449327%_)))
               (_%g4931249526%_
                (lambda (_%g4931449335%_)
                  (if (gx#stx-pair? _%g4931449335%_)
                      (let ((_%e4931749338%_ (gx#syntax-e _%g4931449335%_)))
                        (let ((_%hd4931849342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4931749338%_)))
                              (_%tl4931949345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4931749338%_))))
                          (if (gx#stx-pair? _%tl4931949345%_)
                              (let ((_%e4932049348%_
                                     (gx#syntax-e _%tl4931949345%_)))
                                (let ((_%hd4932149352%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4932049348%_)))
                                      (_%tl4932249355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4932049348%_))))
                                  (if (gx#stx-pair? _%tl4932249355%_)
                                      (let ((_%e4932349358%_
                                             (gx#syntax-e _%tl4932249355%_)))
                                        (let ((_%hd4932449362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4932349358%_)))
                                              (_%tl4932549365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4932349358%_))))
                                          (if (gx#stx-null? _%tl4932549365%_)
                                              ((lambda (_%g4931549368%_
                                                        _%g4931649370%_)
                                                 (if (gx#identifier?
                                                      _%g4931549368%_)
                                                     (let ((_%meta49387%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49310%_
                                                               _%g4931549368%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49387%_))
                                                           (let* ((_%g4939249407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4939349403%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4939349403%_)))
                          (_%g4939149454%_
                           (lambda (_%g4939349411%_)
                             (if (gx#stx-pair? _%g4939349411%_)
                                 (let ((_%e4939649414%_
                                        (gx#syntax-e _%g4939349411%_)))
                                   (let ((_%hd4939749418%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4939649414%_)))
                                         (_%tl4939849421%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4939649414%_))))
                                     (if (gx#stx-pair? _%tl4939849421%_)
                                         (let ((_%e4939949424%_
                                                (gx#syntax-e
                                                 _%tl4939849421%_)))
                                           (let ((_%hd4940049428%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4939949424%_)))
                                                 (_%tl4940149431%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4939949424%_))))
                                             (if (gx#stx-null?
                                                  _%tl4940149431%_)
                                                 ((lambda (_%g4939449434%_
                                                           _%g4939549436%_)
                                                    (if (let ((__tmp92629
                                                               (let ((__obj92467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49387%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj92467
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj92467
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj92467 'id)))))
                  (declare (not safe))
                  (##memq __tmp92629 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4939549436%_ '()))
                            (cons _%g4931649370%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4939549436%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4931649370%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%g4939449434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%g4939549436%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4940049428%_
                                                  _%hd4939749418%_)
                                                 (_%g4939249407%_
                                                  _%g4939349411%_))))
                                         (_%g4939249407%_ _%g4939349411%_))))
                                 (_%g4939249407%_ _%g4939349411%_)))))
                     (_%g4939149454%_
                      (list (let ((__obj92468 _%meta49387%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92468
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92468
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92468
                                   'type-descriptor)))
                            (let ((__obj92469 _%meta49387%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92469
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92469
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92469
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49387%_))
                       (let* ((_%g4946049475%_
                               (lambda (_%g4946149471%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4946149471%_)))
                              (_%g4945949520%_
                               (lambda (_%g4946149479%_)
                                 (if (gx#stx-pair? _%g4946149479%_)
                                     (let ((_%e4946449482%_
                                            (gx#syntax-e _%g4946149479%_)))
                                       (let ((_%hd4946549486%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4946449482%_)))
                                             (_%tl4946649489%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4946449482%_))))
                                         (if (gx#stx-pair? _%tl4946649489%_)
                                             (let ((_%e4946749492%_
                                                    (gx#syntax-e
                                                     _%tl4946649489%_)))
                                               (let ((_%hd4946849496%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4946749492%_)))
                                                     (_%tl4946949499%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4946749492%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4946949499%_)
                                                     ((lambda (_%g4946249502%_
                                                               _%g4946349504%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g4946349504%_ '()))
                            (cons (cons _%g4946249502%_
                                        (cons _%g4931649370%_ '()))
                                  '()))))
              _%hd4946849496%_
              _%hd4946549486%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4946049475%_
                                                      _%g4946149479%_))))
                                             (_%g4946049475%_
                                              _%g4946149479%_))))
                                     (_%g4946049475%_ _%g4946149479%_)))))
                         (_%g4945949520%_
                          (list (let ((__obj92466 _%meta49387%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj92466
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj92466
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj92466
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49310%_
                                   _%g4931549368%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49310%_
                        _%g4931549368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4931349331%_
                                                      _%g4931449335%_)))
                                               _%hd4932449362%_
                                               _%hd4932149352%_)
                                              (_%g4931349331%_
                                               _%g4931449335%_))))
                                      (_%g4931349331%_ _%g4931449335%_))))
                              (_%g4931349331%_ _%g4931449335%_))))
                      (_%g4931349331%_ _%g4931449335%_)))))
          (_%g4931249526%_ _%stx49310%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx49530%_)
        (let* ((_%g4953349551%_
                (lambda (_%g4953449547%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4953449547%_)))
               (_%g4953249745%_
                (lambda (_%g4953449555%_)
                  (if (gx#stx-pair? _%g4953449555%_)
                      (let ((_%e4953749558%_ (gx#syntax-e _%g4953449555%_)))
                        (let ((_%hd4953849562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4953749558%_)))
                              (_%tl4953949565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4953749558%_))))
                          (if (gx#stx-pair? _%tl4953949565%_)
                              (let ((_%e4954049568%_
                                     (gx#syntax-e _%tl4953949565%_)))
                                (let ((_%hd4954149572%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4954049568%_)))
                                      (_%tl4954249575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4954049568%_))))
                                  (if (gx#stx-pair? _%tl4954249575%_)
                                      (let ((_%e4954349578%_
                                             (gx#syntax-e _%tl4954249575%_)))
                                        (let ((_%hd4954449582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4954349578%_)))
                                              (_%tl4954549585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4954349578%_))))
                                          (if (gx#stx-null? _%tl4954549585%_)
                                              ((lambda (_%g4953549588%_
                                                        _%g4953649590%_)
                                                 (if (gx#identifier?
                                                      _%g4953549588%_)
                                                     (let ((_%meta49606%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49530%_
                                                               _%g4953549588%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49606%_))
                                                           (let* ((_%g4961149626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4961249622%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4961249622%_)))
                          (_%g4961049673%_
                           (lambda (_%g4961249630%_)
                             (if (gx#stx-pair? _%g4961249630%_)
                                 (let ((_%e4961549633%_
                                        (gx#syntax-e _%g4961249630%_)))
                                   (let ((_%hd4961649637%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4961549633%_)))
                                         (_%tl4961749640%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4961549633%_))))
                                     (if (gx#stx-pair? _%tl4961749640%_)
                                         (let ((_%e4961849643%_
                                                (gx#syntax-e
                                                 _%tl4961749640%_)))
                                           (let ((_%hd4961949647%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4961849643%_)))
                                                 (_%tl4962049650%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4961849643%_))))
                                             (if (gx#stx-null?
                                                  _%tl4962049650%_)
                                                 ((lambda (_%g4961349653%_
                                                           _%g4961449655%_)
                                                    (if (let ((__tmp92630
                                                               (let ((__obj92471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49606%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj92471
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj92471
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj92471 'id)))))
                  (declare (not safe))
                  (##memq __tmp92630 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4961449655%_ '()))
                            (cons _%g4953649590%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4961449655%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4953649590%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'or)
                              (cons (cons (gx#datum->syntax '#f 'not)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons _%g4961349653%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons '"bad cast"
                                                (cons _%g4953649590%_
                                                      (cons _%g4961349653%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4961949647%_
                                                  _%hd4961649637%_)
                                                 (_%g4961149626%_
                                                  _%g4961249630%_))))
                                         (_%g4961149626%_ _%g4961249630%_))))
                                 (_%g4961149626%_ _%g4961249630%_)))))
                     (_%g4961049673%_
                      (list (let ((__obj92472 _%meta49606%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92472
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92472
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92472
                                   'type-descriptor)))
                            (let ((__obj92473 _%meta49606%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj92473
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj92473
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj92473
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49606%_))
                       (let* ((_%g4967949694%_
                               (lambda (_%g4968049690%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4968049690%_)))
                              (_%g4967849739%_
                               (lambda (_%g4968049698%_)
                                 (if (gx#stx-pair? _%g4968049698%_)
                                     (let ((_%e4968349701%_
                                            (gx#syntax-e _%g4968049698%_)))
                                       (let ((_%hd4968449705%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4968349701%_)))
                                             (_%tl4968549708%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4968349701%_))))
                                         (if (gx#stx-pair? _%tl4968549708%_)
                                             (let ((_%e4968649711%_
                                                    (gx#syntax-e
                                                     _%tl4968549708%_)))
                                               (let ((_%hd4968749715%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4968649711%_)))
                                                     (_%tl4968849718%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4968649711%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4968849718%_)
                                                     ((lambda (_%g4968149721%_
                                                               _%g4968249723%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g4968249723%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4953649590%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%g4968149721%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4968749715%_
              _%hd4968449705%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4967949694%_
                                                      _%g4968049698%_))))
                                             (_%g4967949694%_
                                              _%g4968049698%_))))
                                     (_%g4967949694%_ _%g4968049698%_)))))
                         (_%g4967849739%_
                          (list (let ((__obj92470 _%meta49606%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj92470
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj92470
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj92470
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49530%_
                                   _%g4953549588%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49530%_
                        _%g4953549588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4953349551%_
                                                      _%g4953449555%_)))
                                               _%hd4954449582%_
                                               _%hd4954149572%_)
                                              (_%g4953349551%_
                                               _%g4953449555%_))))
                                      (_%g4953349551%_ _%g4953449555%_))))
                              (_%g4953349551%_ _%g4953449555%_))))
                      (_%g4953349551%_ _%g4953449555%_)))))
          (_%g4953249745%_ _%stx49530%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx49749%_)
        (let* ((_%g4975249770%_
                (lambda (_%g4975349766%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4975349766%_)))
               (_%g4975149856%_
                (lambda (_%g4975349774%_)
                  (if (gx#stx-pair? _%g4975349774%_)
                      (let ((_%e4975649777%_ (gx#syntax-e _%g4975349774%_)))
                        (let ((_%hd4975749781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4975649777%_)))
                              (_%tl4975849784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4975649777%_))))
                          (if (gx#stx-pair? _%tl4975849784%_)
                              (let ((_%e4975949787%_
                                     (gx#syntax-e _%tl4975849784%_)))
                                (let ((_%hd4976049791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4975949787%_)))
                                      (_%tl4976149794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4975949787%_))))
                                  (if (gx#stx-pair? _%tl4976149794%_)
                                      (let ((_%e4976249797%_
                                             (gx#syntax-e _%tl4976149794%_)))
                                        (let ((_%hd4976349801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4976249797%_)))
                                              (_%tl4976449804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4976249797%_))))
                                          (if (gx#stx-null? _%tl4976449804%_)
                                              ((lambda (_%g4975449807%_
                                                        _%g4975549809%_)
                                                 (if (gx#identifier?
                                                      _%g4975449807%_)
                                                     (let* ((_%g4982549833%_
                                                             (lambda (_%g4982649829%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4982649829%_)))
                                                            (_%g4982449852%_
                                                             (lambda (_%g4982649837%_)
                                                               ((lambda (_%g4982749840%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%g4982749840%_ '()))
                                      (cons _%g4975549809%_ '()))))
                        _%g4982649837%_))))
               (_%g4982449852%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx49749%_
                   _%g4975449807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4975249770%_
                                                      _%g4975349774%_)))
                                               _%hd4976349801%_
                                               _%hd4976049791%_)
                                              (_%g4975249770%_
                                               _%g4975349774%_))))
                                      (_%g4975249770%_ _%g4975349774%_))))
                              (_%g4975249770%_ _%g4975349774%_))))
                      (_%g4975249770%_ _%g4975349774%_)))))
          (_%g4975149856%_ _%stx49749%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx49860%_)
        (let* ((_%__stx8656286563%_ _%$stx49860%_)
               (_%g4986649950%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8656286563%_))))
          (let ((_%__kont8656586566%_
                 (lambda (_%g4986850254%_
                          _%g4986950256%_
                          _%g4987050257%_
                          _%g4987150258%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g4987150258%_
                                           (cons _%g4986950256%_
                                                 (foldr (lambda (_%g5028250285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5028350288%_)
                  (cons _%g5028250285%_ _%g5028350288%_))
                '()
                _%g4986850254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g4987050257%_ '())))))
                (_%__kont8656986570%_
                 (lambda (_%g4989650132%_
                          _%g4989750134%_
                          _%g4989850135%_
                          _%g4989950136%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g4989950136%_
                                           (cons _%g4989750134%_
                                                 (foldr (lambda (_%g5016050163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5016150166%_)
                  (cons _%g5016050163%_ _%g5016150166%_))
                '()
                _%g4989650132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g4989850135%_ '())))))
                (_%__kont8657386574%_
                 (lambda (_%g4992450015%_ _%g4992550017%_ _%g4992650018%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g4992650018%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g4992550017%_
                                                       (foldr (lambda (_%g5003850041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5003950044%_)
                        (cons _%g5003850041%_ _%g5003950044%_))
                      '()
                      _%g4992450015%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match8668786688%_
                    (lambda (_%e4992749957%_
                             _%hd4992849961%_
                             _%tl4992949964%_
                             _%e4993049967%_
                             _%hd4993149971%_
                             _%tl4993249974%_
                             _%e4993349977%_
                             _%hd4993449981%_
                             _%tl4993549984%_
                             _%__splice8657586576%_
                             _%target4993649987%_
                             _%tl4993849990%_)
                      (letrec ((_%loop4993949993%_
                                (lambda (_%hd4993749997%_ _%rest4994350000%_)
                                  (if (gx#stx-pair? _%hd4993749997%_)
                                      (let ((_%e4994050002%_
                                             (gx#syntax-e _%hd4993749997%_)))
                                        (let ((_%lp-tl4994250009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4994050002%_)))
                                              (_%lp-hd4994150006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4994050002%_))))
                                          (_%loop4993949993%_
                                           _%lp-tl4994250009%_
                                           (cons _%lp-hd4994150006%_
                                                 _%rest4994350000%_))))
                                      (let ((_%rest4994450012%_
                                             (reverse _%rest4994350000%_)))
                                        (_%__kont8657386574%_
                                         _%rest4994450012%_
                                         _%hd4993449981%_
                                         _%hd4993149971%_))))))
                        (_%loop4993949993%_ _%target4993649987%_ '()))))
                   (_%__match8666186662%_
                    (lambda (_%e4990050054%_
                             _%hd4990150058%_
                             _%tl4990250061%_
                             _%e4990350064%_
                             _%hd4990450068%_
                             _%tl4990550071%_
                             _%e4990650074%_
                             _%hd4990750078%_
                             _%tl4990850081%_
                             _%e4990950084%_
                             _%hd4991050088%_
                             _%tl4991150091%_
                             _%e4991250094%_
                             _%hd4991350098%_
                             _%tl4991450101%_
                             _%__splice8657186572%_
                             _%target4991550104%_
                             _%tl4991750107%_)
                      (letrec ((_%loop4991850110%_
                                (lambda (_%hd4991650114%_ _%rest4992250117%_)
                                  (if (gx#stx-pair? _%hd4991650114%_)
                                      (let ((_%e4991950119%_
                                             (gx#syntax-e _%hd4991650114%_)))
                                        (let ((_%lp-tl4992150126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4991950119%_)))
                                              (_%lp-hd4992050123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4991950119%_))))
                                          (_%loop4991850110%_
                                           _%lp-tl4992150126%_
                                           (cons _%lp-hd4992050123%_
                                                 _%rest4992250117%_))))
                                      (let ((_%rest4992350129%_
                                             (reverse _%rest4992250117%_)))
                                        (_%__kont8656986570%_
                                         _%rest4992350129%_
                                         _%hd4991350098%_
                                         _%hd4991050088%_
                                         _%hd4990450068%_))))))
                        (_%loop4991850110%_ _%target4991550104%_ '()))))
                   (_%__match8661986620%_
                    (lambda (_%e4987250176%_
                             _%hd4987350180%_
                             _%tl4987450183%_
                             _%e4987550186%_
                             _%hd4987650190%_
                             _%tl4987750193%_
                             _%e4987850196%_
                             _%hd4987950200%_
                             _%tl4988050203%_
                             _%e4988150206%_
                             _%hd4988250210%_
                             _%tl4988350213%_
                             _%e4988450216%_
                             _%hd4988550220%_
                             _%tl4988650223%_
                             _%__splice8656786568%_
                             _%target4988750226%_
                             _%tl4988950229%_)
                      (letrec ((_%loop4989050232%_
                                (lambda (_%hd4988850236%_ _%rest4989450239%_)
                                  (if (gx#stx-pair? _%hd4988850236%_)
                                      (let ((_%e4989150241%_
                                             (gx#syntax-e _%hd4988850236%_)))
                                        (let ((_%lp-tl4989350248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4989150241%_)))
                                              (_%lp-hd4989250245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4989150241%_))))
                                          (_%loop4989050232%_
                                           _%lp-tl4989350248%_
                                           (cons _%lp-hd4989250245%_
                                                 _%rest4989450239%_))))
                                      (let ((_%rest4989550251%_
                                             (reverse _%rest4989450239%_)))
                                        (_%__kont8656586566%_
                                         _%rest4989550251%_
                                         _%hd4988550220%_
                                         _%hd4988250210%_
                                         _%hd4987650190%_))))))
                        (_%loop4989050232%_ _%target4988750226%_ '())))))
              (if (gx#stx-pair? _%__stx8656286563%_)
                  (let ((_%e4987250176%_ (gx#syntax-e _%__stx8656286563%_)))
                    (let ((_%tl4987450183%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4987250176%_)))
                          (_%hd4987350180%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4987250176%_))))
                      (if (gx#stx-pair? _%tl4987450183%_)
                          (let ((_%e4987550186%_
                                 (gx#syntax-e _%tl4987450183%_)))
                            (let ((_%tl4987750193%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4987550186%_)))
                                  (_%hd4987650190%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4987550186%_))))
                              (if (gx#stx-pair? _%tl4987750193%_)
                                  (let ((_%e4987850196%_
                                         (gx#syntax-e _%tl4987750193%_)))
                                    (let ((_%tl4988050203%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4987850196%_)))
                                          (_%hd4987950200%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4987850196%_))))
                                      (if (gx#identifier? _%hd4987950200%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g92631_|
                                               _%hd4987950200%_)
                                              (if (gx#stx-pair?
                                                   _%tl4988050203%_)
                                                  (let ((_%e4988150206%_
                                                         (gx#syntax-e
                                                          _%tl4988050203%_)))
                                                    (let ((_%tl4988350213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4988150206%_)))
                                                          (_%hd4988250210%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4988150206%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4988350213%_)
                                                          (let ((_%e4988450216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4988350213%_)))
                    (let ((_%tl4988650223%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4988450216%_)))
                          (_%hd4988550220%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4988450216%_))))
                      (if (gx#stx-pair/null? _%tl4988650223%_)
                          (let ((_%__splice8656786568%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4988650223%_
                                  '0)))
                            (let ((_%tl4988950229%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8656786568%_ '1)))
                                  (_%target4988750226%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8656786568%_
                                      '0))))
                              (if (gx#stx-null? _%tl4988950229%_)
                                  (_%__match8661986620%_
                                   _%e4987250176%_
                                   _%hd4987350180%_
                                   _%tl4987450183%_
                                   _%e4987550186%_
                                   _%hd4987650190%_
                                   _%tl4987750193%_
                                   _%e4987850196%_
                                   _%hd4987950200%_
                                   _%tl4988050203%_
                                   _%e4988150206%_
                                   _%hd4988250210%_
                                   _%tl4988350213%_
                                   _%e4988450216%_
                                   _%hd4988550220%_
                                   _%tl4988650223%_
                                   _%__splice8656786568%_
                                   _%target4988750226%_
                                   _%tl4988950229%_)
                                  (if (gx#stx-pair/null? _%tl4988050203%_)
                                      (let ((_%__splice8657586576%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4988050203%_
                                              '0)))
                                        (let ((_%tl4993849990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8657586576%_
                                                  '1)))
                                              (_%target4993649987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8657586576%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4993849990%_)
                                              (_%__match8668786688%_
                                               _%e4987250176%_
                                               _%hd4987350180%_
                                               _%tl4987450183%_
                                               _%e4987550186%_
                                               _%hd4987650190%_
                                               _%tl4987750193%_
                                               _%e4987850196%_
                                               _%hd4987950200%_
                                               _%tl4988050203%_
                                               _%__splice8657586576%_
                                               _%target4993649987%_
                                               _%tl4993849990%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986649950%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986649950%_))))))
                          (if (gx#stx-pair/null? _%tl4988050203%_)
                              (let ((_%__splice8657586576%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4988050203%_
                                      '0)))
                                (let ((_%tl4993849990%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8657586576%_
                                          '1)))
                                      (_%target4993649987%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8657586576%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4993849990%_)
                                      (_%__match8668786688%_
                                       _%e4987250176%_
                                       _%hd4987350180%_
                                       _%tl4987450183%_
                                       _%e4987550186%_
                                       _%hd4987650190%_
                                       _%tl4987750193%_
                                       _%e4987850196%_
                                       _%hd4987950200%_
                                       _%tl4988050203%_
                                       _%__splice8657586576%_
                                       _%target4993649987%_
                                       _%tl4993849990%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986649950%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4986649950%_))))))
                  (if (gx#stx-pair/null? _%tl4988050203%_)
                      (let ((_%__splice8657586576%_
                             (gx#syntax-split-splice->vector
                              _%tl4988050203%_
                              '0)))
                        (let ((_%tl4993849990%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8657586576%_ '1)))
                              (_%target4993649987%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8657586576%_ '0))))
                          (if (gx#stx-null? _%tl4993849990%_)
                              (_%__match8668786688%_
                               _%e4987250176%_
                               _%hd4987350180%_
                               _%tl4987450183%_
                               _%e4987550186%_
                               _%hd4987650190%_
                               _%tl4987750193%_
                               _%e4987850196%_
                               _%hd4987950200%_
                               _%tl4988050203%_
                               _%__splice8657586576%_
                               _%target4993649987%_
                               _%tl4993849990%_)
                              (let ()
                                (declare (not safe))
                                (_%g4986649950%_)))))
                      (let () (declare (not safe)) (_%g4986649950%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4988050203%_)
                                                      (let ((_%__splice8657586576%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4988050203%_
                                                              '0)))
                                                        (let ((_%tl4993849990%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8657586576%_ '1)))
                      (_%target4993649987%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8657586576%_ '0))))
                  (if (gx#stx-null? _%tl4993849990%_)
                      (_%__match8668786688%_
                       _%e4987250176%_
                       _%hd4987350180%_
                       _%tl4987450183%_
                       _%e4987550186%_
                       _%hd4987650190%_
                       _%tl4987750193%_
                       _%e4987850196%_
                       _%hd4987950200%_
                       _%tl4988050203%_
                       _%__splice8657586576%_
                       _%target4993649987%_
                       _%tl4993849990%_)
                      (let () (declare (not safe)) (_%g4986649950%_)))))
              (let () (declare (not safe)) (_%g4986649950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g92632_|
                                                   _%hd4987950200%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4988050203%_)
                                                      (let ((_%e4990950084%_
                                                             (gx#syntax-e
                                                              _%tl4988050203%_)))
                                                        (let ((_%tl4991150091%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4990950084%_)))
                      (_%hd4991050088%_
                       (let () (declare (not safe)) (##car _%e4990950084%_))))
                  (if (gx#stx-pair? _%tl4991150091%_)
                      (let ((_%e4991250094%_ (gx#syntax-e _%tl4991150091%_)))
                        (let ((_%tl4991450101%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4991250094%_)))
                              (_%hd4991350098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4991250094%_))))
                          (if (gx#stx-pair/null? _%tl4991450101%_)
                              (let ((_%__splice8657186572%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4991450101%_
                                      '0)))
                                (let ((_%tl4991750107%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8657186572%_
                                          '1)))
                                      (_%target4991550104%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8657186572%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4991750107%_)
                                      (_%__match8666186662%_
                                       _%e4987250176%_
                                       _%hd4987350180%_
                                       _%tl4987450183%_
                                       _%e4987550186%_
                                       _%hd4987650190%_
                                       _%tl4987750193%_
                                       _%e4987850196%_
                                       _%hd4987950200%_
                                       _%tl4988050203%_
                                       _%e4990950084%_
                                       _%hd4991050088%_
                                       _%tl4991150091%_
                                       _%e4991250094%_
                                       _%hd4991350098%_
                                       _%tl4991450101%_
                                       _%__splice8657186572%_
                                       _%target4991550104%_
                                       _%tl4991750107%_)
                                      (if (gx#stx-pair/null? _%tl4988050203%_)
                                          (let ((_%__splice8657586576%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4988050203%_
                                                  '0)))
                                            (let ((_%tl4993849990%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8657586576%_
                                                      '1)))
                                                  (_%target4993649987%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8657586576%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4993849990%_)
                                                  (_%__match8668786688%_
                                                   _%e4987250176%_
                                                   _%hd4987350180%_
                                                   _%tl4987450183%_
                                                   _%e4987550186%_
                                                   _%hd4987650190%_
                                                   _%tl4987750193%_
                                                   _%e4987850196%_
                                                   _%hd4987950200%_
                                                   _%tl4988050203%_
                                                   _%__splice8657586576%_
                                                   _%target4993649987%_
                                                   _%tl4993849990%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986649950%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986649950%_))))))
                              (if (gx#stx-pair/null? _%tl4988050203%_)
                                  (let ((_%__splice8657586576%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4988050203%_
                                          '0)))
                                    (let ((_%tl4993849990%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8657586576%_
                                              '1)))
                                          (_%target4993649987%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8657586576%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4993849990%_)
                                          (_%__match8668786688%_
                                           _%e4987250176%_
                                           _%hd4987350180%_
                                           _%tl4987450183%_
                                           _%e4987550186%_
                                           _%hd4987650190%_
                                           _%tl4987750193%_
                                           _%e4987850196%_
                                           _%hd4987950200%_
                                           _%tl4988050203%_
                                           _%__splice8657586576%_
                                           _%target4993649987%_
                                           _%tl4993849990%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986649950%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986649950%_))))))
                      (if (gx#stx-pair/null? _%tl4988050203%_)
                          (let ((_%__splice8657586576%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4988050203%_
                                  '0)))
                            (let ((_%tl4993849990%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8657586576%_ '1)))
                                  (_%target4993649987%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8657586576%_
                                      '0))))
                              (if (gx#stx-null? _%tl4993849990%_)
                                  (_%__match8668786688%_
                                   _%e4987250176%_
                                   _%hd4987350180%_
                                   _%tl4987450183%_
                                   _%e4987550186%_
                                   _%hd4987650190%_
                                   _%tl4987750193%_
                                   _%e4987850196%_
                                   _%hd4987950200%_
                                   _%tl4988050203%_
                                   _%__splice8657586576%_
                                   _%target4993649987%_
                                   _%tl4993849990%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986649950%_)))))
                          (let () (declare (not safe)) (_%g4986649950%_))))))
              (if (gx#stx-pair/null? _%tl4988050203%_)
                  (let ((_%__splice8657586576%_
                         (gx#syntax-split-splice->vector _%tl4988050203%_ '0)))
                    (let ((_%tl4993849990%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8657586576%_ '1)))
                          (_%target4993649987%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8657586576%_ '0))))
                      (if (gx#stx-null? _%tl4993849990%_)
                          (_%__match8668786688%_
                           _%e4987250176%_
                           _%hd4987350180%_
                           _%tl4987450183%_
                           _%e4987550186%_
                           _%hd4987650190%_
                           _%tl4987750193%_
                           _%e4987850196%_
                           _%hd4987950200%_
                           _%tl4988050203%_
                           _%__splice8657586576%_
                           _%target4993649987%_
                           _%tl4993849990%_)
                          (let () (declare (not safe)) (_%g4986649950%_)))))
                  (let () (declare (not safe)) (_%g4986649950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4988050203%_)
                                                      (let ((_%__splice8657586576%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4988050203%_
                                                              '0)))
                                                        (let ((_%tl4993849990%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8657586576%_ '1)))
                      (_%target4993649987%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8657586576%_ '0))))
                  (if (gx#stx-null? _%tl4993849990%_)
                      (_%__match8668786688%_
                       _%e4987250176%_
                       _%hd4987350180%_
                       _%tl4987450183%_
                       _%e4987550186%_
                       _%hd4987650190%_
                       _%tl4987750193%_
                       _%e4987850196%_
                       _%hd4987950200%_
                       _%tl4988050203%_
                       _%__splice8657586576%_
                       _%target4993649987%_
                       _%tl4993849990%_)
                      (let () (declare (not safe)) (_%g4986649950%_)))))
              (let () (declare (not safe)) (_%g4986649950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4988050203%_)
                                              (let ((_%__splice8657586576%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4988050203%_
                                                      '0)))
                                                (let ((_%tl4993849990%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8657586576%_
                                                          '1)))
                                                      (_%target4993649987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8657586576%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4993849990%_)
                                                      (_%__match8668786688%_
                                                       _%e4987250176%_
                                                       _%hd4987350180%_
                                                       _%tl4987450183%_
                                                       _%e4987550186%_
                                                       _%hd4987650190%_
                                                       _%tl4987750193%_
                                                       _%e4987850196%_
                                                       _%hd4987950200%_
                                                       _%tl4988050203%_
                                                       _%__splice8657586576%_
                                                       _%target4993649987%_
                                                       _%tl4993849990%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4986649950%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986649950%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986649950%_)))))
                          (let () (declare (not safe)) (_%g4986649950%_)))))
                  (let () (declare (not safe)) (_%g4986649950%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx50298%_)
        (let* ((_%__stx8669086691%_ _%$stx50298%_)
               (_%g5030350339%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8669086691%_))))
          (let ((_%__kont8669386694%_
                 (lambda (_%g5030550457%_ _%g5030650459%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g5030650459%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g5030550457%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'val)
                                                             '()))
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'contract-violation!)
                           (cons _%g5030650459%_
                                 (cons _%g5030550457%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8669586696%_
                 (lambda (_%g5031650396%_ _%g5031750398%_ _%g5031850399%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g5031850399%_
                                           (cons _%g5031750398%_ '())))
                               (cons _%g5031650396%_ '()))))))
            (if (gx#stx-pair? _%__stx8669086691%_)
                (let ((_%e5030750427%_ (gx#syntax-e _%__stx8669086691%_)))
                  (let ((_%tl5030950434%_
                         (let () (declare (not safe)) (##cdr _%e5030750427%_)))
                        (_%hd5030850431%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5030750427%_))))
                    (if (gx#stx-pair? _%tl5030950434%_)
                        (let ((_%e5031050437%_ (gx#syntax-e _%tl5030950434%_)))
                          (let ((_%tl5031250444%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5031050437%_)))
                                (_%hd5031150441%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5031050437%_))))
                            (if (gx#stx-pair? _%tl5031250444%_)
                                (let ((_%e5031350447%_
                                       (gx#syntax-e _%tl5031250444%_)))
                                  (let ((_%tl5031550454%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5031350447%_)))
                                        (_%hd5031450451%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5031350447%_))))
                                    (if (gx#stx-null? _%tl5031550454%_)
                                        (_%__kont8669386694%_
                                         _%hd5031450451%_
                                         _%hd5031150441%_)
                                        (if (gx#stx-pair? _%tl5031550454%_)
                                            (let ((_%e5032850376%_
                                                   (gx#syntax-e
                                                    _%tl5031550454%_)))
                                              (let ((_%tl5033050383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5032850376%_)))
                                                    (_%hd5032950380%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5032850376%_))))
                                                (if (gx#identifier?
                                                     _%hd5032950380%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g92633_|
                                                         _%hd5032950380%_)
                                                        (if (gx#stx-pair?
                                                             _%tl5033050383%_)
                                                            (let ((_%e5033150386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl5033050383%_)))
                      (let ((_%tl5033350393%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5033150386%_)))
                            (_%hd5033250390%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5033150386%_))))
                        (if (gx#stx-null? _%tl5033350393%_)
                            (_%__kont8669586696%_
                             _%hd5033250390%_
                             _%hd5031450451%_
                             _%hd5031150441%_)
                            (let () (declare (not safe)) (_%g5030350339%_)))))
                    (let () (declare (not safe)) (_%g5030350339%_)))
                (let () (declare (not safe)) (_%g5030350339%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5030350339%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5030350339%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5030350339%_)))))
                        (let () (declare (not safe)) (_%g5030350339%_)))))
                (let () (declare (not safe)) (_%g5030350339%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx50478%_)
        (let ((_%g5048150488%_
               (lambda (_%g5048250484%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5048250484%_))))
          (_%g5048150488%_ _%$stx50478%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx50492%_)
        (let ((_%g5049550502%_
               (lambda (_%g5049650498%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5049650498%_))))
          (_%g5049550502%_ _%$stx50492%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx50506%_)
        (let* ((_%g5051050524%_
                (lambda (_%g5051150520%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5051150520%_)))
               (_%g5050950565%_
                (lambda (_%g5051150528%_)
                  (if (gx#stx-pair? _%g5051150528%_)
                      (let ((_%e5051350531%_ (gx#syntax-e _%g5051150528%_)))
                        (let ((_%hd5051450535%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5051350531%_)))
                              (_%tl5051550538%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5051350531%_))))
                          (if (gx#stx-pair? _%tl5051550538%_)
                              (let ((_%e5051650541%_
                                     (gx#syntax-e _%tl5051550538%_)))
                                (let ((_%hd5051750545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5051650541%_)))
                                      (_%tl5051850548%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5051650541%_))))
                                  (if (gx#stx-null? _%tl5051850548%_)
                                      ((lambda (_%g5051250551%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%g5051250551%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%g5051250551%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5051750545%_)
                                      (_%g5051050524%_ _%g5051150528%_))))
                              (_%g5051050524%_ _%g5051150528%_))))
                      (_%g5051050524%_ _%g5051150528%_)))))
          (_%g5050950565%_ _%$stx50506%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx50569%_)
        (let* ((_%g5057250595%_
                (lambda (_%g5057350591%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5057350591%_)))
               (_%g5057150719%_
                (lambda (_%g5057350599%_)
                  (if (gx#stx-pair? _%g5057350599%_)
                      (let ((_%e5057850602%_ (gx#syntax-e _%g5057350599%_)))
                        (let ((_%hd5057950606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5057850602%_)))
                              (_%tl5058050609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5057850602%_))))
                          (if (gx#stx-pair? _%tl5058050609%_)
                              (let ((_%e5058150612%_
                                     (gx#syntax-e _%tl5058050609%_)))
                                (let ((_%hd5058250616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5058150612%_)))
                                      (_%tl5058350619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5058150612%_))))
                                  (if (gx#stx-pair? _%tl5058350619%_)
                                      (let ((_%e5058450622%_
                                             (gx#syntax-e _%tl5058350619%_)))
                                        (let ((_%hd5058550626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5058450622%_)))
                                              (_%tl5058650629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5058450622%_))))
                                          (if (gx#stx-pair? _%tl5058650629%_)
                                              (let ((_%e5058750632%_
                                                     (gx#syntax-e
                                                      _%tl5058650629%_)))
                                                (let ((_%hd5058850636%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5058750632%_)))
                                                      (_%tl5058950639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5058750632%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5058950639%_)
                                                      ((lambda (_%g5057450642%_
                                                                _%g5057550644%_
                                                                _%g5057650645%_
                                                                _%g5057750646%_)
                                                         (let* ((_%g5066650674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g5066750670%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g5066750670%_)))
                        (_%g5066550693%_
                         (lambda (_%g5066750678%_)
                           ((lambda (_%g5066850681%_)
                              (cons (gx#datum->syntax '#f 'abort!)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'raise-contract-violation-error)
                                                (cons '"contract violation"
                                                      (cons 'context:
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g5066850681%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g5057550644%_ '()))
                                      (cons 'value:
                                            (cons _%g5057450642%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g5066750678%_))))
                   (_%g5066550693%_
                    (let ((_%$e50705%_
                           (let ((_%$e50697%_ (gx#stx-source _%g5057650645%_)))
                             (if _%$e50697%_
                                 _%$e50697%_
                                 (let ((_%$e50701%_
                                        (gx#stx-source _%stx50569%_)))
                                   (if _%$e50701%_
                                       _%$e50701%_
                                       (gx#stx-source _%g5057750646%_)))))))
                      (if _%$e50705%_
                          ((lambda (_%locat50709%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g5071150713%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat50709%_
                                   '#t
                                   _%g5071150713%_)))))
                           _%$e50705%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd5058850636%_
               _%hd5058550626%_
               _%hd5058250616%_
               _%hd5057950606%_)
              (_%g5057250595%_ _%g5057350599%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5057250595%_
                                               _%g5057350599%_))))
                                      (_%g5057250595%_ _%g5057350599%_))))
                              (_%g5057250595%_ _%g5057350599%_))))
                      (_%g5057250595%_ _%g5057350599%_)))))
          (_%g5057150719%_ _%stx50569%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx50723%_)
        (let* ((_%g5072650741%_
                (lambda (_%g5072750737%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5072750737%_)))
               (_%g5072550837%_
                (lambda (_%g5072750745%_)
                  (if (gx#stx-pair? _%g5072750745%_)
                      (let ((_%e5073050748%_ (gx#syntax-e _%g5072750745%_)))
                        (let ((_%hd5073150752%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5073050748%_)))
                              (_%tl5073250755%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5073050748%_))))
                          (if (gx#stx-pair? _%tl5073250755%_)
                              (let ((_%e5073350758%_
                                     (gx#syntax-e _%tl5073250755%_)))
                                (let ((_%hd5073450762%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5073350758%_)))
                                      (_%tl5073550765%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5073350758%_))))
                                  (if (gx#stx-null? _%tl5073550765%_)
                                      ((lambda (_%g5072850768%_
                                                _%g5072950770%_)
                                         (let* ((_%g5078450792%_
                                                 (lambda (_%g5078550788%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5078550788%_)))
                                                (_%g5078350811%_
                                                 (lambda (_%g5078550796%_)
                                                   ((lambda (_%g5078650799%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'abort!)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'raise-contract-violation-error)
                                (cons '"nil (#f) derefence"
                                      (cons 'context:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%g5078650799%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%g5072850768%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5078550796%_))))
                                           (_%g5078350811%_
                                            (let ((_%$e50823%_
                                                   (let ((_%$e50815%_
                                                          (gx#stx-source
                                                           _%g5072850768%_)))
                                                     (if _%$e50815%_
                                                         _%$e50815%_
                                                         (let ((_%$e50819%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx50723%_)))
                   (if _%$e50819%_
                       _%$e50819%_
                       (gx#stx-source _%g5072950770%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e50823%_
                                                  ((lambda (_%locat50827%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g5082950831%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat50827%_
                                                           '#t
                                                           _%g5082950831%_)))))
                                                   _%$e50823%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd5073450762%_
                                       _%hd5073150752%_)
                                      (_%g5072650741%_ _%g5072750745%_))))
                              (_%g5072650741%_ _%g5072750745%_))))
                      (_%g5072650741%_ _%g5072750745%_)))))
          (_%g5072550837%_ _%stx50723%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx50841%_)
        (let* ((_%g5084550859%_
                (lambda (_%g5084650855%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5084650855%_)))
               (_%g5084450900%_
                (lambda (_%g5084650863%_)
                  (if (gx#stx-pair? _%g5084650863%_)
                      (let ((_%e5084850866%_ (gx#syntax-e _%g5084650863%_)))
                        (let ((_%hd5084950870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5084850866%_)))
                              (_%tl5085050873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5084850866%_))))
                          (if (gx#stx-pair? _%tl5085050873%_)
                              (let ((_%e5085150876%_
                                     (gx#syntax-e _%tl5085050873%_)))
                                (let ((_%hd5085250880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5085150876%_)))
                                      (_%tl5085350883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5085150876%_))))
                                  (if (gx#stx-null? _%tl5085350883%_)
                                      ((lambda (_%g5084750886%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@abort)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _%g5084750886%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5085250880%_)
                                      (_%g5084550859%_ _%g5084650863%_))))
                              (_%g5084550859%_ _%g5084650863%_))))
                      (_%g5084550859%_ _%g5084650863%_)))))
          (_%g5084450900%_ _%$stx50841%_))))))
