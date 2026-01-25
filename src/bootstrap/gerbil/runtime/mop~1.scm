(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx105130%_)
      (let* ((_%__stx112062112063%_ _%$stx105130%_)
             (_%g105135105164%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx112062112063%_))))
        (let ((_%__kont112065112066%_
               (lambda (_%g105137105257%_ _%g105138105259%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%g105138105259%_
                                         (cons _%g105137105257%_ '())))
                             (cons _%g105137105257%_ '())))))
              (_%__kont112067112068%_
               (lambda (_%g105148105201%_ _%g105149105203%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%g105148105201%_
                                   (cons _%g105148105201%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%g105149105203%_
                                                           (cons _%g105148105201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g105148105201%_ '())))
                                   '()))))))
          (let ((_%__match112089112090%_
                 (lambda (_%e105139105227%_
                          _%hd105140105231%_
                          _%tl105141105234%_
                          _%e105142105237%_
                          _%hd105143105241%_
                          _%tl105144105244%_
                          _%e105145105247%_
                          _%hd105146105251%_
                          _%tl105147105254%_)
                   (let ((_%g105137105257%_ _%hd105146105251%_)
                         (_%g105138105259%_ _%hd105143105241%_))
                     (if (or (gx#identifier? _%g105137105257%_)
                             (gx#stx-fixnum? _%g105137105257%_))
                         (_%__kont112065112066%_
                          _%g105137105257%_
                          _%g105138105259%_)
                         (_%__kont112067112068%_
                          _%hd105146105251%_
                          _%hd105143105241%_))))))
            (if (gx#stx-pair? _%__stx112062112063%_)
                (let ((_%e105139105227%_ (gx#syntax-e _%__stx112062112063%_)))
                  (let ((_%tl105141105234%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e105139105227%_)))
                        (_%hd105140105231%_
                         (let ()
                           (declare (not safe))
                           (##car _%e105139105227%_))))
                    (if (gx#stx-pair? _%tl105141105234%_)
                        (let ((_%e105142105237%_
                               (gx#syntax-e _%tl105141105234%_)))
                          (let ((_%tl105144105244%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e105142105237%_)))
                                (_%hd105143105241%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e105142105237%_))))
                            (if (gx#stx-pair? _%tl105144105244%_)
                                (let ((_%e105145105247%_
                                       (gx#syntax-e _%tl105144105244%_)))
                                  (let ((_%tl105147105254%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e105145105247%_)))
                                        (_%hd105146105251%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e105145105247%_))))
                                    (if (gx#stx-null? _%tl105147105254%_)
                                        (_%__match112089112090%_
                                         _%e105139105227%_
                                         _%hd105140105231%_
                                         _%tl105141105234%_
                                         _%e105142105237%_
                                         _%hd105143105241%_
                                         _%tl105144105244%_
                                         _%e105145105247%_
                                         _%hd105146105251%_
                                         _%tl105147105254%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g105135105164%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g105135105164%_)))))
                        (let () (declare (not safe)) (_%g105135105164%_)))))
                (let () (declare (not safe)) (_%g105135105164%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx105282%_)
      (let* ((_%__stx112112112113%_ _%$stx105282%_)
             (_%g105287105316%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx112112112113%_))))
        (let ((_%__kont112115112116%_
               (lambda (_%g105289105408%_ _%g105290105410%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%g105290105410%_
                                         (cons _%g105289105408%_ '())))
                             (cons '0 '())))))
              (_%__kont112117112118%_
               (lambda (_%g105300105353%_ _%g105301105355%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%g105300105353%_
                                   (cons _%g105300105353%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%g105301105355%_
                                                           (cons _%g105300105353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match112139112140%_
                 (lambda (_%e105291105378%_
                          _%hd105292105382%_
                          _%tl105293105385%_
                          _%e105294105388%_
                          _%hd105295105392%_
                          _%tl105296105395%_
                          _%e105297105398%_
                          _%hd105298105402%_
                          _%tl105299105405%_)
                   (let ((_%g105289105408%_ _%hd105298105402%_)
                         (_%g105290105410%_ _%hd105295105392%_))
                     (if (or (gx#identifier? _%g105289105408%_)
                             (gx#stx-fixnum? _%g105289105408%_))
                         (_%__kont112115112116%_
                          _%g105289105408%_
                          _%g105290105410%_)
                         (_%__kont112117112118%_
                          _%hd105298105402%_
                          _%hd105295105392%_))))))
            (if (gx#stx-pair? _%__stx112112112113%_)
                (let ((_%e105291105378%_ (gx#syntax-e _%__stx112112112113%_)))
                  (let ((_%tl105293105385%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e105291105378%_)))
                        (_%hd105292105382%_
                         (let ()
                           (declare (not safe))
                           (##car _%e105291105378%_))))
                    (if (gx#stx-pair? _%tl105293105385%_)
                        (let ((_%e105294105388%_
                               (gx#syntax-e _%tl105293105385%_)))
                          (let ((_%tl105296105395%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e105294105388%_)))
                                (_%hd105295105392%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e105294105388%_))))
                            (if (gx#stx-pair? _%tl105296105395%_)
                                (let ((_%e105297105398%_
                                       (gx#syntax-e _%tl105296105395%_)))
                                  (let ((_%tl105299105405%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e105297105398%_)))
                                        (_%hd105298105402%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e105297105398%_))))
                                    (if (gx#stx-null? _%tl105299105405%_)
                                        (_%__match112139112140%_
                                         _%e105291105378%_
                                         _%hd105292105382%_
                                         _%tl105293105385%_
                                         _%e105294105388%_
                                         _%hd105295105392%_
                                         _%tl105296105395%_
                                         _%e105297105398%_
                                         _%hd105298105402%_
                                         _%tl105299105405%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g105287105316%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g105287105316%_)))))
                        (let () (declare (not safe)) (_%g105287105316%_)))))
                (let () (declare (not safe)) (_%g105287105316%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx105433%_)
      (let* ((_%g105436105457%_
              (lambda (_%g105437105453%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105437105453%_)))
             (_%g105435105685%_
              (lambda (_%g105437105461%_)
                (if (gx#stx-pair? _%g105437105461%_)
                    (let ((_%e105440105464%_ (gx#syntax-e _%g105437105461%_)))
                      (let ((_%hd105441105468%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105440105464%_)))
                            (_%tl105442105471%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105440105464%_))))
                        (if (gx#stx-pair? _%tl105442105471%_)
                            (let ((_%e105443105474%_
                                   (gx#syntax-e _%tl105442105471%_)))
                              (let ((_%hd105444105478%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105443105474%_)))
                                    (_%tl105445105481%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105443105474%_))))
                                (if (gx#stx-pair? _%hd105444105478%_)
                                    (let ((_%e105446105484%_
                                           (gx#syntax-e _%hd105444105478%_)))
                                      (let ((_%hd105447105488%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105446105484%_)))
                                            (_%tl105448105491%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105446105484%_))))
                                        (if (gx#stx-pair? _%tl105448105491%_)
                                            (let ((_%e105449105494%_
                                                   (gx#syntax-e
                                                    _%tl105448105491%_)))
                                              (let ((_%hd105450105498%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105449105494%_)))
                                                    (_%tl105451105501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105449105494%_))))
                                                (if (gx#stx-null?
                                                     _%tl105451105501%_)
                                                    (if (gx#stx-null?
                                                         _%tl105445105481%_)
                                                        ((lambda (_%g105438105504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g105439105506%_)
                   (let* ((_%g105524105532%_
                           (lambda (_%g105525105528%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g105525105528%_)))
                          (_%g105523105681%_
                           (lambda (_%g105525105536%_)
                             ((lambda (_%g105526105539%_)
                                (let* ((_%g105551105559%_
                                        (lambda (_%g105552105555%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g105552105555%_)))
                                       (_%g105550105677%_
                                        (lambda (_%g105552105563%_)
                                          ((lambda (_%g105553105566%_)
                                             (let* ((_%g105579105587%_
                                                     (lambda (_%g105580105583%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g105580105583%_)))
                                                    (_%g105578105673%_
                                                     (lambda (_%g105580105591%_)
                                                       ((lambda (_%g105581105594%_)
                                                          (let* ((_%g105607105615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g105608105611%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g105608105611%_)))
                         (_%g105606105669%_
                          (lambda (_%g105608105619%_)
                            ((lambda (_%g105609105622%_)
                               (let* ((_%g105635105643%_
                                       (lambda (_%g105636105639%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g105636105639%_)))
                                      (_%g105634105665%_
                                       (lambda (_%g105636105647%_)
                                         ((lambda (_%g105637105650%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%g105553105566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%g105526105539%_
                                                          (cons _%g105439105506%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'klass)
                              '())
                        (cons (cons (gx#datum->syntax '#f '##structure-ref)
                                    (cons (gx#datum->syntax '#f 'klass)
                                          (cons _%g105438105504%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%g105439105506%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%g105581105594%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%g105526105539%_
                                                                (cons _%g105439105506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons (cons (gx#datum->syntax '#f 'klass) '())
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '##unchecked-structure-ref)
                                          (cons (gx#datum->syntax '#f 'klass)
                                                (cons _%g105438105504%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g105439105506%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%g105609105622%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%g105526105539%_
                              (cons _%g105439105506%_ (cons '#t '()))))
                  (cons (cons (gx#datum->syntax '#f 'lambda)
                              (cons (cons (gx#datum->syntax '#f 'klass)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##structure-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            (cons _%g105438105504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g105439105506%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%g105637105650%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%g105526105539%_
                                    (cons _%g105439105506%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f 'klass)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##unchecked-structure-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          (cons _%g105438105504%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g105439105506%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g105636105647%_))))
                                 (_%g105634105665%_
                                  (gx#stx-identifier
                                   _%g105439105506%_
                                   '"&"
                                   _%g105609105622%_))))
                             _%g105608105619%_))))
                    (_%g105606105669%_
                     (gx#stx-identifier
                      _%g105439105506%_
                      _%g105553105566%_
                      '"-set!"))))
                _%g105580105591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g105578105673%_
                                                (gx#stx-identifier
                                                 _%g105439105506%_
                                                 '"&"
                                                 _%g105553105566%_))))
                                           _%g105552105563%_))))
                                  (_%g105550105677%_
                                   (gx#stx-identifier
                                    _%g105439105506%_
                                    '"class-type-"
                                    _%g105439105506%_))))
                              _%g105525105536%_))))
                     (_%g105523105681%_ (gx#core-quote-syntax 'class::t))))
                 _%hd105450105498%_
                 _%hd105447105488%_)
                (_%g105436105457%_ _%g105437105461%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105436105457%_
                                                     _%g105437105461%_))))
                                            (_%g105436105457%_
                                             _%g105437105461%_))))
                                    (_%g105436105457%_ _%g105437105461%_))))
                            (_%g105436105457%_ _%g105437105461%_))))
                    (_%g105436105457%_ _%g105437105461%_)))))
        (_%g105435105685%_ _%stx105433%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx105689%_)
      (let* ((_%g105693105722%_
              (lambda (_%g105694105718%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105694105718%_)))
             (_%g105692105818%_
              (lambda (_%g105694105726%_)
                (if (gx#stx-pair? _%g105694105726%_)
                    (let ((_%e105697105729%_ (gx#syntax-e _%g105694105726%_)))
                      (let ((_%hd105698105733%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105697105729%_)))
                            (_%tl105699105736%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105697105729%_))))
                        (if (gx#stx-pair/null? _%tl105699105736%_)
                            (let ((_g112482_
                                   (gx#syntax-split-splice
                                    _%tl105699105736%_
                                    '0)))
                              (begin
                                (let ((_g112483_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g112482_)
                                             (##values-length _g112482_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g112483_ 2)))
                                      (error "Context expects 2 values"
                                             _g112483_)))
                                (let ((_%target105700105739%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112482_ 0)))
                                      (_%tl105702105742%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112482_ 1))))
                                  (if (gx#stx-null? _%tl105702105742%_)
                                      (letrec ((_%loop105703105745%_
                                                (lambda (_%hd105701105749%_
                                                         _%field105707105752%_
                                                         _%slot105708105753%_)
                                                  (if (gx#stx-pair?
                                                       _%hd105701105749%_)
                                                      (let ((_%e105704105755%_
                                                             (gx#syntax-e
                                                              _%hd105701105749%_)))
                                                        (let ((_%lp-hd105705105759%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e105704105755%_)))
                      (_%lp-tl105706105762%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e105704105755%_))))
                  (if (gx#stx-pair? _%lp-hd105705105759%_)
                      (let ((_%e105711105765%_
                             (gx#syntax-e _%lp-hd105705105759%_)))
                        (let ((_%hd105712105769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e105711105765%_)))
                              (_%tl105713105772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e105711105765%_))))
                          (if (gx#stx-pair? _%tl105713105772%_)
                              (let ((_%e105714105775%_
                                     (gx#syntax-e _%tl105713105772%_)))
                                (let ((_%hd105715105779%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e105714105775%_)))
                                      (_%tl105716105782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e105714105775%_))))
                                  (if (gx#stx-null? _%tl105716105782%_)
                                      (_%loop105703105745%_
                                       _%lp-tl105706105762%_
                                       (cons _%hd105715105779%_
                                             _%field105707105752%_)
                                       (cons _%hd105712105769%_
                                             _%slot105708105753%_))
                                      (_%g105693105722%_ _%g105694105726%_))))
                              (_%g105693105722%_ _%g105694105726%_))))
                      (_%g105693105722%_ _%g105694105726%_))))
              (let ((_%field105709105785%_ (reverse _%field105707105752%_))
                    (_%slot105710105787%_ (reverse _%slot105708105753%_)))
                ((lambda (_%g105695105789%_ _%g105696105791%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%g105695105789%_
                            _%g105696105791%_)
                           (let ((__tmp112484
                                  (lambda (_%g105806105810%_
                                           _%g105807105813%_
                                           _%g105808105815%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g105807105813%_
                                                            (cons _%g105806105810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g105808105815%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp112484
                              '()
                              _%g105695105789%_
                              _%g105696105791%_)))))
                 _%field105709105785%_
                 _%slot105710105787%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop105703105745%_
                                         _%target105700105739%_
                                         '()
                                         '()))
                                      (_%g105693105722%_ _%g105694105726%_)))))
                            (_%g105693105722%_ _%g105694105726%_))))
                    (_%g105693105722%_ _%g105694105726%_)))))
        (_%g105692105818%_ _%$stx105689%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx105823%_)
      (let* ((_%g105827105861%_
              (lambda (_%g105828105857%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105828105857%_)))
             (_%g105826105972%_
              (lambda (_%g105828105865%_)
                (if (gx#stx-pair? _%g105828105865%_)
                    (let ((_%e105835105868%_ (gx#syntax-e _%g105828105865%_)))
                      (let ((_%hd105836105872%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105835105868%_)))
                            (_%tl105837105875%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105835105868%_))))
                        (if (gx#stx-pair? _%tl105837105875%_)
                            (let ((_%e105838105878%_
                                   (gx#syntax-e _%tl105837105875%_)))
                              (let ((_%hd105839105882%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105838105878%_)))
                                    (_%tl105840105885%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105838105878%_))))
                                (if (gx#stx-pair? _%tl105840105885%_)
                                    (let ((_%e105841105888%_
                                           (gx#syntax-e _%tl105840105885%_)))
                                      (let ((_%hd105842105892%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105841105888%_)))
                                            (_%tl105843105895%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105841105888%_))))
                                        (if (gx#stx-pair? _%tl105843105895%_)
                                            (let ((_%e105844105898%_
                                                   (gx#syntax-e
                                                    _%tl105843105895%_)))
                                              (let ((_%hd105845105902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105844105898%_)))
                                                    (_%tl105846105905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105844105898%_))))
                                                (if (gx#stx-pair?
                                                     _%tl105846105905%_)
                                                    (let ((_%e105847105908%_
                                                           (gx#syntax-e
                                                            _%tl105846105905%_)))
                                                      (let ((_%hd105848105912%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e105847105908%_)))
                    (_%tl105849105915%_
                     (let () (declare (not safe)) (##cdr _%e105847105908%_))))
                (if (gx#stx-pair? _%tl105849105915%_)
                    (let ((_%e105850105918%_ (gx#syntax-e _%tl105849105915%_)))
                      (let ((_%hd105851105922%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105850105918%_)))
                            (_%tl105852105925%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105850105918%_))))
                        (if (gx#stx-pair? _%tl105852105925%_)
                            (let ((_%e105853105928%_
                                   (gx#syntax-e _%tl105852105925%_)))
                              (let ((_%hd105854105932%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105853105928%_)))
                                    (_%tl105855105935%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105853105928%_))))
                                (if (gx#stx-null? _%tl105855105935%_)
                                    ((lambda (_%g105829105938%_
                                              _%g105830105940%_
                                              _%g105831105941%_
                                              _%g105832105942%_
                                              _%g105833105943%_
                                              _%g105834105944%_)
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
                                         (cons _%g105834105944%_ '()))
                                   (cons _%g105833105943%_ (cons '#f '()))))
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
                               (cons _%g105834105944%_
                                     (cons 'slot:
                                           (cons _%g105833105943%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%g105834105944%_ '()))
                                         (cons (cons _%g105832105942%_
                                                     (cons _%g105834105944%_
                                                           (cons _%g105833105943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%g105834105944%_
                                                           '()))
                                               (cons (cons _%g105831105941%_
                                                           (cons _%g105834105944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g105833105943%_
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
                                           (cons _%g105834105944%_ '()))
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
                                                     (cons (cons _%g105830105940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g105834105944%_
                               (cons _%g105833105943%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%g105829105938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g105834105944%_
                                     (cons _%g105833105943%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd105854105932%_
                                     _%hd105851105922%_
                                     _%hd105848105912%_
                                     _%hd105845105902%_
                                     _%hd105842105892%_
                                     _%hd105839105882%_)
                                    (_%g105827105861%_ _%g105828105865%_))))
                            (_%g105827105861%_ _%g105828105865%_))))
                    (_%g105827105861%_ _%g105828105865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105827105861%_
                                                     _%g105828105865%_))))
                                            (_%g105827105861%_
                                             _%g105828105865%_))))
                                    (_%g105827105861%_ _%g105828105865%_))))
                            (_%g105827105861%_ _%g105828105865%_))))
                    (_%g105827105861%_ _%g105828105865%_)))))
        (_%g105826105972%_ _%$stx105823%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx105976%_)
      (let* ((_%g105980106006%_
              (lambda (_%g105981106002%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105981106002%_)))
             (_%g105979106089%_
              (lambda (_%g105981106010%_)
                (if (gx#stx-pair? _%g105981106010%_)
                    (let ((_%e105986106013%_ (gx#syntax-e _%g105981106010%_)))
                      (let ((_%hd105987106017%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105986106013%_)))
                            (_%tl105988106020%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105986106013%_))))
                        (if (gx#stx-pair? _%tl105988106020%_)
                            (let ((_%e105989106023%_
                                   (gx#syntax-e _%tl105988106020%_)))
                              (let ((_%hd105990106027%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105989106023%_)))
                                    (_%tl105991106030%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105989106023%_))))
                                (if (gx#stx-pair? _%tl105991106030%_)
                                    (let ((_%e105992106033%_
                                           (gx#syntax-e _%tl105991106030%_)))
                                      (let ((_%hd105993106037%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105992106033%_)))
                                            (_%tl105994106040%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105992106033%_))))
                                        (if (gx#stx-pair? _%tl105994106040%_)
                                            (let ((_%e105995106043%_
                                                   (gx#syntax-e
                                                    _%tl105994106040%_)))
                                              (let ((_%hd105996106047%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105995106043%_)))
                                                    (_%tl105997106050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105995106043%_))))
                                                (if (gx#stx-pair?
                                                     _%tl105997106050%_)
                                                    (let ((_%e105998106053%_
                                                           (gx#syntax-e
                                                            _%tl105997106050%_)))
                                                      (let ((_%hd105999106057%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e105998106053%_)))
                    (_%tl106000106060%_
                     (let () (declare (not safe)) (##cdr _%e105998106053%_))))
                (if (gx#stx-null? _%tl106000106060%_)
                    ((lambda (_%g105982106063%_
                              _%g105983106065%_
                              _%g105984106066%_
                              _%g105985106067%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%g105985106067%_
                                                           '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%g105984106066%_ '())))
                   (cons (gx#datum->syntax '#f '=>)
                         (cons _%g105983106065%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%g105982106063%_
                                     (cons _%g105985106067%_
                                           (cons _%g105984106066%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd105999106057%_
                     _%hd105996106047%_
                     _%hd105993106037%_
                     _%hd105990106027%_)
                    (_%g105980106006%_ _%g105981106010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105980106006%_
                                                     _%g105981106010%_))))
                                            (_%g105980106006%_
                                             _%g105981106010%_))))
                                    (_%g105980106006%_ _%g105981106010%_))))
                            (_%g105980106006%_ _%g105981106010%_))))
                    (_%g105980106006%_ _%g105981106010%_)))))
        (_%g105979106089%_ _%$stx105976%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx106093%_)
      (let* ((_%g106097106126%_
              (lambda (_%g106098106122%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g106098106122%_)))
             (_%g106096106222%_
              (lambda (_%g106098106130%_)
                (if (gx#stx-pair? _%g106098106130%_)
                    (let ((_%e106101106133%_ (gx#syntax-e _%g106098106130%_)))
                      (let ((_%hd106102106137%_
                             (let ()
                               (declare (not safe))
                               (##car _%e106101106133%_)))
                            (_%tl106103106140%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e106101106133%_))))
                        (if (gx#stx-pair/null? _%tl106103106140%_)
                            (let ((_g112485_
                                   (gx#syntax-split-splice
                                    _%tl106103106140%_
                                    '0)))
                              (begin
                                (let ((_g112486_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g112485_)
                                             (##values-length _g112485_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g112486_ 2)))
                                      (error "Context expects 2 values"
                                             _g112486_)))
                                (let ((_%target106104106143%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112485_ 0)))
                                      (_%tl106106106146%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112485_ 1))))
                                  (if (gx#stx-null? _%tl106106106146%_)
                                      (letrec ((_%loop106107106149%_
                                                (lambda (_%hd106105106153%_
                                                         _%name106111106156%_
                                                         _%t106112106157%_)
                                                  (if (gx#stx-pair?
                                                       _%hd106105106153%_)
                                                      (let ((_%e106108106159%_
                                                             (gx#syntax-e
                                                              _%hd106105106153%_)))
                                                        (let ((_%lp-hd106109106163%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e106108106159%_)))
                      (_%lp-tl106110106166%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e106108106159%_))))
                  (if (gx#stx-pair? _%lp-hd106109106163%_)
                      (let ((_%e106115106169%_
                             (gx#syntax-e _%lp-hd106109106163%_)))
                        (let ((_%hd106116106173%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e106115106169%_)))
                              (_%tl106117106176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e106115106169%_))))
                          (if (gx#stx-pair? _%tl106117106176%_)
                              (let ((_%e106118106179%_
                                     (gx#syntax-e _%tl106117106176%_)))
                                (let ((_%hd106119106183%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e106118106179%_)))
                                      (_%tl106120106186%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e106118106179%_))))
                                  (if (gx#stx-null? _%tl106120106186%_)
                                      (_%loop106107106149%_
                                       _%lp-tl106110106166%_
                                       (cons _%hd106119106183%_
                                             _%name106111106156%_)
                                       (cons _%hd106116106173%_
                                             _%t106112106157%_))
                                      (_%g106097106126%_ _%g106098106130%_))))
                              (_%g106097106126%_ _%g106098106130%_))))
                      (_%g106097106126%_ _%g106098106130%_))))
              (let ((_%name106113106189%_ (reverse _%name106111106156%_))
                    (_%t106114106191%_ (reverse _%t106112106157%_)))
                ((lambda (_%g106099106193%_ _%g106100106195%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%g106099106193%_
                            _%g106100106195%_)
                           (let ((__tmp112487
                                  (lambda (_%g106210106214%_
                                           _%g106211106217%_
                                           _%g106212106219%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g106211106217%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g106210106214%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g106212106219%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp112487
                              '()
                              _%g106099106193%_
                              _%g106100106195%_)))))
                 _%name106113106189%_
                 _%t106114106191%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop106107106149%_
                                         _%target106104106143%_
                                         '()
                                         '()))
                                      (_%g106097106126%_ _%g106098106130%_)))))
                            (_%g106097106126%_ _%g106098106130%_))))
                    (_%g106097106126%_ _%g106098106130%_)))))
        (_%g106096106222%_ _%$stx106093%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx106227%_)
      (let* ((_%__stx112187112188%_ _%$stx106227%_)
             (_%g106232106291%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx112187112188%_))))
        (let ((_%__kont112190112191%_
               (lambda (_%g106234106485%_
                        _%g106235106487%_
                        _%g106236106488%_
                        _%g106237106489%_)
                 (cons (gx#datum->syntax '#f 'def)
                       (cons _%g106237106489%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.system)
                                                     (cons _%g106236106488%_
                                                           (cons (let ((__tmp112488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g106513106518%_ _%g106514106521%_)
                                  (cons _%g106513106518%_ _%g106514106521%_))))
                           (declare (not safe))
                           (__foldr1 __tmp112488 '() _%g106235106487%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '__make-system-class)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%g106236106488%_ '()))
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (let ((__tmp112489
                                            (lambda (_%g106515106524%_
                                                     _%g106516106527%_)
                                              (cons _%g106515106524%_
                                                    _%g106516106527%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp112489
                                        '()
                                        _%g106235106487%_)))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g106234106485%_ '()))
                                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))))
              (_%__kont112194112195%_
               (lambda (_%g106262106366%_ _%g106263106368%_ _%g106264106369%_)
                 (cons (gx#datum->syntax '#f 'defsystem-class)
                       (cons _%g106264106369%_
                             (cons _%g106263106368%_
                                   (cons (let ((__tmp112490
                                                (lambda (_%g106391106394%_
                                                         _%g106392106397%_)
                                                  (cons _%g106391106394%_
                                                        _%g106392106397%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp112490
                                            '()
                                            _%g106262106366%_))
                                         (cons '() '()))))))))
          (let* ((_%__match112262112263%_
                  (lambda (_%e106265106298%_
                           _%hd106266106302%_
                           _%tl106267106305%_
                           _%e106268106308%_
                           _%hd106269106312%_
                           _%tl106270106315%_
                           _%e106271106318%_
                           _%hd106272106322%_
                           _%tl106273106325%_
                           _%e106274106328%_
                           _%hd106275106332%_
                           _%tl106276106335%_
                           _%__splice112196112197%_
                           _%target106277106338%_
                           _%tl106279106341%_)
                    (letrec ((_%loop106280106344%_
                              (lambda (_%hd106278106348%_
                                       _%super106284106351%_)
                                (if (gx#stx-pair? _%hd106278106348%_)
                                    (let ((_%e106281106353%_
                                           (gx#syntax-e _%hd106278106348%_)))
                                      (let ((_%lp-tl106283106360%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106281106353%_)))
                                            (_%lp-hd106282106357%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106281106353%_))))
                                        (_%loop106280106344%_
                                         _%lp-tl106283106360%_
                                         (cons _%lp-hd106282106357%_
                                               _%super106284106351%_))))
                                    (let ((_%super106285106363%_
                                           (reverse _%super106284106351%_)))
                                      (if (gx#stx-null? _%tl106276106335%_)
                                          (_%__kont112194112195%_
                                           _%super106285106363%_
                                           _%hd106272106322%_
                                           _%hd106269106312%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g106232106291%_))))))))
                      (_%loop106280106344%_ _%target106277106338%_ '()))))
                 (_%__match112230112231%_
                  (lambda (_%e106238106407%_
                           _%hd106239106411%_
                           _%tl106240106414%_
                           _%e106241106417%_
                           _%hd106242106421%_
                           _%tl106243106424%_
                           _%e106244106427%_
                           _%hd106245106431%_
                           _%tl106246106434%_
                           _%e106247106437%_
                           _%hd106248106441%_
                           _%tl106249106444%_
                           _%__splice112192112193%_
                           _%target106250106447%_
                           _%tl106252106450%_)
                    (letrec ((_%loop106253106453%_
                              (lambda (_%hd106251106457%_
                                       _%super106257106460%_)
                                (if (gx#stx-pair? _%hd106251106457%_)
                                    (let ((_%e106254106462%_
                                           (gx#syntax-e _%hd106251106457%_)))
                                      (let ((_%lp-tl106256106469%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106254106462%_)))
                                            (_%lp-hd106255106466%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106254106462%_))))
                                        (_%loop106253106453%_
                                         _%lp-tl106256106469%_
                                         (cons _%lp-hd106255106466%_
                                               _%super106257106460%_))))
                                    (let ((_%super106258106472%_
                                           (reverse _%super106257106460%_)))
                                      (if (gx#stx-pair? _%tl106249106444%_)
                                          (let ((_%e106259106475%_
                                                 (gx#syntax-e
                                                  _%tl106249106444%_)))
                                            (let ((_%tl106261106482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e106259106475%_)))
                                                  (_%hd106260106479%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e106259106475%_))))
                                              (if (gx#stx-null?
                                                   _%tl106261106482%_)
                                                  (_%__kont112190112191%_
                                                   _%hd106260106479%_
                                                   _%super106258106472%_
                                                   _%hd106245106431%_
                                                   _%hd106242106421%_)
                                                  (_%__match112262112263%_
                                                   _%e106238106407%_
                                                   _%hd106239106411%_
                                                   _%tl106240106414%_
                                                   _%e106241106417%_
                                                   _%hd106242106421%_
                                                   _%tl106243106424%_
                                                   _%e106244106427%_
                                                   _%hd106245106431%_
                                                   _%tl106246106434%_
                                                   _%e106247106437%_
                                                   _%hd106248106441%_
                                                   _%tl106249106444%_
                                                   _%__splice112192112193%_
                                                   _%target106250106447%_
                                                   _%tl106252106450%_))))
                                          (_%__match112262112263%_
                                           _%e106238106407%_
                                           _%hd106239106411%_
                                           _%tl106240106414%_
                                           _%e106241106417%_
                                           _%hd106242106421%_
                                           _%tl106243106424%_
                                           _%e106244106427%_
                                           _%hd106245106431%_
                                           _%tl106246106434%_
                                           _%e106247106437%_
                                           _%hd106248106441%_
                                           _%tl106249106444%_
                                           _%__splice112192112193%_
                                           _%target106250106447%_
                                           _%tl106252106450%_)))))))
                      (_%loop106253106453%_ _%target106250106447%_ '())))))
            (if (gx#stx-pair? _%__stx112187112188%_)
                (let ((_%e106238106407%_ (gx#syntax-e _%__stx112187112188%_)))
                  (let ((_%tl106240106414%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e106238106407%_)))
                        (_%hd106239106411%_
                         (let ()
                           (declare (not safe))
                           (##car _%e106238106407%_))))
                    (if (gx#stx-pair? _%tl106240106414%_)
                        (let ((_%e106241106417%_
                               (gx#syntax-e _%tl106240106414%_)))
                          (let ((_%tl106243106424%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e106241106417%_)))
                                (_%hd106242106421%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e106241106417%_))))
                            (if (gx#stx-pair? _%tl106243106424%_)
                                (let ((_%e106244106427%_
                                       (gx#syntax-e _%tl106243106424%_)))
                                  (let ((_%tl106246106434%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e106244106427%_)))
                                        (_%hd106245106431%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e106244106427%_))))
                                    (if (gx#stx-pair? _%tl106246106434%_)
                                        (let ((_%e106247106437%_
                                               (gx#syntax-e
                                                _%tl106246106434%_)))
                                          (let ((_%tl106249106444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e106247106437%_)))
                                                (_%hd106248106441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e106247106437%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd106248106441%_)
                                                (let ((_%__splice112192112193%_
                                                       (gx#syntax-split-splice->vector
                                                        _%hd106248106441%_
                                                        '0)))
                                                  (let ((_%tl106252106450%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice112192112193%_
                                                            '1)))
                                                        (_%target106250106447%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice112192112193%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl106252106450%_)
                                                        (_%__match112230112231%_
                                                         _%e106238106407%_
                                                         _%hd106239106411%_
                                                         _%tl106240106414%_
                                                         _%e106241106417%_
                                                         _%hd106242106421%_
                                                         _%tl106243106424%_
                                                         _%e106244106427%_
                                                         _%hd106245106431%_
                                                         _%tl106246106434%_
                                                         _%e106247106437%_
                                                         _%hd106248106441%_
                                                         _%tl106249106444%_
                                                         _%__splice112192112193%_
                                                         _%target106250106447%_
                                                         _%tl106252106450%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g106232106291%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g106232106291%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g106232106291%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g106232106291%_)))))
                        (let () (declare (not safe)) (_%g106232106291%_)))))
                (let () (declare (not safe)) (_%g106232106291%_))))))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx106536%_)
      (let* ((_%__stx112265112266%_ _%$stx106536%_)
             (_%g106541106600%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx112265112266%_))))
        (let ((_%__kont112268112269%_
               (lambda (_%g106543106794%_
                        _%g106544106796%_
                        _%g106545106797%_
                        _%g106546106798%_)
                 (cons (gx#datum->syntax '#f 'def)
                       (cons _%g106546106798%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.system)
                                                     (cons _%g106546106798%_
                                                           (cons (let ((__tmp112491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g106822106825%_ _%g106823106828%_)
                                  (cons _%g106822106825%_ _%g106823106828%_))))
                           (declare (not safe))
                           (__foldr1 __tmp112491 '() _%g106545106797%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '__shadow-class)
                                                           (cons _%g106544106796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g106543106794%_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))))
              (_%__kont112272112273%_
               (lambda (_%g106571106675%_ _%g106572106677%_ _%g106573106678%_)
                 (cons (gx#datum->syntax '#f 'defshadow-class)
                       (cons _%g106573106678%_
                             (cons (let ((__tmp112492
                                          (lambda (_%g106700106703%_
                                                   _%g106701106706%_)
                                            (cons _%g106700106703%_
                                                  _%g106701106706%_))))
                                     (declare (not safe))
                                     (__foldr1
                                      __tmp112492
                                      '()
                                      _%g106572106677%_))
                                   (cons _%g106571106675%_
                                         (cons '() '()))))))))
          (let* ((_%__match112328112329%_
                  (lambda (_%e106574106607%_
                           _%hd106575106611%_
                           _%tl106576106614%_
                           _%e106577106617%_
                           _%hd106578106621%_
                           _%tl106579106624%_
                           _%e106580106627%_
                           _%hd106581106631%_
                           _%tl106582106634%_
                           _%__splice112274112275%_
                           _%target106583106637%_
                           _%tl106585106640%_)
                    (letrec ((_%loop106586106643%_
                              (lambda (_%hd106584106647%_
                                       _%super106590106650%_)
                                (if (gx#stx-pair? _%hd106584106647%_)
                                    (let ((_%e106587106652%_
                                           (gx#syntax-e _%hd106584106647%_)))
                                      (let ((_%lp-tl106589106659%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106587106652%_)))
                                            (_%lp-hd106588106656%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106587106652%_))))
                                        (_%loop106586106643%_
                                         _%lp-tl106589106659%_
                                         (cons _%lp-hd106588106656%_
                                               _%super106590106650%_))))
                                    (let ((_%super106591106662%_
                                           (reverse _%super106590106650%_)))
                                      (if (gx#stx-pair? _%tl106582106634%_)
                                          (let ((_%e106592106665%_
                                                 (gx#syntax-e
                                                  _%tl106582106634%_)))
                                            (let ((_%tl106594106672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e106592106665%_)))
                                                  (_%hd106593106669%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e106592106665%_))))
                                              (if (gx#stx-null?
                                                   _%tl106594106672%_)
                                                  (_%__kont112272112273%_
                                                   _%hd106593106669%_
                                                   _%super106591106662%_
                                                   _%hd106578106621%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g106541106600%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g106541106600%_))))))))
                      (_%loop106586106643%_ _%target106583106637%_ '()))))
                 (_%__match112302112303%_
                  (lambda (_%e106547106716%_
                           _%hd106548106720%_
                           _%tl106549106723%_
                           _%e106550106726%_
                           _%hd106551106730%_
                           _%tl106552106733%_
                           _%e106553106736%_
                           _%hd106554106740%_
                           _%tl106555106743%_
                           _%__splice112270112271%_
                           _%target106556106746%_
                           _%tl106558106749%_)
                    (letrec ((_%loop106559106752%_
                              (lambda (_%hd106557106756%_
                                       _%super106563106759%_)
                                (if (gx#stx-pair? _%hd106557106756%_)
                                    (let ((_%e106560106761%_
                                           (gx#syntax-e _%hd106557106756%_)))
                                      (let ((_%lp-tl106562106768%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106560106761%_)))
                                            (_%lp-hd106561106765%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106560106761%_))))
                                        (_%loop106559106752%_
                                         _%lp-tl106562106768%_
                                         (cons _%lp-hd106561106765%_
                                               _%super106563106759%_))))
                                    (let ((_%super106564106771%_
                                           (reverse _%super106563106759%_)))
                                      (if (gx#stx-pair? _%tl106555106743%_)
                                          (let ((_%e106565106774%_
                                                 (gx#syntax-e
                                                  _%tl106555106743%_)))
                                            (let ((_%tl106567106781%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e106565106774%_)))
                                                  (_%hd106566106778%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e106565106774%_))))
                                              (if (gx#stx-pair?
                                                   _%tl106567106781%_)
                                                  (let ((_%e106568106784%_
                                                         (gx#syntax-e
                                                          _%tl106567106781%_)))
                                                    (let ((_%tl106570106791%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e106568106784%_)))
                                                          (_%hd106569106788%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e106568106784%_))))
                                                      (if (gx#stx-null?
                                                           _%tl106570106791%_)
                                                          (_%__kont112268112269%_
                                                           _%hd106569106788%_
                                                           _%hd106566106778%_
                                                           _%super106564106771%_
                                                           _%hd106551106730%_)
                                                          (_%__match112328112329%_
                                                           _%e106547106716%_
                                                           _%hd106548106720%_
                                                           _%tl106549106723%_
                                                           _%e106550106726%_
                                                           _%hd106551106730%_
                                                           _%tl106552106733%_
                                                           _%e106553106736%_
                                                           _%hd106554106740%_
                                                           _%tl106555106743%_
                                                           _%__splice112270112271%_
                                                           _%target106556106746%_
                                                           _%tl106558106749%_))))
                                                  (_%__match112328112329%_
                                                   _%e106547106716%_
                                                   _%hd106548106720%_
                                                   _%tl106549106723%_
                                                   _%e106550106726%_
                                                   _%hd106551106730%_
                                                   _%tl106552106733%_
                                                   _%e106553106736%_
                                                   _%hd106554106740%_
                                                   _%tl106555106743%_
                                                   _%__splice112270112271%_
                                                   _%target106556106746%_
                                                   _%tl106558106749%_))))
                                          (_%__match112328112329%_
                                           _%e106547106716%_
                                           _%hd106548106720%_
                                           _%tl106549106723%_
                                           _%e106550106726%_
                                           _%hd106551106730%_
                                           _%tl106552106733%_
                                           _%e106553106736%_
                                           _%hd106554106740%_
                                           _%tl106555106743%_
                                           _%__splice112270112271%_
                                           _%target106556106746%_
                                           _%tl106558106749%_)))))))
                      (_%loop106559106752%_ _%target106556106746%_ '())))))
            (if (gx#stx-pair? _%__stx112265112266%_)
                (let ((_%e106547106716%_ (gx#syntax-e _%__stx112265112266%_)))
                  (let ((_%tl106549106723%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e106547106716%_)))
                        (_%hd106548106720%_
                         (let ()
                           (declare (not safe))
                           (##car _%e106547106716%_))))
                    (if (gx#stx-pair? _%tl106549106723%_)
                        (let ((_%e106550106726%_
                               (gx#syntax-e _%tl106549106723%_)))
                          (let ((_%tl106552106733%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e106550106726%_)))
                                (_%hd106551106730%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e106550106726%_))))
                            (if (gx#stx-pair? _%tl106552106733%_)
                                (let ((_%e106553106736%_
                                       (gx#syntax-e _%tl106552106733%_)))
                                  (let ((_%tl106555106743%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e106553106736%_)))
                                        (_%hd106554106740%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e106553106736%_))))
                                    (if (gx#stx-pair/null? _%hd106554106740%_)
                                        (let ((_%__splice112270112271%_
                                               (gx#syntax-split-splice->vector
                                                _%hd106554106740%_
                                                '0)))
                                          (let ((_%tl106558106749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice112270112271%_
                                                    '1)))
                                                (_%target106556106746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice112270112271%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%tl106558106749%_)
                                                (_%__match112302112303%_
                                                 _%e106547106716%_
                                                 _%hd106548106720%_
                                                 _%tl106549106723%_
                                                 _%e106550106726%_
                                                 _%hd106551106730%_
                                                 _%tl106552106733%_
                                                 _%e106553106736%_
                                                 _%hd106554106740%_
                                                 _%tl106555106743%_
                                                 _%__splice112270112271%_
                                                 _%target106556106746%_
                                                 _%tl106558106749%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g106541106600%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g106541106600%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g106541106600%_)))))
                        (let () (declare (not safe)) (_%g106541106600%_)))))
                (let () (declare (not safe)) (_%g106541106600%_)))))))))
