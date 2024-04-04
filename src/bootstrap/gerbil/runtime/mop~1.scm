(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx91522%_)
      (let* ((_%__stx9804398044%_ _%$stx91522%_)
             (_%g9152791556%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9804398044%_))))
        (let ((_%__kont9804698047%_
               (lambda (_%L91649%_ _%L91651%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91651%_ (cons _%L91649%_ '())))
                             (cons _%L91649%_ '())))))
              (_%__kont9804898049%_
               (lambda (_%L91593%_ _%L91595%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91593%_ (cons _%L91593%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91595%_
                                                           (cons _%L91593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L91593%_ '())))
                                   '()))))))
          (let ((_%__match9807098071%_
                 (lambda (_%e9153391619%_
                          _%hd9153291623%_
                          _%tl9153191626%_
                          _%e9153691629%_
                          _%hd9153591633%_
                          _%tl9153491636%_
                          _%e9153991639%_
                          _%hd9153891643%_
                          _%tl9153791646%_)
                   (let ((_%L91649%_ _%hd9153891643%_)
                         (_%L91651%_ _%hd9153591633%_))
                     (if (or (gx#identifier? _%L91649%_)
                             (gx#stx-fixnum? _%L91649%_))
                         (_%__kont9804698047%_ _%L91649%_ _%L91651%_)
                         (_%__kont9804898049%_
                          _%hd9153891643%_
                          _%hd9153591633%_))))))
            (if (gx#stx-pair? _%__stx9804398044%_)
                (let ((_%e9153391619%_ (gx#syntax-e _%__stx9804398044%_)))
                  (let ((_%tl9153191626%_
                         (let () (declare (not safe)) (##cdr _%e9153391619%_)))
                        (_%hd9153291623%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9153391619%_))))
                    (if (gx#stx-pair? _%tl9153191626%_)
                        (let ((_%e9153691629%_ (gx#syntax-e _%tl9153191626%_)))
                          (let ((_%tl9153491636%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9153691629%_)))
                                (_%hd9153591633%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9153691629%_))))
                            (if (gx#stx-pair? _%tl9153491636%_)
                                (let ((_%e9153991639%_
                                       (gx#syntax-e _%tl9153491636%_)))
                                  (let ((_%tl9153791646%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9153991639%_)))
                                        (_%hd9153891643%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9153991639%_))))
                                    (if (gx#stx-null? _%tl9153791646%_)
                                        (_%__match9807098071%_
                                         _%e9153391619%_
                                         _%hd9153291623%_
                                         _%tl9153191626%_
                                         _%e9153691629%_
                                         _%hd9153591633%_
                                         _%tl9153491636%_
                                         _%e9153991639%_
                                         _%hd9153891643%_
                                         _%tl9153791646%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9152791556%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9152791556%_)))))
                        (let () (declare (not safe)) (_%g9152791556%_)))))
                (let () (declare (not safe)) (_%g9152791556%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx91674%_)
      (let* ((_%__stx9809398094%_ _%$stx91674%_)
             (_%g9167991708%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9809398094%_))))
        (let ((_%__kont9809698097%_
               (lambda (_%L91800%_ _%L91802%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91802%_ (cons _%L91800%_ '())))
                             (cons '0 '())))))
              (_%__kont9809898099%_
               (lambda (_%L91745%_ _%L91747%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91745%_ (cons _%L91745%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91747%_
                                                           (cons _%L91745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9812098121%_
                 (lambda (_%e9168591770%_
                          _%hd9168491774%_
                          _%tl9168391777%_
                          _%e9168891780%_
                          _%hd9168791784%_
                          _%tl9168691787%_
                          _%e9169191790%_
                          _%hd9169091794%_
                          _%tl9168991797%_)
                   (let ((_%L91800%_ _%hd9169091794%_)
                         (_%L91802%_ _%hd9168791784%_))
                     (if (or (gx#identifier? _%L91800%_)
                             (gx#stx-fixnum? _%L91800%_))
                         (_%__kont9809698097%_ _%L91800%_ _%L91802%_)
                         (_%__kont9809898099%_
                          _%hd9169091794%_
                          _%hd9168791784%_))))))
            (if (gx#stx-pair? _%__stx9809398094%_)
                (let ((_%e9168591770%_ (gx#syntax-e _%__stx9809398094%_)))
                  (let ((_%tl9168391777%_
                         (let () (declare (not safe)) (##cdr _%e9168591770%_)))
                        (_%hd9168491774%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9168591770%_))))
                    (if (gx#stx-pair? _%tl9168391777%_)
                        (let ((_%e9168891780%_ (gx#syntax-e _%tl9168391777%_)))
                          (let ((_%tl9168691787%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9168891780%_)))
                                (_%hd9168791784%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9168891780%_))))
                            (if (gx#stx-pair? _%tl9168691787%_)
                                (let ((_%e9169191790%_
                                       (gx#syntax-e _%tl9168691787%_)))
                                  (let ((_%tl9168991797%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9169191790%_)))
                                        (_%hd9169091794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9169191790%_))))
                                    (if (gx#stx-null? _%tl9168991797%_)
                                        (_%__match9812098121%_
                                         _%e9168591770%_
                                         _%hd9168491774%_
                                         _%tl9168391777%_
                                         _%e9168891780%_
                                         _%hd9168791784%_
                                         _%tl9168691787%_
                                         _%e9169191790%_
                                         _%hd9169091794%_
                                         _%tl9168991797%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9167991708%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9167991708%_)))))
                        (let () (declare (not safe)) (_%g9167991708%_)))))
                (let () (declare (not safe)) (_%g9167991708%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx91825%_)
      (let* ((_%g9182891849%_
              (lambda (_%g9182991845%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9182991845%_)))
             (_%g9182792077%_
              (lambda (_%g9182991853%_)
                (if (gx#stx-pair? _%g9182991853%_)
                    (let ((_%e9183491856%_ (gx#syntax-e _%g9182991853%_)))
                      (let ((_%hd9183391860%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9183491856%_)))
                            (_%tl9183291863%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9183491856%_))))
                        (if (gx#stx-pair? _%tl9183291863%_)
                            (let ((_%e9183791866%_
                                   (gx#syntax-e _%tl9183291863%_)))
                              (let ((_%hd9183691870%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9183791866%_)))
                                    (_%tl9183591873%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9183791866%_))))
                                (if (gx#stx-pair? _%hd9183691870%_)
                                    (let ((_%e9184091876%_
                                           (gx#syntax-e _%hd9183691870%_)))
                                      (let ((_%hd9183991880%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9184091876%_)))
                                            (_%tl9183891883%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9184091876%_))))
                                        (if (gx#stx-pair? _%tl9183891883%_)
                                            (let ((_%e9184391886%_
                                                   (gx#syntax-e
                                                    _%tl9183891883%_)))
                                              (let ((_%hd9184291890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9184391886%_)))
                                                    (_%tl9184191893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9184391886%_))))
                                                (if (gx#stx-null?
                                                     _%tl9184191893%_)
                                                    (if (gx#stx-null?
                                                         _%tl9183591873%_)
                                                        ((lambda (_%L91896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L91898%_)
                   (let* ((_%g9191691924%_
                           (lambda (_%g9191791920%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9191791920%_)))
                          (_%g9191592073%_
                           (lambda (_%g9191791928%_)
                             ((lambda (_%L91931%_)
                                (let ()
                                  (let* ((_%g9194391951%_
                                          (lambda (_%g9194491947%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g9194491947%_)))
                                         (_%g9194292069%_
                                          (lambda (_%g9194491955%_)
                                            ((lambda (_%L91958%_)
                                               (let ()
                                                 (let* ((_%g9197191979%_
                                                         (lambda (_%g9197291975%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g9197291975%_)))
                                                        (_%g9197092065%_
                                                         (lambda (_%g9197291983%_)
                                                           ((lambda (_%L91986%_)
                                                              (let ()
                                                                (let* ((_%g9199992007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g9200092003%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g9200092003%_)))
                               (_%g9199892061%_
                                (lambda (_%g9200092011%_)
                                  ((lambda (_%L92014%_)
                                     (let ()
                                       (let* ((_%g9202792035%_
                                               (lambda (_%g9202892031%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g9202892031%_)))
                                              (_%g9202692057%_
                                               (lambda (_%g9202892039%_)
                                                 ((lambda (_%L92042%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'def)
                                (cons _%L91958%_
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@mop.accessor)
                                                              (cons _%L91931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L91898%_ (cons '#t '()))))
                (cons (cons (gx#datum->syntax '#f 'lambda)
                            (cons (cons (gx#datum->syntax '#f 'klass) '())
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '##structure-ref)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'klass)
                                                    (cons _%L91896%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'class::t)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%L91898%_ '()))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons _%L91986%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@mop.accessor)
                            (cons _%L91931%_ (cons _%L91898%_ (cons '#f '()))))
                      (cons (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f 'klass)
                                              '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##unchecked-structure-ref)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'klass)
                                                          (cons _%L91896%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'class::t)
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _%L91898%_ '()))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons (cons (gx#datum->syntax '#f 'def)
                                            (cons _%L92014%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@mop.mutator)
                                  (cons _%L91931%_
                                        (cons _%L91898%_ (cons '#t '()))))
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
                              (cons _%L91896%_
                                    (cons (gx#datum->syntax '#f 'class::t)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%L91898%_ '()))
                                                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L92042%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                        (cons _%L91931%_
                                              (cons _%L91898%_
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
                                    (cons _%L91896%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'class::t)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L91898%_
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
                                                  _%g9202892039%_))))
                                         (_%g9202692057%_
                                          (gx#stx-identifier
                                           _%L91898%_
                                           '"&"
                                           _%L92014%_)))))
                                   _%g9200092011%_))))
                          (_%g9199892061%_
                           (gx#stx-identifier
                            _%L91898%_
                            _%L91958%_
                            '"-set!")))))
                    _%g9197291983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g9197092065%_
                                                    (gx#stx-identifier
                                                     _%L91898%_
                                                     '"&"
                                                     _%L91958%_)))))
                                             _%g9194491955%_))))
                                    (_%g9194292069%_
                                     (gx#stx-identifier
                                      _%L91898%_
                                      '"class-type-"
                                      _%L91898%_)))))
                              _%g9191791928%_))))
                     (_%g9191592073%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9184291890%_
                 _%hd9183991880%_)
                (_%g9182891849%_ _%g9182991853%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9182891849%_
                                                     _%g9182991853%_))))
                                            (_%g9182891849%_
                                             _%g9182991853%_))))
                                    (_%g9182891849%_ _%g9182991853%_))))
                            (_%g9182891849%_ _%g9182991853%_))))
                    (_%g9182891849%_ _%g9182991853%_)))))
        (_%g9182792077%_ _%stx91825%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx92081%_)
      (let* ((_%g9208592114%_
              (lambda (_%g9208692110%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9208692110%_)))
             (_%g9208492214%_
              (lambda (_%g9208692118%_)
                (if (gx#stx-pair? _%g9208692118%_)
                    (let ((_%e9209192121%_ (gx#syntax-e _%g9208692118%_)))
                      (let ((_%hd9209092125%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9209192121%_)))
                            (_%tl9208992128%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9209192121%_))))
                        (if (gx#stx-pair/null? _%tl9208992128%_)
                            (let ((_g98412_
                                   (gx#syntax-split-splice
                                    _%tl9208992128%_
                                    '0)))
                              (begin
                                (let ((_g98413_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98412_)
                                             (##vector-length _g98412_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98413_ 2)))
                                      (error "Context expects 2 values"
                                             _g98413_)))
                                (let ((_%target9209292131%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98412_ 0)))
                                      (_%tl9209492134%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98412_ 1))))
                                  (if (gx#stx-null? _%tl9209492134%_)
                                      (letrec ((_%loop9209592137%_
                                                (lambda (_%hd9209392141%_
                                                         _%field9209992144%_
                                                         _%slot9210092146%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9209392141%_)
                                                      (let ((_%e9209692149%_
                                                             (gx#syntax-e
                                                              _%hd9209392141%_)))
                                                        (let ((_%lp-hd9209792153%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9209692149%_)))
                      (_%lp-tl9209892156%_
                       (let () (declare (not safe)) (##cdr _%e9209692149%_))))
                  (if (gx#stx-pair? _%lp-hd9209792153%_)
                      (let ((_%e9210592159%_
                             (gx#syntax-e _%lp-hd9209792153%_)))
                        (let ((_%hd9210492163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9210592159%_)))
                              (_%tl9210392166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9210592159%_))))
                          (if (gx#stx-pair? _%tl9210392166%_)
                              (let ((_%e9210892169%_
                                     (gx#syntax-e _%tl9210392166%_)))
                                (let ((_%hd9210792173%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9210892169%_)))
                                      (_%tl9210692176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9210892169%_))))
                                  (if (gx#stx-null? _%tl9210692176%_)
                                      (_%loop9209592137%_
                                       _%lp-tl9209892156%_
                                       (cons _%hd9210792173%_
                                             _%field9209992144%_)
                                       (cons _%hd9210492163%_
                                             _%slot9210092146%_))
                                      (_%g9208592114%_ _%g9208692118%_))))
                              (_%g9208592114%_ _%g9208692118%_))))
                      (_%g9208592114%_ _%g9208692118%_))))
              (let ((_%field9210192179%_ (reverse _%field9209992144%_))
                    (_%slot9210292182%_ (reverse _%slot9210092146%_)))
                ((lambda (_%L92185%_ _%L92187%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92185%_
                            _%L92187%_)
                           (let ((__tmp98414
                                  (lambda (_%g9220292206%_
                                           _%g9220392209%_
                                           _%g9220492211%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9220392209%_
                                                            (cons _%g9220292206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9220492211%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp98414
                              '()
                              _%L92185%_
                              _%L92187%_)))))
                 _%field9210192179%_
                 _%slot9210292182%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9209592137%_
                                         _%target9209292131%_
                                         '()
                                         '()))
                                      (_%g9208592114%_ _%g9208692118%_)))))
                            (_%g9208592114%_ _%g9208692118%_))))
                    (_%g9208592114%_ _%g9208692118%_)))))
        (_%g9208492214%_ _%$stx92081%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx92219%_)
      (let* ((_%g9222392257%_
              (lambda (_%g9222492253%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9222492253%_)))
             (_%g9222292368%_
              (lambda (_%g9222492261%_)
                (if (gx#stx-pair? _%g9222492261%_)
                    (let ((_%e9223392264%_ (gx#syntax-e _%g9222492261%_)))
                      (let ((_%hd9223292268%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9223392264%_)))
                            (_%tl9223192271%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9223392264%_))))
                        (if (gx#stx-pair? _%tl9223192271%_)
                            (let ((_%e9223692274%_
                                   (gx#syntax-e _%tl9223192271%_)))
                              (let ((_%hd9223592278%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9223692274%_)))
                                    (_%tl9223492281%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9223692274%_))))
                                (if (gx#stx-pair? _%tl9223492281%_)
                                    (let ((_%e9223992284%_
                                           (gx#syntax-e _%tl9223492281%_)))
                                      (let ((_%hd9223892288%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9223992284%_)))
                                            (_%tl9223792291%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9223992284%_))))
                                        (if (gx#stx-pair? _%tl9223792291%_)
                                            (let ((_%e9224292294%_
                                                   (gx#syntax-e
                                                    _%tl9223792291%_)))
                                              (let ((_%hd9224192298%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9224292294%_)))
                                                    (_%tl9224092301%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9224292294%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9224092301%_)
                                                    (let ((_%e9224592304%_
                                                           (gx#syntax-e
                                                            _%tl9224092301%_)))
                                                      (let ((_%hd9224492308%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9224592304%_)))
                    (_%tl9224392311%_
                     (let () (declare (not safe)) (##cdr _%e9224592304%_))))
                (if (gx#stx-pair? _%tl9224392311%_)
                    (let ((_%e9224892314%_ (gx#syntax-e _%tl9224392311%_)))
                      (let ((_%hd9224792318%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9224892314%_)))
                            (_%tl9224692321%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9224892314%_))))
                        (if (gx#stx-pair? _%tl9224692321%_)
                            (let ((_%e9225192324%_
                                   (gx#syntax-e _%tl9224692321%_)))
                              (let ((_%hd9225092328%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9225192324%_)))
                                    (_%tl9224992331%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9225192324%_))))
                                (if (gx#stx-null? _%tl9224992331%_)
                                    ((lambda (_%L92334%_
                                              _%L92336%_
                                              _%L92337%_
                                              _%L92338%_
                                              _%L92339%_
                                              _%L92340%_)
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
                                         (cons _%L92340%_ '()))
                                   (cons _%L92339%_ (cons '#f '()))))
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
                               (cons _%L92340%_
                                     (cons 'slot: (cons _%L92339%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L92340%_ '()))
                                         (cons (cons _%L92338%_
                                                     (cons _%L92340%_
                                                           (cons _%L92339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L92340%_ '()))
                                               (cons (cons _%L92337%_
                                                           (cons _%L92340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L92339%_
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
                                           (cons _%L92340%_ '()))
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
                                                     (cons (cons _%L92336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L92340%_
                               (cons _%L92339%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L92334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92340%_
                                     (cons _%L92339%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9225092328%_
                                     _%hd9224792318%_
                                     _%hd9224492308%_
                                     _%hd9224192298%_
                                     _%hd9223892288%_
                                     _%hd9223592278%_)
                                    (_%g9222392257%_ _%g9222492261%_))))
                            (_%g9222392257%_ _%g9222492261%_))))
                    (_%g9222392257%_ _%g9222492261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9222392257%_
                                                     _%g9222492261%_))))
                                            (_%g9222392257%_
                                             _%g9222492261%_))))
                                    (_%g9222392257%_ _%g9222492261%_))))
                            (_%g9222392257%_ _%g9222492261%_))))
                    (_%g9222392257%_ _%g9222492261%_)))))
        (_%g9222292368%_ _%$stx92219%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx92372%_)
      (let* ((_%g9237692402%_
              (lambda (_%g9237792398%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9237792398%_)))
             (_%g9237592485%_
              (lambda (_%g9237792406%_)
                (if (gx#stx-pair? _%g9237792406%_)
                    (let ((_%e9238492409%_ (gx#syntax-e _%g9237792406%_)))
                      (let ((_%hd9238392413%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9238492409%_)))
                            (_%tl9238292416%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9238492409%_))))
                        (if (gx#stx-pair? _%tl9238292416%_)
                            (let ((_%e9238792419%_
                                   (gx#syntax-e _%tl9238292416%_)))
                              (let ((_%hd9238692423%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9238792419%_)))
                                    (_%tl9238592426%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9238792419%_))))
                                (if (gx#stx-pair? _%tl9238592426%_)
                                    (let ((_%e9239092429%_
                                           (gx#syntax-e _%tl9238592426%_)))
                                      (let ((_%hd9238992433%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9239092429%_)))
                                            (_%tl9238892436%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9239092429%_))))
                                        (if (gx#stx-pair? _%tl9238892436%_)
                                            (let ((_%e9239392439%_
                                                   (gx#syntax-e
                                                    _%tl9238892436%_)))
                                              (let ((_%hd9239292443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9239392439%_)))
                                                    (_%tl9239192446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9239392439%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9239192446%_)
                                                    (let ((_%e9239692449%_
                                                           (gx#syntax-e
                                                            _%tl9239192446%_)))
                                                      (let ((_%hd9239592453%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9239692449%_)))
                    (_%tl9239492456%_
                     (let () (declare (not safe)) (##cdr _%e9239692449%_))))
                (if (gx#stx-null? _%tl9239492456%_)
                    ((lambda (_%L92459%_ _%L92461%_ _%L92462%_ _%L92463%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L92463%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L92462%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L92461%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L92459%_
                                     (cons _%L92463%_ (cons _%L92462%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9239592453%_
                     _%hd9239292443%_
                     _%hd9238992433%_
                     _%hd9238692423%_)
                    (_%g9237692402%_ _%g9237792406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9237692402%_
                                                     _%g9237792406%_))))
                                            (_%g9237692402%_
                                             _%g9237792406%_))))
                                    (_%g9237692402%_ _%g9237792406%_))))
                            (_%g9237692402%_ _%g9237792406%_))))
                    (_%g9237692402%_ _%g9237792406%_)))))
        (_%g9237592485%_ _%$stx92372%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx92489%_)
      (let* ((_%g9249392522%_
              (lambda (_%g9249492518%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9249492518%_)))
             (_%g9249292622%_
              (lambda (_%g9249492526%_)
                (if (gx#stx-pair? _%g9249492526%_)
                    (let ((_%e9249992529%_ (gx#syntax-e _%g9249492526%_)))
                      (let ((_%hd9249892533%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9249992529%_)))
                            (_%tl9249792536%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9249992529%_))))
                        (if (gx#stx-pair/null? _%tl9249792536%_)
                            (let ((_g98415_
                                   (gx#syntax-split-splice
                                    _%tl9249792536%_
                                    '0)))
                              (begin
                                (let ((_g98416_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98415_)
                                             (##vector-length _g98415_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98416_ 2)))
                                      (error "Context expects 2 values"
                                             _g98416_)))
                                (let ((_%target9250092539%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98415_ 0)))
                                      (_%tl9250292542%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98415_ 1))))
                                  (if (gx#stx-null? _%tl9250292542%_)
                                      (letrec ((_%loop9250392545%_
                                                (lambda (_%hd9250192549%_
                                                         _%name9250792552%_
                                                         _%t9250892554%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9250192549%_)
                                                      (let ((_%e9250492557%_
                                                             (gx#syntax-e
                                                              _%hd9250192549%_)))
                                                        (let ((_%lp-hd9250592561%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9250492557%_)))
                      (_%lp-tl9250692564%_
                       (let () (declare (not safe)) (##cdr _%e9250492557%_))))
                  (if (gx#stx-pair? _%lp-hd9250592561%_)
                      (let ((_%e9251392567%_
                             (gx#syntax-e _%lp-hd9250592561%_)))
                        (let ((_%hd9251292571%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9251392567%_)))
                              (_%tl9251192574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9251392567%_))))
                          (if (gx#stx-pair? _%tl9251192574%_)
                              (let ((_%e9251692577%_
                                     (gx#syntax-e _%tl9251192574%_)))
                                (let ((_%hd9251592581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9251692577%_)))
                                      (_%tl9251492584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9251692577%_))))
                                  (if (gx#stx-null? _%tl9251492584%_)
                                      (_%loop9250392545%_
                                       _%lp-tl9250692564%_
                                       (cons _%hd9251592581%_
                                             _%name9250792552%_)
                                       (cons _%hd9251292571%_ _%t9250892554%_))
                                      (_%g9249392522%_ _%g9249492526%_))))
                              (_%g9249392522%_ _%g9249492526%_))))
                      (_%g9249392522%_ _%g9249492526%_))))
              (let ((_%name9250992587%_ (reverse _%name9250792552%_))
                    (_%t9251092590%_ (reverse _%t9250892554%_)))
                ((lambda (_%L92593%_ _%L92595%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92593%_
                            _%L92595%_)
                           (let ((__tmp98417
                                  (lambda (_%g9261092614%_
                                           _%g9261192617%_
                                           _%g9261292619%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9261192617%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9261092614%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9261292619%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp98417
                              '()
                              _%L92593%_
                              _%L92595%_)))))
                 _%name9250992587%_
                 _%t9251092590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9250392545%_
                                         _%target9250092539%_
                                         '()
                                         '()))
                                      (_%g9249392522%_ _%g9249492526%_)))))
                            (_%g9249392522%_ _%g9249492526%_))))
                    (_%g9249392522%_ _%g9249492526%_)))))
        (_%g9249292622%_ _%$stx92489%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx92627%_)
      (let* ((_%g9263192662%_
              (lambda (_%g9263292658%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9263292658%_)))
             (_%g9263092781%_
              (lambda (_%g9263292666%_)
                (if (gx#stx-pair? _%g9263292666%_)
                    (let ((_%e9263892669%_ (gx#syntax-e _%g9263292666%_)))
                      (let ((_%hd9263792673%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9263892669%_)))
                            (_%tl9263692676%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9263892669%_))))
                        (if (gx#stx-pair? _%tl9263692676%_)
                            (let ((_%e9264192679%_
                                   (gx#syntax-e _%tl9263692676%_)))
                              (let ((_%hd9264092683%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9264192679%_)))
                                    (_%tl9263992686%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9264192679%_))))
                                (if (gx#stx-pair? _%tl9263992686%_)
                                    (let ((_%e9264492689%_
                                           (gx#syntax-e _%tl9263992686%_)))
                                      (let ((_%hd9264392693%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9264492689%_)))
                                            (_%tl9264292696%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9264492689%_))))
                                        (if (gx#stx-pair? _%tl9264292696%_)
                                            (let ((_%e9264792699%_
                                                   (gx#syntax-e
                                                    _%tl9264292696%_)))
                                              (let ((_%hd9264692703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9264792699%_)))
                                                    (_%tl9264592706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9264792699%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9264692703%_)
                                                    (let ((_g98418_
                                                           (gx#syntax-split-splice
                                                            _%hd9264692703%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g98419_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g98418_)
                             (##vector-length _g98418_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98419_ 2)))
                      (error "Context expects 2 values" _g98419_)))
                (let ((_%target9264892709%_
                       (let () (declare (not safe)) (##vector-ref _g98418_ 0)))
                      (_%tl9265092712%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98418_ 1))))
                  (if (gx#stx-null? _%tl9265092712%_)
                      (letrec ((_%loop9265192715%_
                                (lambda (_%hd9264992719%_ _%super9265592722%_)
                                  (if (gx#stx-pair? _%hd9264992719%_)
                                      (let ((_%e9265292725%_
                                             (gx#syntax-e _%hd9264992719%_)))
                                        (let ((_%lp-hd9265392729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9265292725%_)))
                                              (_%lp-tl9265492732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9265292725%_))))
                                          (_%loop9265192715%_
                                           _%lp-tl9265492732%_
                                           (cons _%lp-hd9265392729%_
                                                 _%super9265592722%_))))
                                      (let ((_%super9265692735%_
                                             (reverse _%super9265592722%_)))
                                        (if (gx#stx-null? _%tl9264592706%_)
                                            ((lambda (_%L92739%_
                                                      _%L92741%_
                                                      _%L92742%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92742%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92741%_
                                                 (cons (let ((__tmp98420
                                                              (lambda (_%g9276692769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9276792772%_)
                        (cons _%g9276692769%_ _%g9276792772%_))))
                 (declare (not safe))
                 (__foldr1 __tmp98420 '() _%L92739%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L92741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp98421
                                  (lambda (_%g9276492775%_ _%g9276592778%_)
                                    (cons _%g9276492775%_ _%g9276592778%_))))
                             (declare (not safe))
                             (__foldr1 __tmp98421 '() _%L92739%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9265692735%_
                                             _%hd9264392693%_
                                             _%hd9264092683%_)
                                            (_%g9263192662%_
                                             _%g9263292666%_)))))))
                        (_%loop9265192715%_ _%target9264892709%_ '()))
                      (_%g9263192662%_ _%g9263292666%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9263192662%_
                                                     _%g9263292666%_))))
                                            (_%g9263192662%_
                                             _%g9263292666%_))))
                                    (_%g9263192662%_ _%g9263292666%_))))
                            (_%g9263192662%_ _%g9263292666%_))))
                    (_%g9263192662%_ _%g9263292666%_)))))
        (_%g9263092781%_ _%$stx92627%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx92786%_)
      (let* ((_%g9279092821%_
              (lambda (_%g9279192817%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9279192817%_)))
             (_%g9278992932%_
              (lambda (_%g9279192825%_)
                (if (gx#stx-pair? _%g9279192825%_)
                    (let ((_%e9279792828%_ (gx#syntax-e _%g9279192825%_)))
                      (let ((_%hd9279692832%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9279792828%_)))
                            (_%tl9279592835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9279792828%_))))
                        (if (gx#stx-pair? _%tl9279592835%_)
                            (let ((_%e9280092838%_
                                   (gx#syntax-e _%tl9279592835%_)))
                              (let ((_%hd9279992842%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9280092838%_)))
                                    (_%tl9279892845%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9280092838%_))))
                                (if (gx#stx-pair? _%tl9279892845%_)
                                    (let ((_%e9280392848%_
                                           (gx#syntax-e _%tl9279892845%_)))
                                      (let ((_%hd9280292852%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9280392848%_)))
                                            (_%tl9280192855%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9280392848%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9280292852%_)
                                            (let ((_g98422_
                                                   (gx#syntax-split-splice
                                                    _%hd9280292852%_
                                                    '0)))
                                              (begin
                                                (let ((_g98423_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g98422_)
                                                             (##vector-length
                                                              _g98422_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g98423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g98423_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9280492858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g98422_
                                                          0)))
                                                      (_%tl9280692861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g98422_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9280692861%_)
                                                      (letrec ((_%loop9280792864%_
                                                                (lambda (_%hd9280592868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9281192871%_)
                          (if (gx#stx-pair? _%hd9280592868%_)
                              (let ((_%e9280892874%_
                                     (gx#syntax-e _%hd9280592868%_)))
                                (let ((_%lp-hd9280992878%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9280892874%_)))
                                      (_%lp-tl9281092881%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9280892874%_))))
                                  (_%loop9280792864%_
                                   _%lp-tl9281092881%_
                                   (cons _%lp-hd9280992878%_
                                         _%super9281192871%_))))
                              (let ((_%super9281292884%_
                                     (reverse _%super9281192871%_)))
                                (if (gx#stx-pair? _%tl9280192855%_)
                                    (let ((_%e9281592888%_
                                           (gx#syntax-e _%tl9280192855%_)))
                                      (let ((_%hd9281492892%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9281592888%_)))
                                            (_%tl9281392895%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9281592888%_))))
                                        (if (gx#stx-null? _%tl9281392895%_)
                                            ((lambda (_%L92898%_
                                                      _%L92900%_
                                                      _%L92901%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92901%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92901%_
                                                 (cons (let ((__tmp98424
                                                              (lambda (_%g9292392926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9292492929%_)
                        (cons _%g9292392926%_ _%g9292492929%_))))
                 (declare (not safe))
                 (__foldr1 __tmp98424 '() _%L92900%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L92898%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9281492892%_
                                             _%super9281292884%_
                                             _%hd9279992842%_)
                                            (_%g9279092821%_
                                             _%g9279192825%_))))
                                    (_%g9279092821%_ _%g9279192825%_)))))))
                (_%loop9280792864%_ _%target9280492858%_ '()))
              (_%g9279092821%_ _%g9279192825%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9279092821%_
                                             _%g9279192825%_))))
                                    (_%g9279092821%_ _%g9279192825%_))))
                            (_%g9279092821%_ _%g9279192825%_))))
                    (_%g9279092821%_ _%g9279192825%_)))))
        (_%g9278992932%_ _%$stx92786%_)))))
