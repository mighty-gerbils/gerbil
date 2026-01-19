(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx104809%_)
      (let* ((_%__stx111624111625%_ _%$stx104809%_)
             (_%g104814104843%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx111624111625%_))))
        (let ((_%__kont111627111628%_
               (lambda (_%L104936%_ _%L104938%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L104938%_ (cons _%L104936%_ '())))
                             (cons _%L104936%_ '())))))
              (_%__kont111629111630%_
               (lambda (_%L104880%_ _%L104882%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L104880%_ (cons _%L104880%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L104882%_
                                                           (cons _%L104880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L104880%_ '())))
                                   '()))))))
          (let ((_%__match111651111652%_
                 (lambda (_%e104818104906%_
                          _%hd104819104910%_
                          _%tl104820104913%_
                          _%e104821104916%_
                          _%hd104822104920%_
                          _%tl104823104923%_
                          _%e104824104926%_
                          _%hd104825104930%_
                          _%tl104826104933%_)
                   (let ((_%L104936%_ _%hd104825104930%_)
                         (_%L104938%_ _%hd104822104920%_))
                     (if (or (gx#identifier? _%L104936%_)
                             (gx#stx-fixnum? _%L104936%_))
                         (_%__kont111627111628%_ _%L104936%_ _%L104938%_)
                         (_%__kont111629111630%_
                          _%hd104825104930%_
                          _%hd104822104920%_))))))
            (if (gx#stx-pair? _%__stx111624111625%_)
                (let ((_%e104818104906%_ (gx#syntax-e _%__stx111624111625%_)))
                  (let ((_%tl104820104913%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e104818104906%_)))
                        (_%hd104819104910%_
                         (let ()
                           (declare (not safe))
                           (##car _%e104818104906%_))))
                    (if (gx#stx-pair? _%tl104820104913%_)
                        (let ((_%e104821104916%_
                               (gx#syntax-e _%tl104820104913%_)))
                          (let ((_%tl104823104923%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e104821104916%_)))
                                (_%hd104822104920%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e104821104916%_))))
                            (if (gx#stx-pair? _%tl104823104923%_)
                                (let ((_%e104824104926%_
                                       (gx#syntax-e _%tl104823104923%_)))
                                  (let ((_%tl104826104933%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e104824104926%_)))
                                        (_%hd104825104930%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e104824104926%_))))
                                    (if (gx#stx-null? _%tl104826104933%_)
                                        (_%__match111651111652%_
                                         _%e104818104906%_
                                         _%hd104819104910%_
                                         _%tl104820104913%_
                                         _%e104821104916%_
                                         _%hd104822104920%_
                                         _%tl104823104923%_
                                         _%e104824104926%_
                                         _%hd104825104930%_
                                         _%tl104826104933%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g104814104843%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g104814104843%_)))))
                        (let () (declare (not safe)) (_%g104814104843%_)))))
                (let () (declare (not safe)) (_%g104814104843%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx104961%_)
      (let* ((_%__stx111674111675%_ _%$stx104961%_)
             (_%g104966104995%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx111674111675%_))))
        (let ((_%__kont111677111678%_
               (lambda (_%L105087%_ _%L105089%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L105089%_ (cons _%L105087%_ '())))
                             (cons '0 '())))))
              (_%__kont111679111680%_
               (lambda (_%L105032%_ _%L105034%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L105032%_ (cons _%L105032%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L105034%_
                                                           (cons _%L105032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match111701111702%_
                 (lambda (_%e104970105057%_
                          _%hd104971105061%_
                          _%tl104972105064%_
                          _%e104973105067%_
                          _%hd104974105071%_
                          _%tl104975105074%_
                          _%e104976105077%_
                          _%hd104977105081%_
                          _%tl104978105084%_)
                   (let ((_%L105087%_ _%hd104977105081%_)
                         (_%L105089%_ _%hd104974105071%_))
                     (if (or (gx#identifier? _%L105087%_)
                             (gx#stx-fixnum? _%L105087%_))
                         (_%__kont111677111678%_ _%L105087%_ _%L105089%_)
                         (_%__kont111679111680%_
                          _%hd104977105081%_
                          _%hd104974105071%_))))))
            (if (gx#stx-pair? _%__stx111674111675%_)
                (let ((_%e104970105057%_ (gx#syntax-e _%__stx111674111675%_)))
                  (let ((_%tl104972105064%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e104970105057%_)))
                        (_%hd104971105061%_
                         (let ()
                           (declare (not safe))
                           (##car _%e104970105057%_))))
                    (if (gx#stx-pair? _%tl104972105064%_)
                        (let ((_%e104973105067%_
                               (gx#syntax-e _%tl104972105064%_)))
                          (let ((_%tl104975105074%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e104973105067%_)))
                                (_%hd104974105071%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e104973105067%_))))
                            (if (gx#stx-pair? _%tl104975105074%_)
                                (let ((_%e104976105077%_
                                       (gx#syntax-e _%tl104975105074%_)))
                                  (let ((_%tl104978105084%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e104976105077%_)))
                                        (_%hd104977105081%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e104976105077%_))))
                                    (if (gx#stx-null? _%tl104978105084%_)
                                        (_%__match111701111702%_
                                         _%e104970105057%_
                                         _%hd104971105061%_
                                         _%tl104972105064%_
                                         _%e104973105067%_
                                         _%hd104974105071%_
                                         _%tl104975105074%_
                                         _%e104976105077%_
                                         _%hd104977105081%_
                                         _%tl104978105084%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g104966104995%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g104966104995%_)))))
                        (let () (declare (not safe)) (_%g104966104995%_)))))
                (let () (declare (not safe)) (_%g104966104995%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx105112%_)
      (let* ((_%g105115105136%_
              (lambda (_%g105116105132%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105116105132%_)))
             (_%g105114105364%_
              (lambda (_%g105116105140%_)
                (if (gx#stx-pair? _%g105116105140%_)
                    (let ((_%e105119105143%_ (gx#syntax-e _%g105116105140%_)))
                      (let ((_%hd105120105147%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105119105143%_)))
                            (_%tl105121105150%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105119105143%_))))
                        (if (gx#stx-pair? _%tl105121105150%_)
                            (let ((_%e105122105153%_
                                   (gx#syntax-e _%tl105121105150%_)))
                              (let ((_%hd105123105157%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105122105153%_)))
                                    (_%tl105124105160%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105122105153%_))))
                                (if (gx#stx-pair? _%hd105123105157%_)
                                    (let ((_%e105125105163%_
                                           (gx#syntax-e _%hd105123105157%_)))
                                      (let ((_%hd105126105167%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105125105163%_)))
                                            (_%tl105127105170%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105125105163%_))))
                                        (if (gx#stx-pair? _%tl105127105170%_)
                                            (let ((_%e105128105173%_
                                                   (gx#syntax-e
                                                    _%tl105127105170%_)))
                                              (let ((_%hd105129105177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105128105173%_)))
                                                    (_%tl105130105180%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105128105173%_))))
                                                (if (gx#stx-null?
                                                     _%tl105130105180%_)
                                                    (if (gx#stx-null?
                                                         _%tl105124105160%_)
                                                        ((lambda (_%L105183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L105185%_)
                   (let* ((_%g105203105211%_
                           (lambda (_%g105204105207%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g105204105207%_)))
                          (_%g105202105360%_
                           (lambda (_%g105204105215%_)
                             ((lambda (_%L105218%_)
                                (let* ((_%g105230105238%_
                                        (lambda (_%g105231105234%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g105231105234%_)))
                                       (_%g105229105356%_
                                        (lambda (_%g105231105242%_)
                                          ((lambda (_%L105245%_)
                                             (let* ((_%g105258105266%_
                                                     (lambda (_%g105259105262%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g105259105262%_)))
                                                    (_%g105257105352%_
                                                     (lambda (_%g105259105270%_)
                                                       ((lambda (_%L105273%_)
                                                          (let* ((_%g105286105294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g105287105290%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g105287105290%_)))
                         (_%g105285105348%_
                          (lambda (_%g105287105298%_)
                            ((lambda (_%L105301%_)
                               (let* ((_%g105314105322%_
                                       (lambda (_%g105315105318%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g105315105318%_)))
                                      (_%g105313105344%_
                                       (lambda (_%g105315105326%_)
                                         ((lambda (_%L105329%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L105245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L105218%_
                                                          (cons _%L105185%_
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
                                          (cons _%L105183%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L105185%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L105273%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L105218%_
                                                                (cons _%L105185%_
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
                                                (cons _%L105183%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L105185%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L105301%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L105218%_ (cons _%L105185%_ (cons '#t '()))))
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
                                                            (cons _%L105183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L105185%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L105329%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L105218%_
                                    (cons _%L105185%_ (cons '#f '()))))
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
                          (cons _%L105183%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L105185%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g105315105326%_))))
                                 (_%g105313105344%_
                                  (gx#stx-identifier
                                   _%L105185%_
                                   '"&"
                                   _%L105301%_))))
                             _%g105287105298%_))))
                    (_%g105285105348%_
                     (gx#stx-identifier _%L105185%_ _%L105245%_ '"-set!"))))
                _%g105259105270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g105257105352%_
                                                (gx#stx-identifier
                                                 _%L105185%_
                                                 '"&"
                                                 _%L105245%_))))
                                           _%g105231105242%_))))
                                  (_%g105229105356%_
                                   (gx#stx-identifier
                                    _%L105185%_
                                    '"class-type-"
                                    _%L105185%_))))
                              _%g105204105215%_))))
                     (_%g105202105360%_ (gx#core-quote-syntax 'class::t))))
                 _%hd105129105177%_
                 _%hd105126105167%_)
                (_%g105115105136%_ _%g105116105140%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105115105136%_
                                                     _%g105116105140%_))))
                                            (_%g105115105136%_
                                             _%g105116105140%_))))
                                    (_%g105115105136%_ _%g105116105140%_))))
                            (_%g105115105136%_ _%g105116105140%_))))
                    (_%g105115105136%_ _%g105116105140%_)))))
        (_%g105114105364%_ _%stx105112%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx105368%_)
      (let* ((_%g105372105401%_
              (lambda (_%g105373105397%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105373105397%_)))
             (_%g105371105501%_
              (lambda (_%g105373105405%_)
                (if (gx#stx-pair? _%g105373105405%_)
                    (let ((_%e105376105408%_ (gx#syntax-e _%g105373105405%_)))
                      (let ((_%hd105377105412%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105376105408%_)))
                            (_%tl105378105415%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105376105408%_))))
                        (if (gx#stx-pair/null? _%tl105378105415%_)
                            (let ((_g112041_
                                   (gx#syntax-split-splice
                                    _%tl105378105415%_
                                    '0)))
                              (begin
                                (let ((_g112042_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g112041_)
                                             (##values-length _g112041_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g112042_ 2)))
                                      (error "Context expects 2 values"
                                             _g112042_)))
                                (let ((_%target105379105418%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112041_ 0)))
                                      (_%tl105381105421%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112041_ 1))))
                                  (if (gx#stx-null? _%tl105381105421%_)
                                      (letrec ((_%loop105382105424%_
                                                (lambda (_%hd105380105428%_
                                                         _%field105386105431%_
                                                         _%slot105387105433%_)
                                                  (if (gx#stx-pair?
                                                       _%hd105380105428%_)
                                                      (let ((_%e105383105436%_
                                                             (gx#syntax-e
                                                              _%hd105380105428%_)))
                                                        (let ((_%lp-hd105384105440%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e105383105436%_)))
                      (_%lp-tl105385105443%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e105383105436%_))))
                  (if (gx#stx-pair? _%lp-hd105384105440%_)
                      (let ((_%e105390105446%_
                             (gx#syntax-e _%lp-hd105384105440%_)))
                        (let ((_%hd105391105450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e105390105446%_)))
                              (_%tl105392105453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e105390105446%_))))
                          (if (gx#stx-pair? _%tl105392105453%_)
                              (let ((_%e105393105456%_
                                     (gx#syntax-e _%tl105392105453%_)))
                                (let ((_%hd105394105460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e105393105456%_)))
                                      (_%tl105395105463%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e105393105456%_))))
                                  (if (gx#stx-null? _%tl105395105463%_)
                                      (_%loop105382105424%_
                                       _%lp-tl105385105443%_
                                       (cons _%hd105394105460%_
                                             _%field105386105431%_)
                                       (cons _%hd105391105450%_
                                             _%slot105387105433%_))
                                      (_%g105372105401%_ _%g105373105405%_))))
                              (_%g105372105401%_ _%g105373105405%_))))
                      (_%g105372105401%_ _%g105373105405%_))))
              (let ((_%field105388105466%_ (reverse _%field105386105431%_))
                    (_%slot105389105469%_ (reverse _%slot105387105433%_)))
                ((lambda (_%L105472%_ _%L105474%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L105472%_
                            _%L105474%_)
                           (let ((__tmp112043
                                  (lambda (_%g105489105493%_
                                           _%g105490105496%_
                                           _%g105491105498%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g105490105496%_
                                                            (cons _%g105489105493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g105491105498%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp112043
                              '()
                              _%L105472%_
                              _%L105474%_)))))
                 _%field105388105466%_
                 _%slot105389105469%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop105382105424%_
                                         _%target105379105418%_
                                         '()
                                         '()))
                                      (_%g105372105401%_ _%g105373105405%_)))))
                            (_%g105372105401%_ _%g105373105405%_))))
                    (_%g105372105401%_ _%g105373105405%_)))))
        (_%g105371105501%_ _%$stx105368%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx105506%_)
      (let* ((_%g105510105544%_
              (lambda (_%g105511105540%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105511105540%_)))
             (_%g105509105655%_
              (lambda (_%g105511105548%_)
                (if (gx#stx-pair? _%g105511105548%_)
                    (let ((_%e105518105551%_ (gx#syntax-e _%g105511105548%_)))
                      (let ((_%hd105519105555%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105518105551%_)))
                            (_%tl105520105558%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105518105551%_))))
                        (if (gx#stx-pair? _%tl105520105558%_)
                            (let ((_%e105521105561%_
                                   (gx#syntax-e _%tl105520105558%_)))
                              (let ((_%hd105522105565%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105521105561%_)))
                                    (_%tl105523105568%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105521105561%_))))
                                (if (gx#stx-pair? _%tl105523105568%_)
                                    (let ((_%e105524105571%_
                                           (gx#syntax-e _%tl105523105568%_)))
                                      (let ((_%hd105525105575%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105524105571%_)))
                                            (_%tl105526105578%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105524105571%_))))
                                        (if (gx#stx-pair? _%tl105526105578%_)
                                            (let ((_%e105527105581%_
                                                   (gx#syntax-e
                                                    _%tl105526105578%_)))
                                              (let ((_%hd105528105585%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105527105581%_)))
                                                    (_%tl105529105588%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105527105581%_))))
                                                (if (gx#stx-pair?
                                                     _%tl105529105588%_)
                                                    (let ((_%e105530105591%_
                                                           (gx#syntax-e
                                                            _%tl105529105588%_)))
                                                      (let ((_%hd105531105595%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e105530105591%_)))
                    (_%tl105532105598%_
                     (let () (declare (not safe)) (##cdr _%e105530105591%_))))
                (if (gx#stx-pair? _%tl105532105598%_)
                    (let ((_%e105533105601%_ (gx#syntax-e _%tl105532105598%_)))
                      (let ((_%hd105534105605%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105533105601%_)))
                            (_%tl105535105608%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105533105601%_))))
                        (if (gx#stx-pair? _%tl105535105608%_)
                            (let ((_%e105536105611%_
                                   (gx#syntax-e _%tl105535105608%_)))
                              (let ((_%hd105537105615%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105536105611%_)))
                                    (_%tl105538105618%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105536105611%_))))
                                (if (gx#stx-null? _%tl105538105618%_)
                                    ((lambda (_%L105621%_
                                              _%L105623%_
                                              _%L105624%_
                                              _%L105625%_
                                              _%L105626%_
                                              _%L105627%_)
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
                                         (cons _%L105627%_ '()))
                                   (cons _%L105626%_ (cons '#f '()))))
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
                               (cons _%L105627%_
                                     (cons 'slot: (cons _%L105626%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L105627%_ '()))
                                         (cons (cons _%L105625%_
                                                     (cons _%L105627%_
                                                           (cons _%L105626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L105627%_ '()))
                                               (cons (cons _%L105624%_
                                                           (cons _%L105627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L105626%_
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
                                           (cons _%L105627%_ '()))
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
                                                     (cons (cons _%L105623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L105627%_
                               (cons _%L105626%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L105621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L105627%_
                                     (cons _%L105626%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd105537105615%_
                                     _%hd105534105605%_
                                     _%hd105531105595%_
                                     _%hd105528105585%_
                                     _%hd105525105575%_
                                     _%hd105522105565%_)
                                    (_%g105510105544%_ _%g105511105548%_))))
                            (_%g105510105544%_ _%g105511105548%_))))
                    (_%g105510105544%_ _%g105511105548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105510105544%_
                                                     _%g105511105548%_))))
                                            (_%g105510105544%_
                                             _%g105511105548%_))))
                                    (_%g105510105544%_ _%g105511105548%_))))
                            (_%g105510105544%_ _%g105511105548%_))))
                    (_%g105510105544%_ _%g105511105548%_)))))
        (_%g105509105655%_ _%$stx105506%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx105659%_)
      (let* ((_%g105663105689%_
              (lambda (_%g105664105685%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105664105685%_)))
             (_%g105662105772%_
              (lambda (_%g105664105693%_)
                (if (gx#stx-pair? _%g105664105693%_)
                    (let ((_%e105669105696%_ (gx#syntax-e _%g105664105693%_)))
                      (let ((_%hd105670105700%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105669105696%_)))
                            (_%tl105671105703%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105669105696%_))))
                        (if (gx#stx-pair? _%tl105671105703%_)
                            (let ((_%e105672105706%_
                                   (gx#syntax-e _%tl105671105703%_)))
                              (let ((_%hd105673105710%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105672105706%_)))
                                    (_%tl105674105713%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105672105706%_))))
                                (if (gx#stx-pair? _%tl105674105713%_)
                                    (let ((_%e105675105716%_
                                           (gx#syntax-e _%tl105674105713%_)))
                                      (let ((_%hd105676105720%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105675105716%_)))
                                            (_%tl105677105723%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105675105716%_))))
                                        (if (gx#stx-pair? _%tl105677105723%_)
                                            (let ((_%e105678105726%_
                                                   (gx#syntax-e
                                                    _%tl105677105723%_)))
                                              (let ((_%hd105679105730%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105678105726%_)))
                                                    (_%tl105680105733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105678105726%_))))
                                                (if (gx#stx-pair?
                                                     _%tl105680105733%_)
                                                    (let ((_%e105681105736%_
                                                           (gx#syntax-e
                                                            _%tl105680105733%_)))
                                                      (let ((_%hd105682105740%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e105681105736%_)))
                    (_%tl105683105743%_
                     (let () (declare (not safe)) (##cdr _%e105681105736%_))))
                (if (gx#stx-null? _%tl105683105743%_)
                    ((lambda (_%L105746%_ _%L105748%_ _%L105749%_ _%L105750%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L105750%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L105749%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L105748%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L105746%_
                                     (cons _%L105750%_ (cons _%L105749%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd105682105740%_
                     _%hd105679105730%_
                     _%hd105676105720%_
                     _%hd105673105710%_)
                    (_%g105663105689%_ _%g105664105693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105663105689%_
                                                     _%g105664105693%_))))
                                            (_%g105663105689%_
                                             _%g105664105693%_))))
                                    (_%g105663105689%_ _%g105664105693%_))))
                            (_%g105663105689%_ _%g105664105693%_))))
                    (_%g105663105689%_ _%g105664105693%_)))))
        (_%g105662105772%_ _%$stx105659%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx105776%_)
      (let* ((_%g105780105809%_
              (lambda (_%g105781105805%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105781105805%_)))
             (_%g105779105909%_
              (lambda (_%g105781105813%_)
                (if (gx#stx-pair? _%g105781105813%_)
                    (let ((_%e105784105816%_ (gx#syntax-e _%g105781105813%_)))
                      (let ((_%hd105785105820%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105784105816%_)))
                            (_%tl105786105823%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105784105816%_))))
                        (if (gx#stx-pair/null? _%tl105786105823%_)
                            (let ((_g112044_
                                   (gx#syntax-split-splice
                                    _%tl105786105823%_
                                    '0)))
                              (begin
                                (let ((_g112045_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g112044_)
                                             (##values-length _g112044_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g112045_ 2)))
                                      (error "Context expects 2 values"
                                             _g112045_)))
                                (let ((_%target105787105826%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112044_ 0)))
                                      (_%tl105789105829%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112044_ 1))))
                                  (if (gx#stx-null? _%tl105789105829%_)
                                      (letrec ((_%loop105790105832%_
                                                (lambda (_%hd105788105836%_
                                                         _%name105794105839%_
                                                         _%t105795105841%_)
                                                  (if (gx#stx-pair?
                                                       _%hd105788105836%_)
                                                      (let ((_%e105791105844%_
                                                             (gx#syntax-e
                                                              _%hd105788105836%_)))
                                                        (let ((_%lp-hd105792105848%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e105791105844%_)))
                      (_%lp-tl105793105851%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e105791105844%_))))
                  (if (gx#stx-pair? _%lp-hd105792105848%_)
                      (let ((_%e105798105854%_
                             (gx#syntax-e _%lp-hd105792105848%_)))
                        (let ((_%hd105799105858%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e105798105854%_)))
                              (_%tl105800105861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e105798105854%_))))
                          (if (gx#stx-pair? _%tl105800105861%_)
                              (let ((_%e105801105864%_
                                     (gx#syntax-e _%tl105800105861%_)))
                                (let ((_%hd105802105868%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e105801105864%_)))
                                      (_%tl105803105871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e105801105864%_))))
                                  (if (gx#stx-null? _%tl105803105871%_)
                                      (_%loop105790105832%_
                                       _%lp-tl105793105851%_
                                       (cons _%hd105802105868%_
                                             _%name105794105839%_)
                                       (cons _%hd105799105858%_
                                             _%t105795105841%_))
                                      (_%g105780105809%_ _%g105781105813%_))))
                              (_%g105780105809%_ _%g105781105813%_))))
                      (_%g105780105809%_ _%g105781105813%_))))
              (let ((_%name105796105874%_ (reverse _%name105794105839%_))
                    (_%t105797105877%_ (reverse _%t105795105841%_)))
                ((lambda (_%L105880%_ _%L105882%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L105880%_
                            _%L105882%_)
                           (let ((__tmp112046
                                  (lambda (_%g105897105901%_
                                           _%g105898105904%_
                                           _%g105899105906%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g105898105904%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g105897105901%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g105899105906%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp112046
                              '()
                              _%L105880%_
                              _%L105882%_)))))
                 _%name105796105874%_
                 _%t105797105877%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop105790105832%_
                                         _%target105787105826%_
                                         '()
                                         '()))
                                      (_%g105780105809%_ _%g105781105813%_)))))
                            (_%g105780105809%_ _%g105781105813%_))))
                    (_%g105780105809%_ _%g105781105813%_)))))
        (_%g105779105909%_ _%$stx105776%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx105914%_)
      (let* ((_%__stx111749111750%_ _%$stx105914%_)
             (_%g105919105978%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx111749111750%_))))
        (let ((_%__kont111752111753%_
               (lambda (_%L106176%_ _%L106178%_ _%L106179%_ _%L106180%_)
                 (cons (gx#datum->syntax '#f 'def)
                       (cons _%L106180%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.system)
                                                     (cons _%L106179%_
                                                           (cons (let ((__tmp112047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g106204106209%_ _%g106205106212%_)
                                  (cons _%g106204106209%_ _%g106205106212%_))))
                           (declare (not safe))
                           (__foldr1 __tmp112047 '() _%L106178%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '__make-system-class)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%L106179%_ '()))
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (let ((__tmp112048
                                            (lambda (_%g106206106215%_
                                                     _%g106207106218%_)
                                              (cons _%g106206106215%_
                                                    _%g106207106218%_))))
                                       (declare (not safe))
                                       (__foldr1 __tmp112048 '() _%L106178%_)))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L106176%_ '()))
                                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))))
              (_%__kont111756111757%_
               (lambda (_%L106055%_ _%L106057%_ _%L106058%_)
                 (cons (gx#datum->syntax '#f 'defsystem-class)
                       (cons _%L106058%_
                             (cons _%L106057%_
                                   (cons (let ((__tmp112049
                                                (lambda (_%g106080106083%_
                                                         _%g106081106086%_)
                                                  (cons _%g106080106083%_
                                                        _%g106081106086%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp112049
                                            '()
                                            _%L106055%_))
                                         (cons '() '()))))))))
          (let* ((_%__match111824111825%_
                  (lambda (_%e105952105985%_
                           _%hd105953105989%_
                           _%tl105954105992%_
                           _%e105955105995%_
                           _%hd105956105999%_
                           _%tl105957106002%_
                           _%e105958106005%_
                           _%hd105959106009%_
                           _%tl105960106012%_
                           _%e105961106015%_
                           _%hd105962106019%_
                           _%tl105963106022%_
                           _%__splice111758111759%_
                           _%target105964106025%_
                           _%tl105966106028%_)
                    (letrec ((_%loop105967106031%_
                              (lambda (_%hd105965106035%_
                                       _%super105971106038%_)
                                (if (gx#stx-pair? _%hd105965106035%_)
                                    (let ((_%e105968106041%_
                                           (gx#syntax-e _%hd105965106035%_)))
                                      (let ((_%lp-tl105970106048%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105968106041%_)))
                                            (_%lp-hd105969106045%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105968106041%_))))
                                        (_%loop105967106031%_
                                         _%lp-tl105970106048%_
                                         (cons _%lp-hd105969106045%_
                                               _%super105971106038%_))))
                                    (let ((_%super105972106051%_
                                           (reverse _%super105971106038%_)))
                                      (if (gx#stx-null? _%tl105963106022%_)
                                          (_%__kont111756111757%_
                                           _%super105972106051%_
                                           _%hd105959106009%_
                                           _%hd105956105999%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g105919105978%_))))))))
                      (_%loop105967106031%_ _%target105964106025%_ '()))))
                 (_%__match111792111793%_
                  (lambda (_%e105925106096%_
                           _%hd105926106100%_
                           _%tl105927106103%_
                           _%e105928106106%_
                           _%hd105929106110%_
                           _%tl105930106113%_
                           _%e105931106116%_
                           _%hd105932106120%_
                           _%tl105933106123%_
                           _%e105934106126%_
                           _%hd105935106130%_
                           _%tl105936106133%_
                           _%__splice111754111755%_
                           _%target105937106136%_
                           _%tl105939106139%_)
                    (letrec ((_%loop105940106142%_
                              (lambda (_%hd105938106146%_
                                       _%super105944106149%_)
                                (if (gx#stx-pair? _%hd105938106146%_)
                                    (let ((_%e105941106152%_
                                           (gx#syntax-e _%hd105938106146%_)))
                                      (let ((_%lp-tl105943106159%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105941106152%_)))
                                            (_%lp-hd105942106156%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105941106152%_))))
                                        (_%loop105940106142%_
                                         _%lp-tl105943106159%_
                                         (cons _%lp-hd105942106156%_
                                               _%super105944106149%_))))
                                    (let ((_%super105945106162%_
                                           (reverse _%super105944106149%_)))
                                      (if (gx#stx-pair? _%tl105936106133%_)
                                          (let ((_%e105946106166%_
                                                 (gx#syntax-e
                                                  _%tl105936106133%_)))
                                            (let ((_%tl105948106173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e105946106166%_)))
                                                  (_%hd105947106170%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e105946106166%_))))
                                              (if (gx#stx-null?
                                                   _%tl105948106173%_)
                                                  (_%__kont111752111753%_
                                                   _%hd105947106170%_
                                                   _%super105945106162%_
                                                   _%hd105932106120%_
                                                   _%hd105929106110%_)
                                                  (_%__match111824111825%_
                                                   _%e105925106096%_
                                                   _%hd105926106100%_
                                                   _%tl105927106103%_
                                                   _%e105928106106%_
                                                   _%hd105929106110%_
                                                   _%tl105930106113%_
                                                   _%e105931106116%_
                                                   _%hd105932106120%_
                                                   _%tl105933106123%_
                                                   _%e105934106126%_
                                                   _%hd105935106130%_
                                                   _%tl105936106133%_
                                                   _%__splice111754111755%_
                                                   _%target105937106136%_
                                                   _%tl105939106139%_))))
                                          (_%__match111824111825%_
                                           _%e105925106096%_
                                           _%hd105926106100%_
                                           _%tl105927106103%_
                                           _%e105928106106%_
                                           _%hd105929106110%_
                                           _%tl105930106113%_
                                           _%e105931106116%_
                                           _%hd105932106120%_
                                           _%tl105933106123%_
                                           _%e105934106126%_
                                           _%hd105935106130%_
                                           _%tl105936106133%_
                                           _%__splice111754111755%_
                                           _%target105937106136%_
                                           _%tl105939106139%_)))))))
                      (_%loop105940106142%_ _%target105937106136%_ '())))))
            (if (gx#stx-pair? _%__stx111749111750%_)
                (let ((_%e105925106096%_ (gx#syntax-e _%__stx111749111750%_)))
                  (let ((_%tl105927106103%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e105925106096%_)))
                        (_%hd105926106100%_
                         (let ()
                           (declare (not safe))
                           (##car _%e105925106096%_))))
                    (if (gx#stx-pair? _%tl105927106103%_)
                        (let ((_%e105928106106%_
                               (gx#syntax-e _%tl105927106103%_)))
                          (let ((_%tl105930106113%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e105928106106%_)))
                                (_%hd105929106110%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e105928106106%_))))
                            (if (gx#stx-pair? _%tl105930106113%_)
                                (let ((_%e105931106116%_
                                       (gx#syntax-e _%tl105930106113%_)))
                                  (let ((_%tl105933106123%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e105931106116%_)))
                                        (_%hd105932106120%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e105931106116%_))))
                                    (if (gx#stx-pair? _%tl105933106123%_)
                                        (let ((_%e105934106126%_
                                               (gx#syntax-e
                                                _%tl105933106123%_)))
                                          (let ((_%tl105936106133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e105934106126%_)))
                                                (_%hd105935106130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e105934106126%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd105935106130%_)
                                                (let ((_%__splice111754111755%_
                                                       (gx#syntax-split-splice->vector
                                                        _%hd105935106130%_
                                                        '0)))
                                                  (let ((_%tl105939106139%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice111754111755%_
                                                            '1)))
                                                        (_%target105937106136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice111754111755%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl105939106139%_)
                                                        (_%__match111792111793%_
                                                         _%e105925106096%_
                                                         _%hd105926106100%_
                                                         _%tl105927106103%_
                                                         _%e105928106106%_
                                                         _%hd105929106110%_
                                                         _%tl105930106113%_
                                                         _%e105931106116%_
                                                         _%hd105932106120%_
                                                         _%tl105933106123%_
                                                         _%e105934106126%_
                                                         _%hd105935106130%_
                                                         _%tl105936106133%_
                                                         _%__splice111754111755%_
                                                         _%target105937106136%_
                                                         _%tl105939106139%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g105919105978%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g105919105978%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g105919105978%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g105919105978%_)))))
                        (let () (declare (not safe)) (_%g105919105978%_)))))
                (let () (declare (not safe)) (_%g105919105978%_))))))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx106227%_)
      (let* ((_%__stx111827111828%_ _%$stx106227%_)
             (_%g106232106291%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx111827111828%_))))
        (let ((_%__kont111830111831%_
               (lambda (_%L106489%_ _%L106491%_ _%L106492%_ _%L106493%_)
                 (cons (gx#datum->syntax '#f 'def)
                       (cons _%L106493%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.system)
                                                     (cons _%L106493%_
                                                           (cons (let ((__tmp112050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g106517106520%_ _%g106518106523%_)
                                  (cons _%g106517106520%_ _%g106518106523%_))))
                           (declare (not safe))
                           (__foldr1 __tmp112050 '() _%L106492%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '__shadow-class)
                                                           (cons _%L106491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L106489%_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))))
              (_%__kont111834111835%_
               (lambda (_%L106368%_ _%L106370%_ _%L106371%_)
                 (cons (gx#datum->syntax '#f 'defshadow-class)
                       (cons _%L106371%_
                             (cons (let ((__tmp112051
                                          (lambda (_%g106393106396%_
                                                   _%g106394106399%_)
                                            (cons _%g106393106396%_
                                                  _%g106394106399%_))))
                                     (declare (not safe))
                                     (__foldr1 __tmp112051 '() _%L106370%_))
                                   (cons _%L106368%_ (cons '() '()))))))))
          (let* ((_%__match111890111891%_
                  (lambda (_%e106265106298%_
                           _%hd106266106302%_
                           _%tl106267106305%_
                           _%e106268106308%_
                           _%hd106269106312%_
                           _%tl106270106315%_
                           _%e106271106318%_
                           _%hd106272106322%_
                           _%tl106273106325%_
                           _%__splice111836111837%_
                           _%target106274106328%_
                           _%tl106276106331%_)
                    (letrec ((_%loop106277106334%_
                              (lambda (_%hd106275106338%_
                                       _%super106281106341%_)
                                (if (gx#stx-pair? _%hd106275106338%_)
                                    (let ((_%e106278106344%_
                                           (gx#syntax-e _%hd106275106338%_)))
                                      (let ((_%lp-tl106280106351%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106278106344%_)))
                                            (_%lp-hd106279106348%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106278106344%_))))
                                        (_%loop106277106334%_
                                         _%lp-tl106280106351%_
                                         (cons _%lp-hd106279106348%_
                                               _%super106281106341%_))))
                                    (let ((_%super106282106354%_
                                           (reverse _%super106281106341%_)))
                                      (if (gx#stx-pair? _%tl106273106325%_)
                                          (let ((_%e106283106358%_
                                                 (gx#syntax-e
                                                  _%tl106273106325%_)))
                                            (let ((_%tl106285106365%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e106283106358%_)))
                                                  (_%hd106284106362%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e106283106358%_))))
                                              (if (gx#stx-null?
                                                   _%tl106285106365%_)
                                                  (_%__kont111834111835%_
                                                   _%hd106284106362%_
                                                   _%super106282106354%_
                                                   _%hd106269106312%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g106232106291%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g106232106291%_))))))))
                      (_%loop106277106334%_ _%target106274106328%_ '()))))
                 (_%__match111864111865%_
                  (lambda (_%e106238106409%_
                           _%hd106239106413%_
                           _%tl106240106416%_
                           _%e106241106419%_
                           _%hd106242106423%_
                           _%tl106243106426%_
                           _%e106244106429%_
                           _%hd106245106433%_
                           _%tl106246106436%_
                           _%__splice111832111833%_
                           _%target106247106439%_
                           _%tl106249106442%_)
                    (letrec ((_%loop106250106445%_
                              (lambda (_%hd106248106449%_
                                       _%super106254106452%_)
                                (if (gx#stx-pair? _%hd106248106449%_)
                                    (let ((_%e106251106455%_
                                           (gx#syntax-e _%hd106248106449%_)))
                                      (let ((_%lp-tl106253106462%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106251106455%_)))
                                            (_%lp-hd106252106459%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106251106455%_))))
                                        (_%loop106250106445%_
                                         _%lp-tl106253106462%_
                                         (cons _%lp-hd106252106459%_
                                               _%super106254106452%_))))
                                    (let ((_%super106255106465%_
                                           (reverse _%super106254106452%_)))
                                      (if (gx#stx-pair? _%tl106246106436%_)
                                          (let ((_%e106256106469%_
                                                 (gx#syntax-e
                                                  _%tl106246106436%_)))
                                            (let ((_%tl106258106476%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e106256106469%_)))
                                                  (_%hd106257106473%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e106256106469%_))))
                                              (if (gx#stx-pair?
                                                   _%tl106258106476%_)
                                                  (let ((_%e106259106479%_
                                                         (gx#syntax-e
                                                          _%tl106258106476%_)))
                                                    (let ((_%tl106261106486%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e106259106479%_)))
                                                          (_%hd106260106483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e106259106479%_))))
                                                      (if (gx#stx-null?
                                                           _%tl106261106486%_)
                                                          (_%__kont111830111831%_
                                                           _%hd106260106483%_
                                                           _%hd106257106473%_
                                                           _%super106255106465%_
                                                           _%hd106242106423%_)
                                                          (_%__match111890111891%_
                                                           _%e106238106409%_
                                                           _%hd106239106413%_
                                                           _%tl106240106416%_
                                                           _%e106241106419%_
                                                           _%hd106242106423%_
                                                           _%tl106243106426%_
                                                           _%e106244106429%_
                                                           _%hd106245106433%_
                                                           _%tl106246106436%_
                                                           _%__splice111832111833%_
                                                           _%target106247106439%_
                                                           _%tl106249106442%_))))
                                                  (_%__match111890111891%_
                                                   _%e106238106409%_
                                                   _%hd106239106413%_
                                                   _%tl106240106416%_
                                                   _%e106241106419%_
                                                   _%hd106242106423%_
                                                   _%tl106243106426%_
                                                   _%e106244106429%_
                                                   _%hd106245106433%_
                                                   _%tl106246106436%_
                                                   _%__splice111832111833%_
                                                   _%target106247106439%_
                                                   _%tl106249106442%_))))
                                          (_%__match111890111891%_
                                           _%e106238106409%_
                                           _%hd106239106413%_
                                           _%tl106240106416%_
                                           _%e106241106419%_
                                           _%hd106242106423%_
                                           _%tl106243106426%_
                                           _%e106244106429%_
                                           _%hd106245106433%_
                                           _%tl106246106436%_
                                           _%__splice111832111833%_
                                           _%target106247106439%_
                                           _%tl106249106442%_)))))))
                      (_%loop106250106445%_ _%target106247106439%_ '())))))
            (if (gx#stx-pair? _%__stx111827111828%_)
                (let ((_%e106238106409%_ (gx#syntax-e _%__stx111827111828%_)))
                  (let ((_%tl106240106416%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e106238106409%_)))
                        (_%hd106239106413%_
                         (let ()
                           (declare (not safe))
                           (##car _%e106238106409%_))))
                    (if (gx#stx-pair? _%tl106240106416%_)
                        (let ((_%e106241106419%_
                               (gx#syntax-e _%tl106240106416%_)))
                          (let ((_%tl106243106426%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e106241106419%_)))
                                (_%hd106242106423%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e106241106419%_))))
                            (if (gx#stx-pair? _%tl106243106426%_)
                                (let ((_%e106244106429%_
                                       (gx#syntax-e _%tl106243106426%_)))
                                  (let ((_%tl106246106436%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e106244106429%_)))
                                        (_%hd106245106433%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e106244106429%_))))
                                    (if (gx#stx-pair/null? _%hd106245106433%_)
                                        (let ((_%__splice111832111833%_
                                               (gx#syntax-split-splice->vector
                                                _%hd106245106433%_
                                                '0)))
                                          (let ((_%tl106249106442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice111832111833%_
                                                    '1)))
                                                (_%target106247106439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice111832111833%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%tl106249106442%_)
                                                (_%__match111864111865%_
                                                 _%e106238106409%_
                                                 _%hd106239106413%_
                                                 _%tl106240106416%_
                                                 _%e106241106419%_
                                                 _%hd106242106423%_
                                                 _%tl106243106426%_
                                                 _%e106244106429%_
                                                 _%hd106245106433%_
                                                 _%tl106246106436%_
                                                 _%__splice111832111833%_
                                                 _%target106247106439%_
                                                 _%tl106249106442%_)
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
                (let () (declare (not safe)) (_%g106232106291%_)))))))))
