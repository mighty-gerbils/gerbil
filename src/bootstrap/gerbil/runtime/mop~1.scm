(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx90935%_)
      (let* ((_%__stx9744497445%_ _%$stx90935%_)
             (_%g9094090969%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9744497445%_))))
        (let ((_%__kont9744797448%_
               (lambda (_%L91062%_ _%L91064%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91064%_ (cons _%L91062%_ '())))
                             (cons _%L91062%_ '())))))
              (_%__kont9744997450%_
               (lambda (_%L91006%_ _%L91008%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91006%_ (cons _%L91006%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91008%_
                                                           (cons _%L91006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L91006%_ '())))
                                   '()))))))
          (let ((_%__match9747197472%_
                 (lambda (_%e9094691032%_
                          _%hd9094591036%_
                          _%tl9094491039%_
                          _%e9094991042%_
                          _%hd9094891046%_
                          _%tl9094791049%_
                          _%e9095291052%_
                          _%hd9095191056%_
                          _%tl9095091059%_)
                   (let ((_%L91062%_ _%hd9095191056%_)
                         (_%L91064%_ _%hd9094891046%_))
                     (if (or (gx#identifier? _%L91062%_)
                             (gx#stx-fixnum? _%L91062%_))
                         (_%__kont9744797448%_ _%L91062%_ _%L91064%_)
                         (_%__kont9744997450%_
                          _%hd9095191056%_
                          _%hd9094891046%_))))))
            (if (gx#stx-pair? _%__stx9744497445%_)
                (let ((_%e9094691032%_ (gx#syntax-e _%__stx9744497445%_)))
                  (let ((_%tl9094491039%_
                         (let () (declare (not safe)) (##cdr _%e9094691032%_)))
                        (_%hd9094591036%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9094691032%_))))
                    (if (gx#stx-pair? _%tl9094491039%_)
                        (let ((_%e9094991042%_ (gx#syntax-e _%tl9094491039%_)))
                          (let ((_%tl9094791049%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9094991042%_)))
                                (_%hd9094891046%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9094991042%_))))
                            (if (gx#stx-pair? _%tl9094791049%_)
                                (let ((_%e9095291052%_
                                       (gx#syntax-e _%tl9094791049%_)))
                                  (let ((_%tl9095091059%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9095291052%_)))
                                        (_%hd9095191056%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9095291052%_))))
                                    (if (gx#stx-null? _%tl9095091059%_)
                                        (_%__match9747197472%_
                                         _%e9094691032%_
                                         _%hd9094591036%_
                                         _%tl9094491039%_
                                         _%e9094991042%_
                                         _%hd9094891046%_
                                         _%tl9094791049%_
                                         _%e9095291052%_
                                         _%hd9095191056%_
                                         _%tl9095091059%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9094090969%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9094090969%_)))))
                        (let () (declare (not safe)) (_%g9094090969%_)))))
                (let () (declare (not safe)) (_%g9094090969%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx91087%_)
      (let* ((_%__stx9749497495%_ _%$stx91087%_)
             (_%g9109291121%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9749497495%_))))
        (let ((_%__kont9749797498%_
               (lambda (_%L91213%_ _%L91215%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91215%_ (cons _%L91213%_ '())))
                             (cons '0 '())))))
              (_%__kont9749997500%_
               (lambda (_%L91158%_ _%L91160%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91158%_ (cons _%L91158%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91160%_
                                                           (cons _%L91158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9752197522%_
                 (lambda (_%e9109891183%_
                          _%hd9109791187%_
                          _%tl9109691190%_
                          _%e9110191193%_
                          _%hd9110091197%_
                          _%tl9109991200%_
                          _%e9110491203%_
                          _%hd9110391207%_
                          _%tl9110291210%_)
                   (let ((_%L91213%_ _%hd9110391207%_)
                         (_%L91215%_ _%hd9110091197%_))
                     (if (or (gx#identifier? _%L91213%_)
                             (gx#stx-fixnum? _%L91213%_))
                         (_%__kont9749797498%_ _%L91213%_ _%L91215%_)
                         (_%__kont9749997500%_
                          _%hd9110391207%_
                          _%hd9110091197%_))))))
            (if (gx#stx-pair? _%__stx9749497495%_)
                (let ((_%e9109891183%_ (gx#syntax-e _%__stx9749497495%_)))
                  (let ((_%tl9109691190%_
                         (let () (declare (not safe)) (##cdr _%e9109891183%_)))
                        (_%hd9109791187%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9109891183%_))))
                    (if (gx#stx-pair? _%tl9109691190%_)
                        (let ((_%e9110191193%_ (gx#syntax-e _%tl9109691190%_)))
                          (let ((_%tl9109991200%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9110191193%_)))
                                (_%hd9110091197%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9110191193%_))))
                            (if (gx#stx-pair? _%tl9109991200%_)
                                (let ((_%e9110491203%_
                                       (gx#syntax-e _%tl9109991200%_)))
                                  (let ((_%tl9110291210%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9110491203%_)))
                                        (_%hd9110391207%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9110491203%_))))
                                    (if (gx#stx-null? _%tl9110291210%_)
                                        (_%__match9752197522%_
                                         _%e9109891183%_
                                         _%hd9109791187%_
                                         _%tl9109691190%_
                                         _%e9110191193%_
                                         _%hd9110091197%_
                                         _%tl9109991200%_
                                         _%e9110491203%_
                                         _%hd9110391207%_
                                         _%tl9110291210%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9109291121%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9109291121%_)))))
                        (let () (declare (not safe)) (_%g9109291121%_)))))
                (let () (declare (not safe)) (_%g9109291121%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx91238%_)
      (let* ((_%g9124191262%_
              (lambda (_%g9124291258%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9124291258%_)))
             (_%g9124091490%_
              (lambda (_%g9124291266%_)
                (if (gx#stx-pair? _%g9124291266%_)
                    (let ((_%e9124791269%_ (gx#syntax-e _%g9124291266%_)))
                      (let ((_%hd9124691273%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9124791269%_)))
                            (_%tl9124591276%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9124791269%_))))
                        (if (gx#stx-pair? _%tl9124591276%_)
                            (let ((_%e9125091279%_
                                   (gx#syntax-e _%tl9124591276%_)))
                              (let ((_%hd9124991283%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9125091279%_)))
                                    (_%tl9124891286%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9125091279%_))))
                                (if (gx#stx-pair? _%hd9124991283%_)
                                    (let ((_%e9125391289%_
                                           (gx#syntax-e _%hd9124991283%_)))
                                      (let ((_%hd9125291293%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9125391289%_)))
                                            (_%tl9125191296%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9125391289%_))))
                                        (if (gx#stx-pair? _%tl9125191296%_)
                                            (let ((_%e9125691299%_
                                                   (gx#syntax-e
                                                    _%tl9125191296%_)))
                                              (let ((_%hd9125591303%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9125691299%_)))
                                                    (_%tl9125491306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9125691299%_))))
                                                (if (gx#stx-null?
                                                     _%tl9125491306%_)
                                                    (if (gx#stx-null?
                                                         _%tl9124891286%_)
                                                        ((lambda (_%L91309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L91311%_)
                   (let* ((_%g9132991337%_
                           (lambda (_%g9133091333%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9133091333%_)))
                          (_%g9132891486%_
                           (lambda (_%g9133091341%_)
                             ((lambda (_%L91344%_)
                                (let ()
                                  (let* ((_%g9135691364%_
                                          (lambda (_%g9135791360%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g9135791360%_)))
                                         (_%g9135591482%_
                                          (lambda (_%g9135791368%_)
                                            ((lambda (_%L91371%_)
                                               (let ()
                                                 (let* ((_%g9138491392%_
                                                         (lambda (_%g9138591388%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g9138591388%_)))
                                                        (_%g9138391478%_
                                                         (lambda (_%g9138591396%_)
                                                           ((lambda (_%L91399%_)
                                                              (let ()
                                                                (let* ((_%g9141291420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g9141391416%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g9141391416%_)))
                               (_%g9141191474%_
                                (lambda (_%g9141391424%_)
                                  ((lambda (_%L91427%_)
                                     (let ()
                                       (let* ((_%g9144091448%_
                                               (lambda (_%g9144191444%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g9144191444%_)))
                                              (_%g9143991470%_
                                               (lambda (_%g9144191452%_)
                                                 ((lambda (_%L91455%_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'def)
                                  (cons _%L91371%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.accessor)
                        (cons _%L91344%_ (cons _%L91311%_ (cons '#t '()))))
                  (cons (cons (gx#datum->syntax '#f 'lambda)
                              (cons (cons (gx#datum->syntax '#f 'klass) '())
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##structure-ref)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons _%L91309%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class::t)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L91311%_ '()))
                                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L91399%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.accessor)
                              (cons _%L91344%_
                                    (cons _%L91311%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f 'klass)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##unchecked-structure-ref)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons _%L91309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L91311%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons _%L91427%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation)
                        (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                    (cons _%L91344%_
                                          (cons _%L91311%_ (cons '#t '()))))
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
                                (cons _%L91309%_
                                      (cons (gx#datum->syntax '#f 'class::t)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%L91311%_ '()))
                                                  '()))))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L91455%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                          (cons _%L91344%_
                                                (cons _%L91311%_
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
              (cons (cons (gx#datum->syntax '#f '##unchecked-structure-set!)
                          (cons (gx#datum->syntax '#f 'klass)
                                (cons (gx#datum->syntax '#f 'val)
                                      (cons _%L91309%_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'class::t)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%L91311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g9144191452%_))))
                                         (_%g9143991470%_
                                          (gx#stx-identifier
                                           _%L91311%_
                                           '"&"
                                           _%L91427%_)))))
                                   _%g9141391424%_))))
                          (_%g9141191474%_
                           (gx#stx-identifier
                            _%L91311%_
                            _%L91371%_
                            '"-set!")))))
                    _%g9138591396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g9138391478%_
                                                    (gx#stx-identifier
                                                     _%L91311%_
                                                     '"&"
                                                     _%L91371%_)))))
                                             _%g9135791368%_))))
                                    (_%g9135591482%_
                                     (gx#stx-identifier
                                      _%L91311%_
                                      '"class-type-"
                                      _%L91311%_)))))
                              _%g9133091341%_))))
                     (_%g9132891486%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9125591303%_
                 _%hd9125291293%_)
                (_%g9124191262%_ _%g9124291266%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9124191262%_
                                                     _%g9124291266%_))))
                                            (_%g9124191262%_
                                             _%g9124291266%_))))
                                    (_%g9124191262%_ _%g9124291266%_))))
                            (_%g9124191262%_ _%g9124291266%_))))
                    (_%g9124191262%_ _%g9124291266%_)))))
        (_%g9124091490%_ _%stx91238%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx91494%_)
      (let* ((_%g9149891527%_
              (lambda (_%g9149991523%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9149991523%_)))
             (_%g9149791627%_
              (lambda (_%g9149991531%_)
                (if (gx#stx-pair? _%g9149991531%_)
                    (let ((_%e9150491534%_ (gx#syntax-e _%g9149991531%_)))
                      (let ((_%hd9150391538%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9150491534%_)))
                            (_%tl9150291541%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9150491534%_))))
                        (if (gx#stx-pair/null? _%tl9150291541%_)
                            (let ((_g97813_
                                   (gx#syntax-split-splice
                                    _%tl9150291541%_
                                    '0)))
                              (begin
                                (let ((_g97814_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97813_)
                                             (##vector-length _g97813_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97814_ 2)))
                                      (error "Context expects 2 values"
                                             _g97814_)))
                                (let ((_%target9150591544%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97813_ 0)))
                                      (_%tl9150791547%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97813_ 1))))
                                  (if (gx#stx-null? _%tl9150791547%_)
                                      (letrec ((_%loop9150891550%_
                                                (lambda (_%hd9150691554%_
                                                         _%field9151291557%_
                                                         _%slot9151391559%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9150691554%_)
                                                      (let ((_%e9150991562%_
                                                             (gx#syntax-e
                                                              _%hd9150691554%_)))
                                                        (let ((_%lp-hd9151091566%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9150991562%_)))
                      (_%lp-tl9151191569%_
                       (let () (declare (not safe)) (##cdr _%e9150991562%_))))
                  (if (gx#stx-pair? _%lp-hd9151091566%_)
                      (let ((_%e9151891572%_
                             (gx#syntax-e _%lp-hd9151091566%_)))
                        (let ((_%hd9151791576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9151891572%_)))
                              (_%tl9151691579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9151891572%_))))
                          (if (gx#stx-pair? _%tl9151691579%_)
                              (let ((_%e9152191582%_
                                     (gx#syntax-e _%tl9151691579%_)))
                                (let ((_%hd9152091586%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9152191582%_)))
                                      (_%tl9151991589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9152191582%_))))
                                  (if (gx#stx-null? _%tl9151991589%_)
                                      (_%loop9150891550%_
                                       _%lp-tl9151191569%_
                                       (cons _%hd9152091586%_
                                             _%field9151291557%_)
                                       (cons _%hd9151791576%_
                                             _%slot9151391559%_))
                                      (_%g9149891527%_ _%g9149991531%_))))
                              (_%g9149891527%_ _%g9149991531%_))))
                      (_%g9149891527%_ _%g9149991531%_))))
              (let ((_%field9151491592%_ (reverse _%field9151291557%_))
                    (_%slot9151591595%_ (reverse _%slot9151391559%_)))
                ((lambda (_%L91598%_ _%L91600%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L91598%_
                            _%L91600%_)
                           (let ((__tmp97815
                                  (lambda (_%g9161591619%_
                                           _%g9161691622%_
                                           _%g9161791624%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9161691622%_
                                                            (cons _%g9161591619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9161791624%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp97815
                              '()
                              _%L91598%_
                              _%L91600%_)))))
                 _%field9151491592%_
                 _%slot9151591595%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9150891550%_
                                         _%target9150591544%_
                                         '()
                                         '()))
                                      (_%g9149891527%_ _%g9149991531%_)))))
                            (_%g9149891527%_ _%g9149991531%_))))
                    (_%g9149891527%_ _%g9149991531%_)))))
        (_%g9149791627%_ _%$stx91494%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx91632%_)
      (let* ((_%g9163691670%_
              (lambda (_%g9163791666%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9163791666%_)))
             (_%g9163591781%_
              (lambda (_%g9163791674%_)
                (if (gx#stx-pair? _%g9163791674%_)
                    (let ((_%e9164691677%_ (gx#syntax-e _%g9163791674%_)))
                      (let ((_%hd9164591681%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9164691677%_)))
                            (_%tl9164491684%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9164691677%_))))
                        (if (gx#stx-pair? _%tl9164491684%_)
                            (let ((_%e9164991687%_
                                   (gx#syntax-e _%tl9164491684%_)))
                              (let ((_%hd9164891691%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9164991687%_)))
                                    (_%tl9164791694%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9164991687%_))))
                                (if (gx#stx-pair? _%tl9164791694%_)
                                    (let ((_%e9165291697%_
                                           (gx#syntax-e _%tl9164791694%_)))
                                      (let ((_%hd9165191701%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9165291697%_)))
                                            (_%tl9165091704%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9165291697%_))))
                                        (if (gx#stx-pair? _%tl9165091704%_)
                                            (let ((_%e9165591707%_
                                                   (gx#syntax-e
                                                    _%tl9165091704%_)))
                                              (let ((_%hd9165491711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9165591707%_)))
                                                    (_%tl9165391714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9165591707%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9165391714%_)
                                                    (let ((_%e9165891717%_
                                                           (gx#syntax-e
                                                            _%tl9165391714%_)))
                                                      (let ((_%hd9165791721%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9165891717%_)))
                    (_%tl9165691724%_
                     (let () (declare (not safe)) (##cdr _%e9165891717%_))))
                (if (gx#stx-pair? _%tl9165691724%_)
                    (let ((_%e9166191727%_ (gx#syntax-e _%tl9165691724%_)))
                      (let ((_%hd9166091731%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9166191727%_)))
                            (_%tl9165991734%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9166191727%_))))
                        (if (gx#stx-pair? _%tl9165991734%_)
                            (let ((_%e9166491737%_
                                   (gx#syntax-e _%tl9165991734%_)))
                              (let ((_%hd9166391741%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9166491737%_)))
                                    (_%tl9166291744%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9166491737%_))))
                                (if (gx#stx-null? _%tl9166291744%_)
                                    ((lambda (_%L91747%_
                                              _%L91749%_
                                              _%L91750%_
                                              _%L91751%_
                                              _%L91752%_
                                              _%L91753%_)
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
                                         (cons _%L91753%_ '()))
                                   (cons _%L91752%_ (cons '#f '()))))
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
                               (cons _%L91753%_
                                     (cons 'slot: (cons _%L91752%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L91753%_ '()))
                                         (cons (cons _%L91751%_
                                                     (cons _%L91753%_
                                                           (cons _%L91752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L91753%_ '()))
                                               (cons (cons _%L91750%_
                                                           (cons _%L91753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L91752%_
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
                                           (cons _%L91753%_ '()))
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
                                                     (cons (cons _%L91749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L91753%_
                               (cons _%L91752%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L91747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L91753%_
                                     (cons _%L91752%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9166391741%_
                                     _%hd9166091731%_
                                     _%hd9165791721%_
                                     _%hd9165491711%_
                                     _%hd9165191701%_
                                     _%hd9164891691%_)
                                    (_%g9163691670%_ _%g9163791674%_))))
                            (_%g9163691670%_ _%g9163791674%_))))
                    (_%g9163691670%_ _%g9163791674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9163691670%_
                                                     _%g9163791674%_))))
                                            (_%g9163691670%_
                                             _%g9163791674%_))))
                                    (_%g9163691670%_ _%g9163791674%_))))
                            (_%g9163691670%_ _%g9163791674%_))))
                    (_%g9163691670%_ _%g9163791674%_)))))
        (_%g9163591781%_ _%$stx91632%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx91785%_)
      (let* ((_%g9178991815%_
              (lambda (_%g9179091811%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9179091811%_)))
             (_%g9178891898%_
              (lambda (_%g9179091819%_)
                (if (gx#stx-pair? _%g9179091819%_)
                    (let ((_%e9179791822%_ (gx#syntax-e _%g9179091819%_)))
                      (let ((_%hd9179691826%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9179791822%_)))
                            (_%tl9179591829%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9179791822%_))))
                        (if (gx#stx-pair? _%tl9179591829%_)
                            (let ((_%e9180091832%_
                                   (gx#syntax-e _%tl9179591829%_)))
                              (let ((_%hd9179991836%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9180091832%_)))
                                    (_%tl9179891839%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9180091832%_))))
                                (if (gx#stx-pair? _%tl9179891839%_)
                                    (let ((_%e9180391842%_
                                           (gx#syntax-e _%tl9179891839%_)))
                                      (let ((_%hd9180291846%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9180391842%_)))
                                            (_%tl9180191849%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9180391842%_))))
                                        (if (gx#stx-pair? _%tl9180191849%_)
                                            (let ((_%e9180691852%_
                                                   (gx#syntax-e
                                                    _%tl9180191849%_)))
                                              (let ((_%hd9180591856%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9180691852%_)))
                                                    (_%tl9180491859%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9180691852%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9180491859%_)
                                                    (let ((_%e9180991862%_
                                                           (gx#syntax-e
                                                            _%tl9180491859%_)))
                                                      (let ((_%hd9180891866%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9180991862%_)))
                    (_%tl9180791869%_
                     (let () (declare (not safe)) (##cdr _%e9180991862%_))))
                (if (gx#stx-null? _%tl9180791869%_)
                    ((lambda (_%L91872%_ _%L91874%_ _%L91875%_ _%L91876%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L91876%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L91875%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L91874%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L91872%_
                                     (cons _%L91876%_ (cons _%L91875%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9180891866%_
                     _%hd9180591856%_
                     _%hd9180291846%_
                     _%hd9179991836%_)
                    (_%g9178991815%_ _%g9179091819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9178991815%_
                                                     _%g9179091819%_))))
                                            (_%g9178991815%_
                                             _%g9179091819%_))))
                                    (_%g9178991815%_ _%g9179091819%_))))
                            (_%g9178991815%_ _%g9179091819%_))))
                    (_%g9178991815%_ _%g9179091819%_)))))
        (_%g9178891898%_ _%$stx91785%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx91902%_)
      (let* ((_%g9190691935%_
              (lambda (_%g9190791931%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9190791931%_)))
             (_%g9190592035%_
              (lambda (_%g9190791939%_)
                (if (gx#stx-pair? _%g9190791939%_)
                    (let ((_%e9191291942%_ (gx#syntax-e _%g9190791939%_)))
                      (let ((_%hd9191191946%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9191291942%_)))
                            (_%tl9191091949%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9191291942%_))))
                        (if (gx#stx-pair/null? _%tl9191091949%_)
                            (let ((_g97816_
                                   (gx#syntax-split-splice
                                    _%tl9191091949%_
                                    '0)))
                              (begin
                                (let ((_g97817_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97816_)
                                             (##vector-length _g97816_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97817_ 2)))
                                      (error "Context expects 2 values"
                                             _g97817_)))
                                (let ((_%target9191391952%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97816_ 0)))
                                      (_%tl9191591955%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97816_ 1))))
                                  (if (gx#stx-null? _%tl9191591955%_)
                                      (letrec ((_%loop9191691958%_
                                                (lambda (_%hd9191491962%_
                                                         _%name9192091965%_
                                                         _%t9192191967%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9191491962%_)
                                                      (let ((_%e9191791970%_
                                                             (gx#syntax-e
                                                              _%hd9191491962%_)))
                                                        (let ((_%lp-hd9191891974%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9191791970%_)))
                      (_%lp-tl9191991977%_
                       (let () (declare (not safe)) (##cdr _%e9191791970%_))))
                  (if (gx#stx-pair? _%lp-hd9191891974%_)
                      (let ((_%e9192691980%_
                             (gx#syntax-e _%lp-hd9191891974%_)))
                        (let ((_%hd9192591984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9192691980%_)))
                              (_%tl9192491987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9192691980%_))))
                          (if (gx#stx-pair? _%tl9192491987%_)
                              (let ((_%e9192991990%_
                                     (gx#syntax-e _%tl9192491987%_)))
                                (let ((_%hd9192891994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9192991990%_)))
                                      (_%tl9192791997%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9192991990%_))))
                                  (if (gx#stx-null? _%tl9192791997%_)
                                      (_%loop9191691958%_
                                       _%lp-tl9191991977%_
                                       (cons _%hd9192891994%_
                                             _%name9192091965%_)
                                       (cons _%hd9192591984%_ _%t9192191967%_))
                                      (_%g9190691935%_ _%g9190791939%_))))
                              (_%g9190691935%_ _%g9190791939%_))))
                      (_%g9190691935%_ _%g9190791939%_))))
              (let ((_%name9192292000%_ (reverse _%name9192091965%_))
                    (_%t9192392003%_ (reverse _%t9192191967%_)))
                ((lambda (_%L92006%_ _%L92008%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92006%_
                            _%L92008%_)
                           (let ((__tmp97818
                                  (lambda (_%g9202392027%_
                                           _%g9202492030%_
                                           _%g9202592032%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9202492030%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9202392027%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9202592032%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp97818
                              '()
                              _%L92006%_
                              _%L92008%_)))))
                 _%name9192292000%_
                 _%t9192392003%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9191691958%_
                                         _%target9191391952%_
                                         '()
                                         '()))
                                      (_%g9190691935%_ _%g9190791939%_)))))
                            (_%g9190691935%_ _%g9190791939%_))))
                    (_%g9190691935%_ _%g9190791939%_)))))
        (_%g9190592035%_ _%$stx91902%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx92040%_)
      (let* ((_%g9204492075%_
              (lambda (_%g9204592071%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9204592071%_)))
             (_%g9204392194%_
              (lambda (_%g9204592079%_)
                (if (gx#stx-pair? _%g9204592079%_)
                    (let ((_%e9205192082%_ (gx#syntax-e _%g9204592079%_)))
                      (let ((_%hd9205092086%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9205192082%_)))
                            (_%tl9204992089%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9205192082%_))))
                        (if (gx#stx-pair? _%tl9204992089%_)
                            (let ((_%e9205492092%_
                                   (gx#syntax-e _%tl9204992089%_)))
                              (let ((_%hd9205392096%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9205492092%_)))
                                    (_%tl9205292099%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9205492092%_))))
                                (if (gx#stx-pair? _%tl9205292099%_)
                                    (let ((_%e9205792102%_
                                           (gx#syntax-e _%tl9205292099%_)))
                                      (let ((_%hd9205692106%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9205792102%_)))
                                            (_%tl9205592109%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9205792102%_))))
                                        (if (gx#stx-pair? _%tl9205592109%_)
                                            (let ((_%e9206092112%_
                                                   (gx#syntax-e
                                                    _%tl9205592109%_)))
                                              (let ((_%hd9205992116%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9206092112%_)))
                                                    (_%tl9205892119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9206092112%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9205992116%_)
                                                    (let ((_g97819_
                                                           (gx#syntax-split-splice
                                                            _%hd9205992116%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g97820_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g97819_)
                             (##vector-length _g97819_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97820_ 2)))
                      (error "Context expects 2 values" _g97820_)))
                (let ((_%target9206192122%_
                       (let () (declare (not safe)) (##vector-ref _g97819_ 0)))
                      (_%tl9206392125%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g97819_ 1))))
                  (if (gx#stx-null? _%tl9206392125%_)
                      (letrec ((_%loop9206492128%_
                                (lambda (_%hd9206292132%_ _%super9206892135%_)
                                  (if (gx#stx-pair? _%hd9206292132%_)
                                      (let ((_%e9206592138%_
                                             (gx#syntax-e _%hd9206292132%_)))
                                        (let ((_%lp-hd9206692142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9206592138%_)))
                                              (_%lp-tl9206792145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9206592138%_))))
                                          (_%loop9206492128%_
                                           _%lp-tl9206792145%_
                                           (cons _%lp-hd9206692142%_
                                                 _%super9206892135%_))))
                                      (let ((_%super9206992148%_
                                             (reverse _%super9206892135%_)))
                                        (if (gx#stx-null? _%tl9205892119%_)
                                            ((lambda (_%L92152%_
                                                      _%L92154%_
                                                      _%L92155%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92155%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92154%_
                                                 (cons (let ((__tmp97821
                                                              (lambda (_%g9217992182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9218092185%_)
                        (cons _%g9217992182%_ _%g9218092185%_))))
                 (declare (not safe))
                 (__foldr1 __tmp97821 '() _%L92152%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L92154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp97822
                                  (lambda (_%g9217792188%_ _%g9217892191%_)
                                    (cons _%g9217792188%_ _%g9217892191%_))))
                             (declare (not safe))
                             (__foldr1 __tmp97822 '() _%L92152%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9206992148%_
                                             _%hd9205692106%_
                                             _%hd9205392096%_)
                                            (_%g9204492075%_
                                             _%g9204592079%_)))))))
                        (_%loop9206492128%_ _%target9206192122%_ '()))
                      (_%g9204492075%_ _%g9204592079%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9204492075%_
                                                     _%g9204592079%_))))
                                            (_%g9204492075%_
                                             _%g9204592079%_))))
                                    (_%g9204492075%_ _%g9204592079%_))))
                            (_%g9204492075%_ _%g9204592079%_))))
                    (_%g9204492075%_ _%g9204592079%_)))))
        (_%g9204392194%_ _%$stx92040%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx92199%_)
      (let* ((_%g9220392234%_
              (lambda (_%g9220492230%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9220492230%_)))
             (_%g9220292345%_
              (lambda (_%g9220492238%_)
                (if (gx#stx-pair? _%g9220492238%_)
                    (let ((_%e9221092241%_ (gx#syntax-e _%g9220492238%_)))
                      (let ((_%hd9220992245%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9221092241%_)))
                            (_%tl9220892248%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9221092241%_))))
                        (if (gx#stx-pair? _%tl9220892248%_)
                            (let ((_%e9221392251%_
                                   (gx#syntax-e _%tl9220892248%_)))
                              (let ((_%hd9221292255%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9221392251%_)))
                                    (_%tl9221192258%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9221392251%_))))
                                (if (gx#stx-pair? _%tl9221192258%_)
                                    (let ((_%e9221692261%_
                                           (gx#syntax-e _%tl9221192258%_)))
                                      (let ((_%hd9221592265%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9221692261%_)))
                                            (_%tl9221492268%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9221692261%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9221592265%_)
                                            (let ((_g97823_
                                                   (gx#syntax-split-splice
                                                    _%hd9221592265%_
                                                    '0)))
                                              (begin
                                                (let ((_g97824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g97823_)
                                                             (##vector-length
                                                              _g97823_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g97824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g97824_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9221792271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g97823_
                                                          0)))
                                                      (_%tl9221992274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g97823_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9221992274%_)
                                                      (letrec ((_%loop9222092277%_
                                                                (lambda (_%hd9221892281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9222492284%_)
                          (if (gx#stx-pair? _%hd9221892281%_)
                              (let ((_%e9222192287%_
                                     (gx#syntax-e _%hd9221892281%_)))
                                (let ((_%lp-hd9222292291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9222192287%_)))
                                      (_%lp-tl9222392294%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9222192287%_))))
                                  (_%loop9222092277%_
                                   _%lp-tl9222392294%_
                                   (cons _%lp-hd9222292291%_
                                         _%super9222492284%_))))
                              (let ((_%super9222592297%_
                                     (reverse _%super9222492284%_)))
                                (if (gx#stx-pair? _%tl9221492268%_)
                                    (let ((_%e9222892301%_
                                           (gx#syntax-e _%tl9221492268%_)))
                                      (let ((_%hd9222792305%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9222892301%_)))
                                            (_%tl9222692308%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9222892301%_))))
                                        (if (gx#stx-null? _%tl9222692308%_)
                                            ((lambda (_%L92311%_
                                                      _%L92313%_
                                                      _%L92314%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92314%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92314%_
                                                 (cons (let ((__tmp97825
                                                              (lambda (_%g9233692339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9233792342%_)
                        (cons _%g9233692339%_ _%g9233792342%_))))
                 (declare (not safe))
                 (__foldr1 __tmp97825 '() _%L92313%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L92311%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9222792305%_
                                             _%super9222592297%_
                                             _%hd9221292255%_)
                                            (_%g9220392234%_
                                             _%g9220492238%_))))
                                    (_%g9220392234%_ _%g9220492238%_)))))))
                (_%loop9222092277%_ _%target9221792271%_ '()))
              (_%g9220392234%_ _%g9220492238%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9220392234%_
                                             _%g9220492238%_))))
                                    (_%g9220392234%_ _%g9220492238%_))))
                            (_%g9220392234%_ _%g9220492238%_))))
                    (_%g9220392234%_ _%g9220492238%_)))))
        (_%g9220292345%_ _%$stx92199%_)))))
