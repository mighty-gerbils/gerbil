(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx52072%_)
      (let* ((_%g5207652090%_
              (lambda (_%g5207752086%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5207752086%_)))
             (_%g5207552132%_
              (lambda (_%g5207752094%_)
                (if (gx#stx-pair? _%g5207752094%_)
                    (let ((_%e5207952097%_ (gx#syntax-e _%g5207752094%_)))
                      (let ((_%hd5208052101%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5207952097%_)))
                            (_%tl5208152104%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5207952097%_))))
                        (if (gx#stx-pair? _%tl5208152104%_)
                            (let ((_%e5208252107%_
                                   (gx#syntax-e _%tl5208152104%_)))
                              (let ((_%hd5208352111%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5208252107%_)))
                                    (_%tl5208452114%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5208252107%_))))
                                (if (gx#stx-null? _%tl5208452114%_)
                                    ((lambda (_%L52117%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L52117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5208352111%_)
                                    (_%g5207652090%_ _%g5207752094%_))))
                            (_%g5207652090%_ _%g5207752094%_))))
                    (_%g5207652090%_ _%g5207752094%_)))))
        (_%g5207552132%_ _%$stx52072%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx52136%_)
      (let* ((_%g5214052158%_
              (lambda (_%g5214152154%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5214152154%_)))
             (_%g5213952213%_
              (lambda (_%g5214152162%_)
                (if (gx#stx-pair? _%g5214152162%_)
                    (let ((_%e5214452165%_ (gx#syntax-e _%g5214152162%_)))
                      (let ((_%hd5214552169%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5214452165%_)))
                            (_%tl5214652172%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5214452165%_))))
                        (if (gx#stx-pair? _%tl5214652172%_)
                            (let ((_%e5214752175%_
                                   (gx#syntax-e _%tl5214652172%_)))
                              (let ((_%hd5214852179%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5214752175%_)))
                                    (_%tl5214952182%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5214752175%_))))
                                (if (gx#stx-pair? _%tl5214952182%_)
                                    (let ((_%e5215052185%_
                                           (gx#syntax-e _%tl5214952182%_)))
                                      (let ((_%hd5215152189%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5215052185%_)))
                                            (_%tl5215252192%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5215052185%_))))
                                        (if (gx#stx-null? _%tl5215252192%_)
                                            ((lambda (_%L52195%_ _%L52197%_)
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
                                                       (cons _%L52197%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5215152189%_
                                             _%hd5214852179%_)
                                            (_%g5214052158%_
                                             _%g5214152162%_))))
                                    (_%g5214052158%_ _%g5214152162%_))))
                            (_%g5214052158%_ _%g5214152162%_))))
                    (_%g5214052158%_ _%g5214152162%_)))))
        (_%g5213952213%_ _%$stx52136%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx52217%_)
      (let* ((_%g5222152239%_
              (lambda (_%g5222252235%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5222252235%_)))
             (_%g5222052294%_
              (lambda (_%g5222252243%_)
                (if (gx#stx-pair? _%g5222252243%_)
                    (let ((_%e5222552246%_ (gx#syntax-e _%g5222252243%_)))
                      (let ((_%hd5222652250%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5222552246%_)))
                            (_%tl5222752253%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5222552246%_))))
                        (if (gx#stx-pair? _%tl5222752253%_)
                            (let ((_%e5222852256%_
                                   (gx#syntax-e _%tl5222752253%_)))
                              (let ((_%hd5222952260%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5222852256%_)))
                                    (_%tl5223052263%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5222852256%_))))
                                (if (gx#stx-pair? _%tl5223052263%_)
                                    (let ((_%e5223152266%_
                                           (gx#syntax-e _%tl5223052263%_)))
                                      (let ((_%hd5223252270%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5223152266%_)))
                                            (_%tl5223352273%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5223152266%_))))
                                        (if (gx#stx-null? _%tl5223352273%_)
                                            ((lambda (_%L52276%_ _%L52278%_)
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
                                                 (cons _%L52278%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5223252270%_
                                             _%hd5222952260%_)
                                            (_%g5222152239%_
                                             _%g5222252243%_))))
                                    (_%g5222152239%_ _%g5222252243%_))))
                            (_%g5222152239%_ _%g5222252243%_))))
                    (_%g5222152239%_ _%g5222252243%_)))))
        (_%g5222052294%_ _%$stx52217%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx52298%_)
      (let* ((_%g5230252316%_
              (lambda (_%g5230352312%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5230352312%_)))
             (_%g5230152357%_
              (lambda (_%g5230352320%_)
                (if (gx#stx-pair? _%g5230352320%_)
                    (let ((_%e5230552323%_ (gx#syntax-e _%g5230352320%_)))
                      (let ((_%hd5230652327%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5230552323%_)))
                            (_%tl5230752330%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5230552323%_))))
                        (if (gx#stx-pair? _%tl5230752330%_)
                            (let ((_%e5230852333%_
                                   (gx#syntax-e _%tl5230752330%_)))
                              (let ((_%hd5230952337%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5230852333%_)))
                                    (_%tl5231052340%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5230852333%_))))
                                (if (gx#stx-null? _%tl5231052340%_)
                                    ((lambda (_%L52343%_)
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
                                         (cons _%L52343%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5230952337%_)
                                    (_%g5230252316%_ _%g5230352320%_))))
                            (_%g5230252316%_ _%g5230352320%_))))
                    (_%g5230252316%_ _%g5230352320%_)))))
        (_%g5230152357%_ _%$stx52298%_)))))
