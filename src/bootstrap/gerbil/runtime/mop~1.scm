(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx104782%_)
      (let* ((_%__stx111597111598%_ _%$stx104782%_)
             (_%g104787104816%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx111597111598%_))))
        (let ((_%__kont111600111601%_
               (lambda (_%L104909%_ _%L104911%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L104911%_ (cons _%L104909%_ '())))
                             (cons _%L104909%_ '())))))
              (_%__kont111602111603%_
               (lambda (_%L104853%_ _%L104855%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L104853%_ (cons _%L104853%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L104855%_
                                                           (cons _%L104853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L104853%_ '())))
                                   '()))))))
          (let ((_%__match111624111625%_
                 (lambda (_%e104791104879%_
                          _%hd104792104883%_
                          _%tl104793104886%_
                          _%e104794104889%_
                          _%hd104795104893%_
                          _%tl104796104896%_
                          _%e104797104899%_
                          _%hd104798104903%_
                          _%tl104799104906%_)
                   (let ((_%L104909%_ _%hd104798104903%_)
                         (_%L104911%_ _%hd104795104893%_))
                     (if (or (gx#identifier? _%L104909%_)
                             (gx#stx-fixnum? _%L104909%_))
                         (_%__kont111600111601%_ _%L104909%_ _%L104911%_)
                         (_%__kont111602111603%_
                          _%hd104798104903%_
                          _%hd104795104893%_))))))
            (if (gx#stx-pair? _%__stx111597111598%_)
                (let ((_%e104791104879%_ (gx#syntax-e _%__stx111597111598%_)))
                  (let ((_%tl104793104886%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e104791104879%_)))
                        (_%hd104792104883%_
                         (let ()
                           (declare (not safe))
                           (##car _%e104791104879%_))))
                    (if (gx#stx-pair? _%tl104793104886%_)
                        (let ((_%e104794104889%_
                               (gx#syntax-e _%tl104793104886%_)))
                          (let ((_%tl104796104896%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e104794104889%_)))
                                (_%hd104795104893%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e104794104889%_))))
                            (if (gx#stx-pair? _%tl104796104896%_)
                                (let ((_%e104797104899%_
                                       (gx#syntax-e _%tl104796104896%_)))
                                  (let ((_%tl104799104906%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e104797104899%_)))
                                        (_%hd104798104903%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e104797104899%_))))
                                    (if (gx#stx-null? _%tl104799104906%_)
                                        (_%__match111624111625%_
                                         _%e104791104879%_
                                         _%hd104792104883%_
                                         _%tl104793104886%_
                                         _%e104794104889%_
                                         _%hd104795104893%_
                                         _%tl104796104896%_
                                         _%e104797104899%_
                                         _%hd104798104903%_
                                         _%tl104799104906%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g104787104816%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g104787104816%_)))))
                        (let () (declare (not safe)) (_%g104787104816%_)))))
                (let () (declare (not safe)) (_%g104787104816%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx104934%_)
      (let* ((_%__stx111647111648%_ _%$stx104934%_)
             (_%g104939104968%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx111647111648%_))))
        (let ((_%__kont111650111651%_
               (lambda (_%L105060%_ _%L105062%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L105062%_ (cons _%L105060%_ '())))
                             (cons '0 '())))))
              (_%__kont111652111653%_
               (lambda (_%L105005%_ _%L105007%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L105005%_ (cons _%L105005%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L105007%_
                                                           (cons _%L105005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match111674111675%_
                 (lambda (_%e104943105030%_
                          _%hd104944105034%_
                          _%tl104945105037%_
                          _%e104946105040%_
                          _%hd104947105044%_
                          _%tl104948105047%_
                          _%e104949105050%_
                          _%hd104950105054%_
                          _%tl104951105057%_)
                   (let ((_%L105060%_ _%hd104950105054%_)
                         (_%L105062%_ _%hd104947105044%_))
                     (if (or (gx#identifier? _%L105060%_)
                             (gx#stx-fixnum? _%L105060%_))
                         (_%__kont111650111651%_ _%L105060%_ _%L105062%_)
                         (_%__kont111652111653%_
                          _%hd104950105054%_
                          _%hd104947105044%_))))))
            (if (gx#stx-pair? _%__stx111647111648%_)
                (let ((_%e104943105030%_ (gx#syntax-e _%__stx111647111648%_)))
                  (let ((_%tl104945105037%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e104943105030%_)))
                        (_%hd104944105034%_
                         (let ()
                           (declare (not safe))
                           (##car _%e104943105030%_))))
                    (if (gx#stx-pair? _%tl104945105037%_)
                        (let ((_%e104946105040%_
                               (gx#syntax-e _%tl104945105037%_)))
                          (let ((_%tl104948105047%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e104946105040%_)))
                                (_%hd104947105044%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e104946105040%_))))
                            (if (gx#stx-pair? _%tl104948105047%_)
                                (let ((_%e104949105050%_
                                       (gx#syntax-e _%tl104948105047%_)))
                                  (let ((_%tl104951105057%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e104949105050%_)))
                                        (_%hd104950105054%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e104949105050%_))))
                                    (if (gx#stx-null? _%tl104951105057%_)
                                        (_%__match111674111675%_
                                         _%e104943105030%_
                                         _%hd104944105034%_
                                         _%tl104945105037%_
                                         _%e104946105040%_
                                         _%hd104947105044%_
                                         _%tl104948105047%_
                                         _%e104949105050%_
                                         _%hd104950105054%_
                                         _%tl104951105057%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g104939104968%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g104939104968%_)))))
                        (let () (declare (not safe)) (_%g104939104968%_)))))
                (let () (declare (not safe)) (_%g104939104968%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx105085%_)
      (let* ((_%g105088105109%_
              (lambda (_%g105089105105%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105089105105%_)))
             (_%g105087105337%_
              (lambda (_%g105089105113%_)
                (if (gx#stx-pair? _%g105089105113%_)
                    (let ((_%e105092105116%_ (gx#syntax-e _%g105089105113%_)))
                      (let ((_%hd105093105120%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105092105116%_)))
                            (_%tl105094105123%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105092105116%_))))
                        (if (gx#stx-pair? _%tl105094105123%_)
                            (let ((_%e105095105126%_
                                   (gx#syntax-e _%tl105094105123%_)))
                              (let ((_%hd105096105130%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105095105126%_)))
                                    (_%tl105097105133%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105095105126%_))))
                                (if (gx#stx-pair? _%hd105096105130%_)
                                    (let ((_%e105098105136%_
                                           (gx#syntax-e _%hd105096105130%_)))
                                      (let ((_%hd105099105140%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105098105136%_)))
                                            (_%tl105100105143%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105098105136%_))))
                                        (if (gx#stx-pair? _%tl105100105143%_)
                                            (let ((_%e105101105146%_
                                                   (gx#syntax-e
                                                    _%tl105100105143%_)))
                                              (let ((_%hd105102105150%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105101105146%_)))
                                                    (_%tl105103105153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105101105146%_))))
                                                (if (gx#stx-null?
                                                     _%tl105103105153%_)
                                                    (if (gx#stx-null?
                                                         _%tl105097105133%_)
                                                        ((lambda (_%L105156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L105158%_)
                   (let* ((_%g105176105184%_
                           (lambda (_%g105177105180%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g105177105180%_)))
                          (_%g105175105333%_
                           (lambda (_%g105177105188%_)
                             ((lambda (_%L105191%_)
                                (let* ((_%g105203105211%_
                                        (lambda (_%g105204105207%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g105204105207%_)))
                                       (_%g105202105329%_
                                        (lambda (_%g105204105215%_)
                                          ((lambda (_%L105218%_)
                                             (let* ((_%g105231105239%_
                                                     (lambda (_%g105232105235%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g105232105235%_)))
                                                    (_%g105230105325%_
                                                     (lambda (_%g105232105243%_)
                                                       ((lambda (_%L105246%_)
                                                          (let* ((_%g105259105267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g105260105263%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g105260105263%_)))
                         (_%g105258105321%_
                          (lambda (_%g105260105271%_)
                            ((lambda (_%L105274%_)
                               (let* ((_%g105287105295%_
                                       (lambda (_%g105288105291%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g105288105291%_)))
                                      (_%g105286105317%_
                                       (lambda (_%g105288105299%_)
                                         ((lambda (_%L105302%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L105218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L105191%_
                                                          (cons _%L105158%_
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
                                          (cons _%L105156%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L105158%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L105246%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L105191%_
                                                                (cons _%L105158%_
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
                                                (cons _%L105156%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L105158%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L105274%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L105191%_ (cons _%L105158%_ (cons '#t '()))))
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
                                                            (cons _%L105156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L105158%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L105302%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L105191%_
                                    (cons _%L105158%_ (cons '#f '()))))
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
                          (cons _%L105156%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L105158%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g105288105299%_))))
                                 (_%g105286105317%_
                                  (gx#stx-identifier
                                   _%L105158%_
                                   '"&"
                                   _%L105274%_))))
                             _%g105260105271%_))))
                    (_%g105258105321%_
                     (gx#stx-identifier _%L105158%_ _%L105218%_ '"-set!"))))
                _%g105232105243%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g105230105325%_
                                                (gx#stx-identifier
                                                 _%L105158%_
                                                 '"&"
                                                 _%L105218%_))))
                                           _%g105204105215%_))))
                                  (_%g105202105329%_
                                   (gx#stx-identifier
                                    _%L105158%_
                                    '"class-type-"
                                    _%L105158%_))))
                              _%g105177105188%_))))
                     (_%g105175105333%_ (gx#core-quote-syntax 'class::t))))
                 _%hd105102105150%_
                 _%hd105099105140%_)
                (_%g105088105109%_ _%g105089105113%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105088105109%_
                                                     _%g105089105113%_))))
                                            (_%g105088105109%_
                                             _%g105089105113%_))))
                                    (_%g105088105109%_ _%g105089105113%_))))
                            (_%g105088105109%_ _%g105089105113%_))))
                    (_%g105088105109%_ _%g105089105113%_)))))
        (_%g105087105337%_ _%stx105085%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx105341%_)
      (let* ((_%g105345105374%_
              (lambda (_%g105346105370%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105346105370%_)))
             (_%g105344105474%_
              (lambda (_%g105346105378%_)
                (if (gx#stx-pair? _%g105346105378%_)
                    (let ((_%e105349105381%_ (gx#syntax-e _%g105346105378%_)))
                      (let ((_%hd105350105385%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105349105381%_)))
                            (_%tl105351105388%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105349105381%_))))
                        (if (gx#stx-pair/null? _%tl105351105388%_)
                            (let ((_g112014_
                                   (gx#syntax-split-splice
                                    _%tl105351105388%_
                                    '0)))
                              (begin
                                (let ((_g112015_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g112014_)
                                             (##values-length _g112014_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g112015_ 2)))
                                      (error "Context expects 2 values"
                                             _g112015_)))
                                (let ((_%target105352105391%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112014_ 0)))
                                      (_%tl105354105394%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112014_ 1))))
                                  (if (gx#stx-null? _%tl105354105394%_)
                                      (letrec ((_%loop105355105397%_
                                                (lambda (_%hd105353105401%_
                                                         _%field105359105404%_
                                                         _%slot105360105406%_)
                                                  (if (gx#stx-pair?
                                                       _%hd105353105401%_)
                                                      (let ((_%e105356105409%_
                                                             (gx#syntax-e
                                                              _%hd105353105401%_)))
                                                        (let ((_%lp-hd105357105413%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e105356105409%_)))
                      (_%lp-tl105358105416%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e105356105409%_))))
                  (if (gx#stx-pair? _%lp-hd105357105413%_)
                      (let ((_%e105363105419%_
                             (gx#syntax-e _%lp-hd105357105413%_)))
                        (let ((_%hd105364105423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e105363105419%_)))
                              (_%tl105365105426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e105363105419%_))))
                          (if (gx#stx-pair? _%tl105365105426%_)
                              (let ((_%e105366105429%_
                                     (gx#syntax-e _%tl105365105426%_)))
                                (let ((_%hd105367105433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e105366105429%_)))
                                      (_%tl105368105436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e105366105429%_))))
                                  (if (gx#stx-null? _%tl105368105436%_)
                                      (_%loop105355105397%_
                                       _%lp-tl105358105416%_
                                       (cons _%hd105367105433%_
                                             _%field105359105404%_)
                                       (cons _%hd105364105423%_
                                             _%slot105360105406%_))
                                      (_%g105345105374%_ _%g105346105378%_))))
                              (_%g105345105374%_ _%g105346105378%_))))
                      (_%g105345105374%_ _%g105346105378%_))))
              (let ((_%field105361105439%_ (reverse _%field105359105404%_))
                    (_%slot105362105442%_ (reverse _%slot105360105406%_)))
                ((lambda (_%L105445%_ _%L105447%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L105445%_
                            _%L105447%_)
                           (let ((__tmp112016
                                  (lambda (_%g105462105466%_
                                           _%g105463105469%_
                                           _%g105464105471%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g105463105469%_
                                                            (cons _%g105462105466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g105464105471%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp112016
                              '()
                              _%L105445%_
                              _%L105447%_)))))
                 _%field105361105439%_
                 _%slot105362105442%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop105355105397%_
                                         _%target105352105391%_
                                         '()
                                         '()))
                                      (_%g105345105374%_ _%g105346105378%_)))))
                            (_%g105345105374%_ _%g105346105378%_))))
                    (_%g105345105374%_ _%g105346105378%_)))))
        (_%g105344105474%_ _%$stx105341%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx105479%_)
      (let* ((_%g105483105517%_
              (lambda (_%g105484105513%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105484105513%_)))
             (_%g105482105628%_
              (lambda (_%g105484105521%_)
                (if (gx#stx-pair? _%g105484105521%_)
                    (let ((_%e105491105524%_ (gx#syntax-e _%g105484105521%_)))
                      (let ((_%hd105492105528%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105491105524%_)))
                            (_%tl105493105531%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105491105524%_))))
                        (if (gx#stx-pair? _%tl105493105531%_)
                            (let ((_%e105494105534%_
                                   (gx#syntax-e _%tl105493105531%_)))
                              (let ((_%hd105495105538%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105494105534%_)))
                                    (_%tl105496105541%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105494105534%_))))
                                (if (gx#stx-pair? _%tl105496105541%_)
                                    (let ((_%e105497105544%_
                                           (gx#syntax-e _%tl105496105541%_)))
                                      (let ((_%hd105498105548%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105497105544%_)))
                                            (_%tl105499105551%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105497105544%_))))
                                        (if (gx#stx-pair? _%tl105499105551%_)
                                            (let ((_%e105500105554%_
                                                   (gx#syntax-e
                                                    _%tl105499105551%_)))
                                              (let ((_%hd105501105558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105500105554%_)))
                                                    (_%tl105502105561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105500105554%_))))
                                                (if (gx#stx-pair?
                                                     _%tl105502105561%_)
                                                    (let ((_%e105503105564%_
                                                           (gx#syntax-e
                                                            _%tl105502105561%_)))
                                                      (let ((_%hd105504105568%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e105503105564%_)))
                    (_%tl105505105571%_
                     (let () (declare (not safe)) (##cdr _%e105503105564%_))))
                (if (gx#stx-pair? _%tl105505105571%_)
                    (let ((_%e105506105574%_ (gx#syntax-e _%tl105505105571%_)))
                      (let ((_%hd105507105578%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105506105574%_)))
                            (_%tl105508105581%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105506105574%_))))
                        (if (gx#stx-pair? _%tl105508105581%_)
                            (let ((_%e105509105584%_
                                   (gx#syntax-e _%tl105508105581%_)))
                              (let ((_%hd105510105588%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105509105584%_)))
                                    (_%tl105511105591%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105509105584%_))))
                                (if (gx#stx-null? _%tl105511105591%_)
                                    ((lambda (_%L105594%_
                                              _%L105596%_
                                              _%L105597%_
                                              _%L105598%_
                                              _%L105599%_
                                              _%L105600%_)
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
                                         (cons _%L105600%_ '()))
                                   (cons _%L105599%_ (cons '#f '()))))
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
                               (cons _%L105600%_
                                     (cons 'slot: (cons _%L105599%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L105600%_ '()))
                                         (cons (cons _%L105598%_
                                                     (cons _%L105600%_
                                                           (cons _%L105599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L105600%_ '()))
                                               (cons (cons _%L105597%_
                                                           (cons _%L105600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L105599%_
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
                                           (cons _%L105600%_ '()))
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
                                                     (cons (cons _%L105596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L105600%_
                               (cons _%L105599%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L105594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L105600%_
                                     (cons _%L105599%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd105510105588%_
                                     _%hd105507105578%_
                                     _%hd105504105568%_
                                     _%hd105501105558%_
                                     _%hd105498105548%_
                                     _%hd105495105538%_)
                                    (_%g105483105517%_ _%g105484105521%_))))
                            (_%g105483105517%_ _%g105484105521%_))))
                    (_%g105483105517%_ _%g105484105521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105483105517%_
                                                     _%g105484105521%_))))
                                            (_%g105483105517%_
                                             _%g105484105521%_))))
                                    (_%g105483105517%_ _%g105484105521%_))))
                            (_%g105483105517%_ _%g105484105521%_))))
                    (_%g105483105517%_ _%g105484105521%_)))))
        (_%g105482105628%_ _%$stx105479%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx105632%_)
      (let* ((_%g105636105662%_
              (lambda (_%g105637105658%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105637105658%_)))
             (_%g105635105745%_
              (lambda (_%g105637105666%_)
                (if (gx#stx-pair? _%g105637105666%_)
                    (let ((_%e105642105669%_ (gx#syntax-e _%g105637105666%_)))
                      (let ((_%hd105643105673%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105642105669%_)))
                            (_%tl105644105676%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105642105669%_))))
                        (if (gx#stx-pair? _%tl105644105676%_)
                            (let ((_%e105645105679%_
                                   (gx#syntax-e _%tl105644105676%_)))
                              (let ((_%hd105646105683%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105645105679%_)))
                                    (_%tl105647105686%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105645105679%_))))
                                (if (gx#stx-pair? _%tl105647105686%_)
                                    (let ((_%e105648105689%_
                                           (gx#syntax-e _%tl105647105686%_)))
                                      (let ((_%hd105649105693%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105648105689%_)))
                                            (_%tl105650105696%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105648105689%_))))
                                        (if (gx#stx-pair? _%tl105650105696%_)
                                            (let ((_%e105651105699%_
                                                   (gx#syntax-e
                                                    _%tl105650105696%_)))
                                              (let ((_%hd105652105703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105651105699%_)))
                                                    (_%tl105653105706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105651105699%_))))
                                                (if (gx#stx-pair?
                                                     _%tl105653105706%_)
                                                    (let ((_%e105654105709%_
                                                           (gx#syntax-e
                                                            _%tl105653105706%_)))
                                                      (let ((_%hd105655105713%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e105654105709%_)))
                    (_%tl105656105716%_
                     (let () (declare (not safe)) (##cdr _%e105654105709%_))))
                (if (gx#stx-null? _%tl105656105716%_)
                    ((lambda (_%L105719%_ _%L105721%_ _%L105722%_ _%L105723%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L105723%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L105722%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L105721%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L105719%_
                                     (cons _%L105723%_ (cons _%L105722%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd105655105713%_
                     _%hd105652105703%_
                     _%hd105649105693%_
                     _%hd105646105683%_)
                    (_%g105636105662%_ _%g105637105666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105636105662%_
                                                     _%g105637105666%_))))
                                            (_%g105636105662%_
                                             _%g105637105666%_))))
                                    (_%g105636105662%_ _%g105637105666%_))))
                            (_%g105636105662%_ _%g105637105666%_))))
                    (_%g105636105662%_ _%g105637105666%_)))))
        (_%g105635105745%_ _%$stx105632%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx105749%_)
      (let* ((_%g105753105782%_
              (lambda (_%g105754105778%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105754105778%_)))
             (_%g105752105882%_
              (lambda (_%g105754105786%_)
                (if (gx#stx-pair? _%g105754105786%_)
                    (let ((_%e105757105789%_ (gx#syntax-e _%g105754105786%_)))
                      (let ((_%hd105758105793%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105757105789%_)))
                            (_%tl105759105796%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105757105789%_))))
                        (if (gx#stx-pair/null? _%tl105759105796%_)
                            (let ((_g112017_
                                   (gx#syntax-split-splice
                                    _%tl105759105796%_
                                    '0)))
                              (begin
                                (let ((_g112018_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g112017_)
                                             (##values-length _g112017_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g112018_ 2)))
                                      (error "Context expects 2 values"
                                             _g112018_)))
                                (let ((_%target105760105799%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112017_ 0)))
                                      (_%tl105762105802%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112017_ 1))))
                                  (if (gx#stx-null? _%tl105762105802%_)
                                      (letrec ((_%loop105763105805%_
                                                (lambda (_%hd105761105809%_
                                                         _%name105767105812%_
                                                         _%t105768105814%_)
                                                  (if (gx#stx-pair?
                                                       _%hd105761105809%_)
                                                      (let ((_%e105764105817%_
                                                             (gx#syntax-e
                                                              _%hd105761105809%_)))
                                                        (let ((_%lp-hd105765105821%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e105764105817%_)))
                      (_%lp-tl105766105824%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e105764105817%_))))
                  (if (gx#stx-pair? _%lp-hd105765105821%_)
                      (let ((_%e105771105827%_
                             (gx#syntax-e _%lp-hd105765105821%_)))
                        (let ((_%hd105772105831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e105771105827%_)))
                              (_%tl105773105834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e105771105827%_))))
                          (if (gx#stx-pair? _%tl105773105834%_)
                              (let ((_%e105774105837%_
                                     (gx#syntax-e _%tl105773105834%_)))
                                (let ((_%hd105775105841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e105774105837%_)))
                                      (_%tl105776105844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e105774105837%_))))
                                  (if (gx#stx-null? _%tl105776105844%_)
                                      (_%loop105763105805%_
                                       _%lp-tl105766105824%_
                                       (cons _%hd105775105841%_
                                             _%name105767105812%_)
                                       (cons _%hd105772105831%_
                                             _%t105768105814%_))
                                      (_%g105753105782%_ _%g105754105786%_))))
                              (_%g105753105782%_ _%g105754105786%_))))
                      (_%g105753105782%_ _%g105754105786%_))))
              (let ((_%name105769105847%_ (reverse _%name105767105812%_))
                    (_%t105770105850%_ (reverse _%t105768105814%_)))
                ((lambda (_%L105853%_ _%L105855%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L105853%_
                            _%L105855%_)
                           (let ((__tmp112019
                                  (lambda (_%g105870105874%_
                                           _%g105871105877%_
                                           _%g105872105879%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g105871105877%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g105870105874%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g105872105879%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp112019
                              '()
                              _%L105853%_
                              _%L105855%_)))))
                 _%name105769105847%_
                 _%t105770105850%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop105763105805%_
                                         _%target105760105799%_
                                         '()
                                         '()))
                                      (_%g105753105782%_ _%g105754105786%_)))))
                            (_%g105753105782%_ _%g105754105786%_))))
                    (_%g105753105782%_ _%g105754105786%_)))))
        (_%g105752105882%_ _%$stx105749%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx105887%_)
      (let* ((_%__stx111722111723%_ _%$stx105887%_)
             (_%g105892105951%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx111722111723%_))))
        (let ((_%__kont111725111726%_
               (lambda (_%L106149%_ _%L106151%_ _%L106152%_ _%L106153%_)
                 (cons (gx#datum->syntax '#f 'def)
                       (cons _%L106153%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.system)
                                                     (cons _%L106152%_
                                                           (cons (let ((__tmp112020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g106177106182%_ _%g106178106185%_)
                                  (cons _%g106177106182%_ _%g106178106185%_))))
                           (declare (not safe))
                           (__foldr1 __tmp112020 '() _%L106151%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '__make-system-class)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%L106152%_ '()))
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (let ((__tmp112021
                                            (lambda (_%g106179106188%_
                                                     _%g106180106191%_)
                                              (cons _%g106179106188%_
                                                    _%g106180106191%_))))
                                       (declare (not safe))
                                       (__foldr1 __tmp112021 '() _%L106151%_)))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L106149%_ '()))
                                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))))
              (_%__kont111729111730%_
               (lambda (_%L106028%_ _%L106030%_ _%L106031%_)
                 (cons (gx#datum->syntax '#f 'defsystem-class)
                       (cons _%L106031%_
                             (cons _%L106030%_
                                   (cons (let ((__tmp112022
                                                (lambda (_%g106053106056%_
                                                         _%g106054106059%_)
                                                  (cons _%g106053106056%_
                                                        _%g106054106059%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp112022
                                            '()
                                            _%L106028%_))
                                         (cons '() '()))))))))
          (let* ((_%__match111797111798%_
                  (lambda (_%e105925105958%_
                           _%hd105926105962%_
                           _%tl105927105965%_
                           _%e105928105968%_
                           _%hd105929105972%_
                           _%tl105930105975%_
                           _%e105931105978%_
                           _%hd105932105982%_
                           _%tl105933105985%_
                           _%e105934105988%_
                           _%hd105935105992%_
                           _%tl105936105995%_
                           _%__splice111731111732%_
                           _%target105937105998%_
                           _%tl105939106001%_)
                    (letrec ((_%loop105940106004%_
                              (lambda (_%hd105938106008%_
                                       _%super105944106011%_)
                                (if (gx#stx-pair? _%hd105938106008%_)
                                    (let ((_%e105941106014%_
                                           (gx#syntax-e _%hd105938106008%_)))
                                      (let ((_%lp-tl105943106021%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105941106014%_)))
                                            (_%lp-hd105942106018%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105941106014%_))))
                                        (_%loop105940106004%_
                                         _%lp-tl105943106021%_
                                         (cons _%lp-hd105942106018%_
                                               _%super105944106011%_))))
                                    (let ((_%super105945106024%_
                                           (reverse _%super105944106011%_)))
                                      (if (gx#stx-null? _%tl105936105995%_)
                                          (_%__kont111729111730%_
                                           _%super105945106024%_
                                           _%hd105932105982%_
                                           _%hd105929105972%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g105892105951%_))))))))
                      (_%loop105940106004%_ _%target105937105998%_ '()))))
                 (_%__match111765111766%_
                  (lambda (_%e105898106069%_
                           _%hd105899106073%_
                           _%tl105900106076%_
                           _%e105901106079%_
                           _%hd105902106083%_
                           _%tl105903106086%_
                           _%e105904106089%_
                           _%hd105905106093%_
                           _%tl105906106096%_
                           _%e105907106099%_
                           _%hd105908106103%_
                           _%tl105909106106%_
                           _%__splice111727111728%_
                           _%target105910106109%_
                           _%tl105912106112%_)
                    (letrec ((_%loop105913106115%_
                              (lambda (_%hd105911106119%_
                                       _%super105917106122%_)
                                (if (gx#stx-pair? _%hd105911106119%_)
                                    (let ((_%e105914106125%_
                                           (gx#syntax-e _%hd105911106119%_)))
                                      (let ((_%lp-tl105916106132%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105914106125%_)))
                                            (_%lp-hd105915106129%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105914106125%_))))
                                        (_%loop105913106115%_
                                         _%lp-tl105916106132%_
                                         (cons _%lp-hd105915106129%_
                                               _%super105917106122%_))))
                                    (let ((_%super105918106135%_
                                           (reverse _%super105917106122%_)))
                                      (if (gx#stx-pair? _%tl105909106106%_)
                                          (let ((_%e105919106139%_
                                                 (gx#syntax-e
                                                  _%tl105909106106%_)))
                                            (let ((_%tl105921106146%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e105919106139%_)))
                                                  (_%hd105920106143%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e105919106139%_))))
                                              (if (gx#stx-null?
                                                   _%tl105921106146%_)
                                                  (_%__kont111725111726%_
                                                   _%hd105920106143%_
                                                   _%super105918106135%_
                                                   _%hd105905106093%_
                                                   _%hd105902106083%_)
                                                  (_%__match111797111798%_
                                                   _%e105898106069%_
                                                   _%hd105899106073%_
                                                   _%tl105900106076%_
                                                   _%e105901106079%_
                                                   _%hd105902106083%_
                                                   _%tl105903106086%_
                                                   _%e105904106089%_
                                                   _%hd105905106093%_
                                                   _%tl105906106096%_
                                                   _%e105907106099%_
                                                   _%hd105908106103%_
                                                   _%tl105909106106%_
                                                   _%__splice111727111728%_
                                                   _%target105910106109%_
                                                   _%tl105912106112%_))))
                                          (_%__match111797111798%_
                                           _%e105898106069%_
                                           _%hd105899106073%_
                                           _%tl105900106076%_
                                           _%e105901106079%_
                                           _%hd105902106083%_
                                           _%tl105903106086%_
                                           _%e105904106089%_
                                           _%hd105905106093%_
                                           _%tl105906106096%_
                                           _%e105907106099%_
                                           _%hd105908106103%_
                                           _%tl105909106106%_
                                           _%__splice111727111728%_
                                           _%target105910106109%_
                                           _%tl105912106112%_)))))))
                      (_%loop105913106115%_ _%target105910106109%_ '())))))
            (if (gx#stx-pair? _%__stx111722111723%_)
                (let ((_%e105898106069%_ (gx#syntax-e _%__stx111722111723%_)))
                  (let ((_%tl105900106076%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e105898106069%_)))
                        (_%hd105899106073%_
                         (let ()
                           (declare (not safe))
                           (##car _%e105898106069%_))))
                    (if (gx#stx-pair? _%tl105900106076%_)
                        (let ((_%e105901106079%_
                               (gx#syntax-e _%tl105900106076%_)))
                          (let ((_%tl105903106086%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e105901106079%_)))
                                (_%hd105902106083%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e105901106079%_))))
                            (if (gx#stx-pair? _%tl105903106086%_)
                                (let ((_%e105904106089%_
                                       (gx#syntax-e _%tl105903106086%_)))
                                  (let ((_%tl105906106096%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e105904106089%_)))
                                        (_%hd105905106093%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e105904106089%_))))
                                    (if (gx#stx-pair? _%tl105906106096%_)
                                        (let ((_%e105907106099%_
                                               (gx#syntax-e
                                                _%tl105906106096%_)))
                                          (let ((_%tl105909106106%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e105907106099%_)))
                                                (_%hd105908106103%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e105907106099%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd105908106103%_)
                                                (let ((_%__splice111727111728%_
                                                       (gx#syntax-split-splice->vector
                                                        _%hd105908106103%_
                                                        '0)))
                                                  (let ((_%tl105912106112%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice111727111728%_
                                                            '1)))
                                                        (_%target105910106109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice111727111728%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl105912106112%_)
                                                        (_%__match111765111766%_
                                                         _%e105898106069%_
                                                         _%hd105899106073%_
                                                         _%tl105900106076%_
                                                         _%e105901106079%_
                                                         _%hd105902106083%_
                                                         _%tl105903106086%_
                                                         _%e105904106089%_
                                                         _%hd105905106093%_
                                                         _%tl105906106096%_
                                                         _%e105907106099%_
                                                         _%hd105908106103%_
                                                         _%tl105909106106%_
                                                         _%__splice111727111728%_
                                                         _%target105910106109%_
                                                         _%tl105912106112%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g105892105951%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g105892105951%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g105892105951%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g105892105951%_)))))
                        (let () (declare (not safe)) (_%g105892105951%_)))))
                (let () (declare (not safe)) (_%g105892105951%_))))))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx106200%_)
      (let* ((_%__stx111800111801%_ _%$stx106200%_)
             (_%g106205106264%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx111800111801%_))))
        (let ((_%__kont111803111804%_
               (lambda (_%L106462%_ _%L106464%_ _%L106465%_ _%L106466%_)
                 (cons (gx#datum->syntax '#f 'def)
                       (cons _%L106466%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.system)
                                                     (cons _%L106466%_
                                                           (cons (let ((__tmp112023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g106490106493%_ _%g106491106496%_)
                                  (cons _%g106490106493%_ _%g106491106496%_))))
                           (declare (not safe))
                           (__foldr1 __tmp112023 '() _%L106465%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '__shadow-class)
                                                           (cons _%L106464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L106462%_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))))
              (_%__kont111807111808%_
               (lambda (_%L106341%_ _%L106343%_ _%L106344%_)
                 (cons (gx#datum->syntax '#f 'defshadow-class)
                       (cons _%L106344%_
                             (cons (let ((__tmp112024
                                          (lambda (_%g106366106369%_
                                                   _%g106367106372%_)
                                            (cons _%g106366106369%_
                                                  _%g106367106372%_))))
                                     (declare (not safe))
                                     (__foldr1 __tmp112024 '() _%L106343%_))
                                   (cons _%L106341%_ (cons '() '()))))))))
          (let* ((_%__match111863111864%_
                  (lambda (_%e106238106271%_
                           _%hd106239106275%_
                           _%tl106240106278%_
                           _%e106241106281%_
                           _%hd106242106285%_
                           _%tl106243106288%_
                           _%e106244106291%_
                           _%hd106245106295%_
                           _%tl106246106298%_
                           _%__splice111809111810%_
                           _%target106247106301%_
                           _%tl106249106304%_)
                    (letrec ((_%loop106250106307%_
                              (lambda (_%hd106248106311%_
                                       _%super106254106314%_)
                                (if (gx#stx-pair? _%hd106248106311%_)
                                    (let ((_%e106251106317%_
                                           (gx#syntax-e _%hd106248106311%_)))
                                      (let ((_%lp-tl106253106324%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106251106317%_)))
                                            (_%lp-hd106252106321%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106251106317%_))))
                                        (_%loop106250106307%_
                                         _%lp-tl106253106324%_
                                         (cons _%lp-hd106252106321%_
                                               _%super106254106314%_))))
                                    (let ((_%super106255106327%_
                                           (reverse _%super106254106314%_)))
                                      (if (gx#stx-pair? _%tl106246106298%_)
                                          (let ((_%e106256106331%_
                                                 (gx#syntax-e
                                                  _%tl106246106298%_)))
                                            (let ((_%tl106258106338%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e106256106331%_)))
                                                  (_%hd106257106335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e106256106331%_))))
                                              (if (gx#stx-null?
                                                   _%tl106258106338%_)
                                                  (_%__kont111807111808%_
                                                   _%hd106257106335%_
                                                   _%super106255106327%_
                                                   _%hd106242106285%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g106205106264%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g106205106264%_))))))))
                      (_%loop106250106307%_ _%target106247106301%_ '()))))
                 (_%__match111837111838%_
                  (lambda (_%e106211106382%_
                           _%hd106212106386%_
                           _%tl106213106389%_
                           _%e106214106392%_
                           _%hd106215106396%_
                           _%tl106216106399%_
                           _%e106217106402%_
                           _%hd106218106406%_
                           _%tl106219106409%_
                           _%__splice111805111806%_
                           _%target106220106412%_
                           _%tl106222106415%_)
                    (letrec ((_%loop106223106418%_
                              (lambda (_%hd106221106422%_
                                       _%super106227106425%_)
                                (if (gx#stx-pair? _%hd106221106422%_)
                                    (let ((_%e106224106428%_
                                           (gx#syntax-e _%hd106221106422%_)))
                                      (let ((_%lp-tl106226106435%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106224106428%_)))
                                            (_%lp-hd106225106432%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106224106428%_))))
                                        (_%loop106223106418%_
                                         _%lp-tl106226106435%_
                                         (cons _%lp-hd106225106432%_
                                               _%super106227106425%_))))
                                    (let ((_%super106228106438%_
                                           (reverse _%super106227106425%_)))
                                      (if (gx#stx-pair? _%tl106219106409%_)
                                          (let ((_%e106229106442%_
                                                 (gx#syntax-e
                                                  _%tl106219106409%_)))
                                            (let ((_%tl106231106449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e106229106442%_)))
                                                  (_%hd106230106446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e106229106442%_))))
                                              (if (gx#stx-pair?
                                                   _%tl106231106449%_)
                                                  (let ((_%e106232106452%_
                                                         (gx#syntax-e
                                                          _%tl106231106449%_)))
                                                    (let ((_%tl106234106459%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e106232106452%_)))
                                                          (_%hd106233106456%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e106232106452%_))))
                                                      (if (gx#stx-null?
                                                           _%tl106234106459%_)
                                                          (_%__kont111803111804%_
                                                           _%hd106233106456%_
                                                           _%hd106230106446%_
                                                           _%super106228106438%_
                                                           _%hd106215106396%_)
                                                          (_%__match111863111864%_
                                                           _%e106211106382%_
                                                           _%hd106212106386%_
                                                           _%tl106213106389%_
                                                           _%e106214106392%_
                                                           _%hd106215106396%_
                                                           _%tl106216106399%_
                                                           _%e106217106402%_
                                                           _%hd106218106406%_
                                                           _%tl106219106409%_
                                                           _%__splice111805111806%_
                                                           _%target106220106412%_
                                                           _%tl106222106415%_))))
                                                  (_%__match111863111864%_
                                                   _%e106211106382%_
                                                   _%hd106212106386%_
                                                   _%tl106213106389%_
                                                   _%e106214106392%_
                                                   _%hd106215106396%_
                                                   _%tl106216106399%_
                                                   _%e106217106402%_
                                                   _%hd106218106406%_
                                                   _%tl106219106409%_
                                                   _%__splice111805111806%_
                                                   _%target106220106412%_
                                                   _%tl106222106415%_))))
                                          (_%__match111863111864%_
                                           _%e106211106382%_
                                           _%hd106212106386%_
                                           _%tl106213106389%_
                                           _%e106214106392%_
                                           _%hd106215106396%_
                                           _%tl106216106399%_
                                           _%e106217106402%_
                                           _%hd106218106406%_
                                           _%tl106219106409%_
                                           _%__splice111805111806%_
                                           _%target106220106412%_
                                           _%tl106222106415%_)))))))
                      (_%loop106223106418%_ _%target106220106412%_ '())))))
            (if (gx#stx-pair? _%__stx111800111801%_)
                (let ((_%e106211106382%_ (gx#syntax-e _%__stx111800111801%_)))
                  (let ((_%tl106213106389%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e106211106382%_)))
                        (_%hd106212106386%_
                         (let ()
                           (declare (not safe))
                           (##car _%e106211106382%_))))
                    (if (gx#stx-pair? _%tl106213106389%_)
                        (let ((_%e106214106392%_
                               (gx#syntax-e _%tl106213106389%_)))
                          (let ((_%tl106216106399%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e106214106392%_)))
                                (_%hd106215106396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e106214106392%_))))
                            (if (gx#stx-pair? _%tl106216106399%_)
                                (let ((_%e106217106402%_
                                       (gx#syntax-e _%tl106216106399%_)))
                                  (let ((_%tl106219106409%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e106217106402%_)))
                                        (_%hd106218106406%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e106217106402%_))))
                                    (if (gx#stx-pair/null? _%hd106218106406%_)
                                        (let ((_%__splice111805111806%_
                                               (gx#syntax-split-splice->vector
                                                _%hd106218106406%_
                                                '0)))
                                          (let ((_%tl106222106415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice111805111806%_
                                                    '1)))
                                                (_%target106220106412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice111805111806%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%tl106222106415%_)
                                                (_%__match111837111838%_
                                                 _%e106211106382%_
                                                 _%hd106212106386%_
                                                 _%tl106213106389%_
                                                 _%e106214106392%_
                                                 _%hd106215106396%_
                                                 _%tl106216106399%_
                                                 _%e106217106402%_
                                                 _%hd106218106406%_
                                                 _%tl106219106409%_
                                                 _%__splice111805111806%_
                                                 _%target106220106412%_
                                                 _%tl106222106415%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g106205106264%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g106205106264%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g106205106264%_)))))
                        (let () (declare (not safe)) (_%g106205106264%_)))))
                (let () (declare (not safe)) (_%g106205106264%_)))))))))
