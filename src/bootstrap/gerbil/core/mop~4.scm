(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
    (lambda (_%stx27881%_ _%klass27883%_)
      (|gerbil/core/mop~MOP-5[1]#emit-system-class|
       _%stx27881%_
       _%klass27883%_
       '()
       '())))
  (define |gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
    (lambda (_%stx27838%_ _%klass27840%_ _%fields27841%_)
      (let* ((_%fields27873%_
              (let _%loop27843%_ ((_%rest27846%_ _%fields27841%_)
                                  (_%normalized27848%_ '()))
                (if (pair? _%rest27846%_)
                    (let ((_%field27850%_
                           (let () (declare (not safe)) (##car _%rest27846%_)))
                          (_%rest27852%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest27846%_))))
                      (if (memq _%field27850%_ _%rest27852%_)
                          (let ((_%$e27854%_
                                 (agetq _%field27850%_ _%normalized27848%_)))
                            (if _%$e27854%_
                                (let ((_%normalized-field27861%_
                                       (make-symbol '"super-" _%$e27854%_)))
                                  (_%loop27843%_
                                   _%rest27852%_
                                   (cons (cons _%field27850%_
                                               _%normalized-field27861%_)
                                         _%normalized27848%_)))
                                (let ((_%normalized-field27866%_
                                       (make-symbol '"super-" _%field27850%_)))
                                  (_%loop27843%_
                                   _%rest27852%_
                                   (cons (cons _%field27850%_
                                               _%normalized-field27866%_)
                                         _%normalized27848%_)))))
                          (_%loop27843%_
                           _%rest27852%_
                           (cons (cons _%field27850%_ _%field27850%_)
                                 _%normalized27848%_))))
                    (foldl (lambda (_%n27869%_ _%r27871%_)
                             (cons (cdr _%n27869%_) _%r27871%_))
                           '()
                           _%normalized27848%_))))
             (_%field-offsets27876%_
              (let ((__tmp28640 (length _%fields27873%_)))
                (declare (not safe))
                (##iota __tmp28640 '1))))
        (|gerbil/core/mop~MOP-5[1]#emit-system-class|
         _%stx27838%_
         _%klass27840%_
         _%fields27873%_
         _%field-offsets27876%_))))
  (define |gerbil/core/mop~MOP-5[1]#emit-system-class|
    (lambda (_%stx27487%_
             _%klass27489%_
             _%fields27490%_
             _%field-offsets27491%_)
      (let* ((_%$%g2749327565%_
              (lambda (_%$%g2749427561%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g2749427561%_)))
             (_%$%g2749227834%_
              (lambda (_%$%g2749427569%_)
                (if (gx#stx-pair? _%$%g2749427569%_)
                    (let ((_%$%e2750327572%_ (gx#syntax-e _%$%g2749427569%_)))
                      (let ((_%$%hd2750427576%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2750327572%_)))
                            (_%$%tl2750527579%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2750327572%_))))
                        (if (gx#stx-pair? _%$%tl2750527579%_)
                            (let ((_%$%e2750627582%_
                                   (gx#syntax-e _%$%tl2750527579%_)))
                              (let ((_%$%hd2750727586%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2750627582%_)))
                                    (_%$%tl2750827589%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2750627582%_))))
                                (if (gx#stx-pair? _%$%tl2750827589%_)
                                    (let ((_%$%e2750927592%_
                                           (gx#syntax-e _%$%tl2750827589%_)))
                                      (let ((_%$%hd2751027596%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2750927592%_)))
                                            (_%$%tl2751127599%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2750927592%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%hd2751027596%_)
                                            (let ((_g28641_
                                                   (gx#syntax-split-splice
                                                    _%$%hd2751027596%_
                                                    '0)))
                                              (begin
                                                (let ((_g28642_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g28641_)
                                                             (##values-length
                                                              _g28641_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g28642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g28642_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2751227602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g28641_
                                                          0)))
                                                      (_%$%tl2751427605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g28641_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2751427605%_)
                                                      (letrec ((_%$%loop2751527608%_
                                                                (lambda (_%$%hd2751327612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%field2751927615%_)
                          (if (gx#stx-pair? _%$%hd2751327612%_)
                              (let ((_%$%e2751627617%_
                                     (gx#syntax-e _%$%hd2751327612%_)))
                                (let ((_%$%lp-hd2751727621%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2751627617%_)))
                                      (_%$%lp-tl2751827624%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2751627617%_))))
                                  (_%$%loop2751527608%_
                                   _%$%lp-tl2751827624%_
                                   (cons _%$%lp-hd2751727621%_
                                         _%$%field2751927615%_))))
                              (let ((_%$%field2752027627%_
                                     (reverse _%$%field2751927615%_)))
                                (if (gx#stx-pair? _%$%tl2751127599%_)
                                    (let ((_%$%e2752127630%_
                                           (gx#syntax-e _%$%tl2751127599%_)))
                                      (let ((_%$%hd2752227634%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2752127630%_)))
                                            (_%$%tl2752327637%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2752127630%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%hd2752227634%_)
                                            (let ((_g28643_
                                                   (gx#syntax-split-splice
                                                    _%$%hd2752227634%_
                                                    '0)))
                                              (begin
                                                (let ((_g28644_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g28643_)
                                                             (##values-length
                                                              _g28643_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g28644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g28644_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2752427640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g28643_
                                                          0)))
                                                      (_%$%tl2752627643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g28643_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2752627643%_)
                                                      (letrec ((_%$%loop2752727646%_
                                                                (lambda (_%$%hd2752527650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%field-offset2753127653%_)
                          (if (gx#stx-pair? _%$%hd2752527650%_)
                              (let ((_%$%e2752827655%_
                                     (gx#syntax-e _%$%hd2752527650%_)))
                                (let ((_%$%lp-hd2752927659%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2752827655%_)))
                                      (_%$%lp-tl2753027662%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2752827655%_))))
                                  (_%$%loop2752727646%_
                                   _%$%lp-tl2753027662%_
                                   (cons _%$%lp-hd2752927659%_
                                         _%$%field-offset2753127653%_))))
                              (let ((_%$%field-offset2753227665%_
                                     (reverse _%$%field-offset2753127653%_)))
                                (if (gx#stx-pair? _%$%tl2752327637%_)
                                    (let ((_%$%e2753327668%_
                                           (gx#syntax-e _%$%tl2752327637%_)))
                                      (let ((_%$%hd2753427672%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2753327668%_)))
                                            (_%$%tl2753527675%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2753327668%_))))
                                        (if (gx#stx-pair? _%$%hd2753427672%_)
                                            (let ((_%$%e2753627678%_
                                                   (gx#syntax-e
                                                    _%$%hd2753427672%_)))
                                              (let ((_%$%hd2753727682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2753627678%_)))
                                                    (_%$%tl2753827685%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2753627678%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl2753827685%_)
                                                    (let ((_%$%e2753927688%_
                                                           (gx#syntax-e
                                                            _%$%tl2753827685%_)))
                                                      (let ((_%$%hd2754027692%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2753927688%_)))
                    (_%$%tl2754127695%_
                     (let () (declare (not safe)) (##cdr _%$%e2753927688%_))))
                (if (gx#stx-pair? _%$%tl2754127695%_)
                    (let ((_%$%e2754227698%_ (gx#syntax-e _%$%tl2754127695%_)))
                      (let ((_%$%hd2754327702%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2754227698%_)))
                            (_%$%tl2754427705%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2754227698%_))))
                        (if (gx#stx-pair? _%$%tl2754427705%_)
                            (let ((_%$%e2754527708%_
                                   (gx#syntax-e _%$%tl2754427705%_)))
                              (let ((_%$%hd2754627712%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2754527708%_)))
                                    (_%$%tl2754727715%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2754527708%_))))
                                (if (gx#stx-pair/null? _%$%hd2754627712%_)
                                    (let ((_g28645_
                                           (gx#syntax-split-splice
                                            _%$%hd2754627712%_
                                            '0)))
                                      (begin
                                        (let ((_g28646_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g28645_)
                                                     (##values-length _g28645_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g28646_ 2)))
                                              (error "Context expects 2 values"
                                                     _g28646_)))
                                        (let ((_%$%target2754827718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g28645_ 0)))
                                              (_%$%tl2755027721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g28645_ 1))))
                                          (if (gx#stx-null? _%$%tl2755027721%_)
                                              (letrec ((_%$%loop2755127724%_
                                                        (lambda (_%$%hd2754927728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%super2755527731%_)
                  (if (gx#stx-pair? _%$%hd2754927728%_)
                      (let ((_%$%e2755227733%_
                             (gx#syntax-e _%$%hd2754927728%_)))
                        (let ((_%$%lp-hd2755327737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2755227733%_)))
                              (_%$%lp-tl2755427740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2755227733%_))))
                          (_%$%loop2755127724%_
                           _%$%lp-tl2755427740%_
                           (cons _%$%lp-hd2755327737%_
                                 _%$%super2755527731%_))))
                      (let ((_%$%super2755627743%_
                             (reverse _%$%super2755527731%_)))
                        (if (gx#stx-pair? _%$%tl2754727715%_)
                            (let ((_%$%e2755727746%_
                                   (gx#syntax-e _%$%tl2754727715%_)))
                              (let ((_%$%hd2755827750%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2755727746%_)))
                                    (_%$%tl2755927753%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2755727746%_))))
                                (if (gx#stx-null? _%$%tl2755927753%_)
                                    (if (gx#stx-null? _%$%tl2753527675%_)
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax
                                                '#f
                                                'defsyntax)
                                               (cons _%$%hd2754027692%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-type-info)
                         (cons 'id:
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%hd2750427576%_ '()))
                                     (cons 'name:
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _%$%hd2750727586%_
                                                             '()))
                                                 (cons 'super:
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@list)
                           (foldr (lambda (_%$%g2781427820%_ _%$%g2781527823%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%$%g2781427820%_ '()))
                                          _%$%g2781527823%_))
                                  '()
                                  _%$%super2755627743%_))
                     (cons 'slots:
                           (cons (cons (gx#datum->syntax '#f '@list) '())
                                 (cons 'system?:
                                       (cons '#t
                                             (cons 'type-descriptor:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _%$%hd2754327702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons 'predicate:
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%$%hd2755827750%_ '()))
                             (cons 'accessors:
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               '())
                                         (cons 'mutators:
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           '())
                                                     (cons 'unchecked-accessors:
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '@list)
                               '())
                         (cons 'unchecked-mutators:
                               (cons (cons (gx#datum->syntax '#f '@list) '())
                                     (cons 'slot-offsets:
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%$%field-offset2753227665%_
                                                          _%$%field2752027627%_)
                                                         (foldr (lambda (_%$%g2781627826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g2781727829%_
                                 _%$%g2781827831%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%$%g2781727829%_ '()))
                                            (cons '::
                                                  (cons _%$%g2781627826%_
                                                        '()))))
                                _%$%g2781827831%_))
                        '()
                        _%$%field-offset2753227665%_
                        _%$%field2752027627%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (gx#stx-source _%stx27487%_))
                                        (_%$%g2749327565%_ _%$%g2749427569%_))
                                    (_%$%g2749327565%_ _%$%g2749427569%_))))
                            (_%$%g2749327565%_ _%$%g2749427569%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop2755127724%_
                                                 _%$%target2754827718%_
                                                 '()))
                                              (_%$%g2749327565%_
                                               _%$%g2749427569%_)))))
                                    (_%$%g2749327565%_ _%$%g2749427569%_))))
                            (_%$%g2749327565%_ _%$%g2749427569%_))))
                    (_%$%g2749327565%_ _%$%g2749427569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2749327565%_
                                                     _%$%g2749427569%_))))
                                            (_%$%g2749327565%_
                                             _%$%g2749427569%_))))
                                    (_%$%g2749327565%_ _%$%g2749427569%_)))))))
                (_%$%loop2752727646%_ _%$%target2752427640%_ '()))
              (_%$%g2749327565%_ _%$%g2749427569%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2749327565%_
                                             _%$%g2749427569%_))))
                                    (_%$%g2749327565%_ _%$%g2749427569%_)))))))
                (_%$%loop2751527608%_ _%$%target2751227602%_ '()))
              (_%$%g2749327565%_ _%$%g2749427569%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2749327565%_
                                             _%$%g2749427569%_))))
                                    (_%$%g2749327565%_ _%$%g2749427569%_))))
                            (_%$%g2749327565%_ _%$%g2749427569%_))))
                    (_%$%g2749327565%_ _%$%g2749427569%_)))))
        (_%$%g2749227834%_
         (list (class-type-id _%klass27489%_)
               (class-type-name _%klass27489%_)
               _%fields27490%_
               _%field-offsets27491%_
               _%stx27487%_)))))
  (define |gerbil/core/mop~MOP-5[:0:]#defsystem-class-info|
    (lambda (_%stx27888%_)
      (let* ((_%$%g2789127926%_
              (lambda (_%$%g2789227922%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g2789227922%_)))
             (_%$%g2789028069%_
              (lambda (_%$%g2789227930%_)
                (if (gx#stx-pair? _%$%g2789227930%_)
                    (let ((_%$%e2789727933%_ (gx#syntax-e _%$%g2789227930%_)))
                      (let ((_%$%hd2789827937%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2789727933%_)))
                            (_%$%tl2789927940%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2789727933%_))))
                        (if (gx#stx-pair? _%$%tl2789927940%_)
                            (let ((_%$%e2790027943%_
                                   (gx#syntax-e _%$%tl2789927940%_)))
                              (let ((_%$%hd2790127947%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2790027943%_)))
                                    (_%$%tl2790227950%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2790027943%_))))
                                (if (gx#stx-pair? _%$%tl2790227950%_)
                                    (let ((_%$%e2790327953%_
                                           (gx#syntax-e _%$%tl2790227950%_)))
                                      (let ((_%$%hd2790427957%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2790327953%_)))
                                            (_%$%tl2790527960%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2790327953%_))))
                                        (if (gx#stx-pair? _%$%tl2790527960%_)
                                            (let ((_%$%e2790627963%_
                                                   (gx#syntax-e
                                                    _%$%tl2790527960%_)))
                                              (let ((_%$%hd2790727967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2790627963%_)))
                                                    (_%$%tl2790827970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2790627963%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%hd2790727967%_)
                                                    (let ((_g28647_
                                                           (gx#syntax-split-splice
                                                            _%$%hd2790727967%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g28648_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g28647_)
                             (##values-length _g28647_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g28648_ 2)))
                      (error "Context expects 2 values" _g28648_)))
                (let ((_%$%target2790927973%_
                       (let () (declare (not safe)) (##values-ref _g28647_ 0)))
                      (_%$%tl2791127976%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g28647_ 1))))
                  (if (gx#stx-null? _%$%tl2791127976%_)
                      (letrec ((_%$%loop2791227979%_
                                (lambda (_%$%hd2791027983%_
                                         _%$%super2791627986%_)
                                  (if (gx#stx-pair? _%$%hd2791027983%_)
                                      (let ((_%$%e2791327988%_
                                             (gx#syntax-e _%$%hd2791027983%_)))
                                        (let ((_%$%lp-hd2791427992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2791327988%_)))
                                              (_%$%lp-tl2791527995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2791327988%_))))
                                          (_%$%loop2791227979%_
                                           _%$%lp-tl2791527995%_
                                           (cons _%$%lp-hd2791427992%_
                                                 _%$%super2791627986%_))))
                                      (let ((_%$%super2791727998%_
                                             (reverse _%$%super2791627986%_)))
                                        (if (gx#stx-pair? _%$%tl2790827970%_)
                                            (let ((_%$%e2791828001%_
                                                   (gx#syntax-e
                                                    _%$%tl2790827970%_)))
                                              (let ((_%$%hd2791928005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2791828001%_)))
                                                    (_%$%tl2792028008%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2791828001%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl2792028008%_)
                                                    (if (and (gx#identifier?
                                                              _%$%hd2790127947%_)
                                                             (gx#identifier?
                                                              _%$%hd2790427957%_)
                                                             (andmap gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%$%g2804028043%_
                                             _%$%g2804128046%_)
                                      (cons _%$%g2804028043%_
                                            _%$%g2804128046%_))
                                    '()
                                    _%$%super2791727998%_))
                     (gx#identifier? _%$%hd2791928005%_))
                (let* ((_%klass28049%_ (gx#eval-syntax _%$%hd2790427957%_))
                       (_%props28052%_ (class-type-properties _%klass28049%_))
                       (_%$e28057%_ (agetq 'system-type: _%props28052%_)))
                  (if _%$e28057%_
                      (let ((_%fields28064%_ (type-field-list _%$e28057%_)))
                        (|gerbil/core/mop~MOP-5[1]#generate-system-class-with-fields|
                         _%stx27888%_
                         _%klass28049%_
                         _%fields28064%_))
                      (|gerbil/core/mop~MOP-5[1]#generate-simple-system-class|
                       _%stx27888%_
                       _%klass28049%_)))
                (_%$%g2789127926%_ _%$%g2789227930%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2789127926%_
                                                     _%$%g2789227930%_))))
                                            (_%$%g2789127926%_
                                             _%$%g2789227930%_)))))))
                        (_%$%loop2791227979%_ _%$%target2790927973%_ '()))
                      (_%$%g2789127926%_ _%$%g2789227930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2789127926%_
                                                     _%$%g2789227930%_))))
                                            (_%$%g2789127926%_
                                             _%$%g2789227930%_))))
                                    (_%$%g2789127926%_ _%$%g2789227930%_))))
                            (_%$%g2789127926%_ _%$%g2789227930%_))))
                    (_%$%g2789127926%_ _%$%g2789227930%_)))))
        (_%$%g2789028069%_ _%stx27888%_)))))
