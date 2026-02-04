(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g45877_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx45115%_)
        (let* ((_%g4511945130%_
                (lambda (_%g4512045126%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4512045126%_)))
               (_%g4511845160%_
                (lambda (_%g4512045134%_)
                  (if (gx#stx-pair? _%g4512045134%_)
                      (let ((_%e4512245137%_ (gx#syntax-e _%g4512045134%_)))
                        (let ((_%hd4512345141%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4512245137%_)))
                              (_%tl4512445144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4512245137%_))))
                          ((lambda (_%g4512145147%_)
                             (cons (gx#datum->syntax '#f 'make-setq-macro)
                                   (cons 'macro:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     _%g4512145147%_)
                                               '()))))
                           _%tl4512445144%_)))
                      (_%g4511945130%_ _%g4512045134%_)))))
          (_%g4511845160%_ _%$stx45115%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx45164%_)
        (let* ((_%g4516745200%_
                (lambda (_%g4516845196%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4516845196%_)))
               (_%g4516645602%_
                (lambda (_%g4516845204%_)
                  (if (gx#stx-pair? _%g4516845204%_)
                      (let ((_%e4517145207%_ (gx#syntax-e _%g4516845204%_)))
                        (let ((_%hd4517245211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4517145207%_)))
                              (_%tl4517345214%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4517145207%_))))
                          (if (gx#stx-pair? _%tl4517345214%_)
                              (let ((_%e4517445217%_
                                     (gx#syntax-e _%tl4517345214%_)))
                                (let ((_%hd4517545221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4517445217%_)))
                                      (_%tl4517645224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4517445217%_))))
                                  (if (gx#stx-pair/null? _%hd4517545221%_)
                                      (let ((_g45871_
                                             (gx#syntax-split-splice
                                              _%hd4517545221%_
                                              '0)))
                                        (begin
                                          (let ((_g45872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45871_)
                                                       (##values-length
                                                        _g45871_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45872_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45872_)))
                                          (let ((_%target4517745227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45871_ 0)))
                                                (_%tl4517945230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45871_ 1))))
                                            (if (gx#stx-null? _%tl4517945230%_)
                                                (letrec ((_%loop4518045233%_
                                                          (lambda (_%hd4517845237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4518445240%_)
                    (if (gx#stx-pair? _%hd4517845237%_)
                        (let ((_%e4518145242%_ (gx#syntax-e _%hd4517845237%_)))
                          (let ((_%lp-hd4518245246%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4518145242%_)))
                                (_%lp-tl4518345249%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4518145242%_))))
                            (_%loop4518045233%_
                             _%lp-tl4518345249%_
                             (cons _%lp-hd4518245246%_ _%clause4518445240%_))))
                        (let ((_%clause4518545252%_
                               (reverse _%clause4518445240%_)))
                          (if (gx#stx-pair/null? _%tl4517645224%_)
                              (let ((_g45873_
                                     (gx#syntax-split-splice
                                      _%tl4517645224%_
                                      '0)))
                                (begin
                                  (let ((_g45874_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45873_)
                                               (##values-length _g45873_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45874_ 2)))
                                        (error "Context expects 2 values"
                                               _g45874_)))
                                  (let ((_%target4518645255%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45873_ 0)))
                                        (_%tl4518845258%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45873_ 1))))
                                    (if (gx#stx-null? _%tl4518845258%_)
                                        (letrec ((_%loop4518945261%_
                                                  (lambda (_%hd4518745265%_
                                                           _%body4519345268%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4518745265%_)
                                                        (let ((_%e4519045270%_
                                                               (gx#syntax-e
                                                                _%hd4518745265%_)))
                                                          (let ((_%lp-hd4519145274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4519045270%_)))
                        (_%lp-tl4519245277%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4519045270%_))))
                    (_%loop4518945261%_
                     _%lp-tl4519245277%_
                     (cons _%lp-hd4519145274%_ _%body4519345268%_))))
                (let ((_%body4519445280%_ (reverse _%body4519345268%_)))
                  ((lambda (_%g4516945283%_ _%g4517045285%_)
                     (let* ((_%g4530745324%_
                             (lambda (_%g4530845320%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4530845320%_)))
                            (_%g4530645391%_
                             (lambda (_%g4530845328%_)
                               (if (gx#stx-pair/null? _%g4530845328%_)
                                   (let ((_g45875_
                                          (gx#syntax-split-splice
                                           _%g4530845328%_
                                           '0)))
                                     (begin
                                       (let ((_g45876_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g45875_)
                                                    (##values-length _g45875_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g45876_ 2)))
                                             (error "Context expects 2 values"
                                                    _g45876_)))
                                       (let ((_%target4531045331%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45875_ 0)))
                                             (_%tl4531245334%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45875_ 1))))
                                         (if (gx#stx-null? _%tl4531245334%_)
                                             (letrec ((_%loop4531345337%_
                                                       (lambda (_%hd4531145341%_
                                                                _%clause4531745344%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4531145341%_)
                                                             (let ((_%e4531445346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4531145341%_)))
                       (let ((_%lp-hd4531545350%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4531445346%_)))
                             (_%lp-tl4531645353%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4531445346%_))))
                         (_%loop4531345337%_
                          _%lp-tl4531645353%_
                          (cons _%lp-hd4531545350%_ _%clause4531745344%_))))
                     (let ((_%clause4531845356%_
                            (reverse _%clause4531745344%_)))
                       ((lambda (_%g4530945359%_)
                          (cons (gx#datum->syntax '#f 'with-syntax*)
                                (cons (foldr (lambda (_%g4537445379%_
                                                      _%g4537545382%_)
                                               (cons _%g4537445379%_
                                                     _%g4537545382%_))
                                             '()
                                             _%g4530945359%_)
                                      (foldr (lambda (_%g4537645385%_
                                                      _%g4537745388%_)
                                               (cons _%g4537645385%_
                                                     _%g4537745388%_))
                                             '()
                                             _%g4516945283%_))))
                        _%clause4531845356%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4531345337%_
                                                _%target4531045331%_
                                                '()))
                                             (_%g4530745324%_
                                              _%g4530845328%_)))))
                                   (_%g4530745324%_ _%g4530845328%_)))))
                       (_%g4530645391%_
                        (map (lambda (_%clause45395%_)
                               (let* ((_%__stx4580845809%_ _%clause45395%_)
                                      (_%g4539945438%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4580845809%_))))
                                 (let ((_%__kont4581145812%_
                                        (lambda (_%g4540145571%_
                                                 _%g4540245573%_)
                                          (cons _%g4540245573%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-temp)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g4540145571%_ '()))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont4581345814%_
                                        (lambda (_%g4541545493%_
                                                 _%g4541645495%_
                                                 _%g4541745496%_)
                                          (cons _%g4541745496%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-identifier)
                                                            (cons _%g4541645495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g4551545518%_ _%g4551645521%_)
                                   (cons _%g4551545518%_ _%g4551645521%_))
                                 '()
                                 _%g4541545493%_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4586945870%_
                                           (lambda (_%e4541845445%_
                                                    _%hd4541945449%_
                                                    _%tl4542045452%_
                                                    _%e4542145455%_
                                                    _%hd4542245459%_
                                                    _%tl4542345462%_
                                                    _%__splice4581545816%_
                                                    _%target4542445465%_
                                                    _%tl4542645468%_)
                                             (letrec ((_%loop4542745471%_
                                                       (lambda (_%hd4542545475%_
                                                                _%components4543145478%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4542545475%_)
                                                             (let ((_%e4542845480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4542545475%_)))
                       (let ((_%lp-tl4543045487%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4542845480%_)))
                             (_%lp-hd4542945484%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4542845480%_))))
                         (_%loop4542745471%_
                          _%lp-tl4543045487%_
                          (cons _%lp-hd4542945484%_
                                _%components4543145478%_))))
                     (let ((_%components4543245490%_
                            (reverse _%components4543145478%_)))
                       (let ((_%g4541545493%_ _%components4543245490%_)
                             (_%g4541645495%_ _%hd4542245459%_)
                             (_%g4541745496%_ _%hd4541945449%_))
                         (if (gx#identifier? _%g4541745496%_)
                             (_%__kont4581345814%_
                              _%g4541545493%_
                              _%g4541645495%_
                              _%g4541745496%_)
                             (let ()
                               (declare (not safe))
                               (_%g4539945438%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4542745471%_
                                                _%target4542445465%_
                                                '()))))
                                          (_%__match4584945850%_
                                           (lambda (_%e4540345531%_
                                                    _%hd4540445535%_
                                                    _%tl4540545538%_
                                                    _%e4540645541%_
                                                    _%hd4540745545%_
                                                    _%tl4540845548%_
                                                    _%e4540945551%_
                                                    _%hd4541045555%_
                                                    _%tl4541145558%_
                                                    _%e4541245561%_
                                                    _%hd4541345565%_
                                                    _%tl4541445568%_)
                                             (let ((_%g4540145571%_
                                                    _%hd4541345565%_)
                                                   (_%g4540245573%_
                                                    _%hd4540445535%_))
                                               (if (and (gx#identifier?
                                                         _%g4540245573%_)
                                                        (gx#identifier?
                                                         _%g4540145571%_))
                                                   (_%__kont4581145812%_
                                                    _%g4540145571%_
                                                    _%g4540245573%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4540845548%_)
                                                       (let ((_%__splice4581545816%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4540845548%_
                                                               '0)))
                                                         (let ((_%tl4542645468%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4581545816%_ '1)))
                       (_%target4542445465%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4581545816%_ '0))))
                   (if (gx#stx-null? _%tl4542645468%_)
                       (_%__match4586945870%_
                        _%e4540345531%_
                        _%hd4540445535%_
                        _%tl4540545538%_
                        _%e4540645541%_
                        _%hd4540745545%_
                        _%tl4540845548%_
                        _%__splice4581545816%_
                        _%target4542445465%_
                        _%tl4542645468%_)
                       (let () (declare (not safe)) (_%g4539945438%_)))))
               (let () (declare (not safe)) (_%g4539945438%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (gx#stx-pair? _%__stx4580845809%_)
                                         (let ((_%e4540345531%_
                                                (gx#syntax-e
                                                 _%__stx4580845809%_)))
                                           (let ((_%tl4540545538%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4540345531%_)))
                                                 (_%hd4540445535%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4540345531%_))))
                                             (if (gx#stx-pair?
                                                  _%tl4540545538%_)
                                                 (let ((_%e4540645541%_
                                                        (gx#syntax-e
                                                         _%tl4540545538%_)))
                                                   (let ((_%tl4540845548%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4540645541%_)))
                                                         (_%hd4540745545%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4540645541%_))))
                                                     (if (gx#stx-pair?
                                                          _%hd4540745545%_)
                                                         (let ((_%e4540945551%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd4540745545%_)))
                   (let ((_%tl4541145558%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4540945551%_)))
                         (_%hd4541045555%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4540945551%_))))
                     (if (gx#identifier? _%hd4541045555%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-syntax-sugar[1]#_g45877_|
                              _%hd4541045555%_)
                             (if (gx#stx-pair? _%tl4541145558%_)
                                 (let ((_%e4541245561%_
                                        (gx#syntax-e _%tl4541145558%_)))
                                   (let ((_%tl4541445568%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4541245561%_)))
                                         (_%hd4541345565%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4541245561%_))))
                                     (if (gx#stx-null? _%tl4541445568%_)
                                         (if (gx#stx-null? _%tl4540845548%_)
                                             (_%__match4584945850%_
                                              _%e4540345531%_
                                              _%hd4540445535%_
                                              _%tl4540545538%_
                                              _%e4540645541%_
                                              _%hd4540745545%_
                                              _%tl4540845548%_
                                              _%e4540945551%_
                                              _%hd4541045555%_
                                              _%tl4541145558%_
                                              _%e4541245561%_
                                              _%hd4541345565%_
                                              _%tl4541445568%_)
                                             (if (gx#stx-pair/null?
                                                  _%tl4540845548%_)
                                                 (let ((_%__splice4581545816%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4540845548%_
                                                         '0)))
                                                   (let ((_%tl4542645468%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4581545816%_
                                                             '1)))
                                                         (_%target4542445465%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4581545816%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4542645468%_)
                                                         (_%__match4586945870%_
                                                          _%e4540345531%_
                                                          _%hd4540445535%_
                                                          _%tl4540545538%_
                                                          _%e4540645541%_
                                                          _%hd4540745545%_
                                                          _%tl4540845548%_
                                                          _%__splice4581545816%_
                                                          _%target4542445465%_
                                                          _%tl4542645468%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4539945438%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4539945438%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4540845548%_)
                                             (let ((_%__splice4581545816%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4540845548%_
                                                     '0)))
                                               (let ((_%tl4542645468%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4581545816%_
                                                         '1)))
                                                     (_%target4542445465%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4581545816%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4542645468%_)
                                                     (_%__match4586945870%_
                                                      _%e4540345531%_
                                                      _%hd4540445535%_
                                                      _%tl4540545538%_
                                                      _%e4540645541%_
                                                      _%hd4540745545%_
                                                      _%tl4540845548%_
                                                      _%__splice4581545816%_
                                                      _%target4542445465%_
                                                      _%tl4542645468%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4539945438%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4539945438%_))))))
                                 (if (gx#stx-pair/null? _%tl4540845548%_)
                                     (let ((_%__splice4581545816%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4540845548%_
                                             '0)))
                                       (let ((_%tl4542645468%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4581545816%_
                                                 '1)))
                                             (_%target4542445465%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4581545816%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4542645468%_)
                                             (_%__match4586945870%_
                                              _%e4540345531%_
                                              _%hd4540445535%_
                                              _%tl4540545538%_
                                              _%e4540645541%_
                                              _%hd4540745545%_
                                              _%tl4540845548%_
                                              _%__splice4581545816%_
                                              _%target4542445465%_
                                              _%tl4542645468%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4539945438%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4539945438%_))))
                             (if (gx#stx-pair/null? _%tl4540845548%_)
                                 (let ((_%__splice4581545816%_
                                        (gx#syntax-split-splice->vector
                                         _%tl4540845548%_
                                         '0)))
                                   (let ((_%tl4542645468%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4581545816%_
                                             '1)))
                                         (_%target4542445465%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4581545816%_
                                             '0))))
                                     (if (gx#stx-null? _%tl4542645468%_)
                                         (_%__match4586945870%_
                                          _%e4540345531%_
                                          _%hd4540445535%_
                                          _%tl4540545538%_
                                          _%e4540645541%_
                                          _%hd4540745545%_
                                          _%tl4540845548%_
                                          _%__splice4581545816%_
                                          _%target4542445465%_
                                          _%tl4542645468%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g4539945438%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g4539945438%_))))
                         (if (gx#stx-pair/null? _%tl4540845548%_)
                             (let ((_%__splice4581545816%_
                                    (gx#syntax-split-splice->vector
                                     _%tl4540845548%_
                                     '0)))
                               (let ((_%tl4542645468%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4581545816%_
                                         '1)))
                                     (_%target4542445465%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4581545816%_
                                         '0))))
                                 (if (gx#stx-null? _%tl4542645468%_)
                                     (_%__match4586945870%_
                                      _%e4540345531%_
                                      _%hd4540445535%_
                                      _%tl4540545538%_
                                      _%e4540645541%_
                                      _%hd4540745545%_
                                      _%tl4540845548%_
                                      _%__splice4581545816%_
                                      _%target4542445465%_
                                      _%tl4542645468%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g4539945438%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4539945438%_))))))
                 (if (gx#stx-pair/null? _%tl4540845548%_)
                     (let ((_%__splice4581545816%_
                            (gx#syntax-split-splice->vector
                             _%tl4540845548%_
                             '0)))
                       (let ((_%tl4542645468%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4581545816%_ '1)))
                             (_%target4542445465%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4581545816%_ '0))))
                         (if (gx#stx-null? _%tl4542645468%_)
                             (_%__match4586945870%_
                              _%e4540345531%_
                              _%hd4540445535%_
                              _%tl4540545538%_
                              _%e4540645541%_
                              _%hd4540745545%_
                              _%tl4540845548%_
                              _%__splice4581545816%_
                              _%target4542445465%_
                              _%tl4542645468%_)
                             (let () (declare (not safe)) (_%g4539945438%_)))))
                     (let () (declare (not safe)) (_%g4539945438%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4539945438%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g4539945438%_)))))))
                             (foldr (lambda (_%g4559345596%_ _%g4559445599%_)
                                      (cons _%g4559345596%_ _%g4559445599%_))
                                    '()
                                    _%g4517045285%_)))))
                   _%body4519445280%_
                   _%clause4518545252%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4518945261%_
                                           _%target4518645255%_
                                           '()))
                                        (_%g4516745200%_ _%g4516845204%_)))))
                              (_%g4516745200%_ _%g4516845204%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4518045233%_
                                                   _%target4517745227%_
                                                   '()))
                                                (_%g4516745200%_
                                                 _%g4516845204%_)))))
                                      (_%g4516745200%_ _%g4516845204%_))))
                              (_%g4516745200%_ _%g4516845204%_))))
                      (_%g4516745200%_ _%g4516845204%_)))))
          (_%g4516645602%_ _%stx45164%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx45610%_)
        (let* ((_%g4561445651%_
                (lambda (_%g4561545647%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4561545647%_)))
               (_%g4561345788%_
                (lambda (_%g4561545655%_)
                  (if (gx#stx-pair? _%g4561545655%_)
                      (let ((_%e4561945658%_ (gx#syntax-e _%g4561545655%_)))
                        (let ((_%hd4562045662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4561945658%_)))
                              (_%tl4562145665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4561945658%_))))
                          (if (gx#stx-pair? _%tl4562145665%_)
                              (let ((_%e4562245668%_
                                     (gx#syntax-e _%tl4562145665%_)))
                                (let ((_%hd4562345672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4562245668%_)))
                                      (_%tl4562445675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4562245668%_))))
                                  (if (gx#stx-pair? _%hd4562345672%_)
                                      (let ((_%e4562545678%_
                                             (gx#syntax-e _%hd4562345672%_)))
                                        (let ((_%hd4562645682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4562545678%_)))
                                              (_%tl4562745685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4562545678%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4562745685%_)
                                              (let ((_g45878_
                                                     (gx#syntax-split-splice
                                                      _%tl4562745685%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45879_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45878_)
                                                               (##values-length
                                                                _g45878_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45879_ 2)))
                (error "Context expects 2 values" _g45879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4562845688%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45878_
                                                            0)))
                                                        (_%tl4563045691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45878_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4563045691%_)
                                                        (letrec ((_%loop4563145694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4562945698%_ _%components4563545701%_)
                            (if (gx#stx-pair? _%hd4562945698%_)
                                (let ((_%e4563245703%_
                                       (gx#syntax-e _%hd4562945698%_)))
                                  (let ((_%lp-hd4563345707%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4563245703%_)))
                                        (_%lp-tl4563445710%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4563245703%_))))
                                    (_%loop4563145694%_
                                     _%lp-tl4563445710%_
                                     (cons _%lp-hd4563345707%_
                                           _%components4563545701%_))))
                                (let ((_%components4563645713%_
                                       (reverse _%components4563545701%_)))
                                  (if (gx#stx-pair/null? _%tl4562445675%_)
                                      (let ((_g45880_
                                             (gx#syntax-split-splice
                                              _%tl4562445675%_
                                              '0)))
                                        (begin
                                          (let ((_g45881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45880_)
                                                       (##values-length
                                                        _g45880_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45881_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45881_)))
                                          (let ((_%target4563745716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45880_ 0)))
                                                (_%tl4563945719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45880_ 1))))
                                            (if (gx#stx-null? _%tl4563945719%_)
                                                (letrec ((_%loop4564045722%_
                                                          (lambda (_%hd4563845726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4564445729%_)
                    (if (gx#stx-pair? _%hd4563845726%_)
                        (let ((_%e4564145731%_ (gx#syntax-e _%hd4563845726%_)))
                          (let ((_%lp-hd4564245735%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4564145731%_)))
                                (_%lp-tl4564345738%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4564145731%_))))
                            (_%loop4564045722%_
                             _%lp-tl4564345738%_
                             (cons _%lp-hd4564245735%_ _%body4564445729%_))))
                        (let ((_%body4564545741%_
                               (reverse _%body4564445729%_)))
                          ((lambda (_%g4561645744%_
                                    _%g4561745746%_
                                    _%g4561845747%_)
                             (if (gx#identifier? _%g4561845747%_)
                                 (cons (gx#datum->syntax '#f 'with-identifiers)
                                       (cons (cons (cons _%g4561845747%_
                                                         (foldr (lambda (_%g4577145776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4577245779%_)
                          (cons _%g4577145776%_ _%g4577245779%_))
                        '()
                        _%g4561745746%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (foldr (lambda (_%g4577345782%_
                                                             _%g4577445785%_)
                                                      (cons _%g4577345782%_
                                                            _%g4577445785%_))
                                                    '()
                                                    _%g4561645744%_)))
                                 (_%g4561445651%_ _%g4561545655%_)))
                           _%body4564545741%_
                           _%components4563645713%_
                           _%hd4562645682%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4564045722%_
                                                   _%target4563745716%_
                                                   '()))
                                                (_%g4561445651%_
                                                 _%g4561545655%_)))))
                                      (_%g4561445651%_ _%g4561545655%_)))))))
                  (_%loop4563145694%_ _%target4562845688%_ '()))
                (_%g4561445651%_ _%g4561545655%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4561445651%_
                                               _%g4561545655%_))))
                                      (_%g4561445651%_ _%g4561545655%_))))
                              (_%g4561445651%_ _%g4561545655%_))))
                      (_%g4561445651%_ _%g4561545655%_)))))
          (_%g4561345788%_ _%$stx45610%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx45794%_)
        (let ((_%g4579745804%_
               (lambda (_%g4579845800%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4579845800%_))))
          (_%g4579745804%_ _%$stx45794%_))))))
