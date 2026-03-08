(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx57478%_)
      (let* ((_%g5748257496%_
              (lambda (_%g5748357492%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5748357492%_)))
             (_%g5748157538%_
              (lambda (_%g5748357500%_)
                (if (gx#stx-pair? _%g5748357500%_)
                    (let ((_%e5748557503%_ (gx#syntax-e _%g5748357500%_)))
                      (let ((_%hd5748657507%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5748557503%_)))
                            (_%tl5748757510%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5748557503%_))))
                        (if (gx#stx-pair? _%tl5748757510%_)
                            (let ((_%e5748857513%_
                                   (gx#syntax-e _%tl5748757510%_)))
                              (let ((_%hd5748957517%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5748857513%_)))
                                    (_%tl5749057520%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5748857513%_))))
                                (if (gx#stx-null? _%tl5749057520%_)
                                    ((lambda (_%g5748457523%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%g5748457523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5748957517%_)
                                    (_%g5748257496%_ _%g5748357500%_))))
                            (_%g5748257496%_ _%g5748357500%_))))
                    (_%g5748257496%_ _%g5748357500%_)))))
        (_%g5748157538%_ _%$stx57478%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx57542%_)
      (let* ((_%g5754657564%_
              (lambda (_%g5754757560%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5754757560%_)))
             (_%g5754557619%_
              (lambda (_%g5754757568%_)
                (if (gx#stx-pair? _%g5754757568%_)
                    (let ((_%e5755057571%_ (gx#syntax-e _%g5754757568%_)))
                      (let ((_%hd5755157575%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5755057571%_)))
                            (_%tl5755257578%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5755057571%_))))
                        (if (gx#stx-pair? _%tl5755257578%_)
                            (let ((_%e5755357581%_
                                   (gx#syntax-e _%tl5755257578%_)))
                              (let ((_%hd5755457585%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5755357581%_)))
                                    (_%tl5755557588%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5755357581%_))))
                                (if (gx#stx-pair? _%tl5755557588%_)
                                    (let ((_%e5755657591%_
                                           (gx#syntax-e _%tl5755557588%_)))
                                      (let ((_%hd5755757595%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5755657591%_)))
                                            (_%tl5755857598%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5755657591%_))))
                                        (if (gx#stx-null? _%tl5755857598%_)
                                            ((lambda (_%g5754857601%_
                                                      _%g5754957603%_)
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
                                                       (cons _%g5754957603%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5754857601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5755757595%_
                                             _%hd5755457585%_)
                                            (_%g5754657564%_
                                             _%g5754757568%_))))
                                    (_%g5754657564%_ _%g5754757568%_))))
                            (_%g5754657564%_ _%g5754757568%_))))
                    (_%g5754657564%_ _%g5754757568%_)))))
        (_%g5754557619%_ _%$stx57542%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx57623%_)
      (let* ((_%g5762757645%_
              (lambda (_%g5762857641%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5762857641%_)))
             (_%g5762657700%_
              (lambda (_%g5762857649%_)
                (if (gx#stx-pair? _%g5762857649%_)
                    (let ((_%e5763157652%_ (gx#syntax-e _%g5762857649%_)))
                      (let ((_%hd5763257656%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5763157652%_)))
                            (_%tl5763357659%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5763157652%_))))
                        (if (gx#stx-pair? _%tl5763357659%_)
                            (let ((_%e5763457662%_
                                   (gx#syntax-e _%tl5763357659%_)))
                              (let ((_%hd5763557666%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5763457662%_)))
                                    (_%tl5763657669%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5763457662%_))))
                                (if (gx#stx-pair? _%tl5763657669%_)
                                    (let ((_%e5763757672%_
                                           (gx#syntax-e _%tl5763657669%_)))
                                      (let ((_%hd5763857676%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5763757672%_)))
                                            (_%tl5763957679%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5763757672%_))))
                                        (if (gx#stx-null? _%tl5763957679%_)
                                            ((lambda (_%g5762957682%_
                                                      _%g5763057684%_)
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
                                                 (cons _%g5763057684%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5762957682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5763857676%_
                                             _%hd5763557666%_)
                                            (_%g5762757645%_
                                             _%g5762857649%_))))
                                    (_%g5762757645%_ _%g5762857649%_))))
                            (_%g5762757645%_ _%g5762857649%_))))
                    (_%g5762757645%_ _%g5762857649%_)))))
        (_%g5762657700%_ _%$stx57623%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx57704%_)
      (let* ((_%g5770857722%_
              (lambda (_%g5770957718%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5770957718%_)))
             (_%g5770757763%_
              (lambda (_%g5770957726%_)
                (if (gx#stx-pair? _%g5770957726%_)
                    (let ((_%e5771157729%_ (gx#syntax-e _%g5770957726%_)))
                      (let ((_%hd5771257733%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5771157729%_)))
                            (_%tl5771357736%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5771157729%_))))
                        (if (gx#stx-pair? _%tl5771357736%_)
                            (let ((_%e5771457739%_
                                   (gx#syntax-e _%tl5771357736%_)))
                              (let ((_%hd5771557743%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5771457739%_)))
                                    (_%tl5771657746%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5771457739%_))))
                                (if (gx#stx-null? _%tl5771657746%_)
                                    ((lambda (_%g5771057749%_)
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
                                         (cons _%g5771057749%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5771557743%_)
                                    (_%g5770857722%_ _%g5770957726%_))))
                            (_%g5770857722%_ _%g5770957726%_))))
                    (_%g5770857722%_ _%g5770957726%_)))))
        (_%g5770757763%_ _%$stx57704%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx57767%_)
      (let* ((_%g5777157791%_
              (lambda (_%g5777257787%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5777257787%_)))
             (_%g5777057860%_
              (lambda (_%g5777257795%_)
                (if (gx#stx-pair? _%g5777257795%_)
                    (let ((_%e5777457798%_ (gx#syntax-e _%g5777257795%_)))
                      (let ((_%hd5777557802%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5777457798%_)))
                            (_%tl5777657805%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5777457798%_))))
                        (if (gx#stx-pair/null? _%tl5777657805%_)
                            (let ((_g100872_
                                   (gx#syntax-split-splice
                                    _%tl5777657805%_
                                    '0)))
                              (begin
                                (let ((_g100873_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g100872_)
                                             (##values-length _g100872_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g100873_ 2)))
                                      (error "Context expects 2 values"
                                             _g100873_)))
                                (let ((_%target5777757808%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g100872_ 0)))
                                      (_%tl5777957811%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g100872_ 1))))
                                  (if (gx#stx-null? _%tl5777957811%_)
                                      (letrec ((_%loop5778057814%_
                                                (lambda (_%hd5777857818%_
                                                         _%val5778457821%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5777857818%_)
                                                      (let ((_%e5778157823%_
                                                             (gx#syntax-e
                                                              _%hd5777857818%_)))
                                                        (let ((_%lp-hd5778257827%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5778157823%_)))
                      (_%lp-tl5778357830%_
                       (let () (declare (not safe)) (##cdr _%e5778157823%_))))
                  (_%loop5778057814%_
                   _%lp-tl5778357830%_
                   (cons _%lp-hd5778257827%_ _%val5778457821%_))))
              (let ((_%val5778557833%_ (reverse _%val5778457821%_)))
                ((lambda (_%g5777357836%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%g5785157854%_
                                                           _%g5785257857%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%g5785157854%_ '()))
                                    '())))
                  _%g5785257857%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g5777357836%_))
                                     '()))))
                 _%val5778557833%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop5778057814%_
                                         _%target5777757808%_
                                         '()))
                                      (_%g5777157791%_ _%g5777257795%_)))))
                            (_%g5777157791%_ _%g5777257795%_))))
                    (_%g5777157791%_ _%g5777257795%_)))))
        (_%g5777057860%_ _%$stx57767%_)))))
