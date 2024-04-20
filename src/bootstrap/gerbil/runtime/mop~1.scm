(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx94808%_)
      (let* ((_%__stx101312101313%_ _%$stx94808%_)
             (_%g9481394842%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx101312101313%_))))
        (let ((_%__kont101315101316%_
               (lambda (_%L94935%_ _%L94937%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L94937%_ (cons _%L94935%_ '())))
                             (cons _%L94935%_ '())))))
              (_%__kont101317101318%_
               (lambda (_%L94879%_ _%L94881%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L94879%_ (cons _%L94879%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L94881%_
                                                           (cons _%L94879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L94879%_ '())))
                                   '()))))))
          (let ((_%__match101339101340%_
                 (lambda (_%e9481794905%_
                          _%hd9481894909%_
                          _%tl9481994912%_
                          _%e9482094915%_
                          _%hd9482194919%_
                          _%tl9482294922%_
                          _%e9482394925%_
                          _%hd9482494929%_
                          _%tl9482594932%_)
                   (let ((_%L94935%_ _%hd9482494929%_)
                         (_%L94937%_ _%hd9482194919%_))
                     (if (or (gx#identifier? _%L94935%_)
                             (gx#stx-fixnum? _%L94935%_))
                         (_%__kont101315101316%_ _%L94935%_ _%L94937%_)
                         (_%__kont101317101318%_
                          _%hd9482494929%_
                          _%hd9482194919%_))))))
            (if (gx#stx-pair? _%__stx101312101313%_)
                (let ((_%e9481794905%_ (gx#syntax-e _%__stx101312101313%_)))
                  (let ((_%tl9481994912%_
                         (let () (declare (not safe)) (##cdr _%e9481794905%_)))
                        (_%hd9481894909%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9481794905%_))))
                    (if (gx#stx-pair? _%tl9481994912%_)
                        (let ((_%e9482094915%_ (gx#syntax-e _%tl9481994912%_)))
                          (let ((_%tl9482294922%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9482094915%_)))
                                (_%hd9482194919%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9482094915%_))))
                            (if (gx#stx-pair? _%tl9482294922%_)
                                (let ((_%e9482394925%_
                                       (gx#syntax-e _%tl9482294922%_)))
                                  (let ((_%tl9482594932%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9482394925%_)))
                                        (_%hd9482494929%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9482394925%_))))
                                    (if (gx#stx-null? _%tl9482594932%_)
                                        (_%__match101339101340%_
                                         _%e9481794905%_
                                         _%hd9481894909%_
                                         _%tl9481994912%_
                                         _%e9482094915%_
                                         _%hd9482194919%_
                                         _%tl9482294922%_
                                         _%e9482394925%_
                                         _%hd9482494929%_
                                         _%tl9482594932%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9481394842%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9481394842%_)))))
                        (let () (declare (not safe)) (_%g9481394842%_)))))
                (let () (declare (not safe)) (_%g9481394842%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx94960%_)
      (let* ((_%__stx101362101363%_ _%$stx94960%_)
             (_%g9496594994%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx101362101363%_))))
        (let ((_%__kont101365101366%_
               (lambda (_%L95086%_ _%L95088%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L95088%_ (cons _%L95086%_ '())))
                             (cons '0 '())))))
              (_%__kont101367101368%_
               (lambda (_%L95031%_ _%L95033%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L95031%_ (cons _%L95031%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L95033%_
                                                           (cons _%L95031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match101389101390%_
                 (lambda (_%e9496995056%_
                          _%hd9497095060%_
                          _%tl9497195063%_
                          _%e9497295066%_
                          _%hd9497395070%_
                          _%tl9497495073%_
                          _%e9497595076%_
                          _%hd9497695080%_
                          _%tl9497795083%_)
                   (let ((_%L95086%_ _%hd9497695080%_)
                         (_%L95088%_ _%hd9497395070%_))
                     (if (or (gx#identifier? _%L95086%_)
                             (gx#stx-fixnum? _%L95086%_))
                         (_%__kont101365101366%_ _%L95086%_ _%L95088%_)
                         (_%__kont101367101368%_
                          _%hd9497695080%_
                          _%hd9497395070%_))))))
            (if (gx#stx-pair? _%__stx101362101363%_)
                (let ((_%e9496995056%_ (gx#syntax-e _%__stx101362101363%_)))
                  (let ((_%tl9497195063%_
                         (let () (declare (not safe)) (##cdr _%e9496995056%_)))
                        (_%hd9497095060%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9496995056%_))))
                    (if (gx#stx-pair? _%tl9497195063%_)
                        (let ((_%e9497295066%_ (gx#syntax-e _%tl9497195063%_)))
                          (let ((_%tl9497495073%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9497295066%_)))
                                (_%hd9497395070%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9497295066%_))))
                            (if (gx#stx-pair? _%tl9497495073%_)
                                (let ((_%e9497595076%_
                                       (gx#syntax-e _%tl9497495073%_)))
                                  (let ((_%tl9497795083%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9497595076%_)))
                                        (_%hd9497695080%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9497595076%_))))
                                    (if (gx#stx-null? _%tl9497795083%_)
                                        (_%__match101389101390%_
                                         _%e9496995056%_
                                         _%hd9497095060%_
                                         _%tl9497195063%_
                                         _%e9497295066%_
                                         _%hd9497395070%_
                                         _%tl9497495073%_
                                         _%e9497595076%_
                                         _%hd9497695080%_
                                         _%tl9497795083%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9496594994%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9496594994%_)))))
                        (let () (declare (not safe)) (_%g9496594994%_)))))
                (let () (declare (not safe)) (_%g9496594994%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx95111%_)
      (let* ((_%g9511495135%_
              (lambda (_%g9511595131%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9511595131%_)))
             (_%g9511395363%_
              (lambda (_%g9511595139%_)
                (if (gx#stx-pair? _%g9511595139%_)
                    (let ((_%e9511895142%_ (gx#syntax-e _%g9511595139%_)))
                      (let ((_%hd9511995146%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9511895142%_)))
                            (_%tl9512095149%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9511895142%_))))
                        (if (gx#stx-pair? _%tl9512095149%_)
                            (let ((_%e9512195152%_
                                   (gx#syntax-e _%tl9512095149%_)))
                              (let ((_%hd9512295156%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9512195152%_)))
                                    (_%tl9512395159%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9512195152%_))))
                                (if (gx#stx-pair? _%hd9512295156%_)
                                    (let ((_%e9512495162%_
                                           (gx#syntax-e _%hd9512295156%_)))
                                      (let ((_%hd9512595166%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9512495162%_)))
                                            (_%tl9512695169%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9512495162%_))))
                                        (if (gx#stx-pair? _%tl9512695169%_)
                                            (let ((_%e9512795172%_
                                                   (gx#syntax-e
                                                    _%tl9512695169%_)))
                                              (let ((_%hd9512895176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9512795172%_)))
                                                    (_%tl9512995179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9512795172%_))))
                                                (if (gx#stx-null?
                                                     _%tl9512995179%_)
                                                    (if (gx#stx-null?
                                                         _%tl9512395159%_)
                                                        ((lambda (_%L95182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L95184%_)
                   (let* ((_%g9520295210%_
                           (lambda (_%g9520395206%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9520395206%_)))
                          (_%g9520195359%_
                           (lambda (_%g9520395214%_)
                             ((lambda (_%L95217%_)
                                (let* ((_%g9522995237%_
                                        (lambda (_%g9523095233%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9523095233%_)))
                                       (_%g9522895355%_
                                        (lambda (_%g9523095241%_)
                                          ((lambda (_%L95244%_)
                                             (let* ((_%g9525795265%_
                                                     (lambda (_%g9525895261%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9525895261%_)))
                                                    (_%g9525695351%_
                                                     (lambda (_%g9525895269%_)
                                                       ((lambda (_%L95272%_)
                                                          (let* ((_%g9528595293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9528695289%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9528695289%_)))
                         (_%g9528495347%_
                          (lambda (_%g9528695297%_)
                            ((lambda (_%L95300%_)
                               (let* ((_%g9531395321%_
                                       (lambda (_%g9531495317%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9531495317%_)))
                                      (_%g9531295343%_
                                       (lambda (_%g9531495325%_)
                                         ((lambda (_%L95328%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L95244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L95217%_
                                                          (cons _%L95184%_
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
                                          (cons _%L95182%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L95184%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L95272%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L95217%_
                                                                (cons _%L95184%_
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
                                                (cons _%L95182%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L95184%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L95300%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L95217%_ (cons _%L95184%_ (cons '#t '()))))
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
                                                            (cons _%L95182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L95184%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L95328%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L95217%_
                                    (cons _%L95184%_ (cons '#f '()))))
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
                          (cons _%L95182%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L95184%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9531495325%_))))
                                 (_%g9531295343%_
                                  (gx#stx-identifier
                                   _%L95184%_
                                   '"&"
                                   _%L95300%_))))
                             _%g9528695297%_))))
                    (_%g9528495347%_
                     (gx#stx-identifier _%L95184%_ _%L95244%_ '"-set!"))))
                _%g9525895269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9525695351%_
                                                (gx#stx-identifier
                                                 _%L95184%_
                                                 '"&"
                                                 _%L95244%_))))
                                           _%g9523095241%_))))
                                  (_%g9522895355%_
                                   (gx#stx-identifier
                                    _%L95184%_
                                    '"class-type-"
                                    _%L95184%_))))
                              _%g9520395214%_))))
                     (_%g9520195359%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9512895176%_
                 _%hd9512595166%_)
                (_%g9511495135%_ _%g9511595139%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9511495135%_
                                                     _%g9511595139%_))))
                                            (_%g9511495135%_
                                             _%g9511595139%_))))
                                    (_%g9511495135%_ _%g9511595139%_))))
                            (_%g9511495135%_ _%g9511595139%_))))
                    (_%g9511495135%_ _%g9511595139%_)))))
        (_%g9511395363%_ _%stx95111%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx95367%_)
      (let* ((_%g9537195400%_
              (lambda (_%g9537295396%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9537295396%_)))
             (_%g9537095500%_
              (lambda (_%g9537295404%_)
                (if (gx#stx-pair? _%g9537295404%_)
                    (let ((_%e9537595407%_ (gx#syntax-e _%g9537295404%_)))
                      (let ((_%hd9537695411%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9537595407%_)))
                            (_%tl9537795414%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9537595407%_))))
                        (if (gx#stx-pair/null? _%tl9537795414%_)
                            (let ((_g101602_
                                   (gx#syntax-split-splice
                                    _%tl9537795414%_
                                    '0)))
                              (begin
                                (let ((_g101603_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g101602_)
                                             (##vector-length _g101602_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g101603_ 2)))
                                      (error "Context expects 2 values"
                                             _g101603_)))
                                (let ((_%target9537895417%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g101602_ 0)))
                                      (_%tl9538095420%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g101602_ 1))))
                                  (if (gx#stx-null? _%tl9538095420%_)
                                      (letrec ((_%loop9538195423%_
                                                (lambda (_%hd9537995427%_
                                                         _%field9538595430%_
                                                         _%slot9538695432%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9537995427%_)
                                                      (let ((_%e9538295435%_
                                                             (gx#syntax-e
                                                              _%hd9537995427%_)))
                                                        (let ((_%lp-hd9538395439%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9538295435%_)))
                      (_%lp-tl9538495442%_
                       (let () (declare (not safe)) (##cdr _%e9538295435%_))))
                  (if (gx#stx-pair? _%lp-hd9538395439%_)
                      (let ((_%e9538995445%_
                             (gx#syntax-e _%lp-hd9538395439%_)))
                        (let ((_%hd9539095449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9538995445%_)))
                              (_%tl9539195452%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9538995445%_))))
                          (if (gx#stx-pair? _%tl9539195452%_)
                              (let ((_%e9539295455%_
                                     (gx#syntax-e _%tl9539195452%_)))
                                (let ((_%hd9539395459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9539295455%_)))
                                      (_%tl9539495462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9539295455%_))))
                                  (if (gx#stx-null? _%tl9539495462%_)
                                      (_%loop9538195423%_
                                       _%lp-tl9538495442%_
                                       (cons _%hd9539395459%_
                                             _%field9538595430%_)
                                       (cons _%hd9539095449%_
                                             _%slot9538695432%_))
                                      (_%g9537195400%_ _%g9537295404%_))))
                              (_%g9537195400%_ _%g9537295404%_))))
                      (_%g9537195400%_ _%g9537295404%_))))
              (let ((_%field9538795465%_ (reverse _%field9538595430%_))
                    (_%slot9538895468%_ (reverse _%slot9538695432%_)))
                ((lambda (_%L95471%_ _%L95473%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L95471%_
                            _%L95473%_)
                           (let ((__tmp101604
                                  (lambda (_%g9548895492%_
                                           _%g9548995495%_
                                           _%g9549095497%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9548995495%_
                                                            (cons _%g9548895492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9549095497%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp101604
                              '()
                              _%L95471%_
                              _%L95473%_)))))
                 _%field9538795465%_
                 _%slot9538895468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9538195423%_
                                         _%target9537895417%_
                                         '()
                                         '()))
                                      (_%g9537195400%_ _%g9537295404%_)))))
                            (_%g9537195400%_ _%g9537295404%_))))
                    (_%g9537195400%_ _%g9537295404%_)))))
        (_%g9537095500%_ _%$stx95367%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx95505%_)
      (let* ((_%g9550995543%_
              (lambda (_%g9551095539%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9551095539%_)))
             (_%g9550895654%_
              (lambda (_%g9551095547%_)
                (if (gx#stx-pair? _%g9551095547%_)
                    (let ((_%e9551795550%_ (gx#syntax-e _%g9551095547%_)))
                      (let ((_%hd9551895554%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9551795550%_)))
                            (_%tl9551995557%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9551795550%_))))
                        (if (gx#stx-pair? _%tl9551995557%_)
                            (let ((_%e9552095560%_
                                   (gx#syntax-e _%tl9551995557%_)))
                              (let ((_%hd9552195564%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9552095560%_)))
                                    (_%tl9552295567%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9552095560%_))))
                                (if (gx#stx-pair? _%tl9552295567%_)
                                    (let ((_%e9552395570%_
                                           (gx#syntax-e _%tl9552295567%_)))
                                      (let ((_%hd9552495574%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9552395570%_)))
                                            (_%tl9552595577%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9552395570%_))))
                                        (if (gx#stx-pair? _%tl9552595577%_)
                                            (let ((_%e9552695580%_
                                                   (gx#syntax-e
                                                    _%tl9552595577%_)))
                                              (let ((_%hd9552795584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9552695580%_)))
                                                    (_%tl9552895587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9552695580%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9552895587%_)
                                                    (let ((_%e9552995590%_
                                                           (gx#syntax-e
                                                            _%tl9552895587%_)))
                                                      (let ((_%hd9553095594%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9552995590%_)))
                    (_%tl9553195597%_
                     (let () (declare (not safe)) (##cdr _%e9552995590%_))))
                (if (gx#stx-pair? _%tl9553195597%_)
                    (let ((_%e9553295600%_ (gx#syntax-e _%tl9553195597%_)))
                      (let ((_%hd9553395604%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9553295600%_)))
                            (_%tl9553495607%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9553295600%_))))
                        (if (gx#stx-pair? _%tl9553495607%_)
                            (let ((_%e9553595610%_
                                   (gx#syntax-e _%tl9553495607%_)))
                              (let ((_%hd9553695614%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9553595610%_)))
                                    (_%tl9553795617%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9553595610%_))))
                                (if (gx#stx-null? _%tl9553795617%_)
                                    ((lambda (_%L95620%_
                                              _%L95622%_
                                              _%L95623%_
                                              _%L95624%_
                                              _%L95625%_
                                              _%L95626%_)
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
                                         (cons _%L95626%_ '()))
                                   (cons _%L95625%_ (cons '#f '()))))
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
                               (cons _%L95626%_
                                     (cons 'slot: (cons _%L95625%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L95626%_ '()))
                                         (cons (cons _%L95624%_
                                                     (cons _%L95626%_
                                                           (cons _%L95625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L95626%_ '()))
                                               (cons (cons _%L95623%_
                                                           (cons _%L95626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L95625%_
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
                                           (cons _%L95626%_ '()))
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
                                                     (cons (cons _%L95622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L95626%_
                               (cons _%L95625%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L95620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L95626%_
                                     (cons _%L95625%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9553695614%_
                                     _%hd9553395604%_
                                     _%hd9553095594%_
                                     _%hd9552795584%_
                                     _%hd9552495574%_
                                     _%hd9552195564%_)
                                    (_%g9550995543%_ _%g9551095547%_))))
                            (_%g9550995543%_ _%g9551095547%_))))
                    (_%g9550995543%_ _%g9551095547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9550995543%_
                                                     _%g9551095547%_))))
                                            (_%g9550995543%_
                                             _%g9551095547%_))))
                                    (_%g9550995543%_ _%g9551095547%_))))
                            (_%g9550995543%_ _%g9551095547%_))))
                    (_%g9550995543%_ _%g9551095547%_)))))
        (_%g9550895654%_ _%$stx95505%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx95658%_)
      (let* ((_%g9566295688%_
              (lambda (_%g9566395684%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9566395684%_)))
             (_%g9566195771%_
              (lambda (_%g9566395692%_)
                (if (gx#stx-pair? _%g9566395692%_)
                    (let ((_%e9566895695%_ (gx#syntax-e _%g9566395692%_)))
                      (let ((_%hd9566995699%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9566895695%_)))
                            (_%tl9567095702%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9566895695%_))))
                        (if (gx#stx-pair? _%tl9567095702%_)
                            (let ((_%e9567195705%_
                                   (gx#syntax-e _%tl9567095702%_)))
                              (let ((_%hd9567295709%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9567195705%_)))
                                    (_%tl9567395712%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9567195705%_))))
                                (if (gx#stx-pair? _%tl9567395712%_)
                                    (let ((_%e9567495715%_
                                           (gx#syntax-e _%tl9567395712%_)))
                                      (let ((_%hd9567595719%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9567495715%_)))
                                            (_%tl9567695722%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9567495715%_))))
                                        (if (gx#stx-pair? _%tl9567695722%_)
                                            (let ((_%e9567795725%_
                                                   (gx#syntax-e
                                                    _%tl9567695722%_)))
                                              (let ((_%hd9567895729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9567795725%_)))
                                                    (_%tl9567995732%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9567795725%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9567995732%_)
                                                    (let ((_%e9568095735%_
                                                           (gx#syntax-e
                                                            _%tl9567995732%_)))
                                                      (let ((_%hd9568195739%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9568095735%_)))
                    (_%tl9568295742%_
                     (let () (declare (not safe)) (##cdr _%e9568095735%_))))
                (if (gx#stx-null? _%tl9568295742%_)
                    ((lambda (_%L95745%_ _%L95747%_ _%L95748%_ _%L95749%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L95749%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L95748%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L95747%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L95745%_
                                     (cons _%L95749%_ (cons _%L95748%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9568195739%_
                     _%hd9567895729%_
                     _%hd9567595719%_
                     _%hd9567295709%_)
                    (_%g9566295688%_ _%g9566395692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9566295688%_
                                                     _%g9566395692%_))))
                                            (_%g9566295688%_
                                             _%g9566395692%_))))
                                    (_%g9566295688%_ _%g9566395692%_))))
                            (_%g9566295688%_ _%g9566395692%_))))
                    (_%g9566295688%_ _%g9566395692%_)))))
        (_%g9566195771%_ _%$stx95658%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx95775%_)
      (let* ((_%g9577995808%_
              (lambda (_%g9578095804%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9578095804%_)))
             (_%g9577895908%_
              (lambda (_%g9578095812%_)
                (if (gx#stx-pair? _%g9578095812%_)
                    (let ((_%e9578395815%_ (gx#syntax-e _%g9578095812%_)))
                      (let ((_%hd9578495819%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9578395815%_)))
                            (_%tl9578595822%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9578395815%_))))
                        (if (gx#stx-pair/null? _%tl9578595822%_)
                            (let ((_g101605_
                                   (gx#syntax-split-splice
                                    _%tl9578595822%_
                                    '0)))
                              (begin
                                (let ((_g101606_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g101605_)
                                             (##vector-length _g101605_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g101606_ 2)))
                                      (error "Context expects 2 values"
                                             _g101606_)))
                                (let ((_%target9578695825%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g101605_ 0)))
                                      (_%tl9578895828%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g101605_ 1))))
                                  (if (gx#stx-null? _%tl9578895828%_)
                                      (letrec ((_%loop9578995831%_
                                                (lambda (_%hd9578795835%_
                                                         _%name9579395838%_
                                                         _%t9579495840%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9578795835%_)
                                                      (let ((_%e9579095843%_
                                                             (gx#syntax-e
                                                              _%hd9578795835%_)))
                                                        (let ((_%lp-hd9579195847%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9579095843%_)))
                      (_%lp-tl9579295850%_
                       (let () (declare (not safe)) (##cdr _%e9579095843%_))))
                  (if (gx#stx-pair? _%lp-hd9579195847%_)
                      (let ((_%e9579795853%_
                             (gx#syntax-e _%lp-hd9579195847%_)))
                        (let ((_%hd9579895857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9579795853%_)))
                              (_%tl9579995860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9579795853%_))))
                          (if (gx#stx-pair? _%tl9579995860%_)
                              (let ((_%e9580095863%_
                                     (gx#syntax-e _%tl9579995860%_)))
                                (let ((_%hd9580195867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9580095863%_)))
                                      (_%tl9580295870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9580095863%_))))
                                  (if (gx#stx-null? _%tl9580295870%_)
                                      (_%loop9578995831%_
                                       _%lp-tl9579295850%_
                                       (cons _%hd9580195867%_
                                             _%name9579395838%_)
                                       (cons _%hd9579895857%_ _%t9579495840%_))
                                      (_%g9577995808%_ _%g9578095812%_))))
                              (_%g9577995808%_ _%g9578095812%_))))
                      (_%g9577995808%_ _%g9578095812%_))))
              (let ((_%name9579595873%_ (reverse _%name9579395838%_))
                    (_%t9579695876%_ (reverse _%t9579495840%_)))
                ((lambda (_%L95879%_ _%L95881%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L95879%_
                            _%L95881%_)
                           (let ((__tmp101607
                                  (lambda (_%g9589695900%_
                                           _%g9589795903%_
                                           _%g9589895905%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9589795903%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9589695900%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9589895905%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp101607
                              '()
                              _%L95879%_
                              _%L95881%_)))))
                 _%name9579595873%_
                 _%t9579695876%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9578995831%_
                                         _%target9578695825%_
                                         '()
                                         '()))
                                      (_%g9577995808%_ _%g9578095812%_)))))
                            (_%g9577995808%_ _%g9578095812%_))))
                    (_%g9577995808%_ _%g9578095812%_)))))
        (_%g9577895908%_ _%$stx95775%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx95913%_)
      (let* ((_%g9591795948%_
              (lambda (_%g9591895944%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9591895944%_)))
             (_%g9591696067%_
              (lambda (_%g9591895952%_)
                (if (gx#stx-pair? _%g9591895952%_)
                    (let ((_%e9592295955%_ (gx#syntax-e _%g9591895952%_)))
                      (let ((_%hd9592395959%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9592295955%_)))
                            (_%tl9592495962%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9592295955%_))))
                        (if (gx#stx-pair? _%tl9592495962%_)
                            (let ((_%e9592595965%_
                                   (gx#syntax-e _%tl9592495962%_)))
                              (let ((_%hd9592695969%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9592595965%_)))
                                    (_%tl9592795972%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9592595965%_))))
                                (if (gx#stx-pair? _%tl9592795972%_)
                                    (let ((_%e9592895975%_
                                           (gx#syntax-e _%tl9592795972%_)))
                                      (let ((_%hd9592995979%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9592895975%_)))
                                            (_%tl9593095982%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9592895975%_))))
                                        (if (gx#stx-pair? _%tl9593095982%_)
                                            (let ((_%e9593195985%_
                                                   (gx#syntax-e
                                                    _%tl9593095982%_)))
                                              (let ((_%hd9593295989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9593195985%_)))
                                                    (_%tl9593395992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9593195985%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9593295989%_)
                                                    (let ((_g101608_
                                                           (gx#syntax-split-splice
                                                            _%hd9593295989%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g101609_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g101608_)
                             (##vector-length _g101608_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g101609_ 2)))
                      (error "Context expects 2 values" _g101609_)))
                (let ((_%target9593495995%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g101608_ 0)))
                      (_%tl9593695998%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g101608_ 1))))
                  (if (gx#stx-null? _%tl9593695998%_)
                      (letrec ((_%loop9593796001%_
                                (lambda (_%hd9593596005%_ _%super9594196008%_)
                                  (if (gx#stx-pair? _%hd9593596005%_)
                                      (let ((_%e9593896011%_
                                             (gx#syntax-e _%hd9593596005%_)))
                                        (let ((_%lp-hd9593996015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9593896011%_)))
                                              (_%lp-tl9594096018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9593896011%_))))
                                          (_%loop9593796001%_
                                           _%lp-tl9594096018%_
                                           (cons _%lp-hd9593996015%_
                                                 _%super9594196008%_))))
                                      (let ((_%super9594296021%_
                                             (reverse _%super9594196008%_)))
                                        (if (gx#stx-null? _%tl9593395992%_)
                                            ((lambda (_%L96025%_
                                                      _%L96027%_
                                                      _%L96028%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L96028%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L96027%_
                                                 (cons (let ((__tmp101610
                                                              (lambda (_%g9605296055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9605396058%_)
                        (cons _%g9605296055%_ _%g9605396058%_))))
                 (declare (not safe))
                 (__foldr1 __tmp101610 '() _%L96025%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L96027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp101611
                                  (lambda (_%g9605096061%_ _%g9605196064%_)
                                    (cons _%g9605096061%_ _%g9605196064%_))))
                             (declare (not safe))
                             (__foldr1 __tmp101611 '() _%L96025%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9594296021%_
                                             _%hd9592995979%_
                                             _%hd9592695969%_)
                                            (_%g9591795948%_
                                             _%g9591895952%_)))))))
                        (_%loop9593796001%_ _%target9593495995%_ '()))
                      (_%g9591795948%_ _%g9591895952%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9591795948%_
                                                     _%g9591895952%_))))
                                            (_%g9591795948%_
                                             _%g9591895952%_))))
                                    (_%g9591795948%_ _%g9591895952%_))))
                            (_%g9591795948%_ _%g9591895952%_))))
                    (_%g9591795948%_ _%g9591895952%_)))))
        (_%g9591696067%_ _%$stx95913%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx96072%_)
      (let* ((_%g9607696107%_
              (lambda (_%g9607796103%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9607796103%_)))
             (_%g9607596218%_
              (lambda (_%g9607796111%_)
                (if (gx#stx-pair? _%g9607796111%_)
                    (let ((_%e9608196114%_ (gx#syntax-e _%g9607796111%_)))
                      (let ((_%hd9608296118%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9608196114%_)))
                            (_%tl9608396121%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9608196114%_))))
                        (if (gx#stx-pair? _%tl9608396121%_)
                            (let ((_%e9608496124%_
                                   (gx#syntax-e _%tl9608396121%_)))
                              (let ((_%hd9608596128%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9608496124%_)))
                                    (_%tl9608696131%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9608496124%_))))
                                (if (gx#stx-pair? _%tl9608696131%_)
                                    (let ((_%e9608796134%_
                                           (gx#syntax-e _%tl9608696131%_)))
                                      (let ((_%hd9608896138%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9608796134%_)))
                                            (_%tl9608996141%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9608796134%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9608896138%_)
                                            (let ((_g101612_
                                                   (gx#syntax-split-splice
                                                    _%hd9608896138%_
                                                    '0)))
                                              (begin
                                                (let ((_g101613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g101612_)
                                                             (##vector-length
                                                              _g101612_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g101613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g101613_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9609096144%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g101612_
                                                          0)))
                                                      (_%tl9609296147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g101612_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9609296147%_)
                                                      (letrec ((_%loop9609396150%_
                                                                (lambda (_%hd9609196154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9609796157%_)
                          (if (gx#stx-pair? _%hd9609196154%_)
                              (let ((_%e9609496160%_
                                     (gx#syntax-e _%hd9609196154%_)))
                                (let ((_%lp-hd9609596164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9609496160%_)))
                                      (_%lp-tl9609696167%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9609496160%_))))
                                  (_%loop9609396150%_
                                   _%lp-tl9609696167%_
                                   (cons _%lp-hd9609596164%_
                                         _%super9609796157%_))))
                              (let ((_%super9609896170%_
                                     (reverse _%super9609796157%_)))
                                (if (gx#stx-pair? _%tl9608996141%_)
                                    (let ((_%e9609996174%_
                                           (gx#syntax-e _%tl9608996141%_)))
                                      (let ((_%hd9610096178%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9609996174%_)))
                                            (_%tl9610196181%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9609996174%_))))
                                        (if (gx#stx-null? _%tl9610196181%_)
                                            ((lambda (_%L96184%_
                                                      _%L96186%_
                                                      _%L96187%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L96187%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L96187%_
                                                 (cons (let ((__tmp101614
                                                              (lambda (_%g9620996212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9621096215%_)
                        (cons _%g9620996212%_ _%g9621096215%_))))
                 (declare (not safe))
                 (__foldr1 __tmp101614 '() _%L96186%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L96184%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9610096178%_
                                             _%super9609896170%_
                                             _%hd9608596128%_)
                                            (_%g9607696107%_
                                             _%g9607796111%_))))
                                    (_%g9607696107%_ _%g9607796111%_)))))))
                (_%loop9609396150%_ _%target9609096144%_ '()))
              (_%g9607696107%_ _%g9607796111%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9607696107%_
                                             _%g9607796111%_))))
                                    (_%g9607696107%_ _%g9607796111%_))))
                            (_%g9607696107%_ _%g9607796111%_))))
                    (_%g9607696107%_ _%g9607796111%_)))))
        (_%g9607596218%_ _%$stx96072%_)))))
