(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx51248%_)
      (let* ((_%g5125251266%_
              (lambda (_%g5125351262%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5125351262%_)))
             (_%g5125151308%_
              (lambda (_%g5125351270%_)
                (if (gx#stx-pair? _%g5125351270%_)
                    (let ((_%e5125751273%_ (gx#syntax-e _%g5125351270%_)))
                      (let ((_%hd5125651277%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5125751273%_)))
                            (_%tl5125551280%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5125751273%_))))
                        (if (gx#stx-pair? _%tl5125551280%_)
                            (let ((_%e5126051283%_
                                   (gx#syntax-e _%tl5125551280%_)))
                              (let ((_%hd5125951287%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5126051283%_)))
                                    (_%tl5125851290%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5126051283%_))))
                                (if (gx#stx-null? _%tl5125851290%_)
                                    ((lambda (_%L51293%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L51293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5125951287%_)
                                    (_%g5125251266%_ _%g5125351270%_))))
                            (_%g5125251266%_ _%g5125351270%_))))
                    (_%g5125251266%_ _%g5125351270%_)))))
        (_%g5125151308%_ _%$stx51248%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx51312%_)
      (let* ((_%g5131651334%_
              (lambda (_%g5131751330%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5131751330%_)))
             (_%g5131551389%_
              (lambda (_%g5131751338%_)
                (if (gx#stx-pair? _%g5131751338%_)
                    (let ((_%e5132251341%_ (gx#syntax-e _%g5131751338%_)))
                      (let ((_%hd5132151345%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5132251341%_)))
                            (_%tl5132051348%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5132251341%_))))
                        (if (gx#stx-pair? _%tl5132051348%_)
                            (let ((_%e5132551351%_
                                   (gx#syntax-e _%tl5132051348%_)))
                              (let ((_%hd5132451355%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5132551351%_)))
                                    (_%tl5132351358%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5132551351%_))))
                                (if (gx#stx-pair? _%tl5132351358%_)
                                    (let ((_%e5132851361%_
                                           (gx#syntax-e _%tl5132351358%_)))
                                      (let ((_%hd5132751365%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5132851361%_)))
                                            (_%tl5132651368%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5132851361%_))))
                                        (if (gx#stx-null? _%tl5132651368%_)
                                            ((lambda (_%L51371%_ _%L51373%_)
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
                                                       (cons _%L51373%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L51371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5132751365%_
                                             _%hd5132451355%_)
                                            (_%g5131651334%_
                                             _%g5131751338%_))))
                                    (_%g5131651334%_ _%g5131751338%_))))
                            (_%g5131651334%_ _%g5131751338%_))))
                    (_%g5131651334%_ _%g5131751338%_)))))
        (_%g5131551389%_ _%$stx51312%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx51393%_)
      (let* ((_%g5139751415%_
              (lambda (_%g5139851411%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5139851411%_)))
             (_%g5139651470%_
              (lambda (_%g5139851419%_)
                (if (gx#stx-pair? _%g5139851419%_)
                    (let ((_%e5140351422%_ (gx#syntax-e _%g5139851419%_)))
                      (let ((_%hd5140251426%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5140351422%_)))
                            (_%tl5140151429%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5140351422%_))))
                        (if (gx#stx-pair? _%tl5140151429%_)
                            (let ((_%e5140651432%_
                                   (gx#syntax-e _%tl5140151429%_)))
                              (let ((_%hd5140551436%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5140651432%_)))
                                    (_%tl5140451439%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5140651432%_))))
                                (if (gx#stx-pair? _%tl5140451439%_)
                                    (let ((_%e5140951442%_
                                           (gx#syntax-e _%tl5140451439%_)))
                                      (let ((_%hd5140851446%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5140951442%_)))
                                            (_%tl5140751449%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5140951442%_))))
                                        (if (gx#stx-null? _%tl5140751449%_)
                                            ((lambda (_%L51452%_ _%L51454%_)
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
                                                 (cons _%L51454%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L51452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5140851446%_
                                             _%hd5140551436%_)
                                            (_%g5139751415%_
                                             _%g5139851419%_))))
                                    (_%g5139751415%_ _%g5139851419%_))))
                            (_%g5139751415%_ _%g5139851419%_))))
                    (_%g5139751415%_ _%g5139851419%_)))))
        (_%g5139651470%_ _%$stx51393%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx51474%_)
      (let* ((_%g5147851492%_
              (lambda (_%g5147951488%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5147951488%_)))
             (_%g5147751533%_
              (lambda (_%g5147951496%_)
                (if (gx#stx-pair? _%g5147951496%_)
                    (let ((_%e5148351499%_ (gx#syntax-e _%g5147951496%_)))
                      (let ((_%hd5148251503%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5148351499%_)))
                            (_%tl5148151506%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5148351499%_))))
                        (if (gx#stx-pair? _%tl5148151506%_)
                            (let ((_%e5148651509%_
                                   (gx#syntax-e _%tl5148151506%_)))
                              (let ((_%hd5148551513%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5148651509%_)))
                                    (_%tl5148451516%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5148651509%_))))
                                (if (gx#stx-null? _%tl5148451516%_)
                                    ((lambda (_%L51519%_)
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
                                         (cons _%L51519%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5148551513%_)
                                    (_%g5147851492%_ _%g5147951496%_))))
                            (_%g5147851492%_ _%g5147951496%_))))
                    (_%g5147851492%_ _%g5147951496%_)))))
        (_%g5147751533%_ _%$stx51474%_)))))
