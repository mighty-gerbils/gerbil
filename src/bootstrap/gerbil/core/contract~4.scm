(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g102392_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g102393_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g102394_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx51093%_)
        (let* ((_%__stx9549195492%_ _%stx51093%_)
               (_%$%g5109751130%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9549195492%_))))
          (let ((_%__kont9549495495%_
                 (lambda (_%$%g5109951379%_ _%$%g5110051381%_)
                   (let ((_%meta51396%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51093%_
                             _%$%g5109951379%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta51396%_))
                         (let* ((_%$%g5140151416%_
                                 (lambda (_%$%g5140251412%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5140251412%_)))
                                (_%$%g5140051463%_
                                 (lambda (_%$%g5140251420%_)
                                   (if (gx#stx-pair? _%$%g5140251420%_)
                                       (let ((_%$%e5140551423%_
                                              (gx#syntax-e _%$%g5140251420%_)))
                                         (let ((_%$%hd5140651427%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5140551423%_)))
                                               (_%$%tl5140751430%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5140551423%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5140751430%_)
                                               (let ((_%$%e5140851433%_
                                                      (gx#syntax-e
                                                       _%$%tl5140751430%_)))
                                                 (let ((_%$%hd5140951437%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5140851433%_)))
                                                       (_%$%tl5141051440%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5140851433%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5141051440%_)
                                                       (if (let ((__tmp102389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj102207 _%meta51396%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj102207
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj102207
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj102207 'id)))))
                     (declare (not safe))
                     (##memq __tmp102389 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5140651427%_ '()))
                               (cons _%$%g5110051381%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5140651427%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%$%g5110051381%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%$%hd5140951437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'contract-violation!)
                                             (cons _%$%g5110051381%_
                                                   (cons (cons _%$%hd5140951437%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'val)
                             '()))
                 (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
               (_%$%g5140151416%_ _%$%g5140251420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5140151416%_
                                                _%$%g5140251420%_))))
                                       (_%$%g5140151416%_
                                        _%$%g5140251420%_)))))
                           (_%$%g5140051463%_
                            (list (let ((__obj102208 _%meta51396%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj102208
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj102208
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj102208
                                         'type-descriptor)))
                                  (let ((__obj102209 _%meta51396%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj102209
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj102209
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj102209
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta51396%_))
                             (let* ((_%$%g5146951484%_
                                     (lambda (_%$%g5147051480%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g5147051480%_)))
                                    (_%$%g5146851529%_
                                     (lambda (_%$%g5147051488%_)
                                       (if (gx#stx-pair? _%$%g5147051488%_)
                                           (let ((_%$%e5147351491%_
                                                  (gx#syntax-e
                                                   _%$%g5147051488%_)))
                                             (let ((_%$%hd5147451495%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e5147351491%_)))
                                                   (_%$%tl5147551498%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e5147351491%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl5147551498%_)
                                                   (let ((_%$%e5147651501%_
                                                          (gx#syntax-e
                                                           _%$%tl5147551498%_)))
                                                     (let ((_%$%hd5147751505%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e5147651501%_)))
                                                           (_%$%tl5147851508%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e5147651501%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl5147851508%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5147451495%_ '()))
                               (cons (cons _%$%hd5147751505%_
                                           (cons _%$%g5110051381%_ '()))
                                     '())))
                   (_%$%g5146951484%_ _%$%g5147051488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5146951484%_
                                                    _%$%g5147051488%_))))
                                           (_%$%g5146951484%_
                                            _%$%g5147051488%_)))))
                               (_%$%g5146851529%_
                                (list (let ((__obj102206 _%meta51396%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj102206
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj102206
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj102206
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx51093%_
                                         _%$%g5109951379%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx51093%_
                              _%$%g5109951379%_))))))
                (_%__kont9549695497%_
                 (lambda (_%$%g5111051181%_ _%$%g5111151183%_)
                   (let ((_%meta51203%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51093%_
                             _%$%g5111051181%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta51203%_))
                         (let* ((_%$%g5120851223%_
                                 (lambda (_%$%g5120951219%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5120951219%_)))
                                (_%$%g5120751270%_
                                 (lambda (_%$%g5120951227%_)
                                   (if (gx#stx-pair? _%$%g5120951227%_)
                                       (let ((_%$%e5121251230%_
                                              (gx#syntax-e _%$%g5120951227%_)))
                                         (let ((_%$%hd5121351234%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5121251230%_)))
                                               (_%$%tl5121451237%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5121251230%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5121451237%_)
                                               (let ((_%$%e5121551240%_
                                                      (gx#syntax-e
                                                       _%$%tl5121451237%_)))
                                                 (let ((_%$%hd5121651244%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5121551240%_)))
                                                       (_%$%tl5121751247%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5121551240%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5121751247%_)
                                                       (if (let ((__tmp102390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj102211 _%meta51203%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj102211
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj102211
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj102211 'id)))))
                     (declare (not safe))
                     (##memq __tmp102390 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5121351234%_ '()))
                               (cons _%$%g5111151183%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5121351234%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%$%g5111151183%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%$%hd5121651244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'runtime-contract-violation!)
                                             (cons _%$%g5111151183%_
                                                   (cons (cons _%$%hd5121651244%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'val)
                             '()))
                 (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
               (_%$%g5120851223%_ _%$%g5120951227%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5120851223%_
                                                _%$%g5120951227%_))))
                                       (_%$%g5120851223%_
                                        _%$%g5120951227%_)))))
                           (_%$%g5120751270%_
                            (list (let ((__obj102212 _%meta51203%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj102212
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj102212
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj102212
                                         'type-descriptor)))
                                  (let ((__obj102213 _%meta51203%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj102213
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj102213
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj102213
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta51203%_))
                             (let* ((_%$%g5127651291%_
                                     (lambda (_%$%g5127751287%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g5127751287%_)))
                                    (_%$%g5127551336%_
                                     (lambda (_%$%g5127751295%_)
                                       (if (gx#stx-pair? _%$%g5127751295%_)
                                           (let ((_%$%e5128051298%_
                                                  (gx#syntax-e
                                                   _%$%g5127751295%_)))
                                             (let ((_%$%hd5128151302%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e5128051298%_)))
                                                   (_%$%tl5128251305%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e5128051298%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl5128251305%_)
                                                   (let ((_%$%e5128351308%_
                                                          (gx#syntax-e
                                                           _%$%tl5128251305%_)))
                                                     (let ((_%$%hd5128451312%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e5128351308%_)))
                                                           (_%$%tl5128551315%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e5128351308%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl5128551315%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5128151302%_ '()))
                               (cons (cons _%$%hd5128451312%_
                                           (cons _%$%g5111151183%_ '()))
                                     '())))
                   (_%$%g5127651291%_ _%$%g5127751295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5127651291%_
                                                    _%$%g5127751295%_))))
                                           (_%$%g5127651291%_
                                            _%$%g5127751295%_)))))
                               (_%$%g5127551336%_
                                (list (let ((__obj102210 _%meta51203%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj102210
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj102210
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj102210
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx51093%_
                                         _%$%g5111051181%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx51093%_
                              _%$%g5111051181%_)))))))
            (let* ((_%__match9555095551%_
                    (lambda (_%$%e5111251137%_
                             _%$%hd5111351141%_
                             _%$%tl5111451144%_
                             _%$%e5111551147%_
                             _%$%hd5111651151%_
                             _%$%tl5111751154%_
                             _%$%e5111851157%_
                             _%$%hd5111951161%_
                             _%$%tl5112051164%_
                             _%$%e5112151167%_
                             _%$%e5112251171%_
                             _%$%hd5112351175%_
                             _%$%tl5112451178%_)
                      (let ((_%$%g5111051181%_ _%$%hd5112351175%_)
                            (_%$%g5111151183%_ _%$%hd5111651151%_))
                        (if (gx#identifier? _%$%g5111051181%_)
                            (_%__kont9549695497%_
                             _%$%g5111051181%_
                             _%$%g5111151183%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5109751130%_))))))
                   (_%__match9551895519%_
                    (lambda (_%$%e5110151349%_
                             _%$%hd5110251353%_
                             _%$%tl5110351356%_
                             _%$%e5110451359%_
                             _%$%hd5110551363%_
                             _%$%tl5110651366%_
                             _%$%e5110751369%_
                             _%$%hd5110851373%_
                             _%$%tl5110951376%_)
                      (let ((_%$%g5109951379%_ _%$%hd5110851373%_)
                            (_%$%g5110051381%_ _%$%hd5110551363%_))
                        (if (gx#identifier? _%$%g5109951379%_)
                            (_%__kont9549495495%_
                             _%$%g5109951379%_
                             _%$%g5110051381%_)
                            (if (gx#stx-datum? _%$%hd5110851373%_)
                                (let ((_%$%e5112151167%_
                                       (gx#stx-e _%$%hd5110851373%_)))
                                  (declare (not safe))
                                  (_%$%g5109751130%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5109751130%_))))))))
              (if (gx#stx-pair? _%__stx9549195492%_)
                  (let ((_%$%e5110151349%_ (gx#syntax-e _%__stx9549195492%_)))
                    (let ((_%$%tl5110351356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5110151349%_)))
                          (_%$%hd5110251353%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5110151349%_))))
                      (if (gx#stx-pair? _%$%tl5110351356%_)
                          (let ((_%$%e5110451359%_
                                 (gx#syntax-e _%$%tl5110351356%_)))
                            (let ((_%$%tl5110651366%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5110451359%_)))
                                  (_%$%hd5110551363%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5110451359%_))))
                              (if (gx#stx-pair? _%$%tl5110651366%_)
                                  (let ((_%$%e5110751369%_
                                         (gx#syntax-e _%$%tl5110651366%_)))
                                    (let ((_%$%tl5110951376%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5110751369%_)))
                                          (_%$%hd5110851373%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5110751369%_))))
                                      (if (gx#stx-null? _%$%tl5110951376%_)
                                          (_%__match9551895519%_
                                           _%$%e5110151349%_
                                           _%$%hd5110251353%_
                                           _%$%tl5110351356%_
                                           _%$%e5110451359%_
                                           _%$%hd5110551363%_
                                           _%$%tl5110651366%_
                                           _%$%e5110751369%_
                                           _%$%hd5110851373%_
                                           _%$%tl5110951376%_)
                                          (if (gx#stx-datum?
                                               _%$%hd5110851373%_)
                                              (let ((_%$%e5112151167%_
                                                     (gx#stx-e
                                                      _%$%hd5110851373%_)))
                                                (if (equal? _%$%e5112151167%_
                                                            'runtime:)
                                                    (if (gx#stx-pair?
                                                         _%$%tl5110951376%_)
                                                        (let ((_%$%e5112251171%_
                                                               (gx#syntax-e
                                                                _%$%tl5110951376%_)))
                                                          (let ((_%$%tl5112451178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5112251171%_)))
                        (_%$%hd5112351175%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5112251171%_))))
                    (if (gx#stx-null? _%$%tl5112451178%_)
                        (_%__match9555095551%_
                         _%$%e5110151349%_
                         _%$%hd5110251353%_
                         _%$%tl5110351356%_
                         _%$%e5110451359%_
                         _%$%hd5110551363%_
                         _%$%tl5110651366%_
                         _%$%e5110751369%_
                         _%$%hd5110851373%_
                         _%$%tl5110951376%_
                         _%$%e5112151167%_
                         _%$%e5112251171%_
                         _%$%hd5112351175%_
                         _%$%tl5112451178%_)
                        (let () (declare (not safe)) (_%$%g5109751130%_)))))
                (let () (declare (not safe)) (_%$%g5109751130%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5109751130%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5109751130%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5109751130%_)))))
                          (let () (declare (not safe)) (_%$%g5109751130%_)))))
                  (let () (declare (not safe)) (_%$%g5109751130%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx51539%_)
        (let* ((_%$%g5154251560%_
                (lambda (_%$%g5154351556%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5154351556%_)))
               (_%$%g5154151754%_
                (lambda (_%$%g5154351564%_)
                  (if (gx#stx-pair? _%$%g5154351564%_)
                      (let ((_%$%e5154651567%_
                             (gx#syntax-e _%$%g5154351564%_)))
                        (let ((_%$%hd5154751571%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5154651567%_)))
                              (_%$%tl5154851574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5154651567%_))))
                          (if (gx#stx-pair? _%$%tl5154851574%_)
                              (let ((_%$%e5154951577%_
                                     (gx#syntax-e _%$%tl5154851574%_)))
                                (let ((_%$%hd5155051581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5154951577%_)))
                                      (_%$%tl5155151584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5154951577%_))))
                                  (if (gx#stx-pair? _%$%tl5155151584%_)
                                      (let ((_%$%e5155251587%_
                                             (gx#syntax-e _%$%tl5155151584%_)))
                                        (let ((_%$%hd5155351591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5155251587%_)))
                                              (_%$%tl5155451594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5155251587%_))))
                                          (if (gx#stx-null? _%$%tl5155451594%_)
                                              (if (gx#identifier?
                                                   _%$%hd5155351591%_)
                                                  (let ((_%meta51615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                            _%stx51539%_
                                                            _%$%hd5155351591%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           _%meta51615%_))
                                                        (let* ((_%$%g5162051635%_
                                                                (lambda (_%$%g5162151631%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g5162151631%_)))
                       (_%$%g5161951682%_
                        (lambda (_%$%g5162151639%_)
                          (if (gx#stx-pair? _%$%g5162151639%_)
                              (let ((_%$%e5162451642%_
                                     (gx#syntax-e _%$%g5162151639%_)))
                                (let ((_%$%hd5162551646%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5162451642%_)))
                                      (_%$%tl5162651649%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5162451642%_))))
                                  (if (gx#stx-pair? _%$%tl5162651649%_)
                                      (let ((_%$%e5162751652%_
                                             (gx#syntax-e _%$%tl5162651649%_)))
                                        (let ((_%$%hd5162851656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5162751652%_)))
                                              (_%$%tl5162951659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5162751652%_))))
                                          (if (gx#stx-null? _%$%tl5162951659%_)
                                              (if (let ((__tmp102391
                                                         (let ((__obj102215
                                                                _%meta51615%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj102215
                          'gerbil/core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj102215 '2 '#f '#f))
                       (unchecked-slot-ref __obj102215 'id)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##memq __tmp102391
                                                            '(t void)))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5162551646%_ '()))
                      (cons _%$%hd5155051581%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5162551646%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%$%hd5155051581%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'or)
                        (cons (cons (gx#datum->syntax '#f 'not)
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              (cons (cons _%$%hd5162851656%_
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    '())))
                  (cons (gx#datum->syntax '#f 'val)
                        (cons (cons (gx#datum->syntax '#f 'contract-violation!)
                                    (cons _%$%hd5155051581%_
                                          (cons (cons _%$%hd5162851656%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5162051635%_
                                               _%$%g5162151639%_))))
                                      (_%$%g5162051635%_ _%$%g5162151639%_))))
                              (_%$%g5162051635%_ _%$%g5162151639%_)))))
                  (_%$%g5161951682%_
                   (list (let ((__obj102216 _%meta51615%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj102216
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj102216
                                  '4
                                  '#f
                                  '#f))
                               (unchecked-slot-ref
                                __obj102216
                                'type-descriptor)))
                         (let ((__obj102217 _%meta51615%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj102217
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj102217
                                  '15
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj102217 'predicate))))))
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       _%meta51615%_))
                    (let* ((_%$%g5168851703%_
                            (lambda (_%$%g5168951699%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5168951699%_)))
                           (_%$%g5168751748%_
                            (lambda (_%$%g5168951707%_)
                              (if (gx#stx-pair? _%$%g5168951707%_)
                                  (let ((_%$%e5169251710%_
                                         (gx#syntax-e _%$%g5168951707%_)))
                                    (let ((_%$%hd5169351714%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5169251710%_)))
                                          (_%$%tl5169451717%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5169251710%_))))
                                      (if (gx#stx-pair? _%$%tl5169451717%_)
                                          (let ((_%$%e5169551720%_
                                                 (gx#syntax-e
                                                  _%$%tl5169451717%_)))
                                            (let ((_%$%hd5169651724%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5169551720%_)))
                                                  (_%$%tl5169751727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5169551720%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5169751727%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5169351714%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%$%hd5155051581%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'and)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'val)
                                                          (cons (cons _%$%hd5169651724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5168851703%_
                                                   _%$%g5168951707%_))))
                                          (_%$%g5168851703%_
                                           _%$%g5168951707%_))))
                                  (_%$%g5168851703%_ _%$%g5168951707%_)))))
                      (_%$%g5168751748%_
                       (list (let ((__obj102214 _%meta51615%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102214
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102214
                                      '3
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj102214
                                    'type-descriptor)))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                _%stx51539%_
                                _%$%hd5155351591%_)))))
                    (gx#raise-syntax-error
                     '#f
                     '"not a class type or interface"
                     _%stx51539%_
                     _%$%hd5155351591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5154251560%_
                                                   _%$%g5154351564%_))
                                              (_%$%g5154251560%_
                                               _%$%g5154351564%_))))
                                      (_%$%g5154251560%_ _%$%g5154351564%_))))
                              (_%$%g5154251560%_ _%$%g5154351564%_))))
                      (_%$%g5154251560%_ _%$%g5154351564%_)))))
          (_%$%g5154151754%_ _%stx51539%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx51758%_)
        (let* ((_%$%g5176151779%_
                (lambda (_%$%g5176251775%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5176251775%_)))
               (_%$%g5176051865%_
                (lambda (_%$%g5176251783%_)
                  (if (gx#stx-pair? _%$%g5176251783%_)
                      (let ((_%$%e5176551786%_
                             (gx#syntax-e _%$%g5176251783%_)))
                        (let ((_%$%hd5176651790%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5176551786%_)))
                              (_%$%tl5176751793%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5176551786%_))))
                          (if (gx#stx-pair? _%$%tl5176751793%_)
                              (let ((_%$%e5176851796%_
                                     (gx#syntax-e _%$%tl5176751793%_)))
                                (let ((_%$%hd5176951800%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5176851796%_)))
                                      (_%$%tl5177051803%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5176851796%_))))
                                  (if (gx#stx-pair? _%$%tl5177051803%_)
                                      (let ((_%$%e5177151806%_
                                             (gx#syntax-e _%$%tl5177051803%_)))
                                        (let ((_%$%hd5177251810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5177151806%_)))
                                              (_%$%tl5177351813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5177151806%_))))
                                          (if (gx#stx-null? _%$%tl5177351813%_)
                                              (if (gx#identifier?
                                                   _%$%hd5177251810%_)
                                                  (let* ((_%$%g5183451842%_
                                                          (lambda (_%$%g5183551838%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g5183551838%_)))
                                                         (_%$%g5183351861%_
                                                          (lambda (_%$%g5183551846%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%$%g5183551846%_ '()))
                                (cons _%$%hd5176951800%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5183351861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                                        _%stx51758%_
                                                        _%$%hd5177251810%_))))
                                                  (_%$%g5176151779%_
                                                   _%$%g5176251783%_))
                                              (_%$%g5176151779%_
                                               _%$%g5176251783%_))))
                                      (_%$%g5176151779%_ _%$%g5176251783%_))))
                              (_%$%g5176151779%_ _%$%g5176251783%_))))
                      (_%$%g5176151779%_ _%$%g5176251783%_)))))
          (_%$%g5176051865%_ _%stx51758%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx51869%_)
        (let* ((_%__stx9555395554%_ _%$stx51869%_)
               (_%$%g5187551959%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9555395554%_))))
          (let ((_%__kont9555695557%_
                 (lambda (_%$%g5187752263%_
                          _%$%g5187852265%_
                          _%$%g5187952266%_
                          _%$%g5188052267%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%$%g5188052267%_
                                           (cons _%$%g5187852265%_
                                                 (foldr (lambda (_%$%g5229152294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5229252297%_)
                  (cons _%$%g5229152294%_ _%$%g5229252297%_))
                '()
                _%$%g5187752263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g5187952266%_ '())))))
                (_%__kont9556095561%_
                 (lambda (_%$%g5190552141%_
                          _%$%g5190652143%_
                          _%$%g5190752144%_
                          _%$%g5190852145%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%$%g5190852145%_
                                           (cons _%$%g5190652143%_
                                                 (foldr (lambda (_%$%g5216952172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5217052175%_)
                  (cons _%$%g5216952172%_ _%$%g5217052175%_))
                '()
                _%$%g5190552141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g5190752144%_ '())))))
                (_%__kont9556495565%_
                 (lambda (_%$%g5193352024%_
                          _%$%g5193452026%_
                          _%$%g5193552027%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%$%g5193552027%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%$%g5193452026%_
                                                       (foldr (lambda (_%$%g5204752050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g5204852053%_)
                        (cons _%$%g5204752050%_ _%$%g5204852053%_))
                      '()
                      _%$%g5193352024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9567895679%_
                    (lambda (_%$%e5193651966%_
                             _%$%hd5193751970%_
                             _%$%tl5193851973%_
                             _%$%e5193951976%_
                             _%$%hd5194051980%_
                             _%$%tl5194151983%_
                             _%$%e5194251986%_
                             _%$%hd5194351990%_
                             _%$%tl5194451993%_
                             _%__splice9556695567%_
                             _%$%target5194551996%_
                             _%$%tl5194751999%_)
                      (letrec ((_%$%loop5194852002%_
                                (lambda (_%$%hd5194652006%_
                                         _%$%rest5195252009%_)
                                  (if (gx#stx-pair? _%$%hd5194652006%_)
                                      (let ((_%$%e5194952011%_
                                             (gx#syntax-e _%$%hd5194652006%_)))
                                        (let ((_%$%lp-tl5195152018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5194952011%_)))
                                              (_%$%lp-hd5195052015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5194952011%_))))
                                          (_%$%loop5194852002%_
                                           _%$%lp-tl5195152018%_
                                           (cons _%$%lp-hd5195052015%_
                                                 _%$%rest5195252009%_))))
                                      (let ((_%$%rest5195352021%_
                                             (reverse _%$%rest5195252009%_)))
                                        (_%__kont9556495565%_
                                         _%$%rest5195352021%_
                                         _%$%hd5194351990%_
                                         _%$%hd5194051980%_))))))
                        (_%$%loop5194852002%_ _%$%target5194551996%_ '()))))
                   (_%__match9565295653%_
                    (lambda (_%$%e5190952063%_
                             _%$%hd5191052067%_
                             _%$%tl5191152070%_
                             _%$%e5191252073%_
                             _%$%hd5191352077%_
                             _%$%tl5191452080%_
                             _%$%e5191552083%_
                             _%$%hd5191652087%_
                             _%$%tl5191752090%_
                             _%$%e5191852093%_
                             _%$%hd5191952097%_
                             _%$%tl5192052100%_
                             _%$%e5192152103%_
                             _%$%hd5192252107%_
                             _%$%tl5192352110%_
                             _%__splice9556295563%_
                             _%$%target5192452113%_
                             _%$%tl5192652116%_)
                      (letrec ((_%$%loop5192752119%_
                                (lambda (_%$%hd5192552123%_
                                         _%$%rest5193152126%_)
                                  (if (gx#stx-pair? _%$%hd5192552123%_)
                                      (let ((_%$%e5192852128%_
                                             (gx#syntax-e _%$%hd5192552123%_)))
                                        (let ((_%$%lp-tl5193052135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5192852128%_)))
                                              (_%$%lp-hd5192952132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5192852128%_))))
                                          (_%$%loop5192752119%_
                                           _%$%lp-tl5193052135%_
                                           (cons _%$%lp-hd5192952132%_
                                                 _%$%rest5193152126%_))))
                                      (let ((_%$%rest5193252138%_
                                             (reverse _%$%rest5193152126%_)))
                                        (_%__kont9556095561%_
                                         _%$%rest5193252138%_
                                         _%$%hd5192252107%_
                                         _%$%hd5191952097%_
                                         _%$%hd5191352077%_))))))
                        (_%$%loop5192752119%_ _%$%target5192452113%_ '()))))
                   (_%__match9561095611%_
                    (lambda (_%$%e5188152185%_
                             _%$%hd5188252189%_
                             _%$%tl5188352192%_
                             _%$%e5188452195%_
                             _%$%hd5188552199%_
                             _%$%tl5188652202%_
                             _%$%e5188752205%_
                             _%$%hd5188852209%_
                             _%$%tl5188952212%_
                             _%$%e5189052215%_
                             _%$%hd5189152219%_
                             _%$%tl5189252222%_
                             _%$%e5189352225%_
                             _%$%hd5189452229%_
                             _%$%tl5189552232%_
                             _%__splice9555895559%_
                             _%$%target5189652235%_
                             _%$%tl5189852238%_)
                      (letrec ((_%$%loop5189952241%_
                                (lambda (_%$%hd5189752245%_
                                         _%$%rest5190352248%_)
                                  (if (gx#stx-pair? _%$%hd5189752245%_)
                                      (let ((_%$%e5190052250%_
                                             (gx#syntax-e _%$%hd5189752245%_)))
                                        (let ((_%$%lp-tl5190252257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5190052250%_)))
                                              (_%$%lp-hd5190152254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5190052250%_))))
                                          (_%$%loop5189952241%_
                                           _%$%lp-tl5190252257%_
                                           (cons _%$%lp-hd5190152254%_
                                                 _%$%rest5190352248%_))))
                                      (let ((_%$%rest5190452260%_
                                             (reverse _%$%rest5190352248%_)))
                                        (_%__kont9555695557%_
                                         _%$%rest5190452260%_
                                         _%$%hd5189452229%_
                                         _%$%hd5189152219%_
                                         _%$%hd5188552199%_))))))
                        (_%$%loop5189952241%_ _%$%target5189652235%_ '())))))
              (if (gx#stx-pair? _%__stx9555395554%_)
                  (let ((_%$%e5188152185%_ (gx#syntax-e _%__stx9555395554%_)))
                    (let ((_%$%tl5188352192%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5188152185%_)))
                          (_%$%hd5188252189%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5188152185%_))))
                      (if (gx#stx-pair? _%$%tl5188352192%_)
                          (let ((_%$%e5188452195%_
                                 (gx#syntax-e _%$%tl5188352192%_)))
                            (let ((_%$%tl5188652202%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5188452195%_)))
                                  (_%$%hd5188552199%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5188452195%_))))
                              (if (gx#stx-pair? _%$%tl5188652202%_)
                                  (let ((_%$%e5188752205%_
                                         (gx#syntax-e _%$%tl5188652202%_)))
                                    (let ((_%$%tl5188952212%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5188752205%_)))
                                          (_%$%hd5188852209%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5188752205%_))))
                                      (if (gx#identifier? _%$%hd5188852209%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g102392_|
                                               _%$%hd5188852209%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl5188952212%_)
                                                  (let ((_%$%e5189052215%_
                                                         (gx#syntax-e
                                                          _%$%tl5188952212%_)))
                                                    (let ((_%$%tl5189252222%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5189052215%_)))
                                                          (_%$%hd5189152219%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5189052215%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5189252222%_)
                                                          (let ((_%$%e5189352225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5189252222%_)))
                    (let ((_%$%tl5189552232%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5189352225%_)))
                          (_%$%hd5189452229%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5189352225%_))))
                      (if (gx#stx-pair/null? _%$%tl5189552232%_)
                          (let ((_%__splice9555895559%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5189552232%_
                                  '0)))
                            (let ((_%$%tl5189852238%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9555895559%_ '1)))
                                  (_%$%target5189652235%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9555895559%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5189852238%_)
                                  (_%__match9561095611%_
                                   _%$%e5188152185%_
                                   _%$%hd5188252189%_
                                   _%$%tl5188352192%_
                                   _%$%e5188452195%_
                                   _%$%hd5188552199%_
                                   _%$%tl5188652202%_
                                   _%$%e5188752205%_
                                   _%$%hd5188852209%_
                                   _%$%tl5188952212%_
                                   _%$%e5189052215%_
                                   _%$%hd5189152219%_
                                   _%$%tl5189252222%_
                                   _%$%e5189352225%_
                                   _%$%hd5189452229%_
                                   _%$%tl5189552232%_
                                   _%__splice9555895559%_
                                   _%$%target5189652235%_
                                   _%$%tl5189852238%_)
                                  (if (gx#stx-pair/null? _%$%tl5188952212%_)
                                      (let ((_%__splice9556695567%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5188952212%_
                                              '0)))
                                        (let ((_%$%tl5194751999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9556695567%_
                                                  '1)))
                                              (_%$%target5194551996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9556695567%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5194751999%_)
                                              (_%__match9567895679%_
                                               _%$%e5188152185%_
                                               _%$%hd5188252189%_
                                               _%$%tl5188352192%_
                                               _%$%e5188452195%_
                                               _%$%hd5188552199%_
                                               _%$%tl5188652202%_
                                               _%$%e5188752205%_
                                               _%$%hd5188852209%_
                                               _%$%tl5188952212%_
                                               _%__splice9556695567%_
                                               _%$%target5194551996%_
                                               _%$%tl5194751999%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5187551959%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5187551959%_))))))
                          (if (gx#stx-pair/null? _%$%tl5188952212%_)
                              (let ((_%__splice9556695567%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5188952212%_
                                      '0)))
                                (let ((_%$%tl5194751999%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9556695567%_
                                          '1)))
                                      (_%$%target5194551996%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9556695567%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5194751999%_)
                                      (_%__match9567895679%_
                                       _%$%e5188152185%_
                                       _%$%hd5188252189%_
                                       _%$%tl5188352192%_
                                       _%$%e5188452195%_
                                       _%$%hd5188552199%_
                                       _%$%tl5188652202%_
                                       _%$%e5188752205%_
                                       _%$%hd5188852209%_
                                       _%$%tl5188952212%_
                                       _%__splice9556695567%_
                                       _%$%target5194551996%_
                                       _%$%tl5194751999%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5187551959%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5187551959%_))))))
                  (if (gx#stx-pair/null? _%$%tl5188952212%_)
                      (let ((_%__splice9556695567%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5188952212%_
                              '0)))
                        (let ((_%$%tl5194751999%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9556695567%_ '1)))
                              (_%$%target5194551996%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9556695567%_ '0))))
                          (if (gx#stx-null? _%$%tl5194751999%_)
                              (_%__match9567895679%_
                               _%$%e5188152185%_
                               _%$%hd5188252189%_
                               _%$%tl5188352192%_
                               _%$%e5188452195%_
                               _%$%hd5188552199%_
                               _%$%tl5188652202%_
                               _%$%e5188752205%_
                               _%$%hd5188852209%_
                               _%$%tl5188952212%_
                               _%__splice9556695567%_
                               _%$%target5194551996%_
                               _%$%tl5194751999%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5187551959%_)))))
                      (let () (declare (not safe)) (_%$%g5187551959%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5188952212%_)
                                                      (let ((_%__splice9556695567%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5188952212%_
                                                              '0)))
                                                        (let ((_%$%tl5194751999%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9556695567%_ '1)))
                      (_%$%target5194551996%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9556695567%_ '0))))
                  (if (gx#stx-null? _%$%tl5194751999%_)
                      (_%__match9567895679%_
                       _%$%e5188152185%_
                       _%$%hd5188252189%_
                       _%$%tl5188352192%_
                       _%$%e5188452195%_
                       _%$%hd5188552199%_
                       _%$%tl5188652202%_
                       _%$%e5188752205%_
                       _%$%hd5188852209%_
                       _%$%tl5188952212%_
                       _%__splice9556695567%_
                       _%$%target5194551996%_
                       _%$%tl5194751999%_)
                      (let () (declare (not safe)) (_%$%g5187551959%_)))))
              (let () (declare (not safe)) (_%$%g5187551959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g102393_|
                                                   _%$%hd5188852209%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl5188952212%_)
                                                      (let ((_%$%e5191852093%_
                                                             (gx#syntax-e
                                                              _%$%tl5188952212%_)))
                                                        (let ((_%$%tl5192052100%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5191852093%_)))
                      (_%$%hd5191952097%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5191852093%_))))
                  (if (gx#stx-pair? _%$%tl5192052100%_)
                      (let ((_%$%e5192152103%_
                             (gx#syntax-e _%$%tl5192052100%_)))
                        (let ((_%$%tl5192352110%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5192152103%_)))
                              (_%$%hd5192252107%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5192152103%_))))
                          (if (gx#stx-pair/null? _%$%tl5192352110%_)
                              (let ((_%__splice9556295563%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5192352110%_
                                      '0)))
                                (let ((_%$%tl5192652116%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9556295563%_
                                          '1)))
                                      (_%$%target5192452113%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9556295563%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5192652116%_)
                                      (_%__match9565295653%_
                                       _%$%e5188152185%_
                                       _%$%hd5188252189%_
                                       _%$%tl5188352192%_
                                       _%$%e5188452195%_
                                       _%$%hd5188552199%_
                                       _%$%tl5188652202%_
                                       _%$%e5188752205%_
                                       _%$%hd5188852209%_
                                       _%$%tl5188952212%_
                                       _%$%e5191852093%_
                                       _%$%hd5191952097%_
                                       _%$%tl5192052100%_
                                       _%$%e5192152103%_
                                       _%$%hd5192252107%_
                                       _%$%tl5192352110%_
                                       _%__splice9556295563%_
                                       _%$%target5192452113%_
                                       _%$%tl5192652116%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5188952212%_)
                                          (let ((_%__splice9556695567%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5188952212%_
                                                  '0)))
                                            (let ((_%$%tl5194751999%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9556695567%_
                                                      '1)))
                                                  (_%$%target5194551996%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9556695567%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5194751999%_)
                                                  (_%__match9567895679%_
                                                   _%$%e5188152185%_
                                                   _%$%hd5188252189%_
                                                   _%$%tl5188352192%_
                                                   _%$%e5188452195%_
                                                   _%$%hd5188552199%_
                                                   _%$%tl5188652202%_
                                                   _%$%e5188752205%_
                                                   _%$%hd5188852209%_
                                                   _%$%tl5188952212%_
                                                   _%__splice9556695567%_
                                                   _%$%target5194551996%_
                                                   _%$%tl5194751999%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5187551959%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5187551959%_))))))
                              (if (gx#stx-pair/null? _%$%tl5188952212%_)
                                  (let ((_%__splice9556695567%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5188952212%_
                                          '0)))
                                    (let ((_%$%tl5194751999%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9556695567%_
                                              '1)))
                                          (_%$%target5194551996%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9556695567%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5194751999%_)
                                          (_%__match9567895679%_
                                           _%$%e5188152185%_
                                           _%$%hd5188252189%_
                                           _%$%tl5188352192%_
                                           _%$%e5188452195%_
                                           _%$%hd5188552199%_
                                           _%$%tl5188652202%_
                                           _%$%e5188752205%_
                                           _%$%hd5188852209%_
                                           _%$%tl5188952212%_
                                           _%__splice9556695567%_
                                           _%$%target5194551996%_
                                           _%$%tl5194751999%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5187551959%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5187551959%_))))))
                      (if (gx#stx-pair/null? _%$%tl5188952212%_)
                          (let ((_%__splice9556695567%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5188952212%_
                                  '0)))
                            (let ((_%$%tl5194751999%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9556695567%_ '1)))
                                  (_%$%target5194551996%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9556695567%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5194751999%_)
                                  (_%__match9567895679%_
                                   _%$%e5188152185%_
                                   _%$%hd5188252189%_
                                   _%$%tl5188352192%_
                                   _%$%e5188452195%_
                                   _%$%hd5188552199%_
                                   _%$%tl5188652202%_
                                   _%$%e5188752205%_
                                   _%$%hd5188852209%_
                                   _%$%tl5188952212%_
                                   _%__splice9556695567%_
                                   _%$%target5194551996%_
                                   _%$%tl5194751999%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5187551959%_)))))
                          (let () (declare (not safe)) (_%$%g5187551959%_))))))
              (if (gx#stx-pair/null? _%$%tl5188952212%_)
                  (let ((_%__splice9556695567%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5188952212%_
                          '0)))
                    (let ((_%$%tl5194751999%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9556695567%_ '1)))
                          (_%$%target5194551996%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9556695567%_ '0))))
                      (if (gx#stx-null? _%$%tl5194751999%_)
                          (_%__match9567895679%_
                           _%$%e5188152185%_
                           _%$%hd5188252189%_
                           _%$%tl5188352192%_
                           _%$%e5188452195%_
                           _%$%hd5188552199%_
                           _%$%tl5188652202%_
                           _%$%e5188752205%_
                           _%$%hd5188852209%_
                           _%$%tl5188952212%_
                           _%__splice9556695567%_
                           _%$%target5194551996%_
                           _%$%tl5194751999%_)
                          (let () (declare (not safe)) (_%$%g5187551959%_)))))
                  (let () (declare (not safe)) (_%$%g5187551959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5188952212%_)
                                                      (let ((_%__splice9556695567%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5188952212%_
                                                              '0)))
                                                        (let ((_%$%tl5194751999%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9556695567%_ '1)))
                      (_%$%target5194551996%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9556695567%_ '0))))
                  (if (gx#stx-null? _%$%tl5194751999%_)
                      (_%__match9567895679%_
                       _%$%e5188152185%_
                       _%$%hd5188252189%_
                       _%$%tl5188352192%_
                       _%$%e5188452195%_
                       _%$%hd5188552199%_
                       _%$%tl5188652202%_
                       _%$%e5188752205%_
                       _%$%hd5188852209%_
                       _%$%tl5188952212%_
                       _%__splice9556695567%_
                       _%$%target5194551996%_
                       _%$%tl5194751999%_)
                      (let () (declare (not safe)) (_%$%g5187551959%_)))))
              (let () (declare (not safe)) (_%$%g5187551959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl5188952212%_)
                                              (let ((_%__splice9556695567%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5188952212%_
                                                      '0)))
                                                (let ((_%$%tl5194751999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9556695567%_
                                                          '1)))
                                                      (_%$%target5194551996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9556695567%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5194751999%_)
                                                      (_%__match9567895679%_
                                                       _%$%e5188152185%_
                                                       _%$%hd5188252189%_
                                                       _%$%tl5188352192%_
                                                       _%$%e5188452195%_
                                                       _%$%hd5188552199%_
                                                       _%$%tl5188652202%_
                                                       _%$%e5188752205%_
                                                       _%$%hd5188852209%_
                                                       _%$%tl5188952212%_
                                                       _%__splice9556695567%_
                                                       _%$%target5194551996%_
                                                       _%$%tl5194751999%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5187551959%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5187551959%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5187551959%_)))))
                          (let () (declare (not safe)) (_%$%g5187551959%_)))))
                  (let () (declare (not safe)) (_%$%g5187551959%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx52307%_)
        (let* ((_%__stx9568195682%_ _%$stx52307%_)
               (_%$%g5231252348%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9568195682%_))))
          (let ((_%__kont9568495685%_
                 (lambda (_%$%g5231452466%_ _%$%g5231552468%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%$%g5231552468%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%$%g5231452466%_
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
                           (cons _%$%g5231552468%_
                                 (cons _%$%g5231452466%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9568695687%_
                 (lambda (_%$%g5232552405%_
                          _%$%g5232652407%_
                          _%$%g5232752408%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%$%g5232752408%_
                                           (cons _%$%g5232652407%_ '())))
                               (cons _%$%g5232552405%_ '()))))))
            (if (gx#stx-pair? _%__stx9568195682%_)
                (let ((_%$%e5231652436%_ (gx#syntax-e _%__stx9568195682%_)))
                  (let ((_%$%tl5231852443%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5231652436%_)))
                        (_%$%hd5231752440%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5231652436%_))))
                    (if (gx#stx-pair? _%$%tl5231852443%_)
                        (let ((_%$%e5231952446%_
                               (gx#syntax-e _%$%tl5231852443%_)))
                          (let ((_%$%tl5232152453%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5231952446%_)))
                                (_%$%hd5232052450%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5231952446%_))))
                            (if (gx#stx-pair? _%$%tl5232152453%_)
                                (let ((_%$%e5232252456%_
                                       (gx#syntax-e _%$%tl5232152453%_)))
                                  (let ((_%$%tl5232452463%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5232252456%_)))
                                        (_%$%hd5232352460%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5232252456%_))))
                                    (if (gx#stx-null? _%$%tl5232452463%_)
                                        (_%__kont9568495685%_
                                         _%$%hd5232352460%_
                                         _%$%hd5232052450%_)
                                        (if (gx#stx-pair? _%$%tl5232452463%_)
                                            (let ((_%$%e5233752385%_
                                                   (gx#syntax-e
                                                    _%$%tl5232452463%_)))
                                              (let ((_%$%tl5233952392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5233752385%_)))
                                                    (_%$%hd5233852389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5233752385%_))))
                                                (if (gx#identifier?
                                                     _%$%hd5233852389%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g102394_|
                                                         _%$%hd5233852389%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl5233952392%_)
                                                            (let ((_%$%e5234052395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl5233952392%_)))
                      (let ((_%$%tl5234252402%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5234052395%_)))
                            (_%$%hd5234152399%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5234052395%_))))
                        (if (gx#stx-null? _%$%tl5234252402%_)
                            (_%__kont9568695687%_
                             _%$%hd5234152399%_
                             _%$%hd5232352460%_
                             _%$%hd5232052450%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5231252348%_)))))
                    (let () (declare (not safe)) (_%$%g5231252348%_)))
                (let () (declare (not safe)) (_%$%g5231252348%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5231252348%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5231252348%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5231252348%_)))))
                        (let () (declare (not safe)) (_%$%g5231252348%_)))))
                (let () (declare (not safe)) (_%$%g5231252348%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx52487%_)
        (let ((_%$%g5249052497%_
               (lambda (_%$%g5249152493%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5249152493%_))))
          (_%$%g5249052497%_ _%$stx52487%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx52501%_)
        (let ((_%$%g5250452511%_
               (lambda (_%$%g5250552507%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5250552507%_))))
          (_%$%g5250452511%_ _%$stx52501%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx52515%_)
        (let* ((_%$%g5251952533%_
                (lambda (_%$%g5252052529%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5252052529%_)))
               (_%$%g5251852574%_
                (lambda (_%$%g5252052537%_)
                  (if (gx#stx-pair? _%$%g5252052537%_)
                      (let ((_%$%e5252252540%_
                             (gx#syntax-e _%$%g5252052537%_)))
                        (let ((_%$%hd5252352544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5252252540%_)))
                              (_%$%tl5252452547%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5252252540%_))))
                          (if (gx#stx-pair? _%$%tl5252452547%_)
                              (let ((_%$%e5252552550%_
                                     (gx#syntax-e _%$%tl5252452547%_)))
                                (let ((_%$%hd5252652554%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5252552550%_)))
                                      (_%$%tl5252752557%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5252552550%_))))
                                  (if (gx#stx-null? _%$%tl5252752557%_)
                                      (cons (gx#datum->syntax '#f 'or)
                                            (cons _%$%hd5252652554%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'nil-dereference!)
                                                              (cons _%$%hd5252652554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g5251952533%_ _%$%g5252052537%_))))
                              (_%$%g5251952533%_ _%$%g5252052537%_))))
                      (_%$%g5251952533%_ _%$%g5252052537%_)))))
          (_%$%g5251852574%_ _%$stx52515%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx52578%_)
        (let* ((_%$%g5258152604%_
                (lambda (_%$%g5258252600%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5258252600%_)))
               (_%$%g5258052728%_
                (lambda (_%$%g5258252608%_)
                  (if (gx#stx-pair? _%$%g5258252608%_)
                      (let ((_%$%e5258752611%_
                             (gx#syntax-e _%$%g5258252608%_)))
                        (let ((_%$%hd5258852615%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5258752611%_)))
                              (_%$%tl5258952618%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5258752611%_))))
                          (if (gx#stx-pair? _%$%tl5258952618%_)
                              (let ((_%$%e5259052621%_
                                     (gx#syntax-e _%$%tl5258952618%_)))
                                (let ((_%$%hd5259152625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5259052621%_)))
                                      (_%$%tl5259252628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5259052621%_))))
                                  (if (gx#stx-pair? _%$%tl5259252628%_)
                                      (let ((_%$%e5259352631%_
                                             (gx#syntax-e _%$%tl5259252628%_)))
                                        (let ((_%$%hd5259452635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5259352631%_)))
                                              (_%$%tl5259552638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5259352631%_))))
                                          (if (gx#stx-pair? _%$%tl5259552638%_)
                                              (let ((_%$%e5259652641%_
                                                     (gx#syntax-e
                                                      _%$%tl5259552638%_)))
                                                (let ((_%$%hd5259752645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5259652641%_)))
                                                      (_%$%tl5259852648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5259652641%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5259852648%_)
                                                      (let* ((_%$%g5267552683%_
                                                              (lambda (_%$%g5267652679%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g5267652679%_)))
                     (_%$%g5267452702%_
                      (lambda (_%$%g5267652687%_)
                        (cons (gx#datum->syntax '#f 'begin-annotation)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '@contract-violation)
                                          (cons _%$%g5267652687%_
                                                (cons _%$%hd5259452635%_
                                                      (cons _%$%hd5259752645%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax '#f 'abort!)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'raise-contract-violation-error)
                                                            (cons '"contract violation"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'context:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%$%g5267652687%_ '()))
                                      (cons 'contract:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%$%hd5259452635%_
                                                              '()))
                                                  (cons 'value:
                                                        (cons _%$%hd5259752645%_
                                                              '()))))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
                (_%$%g5267452702%_
                 (let ((_%$e52714%_
                        (let ((_%$e52706%_ (gx#stx-source _%$%hd5259152625%_)))
                          (if _%$e52706%_
                              _%$e52706%_
                              (let ((_%$e52710%_ (gx#stx-source _%stx52578%_)))
                                (if _%$e52710%_
                                    _%$e52710%_
                                    (gx#stx-source _%$%hd5258852615%_)))))))
                   (if _%$e52714%_
                       (call-with-output-string
                        '""
                        (lambda (_%$%g5272052722%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e52714%_
                             '#t
                             _%$%g5272052722%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%$%g5258152604%_ _%$%g5258252608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5258152604%_
                                               _%$%g5258252608%_))))
                                      (_%$%g5258152604%_ _%$%g5258252608%_))))
                              (_%$%g5258152604%_ _%$%g5258252608%_))))
                      (_%$%g5258152604%_ _%$%g5258252608%_)))))
          (_%$%g5258052728%_ _%stx52578%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#runtime-contract-violation!|
      (lambda (_%stx52732%_)
        (let* ((_%$%g5273552758%_
                (lambda (_%$%g5273652754%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5273652754%_)))
               (_%$%g5273452882%_
                (lambda (_%$%g5273652762%_)
                  (if (gx#stx-pair? _%$%g5273652762%_)
                      (let ((_%$%e5274152765%_
                             (gx#syntax-e _%$%g5273652762%_)))
                        (let ((_%$%hd5274252769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5274152765%_)))
                              (_%$%tl5274352772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5274152765%_))))
                          (if (gx#stx-pair? _%$%tl5274352772%_)
                              (let ((_%$%e5274452775%_
                                     (gx#syntax-e _%$%tl5274352772%_)))
                                (let ((_%$%hd5274552779%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5274452775%_)))
                                      (_%$%tl5274652782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5274452775%_))))
                                  (if (gx#stx-pair? _%$%tl5274652782%_)
                                      (let ((_%$%e5274752785%_
                                             (gx#syntax-e _%$%tl5274652782%_)))
                                        (let ((_%$%hd5274852789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5274752785%_)))
                                              (_%$%tl5274952792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5274752785%_))))
                                          (if (gx#stx-pair? _%$%tl5274952792%_)
                                              (let ((_%$%e5275052795%_
                                                     (gx#syntax-e
                                                      _%$%tl5274952792%_)))
                                                (let ((_%$%hd5275152799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5275052795%_)))
                                                      (_%$%tl5275252802%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5275052795%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5275252802%_)
                                                      (let* ((_%$%g5282952837%_
                                                              (lambda (_%$%g5283052833%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g5283052833%_)))
                     (_%$%g5282852856%_
                      (lambda (_%$%g5283052841%_)
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
                          (cons _%$%g5283052841%_ '()))
                    (cons 'contract:
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%$%hd5274852789%_ '()))
                                (cons 'value:
                                      (cons _%$%hd5275152799%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
                (_%$%g5282852856%_
                 (let ((_%$e52868%_
                        (let ((_%$e52860%_ (gx#stx-source _%$%hd5274552779%_)))
                          (if _%$e52860%_
                              _%$e52860%_
                              (let ((_%$e52864%_ (gx#stx-source _%stx52732%_)))
                                (if _%$e52864%_
                                    _%$e52864%_
                                    (gx#stx-source _%$%hd5274252769%_)))))))
                   (if _%$e52868%_
                       (call-with-output-string
                        '""
                        (lambda (_%$%g5287452876%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e52868%_
                             '#t
                             _%$%g5287452876%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%$%g5273552758%_ _%$%g5273652762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5273552758%_
                                               _%$%g5273652762%_))))
                                      (_%$%g5273552758%_ _%$%g5273652762%_))))
                              (_%$%g5273552758%_ _%$%g5273652762%_))))
                      (_%$%g5273552758%_ _%$%g5273652762%_)))))
          (_%$%g5273452882%_ _%stx52732%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx52886%_)
        (let* ((_%$%g5288952904%_
                (lambda (_%$%g5289052900%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5289052900%_)))
               (_%$%g5288853000%_
                (lambda (_%$%g5289052908%_)
                  (if (gx#stx-pair? _%$%g5289052908%_)
                      (let ((_%$%e5289352911%_
                             (gx#syntax-e _%$%g5289052908%_)))
                        (let ((_%$%hd5289452915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5289352911%_)))
                              (_%$%tl5289552918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5289352911%_))))
                          (if (gx#stx-pair? _%$%tl5289552918%_)
                              (let ((_%$%e5289652921%_
                                     (gx#syntax-e _%$%tl5289552918%_)))
                                (let ((_%$%hd5289752925%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5289652921%_)))
                                      (_%$%tl5289852928%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5289652921%_))))
                                  (if (gx#stx-null? _%$%tl5289852928%_)
                                      (let* ((_%$%g5294752955%_
                                              (lambda (_%$%g5294852951%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5294852951%_)))
                                             (_%$%g5294652974%_
                                              (lambda (_%$%g5294852959%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'abort!)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'raise-contract-violation-error)
                          (cons '"nil (#f) derefence"
                                (cons 'context:
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%$%g5294852959%_ '()))
                                            (cons 'contract:
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'check-nil!)
                                  (cons _%$%hd5289752925%_ '()))
                            '()))
                (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g5294652974%_
                                         (let ((_%$e52986%_
                                                (let ((_%$e52978%_
                                                       (gx#stx-source
                                                        _%$%hd5289752925%_)))
                                                  (if _%$e52978%_
                                                      _%$e52978%_
                                                      (let ((_%$e52982%_
                                                             (gx#stx-source
                                                              _%stx52886%_)))
                                                        (if _%$e52982%_
                                                            _%$e52982%_
                                                            (gx#stx-source
                                                             _%$%hd5289452915%_)))))))
                                           (if _%$e52986%_
                                               (call-with-output-string
                                                '""
                                                (lambda (_%$%g5299252994%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (##display-locat
                                                     _%$e52986%_
                                                     '#t
                                                     _%$%g5299252994%_))))
                                               (gx#expander-context-id
                                                (gx#core-context-top))))))
                                      (_%$%g5288952904%_ _%$%g5289052908%_))))
                              (_%$%g5288952904%_ _%$%g5289052908%_))))
                      (_%$%g5288952904%_ _%$%g5289052908%_)))))
          (_%$%g5288853000%_ _%stx52886%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx53004%_)
        (let* ((_%$%g5300853022%_
                (lambda (_%$%g5300953018%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5300953018%_)))
               (_%$%g5300753063%_
                (lambda (_%$%g5300953026%_)
                  (if (gx#stx-pair? _%$%g5300953026%_)
                      (let ((_%$%e5301153029%_
                             (gx#syntax-e _%$%g5300953026%_)))
                        (let ((_%$%hd5301253033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5301153029%_)))
                              (_%$%tl5301353036%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5301153029%_))))
                          (if (gx#stx-pair? _%$%tl5301353036%_)
                              (let ((_%$%e5301453039%_
                                     (gx#syntax-e _%$%tl5301353036%_)))
                                (let ((_%$%hd5301553043%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5301453039%_)))
                                      (_%$%tl5301653046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5301453039%_))))
                                  (if (gx#stx-null? _%$%tl5301653046%_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'begin-annotation)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '@abort)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin)
                                                              (cons _%$%hd5301553043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'void) '())
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g5300853022%_ _%$%g5300953026%_))))
                              (_%$%g5300853022%_ _%$%g5300953026%_))))
                      (_%$%g5300853022%_ _%$%g5300953026%_)))))
          (_%$%g5300753063%_ _%$stx53004%_))))))
