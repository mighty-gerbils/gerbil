(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx91468%_)
      (let* ((_%__stx9797797978%_ _%$stx91468%_)
             (_%g9147391502%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9797797978%_))))
        (let ((_%__kont9798097981%_
               (lambda (_%L91595%_ _%L91597%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91597%_ (cons _%L91595%_ '())))
                             (cons _%L91595%_ '())))))
              (_%__kont9798297983%_
               (lambda (_%L91539%_ _%L91541%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91539%_ (cons _%L91539%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91541%_
                                                           (cons _%L91539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L91539%_ '())))
                                   '()))))))
          (let ((_%__match9800498005%_
                 (lambda (_%e9147991565%_
                          _%hd9147891569%_
                          _%tl9147791572%_
                          _%e9148291575%_
                          _%hd9148191579%_
                          _%tl9148091582%_
                          _%e9148591585%_
                          _%hd9148491589%_
                          _%tl9148391592%_)
                   (let ((_%L91595%_ _%hd9148491589%_)
                         (_%L91597%_ _%hd9148191579%_))
                     (if (or (gx#identifier? _%L91595%_)
                             (gx#stx-fixnum? _%L91595%_))
                         (_%__kont9798097981%_ _%L91595%_ _%L91597%_)
                         (_%__kont9798297983%_
                          _%hd9148491589%_
                          _%hd9148191579%_))))))
            (if (gx#stx-pair? _%__stx9797797978%_)
                (let ((_%e9147991565%_ (gx#syntax-e _%__stx9797797978%_)))
                  (let ((_%tl9147791572%_
                         (let () (declare (not safe)) (##cdr _%e9147991565%_)))
                        (_%hd9147891569%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9147991565%_))))
                    (if (gx#stx-pair? _%tl9147791572%_)
                        (let ((_%e9148291575%_ (gx#syntax-e _%tl9147791572%_)))
                          (let ((_%tl9148091582%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9148291575%_)))
                                (_%hd9148191579%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9148291575%_))))
                            (if (gx#stx-pair? _%tl9148091582%_)
                                (let ((_%e9148591585%_
                                       (gx#syntax-e _%tl9148091582%_)))
                                  (let ((_%tl9148391592%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9148591585%_)))
                                        (_%hd9148491589%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9148591585%_))))
                                    (if (gx#stx-null? _%tl9148391592%_)
                                        (_%__match9800498005%_
                                         _%e9147991565%_
                                         _%hd9147891569%_
                                         _%tl9147791572%_
                                         _%e9148291575%_
                                         _%hd9148191579%_
                                         _%tl9148091582%_
                                         _%e9148591585%_
                                         _%hd9148491589%_
                                         _%tl9148391592%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9147391502%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9147391502%_)))))
                        (let () (declare (not safe)) (_%g9147391502%_)))))
                (let () (declare (not safe)) (_%g9147391502%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx91620%_)
      (let* ((_%__stx9802798028%_ _%$stx91620%_)
             (_%g9162591654%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9802798028%_))))
        (let ((_%__kont9803098031%_
               (lambda (_%L91746%_ _%L91748%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91748%_ (cons _%L91746%_ '())))
                             (cons '0 '())))))
              (_%__kont9803298033%_
               (lambda (_%L91691%_ _%L91693%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91691%_ (cons _%L91691%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91693%_
                                                           (cons _%L91691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9805498055%_
                 (lambda (_%e9163191716%_
                          _%hd9163091720%_
                          _%tl9162991723%_
                          _%e9163491726%_
                          _%hd9163391730%_
                          _%tl9163291733%_
                          _%e9163791736%_
                          _%hd9163691740%_
                          _%tl9163591743%_)
                   (let ((_%L91746%_ _%hd9163691740%_)
                         (_%L91748%_ _%hd9163391730%_))
                     (if (or (gx#identifier? _%L91746%_)
                             (gx#stx-fixnum? _%L91746%_))
                         (_%__kont9803098031%_ _%L91746%_ _%L91748%_)
                         (_%__kont9803298033%_
                          _%hd9163691740%_
                          _%hd9163391730%_))))))
            (if (gx#stx-pair? _%__stx9802798028%_)
                (let ((_%e9163191716%_ (gx#syntax-e _%__stx9802798028%_)))
                  (let ((_%tl9162991723%_
                         (let () (declare (not safe)) (##cdr _%e9163191716%_)))
                        (_%hd9163091720%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9163191716%_))))
                    (if (gx#stx-pair? _%tl9162991723%_)
                        (let ((_%e9163491726%_ (gx#syntax-e _%tl9162991723%_)))
                          (let ((_%tl9163291733%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9163491726%_)))
                                (_%hd9163391730%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9163491726%_))))
                            (if (gx#stx-pair? _%tl9163291733%_)
                                (let ((_%e9163791736%_
                                       (gx#syntax-e _%tl9163291733%_)))
                                  (let ((_%tl9163591743%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9163791736%_)))
                                        (_%hd9163691740%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9163791736%_))))
                                    (if (gx#stx-null? _%tl9163591743%_)
                                        (_%__match9805498055%_
                                         _%e9163191716%_
                                         _%hd9163091720%_
                                         _%tl9162991723%_
                                         _%e9163491726%_
                                         _%hd9163391730%_
                                         _%tl9163291733%_
                                         _%e9163791736%_
                                         _%hd9163691740%_
                                         _%tl9163591743%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9162591654%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9162591654%_)))))
                        (let () (declare (not safe)) (_%g9162591654%_)))))
                (let () (declare (not safe)) (_%g9162591654%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx91771%_)
      (let* ((_%g9177491795%_
              (lambda (_%g9177591791%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9177591791%_)))
             (_%g9177392023%_
              (lambda (_%g9177591799%_)
                (if (gx#stx-pair? _%g9177591799%_)
                    (let ((_%e9178091802%_ (gx#syntax-e _%g9177591799%_)))
                      (let ((_%hd9177991806%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9178091802%_)))
                            (_%tl9177891809%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9178091802%_))))
                        (if (gx#stx-pair? _%tl9177891809%_)
                            (let ((_%e9178391812%_
                                   (gx#syntax-e _%tl9177891809%_)))
                              (let ((_%hd9178291816%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9178391812%_)))
                                    (_%tl9178191819%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9178391812%_))))
                                (if (gx#stx-pair? _%hd9178291816%_)
                                    (let ((_%e9178691822%_
                                           (gx#syntax-e _%hd9178291816%_)))
                                      (let ((_%hd9178591826%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9178691822%_)))
                                            (_%tl9178491829%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9178691822%_))))
                                        (if (gx#stx-pair? _%tl9178491829%_)
                                            (let ((_%e9178991832%_
                                                   (gx#syntax-e
                                                    _%tl9178491829%_)))
                                              (let ((_%hd9178891836%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9178991832%_)))
                                                    (_%tl9178791839%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9178991832%_))))
                                                (if (gx#stx-null?
                                                     _%tl9178791839%_)
                                                    (if (gx#stx-null?
                                                         _%tl9178191819%_)
                                                        ((lambda (_%L91842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L91844%_)
                   (let* ((_%g9186291870%_
                           (lambda (_%g9186391866%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9186391866%_)))
                          (_%g9186192019%_
                           (lambda (_%g9186391874%_)
                             ((lambda (_%L91877%_)
                                (let ()
                                  (let* ((_%g9188991897%_
                                          (lambda (_%g9189091893%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g9189091893%_)))
                                         (_%g9188892015%_
                                          (lambda (_%g9189091901%_)
                                            ((lambda (_%L91904%_)
                                               (let ()
                                                 (let* ((_%g9191791925%_
                                                         (lambda (_%g9191891921%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g9191891921%_)))
                                                        (_%g9191692011%_
                                                         (lambda (_%g9191891929%_)
                                                           ((lambda (_%L91932%_)
                                                              (let ()
                                                                (let* ((_%g9194591953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g9194691949%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g9194691949%_)))
                               (_%g9194492007%_
                                (lambda (_%g9194691957%_)
                                  ((lambda (_%L91960%_)
                                     (let ()
                                       (let* ((_%g9197391981%_
                                               (lambda (_%g9197491977%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g9197491977%_)))
                                              (_%g9197292003%_
                                               (lambda (_%g9197491985%_)
                                                 ((lambda (_%L91988%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'def)
                                (cons _%L91904%_
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@mop.accessor)
                                                              (cons _%L91877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L91844%_ (cons '#t '()))))
                (cons (cons (gx#datum->syntax '#f 'lambda)
                            (cons (cons (gx#datum->syntax '#f 'klass) '())
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '##structure-ref)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'klass)
                                                    (cons _%L91842%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'class::t)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%L91844%_ '()))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons _%L91932%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@mop.accessor)
                            (cons _%L91877%_ (cons _%L91844%_ (cons '#f '()))))
                      (cons (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f 'klass)
                                              '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##unchecked-structure-ref)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'klass)
                                                          (cons _%L91842%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'class::t)
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _%L91844%_ '()))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons (cons (gx#datum->syntax '#f 'def)
                                            (cons _%L91960%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@mop.mutator)
                                  (cons _%L91877%_
                                        (cons _%L91844%_ (cons '#t '()))))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'klass)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'val)
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##structure-set!)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'klass)
                        (cons (gx#datum->syntax '#f 'val)
                              (cons _%L91842%_
                                    (cons (gx#datum->syntax '#f 'class::t)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%L91844%_ '()))
                                                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L91988%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                        (cons _%L91877%_
                                              (cons _%L91844%_
                                                    (cons '#f '()))))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'klass)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##unchecked-structure-set!)
                        (cons (gx#datum->syntax '#f 'klass)
                              (cons (gx#datum->syntax '#f 'val)
                                    (cons _%L91842%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'class::t)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L91844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g9197491985%_))))
                                         (_%g9197292003%_
                                          (gx#stx-identifier
                                           _%L91844%_
                                           '"&"
                                           _%L91960%_)))))
                                   _%g9194691957%_))))
                          (_%g9194492007%_
                           (gx#stx-identifier
                            _%L91844%_
                            _%L91904%_
                            '"-set!")))))
                    _%g9191891929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g9191692011%_
                                                    (gx#stx-identifier
                                                     _%L91844%_
                                                     '"&"
                                                     _%L91904%_)))))
                                             _%g9189091901%_))))
                                    (_%g9188892015%_
                                     (gx#stx-identifier
                                      _%L91844%_
                                      '"class-type-"
                                      _%L91844%_)))))
                              _%g9186391874%_))))
                     (_%g9186192019%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9178891836%_
                 _%hd9178591826%_)
                (_%g9177491795%_ _%g9177591799%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9177491795%_
                                                     _%g9177591799%_))))
                                            (_%g9177491795%_
                                             _%g9177591799%_))))
                                    (_%g9177491795%_ _%g9177591799%_))))
                            (_%g9177491795%_ _%g9177591799%_))))
                    (_%g9177491795%_ _%g9177591799%_)))))
        (_%g9177392023%_ _%stx91771%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx92027%_)
      (let* ((_%g9203192060%_
              (lambda (_%g9203292056%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9203292056%_)))
             (_%g9203092160%_
              (lambda (_%g9203292064%_)
                (if (gx#stx-pair? _%g9203292064%_)
                    (let ((_%e9203792067%_ (gx#syntax-e _%g9203292064%_)))
                      (let ((_%hd9203692071%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9203792067%_)))
                            (_%tl9203592074%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9203792067%_))))
                        (if (gx#stx-pair/null? _%tl9203592074%_)
                            (let ((_g98346_
                                   (gx#syntax-split-splice
                                    _%tl9203592074%_
                                    '0)))
                              (begin
                                (let ((_g98347_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98346_)
                                             (##vector-length _g98346_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98347_ 2)))
                                      (error "Context expects 2 values"
                                             _g98347_)))
                                (let ((_%target9203892077%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98346_ 0)))
                                      (_%tl9204092080%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98346_ 1))))
                                  (if (gx#stx-null? _%tl9204092080%_)
                                      (letrec ((_%loop9204192083%_
                                                (lambda (_%hd9203992087%_
                                                         _%field9204592090%_
                                                         _%slot9204692092%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9203992087%_)
                                                      (let ((_%e9204292095%_
                                                             (gx#syntax-e
                                                              _%hd9203992087%_)))
                                                        (let ((_%lp-hd9204392099%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9204292095%_)))
                      (_%lp-tl9204492102%_
                       (let () (declare (not safe)) (##cdr _%e9204292095%_))))
                  (if (gx#stx-pair? _%lp-hd9204392099%_)
                      (let ((_%e9205192105%_
                             (gx#syntax-e _%lp-hd9204392099%_)))
                        (let ((_%hd9205092109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9205192105%_)))
                              (_%tl9204992112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9205192105%_))))
                          (if (gx#stx-pair? _%tl9204992112%_)
                              (let ((_%e9205492115%_
                                     (gx#syntax-e _%tl9204992112%_)))
                                (let ((_%hd9205392119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9205492115%_)))
                                      (_%tl9205292122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9205492115%_))))
                                  (if (gx#stx-null? _%tl9205292122%_)
                                      (_%loop9204192083%_
                                       _%lp-tl9204492102%_
                                       (cons _%hd9205392119%_
                                             _%field9204592090%_)
                                       (cons _%hd9205092109%_
                                             _%slot9204692092%_))
                                      (_%g9203192060%_ _%g9203292064%_))))
                              (_%g9203192060%_ _%g9203292064%_))))
                      (_%g9203192060%_ _%g9203292064%_))))
              (let ((_%field9204792125%_ (reverse _%field9204592090%_))
                    (_%slot9204892128%_ (reverse _%slot9204692092%_)))
                ((lambda (_%L92131%_ _%L92133%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92131%_
                            _%L92133%_)
                           (let ((__tmp98348
                                  (lambda (_%g9214892152%_
                                           _%g9214992155%_
                                           _%g9215092157%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9214992155%_
                                                            (cons _%g9214892152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9215092157%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp98348
                              '()
                              _%L92131%_
                              _%L92133%_)))))
                 _%field9204792125%_
                 _%slot9204892128%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9204192083%_
                                         _%target9203892077%_
                                         '()
                                         '()))
                                      (_%g9203192060%_ _%g9203292064%_)))))
                            (_%g9203192060%_ _%g9203292064%_))))
                    (_%g9203192060%_ _%g9203292064%_)))))
        (_%g9203092160%_ _%$stx92027%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx92165%_)
      (let* ((_%g9216992203%_
              (lambda (_%g9217092199%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9217092199%_)))
             (_%g9216892314%_
              (lambda (_%g9217092207%_)
                (if (gx#stx-pair? _%g9217092207%_)
                    (let ((_%e9217992210%_ (gx#syntax-e _%g9217092207%_)))
                      (let ((_%hd9217892214%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9217992210%_)))
                            (_%tl9217792217%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9217992210%_))))
                        (if (gx#stx-pair? _%tl9217792217%_)
                            (let ((_%e9218292220%_
                                   (gx#syntax-e _%tl9217792217%_)))
                              (let ((_%hd9218192224%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9218292220%_)))
                                    (_%tl9218092227%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9218292220%_))))
                                (if (gx#stx-pair? _%tl9218092227%_)
                                    (let ((_%e9218592230%_
                                           (gx#syntax-e _%tl9218092227%_)))
                                      (let ((_%hd9218492234%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9218592230%_)))
                                            (_%tl9218392237%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9218592230%_))))
                                        (if (gx#stx-pair? _%tl9218392237%_)
                                            (let ((_%e9218892240%_
                                                   (gx#syntax-e
                                                    _%tl9218392237%_)))
                                              (let ((_%hd9218792244%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9218892240%_)))
                                                    (_%tl9218692247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9218892240%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9218692247%_)
                                                    (let ((_%e9219192250%_
                                                           (gx#syntax-e
                                                            _%tl9218692247%_)))
                                                      (let ((_%hd9219092254%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9219192250%_)))
                    (_%tl9218992257%_
                     (let () (declare (not safe)) (##cdr _%e9219192250%_))))
                (if (gx#stx-pair? _%tl9218992257%_)
                    (let ((_%e9219492260%_ (gx#syntax-e _%tl9218992257%_)))
                      (let ((_%hd9219392264%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9219492260%_)))
                            (_%tl9219292267%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9219492260%_))))
                        (if (gx#stx-pair? _%tl9219292267%_)
                            (let ((_%e9219792270%_
                                   (gx#syntax-e _%tl9219292267%_)))
                              (let ((_%hd9219692274%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9219792270%_)))
                                    (_%tl9219592277%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9219792270%_))))
                                (if (gx#stx-null? _%tl9219592277%_)
                                    ((lambda (_%L92280%_
                                              _%L92282%_
                                              _%L92283%_
                                              _%L92284%_
                                              _%L92285%_
                                              _%L92286%_)
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'field)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'symbolic-table-ref)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '&class-type-slot-table)
                                         (cons _%L92286%_ '()))
                                   (cons _%L92285%_ (cons '#f '()))))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cond)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          'not)
                                         (cons (gx#datum->syntax '#f 'field)
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'abort!)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'error)
                                                           (cons '"unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'class:
                               (cons _%L92286%_
                                     (cons 'slot: (cons _%L92285%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L92286%_ '()))
                                         (cons (cons _%L92284%_
                                                     (cons _%L92286%_
                                                           (cons _%L92285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L92286%_ '()))
                                               (cons (cons _%L92283%_
                                                           (cons _%L92286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L92285%_
                               (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'strukt)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'base-struct/1)
                                           (cons _%L92286%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'and)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'class-type?)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'strukt)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'field)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##vector-length)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&class-type-slot-vector)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'strukt)
                                                   '()))
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _%L92282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L92286%_
                               (cons _%L92285%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L92280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92286%_
                                     (cons _%L92285%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9219692274%_
                                     _%hd9219392264%_
                                     _%hd9219092254%_
                                     _%hd9218792244%_
                                     _%hd9218492234%_
                                     _%hd9218192224%_)
                                    (_%g9216992203%_ _%g9217092207%_))))
                            (_%g9216992203%_ _%g9217092207%_))))
                    (_%g9216992203%_ _%g9217092207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9216992203%_
                                                     _%g9217092207%_))))
                                            (_%g9216992203%_
                                             _%g9217092207%_))))
                                    (_%g9216992203%_ _%g9217092207%_))))
                            (_%g9216992203%_ _%g9217092207%_))))
                    (_%g9216992203%_ _%g9217092207%_)))))
        (_%g9216892314%_ _%$stx92165%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx92318%_)
      (let* ((_%g9232292348%_
              (lambda (_%g9232392344%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9232392344%_)))
             (_%g9232192431%_
              (lambda (_%g9232392352%_)
                (if (gx#stx-pair? _%g9232392352%_)
                    (let ((_%e9233092355%_ (gx#syntax-e _%g9232392352%_)))
                      (let ((_%hd9232992359%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9233092355%_)))
                            (_%tl9232892362%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9233092355%_))))
                        (if (gx#stx-pair? _%tl9232892362%_)
                            (let ((_%e9233392365%_
                                   (gx#syntax-e _%tl9232892362%_)))
                              (let ((_%hd9233292369%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9233392365%_)))
                                    (_%tl9233192372%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9233392365%_))))
                                (if (gx#stx-pair? _%tl9233192372%_)
                                    (let ((_%e9233692375%_
                                           (gx#syntax-e _%tl9233192372%_)))
                                      (let ((_%hd9233592379%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9233692375%_)))
                                            (_%tl9233492382%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9233692375%_))))
                                        (if (gx#stx-pair? _%tl9233492382%_)
                                            (let ((_%e9233992385%_
                                                   (gx#syntax-e
                                                    _%tl9233492382%_)))
                                              (let ((_%hd9233892389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9233992385%_)))
                                                    (_%tl9233792392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9233992385%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9233792392%_)
                                                    (let ((_%e9234292395%_
                                                           (gx#syntax-e
                                                            _%tl9233792392%_)))
                                                      (let ((_%hd9234192399%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9234292395%_)))
                    (_%tl9234092402%_
                     (let () (declare (not safe)) (##cdr _%e9234292395%_))))
                (if (gx#stx-null? _%tl9234092402%_)
                    ((lambda (_%L92405%_ _%L92407%_ _%L92408%_ _%L92409%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L92409%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L92408%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L92407%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L92405%_
                                     (cons _%L92409%_ (cons _%L92408%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9234192399%_
                     _%hd9233892389%_
                     _%hd9233592379%_
                     _%hd9233292369%_)
                    (_%g9232292348%_ _%g9232392352%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9232292348%_
                                                     _%g9232392352%_))))
                                            (_%g9232292348%_
                                             _%g9232392352%_))))
                                    (_%g9232292348%_ _%g9232392352%_))))
                            (_%g9232292348%_ _%g9232392352%_))))
                    (_%g9232292348%_ _%g9232392352%_)))))
        (_%g9232192431%_ _%$stx92318%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx92435%_)
      (let* ((_%g9243992468%_
              (lambda (_%g9244092464%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9244092464%_)))
             (_%g9243892568%_
              (lambda (_%g9244092472%_)
                (if (gx#stx-pair? _%g9244092472%_)
                    (let ((_%e9244592475%_ (gx#syntax-e _%g9244092472%_)))
                      (let ((_%hd9244492479%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9244592475%_)))
                            (_%tl9244392482%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9244592475%_))))
                        (if (gx#stx-pair/null? _%tl9244392482%_)
                            (let ((_g98349_
                                   (gx#syntax-split-splice
                                    _%tl9244392482%_
                                    '0)))
                              (begin
                                (let ((_g98350_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98349_)
                                             (##vector-length _g98349_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98350_ 2)))
                                      (error "Context expects 2 values"
                                             _g98350_)))
                                (let ((_%target9244692485%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98349_ 0)))
                                      (_%tl9244892488%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98349_ 1))))
                                  (if (gx#stx-null? _%tl9244892488%_)
                                      (letrec ((_%loop9244992491%_
                                                (lambda (_%hd9244792495%_
                                                         _%name9245392498%_
                                                         _%t9245492500%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9244792495%_)
                                                      (let ((_%e9245092503%_
                                                             (gx#syntax-e
                                                              _%hd9244792495%_)))
                                                        (let ((_%lp-hd9245192507%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9245092503%_)))
                      (_%lp-tl9245292510%_
                       (let () (declare (not safe)) (##cdr _%e9245092503%_))))
                  (if (gx#stx-pair? _%lp-hd9245192507%_)
                      (let ((_%e9245992513%_
                             (gx#syntax-e _%lp-hd9245192507%_)))
                        (let ((_%hd9245892517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9245992513%_)))
                              (_%tl9245792520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9245992513%_))))
                          (if (gx#stx-pair? _%tl9245792520%_)
                              (let ((_%e9246292523%_
                                     (gx#syntax-e _%tl9245792520%_)))
                                (let ((_%hd9246192527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9246292523%_)))
                                      (_%tl9246092530%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9246292523%_))))
                                  (if (gx#stx-null? _%tl9246092530%_)
                                      (_%loop9244992491%_
                                       _%lp-tl9245292510%_
                                       (cons _%hd9246192527%_
                                             _%name9245392498%_)
                                       (cons _%hd9245892517%_ _%t9245492500%_))
                                      (_%g9243992468%_ _%g9244092472%_))))
                              (_%g9243992468%_ _%g9244092472%_))))
                      (_%g9243992468%_ _%g9244092472%_))))
              (let ((_%name9245592533%_ (reverse _%name9245392498%_))
                    (_%t9245692536%_ (reverse _%t9245492500%_)))
                ((lambda (_%L92539%_ _%L92541%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92539%_
                            _%L92541%_)
                           (let ((__tmp98351
                                  (lambda (_%g9255692560%_
                                           _%g9255792563%_
                                           _%g9255892565%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9255792563%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9255692560%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9255892565%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp98351
                              '()
                              _%L92539%_
                              _%L92541%_)))))
                 _%name9245592533%_
                 _%t9245692536%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9244992491%_
                                         _%target9244692485%_
                                         '()
                                         '()))
                                      (_%g9243992468%_ _%g9244092472%_)))))
                            (_%g9243992468%_ _%g9244092472%_))))
                    (_%g9243992468%_ _%g9244092472%_)))))
        (_%g9243892568%_ _%$stx92435%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx92573%_)
      (let* ((_%g9257792608%_
              (lambda (_%g9257892604%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9257892604%_)))
             (_%g9257692727%_
              (lambda (_%g9257892612%_)
                (if (gx#stx-pair? _%g9257892612%_)
                    (let ((_%e9258492615%_ (gx#syntax-e _%g9257892612%_)))
                      (let ((_%hd9258392619%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9258492615%_)))
                            (_%tl9258292622%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9258492615%_))))
                        (if (gx#stx-pair? _%tl9258292622%_)
                            (let ((_%e9258792625%_
                                   (gx#syntax-e _%tl9258292622%_)))
                              (let ((_%hd9258692629%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9258792625%_)))
                                    (_%tl9258592632%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9258792625%_))))
                                (if (gx#stx-pair? _%tl9258592632%_)
                                    (let ((_%e9259092635%_
                                           (gx#syntax-e _%tl9258592632%_)))
                                      (let ((_%hd9258992639%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9259092635%_)))
                                            (_%tl9258892642%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9259092635%_))))
                                        (if (gx#stx-pair? _%tl9258892642%_)
                                            (let ((_%e9259392645%_
                                                   (gx#syntax-e
                                                    _%tl9258892642%_)))
                                              (let ((_%hd9259292649%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9259392645%_)))
                                                    (_%tl9259192652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9259392645%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9259292649%_)
                                                    (let ((_g98352_
                                                           (gx#syntax-split-splice
                                                            _%hd9259292649%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g98353_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g98352_)
                             (##vector-length _g98352_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98353_ 2)))
                      (error "Context expects 2 values" _g98353_)))
                (let ((_%target9259492655%_
                       (let () (declare (not safe)) (##vector-ref _g98352_ 0)))
                      (_%tl9259692658%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98352_ 1))))
                  (if (gx#stx-null? _%tl9259692658%_)
                      (letrec ((_%loop9259792661%_
                                (lambda (_%hd9259592665%_ _%super9260192668%_)
                                  (if (gx#stx-pair? _%hd9259592665%_)
                                      (let ((_%e9259892671%_
                                             (gx#syntax-e _%hd9259592665%_)))
                                        (let ((_%lp-hd9259992675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9259892671%_)))
                                              (_%lp-tl9260092678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9259892671%_))))
                                          (_%loop9259792661%_
                                           _%lp-tl9260092678%_
                                           (cons _%lp-hd9259992675%_
                                                 _%super9260192668%_))))
                                      (let ((_%super9260292681%_
                                             (reverse _%super9260192668%_)))
                                        (if (gx#stx-null? _%tl9259192652%_)
                                            ((lambda (_%L92685%_
                                                      _%L92687%_
                                                      _%L92688%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92688%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92687%_
                                                 (cons (let ((__tmp98354
                                                              (lambda (_%g9271292715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9271392718%_)
                        (cons _%g9271292715%_ _%g9271392718%_))))
                 (declare (not safe))
                 (__foldr1 __tmp98354 '() _%L92685%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L92687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp98355
                                  (lambda (_%g9271092721%_ _%g9271192724%_)
                                    (cons _%g9271092721%_ _%g9271192724%_))))
                             (declare (not safe))
                             (__foldr1 __tmp98355 '() _%L92685%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9260292681%_
                                             _%hd9258992639%_
                                             _%hd9258692629%_)
                                            (_%g9257792608%_
                                             _%g9257892612%_)))))))
                        (_%loop9259792661%_ _%target9259492655%_ '()))
                      (_%g9257792608%_ _%g9257892612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9257792608%_
                                                     _%g9257892612%_))))
                                            (_%g9257792608%_
                                             _%g9257892612%_))))
                                    (_%g9257792608%_ _%g9257892612%_))))
                            (_%g9257792608%_ _%g9257892612%_))))
                    (_%g9257792608%_ _%g9257892612%_)))))
        (_%g9257692727%_ _%$stx92573%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx92732%_)
      (let* ((_%g9273692767%_
              (lambda (_%g9273792763%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9273792763%_)))
             (_%g9273592878%_
              (lambda (_%g9273792771%_)
                (if (gx#stx-pair? _%g9273792771%_)
                    (let ((_%e9274392774%_ (gx#syntax-e _%g9273792771%_)))
                      (let ((_%hd9274292778%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9274392774%_)))
                            (_%tl9274192781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9274392774%_))))
                        (if (gx#stx-pair? _%tl9274192781%_)
                            (let ((_%e9274692784%_
                                   (gx#syntax-e _%tl9274192781%_)))
                              (let ((_%hd9274592788%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9274692784%_)))
                                    (_%tl9274492791%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9274692784%_))))
                                (if (gx#stx-pair? _%tl9274492791%_)
                                    (let ((_%e9274992794%_
                                           (gx#syntax-e _%tl9274492791%_)))
                                      (let ((_%hd9274892798%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9274992794%_)))
                                            (_%tl9274792801%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9274992794%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9274892798%_)
                                            (let ((_g98356_
                                                   (gx#syntax-split-splice
                                                    _%hd9274892798%_
                                                    '0)))
                                              (begin
                                                (let ((_g98357_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g98356_)
                                                             (##vector-length
                                                              _g98356_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g98357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g98357_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9275092804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g98356_
                                                          0)))
                                                      (_%tl9275292807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g98356_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9275292807%_)
                                                      (letrec ((_%loop9275392810%_
                                                                (lambda (_%hd9275192814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9275792817%_)
                          (if (gx#stx-pair? _%hd9275192814%_)
                              (let ((_%e9275492820%_
                                     (gx#syntax-e _%hd9275192814%_)))
                                (let ((_%lp-hd9275592824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9275492820%_)))
                                      (_%lp-tl9275692827%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9275492820%_))))
                                  (_%loop9275392810%_
                                   _%lp-tl9275692827%_
                                   (cons _%lp-hd9275592824%_
                                         _%super9275792817%_))))
                              (let ((_%super9275892830%_
                                     (reverse _%super9275792817%_)))
                                (if (gx#stx-pair? _%tl9274792801%_)
                                    (let ((_%e9276192834%_
                                           (gx#syntax-e _%tl9274792801%_)))
                                      (let ((_%hd9276092838%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9276192834%_)))
                                            (_%tl9275992841%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9276192834%_))))
                                        (if (gx#stx-null? _%tl9275992841%_)
                                            ((lambda (_%L92844%_
                                                      _%L92846%_
                                                      _%L92847%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92847%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92847%_
                                                 (cons (let ((__tmp98358
                                                              (lambda (_%g9286992872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9287092875%_)
                        (cons _%g9286992872%_ _%g9287092875%_))))
                 (declare (not safe))
                 (__foldr1 __tmp98358 '() _%L92846%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L92844%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9276092838%_
                                             _%super9275892830%_
                                             _%hd9274592788%_)
                                            (_%g9273692767%_
                                             _%g9273792771%_))))
                                    (_%g9273692767%_ _%g9273792771%_)))))))
                (_%loop9275392810%_ _%target9275092804%_ '()))
              (_%g9273692767%_ _%g9273792771%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9273692767%_
                                             _%g9273792771%_))))
                                    (_%g9273692767%_ _%g9273792771%_))))
                            (_%g9273692767%_ _%g9273792771%_))))
                    (_%g9273692767%_ _%g9273792771%_)))))
        (_%g9273592878%_ _%$stx92732%_)))))
