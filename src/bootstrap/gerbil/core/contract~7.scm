(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx51272%_)
      (let* ((_%g5127651290%_
              (lambda (_%g5127751286%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5127751286%_)))
             (_%g5127551332%_
              (lambda (_%g5127751294%_)
                (if (gx#stx-pair? _%g5127751294%_)
                    (let ((_%e5128151297%_ (gx#syntax-e _%g5127751294%_)))
                      (let ((_%hd5128051301%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5128151297%_)))
                            (_%tl5127951304%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5128151297%_))))
                        (if (gx#stx-pair? _%tl5127951304%_)
                            (let ((_%e5128451307%_
                                   (gx#syntax-e _%tl5127951304%_)))
                              (let ((_%hd5128351311%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5128451307%_)))
                                    (_%tl5128251314%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5128451307%_))))
                                (if (gx#stx-null? _%tl5128251314%_)
                                    ((lambda (_%L51317%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L51317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5128351311%_)
                                    (_%g5127651290%_ _%g5127751294%_))))
                            (_%g5127651290%_ _%g5127751294%_))))
                    (_%g5127651290%_ _%g5127751294%_)))))
        (_%g5127551332%_ _%$stx51272%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx51336%_)
      (let* ((_%g5134051358%_
              (lambda (_%g5134151354%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5134151354%_)))
             (_%g5133951413%_
              (lambda (_%g5134151362%_)
                (if (gx#stx-pair? _%g5134151362%_)
                    (let ((_%e5134651365%_ (gx#syntax-e _%g5134151362%_)))
                      (let ((_%hd5134551369%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5134651365%_)))
                            (_%tl5134451372%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5134651365%_))))
                        (if (gx#stx-pair? _%tl5134451372%_)
                            (let ((_%e5134951375%_
                                   (gx#syntax-e _%tl5134451372%_)))
                              (let ((_%hd5134851379%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5134951375%_)))
                                    (_%tl5134751382%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5134951375%_))))
                                (if (gx#stx-pair? _%tl5134751382%_)
                                    (let ((_%e5135251385%_
                                           (gx#syntax-e _%tl5134751382%_)))
                                      (let ((_%hd5135151389%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5135251385%_)))
                                            (_%tl5135051392%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5135251385%_))))
                                        (if (gx#stx-null? _%tl5135051392%_)
                                            ((lambda (_%L51395%_ _%L51397%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx>=)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'o)
                                                       (cons _%L51397%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L51395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5135151389%_
                                             _%hd5134851379%_)
                                            (_%g5134051358%_
                                             _%g5134151362%_))))
                                    (_%g5134051358%_ _%g5134151362%_))))
                            (_%g5134051358%_ _%g5134151362%_))))
                    (_%g5134051358%_ _%g5134151362%_)))))
        (_%g5133951413%_ _%$stx51336%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx51417%_)
      (let* ((_%g5142151439%_
              (lambda (_%g5142251435%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5142251435%_)))
             (_%g5142051494%_
              (lambda (_%g5142251443%_)
                (if (gx#stx-pair? _%g5142251443%_)
                    (let ((_%e5142751446%_ (gx#syntax-e _%g5142251443%_)))
                      (let ((_%hd5142651450%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5142751446%_)))
                            (_%tl5142551453%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5142751446%_))))
                        (if (gx#stx-pair? _%tl5142551453%_)
                            (let ((_%e5143051456%_
                                   (gx#syntax-e _%tl5142551453%_)))
                              (let ((_%hd5142951460%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5143051456%_)))
                                    (_%tl5142851463%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5143051456%_))))
                                (if (gx#stx-pair? _%tl5142851463%_)
                                    (let ((_%e5143351466%_
                                           (gx#syntax-e _%tl5142851463%_)))
                                      (let ((_%hd5143251470%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5143351466%_)))
                                            (_%tl5143151473%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5143351466%_))))
                                        (if (gx#stx-null? _%tl5143151473%_)
                                            ((lambda (_%L51476%_ _%L51478%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx<=)
                                                 (cons _%L51478%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L51476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5143251470%_
                                             _%hd5142951460%_)
                                            (_%g5142151439%_
                                             _%g5142251443%_))))
                                    (_%g5142151439%_ _%g5142251443%_))))
                            (_%g5142151439%_ _%g5142251443%_))))
                    (_%g5142151439%_ _%g5142251443%_)))))
        (_%g5142051494%_ _%$stx51417%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx51498%_)
      (let* ((_%g5150251516%_
              (lambda (_%g5150351512%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5150351512%_)))
             (_%g5150151557%_
              (lambda (_%g5150351520%_)
                (if (gx#stx-pair? _%g5150351520%_)
                    (let ((_%e5150751523%_ (gx#syntax-e _%g5150351520%_)))
                      (let ((_%hd5150651527%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5150751523%_)))
                            (_%tl5150551530%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5150751523%_))))
                        (if (gx#stx-pair? _%tl5150551530%_)
                            (let ((_%e5151051533%_
                                   (gx#syntax-e _%tl5150551530%_)))
                              (let ((_%hd5150951537%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5151051533%_)))
                                    (_%tl5150851540%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5151051533%_))))
                                (if (gx#stx-null? _%tl5150851540%_)
                                    ((lambda (_%L51543%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'o)
                                                         '())
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'and)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'list?)
                                   (cons (gx#datum->syntax '#f 'o) '()))
                             (cons (cons (gx#datum->syntax '#f 'andmap)
                                         (cons _%L51543%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5150951537%_)
                                    (_%g5150251516%_ _%g5150351520%_))))
                            (_%g5150251516%_ _%g5150351520%_))))
                    (_%g5150251516%_ _%g5150351520%_)))))
        (_%g5150151557%_ _%$stx51498%_)))))
