(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g84100_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45257%_)
        (let* ((_%g4526045278%_
                (lambda (_%g4526145274%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4526145274%_)))
               (_%g4525945473%_
                (lambda (_%g4526145282%_)
                  (if (gx#stx-pair? _%g4526145282%_)
                      (let ((_%e4526445285%_ (gx#syntax-e _%g4526145282%_)))
                        (let ((_%hd4526545289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4526445285%_)))
                              (_%tl4526645292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4526445285%_))))
                          (if (gx#stx-pair? _%tl4526645292%_)
                              (let ((_%e4526745295%_
                                     (gx#syntax-e _%tl4526645292%_)))
                                (let ((_%hd4526845299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4526745295%_)))
                                      (_%tl4526945302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4526745295%_))))
                                  (if (gx#stx-pair? _%tl4526945302%_)
                                      (let ((_%e4527045305%_
                                             (gx#syntax-e _%tl4526945302%_)))
                                        (let ((_%hd4527145309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4527045305%_)))
                                              (_%tl4527245312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4527045305%_))))
                                          (if (gx#stx-null? _%tl4527245312%_)
                                              ((lambda (_%L45315%_ _%L45317%_)
                                                 (if (gx#identifier?
                                                      _%L45315%_)
                                                     (let ((_%meta45334%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45257%_
                                                               _%L45315%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45334%_))
                                                           (let* ((_%g4533945354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4534045350%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4534045350%_)))
                          (_%g4533845401%_
                           (lambda (_%g4534045358%_)
                             (if (gx#stx-pair? _%g4534045358%_)
                                 (let ((_%e4534345361%_
                                        (gx#syntax-e _%g4534045358%_)))
                                   (let ((_%hd4534445365%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4534345361%_)))
                                         (_%tl4534545368%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4534345361%_))))
                                     (if (gx#stx-pair? _%tl4534545368%_)
                                         (let ((_%e4534645371%_
                                                (gx#syntax-e
                                                 _%tl4534545368%_)))
                                           (let ((_%hd4534745375%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4534645371%_)))
                                                 (_%tl4534845378%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4534645371%_))))
                                             (if (gx#stx-null?
                                                  _%tl4534845378%_)
                                                 ((lambda (_%L45381%_
                                                           _%L45383%_)
                                                    (if (let ((__tmp84098
                                                               (let ((__obj83959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45334%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj83959
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj83959
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj83959 'id)))))
                  (declare (not safe))
                  (##memq __tmp84098 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45383%_ '()))
                            (cons _%L45317%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45383%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45317%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L45381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L45383%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4534745375%_
                                                  _%hd4534445365%_)
                                                 (_%g4533945354%_
                                                  _%g4534045358%_))))
                                         (_%g4533945354%_ _%g4534045358%_))))
                                 (_%g4533945354%_ _%g4534045358%_)))))
                     (_%g4533845401%_
                      (list (let ((__obj83960 _%meta45334%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj83960
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj83960
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj83960
                                   'type-descriptor)))
                            (let ((__obj83961 _%meta45334%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj83961
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj83961
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj83961
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45334%_))
                       (let* ((_%g4540745422%_
                               (lambda (_%g4540845418%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4540845418%_)))
                              (_%g4540645467%_
                               (lambda (_%g4540845426%_)
                                 (if (gx#stx-pair? _%g4540845426%_)
                                     (let ((_%e4541145429%_
                                            (gx#syntax-e _%g4540845426%_)))
                                       (let ((_%hd4541245433%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4541145429%_)))
                                             (_%tl4541345436%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4541145429%_))))
                                         (if (gx#stx-pair? _%tl4541345436%_)
                                             (let ((_%e4541445439%_
                                                    (gx#syntax-e
                                                     _%tl4541345436%_)))
                                               (let ((_%hd4541545443%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4541445439%_)))
                                                     (_%tl4541645446%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4541445439%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4541645446%_)
                                                     ((lambda (_%L45449%_
                                                               _%L45451%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45451%_ '()))
                            (cons (cons _%L45449%_ (cons _%L45317%_ '()))
                                  '()))))
              _%hd4541545443%_
              _%hd4541245433%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4540745422%_
                                                      _%g4540845426%_))))
                                             (_%g4540745422%_
                                              _%g4540845426%_))))
                                     (_%g4540745422%_ _%g4540845426%_)))))
                         (_%g4540645467%_
                          (list (let ((__obj83958 _%meta45334%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj83958
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj83958
                                         '4
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj83958
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45257%_
                                   _%L45315%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45257%_
                        _%L45315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4526045278%_
                                                      _%g4526145282%_)))
                                               _%hd4527145309%_
                                               _%hd4526845299%_)
                                              (_%g4526045278%_
                                               _%g4526145282%_))))
                                      (_%g4526045278%_ _%g4526145282%_))))
                              (_%g4526045278%_ _%g4526145282%_))))
                      (_%g4526045278%_ _%g4526145282%_)))))
          (_%g4525945473%_ _%stx45257%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45477%_)
        (let* ((_%g4548045498%_
                (lambda (_%g4548145494%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4548145494%_)))
               (_%g4547945692%_
                (lambda (_%g4548145502%_)
                  (if (gx#stx-pair? _%g4548145502%_)
                      (let ((_%e4548445505%_ (gx#syntax-e _%g4548145502%_)))
                        (let ((_%hd4548545509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4548445505%_)))
                              (_%tl4548645512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4548445505%_))))
                          (if (gx#stx-pair? _%tl4548645512%_)
                              (let ((_%e4548745515%_
                                     (gx#syntax-e _%tl4548645512%_)))
                                (let ((_%hd4548845519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4548745515%_)))
                                      (_%tl4548945522%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4548745515%_))))
                                  (if (gx#stx-pair? _%tl4548945522%_)
                                      (let ((_%e4549045525%_
                                             (gx#syntax-e _%tl4548945522%_)))
                                        (let ((_%hd4549145529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4549045525%_)))
                                              (_%tl4549245532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4549045525%_))))
                                          (if (gx#stx-null? _%tl4549245532%_)
                                              ((lambda (_%L45535%_ _%L45537%_)
                                                 (if (gx#identifier?
                                                      _%L45535%_)
                                                     (let ((_%meta45553%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45477%_
                                                               _%L45535%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45553%_))
                                                           (let* ((_%g4555845573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4555945569%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4555945569%_)))
                          (_%g4555745620%_
                           (lambda (_%g4555945577%_)
                             (if (gx#stx-pair? _%g4555945577%_)
                                 (let ((_%e4556245580%_
                                        (gx#syntax-e _%g4555945577%_)))
                                   (let ((_%hd4556345584%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4556245580%_)))
                                         (_%tl4556445587%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4556245580%_))))
                                     (if (gx#stx-pair? _%tl4556445587%_)
                                         (let ((_%e4556545590%_
                                                (gx#syntax-e
                                                 _%tl4556445587%_)))
                                           (let ((_%hd4556645594%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4556545590%_)))
                                                 (_%tl4556745597%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4556545590%_))))
                                             (if (gx#stx-null?
                                                  _%tl4556745597%_)
                                                 ((lambda (_%L45600%_
                                                           _%L45602%_)
                                                    (if (let ((__tmp84099
                                                               (let ((__obj83963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45553%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj83963
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj83963
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj83963 'id)))))
                  (declare (not safe))
                  (##memq __tmp84099 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45602%_ '()))
                            (cons _%L45537%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45602%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45537%_ '()))
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
                                    (cons (cons _%L45600%_
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
                                                (cons _%L45537%_
                                                      (cons _%L45600%_
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
                                                  _%hd4556645594%_
                                                  _%hd4556345584%_)
                                                 (_%g4555845573%_
                                                  _%g4555945577%_))))
                                         (_%g4555845573%_ _%g4555945577%_))))
                                 (_%g4555845573%_ _%g4555945577%_)))))
                     (_%g4555745620%_
                      (list (let ((__obj83964 _%meta45553%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj83964
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj83964
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj83964
                                   'type-descriptor)))
                            (let ((__obj83965 _%meta45553%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj83965
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj83965
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj83965
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45553%_))
                       (let* ((_%g4562645641%_
                               (lambda (_%g4562745637%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4562745637%_)))
                              (_%g4562545686%_
                               (lambda (_%g4562745645%_)
                                 (if (gx#stx-pair? _%g4562745645%_)
                                     (let ((_%e4563045648%_
                                            (gx#syntax-e _%g4562745645%_)))
                                       (let ((_%hd4563145652%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4563045648%_)))
                                             (_%tl4563245655%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4563045648%_))))
                                         (if (gx#stx-pair? _%tl4563245655%_)
                                             (let ((_%e4563345658%_
                                                    (gx#syntax-e
                                                     _%tl4563245655%_)))
                                               (let ((_%hd4563445662%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4563345658%_)))
                                                     (_%tl4563545665%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4563345658%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4563545665%_)
                                                     ((lambda (_%L45668%_
                                                               _%L45670%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45670%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45537%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L45668%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4563445662%_
              _%hd4563145652%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4562645641%_
                                                      _%g4562745645%_))))
                                             (_%g4562645641%_
                                              _%g4562745645%_))))
                                     (_%g4562645641%_ _%g4562745645%_)))))
                         (_%g4562545686%_
                          (list (let ((__obj83962 _%meta45553%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj83962
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj83962
                                         '4
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj83962
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45477%_
                                   _%L45535%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45477%_
                        _%L45535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4548045498%_
                                                      _%g4548145502%_)))
                                               _%hd4549145529%_
                                               _%hd4548845519%_)
                                              (_%g4548045498%_
                                               _%g4548145502%_))))
                                      (_%g4548045498%_ _%g4548145502%_))))
                              (_%g4548045498%_ _%g4548145502%_))))
                      (_%g4548045498%_ _%g4548145502%_)))))
          (_%g4547945692%_ _%stx45477%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45696%_)
        (let* ((_%g4569945717%_
                (lambda (_%g4570045713%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4570045713%_)))
               (_%g4569845803%_
                (lambda (_%g4570045721%_)
                  (if (gx#stx-pair? _%g4570045721%_)
                      (let ((_%e4570345724%_ (gx#syntax-e _%g4570045721%_)))
                        (let ((_%hd4570445728%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4570345724%_)))
                              (_%tl4570545731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4570345724%_))))
                          (if (gx#stx-pair? _%tl4570545731%_)
                              (let ((_%e4570645734%_
                                     (gx#syntax-e _%tl4570545731%_)))
                                (let ((_%hd4570745738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4570645734%_)))
                                      (_%tl4570845741%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4570645734%_))))
                                  (if (gx#stx-pair? _%tl4570845741%_)
                                      (let ((_%e4570945744%_
                                             (gx#syntax-e _%tl4570845741%_)))
                                        (let ((_%hd4571045748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4570945744%_)))
                                              (_%tl4571145751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4570945744%_))))
                                          (if (gx#stx-null? _%tl4571145751%_)
                                              ((lambda (_%L45754%_ _%L45756%_)
                                                 (if (gx#identifier?
                                                      _%L45754%_)
                                                     (let* ((_%g4577245780%_
                                                             (lambda (_%g4577345776%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4577345776%_)))
                                                            (_%g4577145799%_
                                                             (lambda (_%g4577345784%_)
                                                               ((lambda (_%L45787%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L45787%_ '()))
                                      (cons _%L45756%_ '()))))
                        _%g4577345784%_))))
               (_%g4577145799%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45696%_
                   _%L45754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4569945717%_
                                                      _%g4570045721%_)))
                                               _%hd4571045748%_
                                               _%hd4570745738%_)
                                              (_%g4569945717%_
                                               _%g4570045721%_))))
                                      (_%g4569945717%_ _%g4570045721%_))))
                              (_%g4569945717%_ _%g4570045721%_))))
                      (_%g4569945717%_ _%g4570045721%_)))))
          (_%g4569845803%_ _%stx45696%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45807%_)
        (let* ((_%__stx7848778488%_ _%$stx45807%_)
               (_%g4581245848%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7848778488%_))))
          (let ((_%__kont7849078491%_
                 (lambda (_%L45966%_ _%L45968%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L45968%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L45966%_
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
                           (cons _%L45968%_
                                 (cons _%L45966%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7849278493%_
                 (lambda (_%L45905%_ _%L45907%_ _%L45908%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L45908%_ (cons _%L45907%_ '())))
                               (cons _%L45905%_ '()))))))
            (if (gx#stx-pair? _%__stx7848778488%_)
                (let ((_%e4581645936%_ (gx#syntax-e _%__stx7848778488%_)))
                  (let ((_%tl4581845943%_
                         (let () (declare (not safe)) (##cdr _%e4581645936%_)))
                        (_%hd4581745940%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4581645936%_))))
                    (if (gx#stx-pair? _%tl4581845943%_)
                        (let ((_%e4581945946%_ (gx#syntax-e _%tl4581845943%_)))
                          (let ((_%tl4582145953%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4581945946%_)))
                                (_%hd4582045950%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4581945946%_))))
                            (if (gx#stx-pair? _%tl4582145953%_)
                                (let ((_%e4582245956%_
                                       (gx#syntax-e _%tl4582145953%_)))
                                  (let ((_%tl4582445963%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4582245956%_)))
                                        (_%hd4582345960%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4582245956%_))))
                                    (if (gx#stx-null? _%tl4582445963%_)
                                        (_%__kont7849078491%_
                                         _%hd4582345960%_
                                         _%hd4582045950%_)
                                        (if (gx#stx-pair? _%tl4582445963%_)
                                            (let ((_%e4583745885%_
                                                   (gx#syntax-e
                                                    _%tl4582445963%_)))
                                              (let ((_%tl4583945892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4583745885%_)))
                                                    (_%hd4583845889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4583745885%_))))
                                                (if (gx#identifier?
                                                     _%hd4583845889%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g84100_|
                                                         _%hd4583845889%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4583945892%_)
                                                            (let ((_%e4584045895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4583945892%_)))
                      (let ((_%tl4584245902%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4584045895%_)))
                            (_%hd4584145899%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4584045895%_))))
                        (if (gx#stx-null? _%tl4584245902%_)
                            (_%__kont7849278493%_
                             _%hd4584145899%_
                             _%hd4582345960%_
                             _%hd4582045950%_)
                            (let () (declare (not safe)) (_%g4581245848%_)))))
                    (let () (declare (not safe)) (_%g4581245848%_)))
                (let () (declare (not safe)) (_%g4581245848%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4581245848%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4581245848%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4581245848%_)))))
                        (let () (declare (not safe)) (_%g4581245848%_)))))
                (let () (declare (not safe)) (_%g4581245848%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx45987%_)
        (let ((_%g4599045997%_
               (lambda (_%g4599145993%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4599145993%_))))
          (_%g4599045997%_ _%$stx45987%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx46001%_)
        (let ((_%g4600446011%_
               (lambda (_%g4600546007%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4600546007%_))))
          (_%g4600446011%_ _%$stx46001%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx46015%_)
        (let* ((_%g4601946033%_
                (lambda (_%g4602046029%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4602046029%_)))
               (_%g4601846074%_
                (lambda (_%g4602046037%_)
                  (if (gx#stx-pair? _%g4602046037%_)
                      (let ((_%e4602246040%_ (gx#syntax-e _%g4602046037%_)))
                        (let ((_%hd4602346044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4602246040%_)))
                              (_%tl4602446047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4602246040%_))))
                          (if (gx#stx-pair? _%tl4602446047%_)
                              (let ((_%e4602546050%_
                                     (gx#syntax-e _%tl4602446047%_)))
                                (let ((_%hd4602646054%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4602546050%_)))
                                      (_%tl4602746057%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4602546050%_))))
                                  (if (gx#stx-null? _%tl4602746057%_)
                                      ((lambda (_%L46060%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L46060%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L46060%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4602646054%_)
                                      (_%g4601946033%_ _%g4602046037%_))))
                              (_%g4601946033%_ _%g4602046037%_))))
                      (_%g4601946033%_ _%g4602046037%_)))))
          (_%g4601846074%_ _%$stx46015%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46078%_)
        (let* ((_%g4608146104%_
                (lambda (_%g4608246100%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4608246100%_)))
               (_%g4608046228%_
                (lambda (_%g4608246108%_)
                  (if (gx#stx-pair? _%g4608246108%_)
                      (let ((_%e4608746111%_ (gx#syntax-e _%g4608246108%_)))
                        (let ((_%hd4608846115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4608746111%_)))
                              (_%tl4608946118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4608746111%_))))
                          (if (gx#stx-pair? _%tl4608946118%_)
                              (let ((_%e4609046121%_
                                     (gx#syntax-e _%tl4608946118%_)))
                                (let ((_%hd4609146125%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4609046121%_)))
                                      (_%tl4609246128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4609046121%_))))
                                  (if (gx#stx-pair? _%tl4609246128%_)
                                      (let ((_%e4609346131%_
                                             (gx#syntax-e _%tl4609246128%_)))
                                        (let ((_%hd4609446135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4609346131%_)))
                                              (_%tl4609546138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4609346131%_))))
                                          (if (gx#stx-pair? _%tl4609546138%_)
                                              (let ((_%e4609646141%_
                                                     (gx#syntax-e
                                                      _%tl4609546138%_)))
                                                (let ((_%hd4609746145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4609646141%_)))
                                                      (_%tl4609846148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4609646141%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4609846148%_)
                                                      ((lambda (_%L46151%_
                                                                _%L46153%_
                                                                _%L46154%_
                                                                _%L46155%_)
                                                         (let* ((_%g4617546183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4617646179%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4617646179%_)))
                        (_%g4617446202%_
                         (lambda (_%g4617646187%_)
                           ((lambda (_%L46190%_)
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
                                (cons _%L46190%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L46153%_ '()))
                                      (cons 'value:
                                            (cons _%L46151%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4617646187%_))))
                   (_%g4617446202%_
                    (let ((_%$e46214%_
                           (let ((_%$e46206%_ (gx#stx-source _%L46154%_)))
                             (if _%$e46206%_
                                 _%$e46206%_
                                 (let ((_%$e46210%_
                                        (gx#stx-source _%stx46078%_)))
                                   (if _%$e46210%_
                                       _%$e46210%_
                                       (gx#stx-source _%L46155%_)))))))
                      (if _%$e46214%_
                          ((lambda (_%locat46218%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4622046222%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46218%_
                                   '#t
                                   _%g4622046222%_)))))
                           _%$e46214%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4609746145%_
               _%hd4609446135%_
               _%hd4609146125%_
               _%hd4608846115%_)
              (_%g4608146104%_ _%g4608246108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4608146104%_
                                               _%g4608246108%_))))
                                      (_%g4608146104%_ _%g4608246108%_))))
                              (_%g4608146104%_ _%g4608246108%_))))
                      (_%g4608146104%_ _%g4608246108%_)))))
          (_%g4608046228%_ _%stx46078%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46232%_)
        (let* ((_%g4623546250%_
                (lambda (_%g4623646246%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4623646246%_)))
               (_%g4623446346%_
                (lambda (_%g4623646254%_)
                  (if (gx#stx-pair? _%g4623646254%_)
                      (let ((_%e4623946257%_ (gx#syntax-e _%g4623646254%_)))
                        (let ((_%hd4624046261%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4623946257%_)))
                              (_%tl4624146264%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4623946257%_))))
                          (if (gx#stx-pair? _%tl4624146264%_)
                              (let ((_%e4624246267%_
                                     (gx#syntax-e _%tl4624146264%_)))
                                (let ((_%hd4624346271%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4624246267%_)))
                                      (_%tl4624446274%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4624246267%_))))
                                  (if (gx#stx-null? _%tl4624446274%_)
                                      ((lambda (_%L46277%_ _%L46279%_)
                                         (let* ((_%g4629346301%_
                                                 (lambda (_%g4629446297%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4629446297%_)))
                                                (_%g4629246320%_
                                                 (lambda (_%g4629446305%_)
                                                   ((lambda (_%L46308%_)
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
                                                        (cons _%L46308%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L46277%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4629446305%_))))
                                           (_%g4629246320%_
                                            (let ((_%$e46332%_
                                                   (let ((_%$e46324%_
                                                          (gx#stx-source
                                                           _%L46277%_)))
                                                     (if _%$e46324%_
                                                         _%$e46324%_
                                                         (let ((_%$e46328%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46232%_)))
                   (if _%$e46328%_ _%$e46328%_ (gx#stx-source _%L46279%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46332%_
                                                  ((lambda (_%locat46336%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4633846340%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46336%_
                                                           '#t
                                                           _%g4633846340%_)))))
                                                   _%$e46332%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4624346271%_
                                       _%hd4624046261%_)
                                      (_%g4623546250%_ _%g4623646254%_))))
                              (_%g4623546250%_ _%g4623646254%_))))
                      (_%g4623546250%_ _%g4623646254%_)))))
          (_%g4623446346%_ _%stx46232%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46350%_)
        (let* ((_%g4635446368%_
                (lambda (_%g4635546364%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4635546364%_)))
               (_%g4635346409%_
                (lambda (_%g4635546372%_)
                  (if (gx#stx-pair? _%g4635546372%_)
                      (let ((_%e4635746375%_ (gx#syntax-e _%g4635546372%_)))
                        (let ((_%hd4635846379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4635746375%_)))
                              (_%tl4635946382%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4635746375%_))))
                          (if (gx#stx-pair? _%tl4635946382%_)
                              (let ((_%e4636046385%_
                                     (gx#syntax-e _%tl4635946382%_)))
                                (let ((_%hd4636146389%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4636046385%_)))
                                      (_%tl4636246392%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4636046385%_))))
                                  (if (gx#stx-null? _%tl4636246392%_)
                                      ((lambda (_%L46395%_)
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
                         (cons _%L46395%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4636146389%_)
                                      (_%g4635446368%_ _%g4635546372%_))))
                              (_%g4635446368%_ _%g4635546372%_))))
                      (_%g4635446368%_ _%g4635546372%_)))))
          (_%g4635346409%_ _%$stx46350%_))))))
