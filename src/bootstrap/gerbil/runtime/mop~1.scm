(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx95839%_)
      (let* ((_%__stx102397102398%_ _%$stx95839%_)
             (_%g9584495873%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx102397102398%_))))
        (let ((_%__kont102400102401%_
               (lambda (_%L95966%_ _%L95968%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L95968%_ (cons _%L95966%_ '())))
                             (cons _%L95966%_ '())))))
              (_%__kont102402102403%_
               (lambda (_%L95910%_ _%L95912%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L95910%_ (cons _%L95910%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L95912%_
                                                           (cons _%L95910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L95910%_ '())))
                                   '()))))))
          (let ((_%__match102424102425%_
                 (lambda (_%e9584895936%_
                          _%hd9584995940%_
                          _%tl9585095943%_
                          _%e9585195946%_
                          _%hd9585295950%_
                          _%tl9585395953%_
                          _%e9585495956%_
                          _%hd9585595960%_
                          _%tl9585695963%_)
                   (let ((_%L95966%_ _%hd9585595960%_)
                         (_%L95968%_ _%hd9585295950%_))
                     (if (or (gx#identifier? _%L95966%_)
                             (gx#stx-fixnum? _%L95966%_))
                         (_%__kont102400102401%_ _%L95966%_ _%L95968%_)
                         (_%__kont102402102403%_
                          _%hd9585595960%_
                          _%hd9585295950%_))))))
            (if (gx#stx-pair? _%__stx102397102398%_)
                (let ((_%e9584895936%_ (gx#syntax-e _%__stx102397102398%_)))
                  (let ((_%tl9585095943%_
                         (let () (declare (not safe)) (##cdr _%e9584895936%_)))
                        (_%hd9584995940%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9584895936%_))))
                    (if (gx#stx-pair? _%tl9585095943%_)
                        (let ((_%e9585195946%_ (gx#syntax-e _%tl9585095943%_)))
                          (let ((_%tl9585395953%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9585195946%_)))
                                (_%hd9585295950%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9585195946%_))))
                            (if (gx#stx-pair? _%tl9585395953%_)
                                (let ((_%e9585495956%_
                                       (gx#syntax-e _%tl9585395953%_)))
                                  (let ((_%tl9585695963%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9585495956%_)))
                                        (_%hd9585595960%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9585495956%_))))
                                    (if (gx#stx-null? _%tl9585695963%_)
                                        (_%__match102424102425%_
                                         _%e9584895936%_
                                         _%hd9584995940%_
                                         _%tl9585095943%_
                                         _%e9585195946%_
                                         _%hd9585295950%_
                                         _%tl9585395953%_
                                         _%e9585495956%_
                                         _%hd9585595960%_
                                         _%tl9585695963%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9584495873%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9584495873%_)))))
                        (let () (declare (not safe)) (_%g9584495873%_)))))
                (let () (declare (not safe)) (_%g9584495873%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx95991%_)
      (let* ((_%__stx102447102448%_ _%$stx95991%_)
             (_%g9599696025%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx102447102448%_))))
        (let ((_%__kont102450102451%_
               (lambda (_%L96117%_ _%L96119%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L96119%_ (cons _%L96117%_ '())))
                             (cons '0 '())))))
              (_%__kont102452102453%_
               (lambda (_%L96062%_ _%L96064%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L96062%_ (cons _%L96062%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L96064%_
                                                           (cons _%L96062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match102474102475%_
                 (lambda (_%e9600096087%_
                          _%hd9600196091%_
                          _%tl9600296094%_
                          _%e9600396097%_
                          _%hd9600496101%_
                          _%tl9600596104%_
                          _%e9600696107%_
                          _%hd9600796111%_
                          _%tl9600896114%_)
                   (let ((_%L96117%_ _%hd9600796111%_)
                         (_%L96119%_ _%hd9600496101%_))
                     (if (or (gx#identifier? _%L96117%_)
                             (gx#stx-fixnum? _%L96117%_))
                         (_%__kont102450102451%_ _%L96117%_ _%L96119%_)
                         (_%__kont102452102453%_
                          _%hd9600796111%_
                          _%hd9600496101%_))))))
            (if (gx#stx-pair? _%__stx102447102448%_)
                (let ((_%e9600096087%_ (gx#syntax-e _%__stx102447102448%_)))
                  (let ((_%tl9600296094%_
                         (let () (declare (not safe)) (##cdr _%e9600096087%_)))
                        (_%hd9600196091%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9600096087%_))))
                    (if (gx#stx-pair? _%tl9600296094%_)
                        (let ((_%e9600396097%_ (gx#syntax-e _%tl9600296094%_)))
                          (let ((_%tl9600596104%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9600396097%_)))
                                (_%hd9600496101%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9600396097%_))))
                            (if (gx#stx-pair? _%tl9600596104%_)
                                (let ((_%e9600696107%_
                                       (gx#syntax-e _%tl9600596104%_)))
                                  (let ((_%tl9600896114%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9600696107%_)))
                                        (_%hd9600796111%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9600696107%_))))
                                    (if (gx#stx-null? _%tl9600896114%_)
                                        (_%__match102474102475%_
                                         _%e9600096087%_
                                         _%hd9600196091%_
                                         _%tl9600296094%_
                                         _%e9600396097%_
                                         _%hd9600496101%_
                                         _%tl9600596104%_
                                         _%e9600696107%_
                                         _%hd9600796111%_
                                         _%tl9600896114%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9599696025%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9599696025%_)))))
                        (let () (declare (not safe)) (_%g9599696025%_)))))
                (let () (declare (not safe)) (_%g9599696025%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx96142%_)
      (let* ((_%g9614596166%_
              (lambda (_%g9614696162%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9614696162%_)))
             (_%g9614496394%_
              (lambda (_%g9614696170%_)
                (if (gx#stx-pair? _%g9614696170%_)
                    (let ((_%e9614996173%_ (gx#syntax-e _%g9614696170%_)))
                      (let ((_%hd9615096177%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9614996173%_)))
                            (_%tl9615196180%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9614996173%_))))
                        (if (gx#stx-pair? _%tl9615196180%_)
                            (let ((_%e9615296183%_
                                   (gx#syntax-e _%tl9615196180%_)))
                              (let ((_%hd9615396187%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9615296183%_)))
                                    (_%tl9615496190%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9615296183%_))))
                                (if (gx#stx-pair? _%hd9615396187%_)
                                    (let ((_%e9615596193%_
                                           (gx#syntax-e _%hd9615396187%_)))
                                      (let ((_%hd9615696197%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9615596193%_)))
                                            (_%tl9615796200%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9615596193%_))))
                                        (if (gx#stx-pair? _%tl9615796200%_)
                                            (let ((_%e9615896203%_
                                                   (gx#syntax-e
                                                    _%tl9615796200%_)))
                                              (let ((_%hd9615996207%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9615896203%_)))
                                                    (_%tl9616096210%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9615896203%_))))
                                                (if (gx#stx-null?
                                                     _%tl9616096210%_)
                                                    (if (gx#stx-null?
                                                         _%tl9615496190%_)
                                                        ((lambda (_%L96213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L96215%_)
                   (let* ((_%g9623396241%_
                           (lambda (_%g9623496237%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9623496237%_)))
                          (_%g9623296390%_
                           (lambda (_%g9623496245%_)
                             ((lambda (_%L96248%_)
                                (let* ((_%g9626096268%_
                                        (lambda (_%g9626196264%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9626196264%_)))
                                       (_%g9625996386%_
                                        (lambda (_%g9626196272%_)
                                          ((lambda (_%L96275%_)
                                             (let* ((_%g9628896296%_
                                                     (lambda (_%g9628996292%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9628996292%_)))
                                                    (_%g9628796382%_
                                                     (lambda (_%g9628996300%_)
                                                       ((lambda (_%L96303%_)
                                                          (let* ((_%g9631696324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9631796320%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9631796320%_)))
                         (_%g9631596378%_
                          (lambda (_%g9631796328%_)
                            ((lambda (_%L96331%_)
                               (let* ((_%g9634496352%_
                                       (lambda (_%g9634596348%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9634596348%_)))
                                      (_%g9634396374%_
                                       (lambda (_%g9634596356%_)
                                         ((lambda (_%L96359%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L96275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L96248%_
                                                          (cons _%L96215%_
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
                                          (cons _%L96213%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L96215%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L96303%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L96248%_
                                                                (cons _%L96215%_
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
                                                (cons _%L96213%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L96215%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L96331%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L96248%_ (cons _%L96215%_ (cons '#t '()))))
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
                                                            (cons _%L96213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L96215%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L96359%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L96248%_
                                    (cons _%L96215%_ (cons '#f '()))))
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
                          (cons _%L96213%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L96215%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9634596356%_))))
                                 (_%g9634396374%_
                                  (gx#stx-identifier
                                   _%L96215%_
                                   '"&"
                                   _%L96331%_))))
                             _%g9631796328%_))))
                    (_%g9631596378%_
                     (gx#stx-identifier _%L96215%_ _%L96275%_ '"-set!"))))
                _%g9628996300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9628796382%_
                                                (gx#stx-identifier
                                                 _%L96215%_
                                                 '"&"
                                                 _%L96275%_))))
                                           _%g9626196272%_))))
                                  (_%g9625996386%_
                                   (gx#stx-identifier
                                    _%L96215%_
                                    '"class-type-"
                                    _%L96215%_))))
                              _%g9623496245%_))))
                     (_%g9623296390%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9615996207%_
                 _%hd9615696197%_)
                (_%g9614596166%_ _%g9614696170%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9614596166%_
                                                     _%g9614696170%_))))
                                            (_%g9614596166%_
                                             _%g9614696170%_))))
                                    (_%g9614596166%_ _%g9614696170%_))))
                            (_%g9614596166%_ _%g9614696170%_))))
                    (_%g9614596166%_ _%g9614696170%_)))))
        (_%g9614496394%_ _%stx96142%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx96398%_)
      (let* ((_%g9640296431%_
              (lambda (_%g9640396427%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9640396427%_)))
             (_%g9640196531%_
              (lambda (_%g9640396435%_)
                (if (gx#stx-pair? _%g9640396435%_)
                    (let ((_%e9640696438%_ (gx#syntax-e _%g9640396435%_)))
                      (let ((_%hd9640796442%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9640696438%_)))
                            (_%tl9640896445%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9640696438%_))))
                        (if (gx#stx-pair/null? _%tl9640896445%_)
                            (let ((_g102684_
                                   (gx#syntax-split-splice
                                    _%tl9640896445%_
                                    '0)))
                              (begin
                                (let ((_g102685_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102684_)
                                             (##values-length _g102684_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102685_ 2)))
                                      (error "Context expects 2 values"
                                             _g102685_)))
                                (let ((_%target9640996448%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102684_ 0)))
                                      (_%tl9641196451%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102684_ 1))))
                                  (if (gx#stx-null? _%tl9641196451%_)
                                      (letrec ((_%loop9641296454%_
                                                (lambda (_%hd9641096458%_
                                                         _%field9641696461%_
                                                         _%slot9641796463%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9641096458%_)
                                                      (let ((_%e9641396466%_
                                                             (gx#syntax-e
                                                              _%hd9641096458%_)))
                                                        (let ((_%lp-hd9641496470%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9641396466%_)))
                      (_%lp-tl9641596473%_
                       (let () (declare (not safe)) (##cdr _%e9641396466%_))))
                  (if (gx#stx-pair? _%lp-hd9641496470%_)
                      (let ((_%e9642096476%_
                             (gx#syntax-e _%lp-hd9641496470%_)))
                        (let ((_%hd9642196480%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9642096476%_)))
                              (_%tl9642296483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9642096476%_))))
                          (if (gx#stx-pair? _%tl9642296483%_)
                              (let ((_%e9642396486%_
                                     (gx#syntax-e _%tl9642296483%_)))
                                (let ((_%hd9642496490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9642396486%_)))
                                      (_%tl9642596493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9642396486%_))))
                                  (if (gx#stx-null? _%tl9642596493%_)
                                      (_%loop9641296454%_
                                       _%lp-tl9641596473%_
                                       (cons _%hd9642496490%_
                                             _%field9641696461%_)
                                       (cons _%hd9642196480%_
                                             _%slot9641796463%_))
                                      (_%g9640296431%_ _%g9640396435%_))))
                              (_%g9640296431%_ _%g9640396435%_))))
                      (_%g9640296431%_ _%g9640396435%_))))
              (let ((_%field9641896496%_ (reverse _%field9641696461%_))
                    (_%slot9641996499%_ (reverse _%slot9641796463%_)))
                ((lambda (_%L96502%_ _%L96504%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96502%_
                            _%L96504%_)
                           (let ((__tmp102686
                                  (lambda (_%g9651996523%_
                                           _%g9652096526%_
                                           _%g9652196528%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9652096526%_
                                                            (cons _%g9651996523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9652196528%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp102686
                              '()
                              _%L96502%_
                              _%L96504%_)))))
                 _%field9641896496%_
                 _%slot9641996499%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9641296454%_
                                         _%target9640996448%_
                                         '()
                                         '()))
                                      (_%g9640296431%_ _%g9640396435%_)))))
                            (_%g9640296431%_ _%g9640396435%_))))
                    (_%g9640296431%_ _%g9640396435%_)))))
        (_%g9640196531%_ _%$stx96398%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx96536%_)
      (let* ((_%g9654096574%_
              (lambda (_%g9654196570%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9654196570%_)))
             (_%g9653996685%_
              (lambda (_%g9654196578%_)
                (if (gx#stx-pair? _%g9654196578%_)
                    (let ((_%e9654896581%_ (gx#syntax-e _%g9654196578%_)))
                      (let ((_%hd9654996585%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9654896581%_)))
                            (_%tl9655096588%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9654896581%_))))
                        (if (gx#stx-pair? _%tl9655096588%_)
                            (let ((_%e9655196591%_
                                   (gx#syntax-e _%tl9655096588%_)))
                              (let ((_%hd9655296595%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9655196591%_)))
                                    (_%tl9655396598%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9655196591%_))))
                                (if (gx#stx-pair? _%tl9655396598%_)
                                    (let ((_%e9655496601%_
                                           (gx#syntax-e _%tl9655396598%_)))
                                      (let ((_%hd9655596605%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9655496601%_)))
                                            (_%tl9655696608%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9655496601%_))))
                                        (if (gx#stx-pair? _%tl9655696608%_)
                                            (let ((_%e9655796611%_
                                                   (gx#syntax-e
                                                    _%tl9655696608%_)))
                                              (let ((_%hd9655896615%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9655796611%_)))
                                                    (_%tl9655996618%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9655796611%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9655996618%_)
                                                    (let ((_%e9656096621%_
                                                           (gx#syntax-e
                                                            _%tl9655996618%_)))
                                                      (let ((_%hd9656196625%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9656096621%_)))
                    (_%tl9656296628%_
                     (let () (declare (not safe)) (##cdr _%e9656096621%_))))
                (if (gx#stx-pair? _%tl9656296628%_)
                    (let ((_%e9656396631%_ (gx#syntax-e _%tl9656296628%_)))
                      (let ((_%hd9656496635%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9656396631%_)))
                            (_%tl9656596638%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9656396631%_))))
                        (if (gx#stx-pair? _%tl9656596638%_)
                            (let ((_%e9656696641%_
                                   (gx#syntax-e _%tl9656596638%_)))
                              (let ((_%hd9656796645%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9656696641%_)))
                                    (_%tl9656896648%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9656696641%_))))
                                (if (gx#stx-null? _%tl9656896648%_)
                                    ((lambda (_%L96651%_
                                              _%L96653%_
                                              _%L96654%_
                                              _%L96655%_
                                              _%L96656%_
                                              _%L96657%_)
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
                                         (cons _%L96657%_ '()))
                                   (cons _%L96656%_ (cons '#f '()))))
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
                               (cons _%L96657%_
                                     (cons 'slot: (cons _%L96656%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L96657%_ '()))
                                         (cons (cons _%L96655%_
                                                     (cons _%L96657%_
                                                           (cons _%L96656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L96657%_ '()))
                                               (cons (cons _%L96654%_
                                                           (cons _%L96657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L96656%_
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
                                           (cons _%L96657%_ '()))
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
                                                     (cons (cons _%L96653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L96657%_
                               (cons _%L96656%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L96651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L96657%_
                                     (cons _%L96656%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9656796645%_
                                     _%hd9656496635%_
                                     _%hd9656196625%_
                                     _%hd9655896615%_
                                     _%hd9655596605%_
                                     _%hd9655296595%_)
                                    (_%g9654096574%_ _%g9654196578%_))))
                            (_%g9654096574%_ _%g9654196578%_))))
                    (_%g9654096574%_ _%g9654196578%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9654096574%_
                                                     _%g9654196578%_))))
                                            (_%g9654096574%_
                                             _%g9654196578%_))))
                                    (_%g9654096574%_ _%g9654196578%_))))
                            (_%g9654096574%_ _%g9654196578%_))))
                    (_%g9654096574%_ _%g9654196578%_)))))
        (_%g9653996685%_ _%$stx96536%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx96689%_)
      (let* ((_%g9669396719%_
              (lambda (_%g9669496715%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9669496715%_)))
             (_%g9669296802%_
              (lambda (_%g9669496723%_)
                (if (gx#stx-pair? _%g9669496723%_)
                    (let ((_%e9669996726%_ (gx#syntax-e _%g9669496723%_)))
                      (let ((_%hd9670096730%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9669996726%_)))
                            (_%tl9670196733%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9669996726%_))))
                        (if (gx#stx-pair? _%tl9670196733%_)
                            (let ((_%e9670296736%_
                                   (gx#syntax-e _%tl9670196733%_)))
                              (let ((_%hd9670396740%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9670296736%_)))
                                    (_%tl9670496743%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9670296736%_))))
                                (if (gx#stx-pair? _%tl9670496743%_)
                                    (let ((_%e9670596746%_
                                           (gx#syntax-e _%tl9670496743%_)))
                                      (let ((_%hd9670696750%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9670596746%_)))
                                            (_%tl9670796753%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9670596746%_))))
                                        (if (gx#stx-pair? _%tl9670796753%_)
                                            (let ((_%e9670896756%_
                                                   (gx#syntax-e
                                                    _%tl9670796753%_)))
                                              (let ((_%hd9670996760%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9670896756%_)))
                                                    (_%tl9671096763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9670896756%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9671096763%_)
                                                    (let ((_%e9671196766%_
                                                           (gx#syntax-e
                                                            _%tl9671096763%_)))
                                                      (let ((_%hd9671296770%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9671196766%_)))
                    (_%tl9671396773%_
                     (let () (declare (not safe)) (##cdr _%e9671196766%_))))
                (if (gx#stx-null? _%tl9671396773%_)
                    ((lambda (_%L96776%_ _%L96778%_ _%L96779%_ _%L96780%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L96780%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L96779%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L96778%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L96776%_
                                     (cons _%L96780%_ (cons _%L96779%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9671296770%_
                     _%hd9670996760%_
                     _%hd9670696750%_
                     _%hd9670396740%_)
                    (_%g9669396719%_ _%g9669496723%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9669396719%_
                                                     _%g9669496723%_))))
                                            (_%g9669396719%_
                                             _%g9669496723%_))))
                                    (_%g9669396719%_ _%g9669496723%_))))
                            (_%g9669396719%_ _%g9669496723%_))))
                    (_%g9669396719%_ _%g9669496723%_)))))
        (_%g9669296802%_ _%$stx96689%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx96806%_)
      (let* ((_%g9681096839%_
              (lambda (_%g9681196835%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9681196835%_)))
             (_%g9680996939%_
              (lambda (_%g9681196843%_)
                (if (gx#stx-pair? _%g9681196843%_)
                    (let ((_%e9681496846%_ (gx#syntax-e _%g9681196843%_)))
                      (let ((_%hd9681596850%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9681496846%_)))
                            (_%tl9681696853%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9681496846%_))))
                        (if (gx#stx-pair/null? _%tl9681696853%_)
                            (let ((_g102687_
                                   (gx#syntax-split-splice
                                    _%tl9681696853%_
                                    '0)))
                              (begin
                                (let ((_g102688_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102687_)
                                             (##values-length _g102687_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102688_ 2)))
                                      (error "Context expects 2 values"
                                             _g102688_)))
                                (let ((_%target9681796856%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102687_ 0)))
                                      (_%tl9681996859%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102687_ 1))))
                                  (if (gx#stx-null? _%tl9681996859%_)
                                      (letrec ((_%loop9682096862%_
                                                (lambda (_%hd9681896866%_
                                                         _%name9682496869%_
                                                         _%t9682596871%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9681896866%_)
                                                      (let ((_%e9682196874%_
                                                             (gx#syntax-e
                                                              _%hd9681896866%_)))
                                                        (let ((_%lp-hd9682296878%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9682196874%_)))
                      (_%lp-tl9682396881%_
                       (let () (declare (not safe)) (##cdr _%e9682196874%_))))
                  (if (gx#stx-pair? _%lp-hd9682296878%_)
                      (let ((_%e9682896884%_
                             (gx#syntax-e _%lp-hd9682296878%_)))
                        (let ((_%hd9682996888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9682896884%_)))
                              (_%tl9683096891%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9682896884%_))))
                          (if (gx#stx-pair? _%tl9683096891%_)
                              (let ((_%e9683196894%_
                                     (gx#syntax-e _%tl9683096891%_)))
                                (let ((_%hd9683296898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9683196894%_)))
                                      (_%tl9683396901%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9683196894%_))))
                                  (if (gx#stx-null? _%tl9683396901%_)
                                      (_%loop9682096862%_
                                       _%lp-tl9682396881%_
                                       (cons _%hd9683296898%_
                                             _%name9682496869%_)
                                       (cons _%hd9682996888%_ _%t9682596871%_))
                                      (_%g9681096839%_ _%g9681196843%_))))
                              (_%g9681096839%_ _%g9681196843%_))))
                      (_%g9681096839%_ _%g9681196843%_))))
              (let ((_%name9682696904%_ (reverse _%name9682496869%_))
                    (_%t9682796907%_ (reverse _%t9682596871%_)))
                ((lambda (_%L96910%_ _%L96912%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96910%_
                            _%L96912%_)
                           (let ((__tmp102689
                                  (lambda (_%g9692796931%_
                                           _%g9692896934%_
                                           _%g9692996936%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9692896934%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9692796931%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9692996936%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp102689
                              '()
                              _%L96910%_
                              _%L96912%_)))))
                 _%name9682696904%_
                 _%t9682796907%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9682096862%_
                                         _%target9681796856%_
                                         '()
                                         '()))
                                      (_%g9681096839%_ _%g9681196843%_)))))
                            (_%g9681096839%_ _%g9681196843%_))))
                    (_%g9681096839%_ _%g9681196843%_)))))
        (_%g9680996939%_ _%$stx96806%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx96944%_)
      (let* ((_%g9694896979%_
              (lambda (_%g9694996975%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9694996975%_)))
             (_%g9694797098%_
              (lambda (_%g9694996983%_)
                (if (gx#stx-pair? _%g9694996983%_)
                    (let ((_%e9695396986%_ (gx#syntax-e _%g9694996983%_)))
                      (let ((_%hd9695496990%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9695396986%_)))
                            (_%tl9695596993%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9695396986%_))))
                        (if (gx#stx-pair? _%tl9695596993%_)
                            (let ((_%e9695696996%_
                                   (gx#syntax-e _%tl9695596993%_)))
                              (let ((_%hd9695797000%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9695696996%_)))
                                    (_%tl9695897003%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9695696996%_))))
                                (if (gx#stx-pair? _%tl9695897003%_)
                                    (let ((_%e9695997006%_
                                           (gx#syntax-e _%tl9695897003%_)))
                                      (let ((_%hd9696097010%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9695997006%_)))
                                            (_%tl9696197013%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9695997006%_))))
                                        (if (gx#stx-pair? _%tl9696197013%_)
                                            (let ((_%e9696297016%_
                                                   (gx#syntax-e
                                                    _%tl9696197013%_)))
                                              (let ((_%hd9696397020%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9696297016%_)))
                                                    (_%tl9696497023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9696297016%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9696397020%_)
                                                    (let ((_g102690_
                                                           (gx#syntax-split-splice
                                                            _%hd9696397020%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102691_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102690_)
                             (##values-length _g102690_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102691_ 2)))
                      (error "Context expects 2 values" _g102691_)))
                (let ((_%target9696597026%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102690_ 0)))
                      (_%tl9696797029%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102690_ 1))))
                  (if (gx#stx-null? _%tl9696797029%_)
                      (letrec ((_%loop9696897032%_
                                (lambda (_%hd9696697036%_ _%super9697297039%_)
                                  (if (gx#stx-pair? _%hd9696697036%_)
                                      (let ((_%e9696997042%_
                                             (gx#syntax-e _%hd9696697036%_)))
                                        (let ((_%lp-hd9697097046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9696997042%_)))
                                              (_%lp-tl9697197049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9696997042%_))))
                                          (_%loop9696897032%_
                                           _%lp-tl9697197049%_
                                           (cons _%lp-hd9697097046%_
                                                 _%super9697297039%_))))
                                      (let ((_%super9697397052%_
                                             (reverse _%super9697297039%_)))
                                        (if (gx#stx-null? _%tl9696497023%_)
                                            ((lambda (_%L97056%_
                                                      _%L97058%_
                                                      _%L97059%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L97059%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L97058%_
                                                 (cons (let ((__tmp102692
                                                              (lambda (_%g9708197086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9708297089%_)
                        (cons _%g9708197086%_ _%g9708297089%_))))
                 (declare (not safe))
                 (__foldr1 __tmp102692 '() _%L97056%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L97058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp102693
                                  (lambda (_%g9708397092%_ _%g9708497095%_)
                                    (cons _%g9708397092%_ _%g9708497095%_))))
                             (declare (not safe))
                             (__foldr1 __tmp102693 '() _%L97056%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9697397052%_
                                             _%hd9696097010%_
                                             _%hd9695797000%_)
                                            (_%g9694896979%_
                                             _%g9694996983%_)))))))
                        (_%loop9696897032%_ _%target9696597026%_ '()))
                      (_%g9694896979%_ _%g9694996983%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9694896979%_
                                                     _%g9694996983%_))))
                                            (_%g9694896979%_
                                             _%g9694996983%_))))
                                    (_%g9694896979%_ _%g9694996983%_))))
                            (_%g9694896979%_ _%g9694996983%_))))
                    (_%g9694896979%_ _%g9694996983%_)))))
        (_%g9694797098%_ _%$stx96944%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx97103%_)
      (let* ((_%g9710797138%_
              (lambda (_%g9710897134%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9710897134%_)))
             (_%g9710697249%_
              (lambda (_%g9710897142%_)
                (if (gx#stx-pair? _%g9710897142%_)
                    (let ((_%e9711297145%_ (gx#syntax-e _%g9710897142%_)))
                      (let ((_%hd9711397149%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9711297145%_)))
                            (_%tl9711497152%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9711297145%_))))
                        (if (gx#stx-pair? _%tl9711497152%_)
                            (let ((_%e9711597155%_
                                   (gx#syntax-e _%tl9711497152%_)))
                              (let ((_%hd9711697159%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9711597155%_)))
                                    (_%tl9711797162%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9711597155%_))))
                                (if (gx#stx-pair? _%tl9711797162%_)
                                    (let ((_%e9711897165%_
                                           (gx#syntax-e _%tl9711797162%_)))
                                      (let ((_%hd9711997169%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9711897165%_)))
                                            (_%tl9712097172%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9711897165%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9711997169%_)
                                            (let ((_g102694_
                                                   (gx#syntax-split-splice
                                                    _%hd9711997169%_
                                                    '0)))
                                              (begin
                                                (let ((_g102695_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g102694_)
                                                             (##values-length
                                                              _g102694_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g102695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g102695_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9712197175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g102694_
                                                          0)))
                                                      (_%tl9712397178%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g102694_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9712397178%_)
                                                      (letrec ((_%loop9712497181%_
                                                                (lambda (_%hd9712297185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9712897188%_)
                          (if (gx#stx-pair? _%hd9712297185%_)
                              (let ((_%e9712597191%_
                                     (gx#syntax-e _%hd9712297185%_)))
                                (let ((_%lp-hd9712697195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9712597191%_)))
                                      (_%lp-tl9712797198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9712597191%_))))
                                  (_%loop9712497181%_
                                   _%lp-tl9712797198%_
                                   (cons _%lp-hd9712697195%_
                                         _%super9712897188%_))))
                              (let ((_%super9712997201%_
                                     (reverse _%super9712897188%_)))
                                (if (gx#stx-pair? _%tl9712097172%_)
                                    (let ((_%e9713097205%_
                                           (gx#syntax-e _%tl9712097172%_)))
                                      (let ((_%hd9713197209%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9713097205%_)))
                                            (_%tl9713297212%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9713097205%_))))
                                        (if (gx#stx-null? _%tl9713297212%_)
                                            ((lambda (_%L97215%_
                                                      _%L97217%_
                                                      _%L97218%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L97218%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L97218%_
                                                 (cons (let ((__tmp102696
                                                              (lambda (_%g9724097243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9724197246%_)
                        (cons _%g9724097243%_ _%g9724197246%_))))
                 (declare (not safe))
                 (__foldr1 __tmp102696 '() _%L97217%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L97215%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9713197209%_
                                             _%super9712997201%_
                                             _%hd9711697159%_)
                                            (_%g9710797138%_
                                             _%g9710897142%_))))
                                    (_%g9710797138%_ _%g9710897142%_)))))))
                (_%loop9712497181%_ _%target9712197175%_ '()))
              (_%g9710797138%_ _%g9710897142%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9710797138%_
                                             _%g9710897142%_))))
                                    (_%g9710797138%_ _%g9710897142%_))))
                            (_%g9710797138%_ _%g9710897142%_))))
                    (_%g9710797138%_ _%g9710897142%_)))))
        (_%g9710697249%_ _%$stx97103%_)))))
