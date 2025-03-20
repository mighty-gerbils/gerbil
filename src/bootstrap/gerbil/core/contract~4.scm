(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g84995_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45240%_)
        (let* ((_%g4524345261%_
                (lambda (_%g4524445257%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4524445257%_)))
               (_%g4524245456%_
                (lambda (_%g4524445265%_)
                  (if (gx#stx-pair? _%g4524445265%_)
                      (let ((_%e4524745268%_ (gx#syntax-e _%g4524445265%_)))
                        (let ((_%hd4524845272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4524745268%_)))
                              (_%tl4524945275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4524745268%_))))
                          (if (gx#stx-pair? _%tl4524945275%_)
                              (let ((_%e4525045278%_
                                     (gx#syntax-e _%tl4524945275%_)))
                                (let ((_%hd4525145282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4525045278%_)))
                                      (_%tl4525245285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4525045278%_))))
                                  (if (gx#stx-pair? _%tl4525245285%_)
                                      (let ((_%e4525345288%_
                                             (gx#syntax-e _%tl4525245285%_)))
                                        (let ((_%hd4525445292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4525345288%_)))
                                              (_%tl4525545295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4525345288%_))))
                                          (if (gx#stx-null? _%tl4525545295%_)
                                              ((lambda (_%L45298%_ _%L45300%_)
                                                 (if (gx#identifier?
                                                      _%L45298%_)
                                                     (let ((_%meta45317%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45240%_
                                                               _%L45298%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45317%_))
                                                           (let* ((_%g4532245337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4532345333%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4532345333%_)))
                          (_%g4532145384%_
                           (lambda (_%g4532345341%_)
                             (if (gx#stx-pair? _%g4532345341%_)
                                 (let ((_%e4532645344%_
                                        (gx#syntax-e _%g4532345341%_)))
                                   (let ((_%hd4532745348%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4532645344%_)))
                                         (_%tl4532845351%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4532645344%_))))
                                     (if (gx#stx-pair? _%tl4532845351%_)
                                         (let ((_%e4532945354%_
                                                (gx#syntax-e
                                                 _%tl4532845351%_)))
                                           (let ((_%hd4533045358%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4532945354%_)))
                                                 (_%tl4533145361%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4532945354%_))))
                                             (if (gx#stx-null?
                                                  _%tl4533145361%_)
                                                 ((lambda (_%L45364%_
                                                           _%L45366%_)
                                                    (if (let ((__tmp84993
                                                               (let ((__obj84837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45317%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84837
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84837
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj84837 'id)))))
                  (declare (not safe))
                  (##memq __tmp84993 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45366%_ '()))
                            (cons _%L45300%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45366%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45300%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L45364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L45366%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4533045358%_
                                                  _%hd4532745348%_)
                                                 (_%g4532245337%_
                                                  _%g4532345341%_))))
                                         (_%g4532245337%_ _%g4532345341%_))))
                                 (_%g4532245337%_ _%g4532345341%_)))))
                     (_%g4532145384%_
                      (list (let ((__obj84838 _%meta45317%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84838
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84838
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84838
                                   'type-descriptor)))
                            (let ((__obj84839 _%meta45317%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84839
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84839
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84839
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45317%_))
                       (let* ((_%g4539045405%_
                               (lambda (_%g4539145401%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4539145401%_)))
                              (_%g4538945450%_
                               (lambda (_%g4539145409%_)
                                 (if (gx#stx-pair? _%g4539145409%_)
                                     (let ((_%e4539445412%_
                                            (gx#syntax-e _%g4539145409%_)))
                                       (let ((_%hd4539545416%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4539445412%_)))
                                             (_%tl4539645419%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4539445412%_))))
                                         (if (gx#stx-pair? _%tl4539645419%_)
                                             (let ((_%e4539745422%_
                                                    (gx#syntax-e
                                                     _%tl4539645419%_)))
                                               (let ((_%hd4539845426%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4539745422%_)))
                                                     (_%tl4539945429%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4539745422%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4539945429%_)
                                                     ((lambda (_%L45432%_
                                                               _%L45434%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45434%_ '()))
                            (cons (cons _%L45432%_ (cons _%L45300%_ '()))
                                  '()))))
              _%hd4539845426%_
              _%hd4539545416%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4539045405%_
                                                      _%g4539145409%_))))
                                             (_%g4539045405%_
                                              _%g4539145409%_))))
                                     (_%g4539045405%_ _%g4539145409%_)))))
                         (_%g4538945450%_
                          (list (let ((__obj84836 _%meta45317%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj84836
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj84836
                                         '7
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj84836
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45240%_
                                   _%L45298%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45240%_
                        _%L45298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4524345261%_
                                                      _%g4524445265%_)))
                                               _%hd4525445292%_
                                               _%hd4525145282%_)
                                              (_%g4524345261%_
                                               _%g4524445265%_))))
                                      (_%g4524345261%_ _%g4524445265%_))))
                              (_%g4524345261%_ _%g4524445265%_))))
                      (_%g4524345261%_ _%g4524445265%_)))))
          (_%g4524245456%_ _%stx45240%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45460%_)
        (let* ((_%g4546345481%_
                (lambda (_%g4546445477%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4546445477%_)))
               (_%g4546245675%_
                (lambda (_%g4546445485%_)
                  (if (gx#stx-pair? _%g4546445485%_)
                      (let ((_%e4546745488%_ (gx#syntax-e _%g4546445485%_)))
                        (let ((_%hd4546845492%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4546745488%_)))
                              (_%tl4546945495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4546745488%_))))
                          (if (gx#stx-pair? _%tl4546945495%_)
                              (let ((_%e4547045498%_
                                     (gx#syntax-e _%tl4546945495%_)))
                                (let ((_%hd4547145502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4547045498%_)))
                                      (_%tl4547245505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4547045498%_))))
                                  (if (gx#stx-pair? _%tl4547245505%_)
                                      (let ((_%e4547345508%_
                                             (gx#syntax-e _%tl4547245505%_)))
                                        (let ((_%hd4547445512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4547345508%_)))
                                              (_%tl4547545515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4547345508%_))))
                                          (if (gx#stx-null? _%tl4547545515%_)
                                              ((lambda (_%L45518%_ _%L45520%_)
                                                 (if (gx#identifier?
                                                      _%L45518%_)
                                                     (let ((_%meta45536%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45460%_
                                                               _%L45518%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45536%_))
                                                           (let* ((_%g4554145556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4554245552%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4554245552%_)))
                          (_%g4554045603%_
                           (lambda (_%g4554245560%_)
                             (if (gx#stx-pair? _%g4554245560%_)
                                 (let ((_%e4554545563%_
                                        (gx#syntax-e _%g4554245560%_)))
                                   (let ((_%hd4554645567%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4554545563%_)))
                                         (_%tl4554745570%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4554545563%_))))
                                     (if (gx#stx-pair? _%tl4554745570%_)
                                         (let ((_%e4554845573%_
                                                (gx#syntax-e
                                                 _%tl4554745570%_)))
                                           (let ((_%hd4554945577%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4554845573%_)))
                                                 (_%tl4555045580%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4554845573%_))))
                                             (if (gx#stx-null?
                                                  _%tl4555045580%_)
                                                 ((lambda (_%L45583%_
                                                           _%L45585%_)
                                                    (if (let ((__tmp84994
                                                               (let ((__obj84841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45536%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84841
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84841
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj84841 'id)))))
                  (declare (not safe))
                  (##memq __tmp84994 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45585%_ '()))
                            (cons _%L45520%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45585%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45520%_ '()))
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
                                    (cons (cons _%L45583%_
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
                                                (cons _%L45520%_
                                                      (cons _%L45583%_
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
                                                  _%hd4554945577%_
                                                  _%hd4554645567%_)
                                                 (_%g4554145556%_
                                                  _%g4554245560%_))))
                                         (_%g4554145556%_ _%g4554245560%_))))
                                 (_%g4554145556%_ _%g4554245560%_)))))
                     (_%g4554045603%_
                      (list (let ((__obj84842 _%meta45536%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84842
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84842
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84842
                                   'type-descriptor)))
                            (let ((__obj84843 _%meta45536%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84843
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84843
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84843
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45536%_))
                       (let* ((_%g4560945624%_
                               (lambda (_%g4561045620%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4561045620%_)))
                              (_%g4560845669%_
                               (lambda (_%g4561045628%_)
                                 (if (gx#stx-pair? _%g4561045628%_)
                                     (let ((_%e4561345631%_
                                            (gx#syntax-e _%g4561045628%_)))
                                       (let ((_%hd4561445635%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4561345631%_)))
                                             (_%tl4561545638%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4561345631%_))))
                                         (if (gx#stx-pair? _%tl4561545638%_)
                                             (let ((_%e4561645641%_
                                                    (gx#syntax-e
                                                     _%tl4561545638%_)))
                                               (let ((_%hd4561745645%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4561645641%_)))
                                                     (_%tl4561845648%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4561645641%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4561845648%_)
                                                     ((lambda (_%L45651%_
                                                               _%L45653%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45653%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45520%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L45651%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4561745645%_
              _%hd4561445635%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4560945624%_
                                                      _%g4561045628%_))))
                                             (_%g4560945624%_
                                              _%g4561045628%_))))
                                     (_%g4560945624%_ _%g4561045628%_)))))
                         (_%g4560845669%_
                          (list (let ((__obj84840 _%meta45536%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj84840
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj84840
                                         '7
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj84840
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45460%_
                                   _%L45518%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45460%_
                        _%L45518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4546345481%_
                                                      _%g4546445485%_)))
                                               _%hd4547445512%_
                                               _%hd4547145502%_)
                                              (_%g4546345481%_
                                               _%g4546445485%_))))
                                      (_%g4546345481%_ _%g4546445485%_))))
                              (_%g4546345481%_ _%g4546445485%_))))
                      (_%g4546345481%_ _%g4546445485%_)))))
          (_%g4546245675%_ _%stx45460%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45679%_)
        (let* ((_%g4568245700%_
                (lambda (_%g4568345696%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4568345696%_)))
               (_%g4568145786%_
                (lambda (_%g4568345704%_)
                  (if (gx#stx-pair? _%g4568345704%_)
                      (let ((_%e4568645707%_ (gx#syntax-e _%g4568345704%_)))
                        (let ((_%hd4568745711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4568645707%_)))
                              (_%tl4568845714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4568645707%_))))
                          (if (gx#stx-pair? _%tl4568845714%_)
                              (let ((_%e4568945717%_
                                     (gx#syntax-e _%tl4568845714%_)))
                                (let ((_%hd4569045721%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4568945717%_)))
                                      (_%tl4569145724%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4568945717%_))))
                                  (if (gx#stx-pair? _%tl4569145724%_)
                                      (let ((_%e4569245727%_
                                             (gx#syntax-e _%tl4569145724%_)))
                                        (let ((_%hd4569345731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4569245727%_)))
                                              (_%tl4569445734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4569245727%_))))
                                          (if (gx#stx-null? _%tl4569445734%_)
                                              ((lambda (_%L45737%_ _%L45739%_)
                                                 (if (gx#identifier?
                                                      _%L45737%_)
                                                     (let* ((_%g4575545763%_
                                                             (lambda (_%g4575645759%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4575645759%_)))
                                                            (_%g4575445782%_
                                                             (lambda (_%g4575645767%_)
                                                               ((lambda (_%L45770%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L45770%_ '()))
                                      (cons _%L45739%_ '()))))
                        _%g4575645767%_))))
               (_%g4575445782%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45679%_
                   _%L45737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4568245700%_
                                                      _%g4568345704%_)))
                                               _%hd4569345731%_
                                               _%hd4569045721%_)
                                              (_%g4568245700%_
                                               _%g4568345704%_))))
                                      (_%g4568245700%_ _%g4568345704%_))))
                              (_%g4568245700%_ _%g4568345704%_))))
                      (_%g4568245700%_ _%g4568345704%_)))))
          (_%g4568145786%_ _%stx45679%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45790%_)
        (let* ((_%__stx7927279273%_ _%$stx45790%_)
               (_%g4579545831%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7927279273%_))))
          (let ((_%__kont7927579276%_
                 (lambda (_%L45949%_ _%L45951%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L45951%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L45949%_
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
                           (cons _%L45951%_
                                 (cons _%L45949%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7927779278%_
                 (lambda (_%L45888%_ _%L45890%_ _%L45891%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L45891%_ (cons _%L45890%_ '())))
                               (cons _%L45888%_ '()))))))
            (if (gx#stx-pair? _%__stx7927279273%_)
                (let ((_%e4579945919%_ (gx#syntax-e _%__stx7927279273%_)))
                  (let ((_%tl4580145926%_
                         (let () (declare (not safe)) (##cdr _%e4579945919%_)))
                        (_%hd4580045923%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4579945919%_))))
                    (if (gx#stx-pair? _%tl4580145926%_)
                        (let ((_%e4580245929%_ (gx#syntax-e _%tl4580145926%_)))
                          (let ((_%tl4580445936%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4580245929%_)))
                                (_%hd4580345933%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4580245929%_))))
                            (if (gx#stx-pair? _%tl4580445936%_)
                                (let ((_%e4580545939%_
                                       (gx#syntax-e _%tl4580445936%_)))
                                  (let ((_%tl4580745946%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4580545939%_)))
                                        (_%hd4580645943%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4580545939%_))))
                                    (if (gx#stx-null? _%tl4580745946%_)
                                        (_%__kont7927579276%_
                                         _%hd4580645943%_
                                         _%hd4580345933%_)
                                        (if (gx#stx-pair? _%tl4580745946%_)
                                            (let ((_%e4582045868%_
                                                   (gx#syntax-e
                                                    _%tl4580745946%_)))
                                              (let ((_%tl4582245875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4582045868%_)))
                                                    (_%hd4582145872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4582045868%_))))
                                                (if (gx#identifier?
                                                     _%hd4582145872%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g84995_|
                                                         _%hd4582145872%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4582245875%_)
                                                            (let ((_%e4582345878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4582245875%_)))
                      (let ((_%tl4582545885%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4582345878%_)))
                            (_%hd4582445882%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4582345878%_))))
                        (if (gx#stx-null? _%tl4582545885%_)
                            (_%__kont7927779278%_
                             _%hd4582445882%_
                             _%hd4580645943%_
                             _%hd4580345933%_)
                            (let () (declare (not safe)) (_%g4579545831%_)))))
                    (let () (declare (not safe)) (_%g4579545831%_)))
                (let () (declare (not safe)) (_%g4579545831%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4579545831%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4579545831%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4579545831%_)))))
                        (let () (declare (not safe)) (_%g4579545831%_)))))
                (let () (declare (not safe)) (_%g4579545831%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx45970%_)
        (let ((_%g4597345980%_
               (lambda (_%g4597445976%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4597445976%_))))
          (_%g4597345980%_ _%$stx45970%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx45984%_)
        (let ((_%g4598745994%_
               (lambda (_%g4598845990%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4598845990%_))))
          (_%g4598745994%_ _%$stx45984%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx45998%_)
        (let* ((_%g4600246016%_
                (lambda (_%g4600346012%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4600346012%_)))
               (_%g4600146057%_
                (lambda (_%g4600346020%_)
                  (if (gx#stx-pair? _%g4600346020%_)
                      (let ((_%e4600546023%_ (gx#syntax-e _%g4600346020%_)))
                        (let ((_%hd4600646027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4600546023%_)))
                              (_%tl4600746030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4600546023%_))))
                          (if (gx#stx-pair? _%tl4600746030%_)
                              (let ((_%e4600846033%_
                                     (gx#syntax-e _%tl4600746030%_)))
                                (let ((_%hd4600946037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4600846033%_)))
                                      (_%tl4601046040%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4600846033%_))))
                                  (if (gx#stx-null? _%tl4601046040%_)
                                      ((lambda (_%L46043%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L46043%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L46043%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4600946037%_)
                                      (_%g4600246016%_ _%g4600346020%_))))
                              (_%g4600246016%_ _%g4600346020%_))))
                      (_%g4600246016%_ _%g4600346020%_)))))
          (_%g4600146057%_ _%$stx45998%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46061%_)
        (let* ((_%g4606446087%_
                (lambda (_%g4606546083%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4606546083%_)))
               (_%g4606346211%_
                (lambda (_%g4606546091%_)
                  (if (gx#stx-pair? _%g4606546091%_)
                      (let ((_%e4607046094%_ (gx#syntax-e _%g4606546091%_)))
                        (let ((_%hd4607146098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4607046094%_)))
                              (_%tl4607246101%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4607046094%_))))
                          (if (gx#stx-pair? _%tl4607246101%_)
                              (let ((_%e4607346104%_
                                     (gx#syntax-e _%tl4607246101%_)))
                                (let ((_%hd4607446108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4607346104%_)))
                                      (_%tl4607546111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4607346104%_))))
                                  (if (gx#stx-pair? _%tl4607546111%_)
                                      (let ((_%e4607646114%_
                                             (gx#syntax-e _%tl4607546111%_)))
                                        (let ((_%hd4607746118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4607646114%_)))
                                              (_%tl4607846121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4607646114%_))))
                                          (if (gx#stx-pair? _%tl4607846121%_)
                                              (let ((_%e4607946124%_
                                                     (gx#syntax-e
                                                      _%tl4607846121%_)))
                                                (let ((_%hd4608046128%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4607946124%_)))
                                                      (_%tl4608146131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4607946124%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4608146131%_)
                                                      ((lambda (_%L46134%_
                                                                _%L46136%_
                                                                _%L46137%_
                                                                _%L46138%_)
                                                         (let* ((_%g4615846166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4615946162%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4615946162%_)))
                        (_%g4615746185%_
                         (lambda (_%g4615946170%_)
                           ((lambda (_%L46173%_)
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
                                (cons _%L46173%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L46136%_ '()))
                                      (cons 'value:
                                            (cons _%L46134%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4615946170%_))))
                   (_%g4615746185%_
                    (let ((_%$e46197%_
                           (let ((_%$e46189%_ (gx#stx-source _%L46137%_)))
                             (if _%$e46189%_
                                 _%$e46189%_
                                 (let ((_%$e46193%_
                                        (gx#stx-source _%stx46061%_)))
                                   (if _%$e46193%_
                                       _%$e46193%_
                                       (gx#stx-source _%L46138%_)))))))
                      (if _%$e46197%_
                          ((lambda (_%locat46201%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4620346205%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46201%_
                                   '#t
                                   _%g4620346205%_)))))
                           _%$e46197%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4608046128%_
               _%hd4607746118%_
               _%hd4607446108%_
               _%hd4607146098%_)
              (_%g4606446087%_ _%g4606546091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4606446087%_
                                               _%g4606546091%_))))
                                      (_%g4606446087%_ _%g4606546091%_))))
                              (_%g4606446087%_ _%g4606546091%_))))
                      (_%g4606446087%_ _%g4606546091%_)))))
          (_%g4606346211%_ _%stx46061%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46215%_)
        (let* ((_%g4621846233%_
                (lambda (_%g4621946229%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4621946229%_)))
               (_%g4621746329%_
                (lambda (_%g4621946237%_)
                  (if (gx#stx-pair? _%g4621946237%_)
                      (let ((_%e4622246240%_ (gx#syntax-e _%g4621946237%_)))
                        (let ((_%hd4622346244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4622246240%_)))
                              (_%tl4622446247%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4622246240%_))))
                          (if (gx#stx-pair? _%tl4622446247%_)
                              (let ((_%e4622546250%_
                                     (gx#syntax-e _%tl4622446247%_)))
                                (let ((_%hd4622646254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4622546250%_)))
                                      (_%tl4622746257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4622546250%_))))
                                  (if (gx#stx-null? _%tl4622746257%_)
                                      ((lambda (_%L46260%_ _%L46262%_)
                                         (let* ((_%g4627646284%_
                                                 (lambda (_%g4627746280%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4627746280%_)))
                                                (_%g4627546303%_
                                                 (lambda (_%g4627746288%_)
                                                   ((lambda (_%L46291%_)
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
                                                        (cons _%L46291%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L46260%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4627746288%_))))
                                           (_%g4627546303%_
                                            (let ((_%$e46315%_
                                                   (let ((_%$e46307%_
                                                          (gx#stx-source
                                                           _%L46260%_)))
                                                     (if _%$e46307%_
                                                         _%$e46307%_
                                                         (let ((_%$e46311%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46215%_)))
                   (if _%$e46311%_ _%$e46311%_ (gx#stx-source _%L46262%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46315%_
                                                  ((lambda (_%locat46319%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4632146323%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46319%_
                                                           '#t
                                                           _%g4632146323%_)))))
                                                   _%$e46315%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4622646254%_
                                       _%hd4622346244%_)
                                      (_%g4621846233%_ _%g4621946237%_))))
                              (_%g4621846233%_ _%g4621946237%_))))
                      (_%g4621846233%_ _%g4621946237%_)))))
          (_%g4621746329%_ _%stx46215%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46333%_)
        (let* ((_%g4633746351%_
                (lambda (_%g4633846347%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4633846347%_)))
               (_%g4633646392%_
                (lambda (_%g4633846355%_)
                  (if (gx#stx-pair? _%g4633846355%_)
                      (let ((_%e4634046358%_ (gx#syntax-e _%g4633846355%_)))
                        (let ((_%hd4634146362%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4634046358%_)))
                              (_%tl4634246365%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4634046358%_))))
                          (if (gx#stx-pair? _%tl4634246365%_)
                              (let ((_%e4634346368%_
                                     (gx#syntax-e _%tl4634246365%_)))
                                (let ((_%hd4634446372%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4634346368%_)))
                                      (_%tl4634546375%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4634346368%_))))
                                  (if (gx#stx-null? _%tl4634546375%_)
                                      ((lambda (_%L46378%_)
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
                         (cons _%L46378%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4634446372%_)
                                      (_%g4633746351%_ _%g4633846355%_))))
                              (_%g4633746351%_ _%g4633846355%_))))
                      (_%g4633746351%_ _%g4633846355%_)))))
          (_%g4633646392%_ _%$stx46333%_))))))
