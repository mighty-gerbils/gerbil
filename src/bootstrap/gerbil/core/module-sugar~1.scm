(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx46354%_)
      (let* ((_%__stx4913849139%_ _%$stx46354%_)
             (_%g4635946378%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4913849139%_))))
        (let ((_%__kont4914149142%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4914349144%_
               (lambda (_%g4636446405%_ _%g4636546407%_ _%g4636646408%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%g4636546407%_
                                   (cons (cons _%g4636646408%_ _%g4636446405%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%g4636546407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4913849139%_)
              (let ((_%e4636146430%_ (gx#syntax-e _%__stx4913849139%_)))
                (let ((_%tl4636346437%_
                       (let () (declare (not safe)) (##cdr _%e4636146430%_)))
                      (_%hd4636246434%_
                       (let () (declare (not safe)) (##car _%e4636146430%_))))
                  (if (gx#stx-null? _%tl4636346437%_)
                      (_%__kont4914149142%_)
                      (if (gx#stx-pair? _%tl4636346437%_)
                          (let ((_%e4637046395%_
                                 (gx#syntax-e _%tl4636346437%_)))
                            (let ((_%tl4637246402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4637046395%_)))
                                  (_%hd4637146399%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4637046395%_))))
                              (_%__kont4914349144%_
                               _%tl4637246402%_
                               _%hd4637146399%_
                               _%hd4636246434%_)))
                          (let () (declare (not safe)) (_%g4635946378%_))))))
              (let () (declare (not safe)) (_%g4635946378%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx46448%_)
      (let* ((_%__stx4916849169%_ _%$stx46448%_)
             (_%g4645346493%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4916849169%_))))
        (let ((_%__kont4917149172%_
               (lambda (_%g4645546629%_ _%g4645646631%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4645646631%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%g4645546629%_ '()))
                                   '())))))
              (_%__kont4917349174%_
               (lambda (_%g4646646558%_
                        _%g4646746560%_
                        _%g4646846561%_
                        _%g4646946562%_)
                 (cons _%g4646946562%_
                       (cons _%g4646846561%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4646746560%_
                                               (foldr (lambda (_%g4658346586%_
                                                               _%g4658446589%_)
                                                        (cons _%g4658346586%_
                                                              _%g4658446589%_))
                                                      '()
                                                      _%g4646646558%_)))
                                   '()))))))
          (let* ((_%__match4922349224%_
                  (lambda (_%e4647046500%_
                           _%hd4647146504%_
                           _%tl4647246507%_
                           _%e4647346510%_
                           _%hd4647446514%_
                           _%tl4647546517%_
                           _%e4647646520%_
                           _%hd4647746524%_
                           _%tl4647846527%_
                           _%__splice4917549176%_
                           _%target4647946530%_
                           _%tl4648146533%_)
                    (letrec ((_%loop4648246536%_
                              (lambda (_%hd4648046540%_ _%body4648646543%_)
                                (if (gx#stx-pair? _%hd4648046540%_)
                                    (let ((_%e4648346545%_
                                           (gx#syntax-e _%hd4648046540%_)))
                                      (let ((_%lp-tl4648546552%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4648346545%_)))
                                            (_%lp-hd4648446549%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4648346545%_))))
                                        (_%loop4648246536%_
                                         _%lp-tl4648546552%_
                                         (cons _%lp-hd4648446549%_
                                               _%body4648646543%_))))
                                    (let ((_%body4648746555%_
                                           (reverse _%body4648646543%_)))
                                      (let ((_%g4646646558%_
                                             _%body4648746555%_)
                                            (_%g4646746560%_ _%tl4647846527%_)
                                            (_%g4646846561%_ _%hd4647746524%_)
                                            (_%g4646946562%_ _%hd4647146504%_))
                                        (if (gx#identifier? _%g4646846561%_)
                                            (_%__kont4917349174%_
                                             _%g4646646558%_
                                             _%g4646746560%_
                                             _%g4646846561%_
                                             _%g4646946562%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4645346493%_)))))))))
                      (_%loop4648246536%_ _%target4647946530%_ '()))))
                 (_%__match4919749198%_
                  (lambda (_%e4645746599%_
                           _%hd4645846603%_
                           _%tl4645946606%_
                           _%e4646046609%_
                           _%hd4646146613%_
                           _%tl4646246616%_
                           _%e4646346619%_
                           _%hd4646446623%_
                           _%tl4646546626%_)
                    (let ((_%g4645546629%_ _%hd4646446623%_)
                          (_%g4645646631%_ _%hd4646146613%_))
                      (if (gx#identifier? _%g4645646631%_)
                          (_%__kont4917149172%_
                           _%g4645546629%_
                           _%g4645646631%_)
                          (if (gx#stx-pair? _%hd4646146613%_)
                              (let ((_%e4647646520%_
                                     (gx#syntax-e _%hd4646146613%_)))
                                (let ((_%tl4647846527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4647646520%_)))
                                      (_%hd4647746524%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4647646520%_))))
                                  (if (gx#stx-pair/null? _%tl4646246616%_)
                                      (let ((_%__splice4917549176%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4646246616%_
                                              '0)))
                                        (let ((_%tl4648146533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4917549176%_
                                                  '1)))
                                              (_%target4647946530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4917549176%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4648146533%_)
                                              (_%__match4922349224%_
                                               _%e4645746599%_
                                               _%hd4645846603%_
                                               _%tl4645946606%_
                                               _%e4646046609%_
                                               _%hd4646146613%_
                                               _%tl4646246616%_
                                               _%e4647646520%_
                                               _%hd4647746524%_
                                               _%tl4647846527%_
                                               _%__splice4917549176%_
                                               _%target4647946530%_
                                               _%tl4648146533%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4645346493%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4645346493%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4645346493%_))))))))
            (if (gx#stx-pair? _%__stx4916849169%_)
                (let ((_%e4645746599%_ (gx#syntax-e _%__stx4916849169%_)))
                  (let ((_%tl4645946606%_
                         (let () (declare (not safe)) (##cdr _%e4645746599%_)))
                        (_%hd4645846603%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4645746599%_))))
                    (if (gx#stx-pair? _%tl4645946606%_)
                        (let ((_%e4646046609%_ (gx#syntax-e _%tl4645946606%_)))
                          (let ((_%tl4646246616%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4646046609%_)))
                                (_%hd4646146613%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4646046609%_))))
                            (if (gx#stx-pair? _%tl4646246616%_)
                                (let ((_%e4646346619%_
                                       (gx#syntax-e _%tl4646246616%_)))
                                  (let ((_%tl4646546626%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4646346619%_)))
                                        (_%hd4646446623%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4646346619%_))))
                                    (if (gx#stx-null? _%tl4646546626%_)
                                        (_%__match4919749198%_
                                         _%e4645746599%_
                                         _%hd4645846603%_
                                         _%tl4645946606%_
                                         _%e4646046609%_
                                         _%hd4646146613%_
                                         _%tl4646246616%_
                                         _%e4646346619%_
                                         _%hd4646446623%_
                                         _%tl4646546626%_)
                                        (if (gx#stx-pair? _%hd4646146613%_)
                                            (let ((_%e4647646520%_
                                                   (gx#syntax-e
                                                    _%hd4646146613%_)))
                                              (let ((_%tl4647846527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4647646520%_)))
                                                    (_%hd4647746524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4647646520%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4646246616%_)
                                                    (let ((_%__splice4917549176%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4646246616%_
                                                            '0)))
                                                      (let ((_%tl4648146533%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4917549176%_ '1)))
                    (_%target4647946530%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4917549176%_ '0))))
                (if (gx#stx-null? _%tl4648146533%_)
                    (_%__match4922349224%_
                     _%e4645746599%_
                     _%hd4645846603%_
                     _%tl4645946606%_
                     _%e4646046609%_
                     _%hd4646146613%_
                     _%tl4646246616%_
                     _%e4647646520%_
                     _%hd4647746524%_
                     _%tl4647846527%_
                     _%__splice4917549176%_
                     _%target4647946530%_
                     _%tl4648146533%_)
                    (let () (declare (not safe)) (_%g4645346493%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4645346493%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4645346493%_))))))
                                (if (gx#stx-pair? _%hd4646146613%_)
                                    (let ((_%e4647646520%_
                                           (gx#syntax-e _%hd4646146613%_)))
                                      (let ((_%tl4647846527%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4647646520%_)))
                                            (_%hd4647746524%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4647646520%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4646246616%_)
                                            (let ((_%__splice4917549176%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4646246616%_
                                                    '0)))
                                              (let ((_%tl4648146533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4917549176%_
                                                        '1)))
                                                    (_%target4647946530%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4917549176%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4648146533%_)
                                                    (_%__match4922349224%_
                                                     _%e4645746599%_
                                                     _%hd4645846603%_
                                                     _%tl4645946606%_
                                                     _%e4646046609%_
                                                     _%hd4646146613%_
                                                     _%tl4646246616%_
                                                     _%e4647646520%_
                                                     _%hd4647746524%_
                                                     _%tl4647846527%_
                                                     _%__splice4917549176%_
                                                     _%target4647946530%_
                                                     _%tl4648146533%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4645346493%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4645346493%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4645346493%_))))))
                        (let () (declare (not safe)) (_%g4645346493%_)))))
                (let () (declare (not safe)) (_%g4645346493%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx46651%_)
      (let* ((_%__stx4922649227%_ _%$stx46651%_)
             (_%g4665646696%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4922649227%_))))
        (let ((_%__kont4922949230%_
               (lambda (_%g4665846832%_ _%g4665946834%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4665946834%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%g4665846832%_ '()))
                                   '())))))
              (_%__kont4923149232%_
               (lambda (_%g4666946761%_
                        _%g4667046763%_
                        _%g4667146764%_
                        _%g4667246765%_)
                 (cons _%g4667246765%_
                       (cons _%g4667146764%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4667046763%_
                                               (foldr (lambda (_%g4678646789%_
                                                               _%g4678746792%_)
                                                        (cons _%g4678646789%_
                                                              _%g4678746792%_))
                                                      '()
                                                      _%g4666946761%_)))
                                   '()))))))
          (let* ((_%__match4928149282%_
                  (lambda (_%e4667346703%_
                           _%hd4667446707%_
                           _%tl4667546710%_
                           _%e4667646713%_
                           _%hd4667746717%_
                           _%tl4667846720%_
                           _%e4667946723%_
                           _%hd4668046727%_
                           _%tl4668146730%_
                           _%__splice4923349234%_
                           _%target4668246733%_
                           _%tl4668446736%_)
                    (letrec ((_%loop4668546739%_
                              (lambda (_%hd4668346743%_ _%body4668946746%_)
                                (if (gx#stx-pair? _%hd4668346743%_)
                                    (let ((_%e4668646748%_
                                           (gx#syntax-e _%hd4668346743%_)))
                                      (let ((_%lp-tl4668846755%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4668646748%_)))
                                            (_%lp-hd4668746752%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4668646748%_))))
                                        (_%loop4668546739%_
                                         _%lp-tl4668846755%_
                                         (cons _%lp-hd4668746752%_
                                               _%body4668946746%_))))
                                    (let ((_%body4669046758%_
                                           (reverse _%body4668946746%_)))
                                      (let ((_%g4666946761%_
                                             _%body4669046758%_)
                                            (_%g4667046763%_ _%tl4668146730%_)
                                            (_%g4667146764%_ _%hd4668046727%_)
                                            (_%g4667246765%_ _%hd4667446707%_))
                                        (if (gx#identifier? _%g4667146764%_)
                                            (_%__kont4923149232%_
                                             _%g4666946761%_
                                             _%g4667046763%_
                                             _%g4667146764%_
                                             _%g4667246765%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4665646696%_)))))))))
                      (_%loop4668546739%_ _%target4668246733%_ '()))))
                 (_%__match4925549256%_
                  (lambda (_%e4666046802%_
                           _%hd4666146806%_
                           _%tl4666246809%_
                           _%e4666346812%_
                           _%hd4666446816%_
                           _%tl4666546819%_
                           _%e4666646822%_
                           _%hd4666746826%_
                           _%tl4666846829%_)
                    (let ((_%g4665846832%_ _%hd4666746826%_)
                          (_%g4665946834%_ _%hd4666446816%_))
                      (if (gx#identifier? _%g4665946834%_)
                          (_%__kont4922949230%_
                           _%g4665846832%_
                           _%g4665946834%_)
                          (if (gx#stx-pair? _%hd4666446816%_)
                              (let ((_%e4667946723%_
                                     (gx#syntax-e _%hd4666446816%_)))
                                (let ((_%tl4668146730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4667946723%_)))
                                      (_%hd4668046727%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4667946723%_))))
                                  (if (gx#stx-pair/null? _%tl4666546819%_)
                                      (let ((_%__splice4923349234%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4666546819%_
                                              '0)))
                                        (let ((_%tl4668446736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4923349234%_
                                                  '1)))
                                              (_%target4668246733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4923349234%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4668446736%_)
                                              (_%__match4928149282%_
                                               _%e4666046802%_
                                               _%hd4666146806%_
                                               _%tl4666246809%_
                                               _%e4666346812%_
                                               _%hd4666446816%_
                                               _%tl4666546819%_
                                               _%e4667946723%_
                                               _%hd4668046727%_
                                               _%tl4668146730%_
                                               _%__splice4923349234%_
                                               _%target4668246733%_
                                               _%tl4668446736%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4665646696%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4665646696%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4665646696%_))))))))
            (if (gx#stx-pair? _%__stx4922649227%_)
                (let ((_%e4666046802%_ (gx#syntax-e _%__stx4922649227%_)))
                  (let ((_%tl4666246809%_
                         (let () (declare (not safe)) (##cdr _%e4666046802%_)))
                        (_%hd4666146806%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4666046802%_))))
                    (if (gx#stx-pair? _%tl4666246809%_)
                        (let ((_%e4666346812%_ (gx#syntax-e _%tl4666246809%_)))
                          (let ((_%tl4666546819%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4666346812%_)))
                                (_%hd4666446816%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4666346812%_))))
                            (if (gx#stx-pair? _%tl4666546819%_)
                                (let ((_%e4666646822%_
                                       (gx#syntax-e _%tl4666546819%_)))
                                  (let ((_%tl4666846829%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4666646822%_)))
                                        (_%hd4666746826%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4666646822%_))))
                                    (if (gx#stx-null? _%tl4666846829%_)
                                        (_%__match4925549256%_
                                         _%e4666046802%_
                                         _%hd4666146806%_
                                         _%tl4666246809%_
                                         _%e4666346812%_
                                         _%hd4666446816%_
                                         _%tl4666546819%_
                                         _%e4666646822%_
                                         _%hd4666746826%_
                                         _%tl4666846829%_)
                                        (if (gx#stx-pair? _%hd4666446816%_)
                                            (let ((_%e4667946723%_
                                                   (gx#syntax-e
                                                    _%hd4666446816%_)))
                                              (let ((_%tl4668146730%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4667946723%_)))
                                                    (_%hd4668046727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4667946723%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4666546819%_)
                                                    (let ((_%__splice4923349234%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4666546819%_
                                                            '0)))
                                                      (let ((_%tl4668446736%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4923349234%_ '1)))
                    (_%target4668246733%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4923349234%_ '0))))
                (if (gx#stx-null? _%tl4668446736%_)
                    (_%__match4928149282%_
                     _%e4666046802%_
                     _%hd4666146806%_
                     _%tl4666246809%_
                     _%e4666346812%_
                     _%hd4666446816%_
                     _%tl4666546819%_
                     _%e4667946723%_
                     _%hd4668046727%_
                     _%tl4668146730%_
                     _%__splice4923349234%_
                     _%target4668246733%_
                     _%tl4668446736%_)
                    (let () (declare (not safe)) (_%g4665646696%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4665646696%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4665646696%_))))))
                                (if (gx#stx-pair? _%hd4666446816%_)
                                    (let ((_%e4667946723%_
                                           (gx#syntax-e _%hd4666446816%_)))
                                      (let ((_%tl4668146730%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4667946723%_)))
                                            (_%hd4668046727%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4667946723%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4666546819%_)
                                            (let ((_%__splice4923349234%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4666546819%_
                                                    '0)))
                                              (let ((_%tl4668446736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4923349234%_
                                                        '1)))
                                                    (_%target4668246733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4923349234%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4668446736%_)
                                                    (_%__match4928149282%_
                                                     _%e4666046802%_
                                                     _%hd4666146806%_
                                                     _%tl4666246809%_
                                                     _%e4666346812%_
                                                     _%hd4666446816%_
                                                     _%tl4666546819%_
                                                     _%e4667946723%_
                                                     _%hd4668046727%_
                                                     _%tl4668146730%_
                                                     _%__splice4923349234%_
                                                     _%target4668246733%_
                                                     _%tl4668446736%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4665646696%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4665646696%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4665646696%_))))))
                        (let () (declare (not safe)) (_%g4665646696%_)))))
                (let () (declare (not safe)) (_%g4665646696%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx46854%_)
      (let* ((_%__stx4928449285%_ _%$stx46854%_)
             (_%g4685946899%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4928449285%_))))
        (let ((_%__kont4928749288%_
               (lambda (_%g4686147035%_ _%g4686247037%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4686247037%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%g4686147035%_ '()))
                                   '())))))
              (_%__kont4928949290%_
               (lambda (_%g4687246964%_
                        _%g4687346966%_
                        _%g4687446967%_
                        _%g4687546968%_)
                 (cons _%g4687546968%_
                       (cons _%g4687446967%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4687346966%_
                                               (foldr (lambda (_%g4698946992%_
                                                               _%g4699046995%_)
                                                        (cons _%g4698946992%_
                                                              _%g4699046995%_))
                                                      '()
                                                      _%g4687246964%_)))
                                   '()))))))
          (let* ((_%__match4933949340%_
                  (lambda (_%e4687646906%_
                           _%hd4687746910%_
                           _%tl4687846913%_
                           _%e4687946916%_
                           _%hd4688046920%_
                           _%tl4688146923%_
                           _%e4688246926%_
                           _%hd4688346930%_
                           _%tl4688446933%_
                           _%__splice4929149292%_
                           _%target4688546936%_
                           _%tl4688746939%_)
                    (letrec ((_%loop4688846942%_
                              (lambda (_%hd4688646946%_ _%body4689246949%_)
                                (if (gx#stx-pair? _%hd4688646946%_)
                                    (let ((_%e4688946951%_
                                           (gx#syntax-e _%hd4688646946%_)))
                                      (let ((_%lp-tl4689146958%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4688946951%_)))
                                            (_%lp-hd4689046955%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4688946951%_))))
                                        (_%loop4688846942%_
                                         _%lp-tl4689146958%_
                                         (cons _%lp-hd4689046955%_
                                               _%body4689246949%_))))
                                    (let ((_%body4689346961%_
                                           (reverse _%body4689246949%_)))
                                      (let ((_%g4687246964%_
                                             _%body4689346961%_)
                                            (_%g4687346966%_ _%tl4688446933%_)
                                            (_%g4687446967%_ _%hd4688346930%_)
                                            (_%g4687546968%_ _%hd4687746910%_))
                                        (if (gx#identifier? _%g4687446967%_)
                                            (_%__kont4928949290%_
                                             _%g4687246964%_
                                             _%g4687346966%_
                                             _%g4687446967%_
                                             _%g4687546968%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4685946899%_)))))))))
                      (_%loop4688846942%_ _%target4688546936%_ '()))))
                 (_%__match4931349314%_
                  (lambda (_%e4686347005%_
                           _%hd4686447009%_
                           _%tl4686547012%_
                           _%e4686647015%_
                           _%hd4686747019%_
                           _%tl4686847022%_
                           _%e4686947025%_
                           _%hd4687047029%_
                           _%tl4687147032%_)
                    (let ((_%g4686147035%_ _%hd4687047029%_)
                          (_%g4686247037%_ _%hd4686747019%_))
                      (if (gx#identifier? _%g4686247037%_)
                          (_%__kont4928749288%_
                           _%g4686147035%_
                           _%g4686247037%_)
                          (if (gx#stx-pair? _%hd4686747019%_)
                              (let ((_%e4688246926%_
                                     (gx#syntax-e _%hd4686747019%_)))
                                (let ((_%tl4688446933%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4688246926%_)))
                                      (_%hd4688346930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4688246926%_))))
                                  (if (gx#stx-pair/null? _%tl4686847022%_)
                                      (let ((_%__splice4929149292%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4686847022%_
                                              '0)))
                                        (let ((_%tl4688746939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4929149292%_
                                                  '1)))
                                              (_%target4688546936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4929149292%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4688746939%_)
                                              (_%__match4933949340%_
                                               _%e4686347005%_
                                               _%hd4686447009%_
                                               _%tl4686547012%_
                                               _%e4686647015%_
                                               _%hd4686747019%_
                                               _%tl4686847022%_
                                               _%e4688246926%_
                                               _%hd4688346930%_
                                               _%tl4688446933%_
                                               _%__splice4929149292%_
                                               _%target4688546936%_
                                               _%tl4688746939%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4685946899%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4685946899%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4685946899%_))))))))
            (if (gx#stx-pair? _%__stx4928449285%_)
                (let ((_%e4686347005%_ (gx#syntax-e _%__stx4928449285%_)))
                  (let ((_%tl4686547012%_
                         (let () (declare (not safe)) (##cdr _%e4686347005%_)))
                        (_%hd4686447009%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4686347005%_))))
                    (if (gx#stx-pair? _%tl4686547012%_)
                        (let ((_%e4686647015%_ (gx#syntax-e _%tl4686547012%_)))
                          (let ((_%tl4686847022%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4686647015%_)))
                                (_%hd4686747019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4686647015%_))))
                            (if (gx#stx-pair? _%tl4686847022%_)
                                (let ((_%e4686947025%_
                                       (gx#syntax-e _%tl4686847022%_)))
                                  (let ((_%tl4687147032%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4686947025%_)))
                                        (_%hd4687047029%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4686947025%_))))
                                    (if (gx#stx-null? _%tl4687147032%_)
                                        (_%__match4931349314%_
                                         _%e4686347005%_
                                         _%hd4686447009%_
                                         _%tl4686547012%_
                                         _%e4686647015%_
                                         _%hd4686747019%_
                                         _%tl4686847022%_
                                         _%e4686947025%_
                                         _%hd4687047029%_
                                         _%tl4687147032%_)
                                        (if (gx#stx-pair? _%hd4686747019%_)
                                            (let ((_%e4688246926%_
                                                   (gx#syntax-e
                                                    _%hd4686747019%_)))
                                              (let ((_%tl4688446933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4688246926%_)))
                                                    (_%hd4688346930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4688246926%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4686847022%_)
                                                    (let ((_%__splice4929149292%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4686847022%_
                                                            '0)))
                                                      (let ((_%tl4688746939%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4929149292%_ '1)))
                    (_%target4688546936%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4929149292%_ '0))))
                (if (gx#stx-null? _%tl4688746939%_)
                    (_%__match4933949340%_
                     _%e4686347005%_
                     _%hd4686447009%_
                     _%tl4686547012%_
                     _%e4686647015%_
                     _%hd4686747019%_
                     _%tl4686847022%_
                     _%e4688246926%_
                     _%hd4688346930%_
                     _%tl4688446933%_
                     _%__splice4929149292%_
                     _%target4688546936%_
                     _%tl4688746939%_)
                    (let () (declare (not safe)) (_%g4685946899%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4685946899%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4685946899%_))))))
                                (if (gx#stx-pair? _%hd4686747019%_)
                                    (let ((_%e4688246926%_
                                           (gx#syntax-e _%hd4686747019%_)))
                                      (let ((_%tl4688446933%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4688246926%_)))
                                            (_%hd4688346930%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4688246926%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4686847022%_)
                                            (let ((_%__splice4929149292%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4686847022%_
                                                    '0)))
                                              (let ((_%tl4688746939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4929149292%_
                                                        '1)))
                                                    (_%target4688546936%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4929149292%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4688746939%_)
                                                    (_%__match4933949340%_
                                                     _%e4686347005%_
                                                     _%hd4686447009%_
                                                     _%tl4686547012%_
                                                     _%e4686647015%_
                                                     _%hd4686747019%_
                                                     _%tl4686847022%_
                                                     _%e4688246926%_
                                                     _%hd4688346930%_
                                                     _%tl4688446933%_
                                                     _%__splice4929149292%_
                                                     _%target4688546936%_
                                                     _%tl4688746939%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4685946899%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4685946899%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4685946899%_))))))
                        (let () (declare (not safe)) (_%g4685946899%_)))))
                (let () (declare (not safe)) (_%g4685946899%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx47057%_)
       (let* ((_%g4706047080%_
               (lambda (_%g4706147076%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4706147076%_)))
              (_%g4705947149%_
               (lambda (_%g4706147084%_)
                 (if (gx#stx-pair? _%g4706147084%_)
                     (let ((_%e4706347087%_ (gx#syntax-e _%g4706147084%_)))
                       (let ((_%hd4706447091%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4706347087%_)))
                             (_%tl4706547094%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4706347087%_))))
                         (if (gx#stx-pair/null? _%tl4706547094%_)
                             (let ((_g49434_
                                    (gx#syntax-split-splice
                                     _%tl4706547094%_
                                     '0)))
                               (begin
                                 (let ((_g49435_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49434_)
                                              (##values-length _g49434_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49435_ 2)))
                                       (error "Context expects 2 values"
                                              _g49435_)))
                                 (let ((_%target4706647097%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49434_ 0)))
                                       (_%tl4706847100%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49434_ 1))))
                                   (if (gx#stx-null? _%tl4706847100%_)
                                       (letrec ((_%loop4706947103%_
                                                 (lambda (_%hd4706747107%_
                                                          _%body4707347110%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4706747107%_)
                                                       (let ((_%e4707047112%_
                                                              (gx#syntax-e
                                                               _%hd4706747107%_)))
                                                         (let ((_%lp-hd4707147116%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4707047112%_)))
                       (_%lp-tl4707247119%_
                        (let () (declare (not safe)) (##cdr _%e4707047112%_))))
                   (_%loop4706947103%_
                    _%lp-tl4707247119%_
                    (cons _%lp-hd4707147116%_ _%body4707347110%_))))
               (let ((_%body4707447122%_ (reverse _%body4707347110%_)))
                 (cons 'phi:
                       (cons '1
                             (foldr (lambda (_%g4714047143%_ _%g4714147146%_)
                                      (cons _%g4714047143%_ _%g4714147146%_))
                                    '()
                                    _%body4707447122%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4706947103%_
                                          _%target4706647097%_
                                          '()))
                                       (_%g4706047080%_ _%g4706147084%_)))))
                             (_%g4706047080%_ _%g4706147084%_))))
                     (_%g4706047080%_ _%g4706147084%_)))))
         (_%g4705947149%_ _%stx47057%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx47154%_)
       (let* ((_%g4715747177%_
               (lambda (_%g4715847173%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4715847173%_)))
              (_%g4715647246%_
               (lambda (_%g4715847181%_)
                 (if (gx#stx-pair? _%g4715847181%_)
                     (let ((_%e4716047184%_ (gx#syntax-e _%g4715847181%_)))
                       (let ((_%hd4716147188%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4716047184%_)))
                             (_%tl4716247191%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4716047184%_))))
                         (if (gx#stx-pair/null? _%tl4716247191%_)
                             (let ((_g49436_
                                    (gx#syntax-split-splice
                                     _%tl4716247191%_
                                     '0)))
                               (begin
                                 (let ((_g49437_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49436_)
                                              (##values-length _g49436_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49437_ 2)))
                                       (error "Context expects 2 values"
                                              _g49437_)))
                                 (let ((_%target4716347194%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49436_ 0)))
                                       (_%tl4716547197%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49436_ 1))))
                                   (if (gx#stx-null? _%tl4716547197%_)
                                       (letrec ((_%loop4716647200%_
                                                 (lambda (_%hd4716447204%_
                                                          _%body4717047207%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4716447204%_)
                                                       (let ((_%e4716747209%_
                                                              (gx#syntax-e
                                                               _%hd4716447204%_)))
                                                         (let ((_%lp-hd4716847213%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4716747209%_)))
                       (_%lp-tl4716947216%_
                        (let () (declare (not safe)) (##cdr _%e4716747209%_))))
                   (_%loop4716647200%_
                    _%lp-tl4716947216%_
                    (cons _%lp-hd4716847213%_ _%body4717047207%_))))
               (let ((_%body4717147219%_ (reverse _%body4717047207%_)))
                 (cons 'phi:
                       (cons '-1
                             (foldr (lambda (_%g4723747240%_ _%g4723847243%_)
                                      (cons _%g4723747240%_ _%g4723847243%_))
                                    '()
                                    _%body4717147219%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4716647200%_
                                          _%target4716347194%_
                                          '()))
                                       (_%g4715747177%_ _%g4715847181%_)))))
                             (_%g4715747177%_ _%g4715847181%_))))
                     (_%g4715747177%_ _%g4715847181%_)))))
         (_%g4715647246%_ _%stx47154%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx47251%_)
       (let* ((_%g4725447278%_
               (lambda (_%g4725547274%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4725547274%_)))
              (_%g4725347404%_
               (lambda (_%g4725547282%_)
                 (if (gx#stx-pair? _%g4725547282%_)
                     (let ((_%e4725847285%_ (gx#syntax-e _%g4725547282%_)))
                       (let ((_%hd4725947289%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4725847285%_)))
                             (_%tl4726047292%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4725847285%_))))
                         (if (gx#stx-pair? _%tl4726047292%_)
                             (let ((_%e4726147295%_
                                    (gx#syntax-e _%tl4726047292%_)))
                               (let ((_%hd4726247299%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4726147295%_)))
                                     (_%tl4726347302%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4726147295%_))))
                                 (if (gx#stx-pair/null? _%tl4726347302%_)
                                     (let ((_g49438_
                                            (gx#syntax-split-splice
                                             _%tl4726347302%_
                                             '0)))
                                       (begin
                                         (let ((_g49439_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49438_)
                                                      (##values-length
                                                       _g49438_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49439_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49439_)))
                                         (let ((_%target4726447305%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49438_ 0)))
                                               (_%tl4726647308%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49438_ 1))))
                                           (if (gx#stx-null? _%tl4726647308%_)
                                               (letrec ((_%loop4726747311%_
                                                         (lambda (_%hd4726547315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4727147318%_)
                   (if (gx#stx-pair? _%hd4726547315%_)
                       (let ((_%e4726847320%_ (gx#syntax-e _%hd4726547315%_)))
                         (let ((_%lp-hd4726947324%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4726847320%_)))
                               (_%lp-tl4727047327%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4726847320%_))))
                           (_%loop4726747311%_
                            _%lp-tl4727047327%_
                            (cons _%lp-hd4726947324%_ _%id4727147318%_))))
                       (let ((_%id4727247330%_ (reverse _%id4727147318%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%g4735247355%_ _%g4735347358%_)
                                       (cons _%g4735247355%_ _%g4735347358%_))
                                     '()
                                     _%id4727247330%_))
                             (let* ((_%keys47369%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%g4736047363%_
                                                      _%g4736147366%_)
                                               (cons _%g4736047363%_
                                                     _%g4736147366%_))
                                             '()
                                             _%id4727247330%_)))
                                    (_%keytab47380%_
                                     (let ((_%ht47372%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%g4737447376%_)
                                          (hash-put!
                                           _%ht47372%_
                                           _%g4737447376%_
                                           '#t))
                                        _%keys47369%_)
                                       _%ht47372%_))
                                    (_%imports47383%_
                                     (gx#core-expand-import-source
                                      _%hd4726247299%_))
                                    (_%fold-e47399%_
                                     (letrec ((_%fold-e47386%_
                                               (lambda (_%in47389%_ _%r47391%_)
                                                 (if (gx#module-import?
                                                      _%in47389%_)
                                                     (if (hash-get
                                                          _%keytab47380%_
                                                          (gx#module-import-name
                                                           _%in47389%_))
                                                         (cons _%in47389%_
                                                               _%r47391%_)
                                                         _%r47391%_)
                                                     (if (gx#import-set?
                                                          _%in47389%_)
                                                         (foldl _%fold-e47386%_
                                                                _%r47391%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47389%_))
                 _%r47391%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e47386%_)))
                               (cons 'begin:
                                     (foldl _%fold-e47399%_
                                            '()
                                            _%imports47383%_)))
                             (_%g4725447278%_ _%g4725547282%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4726747311%_
                                                  _%target4726447305%_
                                                  '()))
                                               (_%g4725447278%_
                                                _%g4725547282%_)))))
                                     (_%g4725447278%_ _%g4725547282%_))))
                             (_%g4725447278%_ _%g4725547282%_))))
                     (_%g4725447278%_ _%g4725547282%_)))))
         (_%g4725347404%_ _%stx47251%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx47409%_)
       (let* ((_%g4741247436%_
               (lambda (_%g4741347432%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4741347432%_)))
              (_%g4741147562%_
               (lambda (_%g4741347440%_)
                 (if (gx#stx-pair? _%g4741347440%_)
                     (let ((_%e4741647443%_ (gx#syntax-e _%g4741347440%_)))
                       (let ((_%hd4741747447%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4741647443%_)))
                             (_%tl4741847450%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4741647443%_))))
                         (if (gx#stx-pair? _%tl4741847450%_)
                             (let ((_%e4741947453%_
                                    (gx#syntax-e _%tl4741847450%_)))
                               (let ((_%hd4742047457%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4741947453%_)))
                                     (_%tl4742147460%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4741947453%_))))
                                 (if (gx#stx-pair/null? _%tl4742147460%_)
                                     (let ((_g49440_
                                            (gx#syntax-split-splice
                                             _%tl4742147460%_
                                             '0)))
                                       (begin
                                         (let ((_g49441_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49440_)
                                                      (##values-length
                                                       _g49440_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49441_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49441_)))
                                         (let ((_%target4742247463%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49440_ 0)))
                                               (_%tl4742447466%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49440_ 1))))
                                           (if (gx#stx-null? _%tl4742447466%_)
                                               (letrec ((_%loop4742547469%_
                                                         (lambda (_%hd4742347473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4742947476%_)
                   (if (gx#stx-pair? _%hd4742347473%_)
                       (let ((_%e4742647478%_ (gx#syntax-e _%hd4742347473%_)))
                         (let ((_%lp-hd4742747482%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4742647478%_)))
                               (_%lp-tl4742847485%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4742647478%_))))
                           (_%loop4742547469%_
                            _%lp-tl4742847485%_
                            (cons _%lp-hd4742747482%_ _%id4742947476%_))))
                       (let ((_%id4743047488%_ (reverse _%id4742947476%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%g4751047513%_ _%g4751147516%_)
                                       (cons _%g4751047513%_ _%g4751147516%_))
                                     '()
                                     _%id4743047488%_))
                             (let* ((_%keys47527%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%g4751847521%_
                                                      _%g4751947524%_)
                                               (cons _%g4751847521%_
                                                     _%g4751947524%_))
                                             '()
                                             _%id4743047488%_)))
                                    (_%keytab47538%_
                                     (let ((_%ht47530%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%g4753247534%_)
                                          (hash-put!
                                           _%ht47530%_
                                           _%g4753247534%_
                                           '#t))
                                        _%keys47527%_)
                                       _%ht47530%_))
                                    (_%imports47541%_
                                     (gx#core-expand-import-source
                                      _%hd4742047457%_))
                                    (_%fold-e47557%_
                                     (letrec ((_%fold-e47544%_
                                               (lambda (_%in47547%_ _%r47549%_)
                                                 (if (gx#module-import?
                                                      _%in47547%_)
                                                     (if (hash-get
                                                          _%keytab47538%_
                                                          (gx#module-import-name
                                                           _%in47547%_))
                                                         _%r47549%_
                                                         (cons _%in47547%_
                                                               _%r47549%_))
                                                     (if (gx#import-set?
                                                          _%in47547%_)
                                                         (foldl _%fold-e47544%_
                                                                _%r47549%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47547%_))
                 (cons _%in47547%_ _%r47549%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e47544%_)))
                               (cons 'begin:
                                     (foldl _%fold-e47557%_
                                            '()
                                            _%imports47541%_)))
                             (_%g4741247436%_ _%g4741347440%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4742547469%_
                                                  _%target4742247463%_
                                                  '()))
                                               (_%g4741247436%_
                                                _%g4741347440%_)))))
                                     (_%g4741247436%_ _%g4741347440%_))))
                             (_%g4741247436%_ _%g4741347440%_))))
                     (_%g4741247436%_ _%g4741347440%_)))))
         (_%g4741147562%_ _%stx47409%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in47614%_ _%rename47616%_)
      (gx#make-module-import
       (gx#module-import-source _%in47614%_)
       _%rename47616%_
       (gx#module-import-phi _%in47614%_)
       (gx#module-import-weak? _%in47614%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name47567%_ _%pre47569%_)
      (let* ((_%name4757047578%_ _%name47567%_)
             (_%else4757247590%_
              (lambda () (make-symbol _%pre47569%_ _%name47567%_)))
             (_%K4757447598%_
              (lambda (_%mark47594%_ _%id47596%_)
                (cons (make-symbol _%pre47569%_ _%id47596%_) _%mark47594%_))))
        (if (pair? _%name4757047578%_)
            (let ((_%hd4757547602%_
                   (let () (declare (not safe)) (##car _%name4757047578%_)))
                  (_%tl4757647605%_
                   (let () (declare (not safe)) (##cdr _%name4757047578%_))))
              (let* ((_%id47608%_ _%hd4757547602%_)
                     (_%mark47611%_ _%tl4757647605%_))
                (_%K4757447598%_ _%mark47611%_ _%id47608%_)))
            (_%else4757247590%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx47618%_)
       (let* ((_%g4762147654%_
               (lambda (_%g4762247650%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4762247650%_)))
              (_%g4762047845%_
               (lambda (_%g4762247658%_)
                 (if (gx#stx-pair? _%g4762247658%_)
                     (let ((_%e4762647661%_ (gx#syntax-e _%g4762247658%_)))
                       (let ((_%hd4762747665%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4762647661%_)))
                             (_%tl4762847668%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4762647661%_))))
                         (if (gx#stx-pair? _%tl4762847668%_)
                             (let ((_%e4762947671%_
                                    (gx#syntax-e _%tl4762847668%_)))
                               (let ((_%hd4763047675%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4762947671%_)))
                                     (_%tl4763147678%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4762947671%_))))
                                 (if (gx#stx-pair/null? _%tl4763147678%_)
                                     (let ((_g49442_
                                            (gx#syntax-split-splice
                                             _%tl4763147678%_
                                             '0)))
                                       (begin
                                         (let ((_g49443_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49442_)
                                                      (##values-length
                                                       _g49442_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49443_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49443_)))
                                         (let ((_%target4763247681%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49442_ 0)))
                                               (_%tl4763447684%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49442_ 1))))
                                           (if (gx#stx-null? _%tl4763447684%_)
                                               (letrec ((_%loop4763547687%_
                                                         (lambda (_%hd4763347691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4763947694%_
                          _%id4764047695%_)
                   (if (gx#stx-pair? _%hd4763347691%_)
                       (let ((_%e4763647697%_ (gx#syntax-e _%hd4763347691%_)))
                         (let ((_%lp-hd4763747701%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4763647697%_)))
                               (_%lp-tl4763847704%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4763647697%_))))
                           (if (gx#stx-pair? _%lp-hd4763747701%_)
                               (let ((_%e4764347707%_
                                      (gx#syntax-e _%lp-hd4763747701%_)))
                                 (let ((_%hd4764447711%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4764347707%_)))
                                       (_%tl4764547714%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4764347707%_))))
                                   (if (gx#stx-pair? _%tl4764547714%_)
                                       (let ((_%e4764647717%_
                                              (gx#syntax-e _%tl4764547714%_)))
                                         (let ((_%hd4764747721%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4764647717%_)))
                                               (_%tl4764847724%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4764647717%_))))
                                           (if (gx#stx-null? _%tl4764847724%_)
                                               (_%loop4763547687%_
                                                _%lp-tl4763847704%_
                                                (cons _%hd4764747721%_
                                                      _%new-id4763947694%_)
                                                (cons _%hd4764447711%_
                                                      _%id4764047695%_))
                                               (_%g4762147654%_
                                                _%g4762247658%_))))
                                       (_%g4762147654%_ _%g4762247658%_))))
                               (_%g4762147654%_ _%g4762247658%_))))
                       (let ((_%new-id4764147727%_
                              (reverse _%new-id4763947694%_))
                             (_%id4764247729%_ (reverse _%id4764047695%_)))
                         (if (and (gx#identifier-list?
                                   (foldr (lambda (_%g4775247755%_
                                                   _%g4775347758%_)
                                            (cons _%g4775247755%_
                                                  _%g4775347758%_))
                                          '()
                                          _%id4764247729%_))
                                  (gx#identifier-list?
                                   (foldr (lambda (_%g4776047763%_
                                                   _%g4776147766%_)
                                            (cons _%g4776047763%_
                                                  _%g4776147766%_))
                                          '()
                                          _%new-id4764147727%_)))
                             (let* ((_%keytab47769%_ (make-hash-table))
                                    (_%found47772%_ (make-hash-table))
                                    (_%_47795%_
                                     (for-each
                                      (lambda (_%id47775%_ _%new-id47777%_)
                                        (hash-put!
                                         _%keytab47769%_
                                         (gx#core-identifier-key _%id47775%_)
                                         (gx#core-identifier-key
                                          _%new-id47777%_)))
                                      (foldr (lambda (_%g4777847781%_
                                                      _%g4777947784%_)
                                               (cons _%g4777847781%_
                                                     _%g4777947784%_))
                                             '()
                                             _%id4764247729%_)
                                      (foldr (lambda (_%g4778647789%_
                                                      _%g4778747792%_)
                                               (cons _%g4778647789%_
                                                     _%g4778747792%_))
                                             '()
                                             _%new-id4764147727%_)))
                                    (_%imports47798%_
                                     (gx#core-expand-import-source
                                      _%hd4763047675%_))
                                    (_%fold-e47826%_
                                     (letrec ((_%fold-e47801%_
                                               (lambda (_%in47804%_ _%r47806%_)
                                                 (if (gx#module-import?
                                                      _%in47804%_)
                                                     (let* ((_%name47810%_
                                                             (gx#module-import-name
                                                              _%in47804%_))
                                                            (_%$e47813%_
                                                             (hash-get
                                                              _%keytab47769%_
                                                              _%name47810%_)))
                                                       (if _%$e47813%_
                                                           (let ()
                                                             (hash-put!
                                                              _%found47772%_
                                                              _%name47810%_
                                                              '#t)
                                                             (cons (|gerbil/core/module-sugar[1]#module-import-rename|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in47804%_
                            _%$e47813%_)
                           _%r47806%_))
                   (cons _%in47804%_ _%r47806%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#import-set?
                                                          _%in47804%_)
                                                         (foldl _%fold-e47801%_
                                                                _%r47806%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47804%_))
                 (cons _%in47804%_ _%r47806%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e47801%_))
                                    (_%new-imports47829%_
                                     (foldl _%fold-e47826%_
                                            '()
                                            _%imports47798%_)))
                               (for-each
                                (lambda (_%id47834%_)
                                  (if (hash-get
                                       _%found47772%_
                                       (gx#core-identifier-key _%id47834%_))
                                      '#!void
                                      (gx#raise-syntax-error
                                       '#f
                                       '"bad syntax; identifier is not in the import set"
                                       _%stx47618%_
                                       _%id47834%_)))
                                (foldr (lambda (_%g4783647839%_
                                                _%g4783747842%_)
                                         (cons _%g4783647839%_
                                               _%g4783747842%_))
                                       '()
                                       _%id4764247729%_))
                               (cons 'begin: _%new-imports47829%_))
                             (_%g4762147654%_ _%g4762247658%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4763547687%_
                                                  _%target4763247681%_
                                                  '()
                                                  '()))
                                               (_%g4762147654%_
                                                _%g4762247658%_)))))
                                     (_%g4762147654%_ _%g4762247658%_))))
                             (_%g4762147654%_ _%g4762247658%_))))
                     (_%g4762147654%_ _%g4762247658%_)))))
         (_%g4762047845%_ _%stx47618%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx47850%_)
       (let* ((_%g4785347871%_
               (lambda (_%g4785447867%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4785447867%_)))
              (_%g4785247956%_
               (lambda (_%g4785447875%_)
                 (if (gx#stx-pair? _%g4785447875%_)
                     (let ((_%e4785747878%_ (gx#syntax-e _%g4785447875%_)))
                       (let ((_%hd4785847882%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4785747878%_)))
                             (_%tl4785947885%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4785747878%_))))
                         (if (gx#stx-pair? _%tl4785947885%_)
                             (let ((_%e4786047888%_
                                    (gx#syntax-e _%tl4785947885%_)))
                               (let ((_%hd4786147892%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4786047888%_)))
                                     (_%tl4786247895%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4786047888%_))))
                                 (if (gx#stx-pair? _%tl4786247895%_)
                                     (let ((_%e4786347898%_
                                            (gx#syntax-e _%tl4786247895%_)))
                                       (let ((_%hd4786447902%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4786347898%_)))
                                             (_%tl4786547905%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4786347898%_))))
                                         (if (gx#stx-null? _%tl4786547905%_)
                                             (if (gx#identifier?
                                                  _%hd4786447902%_)
                                                 (let* ((_%pre47926%_
                                                         (gx#stx-e
                                                          _%hd4786447902%_))
                                                        (_%imports47929%_
                                                         (gx#core-expand-import-source
                                                          _%hd4786147892%_))
                                                        (_%rename-e47935%_
                                                         (lambda (_%name47932%_)
                                                           (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                            _%name47932%_
                                                            _%pre47926%_)))
                                                        (_%fold-e47951%_
                                                         (letrec ((_%fold-e47938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%in47941%_ _%r47943%_)
                             (if (gx#module-import? _%in47941%_)
                                 (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                        _%in47941%_
                                        (_%rename-e47935%_
                                         (gx#module-import-name _%in47941%_)))
                                       _%r47943%_)
                                 (if (gx#import-set? _%in47941%_)
                                     (foldl _%fold-e47938%_
                                            _%r47943%_
                                            (gx#import-set-imports
                                             _%in47941%_))
                                     (cons _%in47941%_ _%r47943%_))))))
                   _%fold-e47938%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'begin:
                                                         (foldl _%fold-e47951%_
                                                                '()
                                                                _%imports47929%_)))
                                                 (_%g4785347871%_
                                                  _%g4785447875%_))
                                             (_%g4785347871%_
                                              _%g4785447875%_))))
                                     (_%g4785347871%_ _%g4785447875%_))))
                             (_%g4785347871%_ _%g4785447875%_))))
                     (_%g4785347871%_ _%g4785447875%_)))))
         (_%g4785247956%_ _%stx47850%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx47960%_)
       (letrec ((_%flatten47963%_
                 (lambda (_%list-of-lists48214%_)
                   (foldr (lambda (_%v48217%_ _%acc48219%_)
                            (if (null? _%v48217%_)
                                _%acc48219%_
                                (if (pair? _%v48217%_)
                                    (append (_%flatten47963%_ _%v48217%_)
                                            _%acc48219%_)
                                    (cons _%v48217%_ _%acc48219%_))))
                          '()
                          _%list-of-lists48214%_)))
                (_%expand-path47965%_
                 (lambda (_%top48084%_ _%mod48086%_)
                   (let* ((_%__stx4934249343%_ _%mod48086%_)
                          (_%g4808948111%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4934249343%_))))
                     (let ((_%__kont4934549346%_
                            (lambda (_%g4809148177%_ _%g4809248179%_)
                              (map (lambda (_%mod48194%_)
                                     (gx#stx-identifier
                                      _%top48084%_
                                      _%top48084%_
                                      '"/"
                                      _%mod48194%_))
                                   (_%flatten47963%_
                                    (map (lambda (_%g4819648198%_)
                                           (_%expand-path47965%_
                                            _%g4809248179%_
                                            _%g4819648198%_))
                                         (foldr (lambda (_%g4820148204%_
                                                         _%g4820248207%_)
                                                  (cons _%g4820148204%_
                                                        _%g4820248207%_))
                                                '()
                                                _%g4809148177%_))))))
                           (_%__kont4934949350%_
                            (lambda (_%g4810548118%_)
                              (gx#stx-identifier
                               _%top48084%_
                               _%top48084%_
                               '"/"
                               _%g4810548118%_))))
                       (let* ((_%g4808848132%_
                               (lambda ()
                                 (let ((_%g4810548118%_ _%__stx4934249343%_))
                                   (if (or (gx#identifier? _%g4810548118%_)
                                           (gx#stx-fixnum? _%g4810548118%_))
                                       (_%__kont4934949350%_ _%g4810548118%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4808948111%_))))))
                              (_%__match4936549366%_
                               (lambda (_%e4809348139%_
                                        _%hd4809448143%_
                                        _%tl4809548146%_
                                        _%__splice4934749348%_
                                        _%target4809648149%_
                                        _%tl4809848152%_)
                                 (letrec ((_%loop4809948155%_
                                           (lambda (_%hd4809748159%_
                                                    _%mod4810348162%_)
                                             (if (gx#stx-pair?
                                                  _%hd4809748159%_)
                                                 (let ((_%e4810048164%_
                                                        (gx#syntax-e
                                                         _%hd4809748159%_)))
                                                   (let ((_%lp-tl4810248171%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4810048164%_)))
                                                         (_%lp-hd4810148168%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4810048164%_))))
                                                     (_%loop4809948155%_
                                                      _%lp-tl4810248171%_
                                                      (cons _%lp-hd4810148168%_
                                                            _%mod4810348162%_))))
                                                 (let ((_%mod4810448174%_
                                                        (reverse _%mod4810348162%_)))
                                                   (_%__kont4934549346%_
                                                    _%mod4810448174%_
                                                    _%hd4809448143%_))))))
                                   (_%loop4809948155%_
                                    _%target4809648149%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4934249343%_)
                             (let ((_%e4809348139%_
                                    (gx#syntax-e _%__stx4934249343%_)))
                               (let ((_%tl4809548146%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4809348139%_)))
                                     (_%hd4809448143%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4809348139%_))))
                                 (if (gx#stx-pair/null? _%tl4809548146%_)
                                     (let ((_%__splice4934749348%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4809548146%_
                                             '0)))
                                       (let ((_%tl4809848152%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4934749348%_
                                                 '1)))
                                             (_%target4809648149%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4934749348%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4809848152%_)
                                             (_%__match4936549366%_
                                              _%e4809348139%_
                                              _%hd4809448143%_
                                              _%tl4809548146%_
                                              _%__splice4934749348%_
                                              _%target4809648149%_
                                              _%tl4809848152%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4808848132%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4808848132%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4808848132%_)))))))))
         (let* ((_%g4796747991%_
                 (lambda (_%g4796847987%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4796847987%_)))
                (_%g4796648080%_
                 (lambda (_%g4796847995%_)
                   (if (gx#stx-pair? _%g4796847995%_)
                       (let ((_%e4797147998%_ (gx#syntax-e _%g4796847995%_)))
                         (let ((_%hd4797248002%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4797147998%_)))
                               (_%tl4797348005%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4797147998%_))))
                           (if (gx#stx-pair? _%tl4797348005%_)
                               (let ((_%e4797448008%_
                                      (gx#syntax-e _%tl4797348005%_)))
                                 (let ((_%hd4797548012%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4797448008%_)))
                                       (_%tl4797648015%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4797448008%_))))
                                   (if (gx#stx-pair/null? _%tl4797648015%_)
                                       (let ((_g49444_
                                              (gx#syntax-split-splice
                                               _%tl4797648015%_
                                               '0)))
                                         (begin
                                           (let ((_g49445_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g49444_)
                                                        (##values-length
                                                         _g49444_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g49445_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g49445_)))
                                           (let ((_%target4797748018%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g49444_ 0)))
                                                 (_%tl4797948021%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g49444_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4797948021%_)
                                                 (letrec ((_%loop4798048024%_
                                                           (lambda (_%hd4797848028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4798448031%_)
                     (if (gx#stx-pair? _%hd4797848028%_)
                         (let ((_%e4798148033%_
                                (gx#syntax-e _%hd4797848028%_)))
                           (let ((_%lp-hd4798248037%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4798148033%_)))
                                 (_%lp-tl4798348040%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4798148033%_))))
                             (_%loop4798048024%_
                              _%lp-tl4798348040%_
                              (cons _%lp-hd4798248037%_ _%mod4798448031%_))))
                         (let ((_%mod4798548043%_ (reverse _%mod4798448031%_)))
                           (cons 'begin:
                                 (_%flatten47963%_
                                  (map (lambda (_%g4806648068%_)
                                         (_%expand-path47965%_
                                          _%hd4797548012%_
                                          _%g4806648068%_))
                                       (foldr (lambda (_%g4807148074%_
                                                       _%g4807248077%_)
                                                (cons _%g4807148074%_
                                                      _%g4807248077%_))
                                              '()
                                              _%mod4798548043%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4798048024%_
                                                    _%target4797748018%_
                                                    '()))
                                                 (_%g4796747991%_
                                                  _%g4796847995%_)))))
                                       (_%g4796747991%_ _%g4796847995%_))))
                               (_%g4796747991%_ _%g4796847995%_))))
                       (_%g4796747991%_ _%g4796847995%_)))))
           (_%g4796648080%_ _%stx47960%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx48229%_)
       (let* ((_%g4823248256%_
               (lambda (_%g4823348252%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4823348252%_)))
              (_%g4823148382%_
               (lambda (_%g4823348260%_)
                 (if (gx#stx-pair? _%g4823348260%_)
                     (let ((_%e4823648263%_ (gx#syntax-e _%g4823348260%_)))
                       (let ((_%hd4823748267%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4823648263%_)))
                             (_%tl4823848270%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4823648263%_))))
                         (if (gx#stx-pair? _%tl4823848270%_)
                             (let ((_%e4823948273%_
                                    (gx#syntax-e _%tl4823848270%_)))
                               (let ((_%hd4824048277%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4823948273%_)))
                                     (_%tl4824148280%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4823948273%_))))
                                 (if (gx#stx-pair/null? _%tl4824148280%_)
                                     (let ((_g49446_
                                            (gx#syntax-split-splice
                                             _%tl4824148280%_
                                             '0)))
                                       (begin
                                         (let ((_g49447_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49446_)
                                                      (##values-length
                                                       _g49446_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49447_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49447_)))
                                         (let ((_%target4824248283%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49446_ 0)))
                                               (_%tl4824448286%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49446_ 1))))
                                           (if (gx#stx-null? _%tl4824448286%_)
                                               (letrec ((_%loop4824548289%_
                                                         (lambda (_%hd4824348293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4824948296%_)
                   (if (gx#stx-pair? _%hd4824348293%_)
                       (let ((_%e4824648298%_ (gx#syntax-e _%hd4824348293%_)))
                         (let ((_%lp-hd4824748302%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4824648298%_)))
                               (_%lp-tl4824848305%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4824648298%_))))
                           (_%loop4824548289%_
                            _%lp-tl4824848305%_
                            (cons _%lp-hd4824748302%_ _%id4824948296%_))))
                       (let ((_%id4825048308%_ (reverse _%id4824948296%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%g4833048333%_ _%g4833148336%_)
                                       (cons _%g4833048333%_ _%g4833148336%_))
                                     '()
                                     _%id4825048308%_))
                             (let* ((_%keys48347%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%g4833848341%_
                                                      _%g4833948344%_)
                                               (cons _%g4833848341%_
                                                     _%g4833948344%_))
                                             '()
                                             _%id4825048308%_)))
                                    (_%keytab48358%_
                                     (let ((_%ht48350%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%g4835248354%_)
                                          (hash-put!
                                           _%ht48350%_
                                           _%g4835248354%_
                                           '#t))
                                        _%keys48347%_)
                                       _%ht48350%_))
                                    (_%exports48361%_
                                     (gx#core-expand-export-source
                                      _%hd4824048277%_))
                                    (_%fold-e48377%_
                                     (letrec ((_%fold-e48364%_
                                               (lambda (_%out48367%_
                                                        _%r48369%_)
                                                 (if (gx#module-export?
                                                      _%out48367%_)
                                                     (if (hash-get
                                                          _%keytab48358%_
                                                          (gx#module-export-name
                                                           _%out48367%_))
                                                         _%r48369%_
                                                         (cons _%out48367%_
                                                               _%r48369%_))
                                                     (if (gx#export-set?
                                                          _%out48367%_)
                                                         (foldl _%fold-e48364%_
                                                                _%r48369%_
                                                                (gx#export-set-exports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48367%_))
                 _%r48369%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e48364%_)))
                               (cons 'begin:
                                     (foldl _%fold-e48377%_
                                            '()
                                            _%exports48361%_)))
                             (_%g4823248256%_ _%g4823348260%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4824548289%_
                                                  _%target4824248283%_
                                                  '()))
                                               (_%g4823248256%_
                                                _%g4823348260%_)))))
                                     (_%g4823248256%_ _%g4823348260%_))))
                             (_%g4823248256%_ _%g4823348260%_))))
                     (_%g4823248256%_ _%g4823348260%_)))))
         (_%g4823148382%_ _%stx48229%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx48387%_)
       (let* ((_%g4839048414%_
               (lambda (_%g4839148410%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4839148410%_)))
              (_%g4838948544%_
               (lambda (_%g4839148418%_)
                 (if (gx#stx-pair? _%g4839148418%_)
                     (let ((_%e4839448421%_ (gx#syntax-e _%g4839148418%_)))
                       (let ((_%hd4839548425%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4839448421%_)))
                             (_%tl4839648428%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4839448421%_))))
                         (if (gx#stx-pair? _%tl4839648428%_)
                             (let ((_%e4839748431%_
                                    (gx#syntax-e _%tl4839648428%_)))
                               (let ((_%hd4839848435%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4839748431%_)))
                                     (_%tl4839948438%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4839748431%_))))
                                 (if (gx#stx-pair/null? _%tl4839948438%_)
                                     (let ((_g49448_
                                            (gx#syntax-split-splice
                                             _%tl4839948438%_
                                             '0)))
                                       (begin
                                         (let ((_g49449_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49448_)
                                                      (##values-length
                                                       _g49448_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49449_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49449_)))
                                         (let ((_%target4840048441%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49448_ 0)))
                                               (_%tl4840248444%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49448_ 1))))
                                           (if (gx#stx-null? _%tl4840248444%_)
                                               (letrec ((_%loop4840348447%_
                                                         (lambda (_%hd4840148451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%filter-out4840748454%_)
                   (if (gx#stx-pair? _%hd4840148451%_)
                       (let ((_%e4840448456%_ (gx#syntax-e _%hd4840148451%_)))
                         (let ((_%lp-hd4840548460%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4840448456%_)))
                               (_%lp-tl4840648463%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4840448456%_))))
                           (_%loop4840348447%_
                            _%lp-tl4840648463%_
                            (cons _%lp-hd4840548460%_
                                  _%filter-out4840748454%_))))
                       (let* ((_%filter-out4840848466%_
                               (reverse _%filter-out4840748454%_))
                              (_%filtered48489%_ (make-hash-table)))
                         (letrec ((_%fold-out48492%_
                                   (lambda (_%out48534%_ _%r48536%_)
                                     (if (gx#module-export? _%out48534%_)
                                         (cons _%out48534%_ _%r48536%_)
                                         (if (gx#export-set? _%out48534%_)
                                             (foldl _%fold-out48492%_
                                                    _%r48536%_
                                                    (gx#export-set-exports
                                                     _%out48534%_))
                                             _%r48536%_)))))
                           (for-each
                            (lambda (_%src48495%_)
                              (let* ((_%exports48501%_
                                      (if (gx#identifier? _%src48495%_)
                                          (let ((_%mod48498%_
                                                 (gx#syntax-local-value
                                                  _%src48495%_)))
                                            (if (gx#module-context?
                                                 _%mod48498%_)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"not a module context"
                                                 _%src48495%_))
                                            (gx#module-context-export
                                             _%mod48498%_))
                                          (gx#core-expand-export-source
                                           _%src48495%_)))
                                     (_%exports48504%_
                                      (foldl _%fold-out48492%_
                                             '()
                                             _%exports48501%_)))
                                (for-each
                                 (lambda (_%out48509%_)
                                   (hash-put!
                                    _%filtered48489%_
                                    (gx#module-export-name _%out48509%_)
                                    '#t))
                                 _%exports48504%_)))
                            (foldr (lambda (_%g4851148514%_ _%g4851248517%_)
                                     (cons _%g4851148514%_ _%g4851248517%_))
                                   '()
                                   _%filter-out4840848466%_))
                           (let* ((_%exports48520%_
                                   (gx#core-expand-export-source
                                    _%hd4839848435%_))
                                  (_%exports48523%_
                                   (foldl _%fold-out48492%_
                                          '()
                                          _%exports48520%_))
                                  (_%exports48529%_
                                   (filter (lambda (_%out48526%_)
                                             (not (hash-get
                                                   _%filtered48489%_
                                                   (gx#module-export-name
                                                    _%out48526%_))))
                                           _%exports48523%_)))
                             (cons 'begin: _%exports48529%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4840348447%_
                                                  _%target4840048441%_
                                                  '()))
                                               (_%g4839048414%_
                                                _%g4839148418%_)))))
                                     (_%g4839048414%_ _%g4839148418%_))))
                             (_%g4839048414%_ _%g4839148418%_))))
                     (_%g4839048414%_ _%g4839148418%_)))))
         (_%g4838948544%_ _%stx48387%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out48549%_ _%rename48551%_)
      (gx#make-module-export
       (gx#module-export-context _%out48549%_)
       (gx#module-export-key _%out48549%_)
       (gx#module-export-phi _%out48549%_)
       _%rename48551%_
       (gx#module-export-weak? _%out48549%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx48553%_)
       (let* ((_%g4855648589%_
               (lambda (_%g4855748585%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4855748585%_)))
              (_%g4855548780%_
               (lambda (_%g4855748593%_)
                 (if (gx#stx-pair? _%g4855748593%_)
                     (let ((_%e4856148596%_ (gx#syntax-e _%g4855748593%_)))
                       (let ((_%hd4856248600%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4856148596%_)))
                             (_%tl4856348603%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4856148596%_))))
                         (if (gx#stx-pair? _%tl4856348603%_)
                             (let ((_%e4856448606%_
                                    (gx#syntax-e _%tl4856348603%_)))
                               (let ((_%hd4856548610%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4856448606%_)))
                                     (_%tl4856648613%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4856448606%_))))
                                 (if (gx#stx-pair/null? _%tl4856648613%_)
                                     (let ((_g49450_
                                            (gx#syntax-split-splice
                                             _%tl4856648613%_
                                             '0)))
                                       (begin
                                         (let ((_g49451_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49450_)
                                                      (##values-length
                                                       _g49450_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49451_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49451_)))
                                         (let ((_%target4856748616%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49450_ 0)))
                                               (_%tl4856948619%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49450_ 1))))
                                           (if (gx#stx-null? _%tl4856948619%_)
                                               (letrec ((_%loop4857048622%_
                                                         (lambda (_%hd4856848626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4857448629%_
                          _%id4857548630%_)
                   (if (gx#stx-pair? _%hd4856848626%_)
                       (let ((_%e4857148632%_ (gx#syntax-e _%hd4856848626%_)))
                         (let ((_%lp-hd4857248636%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4857148632%_)))
                               (_%lp-tl4857348639%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4857148632%_))))
                           (if (gx#stx-pair? _%lp-hd4857248636%_)
                               (let ((_%e4857848642%_
                                      (gx#syntax-e _%lp-hd4857248636%_)))
                                 (let ((_%hd4857948646%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4857848642%_)))
                                       (_%tl4858048649%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4857848642%_))))
                                   (if (gx#stx-pair? _%tl4858048649%_)
                                       (let ((_%e4858148652%_
                                              (gx#syntax-e _%tl4858048649%_)))
                                         (let ((_%hd4858248656%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4858148652%_)))
                                               (_%tl4858348659%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4858148652%_))))
                                           (if (gx#stx-null? _%tl4858348659%_)
                                               (_%loop4857048622%_
                                                _%lp-tl4857348639%_
                                                (cons _%hd4858248656%_
                                                      _%new-id4857448629%_)
                                                (cons _%hd4857948646%_
                                                      _%id4857548630%_))
                                               (_%g4855648589%_
                                                _%g4855748593%_))))
                                       (_%g4855648589%_ _%g4855748593%_))))
                               (_%g4855648589%_ _%g4855748593%_))))
                       (let ((_%new-id4857648662%_
                              (reverse _%new-id4857448629%_))
                             (_%id4857748664%_ (reverse _%id4857548630%_)))
                         (if (and (gx#identifier-list?
                                   (foldr (lambda (_%g4868748690%_
                                                   _%g4868848693%_)
                                            (cons _%g4868748690%_
                                                  _%g4868848693%_))
                                          '()
                                          _%id4857748664%_))
                                  (gx#identifier-list?
                                   (foldr (lambda (_%g4869548698%_
                                                   _%g4869648701%_)
                                            (cons _%g4869548698%_
                                                  _%g4869648701%_))
                                          '()
                                          _%new-id4857648662%_)))
                             (let* ((_%keytab48704%_ (make-hash-table))
                                    (_%found48707%_ (make-hash-table))
                                    (_%_48730%_
                                     (for-each
                                      (lambda (_%id48710%_ _%new-id48712%_)
                                        (hash-put!
                                         _%keytab48704%_
                                         (gx#core-identifier-key _%id48710%_)
                                         (gx#core-identifier-key
                                          _%new-id48712%_)))
                                      (foldr (lambda (_%g4871348716%_
                                                      _%g4871448719%_)
                                               (cons _%g4871348716%_
                                                     _%g4871448719%_))
                                             '()
                                             _%id4857748664%_)
                                      (foldr (lambda (_%g4872148724%_
                                                      _%g4872248727%_)
                                               (cons _%g4872148724%_
                                                     _%g4872248727%_))
                                             '()
                                             _%new-id4857648662%_)))
                                    (_%exports48733%_
                                     (gx#core-expand-export-source
                                      _%hd4856548610%_))
                                    (_%fold-e48761%_
                                     (letrec ((_%fold-e48736%_
                                               (lambda (_%out48739%_
                                                        _%r48741%_)
                                                 (if (gx#module-export?
                                                      _%out48739%_)
                                                     (let* ((_%name48745%_
                                                             (gx#module-export-name
                                                              _%out48739%_))
                                                            (_%$e48748%_
                                                             (hash-get
                                                              _%keytab48704%_
                                                              _%name48745%_)))
                                                       (if _%$e48748%_
                                                           (let ()
                                                             (hash-put!
                                                              _%found48707%_
                                                              _%name48745%_
                                                              '#t)
                                                             (cons (|gerbil/core/module-sugar[1]#module-export-rename|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%out48739%_
                            _%$e48748%_)
                           _%r48741%_))
                   (cons _%out48739%_ _%r48741%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#export-set?
                                                          _%out48739%_)
                                                         (foldl _%fold-e48736%_
                                                                _%r48741%_
                                                                (gx#export-set-exports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48739%_))
                 (cons _%out48739%_ _%r48741%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e48736%_))
                                    (_%new-exports48764%_
                                     (foldl _%fold-e48761%_
                                            '()
                                            _%exports48733%_)))
                               (for-each
                                (lambda (_%id48769%_)
                                  (if (hash-get
                                       _%found48707%_
                                       (gx#core-identifier-key _%id48769%_))
                                      '#!void
                                      (gx#raise-syntax-error
                                       '#f
                                       '"bad syntax; identifier is not in the export set"
                                       _%stx48553%_
                                       _%id48769%_)))
                                (foldr (lambda (_%g4877148774%_
                                                _%g4877248777%_)
                                         (cons _%g4877148774%_
                                               _%g4877248777%_))
                                       '()
                                       _%id4857748664%_))
                               (cons 'begin: _%new-exports48764%_))
                             (_%g4855648589%_ _%g4855748593%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4857048622%_
                                                  _%target4856748616%_
                                                  '()
                                                  '()))
                                               (_%g4855648589%_
                                                _%g4855748593%_)))))
                                     (_%g4855648589%_ _%g4855748593%_))))
                             (_%g4855648589%_ _%g4855748593%_))))
                     (_%g4855648589%_ _%g4855748593%_)))))
         (_%g4855548780%_ _%stx48553%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx48785%_)
       (let* ((_%g4878848806%_
               (lambda (_%g4878948802%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4878948802%_)))
              (_%g4878748891%_
               (lambda (_%g4878948810%_)
                 (if (gx#stx-pair? _%g4878948810%_)
                     (let ((_%e4879248813%_ (gx#syntax-e _%g4878948810%_)))
                       (let ((_%hd4879348817%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4879248813%_)))
                             (_%tl4879448820%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4879248813%_))))
                         (if (gx#stx-pair? _%tl4879448820%_)
                             (let ((_%e4879548823%_
                                    (gx#syntax-e _%tl4879448820%_)))
                               (let ((_%hd4879648827%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4879548823%_)))
                                     (_%tl4879748830%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4879548823%_))))
                                 (if (gx#stx-pair? _%tl4879748830%_)
                                     (let ((_%e4879848833%_
                                            (gx#syntax-e _%tl4879748830%_)))
                                       (let ((_%hd4879948837%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4879848833%_)))
                                             (_%tl4880048840%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4879848833%_))))
                                         (if (gx#stx-null? _%tl4880048840%_)
                                             (if (gx#identifier?
                                                  _%hd4879948837%_)
                                                 (let* ((_%pre48861%_
                                                         (gx#stx-e
                                                          _%hd4879948837%_))
                                                        (_%exports48864%_
                                                         (gx#core-expand-export-source
                                                          _%hd4879648827%_))
                                                        (_%rename-e48870%_
                                                         (lambda (_%name48867%_)
                                                           (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                            _%name48867%_
                                                            _%pre48861%_)))
                                                        (_%fold-e48886%_
                                                         (letrec ((_%fold-e48873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%out48876%_ _%r48878%_)
                             (if (gx#module-export? _%out48876%_)
                                 (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                        _%out48876%_
                                        (_%rename-e48870%_
                                         (gx#module-export-name _%out48876%_)))
                                       _%r48878%_)
                                 (if (gx#export-set? _%out48876%_)
                                     (foldl _%fold-e48873%_
                                            _%r48878%_
                                            (gx#export-set-exports
                                             _%out48876%_))
                                     (cons _%out48876%_ _%r48878%_))))))
                   _%fold-e48873%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'begin:
                                                         (foldl _%fold-e48886%_
                                                                '()
                                                                _%exports48864%_)))
                                                 (_%g4878848806%_
                                                  _%g4878948810%_))
                                             (_%g4878848806%_
                                              _%g4878948810%_))))
                                     (_%g4878848806%_ _%g4878948810%_))))
                             (_%g4878848806%_ _%g4878948810%_))))
                     (_%g4878848806%_ _%g4878948810%_)))))
         (_%g4878748891%_ _%stx48785%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx48895%_)
       (letrec ((_%identifiers48898%_
                 (lambda (_%id49126%_ _%unchecked?49128%_)
                   (let ((_%info49130%_
                          (gx#syntax-local-value _%id49126%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info49130%_))
                         (cons _%id49126%_
                               (cons (let ((__obj49427 _%info49130%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj49427
                                              'gerbil/core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj49427
                                              '4
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj49427
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj49428
                                                         _%info49130%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj49428
                                                           'gerbil/core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj49428
                                                           '15
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj49428
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?49128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj49429 _%info49130%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49429
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49429
                                                 '19
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49429
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj49430 _%info49130%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49430
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49430
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49430
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj49431 _%info49130%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj49431
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj49431
                                      '17
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj49431
                                    'mutators)))))
                 (map cdr
                      (let ((__obj49432 _%info49130%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj49432
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj49432
                               '16
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj49432 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor49133%_
                                                   (let ((__obj49433
                                                          _%info49130%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj49433
                                                            'gerbil/core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj49433
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj49433
                                                          'constructor)))))
                                              (if _%ctor49133%_
                                                  (cons _%ctor49133%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx48895%_
                          _%id49126%_))))))
         (let* ((_%__stx4936849369%_ _%stx48895%_)
                (_%g4890248943%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4936849369%_))))
           (let ((_%__kont4937149372%_
                  (lambda (_%g4890449087%_ _%g4890549089%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4910849110%_)
                              (_%identifiers48898%_
                               _%g4910849110%_
                               (gx#stx-e _%g4890549089%_)))
                            (foldr (lambda (_%g4911349116%_ _%g4911449119%_)
                                     (cons _%g4911349116%_ _%g4911449119%_))
                                   '()
                                   _%g4890449087%_))))))
                 (_%__kont4937549376%_
                  (lambda (_%g4892548988%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4900449006%_)
                              (_%identifiers48898%_ _%g4900449006%_ '#f))
                            (foldr (lambda (_%g4900949012%_ _%g4901049015%_)
                                     (cons _%g4900949012%_ _%g4901049015%_))
                                   '()
                                   _%g4892548988%_)))))))
             (let* ((_%__match4942549426%_
                     (lambda (_%e4892648950%_
                              _%hd4892748954%_
                              _%tl4892848957%_
                              _%__splice4937749378%_
                              _%target4892948960%_
                              _%tl4893148963%_)
                       (letrec ((_%loop4893248966%_
                                 (lambda (_%hd4893048970%_ _%id4893648973%_)
                                   (if (gx#stx-pair? _%hd4893048970%_)
                                       (let ((_%e4893348975%_
                                              (gx#syntax-e _%hd4893048970%_)))
                                         (let ((_%lp-tl4893548982%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4893348975%_)))
                                               (_%lp-hd4893448979%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4893348975%_))))
                                           (_%loop4893248966%_
                                            _%lp-tl4893548982%_
                                            (cons _%lp-hd4893448979%_
                                                  _%id4893648973%_))))
                                       (let ((_%id4893748985%_
                                              (reverse _%id4893648973%_)))
                                         (_%__kont4937549376%_
                                          _%id4893748985%_))))))
                         (_%loop4893248966%_ _%target4892948960%_ '()))))
                    (_%__match4941149412%_
                     (lambda (_%e4890649025%_
                              _%hd4890749029%_
                              _%tl4890849032%_
                              _%e4890949035%_
                              _%hd4891049039%_
                              _%tl4891149042%_
                              _%e4891249045%_
                              _%e4891349049%_
                              _%hd4891449053%_
                              _%tl4891549056%_
                              _%__splice4937349374%_
                              _%target4891649059%_
                              _%tl4891849062%_)
                       (letrec ((_%loop4891949065%_
                                 (lambda (_%hd4891749069%_ _%id4892349072%_)
                                   (if (gx#stx-pair? _%hd4891749069%_)
                                       (let ((_%e4892049074%_
                                              (gx#syntax-e _%hd4891749069%_)))
                                         (let ((_%lp-tl4892249081%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4892049074%_)))
                                               (_%lp-hd4892149078%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4892049074%_))))
                                           (_%loop4891949065%_
                                            _%lp-tl4892249081%_
                                            (cons _%lp-hd4892149078%_
                                                  _%id4892349072%_))))
                                       (let ((_%id4892449084%_
                                              (reverse _%id4892349072%_)))
                                         (_%__kont4937149372%_
                                          _%id4892449084%_
                                          _%hd4891449053%_))))))
                         (_%loop4891949065%_ _%target4891649059%_ '())))))
               (if (gx#stx-pair? _%__stx4936849369%_)
                   (let ((_%e4890649025%_ (gx#syntax-e _%__stx4936849369%_)))
                     (let ((_%tl4890849032%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4890649025%_)))
                           (_%hd4890749029%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4890649025%_))))
                       (if (gx#stx-pair? _%tl4890849032%_)
                           (let ((_%e4890949035%_
                                  (gx#syntax-e _%tl4890849032%_)))
                             (let ((_%tl4891149042%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4890949035%_)))
                                   (_%hd4891049039%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4890949035%_))))
                               (if (gx#stx-datum? _%hd4891049039%_)
                                   (let ((_%e4891249045%_
                                          (gx#stx-e _%hd4891049039%_)))
                                     (if (equal? _%e4891249045%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4891149042%_)
                                             (let ((_%e4891349049%_
                                                    (gx#syntax-e
                                                     _%tl4891149042%_)))
                                               (let ((_%tl4891549056%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4891349049%_)))
                                                     (_%hd4891449053%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4891349049%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4891549056%_)
                                                     (let ((_%__splice4937349374%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4891549056%_
                                                             '0)))
                                                       (let ((_%tl4891849062%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4937349374%_ '1)))
                     (_%target4891649059%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4937349374%_ '0))))
                 (if (gx#stx-null? _%tl4891849062%_)
                     (_%__match4941149412%_
                      _%e4890649025%_
                      _%hd4890749029%_
                      _%tl4890849032%_
                      _%e4890949035%_
                      _%hd4891049039%_
                      _%tl4891149042%_
                      _%e4891249045%_
                      _%e4891349049%_
                      _%hd4891449053%_
                      _%tl4891549056%_
                      _%__splice4937349374%_
                      _%target4891649059%_
                      _%tl4891849062%_)
                     (if (gx#stx-pair/null? _%tl4890849032%_)
                         (let ((_%__splice4937749378%_
                                (gx#syntax-split-splice->vector
                                 _%tl4890849032%_
                                 '0)))
                           (let ((_%tl4893148963%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4937749378%_ '1)))
                                 (_%target4892948960%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4937749378%_ '0))))
                             (if (gx#stx-null? _%tl4893148963%_)
                                 (_%__match4942549426%_
                                  _%e4890649025%_
                                  _%hd4890749029%_
                                  _%tl4890849032%_
                                  _%__splice4937749378%_
                                  _%target4892948960%_
                                  _%tl4893148963%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4890248943%_)))))
                         (let () (declare (not safe)) (_%g4890248943%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4890849032%_)
                                                         (let ((_%__splice4937749378%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4890849032%_
                         '0)))
                   (let ((_%tl4893148963%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4937749378%_ '1)))
                         (_%target4892948960%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4937749378%_ '0))))
                     (if (gx#stx-null? _%tl4893148963%_)
                         (_%__match4942549426%_
                          _%e4890649025%_
                          _%hd4890749029%_
                          _%tl4890849032%_
                          _%__splice4937749378%_
                          _%target4892948960%_
                          _%tl4893148963%_)
                         (let () (declare (not safe)) (_%g4890248943%_)))))
                 (let () (declare (not safe)) (_%g4890248943%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4890849032%_)
                                                 (let ((_%__splice4937749378%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4890849032%_
                                                         '0)))
                                                   (let ((_%tl4893148963%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4937749378%_
                                                             '1)))
                                                         (_%target4892948960%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4937749378%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4893148963%_)
                                                         (_%__match4942549426%_
                                                          _%e4890649025%_
                                                          _%hd4890749029%_
                                                          _%tl4890849032%_
                                                          _%__splice4937749378%_
                                                          _%target4892948960%_
                                                          _%tl4893148963%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4890248943%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4890248943%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4890849032%_)
                                             (let ((_%__splice4937749378%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4890849032%_
                                                     '0)))
                                               (let ((_%tl4893148963%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4937749378%_
                                                         '1)))
                                                     (_%target4892948960%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4937749378%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4893148963%_)
                                                     (_%__match4942549426%_
                                                      _%e4890649025%_
                                                      _%hd4890749029%_
                                                      _%tl4890849032%_
                                                      _%__splice4937749378%_
                                                      _%target4892948960%_
                                                      _%tl4893148963%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4890248943%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4890248943%_)))))
                                   (if (gx#stx-pair/null? _%tl4890849032%_)
                                       (let ((_%__splice4937749378%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4890849032%_
                                               '0)))
                                         (let ((_%tl4893148963%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4937749378%_
                                                   '1)))
                                               (_%target4892948960%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4937749378%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4893148963%_)
                                               (_%__match4942549426%_
                                                _%e4890649025%_
                                                _%hd4890749029%_
                                                _%tl4890849032%_
                                                _%__splice4937749378%_
                                                _%target4892948960%_
                                                _%tl4893148963%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4890248943%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4890248943%_))))))
                           (if (gx#stx-pair/null? _%tl4890849032%_)
                               (let ((_%__splice4937749378%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4890849032%_
                                       '0)))
                                 (let ((_%tl4893148963%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4937749378%_
                                           '1)))
                                       (_%target4892948960%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4937749378%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4893148963%_)
                                       (_%__match4942549426%_
                                        _%e4890649025%_
                                        _%hd4890749029%_
                                        _%tl4890849032%_
                                        _%__splice4937749378%_
                                        _%target4892948960%_
                                        _%tl4893148963%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4890248943%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4890248943%_))))))
                   (let () (declare (not safe)) (_%g4890248943%_)))))))))))
