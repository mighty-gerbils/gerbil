(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx55184%_)
      (let* ((_%g5518855202%_
              (lambda (_%g5518955198%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5518955198%_)))
             (_%g5518755244%_
              (lambda (_%g5518955206%_)
                (if (gx#stx-pair? _%g5518955206%_)
                    (let ((_%e5519155209%_ (gx#syntax-e _%g5518955206%_)))
                      (let ((_%hd5519255213%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5519155209%_)))
                            (_%tl5519355216%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5519155209%_))))
                        (if (gx#stx-pair? _%tl5519355216%_)
                            (let ((_%e5519455219%_
                                   (gx#syntax-e _%tl5519355216%_)))
                              (let ((_%hd5519555223%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5519455219%_)))
                                    (_%tl5519655226%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5519455219%_))))
                                (if (gx#stx-null? _%tl5519655226%_)
                                    ((lambda (_%L55229%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L55229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5519555223%_)
                                    (_%g5518855202%_ _%g5518955206%_))))
                            (_%g5518855202%_ _%g5518955206%_))))
                    (_%g5518855202%_ _%g5518955206%_)))))
        (_%g5518755244%_ _%$stx55184%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx55248%_)
      (let* ((_%g5525255270%_
              (lambda (_%g5525355266%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5525355266%_)))
             (_%g5525155325%_
              (lambda (_%g5525355274%_)
                (if (gx#stx-pair? _%g5525355274%_)
                    (let ((_%e5525655277%_ (gx#syntax-e _%g5525355274%_)))
                      (let ((_%hd5525755281%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5525655277%_)))
                            (_%tl5525855284%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5525655277%_))))
                        (if (gx#stx-pair? _%tl5525855284%_)
                            (let ((_%e5525955287%_
                                   (gx#syntax-e _%tl5525855284%_)))
                              (let ((_%hd5526055291%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5525955287%_)))
                                    (_%tl5526155294%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5525955287%_))))
                                (if (gx#stx-pair? _%tl5526155294%_)
                                    (let ((_%e5526255297%_
                                           (gx#syntax-e _%tl5526155294%_)))
                                      (let ((_%hd5526355301%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5526255297%_)))
                                            (_%tl5526455304%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5526255297%_))))
                                        (if (gx#stx-null? _%tl5526455304%_)
                                            ((lambda (_%L55307%_ _%L55309%_)
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
                                                       (cons _%L55309%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L55307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5526355301%_
                                             _%hd5526055291%_)
                                            (_%g5525255270%_
                                             _%g5525355274%_))))
                                    (_%g5525255270%_ _%g5525355274%_))))
                            (_%g5525255270%_ _%g5525355274%_))))
                    (_%g5525255270%_ _%g5525355274%_)))))
        (_%g5525155325%_ _%$stx55248%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx55329%_)
      (let* ((_%g5533355351%_
              (lambda (_%g5533455347%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5533455347%_)))
             (_%g5533255406%_
              (lambda (_%g5533455355%_)
                (if (gx#stx-pair? _%g5533455355%_)
                    (let ((_%e5533755358%_ (gx#syntax-e _%g5533455355%_)))
                      (let ((_%hd5533855362%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5533755358%_)))
                            (_%tl5533955365%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5533755358%_))))
                        (if (gx#stx-pair? _%tl5533955365%_)
                            (let ((_%e5534055368%_
                                   (gx#syntax-e _%tl5533955365%_)))
                              (let ((_%hd5534155372%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5534055368%_)))
                                    (_%tl5534255375%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5534055368%_))))
                                (if (gx#stx-pair? _%tl5534255375%_)
                                    (let ((_%e5534355378%_
                                           (gx#syntax-e _%tl5534255375%_)))
                                      (let ((_%hd5534455382%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5534355378%_)))
                                            (_%tl5534555385%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5534355378%_))))
                                        (if (gx#stx-null? _%tl5534555385%_)
                                            ((lambda (_%L55388%_ _%L55390%_)
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
                                                 (cons _%L55390%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L55388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5534455382%_
                                             _%hd5534155372%_)
                                            (_%g5533355351%_
                                             _%g5533455355%_))))
                                    (_%g5533355351%_ _%g5533455355%_))))
                            (_%g5533355351%_ _%g5533455355%_))))
                    (_%g5533355351%_ _%g5533455355%_)))))
        (_%g5533255406%_ _%$stx55329%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx55410%_)
      (let* ((_%g5541455428%_
              (lambda (_%g5541555424%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5541555424%_)))
             (_%g5541355469%_
              (lambda (_%g5541555432%_)
                (if (gx#stx-pair? _%g5541555432%_)
                    (let ((_%e5541755435%_ (gx#syntax-e _%g5541555432%_)))
                      (let ((_%hd5541855439%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5541755435%_)))
                            (_%tl5541955442%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5541755435%_))))
                        (if (gx#stx-pair? _%tl5541955442%_)
                            (let ((_%e5542055445%_
                                   (gx#syntax-e _%tl5541955442%_)))
                              (let ((_%hd5542155449%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5542055445%_)))
                                    (_%tl5542255452%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5542055445%_))))
                                (if (gx#stx-null? _%tl5542255452%_)
                                    ((lambda (_%L55455%_)
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
                                         (cons _%L55455%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5542155449%_)
                                    (_%g5541455428%_ _%g5541555432%_))))
                            (_%g5541455428%_ _%g5541555432%_))))
                    (_%g5541455428%_ _%g5541555432%_)))))
        (_%g5541355469%_ _%$stx55410%_)))))
