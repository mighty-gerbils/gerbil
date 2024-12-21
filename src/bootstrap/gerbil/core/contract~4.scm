(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g84976_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45221%_)
        (let* ((_%g4522445242%_
                (lambda (_%g4522545238%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4522545238%_)))
               (_%g4522345437%_
                (lambda (_%g4522545246%_)
                  (if (gx#stx-pair? _%g4522545246%_)
                      (let ((_%e4522845249%_ (gx#syntax-e _%g4522545246%_)))
                        (let ((_%hd4522945253%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4522845249%_)))
                              (_%tl4523045256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4522845249%_))))
                          (if (gx#stx-pair? _%tl4523045256%_)
                              (let ((_%e4523145259%_
                                     (gx#syntax-e _%tl4523045256%_)))
                                (let ((_%hd4523245263%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4523145259%_)))
                                      (_%tl4523345266%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4523145259%_))))
                                  (if (gx#stx-pair? _%tl4523345266%_)
                                      (let ((_%e4523445269%_
                                             (gx#syntax-e _%tl4523345266%_)))
                                        (let ((_%hd4523545273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4523445269%_)))
                                              (_%tl4523645276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4523445269%_))))
                                          (if (gx#stx-null? _%tl4523645276%_)
                                              ((lambda (_%L45279%_ _%L45281%_)
                                                 (if (gx#identifier?
                                                      _%L45279%_)
                                                     (let ((_%meta45298%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45221%_
                                                               _%L45279%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45298%_))
                                                           (let* ((_%g4530345318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4530445314%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4530445314%_)))
                          (_%g4530245365%_
                           (lambda (_%g4530445322%_)
                             (if (gx#stx-pair? _%g4530445322%_)
                                 (let ((_%e4530745325%_
                                        (gx#syntax-e _%g4530445322%_)))
                                   (let ((_%hd4530845329%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4530745325%_)))
                                         (_%tl4530945332%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4530745325%_))))
                                     (if (gx#stx-pair? _%tl4530945332%_)
                                         (let ((_%e4531045335%_
                                                (gx#syntax-e
                                                 _%tl4530945332%_)))
                                           (let ((_%hd4531145339%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4531045335%_)))
                                                 (_%tl4531245342%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4531045335%_))))
                                             (if (gx#stx-null?
                                                  _%tl4531245342%_)
                                                 ((lambda (_%L45345%_
                                                           _%L45347%_)
                                                    (if (let ((__tmp84974
                                                               (let ((__obj84818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45298%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84818
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84818
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj84818 'id)))))
                  (declare (not safe))
                  (##memq __tmp84974 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45347%_ '()))
                            (cons _%L45281%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45347%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45281%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L45345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L45347%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4531145339%_
                                                  _%hd4530845329%_)
                                                 (_%g4530345318%_
                                                  _%g4530445322%_))))
                                         (_%g4530345318%_ _%g4530445322%_))))
                                 (_%g4530345318%_ _%g4530445322%_)))))
                     (_%g4530245365%_
                      (list (let ((__obj84819 _%meta45298%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84819
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84819
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84819
                                   'type-descriptor)))
                            (let ((__obj84820 _%meta45298%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84820
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84820
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84820
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45298%_))
                       (let* ((_%g4537145386%_
                               (lambda (_%g4537245382%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4537245382%_)))
                              (_%g4537045431%_
                               (lambda (_%g4537245390%_)
                                 (if (gx#stx-pair? _%g4537245390%_)
                                     (let ((_%e4537545393%_
                                            (gx#syntax-e _%g4537245390%_)))
                                       (let ((_%hd4537645397%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4537545393%_)))
                                             (_%tl4537745400%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4537545393%_))))
                                         (if (gx#stx-pair? _%tl4537745400%_)
                                             (let ((_%e4537845403%_
                                                    (gx#syntax-e
                                                     _%tl4537745400%_)))
                                               (let ((_%hd4537945407%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4537845403%_)))
                                                     (_%tl4538045410%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4537845403%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4538045410%_)
                                                     ((lambda (_%L45413%_
                                                               _%L45415%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45415%_ '()))
                            (cons (cons _%L45413%_ (cons _%L45281%_ '()))
                                  '()))))
              _%hd4537945407%_
              _%hd4537645397%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4537145386%_
                                                      _%g4537245390%_))))
                                             (_%g4537145386%_
                                              _%g4537245390%_))))
                                     (_%g4537145386%_ _%g4537245390%_)))))
                         (_%g4537045431%_
                          (list (let ((__obj84817 _%meta45298%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj84817
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj84817
                                         '7
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj84817
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45221%_
                                   _%L45279%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45221%_
                        _%L45279%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4522445242%_
                                                      _%g4522545246%_)))
                                               _%hd4523545273%_
                                               _%hd4523245263%_)
                                              (_%g4522445242%_
                                               _%g4522545246%_))))
                                      (_%g4522445242%_ _%g4522545246%_))))
                              (_%g4522445242%_ _%g4522545246%_))))
                      (_%g4522445242%_ _%g4522545246%_)))))
          (_%g4522345437%_ _%stx45221%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45441%_)
        (let* ((_%g4544445462%_
                (lambda (_%g4544545458%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4544545458%_)))
               (_%g4544345656%_
                (lambda (_%g4544545466%_)
                  (if (gx#stx-pair? _%g4544545466%_)
                      (let ((_%e4544845469%_ (gx#syntax-e _%g4544545466%_)))
                        (let ((_%hd4544945473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4544845469%_)))
                              (_%tl4545045476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4544845469%_))))
                          (if (gx#stx-pair? _%tl4545045476%_)
                              (let ((_%e4545145479%_
                                     (gx#syntax-e _%tl4545045476%_)))
                                (let ((_%hd4545245483%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4545145479%_)))
                                      (_%tl4545345486%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4545145479%_))))
                                  (if (gx#stx-pair? _%tl4545345486%_)
                                      (let ((_%e4545445489%_
                                             (gx#syntax-e _%tl4545345486%_)))
                                        (let ((_%hd4545545493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4545445489%_)))
                                              (_%tl4545645496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4545445489%_))))
                                          (if (gx#stx-null? _%tl4545645496%_)
                                              ((lambda (_%L45499%_ _%L45501%_)
                                                 (if (gx#identifier?
                                                      _%L45499%_)
                                                     (let ((_%meta45517%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45441%_
                                                               _%L45499%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45517%_))
                                                           (let* ((_%g4552245537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4552345533%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4552345533%_)))
                          (_%g4552145584%_
                           (lambda (_%g4552345541%_)
                             (if (gx#stx-pair? _%g4552345541%_)
                                 (let ((_%e4552645544%_
                                        (gx#syntax-e _%g4552345541%_)))
                                   (let ((_%hd4552745548%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4552645544%_)))
                                         (_%tl4552845551%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4552645544%_))))
                                     (if (gx#stx-pair? _%tl4552845551%_)
                                         (let ((_%e4552945554%_
                                                (gx#syntax-e
                                                 _%tl4552845551%_)))
                                           (let ((_%hd4553045558%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4552945554%_)))
                                                 (_%tl4553145561%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4552945554%_))))
                                             (if (gx#stx-null?
                                                  _%tl4553145561%_)
                                                 ((lambda (_%L45564%_
                                                           _%L45566%_)
                                                    (if (let ((__tmp84975
                                                               (let ((__obj84822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45517%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84822
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84822
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj84822 'id)))))
                  (declare (not safe))
                  (##memq __tmp84975 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45566%_ '()))
                            (cons _%L45501%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45566%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45501%_ '()))
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
                                    (cons (cons _%L45564%_
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
                                                (cons _%L45501%_
                                                      (cons _%L45564%_
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
                                                  _%hd4553045558%_
                                                  _%hd4552745548%_)
                                                 (_%g4552245537%_
                                                  _%g4552345541%_))))
                                         (_%g4552245537%_ _%g4552345541%_))))
                                 (_%g4552245537%_ _%g4552345541%_)))))
                     (_%g4552145584%_
                      (list (let ((__obj84823 _%meta45517%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84823
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84823
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84823
                                   'type-descriptor)))
                            (let ((__obj84824 _%meta45517%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84824
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84824
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84824
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45517%_))
                       (let* ((_%g4559045605%_
                               (lambda (_%g4559145601%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4559145601%_)))
                              (_%g4558945650%_
                               (lambda (_%g4559145609%_)
                                 (if (gx#stx-pair? _%g4559145609%_)
                                     (let ((_%e4559445612%_
                                            (gx#syntax-e _%g4559145609%_)))
                                       (let ((_%hd4559545616%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4559445612%_)))
                                             (_%tl4559645619%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4559445612%_))))
                                         (if (gx#stx-pair? _%tl4559645619%_)
                                             (let ((_%e4559745622%_
                                                    (gx#syntax-e
                                                     _%tl4559645619%_)))
                                               (let ((_%hd4559845626%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4559745622%_)))
                                                     (_%tl4559945629%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4559745622%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4559945629%_)
                                                     ((lambda (_%L45632%_
                                                               _%L45634%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45634%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45501%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L45632%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4559845626%_
              _%hd4559545616%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4559045605%_
                                                      _%g4559145609%_))))
                                             (_%g4559045605%_
                                              _%g4559145609%_))))
                                     (_%g4559045605%_ _%g4559145609%_)))))
                         (_%g4558945650%_
                          (list (let ((__obj84821 _%meta45517%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj84821
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj84821
                                         '7
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj84821
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45441%_
                                   _%L45499%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45441%_
                        _%L45499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4544445462%_
                                                      _%g4544545466%_)))
                                               _%hd4545545493%_
                                               _%hd4545245483%_)
                                              (_%g4544445462%_
                                               _%g4544545466%_))))
                                      (_%g4544445462%_ _%g4544545466%_))))
                              (_%g4544445462%_ _%g4544545466%_))))
                      (_%g4544445462%_ _%g4544545466%_)))))
          (_%g4544345656%_ _%stx45441%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45660%_)
        (let* ((_%g4566345681%_
                (lambda (_%g4566445677%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4566445677%_)))
               (_%g4566245767%_
                (lambda (_%g4566445685%_)
                  (if (gx#stx-pair? _%g4566445685%_)
                      (let ((_%e4566745688%_ (gx#syntax-e _%g4566445685%_)))
                        (let ((_%hd4566845692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4566745688%_)))
                              (_%tl4566945695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4566745688%_))))
                          (if (gx#stx-pair? _%tl4566945695%_)
                              (let ((_%e4567045698%_
                                     (gx#syntax-e _%tl4566945695%_)))
                                (let ((_%hd4567145702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4567045698%_)))
                                      (_%tl4567245705%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4567045698%_))))
                                  (if (gx#stx-pair? _%tl4567245705%_)
                                      (let ((_%e4567345708%_
                                             (gx#syntax-e _%tl4567245705%_)))
                                        (let ((_%hd4567445712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4567345708%_)))
                                              (_%tl4567545715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4567345708%_))))
                                          (if (gx#stx-null? _%tl4567545715%_)
                                              ((lambda (_%L45718%_ _%L45720%_)
                                                 (if (gx#identifier?
                                                      _%L45718%_)
                                                     (let* ((_%g4573645744%_
                                                             (lambda (_%g4573745740%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4573745740%_)))
                                                            (_%g4573545763%_
                                                             (lambda (_%g4573745748%_)
                                                               ((lambda (_%L45751%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L45751%_ '()))
                                      (cons _%L45720%_ '()))))
                        _%g4573745748%_))))
               (_%g4573545763%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45660%_
                   _%L45718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4566345681%_
                                                      _%g4566445685%_)))
                                               _%hd4567445712%_
                                               _%hd4567145702%_)
                                              (_%g4566345681%_
                                               _%g4566445685%_))))
                                      (_%g4566345681%_ _%g4566445685%_))))
                              (_%g4566345681%_ _%g4566445685%_))))
                      (_%g4566345681%_ _%g4566445685%_)))))
          (_%g4566245767%_ _%stx45660%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45771%_)
        (let* ((_%__stx7925379254%_ _%$stx45771%_)
               (_%g4577645812%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7925379254%_))))
          (let ((_%__kont7925679257%_
                 (lambda (_%L45930%_ _%L45932%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L45932%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L45930%_
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
                           (cons _%L45932%_
                                 (cons _%L45930%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7925879259%_
                 (lambda (_%L45869%_ _%L45871%_ _%L45872%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L45872%_ (cons _%L45871%_ '())))
                               (cons _%L45869%_ '()))))))
            (if (gx#stx-pair? _%__stx7925379254%_)
                (let ((_%e4578045900%_ (gx#syntax-e _%__stx7925379254%_)))
                  (let ((_%tl4578245907%_
                         (let () (declare (not safe)) (##cdr _%e4578045900%_)))
                        (_%hd4578145904%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4578045900%_))))
                    (if (gx#stx-pair? _%tl4578245907%_)
                        (let ((_%e4578345910%_ (gx#syntax-e _%tl4578245907%_)))
                          (let ((_%tl4578545917%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4578345910%_)))
                                (_%hd4578445914%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4578345910%_))))
                            (if (gx#stx-pair? _%tl4578545917%_)
                                (let ((_%e4578645920%_
                                       (gx#syntax-e _%tl4578545917%_)))
                                  (let ((_%tl4578845927%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4578645920%_)))
                                        (_%hd4578745924%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4578645920%_))))
                                    (if (gx#stx-null? _%tl4578845927%_)
                                        (_%__kont7925679257%_
                                         _%hd4578745924%_
                                         _%hd4578445914%_)
                                        (if (gx#stx-pair? _%tl4578845927%_)
                                            (let ((_%e4580145849%_
                                                   (gx#syntax-e
                                                    _%tl4578845927%_)))
                                              (let ((_%tl4580345856%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4580145849%_)))
                                                    (_%hd4580245853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4580145849%_))))
                                                (if (gx#identifier?
                                                     _%hd4580245853%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g84976_|
                                                         _%hd4580245853%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4580345856%_)
                                                            (let ((_%e4580445859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4580345856%_)))
                      (let ((_%tl4580645866%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4580445859%_)))
                            (_%hd4580545863%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4580445859%_))))
                        (if (gx#stx-null? _%tl4580645866%_)
                            (_%__kont7925879259%_
                             _%hd4580545863%_
                             _%hd4578745924%_
                             _%hd4578445914%_)
                            (let () (declare (not safe)) (_%g4577645812%_)))))
                    (let () (declare (not safe)) (_%g4577645812%_)))
                (let () (declare (not safe)) (_%g4577645812%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4577645812%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4577645812%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4577645812%_)))))
                        (let () (declare (not safe)) (_%g4577645812%_)))))
                (let () (declare (not safe)) (_%g4577645812%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx45951%_)
        (let ((_%g4595445961%_
               (lambda (_%g4595545957%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4595545957%_))))
          (_%g4595445961%_ _%$stx45951%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx45965%_)
        (let ((_%g4596845975%_
               (lambda (_%g4596945971%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4596945971%_))))
          (_%g4596845975%_ _%$stx45965%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx45979%_)
        (let* ((_%g4598345997%_
                (lambda (_%g4598445993%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4598445993%_)))
               (_%g4598246038%_
                (lambda (_%g4598446001%_)
                  (if (gx#stx-pair? _%g4598446001%_)
                      (let ((_%e4598646004%_ (gx#syntax-e _%g4598446001%_)))
                        (let ((_%hd4598746008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4598646004%_)))
                              (_%tl4598846011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4598646004%_))))
                          (if (gx#stx-pair? _%tl4598846011%_)
                              (let ((_%e4598946014%_
                                     (gx#syntax-e _%tl4598846011%_)))
                                (let ((_%hd4599046018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4598946014%_)))
                                      (_%tl4599146021%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4598946014%_))))
                                  (if (gx#stx-null? _%tl4599146021%_)
                                      ((lambda (_%L46024%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L46024%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L46024%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4599046018%_)
                                      (_%g4598345997%_ _%g4598446001%_))))
                              (_%g4598345997%_ _%g4598446001%_))))
                      (_%g4598345997%_ _%g4598446001%_)))))
          (_%g4598246038%_ _%$stx45979%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46042%_)
        (let* ((_%g4604546068%_
                (lambda (_%g4604646064%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4604646064%_)))
               (_%g4604446192%_
                (lambda (_%g4604646072%_)
                  (if (gx#stx-pair? _%g4604646072%_)
                      (let ((_%e4605146075%_ (gx#syntax-e _%g4604646072%_)))
                        (let ((_%hd4605246079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4605146075%_)))
                              (_%tl4605346082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4605146075%_))))
                          (if (gx#stx-pair? _%tl4605346082%_)
                              (let ((_%e4605446085%_
                                     (gx#syntax-e _%tl4605346082%_)))
                                (let ((_%hd4605546089%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4605446085%_)))
                                      (_%tl4605646092%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4605446085%_))))
                                  (if (gx#stx-pair? _%tl4605646092%_)
                                      (let ((_%e4605746095%_
                                             (gx#syntax-e _%tl4605646092%_)))
                                        (let ((_%hd4605846099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4605746095%_)))
                                              (_%tl4605946102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4605746095%_))))
                                          (if (gx#stx-pair? _%tl4605946102%_)
                                              (let ((_%e4606046105%_
                                                     (gx#syntax-e
                                                      _%tl4605946102%_)))
                                                (let ((_%hd4606146109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4606046105%_)))
                                                      (_%tl4606246112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4606046105%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4606246112%_)
                                                      ((lambda (_%L46115%_
                                                                _%L46117%_
                                                                _%L46118%_
                                                                _%L46119%_)
                                                         (let* ((_%g4613946147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4614046143%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4614046143%_)))
                        (_%g4613846166%_
                         (lambda (_%g4614046151%_)
                           ((lambda (_%L46154%_)
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
                                (cons _%L46154%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L46117%_ '()))
                                      (cons 'value:
                                            (cons _%L46115%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4614046151%_))))
                   (_%g4613846166%_
                    (let ((_%$e46178%_
                           (let ((_%$e46170%_ (gx#stx-source _%L46118%_)))
                             (if _%$e46170%_
                                 _%$e46170%_
                                 (let ((_%$e46174%_
                                        (gx#stx-source _%stx46042%_)))
                                   (if _%$e46174%_
                                       _%$e46174%_
                                       (gx#stx-source _%L46119%_)))))))
                      (if _%$e46178%_
                          ((lambda (_%locat46182%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4618446186%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46182%_
                                   '#t
                                   _%g4618446186%_)))))
                           _%$e46178%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4606146109%_
               _%hd4605846099%_
               _%hd4605546089%_
               _%hd4605246079%_)
              (_%g4604546068%_ _%g4604646072%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4604546068%_
                                               _%g4604646072%_))))
                                      (_%g4604546068%_ _%g4604646072%_))))
                              (_%g4604546068%_ _%g4604646072%_))))
                      (_%g4604546068%_ _%g4604646072%_)))))
          (_%g4604446192%_ _%stx46042%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46196%_)
        (let* ((_%g4619946214%_
                (lambda (_%g4620046210%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4620046210%_)))
               (_%g4619846310%_
                (lambda (_%g4620046218%_)
                  (if (gx#stx-pair? _%g4620046218%_)
                      (let ((_%e4620346221%_ (gx#syntax-e _%g4620046218%_)))
                        (let ((_%hd4620446225%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4620346221%_)))
                              (_%tl4620546228%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4620346221%_))))
                          (if (gx#stx-pair? _%tl4620546228%_)
                              (let ((_%e4620646231%_
                                     (gx#syntax-e _%tl4620546228%_)))
                                (let ((_%hd4620746235%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4620646231%_)))
                                      (_%tl4620846238%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4620646231%_))))
                                  (if (gx#stx-null? _%tl4620846238%_)
                                      ((lambda (_%L46241%_ _%L46243%_)
                                         (let* ((_%g4625746265%_
                                                 (lambda (_%g4625846261%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4625846261%_)))
                                                (_%g4625646284%_
                                                 (lambda (_%g4625846269%_)
                                                   ((lambda (_%L46272%_)
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
                                                        (cons _%L46272%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L46241%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4625846269%_))))
                                           (_%g4625646284%_
                                            (let ((_%$e46296%_
                                                   (let ((_%$e46288%_
                                                          (gx#stx-source
                                                           _%L46241%_)))
                                                     (if _%$e46288%_
                                                         _%$e46288%_
                                                         (let ((_%$e46292%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46196%_)))
                   (if _%$e46292%_ _%$e46292%_ (gx#stx-source _%L46243%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46296%_
                                                  ((lambda (_%locat46300%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4630246304%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46300%_
                                                           '#t
                                                           _%g4630246304%_)))))
                                                   _%$e46296%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4620746235%_
                                       _%hd4620446225%_)
                                      (_%g4619946214%_ _%g4620046218%_))))
                              (_%g4619946214%_ _%g4620046218%_))))
                      (_%g4619946214%_ _%g4620046218%_)))))
          (_%g4619846310%_ _%stx46196%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46314%_)
        (let* ((_%g4631846332%_
                (lambda (_%g4631946328%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4631946328%_)))
               (_%g4631746373%_
                (lambda (_%g4631946336%_)
                  (if (gx#stx-pair? _%g4631946336%_)
                      (let ((_%e4632146339%_ (gx#syntax-e _%g4631946336%_)))
                        (let ((_%hd4632246343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4632146339%_)))
                              (_%tl4632346346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4632146339%_))))
                          (if (gx#stx-pair? _%tl4632346346%_)
                              (let ((_%e4632446349%_
                                     (gx#syntax-e _%tl4632346346%_)))
                                (let ((_%hd4632546353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4632446349%_)))
                                      (_%tl4632646356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4632446349%_))))
                                  (if (gx#stx-null? _%tl4632646356%_)
                                      ((lambda (_%L46359%_)
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
                         (cons _%L46359%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4632546353%_)
                                      (_%g4631846332%_ _%g4631946336%_))))
                              (_%g4631846332%_ _%g4631946336%_))))
                      (_%g4631846332%_ _%g4631946336%_)))))
          (_%g4631746373%_ _%$stx46314%_))))))
