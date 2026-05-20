(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g46339_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx45577%_)
        (let* ((_%g4558145592%_
                (lambda (_%g4558245588%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4558245588%_)))
               (_%g4558045622%_
                (lambda (_%g4558245596%_)
                  (if (gx#stx-pair? _%g4558245596%_)
                      (let ((_%e4558445599%_ (gx#syntax-e _%g4558245596%_)))
                        (let ((_%hd4558545603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4558445599%_)))
                              (_%tl4558645606%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4558445599%_))))
                          (cons (gx#datum->syntax '#f 'make-setq-macro)
                                (cons 'macro:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'syntax-rules)
                                                  _%tl4558645606%_)
                                            '())))))
                      (_%g4558145592%_ _%g4558245596%_)))))
          (_%g4558045622%_ _%$stx45577%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx45626%_)
        (let* ((_%g4562945662%_
                (lambda (_%g4563045658%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4563045658%_)))
               (_%g4562846064%_
                (lambda (_%g4563045666%_)
                  (if (gx#stx-pair? _%g4563045666%_)
                      (let ((_%e4563345669%_ (gx#syntax-e _%g4563045666%_)))
                        (let ((_%hd4563445673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4563345669%_)))
                              (_%tl4563545676%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4563345669%_))))
                          (if (gx#stx-pair? _%tl4563545676%_)
                              (let ((_%e4563645679%_
                                     (gx#syntax-e _%tl4563545676%_)))
                                (let ((_%hd4563745683%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4563645679%_)))
                                      (_%tl4563845686%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4563645679%_))))
                                  (if (gx#stx-pair/null? _%hd4563745683%_)
                                      (let ((_g46333_
                                             (gx#syntax-split-splice
                                              _%hd4563745683%_
                                              '0)))
                                        (begin
                                          (let ((_g46334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46333_)
                                                       (##values-length
                                                        _g46333_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46334_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46334_)))
                                          (let ((_%target4563945689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46333_ 0)))
                                                (_%tl4564145692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46333_ 1))))
                                            (if (gx#stx-null? _%tl4564145692%_)
                                                (letrec ((_%loop4564245695%_
                                                          (lambda (_%hd4564045699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4564645702%_)
                    (if (gx#stx-pair? _%hd4564045699%_)
                        (let ((_%e4564345704%_ (gx#syntax-e _%hd4564045699%_)))
                          (let ((_%lp-hd4564445708%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4564345704%_)))
                                (_%lp-tl4564545711%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4564345704%_))))
                            (_%loop4564245695%_
                             _%lp-tl4564545711%_
                             (cons _%lp-hd4564445708%_ _%clause4564645702%_))))
                        (let ((_%clause4564745714%_
                               (reverse _%clause4564645702%_)))
                          (if (gx#stx-pair/null? _%tl4563845686%_)
                              (let ((_g46335_
                                     (gx#syntax-split-splice
                                      _%tl4563845686%_
                                      '0)))
                                (begin
                                  (let ((_g46336_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46335_)
                                               (##values-length _g46335_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46336_ 2)))
                                        (error "Context expects 2 values"
                                               _g46336_)))
                                  (let ((_%target4564845717%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46335_ 0)))
                                        (_%tl4565045720%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46335_ 1))))
                                    (if (gx#stx-null? _%tl4565045720%_)
                                        (letrec ((_%loop4565145723%_
                                                  (lambda (_%hd4564945727%_
                                                           _%body4565545730%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4564945727%_)
                                                        (let ((_%e4565245732%_
                                                               (gx#syntax-e
                                                                _%hd4564945727%_)))
                                                          (let ((_%lp-hd4565345736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4565245732%_)))
                        (_%lp-tl4565445739%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4565245732%_))))
                    (_%loop4565145723%_
                     _%lp-tl4565445739%_
                     (cons _%lp-hd4565345736%_ _%body4565545730%_))))
                (let* ((_%body4565645742%_ (reverse _%body4565545730%_))
                       (_%g4576945786%_
                        (lambda (_%g4577045782%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g4577045782%_)))
                       (_%g4576845853%_
                        (lambda (_%g4577045790%_)
                          (if (gx#stx-pair/null? _%g4577045790%_)
                              (let ((_g46337_
                                     (gx#syntax-split-splice
                                      _%g4577045790%_
                                      '0)))
                                (begin
                                  (let ((_g46338_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46337_)
                                               (##values-length _g46337_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46338_ 2)))
                                        (error "Context expects 2 values"
                                               _g46338_)))
                                  (let ((_%target4577245793%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46337_ 0)))
                                        (_%tl4577445796%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46337_ 1))))
                                    (if (gx#stx-null? _%tl4577445796%_)
                                        (letrec ((_%loop4577545799%_
                                                  (lambda (_%hd4577345803%_
                                                           _%clause4577945806%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4577345803%_)
                                                        (let ((_%e4577645808%_
                                                               (gx#syntax-e
                                                                _%hd4577345803%_)))
                                                          (let ((_%lp-hd4577745812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4577645808%_)))
                        (_%lp-tl4577845815%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4577645808%_))))
                    (_%loop4577545799%_
                     _%lp-tl4577845815%_
                     (cons _%lp-hd4577745812%_ _%clause4577945806%_))))
                (let ((_%clause4578045818%_ (reverse _%clause4577945806%_)))
                  (cons (gx#datum->syntax '#f 'with-syntax*)
                        (cons (foldr (lambda (_%g4583645841%_ _%g4583745844%_)
                                       (cons _%g4583645841%_ _%g4583745844%_))
                                     '()
                                     _%clause4578045818%_)
                              (foldr (lambda (_%g4583845847%_ _%g4583945850%_)
                                       (cons _%g4583845847%_ _%g4583945850%_))
                                     '()
                                     _%body4565645742%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4577545799%_
                                           _%target4577245793%_
                                           '()))
                                        (_%g4576945786%_ _%g4577045790%_)))))
                              (_%g4576945786%_ _%g4577045790%_)))))
                  (_%g4576845853%_
                   (map (lambda (_%clause45857%_)
                          (let* ((_%__stx4627046271%_ _%clause45857%_)
                                 (_%g4586145900%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx4627046271%_))))
                            (let ((_%__kont4627346274%_
                                   (lambda (_%g4586346033%_ _%g4586446035%_)
                                     (cons _%g4586446035%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax-local-temp)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%g4586346033%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont4627546276%_
                                   (lambda (_%g4587745955%_
                                            _%g4587845957%_
                                            _%g4587945958%_)
                                     (cons _%g4587945958%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-identifier)
                                                       (cons _%g4587845957%_
                                                             (foldr (lambda (_%g4597745980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4597845983%_)
                              (cons _%g4597745980%_ _%g4597845983%_))
                            '()
                            _%g4587745955%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                              (let* ((_%__match4633146332%_
                                      (lambda (_%e4588045907%_
                                               _%hd4588145911%_
                                               _%tl4588245914%_
                                               _%e4588345917%_
                                               _%hd4588445921%_
                                               _%tl4588545924%_
                                               _%__splice4627746278%_
                                               _%target4588645927%_
                                               _%tl4588845930%_)
                                        (letrec ((_%loop4588945933%_
                                                  (lambda (_%hd4588745937%_
                                                           _%components4589345940%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4588745937%_)
                                                        (let ((_%e4589045942%_
                                                               (gx#syntax-e
                                                                _%hd4588745937%_)))
                                                          (let ((_%lp-tl4589245949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e4589045942%_)))
                        (_%lp-hd4589145946%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4589045942%_))))
                    (_%loop4588945933%_
                     _%lp-tl4589245949%_
                     (cons _%lp-hd4589145946%_ _%components4589345940%_))))
                (let ((_%components4589445952%_
                       (reverse _%components4589345940%_)))
                  (let ((_%g4587745955%_ _%components4589445952%_)
                        (_%g4587845957%_ _%hd4588445921%_)
                        (_%g4587945958%_ _%hd4588145911%_))
                    (if (gx#identifier? _%g4587945958%_)
                        (_%__kont4627546276%_
                         _%g4587745955%_
                         _%g4587845957%_
                         _%g4587945958%_)
                        (_%g4586145900%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4588945933%_
                                           _%target4588645927%_
                                           '()))))
                                     (_%__match4631146312%_
                                      (lambda (_%e4586545993%_
                                               _%hd4586645997%_
                                               _%tl4586746000%_
                                               _%e4586846003%_
                                               _%hd4586946007%_
                                               _%tl4587046010%_
                                               _%e4587146013%_
                                               _%hd4587246017%_
                                               _%tl4587346020%_
                                               _%e4587446023%_
                                               _%hd4587546027%_
                                               _%tl4587646030%_)
                                        (let ((_%g4586346033%_
                                               _%hd4587546027%_)
                                              (_%g4586446035%_
                                               _%hd4586645997%_))
                                          (if (and (gx#identifier?
                                                    _%g4586446035%_)
                                                   (gx#identifier?
                                                    _%g4586346033%_))
                                              (_%__kont4627346274%_
                                               _%g4586346033%_
                                               _%g4586446035%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl4587046010%_)
                                                  (let ((_%__splice4627746278%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4587046010%_
                                                          '0)))
                                                    (let ((_%tl4588845930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4627746278%_
                                                              '1)))
                                                          (_%target4588645927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4627746278%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4588845930%_)
                                                          (_%__match4633146332%_
                                                           _%e4586545993%_
                                                           _%hd4586645997%_
                                                           _%tl4586746000%_
                                                           _%e4586846003%_
                                                           _%hd4586946007%_
                                                           _%tl4587046010%_
                                                           _%__splice4627746278%_
                                                           _%target4588645927%_
                                                           _%tl4588845930%_)
                                                          (_%g4586145900%_))))
                                                  (_%g4586145900%_)))))))
                                (if (gx#stx-pair? _%__stx4627046271%_)
                                    (let ((_%e4586545993%_
                                           (gx#syntax-e _%__stx4627046271%_)))
                                      (let ((_%tl4586746000%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4586545993%_)))
                                            (_%hd4586645997%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4586545993%_))))
                                        (if (gx#stx-pair? _%tl4586746000%_)
                                            (let ((_%e4586846003%_
                                                   (gx#syntax-e
                                                    _%tl4586746000%_)))
                                              (let ((_%tl4587046010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4586846003%_)))
                                                    (_%hd4586946007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4586846003%_))))
                                                (if (gx#stx-pair?
                                                     _%hd4586946007%_)
                                                    (let ((_%e4587146013%_
                                                           (gx#syntax-e
                                                            _%hd4586946007%_)))
                                                      (let ((_%tl4587346020%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4587146013%_)))
                    (_%hd4587246017%_
                     (let () (declare (not safe)) (##car _%e4587146013%_))))
                (if (gx#identifier? _%hd4587246017%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/more-syntax-sugar[1]#_g46339_|
                         _%hd4587246017%_)
                        (if (gx#stx-pair? _%tl4587346020%_)
                            (let ((_%e4587446023%_
                                   (gx#syntax-e _%tl4587346020%_)))
                              (let ((_%tl4587646030%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4587446023%_)))
                                    (_%hd4587546027%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4587446023%_))))
                                (if (gx#stx-null? _%tl4587646030%_)
                                    (if (gx#stx-null? _%tl4587046010%_)
                                        (_%__match4631146312%_
                                         _%e4586545993%_
                                         _%hd4586645997%_
                                         _%tl4586746000%_
                                         _%e4586846003%_
                                         _%hd4586946007%_
                                         _%tl4587046010%_
                                         _%e4587146013%_
                                         _%hd4587246017%_
                                         _%tl4587346020%_
                                         _%e4587446023%_
                                         _%hd4587546027%_
                                         _%tl4587646030%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4587046010%_)
                                            (let ((_%__splice4627746278%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4587046010%_
                                                    '0)))
                                              (let ((_%tl4588845930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4627746278%_
                                                        '1)))
                                                    (_%target4588645927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4627746278%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4588845930%_)
                                                    (_%__match4633146332%_
                                                     _%e4586545993%_
                                                     _%hd4586645997%_
                                                     _%tl4586746000%_
                                                     _%e4586846003%_
                                                     _%hd4586946007%_
                                                     _%tl4587046010%_
                                                     _%__splice4627746278%_
                                                     _%target4588645927%_
                                                     _%tl4588845930%_)
                                                    (_%g4586145900%_))))
                                            (_%g4586145900%_)))
                                    (if (gx#stx-pair/null? _%tl4587046010%_)
                                        (let ((_%__splice4627746278%_
                                               (gx#syntax-split-splice->vector
                                                _%tl4587046010%_
                                                '0)))
                                          (let ((_%tl4588845930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4627746278%_
                                                    '1)))
                                                (_%target4588645927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4627746278%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4588845930%_)
                                                (_%__match4633146332%_
                                                 _%e4586545993%_
                                                 _%hd4586645997%_
                                                 _%tl4586746000%_
                                                 _%e4586846003%_
                                                 _%hd4586946007%_
                                                 _%tl4587046010%_
                                                 _%__splice4627746278%_
                                                 _%target4588645927%_
                                                 _%tl4588845930%_)
                                                (_%g4586145900%_))))
                                        (_%g4586145900%_)))))
                            (if (gx#stx-pair/null? _%tl4587046010%_)
                                (let ((_%__splice4627746278%_
                                       (gx#syntax-split-splice->vector
                                        _%tl4587046010%_
                                        '0)))
                                  (let ((_%tl4588845930%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice4627746278%_
                                            '1)))
                                        (_%target4588645927%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice4627746278%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4588845930%_)
                                        (_%__match4633146332%_
                                         _%e4586545993%_
                                         _%hd4586645997%_
                                         _%tl4586746000%_
                                         _%e4586846003%_
                                         _%hd4586946007%_
                                         _%tl4587046010%_
                                         _%__splice4627746278%_
                                         _%target4588645927%_
                                         _%tl4588845930%_)
                                        (_%g4586145900%_))))
                                (_%g4586145900%_)))
                        (if (gx#stx-pair/null? _%tl4587046010%_)
                            (let ((_%__splice4627746278%_
                                   (gx#syntax-split-splice->vector
                                    _%tl4587046010%_
                                    '0)))
                              (let ((_%tl4588845930%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4627746278%_
                                        '1)))
                                    (_%target4588645927%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4627746278%_
                                        '0))))
                                (if (gx#stx-null? _%tl4588845930%_)
                                    (_%__match4633146332%_
                                     _%e4586545993%_
                                     _%hd4586645997%_
                                     _%tl4586746000%_
                                     _%e4586846003%_
                                     _%hd4586946007%_
                                     _%tl4587046010%_
                                     _%__splice4627746278%_
                                     _%target4588645927%_
                                     _%tl4588845930%_)
                                    (_%g4586145900%_))))
                            (_%g4586145900%_)))
                    (if (gx#stx-pair/null? _%tl4587046010%_)
                        (let ((_%__splice4627746278%_
                               (gx#syntax-split-splice->vector
                                _%tl4587046010%_
                                '0)))
                          (let ((_%tl4588845930%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4627746278%_ '1)))
                                (_%target4588645927%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4627746278%_ '0))))
                            (if (gx#stx-null? _%tl4588845930%_)
                                (_%__match4633146332%_
                                 _%e4586545993%_
                                 _%hd4586645997%_
                                 _%tl4586746000%_
                                 _%e4586846003%_
                                 _%hd4586946007%_
                                 _%tl4587046010%_
                                 _%__splice4627746278%_
                                 _%target4588645927%_
                                 _%tl4588845930%_)
                                (_%g4586145900%_))))
                        (_%g4586145900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl4587046010%_)
                                                        (let ((_%__splice4627746278%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl4587046010%_
                                                                '0)))
                                                          (let ((_%tl4588845930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4627746278%_ '1)))
                        (_%target4588645927%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4627746278%_ '0))))
                    (if (gx#stx-null? _%tl4588845930%_)
                        (_%__match4633146332%_
                         _%e4586545993%_
                         _%hd4586645997%_
                         _%tl4586746000%_
                         _%e4586846003%_
                         _%hd4586946007%_
                         _%tl4587046010%_
                         _%__splice4627746278%_
                         _%target4588645927%_
                         _%tl4588845930%_)
                        (_%g4586145900%_))))
                (_%g4586145900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4586145900%_))))
                                    (_%g4586145900%_))))))
                        (foldr (lambda (_%g4605546058%_ _%g4605646061%_)
                                 (cons _%g4605546058%_ _%g4605646061%_))
                               '()
                               _%clause4564745714%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4565145723%_
                                           _%target4564845717%_
                                           '()))
                                        (_%g4562945662%_ _%g4563045666%_)))))
                              (_%g4562945662%_ _%g4563045666%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4564245695%_
                                                   _%target4563945689%_
                                                   '()))
                                                (_%g4562945662%_
                                                 _%g4563045666%_)))))
                                      (_%g4562945662%_ _%g4563045666%_))))
                              (_%g4562945662%_ _%g4563045666%_))))
                      (_%g4562945662%_ _%g4563045666%_)))))
          (_%g4562846064%_ _%stx45626%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx46072%_)
        (let* ((_%g4607646113%_
                (lambda (_%g4607746109%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4607746109%_)))
               (_%g4607546250%_
                (lambda (_%g4607746117%_)
                  (if (gx#stx-pair? _%g4607746117%_)
                      (let ((_%e4608146120%_ (gx#syntax-e _%g4607746117%_)))
                        (let ((_%hd4608246124%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4608146120%_)))
                              (_%tl4608346127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4608146120%_))))
                          (if (gx#stx-pair? _%tl4608346127%_)
                              (let ((_%e4608446130%_
                                     (gx#syntax-e _%tl4608346127%_)))
                                (let ((_%hd4608546134%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4608446130%_)))
                                      (_%tl4608646137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4608446130%_))))
                                  (if (gx#stx-pair? _%hd4608546134%_)
                                      (let ((_%e4608746140%_
                                             (gx#syntax-e _%hd4608546134%_)))
                                        (let ((_%hd4608846144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4608746140%_)))
                                              (_%tl4608946147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4608746140%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4608946147%_)
                                              (let ((_g46340_
                                                     (gx#syntax-split-splice
                                                      _%tl4608946147%_
                                                      '0)))
                                                (begin
                                                  (let ((_g46341_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g46340_)
                                                               (##values-length
                                                                _g46340_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g46341_ 2)))
                (error "Context expects 2 values" _g46341_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4609046150%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46340_
                                                            0)))
                                                        (_%tl4609246153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46340_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4609246153%_)
                                                        (letrec ((_%loop4609346156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4609146160%_ _%components4609746163%_)
                            (if (gx#stx-pair? _%hd4609146160%_)
                                (let ((_%e4609446165%_
                                       (gx#syntax-e _%hd4609146160%_)))
                                  (let ((_%lp-hd4609546169%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4609446165%_)))
                                        (_%lp-tl4609646172%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4609446165%_))))
                                    (_%loop4609346156%_
                                     _%lp-tl4609646172%_
                                     (cons _%lp-hd4609546169%_
                                           _%components4609746163%_))))
                                (let ((_%components4609846175%_
                                       (reverse _%components4609746163%_)))
                                  (if (gx#stx-pair/null? _%tl4608646137%_)
                                      (let ((_g46342_
                                             (gx#syntax-split-splice
                                              _%tl4608646137%_
                                              '0)))
                                        (begin
                                          (let ((_g46343_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46342_)
                                                       (##values-length
                                                        _g46342_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46343_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46343_)))
                                          (let ((_%target4609946178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46342_ 0)))
                                                (_%tl4610146181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46342_ 1))))
                                            (if (gx#stx-null? _%tl4610146181%_)
                                                (letrec ((_%loop4610246184%_
                                                          (lambda (_%hd4610046188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4610646191%_)
                    (if (gx#stx-pair? _%hd4610046188%_)
                        (let ((_%e4610346193%_ (gx#syntax-e _%hd4610046188%_)))
                          (let ((_%lp-hd4610446197%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4610346193%_)))
                                (_%lp-tl4610546200%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4610346193%_))))
                            (_%loop4610246184%_
                             _%lp-tl4610546200%_
                             (cons _%lp-hd4610446197%_ _%body4610646191%_))))
                        (let ((_%body4610746203%_
                               (reverse _%body4610646191%_)))
                          (if (gx#identifier? _%hd4608846144%_)
                              (cons (gx#datum->syntax '#f 'with-identifiers)
                                    (cons (cons (cons _%hd4608846144%_
                                                      (foldr (lambda (_%g4623346238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g4623446241%_)
                       (cons _%g4623346238%_ _%g4623446241%_))
                     '()
                     _%components4609846175%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (foldr (lambda (_%g4623546244%_
                                                          _%g4623646247%_)
                                                   (cons _%g4623546244%_
                                                         _%g4623646247%_))
                                                 '()
                                                 _%body4610746203%_)))
                              (_%g4607646113%_ _%g4607746117%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4610246184%_
                                                   _%target4609946178%_
                                                   '()))
                                                (_%g4607646113%_
                                                 _%g4607746117%_)))))
                                      (_%g4607646113%_ _%g4607746117%_)))))))
                  (_%loop4609346156%_ _%target4609046150%_ '()))
                (_%g4607646113%_ _%g4607746117%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4607646113%_
                                               _%g4607746117%_))))
                                      (_%g4607646113%_ _%g4607746117%_))))
                              (_%g4607646113%_ _%g4607746117%_))))
                      (_%g4607646113%_ _%g4607746117%_)))))
          (_%g4607546250%_ _%$stx46072%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx46256%_)
        (let ((_%g4625946266%_
               (lambda (_%g4626046262%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4626046262%_))))
          (_%g4625946266%_ _%$stx46256%_))))))
