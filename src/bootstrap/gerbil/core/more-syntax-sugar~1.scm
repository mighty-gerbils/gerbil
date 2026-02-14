(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g46298_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx45536%_)
        (let* ((_%g4554045551%_
                (lambda (_%g4554145547%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4554145547%_)))
               (_%g4553945581%_
                (lambda (_%g4554145555%_)
                  (if (gx#stx-pair? _%g4554145555%_)
                      (let ((_%e4554345558%_ (gx#syntax-e _%g4554145555%_)))
                        (let ((_%hd4554445562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4554345558%_)))
                              (_%tl4554545565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4554345558%_))))
                          ((lambda (_%g4554245568%_)
                             (cons (gx#datum->syntax '#f 'make-setq-macro)
                                   (cons 'macro:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     _%g4554245568%_)
                                               '()))))
                           _%tl4554545565%_)))
                      (_%g4554045551%_ _%g4554145555%_)))))
          (_%g4553945581%_ _%$stx45536%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx45585%_)
        (let* ((_%g4558845621%_
                (lambda (_%g4558945617%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4558945617%_)))
               (_%g4558746023%_
                (lambda (_%g4558945625%_)
                  (if (gx#stx-pair? _%g4558945625%_)
                      (let ((_%e4559245628%_ (gx#syntax-e _%g4558945625%_)))
                        (let ((_%hd4559345632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4559245628%_)))
                              (_%tl4559445635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4559245628%_))))
                          (if (gx#stx-pair? _%tl4559445635%_)
                              (let ((_%e4559545638%_
                                     (gx#syntax-e _%tl4559445635%_)))
                                (let ((_%hd4559645642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4559545638%_)))
                                      (_%tl4559745645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4559545638%_))))
                                  (if (gx#stx-pair/null? _%hd4559645642%_)
                                      (let ((_g46292_
                                             (gx#syntax-split-splice
                                              _%hd4559645642%_
                                              '0)))
                                        (begin
                                          (let ((_g46293_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46292_)
                                                       (##values-length
                                                        _g46292_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46293_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46293_)))
                                          (let ((_%target4559845648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46292_ 0)))
                                                (_%tl4560045651%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46292_ 1))))
                                            (if (gx#stx-null? _%tl4560045651%_)
                                                (letrec ((_%loop4560145654%_
                                                          (lambda (_%hd4559945658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4560545661%_)
                    (if (gx#stx-pair? _%hd4559945658%_)
                        (let ((_%e4560245663%_ (gx#syntax-e _%hd4559945658%_)))
                          (let ((_%lp-hd4560345667%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4560245663%_)))
                                (_%lp-tl4560445670%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4560245663%_))))
                            (_%loop4560145654%_
                             _%lp-tl4560445670%_
                             (cons _%lp-hd4560345667%_ _%clause4560545661%_))))
                        (let ((_%clause4560645673%_
                               (reverse _%clause4560545661%_)))
                          (if (gx#stx-pair/null? _%tl4559745645%_)
                              (let ((_g46294_
                                     (gx#syntax-split-splice
                                      _%tl4559745645%_
                                      '0)))
                                (begin
                                  (let ((_g46295_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46294_)
                                               (##values-length _g46294_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46295_ 2)))
                                        (error "Context expects 2 values"
                                               _g46295_)))
                                  (let ((_%target4560745676%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46294_ 0)))
                                        (_%tl4560945679%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46294_ 1))))
                                    (if (gx#stx-null? _%tl4560945679%_)
                                        (letrec ((_%loop4561045682%_
                                                  (lambda (_%hd4560845686%_
                                                           _%body4561445689%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4560845686%_)
                                                        (let ((_%e4561145691%_
                                                               (gx#syntax-e
                                                                _%hd4560845686%_)))
                                                          (let ((_%lp-hd4561245695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4561145691%_)))
                        (_%lp-tl4561345698%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4561145691%_))))
                    (_%loop4561045682%_
                     _%lp-tl4561345698%_
                     (cons _%lp-hd4561245695%_ _%body4561445689%_))))
                (let ((_%body4561545701%_ (reverse _%body4561445689%_)))
                  ((lambda (_%g4559045704%_ _%g4559145706%_)
                     (let* ((_%g4572845745%_
                             (lambda (_%g4572945741%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4572945741%_)))
                            (_%g4572745812%_
                             (lambda (_%g4572945749%_)
                               (if (gx#stx-pair/null? _%g4572945749%_)
                                   (let ((_g46296_
                                          (gx#syntax-split-splice
                                           _%g4572945749%_
                                           '0)))
                                     (begin
                                       (let ((_g46297_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g46296_)
                                                    (##values-length _g46296_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g46297_ 2)))
                                             (error "Context expects 2 values"
                                                    _g46297_)))
                                       (let ((_%target4573145752%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g46296_ 0)))
                                             (_%tl4573345755%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g46296_ 1))))
                                         (if (gx#stx-null? _%tl4573345755%_)
                                             (letrec ((_%loop4573445758%_
                                                       (lambda (_%hd4573245762%_
                                                                _%clause4573845765%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4573245762%_)
                                                             (let ((_%e4573545767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4573245762%_)))
                       (let ((_%lp-hd4573645771%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4573545767%_)))
                             (_%lp-tl4573745774%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4573545767%_))))
                         (_%loop4573445758%_
                          _%lp-tl4573745774%_
                          (cons _%lp-hd4573645771%_ _%clause4573845765%_))))
                     (let ((_%clause4573945777%_
                            (reverse _%clause4573845765%_)))
                       ((lambda (_%g4573045780%_)
                          (cons (gx#datum->syntax '#f 'with-syntax*)
                                (cons (foldr (lambda (_%g4579545800%_
                                                      _%g4579645803%_)
                                               (cons _%g4579545800%_
                                                     _%g4579645803%_))
                                             '()
                                             _%g4573045780%_)
                                      (foldr (lambda (_%g4579745806%_
                                                      _%g4579845809%_)
                                               (cons _%g4579745806%_
                                                     _%g4579845809%_))
                                             '()
                                             _%g4559045704%_))))
                        _%clause4573945777%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4573445758%_
                                                _%target4573145752%_
                                                '()))
                                             (_%g4572845745%_
                                              _%g4572945749%_)))))
                                   (_%g4572845745%_ _%g4572945749%_)))))
                       (_%g4572745812%_
                        (map (lambda (_%clause45816%_)
                               (let* ((_%__stx4622946230%_ _%clause45816%_)
                                      (_%g4582045859%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4622946230%_))))
                                 (let ((_%__kont4623246233%_
                                        (lambda (_%g4582245992%_
                                                 _%g4582345994%_)
                                          (cons _%g4582345994%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-temp)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g4582245992%_ '()))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont4623446235%_
                                        (lambda (_%g4583645914%_
                                                 _%g4583745916%_
                                                 _%g4583845917%_)
                                          (cons _%g4583845917%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-identifier)
                                                            (cons _%g4583745916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g4593645939%_ _%g4593745942%_)
                                   (cons _%g4593645939%_ _%g4593745942%_))
                                 '()
                                 _%g4583645914%_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4629046291%_
                                           (lambda (_%e4583945866%_
                                                    _%hd4584045870%_
                                                    _%tl4584145873%_
                                                    _%e4584245876%_
                                                    _%hd4584345880%_
                                                    _%tl4584445883%_
                                                    _%__splice4623646237%_
                                                    _%target4584545886%_
                                                    _%tl4584745889%_)
                                             (letrec ((_%loop4584845892%_
                                                       (lambda (_%hd4584645896%_
                                                                _%components4585245899%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4584645896%_)
                                                             (let ((_%e4584945901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4584645896%_)))
                       (let ((_%lp-tl4585145908%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4584945901%_)))
                             (_%lp-hd4585045905%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4584945901%_))))
                         (_%loop4584845892%_
                          _%lp-tl4585145908%_
                          (cons _%lp-hd4585045905%_
                                _%components4585245899%_))))
                     (let ((_%components4585345911%_
                            (reverse _%components4585245899%_)))
                       (let ((_%g4583645914%_ _%components4585345911%_)
                             (_%g4583745916%_ _%hd4584345880%_)
                             (_%g4583845917%_ _%hd4584045870%_))
                         (if (gx#identifier? _%g4583845917%_)
                             (_%__kont4623446235%_
                              _%g4583645914%_
                              _%g4583745916%_
                              _%g4583845917%_)
                             (let ()
                               (declare (not safe))
                               (_%g4582045859%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4584845892%_
                                                _%target4584545886%_
                                                '()))))
                                          (_%__match4627046271%_
                                           (lambda (_%e4582445952%_
                                                    _%hd4582545956%_
                                                    _%tl4582645959%_
                                                    _%e4582745962%_
                                                    _%hd4582845966%_
                                                    _%tl4582945969%_
                                                    _%e4583045972%_
                                                    _%hd4583145976%_
                                                    _%tl4583245979%_
                                                    _%e4583345982%_
                                                    _%hd4583445986%_
                                                    _%tl4583545989%_)
                                             (let ((_%g4582245992%_
                                                    _%hd4583445986%_)
                                                   (_%g4582345994%_
                                                    _%hd4582545956%_))
                                               (if (and (gx#identifier?
                                                         _%g4582345994%_)
                                                        (gx#identifier?
                                                         _%g4582245992%_))
                                                   (_%__kont4623246233%_
                                                    _%g4582245992%_
                                                    _%g4582345994%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4582945969%_)
                                                       (let ((_%__splice4623646237%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4582945969%_
                                                               '0)))
                                                         (let ((_%tl4584745889%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4623646237%_ '1)))
                       (_%target4584545886%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4623646237%_ '0))))
                   (if (gx#stx-null? _%tl4584745889%_)
                       (_%__match4629046291%_
                        _%e4582445952%_
                        _%hd4582545956%_
                        _%tl4582645959%_
                        _%e4582745962%_
                        _%hd4582845966%_
                        _%tl4582945969%_
                        _%__splice4623646237%_
                        _%target4584545886%_
                        _%tl4584745889%_)
                       (let () (declare (not safe)) (_%g4582045859%_)))))
               (let () (declare (not safe)) (_%g4582045859%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (gx#stx-pair? _%__stx4622946230%_)
                                         (let ((_%e4582445952%_
                                                (gx#syntax-e
                                                 _%__stx4622946230%_)))
                                           (let ((_%tl4582645959%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4582445952%_)))
                                                 (_%hd4582545956%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4582445952%_))))
                                             (if (gx#stx-pair?
                                                  _%tl4582645959%_)
                                                 (let ((_%e4582745962%_
                                                        (gx#syntax-e
                                                         _%tl4582645959%_)))
                                                   (let ((_%tl4582945969%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4582745962%_)))
                                                         (_%hd4582845966%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4582745962%_))))
                                                     (if (gx#stx-pair?
                                                          _%hd4582845966%_)
                                                         (let ((_%e4583045972%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd4582845966%_)))
                   (let ((_%tl4583245979%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4583045972%_)))
                         (_%hd4583145976%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4583045972%_))))
                     (if (gx#identifier? _%hd4583145976%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-syntax-sugar[1]#_g46298_|
                              _%hd4583145976%_)
                             (if (gx#stx-pair? _%tl4583245979%_)
                                 (let ((_%e4583345982%_
                                        (gx#syntax-e _%tl4583245979%_)))
                                   (let ((_%tl4583545989%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4583345982%_)))
                                         (_%hd4583445986%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4583345982%_))))
                                     (if (gx#stx-null? _%tl4583545989%_)
                                         (if (gx#stx-null? _%tl4582945969%_)
                                             (_%__match4627046271%_
                                              _%e4582445952%_
                                              _%hd4582545956%_
                                              _%tl4582645959%_
                                              _%e4582745962%_
                                              _%hd4582845966%_
                                              _%tl4582945969%_
                                              _%e4583045972%_
                                              _%hd4583145976%_
                                              _%tl4583245979%_
                                              _%e4583345982%_
                                              _%hd4583445986%_
                                              _%tl4583545989%_)
                                             (if (gx#stx-pair/null?
                                                  _%tl4582945969%_)
                                                 (let ((_%__splice4623646237%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4582945969%_
                                                         '0)))
                                                   (let ((_%tl4584745889%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4623646237%_
                                                             '1)))
                                                         (_%target4584545886%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4623646237%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4584745889%_)
                                                         (_%__match4629046291%_
                                                          _%e4582445952%_
                                                          _%hd4582545956%_
                                                          _%tl4582645959%_
                                                          _%e4582745962%_
                                                          _%hd4582845966%_
                                                          _%tl4582945969%_
                                                          _%__splice4623646237%_
                                                          _%target4584545886%_
                                                          _%tl4584745889%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4582045859%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4582045859%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4582945969%_)
                                             (let ((_%__splice4623646237%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4582945969%_
                                                     '0)))
                                               (let ((_%tl4584745889%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4623646237%_
                                                         '1)))
                                                     (_%target4584545886%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4623646237%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4584745889%_)
                                                     (_%__match4629046291%_
                                                      _%e4582445952%_
                                                      _%hd4582545956%_
                                                      _%tl4582645959%_
                                                      _%e4582745962%_
                                                      _%hd4582845966%_
                                                      _%tl4582945969%_
                                                      _%__splice4623646237%_
                                                      _%target4584545886%_
                                                      _%tl4584745889%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4582045859%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4582045859%_))))))
                                 (if (gx#stx-pair/null? _%tl4582945969%_)
                                     (let ((_%__splice4623646237%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4582945969%_
                                             '0)))
                                       (let ((_%tl4584745889%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4623646237%_
                                                 '1)))
                                             (_%target4584545886%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4623646237%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4584745889%_)
                                             (_%__match4629046291%_
                                              _%e4582445952%_
                                              _%hd4582545956%_
                                              _%tl4582645959%_
                                              _%e4582745962%_
                                              _%hd4582845966%_
                                              _%tl4582945969%_
                                              _%__splice4623646237%_
                                              _%target4584545886%_
                                              _%tl4584745889%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4582045859%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4582045859%_))))
                             (if (gx#stx-pair/null? _%tl4582945969%_)
                                 (let ((_%__splice4623646237%_
                                        (gx#syntax-split-splice->vector
                                         _%tl4582945969%_
                                         '0)))
                                   (let ((_%tl4584745889%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4623646237%_
                                             '1)))
                                         (_%target4584545886%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4623646237%_
                                             '0))))
                                     (if (gx#stx-null? _%tl4584745889%_)
                                         (_%__match4629046291%_
                                          _%e4582445952%_
                                          _%hd4582545956%_
                                          _%tl4582645959%_
                                          _%e4582745962%_
                                          _%hd4582845966%_
                                          _%tl4582945969%_
                                          _%__splice4623646237%_
                                          _%target4584545886%_
                                          _%tl4584745889%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g4582045859%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g4582045859%_))))
                         (if (gx#stx-pair/null? _%tl4582945969%_)
                             (let ((_%__splice4623646237%_
                                    (gx#syntax-split-splice->vector
                                     _%tl4582945969%_
                                     '0)))
                               (let ((_%tl4584745889%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4623646237%_
                                         '1)))
                                     (_%target4584545886%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4623646237%_
                                         '0))))
                                 (if (gx#stx-null? _%tl4584745889%_)
                                     (_%__match4629046291%_
                                      _%e4582445952%_
                                      _%hd4582545956%_
                                      _%tl4582645959%_
                                      _%e4582745962%_
                                      _%hd4582845966%_
                                      _%tl4582945969%_
                                      _%__splice4623646237%_
                                      _%target4584545886%_
                                      _%tl4584745889%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g4582045859%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4582045859%_))))))
                 (if (gx#stx-pair/null? _%tl4582945969%_)
                     (let ((_%__splice4623646237%_
                            (gx#syntax-split-splice->vector
                             _%tl4582945969%_
                             '0)))
                       (let ((_%tl4584745889%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4623646237%_ '1)))
                             (_%target4584545886%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4623646237%_ '0))))
                         (if (gx#stx-null? _%tl4584745889%_)
                             (_%__match4629046291%_
                              _%e4582445952%_
                              _%hd4582545956%_
                              _%tl4582645959%_
                              _%e4582745962%_
                              _%hd4582845966%_
                              _%tl4582945969%_
                              _%__splice4623646237%_
                              _%target4584545886%_
                              _%tl4584745889%_)
                             (let () (declare (not safe)) (_%g4582045859%_)))))
                     (let () (declare (not safe)) (_%g4582045859%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4582045859%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g4582045859%_)))))))
                             (foldr (lambda (_%g4601446017%_ _%g4601546020%_)
                                      (cons _%g4601446017%_ _%g4601546020%_))
                                    '()
                                    _%g4559145706%_)))))
                   _%body4561545701%_
                   _%clause4560645673%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4561045682%_
                                           _%target4560745676%_
                                           '()))
                                        (_%g4558845621%_ _%g4558945625%_)))))
                              (_%g4558845621%_ _%g4558945625%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4560145654%_
                                                   _%target4559845648%_
                                                   '()))
                                                (_%g4558845621%_
                                                 _%g4558945625%_)))))
                                      (_%g4558845621%_ _%g4558945625%_))))
                              (_%g4558845621%_ _%g4558945625%_))))
                      (_%g4558845621%_ _%g4558945625%_)))))
          (_%g4558746023%_ _%stx45585%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx46031%_)
        (let* ((_%g4603546072%_
                (lambda (_%g4603646068%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4603646068%_)))
               (_%g4603446209%_
                (lambda (_%g4603646076%_)
                  (if (gx#stx-pair? _%g4603646076%_)
                      (let ((_%e4604046079%_ (gx#syntax-e _%g4603646076%_)))
                        (let ((_%hd4604146083%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4604046079%_)))
                              (_%tl4604246086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4604046079%_))))
                          (if (gx#stx-pair? _%tl4604246086%_)
                              (let ((_%e4604346089%_
                                     (gx#syntax-e _%tl4604246086%_)))
                                (let ((_%hd4604446093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4604346089%_)))
                                      (_%tl4604546096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4604346089%_))))
                                  (if (gx#stx-pair? _%hd4604446093%_)
                                      (let ((_%e4604646099%_
                                             (gx#syntax-e _%hd4604446093%_)))
                                        (let ((_%hd4604746103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4604646099%_)))
                                              (_%tl4604846106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4604646099%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4604846106%_)
                                              (let ((_g46299_
                                                     (gx#syntax-split-splice
                                                      _%tl4604846106%_
                                                      '0)))
                                                (begin
                                                  (let ((_g46300_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g46299_)
                                                               (##values-length
                                                                _g46299_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g46300_ 2)))
                (error "Context expects 2 values" _g46300_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4604946109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46299_
                                                            0)))
                                                        (_%tl4605146112%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46299_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4605146112%_)
                                                        (letrec ((_%loop4605246115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4605046119%_ _%components4605646122%_)
                            (if (gx#stx-pair? _%hd4605046119%_)
                                (let ((_%e4605346124%_
                                       (gx#syntax-e _%hd4605046119%_)))
                                  (let ((_%lp-hd4605446128%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4605346124%_)))
                                        (_%lp-tl4605546131%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4605346124%_))))
                                    (_%loop4605246115%_
                                     _%lp-tl4605546131%_
                                     (cons _%lp-hd4605446128%_
                                           _%components4605646122%_))))
                                (let ((_%components4605746134%_
                                       (reverse _%components4605646122%_)))
                                  (if (gx#stx-pair/null? _%tl4604546096%_)
                                      (let ((_g46301_
                                             (gx#syntax-split-splice
                                              _%tl4604546096%_
                                              '0)))
                                        (begin
                                          (let ((_g46302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46301_)
                                                       (##values-length
                                                        _g46301_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46302_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46302_)))
                                          (let ((_%target4605846137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46301_ 0)))
                                                (_%tl4606046140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46301_ 1))))
                                            (if (gx#stx-null? _%tl4606046140%_)
                                                (letrec ((_%loop4606146143%_
                                                          (lambda (_%hd4605946147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4606546150%_)
                    (if (gx#stx-pair? _%hd4605946147%_)
                        (let ((_%e4606246152%_ (gx#syntax-e _%hd4605946147%_)))
                          (let ((_%lp-hd4606346156%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4606246152%_)))
                                (_%lp-tl4606446159%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4606246152%_))))
                            (_%loop4606146143%_
                             _%lp-tl4606446159%_
                             (cons _%lp-hd4606346156%_ _%body4606546150%_))))
                        (let ((_%body4606646162%_
                               (reverse _%body4606546150%_)))
                          ((lambda (_%g4603746165%_
                                    _%g4603846167%_
                                    _%g4603946168%_)
                             (if (gx#identifier? _%g4603946168%_)
                                 (cons (gx#datum->syntax '#f 'with-identifiers)
                                       (cons (cons (cons _%g4603946168%_
                                                         (foldr (lambda (_%g4619246197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4619346200%_)
                          (cons _%g4619246197%_ _%g4619346200%_))
                        '()
                        _%g4603846167%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (foldr (lambda (_%g4619446203%_
                                                             _%g4619546206%_)
                                                      (cons _%g4619446203%_
                                                            _%g4619546206%_))
                                                    '()
                                                    _%g4603746165%_)))
                                 (_%g4603546072%_ _%g4603646076%_)))
                           _%body4606646162%_
                           _%components4605746134%_
                           _%hd4604746103%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4606146143%_
                                                   _%target4605846137%_
                                                   '()))
                                                (_%g4603546072%_
                                                 _%g4603646076%_)))))
                                      (_%g4603546072%_ _%g4603646076%_)))))))
                  (_%loop4605246115%_ _%target4604946109%_ '()))
                (_%g4603546072%_ _%g4603646076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4603546072%_
                                               _%g4603646076%_))))
                                      (_%g4603546072%_ _%g4603646076%_))))
                              (_%g4603546072%_ _%g4603646076%_))))
                      (_%g4603546072%_ _%g4603646076%_)))))
          (_%g4603446209%_ _%$stx46031%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx46215%_)
        (let ((_%g4621846225%_
               (lambda (_%g4621946221%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4621946221%_))))
          (_%g4621846225%_ _%$stx46215%_))))))
