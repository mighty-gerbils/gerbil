(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx90970%_)
      (let* ((_%__stx9747997480%_ _%$stx90970%_)
             (_%g9097591004%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9747997480%_))))
        (let ((_%__kont9748297483%_
               (lambda (_%L91097%_ _%L91099%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91099%_ (cons _%L91097%_ '())))
                             (cons _%L91097%_ '())))))
              (_%__kont9748497485%_
               (lambda (_%L91041%_ _%L91043%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91041%_ (cons _%L91041%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91043%_
                                                           (cons _%L91041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L91041%_ '())))
                                   '()))))))
          (let ((_%__match9750697507%_
                 (lambda (_%e9098191067%_
                          _%hd9098091071%_
                          _%tl9097991074%_
                          _%e9098491077%_
                          _%hd9098391081%_
                          _%tl9098291084%_
                          _%e9098791087%_
                          _%hd9098691091%_
                          _%tl9098591094%_)
                   (let ((_%L91097%_ _%hd9098691091%_)
                         (_%L91099%_ _%hd9098391081%_))
                     (if (or (gx#identifier? _%L91097%_)
                             (gx#stx-fixnum? _%L91097%_))
                         (_%__kont9748297483%_ _%L91097%_ _%L91099%_)
                         (_%__kont9748497485%_
                          _%hd9098691091%_
                          _%hd9098391081%_))))))
            (if (gx#stx-pair? _%__stx9747997480%_)
                (let ((_%e9098191067%_ (gx#syntax-e _%__stx9747997480%_)))
                  (let ((_%tl9097991074%_
                         (let () (declare (not safe)) (##cdr _%e9098191067%_)))
                        (_%hd9098091071%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9098191067%_))))
                    (if (gx#stx-pair? _%tl9097991074%_)
                        (let ((_%e9098491077%_ (gx#syntax-e _%tl9097991074%_)))
                          (let ((_%tl9098291084%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9098491077%_)))
                                (_%hd9098391081%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9098491077%_))))
                            (if (gx#stx-pair? _%tl9098291084%_)
                                (let ((_%e9098791087%_
                                       (gx#syntax-e _%tl9098291084%_)))
                                  (let ((_%tl9098591094%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9098791087%_)))
                                        (_%hd9098691091%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9098791087%_))))
                                    (if (gx#stx-null? _%tl9098591094%_)
                                        (_%__match9750697507%_
                                         _%e9098191067%_
                                         _%hd9098091071%_
                                         _%tl9097991074%_
                                         _%e9098491077%_
                                         _%hd9098391081%_
                                         _%tl9098291084%_
                                         _%e9098791087%_
                                         _%hd9098691091%_
                                         _%tl9098591094%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9097591004%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9097591004%_)))))
                        (let () (declare (not safe)) (_%g9097591004%_)))))
                (let () (declare (not safe)) (_%g9097591004%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx91122%_)
      (let* ((_%__stx9752997530%_ _%$stx91122%_)
             (_%g9112791156%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9752997530%_))))
        (let ((_%__kont9753297533%_
               (lambda (_%L91248%_ _%L91250%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91250%_ (cons _%L91248%_ '())))
                             (cons '0 '())))))
              (_%__kont9753497535%_
               (lambda (_%L91193%_ _%L91195%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91193%_ (cons _%L91193%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91195%_
                                                           (cons _%L91193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9755697557%_
                 (lambda (_%e9113391218%_
                          _%hd9113291222%_
                          _%tl9113191225%_
                          _%e9113691228%_
                          _%hd9113591232%_
                          _%tl9113491235%_
                          _%e9113991238%_
                          _%hd9113891242%_
                          _%tl9113791245%_)
                   (let ((_%L91248%_ _%hd9113891242%_)
                         (_%L91250%_ _%hd9113591232%_))
                     (if (or (gx#identifier? _%L91248%_)
                             (gx#stx-fixnum? _%L91248%_))
                         (_%__kont9753297533%_ _%L91248%_ _%L91250%_)
                         (_%__kont9753497535%_
                          _%hd9113891242%_
                          _%hd9113591232%_))))))
            (if (gx#stx-pair? _%__stx9752997530%_)
                (let ((_%e9113391218%_ (gx#syntax-e _%__stx9752997530%_)))
                  (let ((_%tl9113191225%_
                         (let () (declare (not safe)) (##cdr _%e9113391218%_)))
                        (_%hd9113291222%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9113391218%_))))
                    (if (gx#stx-pair? _%tl9113191225%_)
                        (let ((_%e9113691228%_ (gx#syntax-e _%tl9113191225%_)))
                          (let ((_%tl9113491235%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9113691228%_)))
                                (_%hd9113591232%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9113691228%_))))
                            (if (gx#stx-pair? _%tl9113491235%_)
                                (let ((_%e9113991238%_
                                       (gx#syntax-e _%tl9113491235%_)))
                                  (let ((_%tl9113791245%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9113991238%_)))
                                        (_%hd9113891242%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9113991238%_))))
                                    (if (gx#stx-null? _%tl9113791245%_)
                                        (_%__match9755697557%_
                                         _%e9113391218%_
                                         _%hd9113291222%_
                                         _%tl9113191225%_
                                         _%e9113691228%_
                                         _%hd9113591232%_
                                         _%tl9113491235%_
                                         _%e9113991238%_
                                         _%hd9113891242%_
                                         _%tl9113791245%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9112791156%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9112791156%_)))))
                        (let () (declare (not safe)) (_%g9112791156%_)))))
                (let () (declare (not safe)) (_%g9112791156%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx91273%_)
      (let* ((_%g9127691297%_
              (lambda (_%g9127791293%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9127791293%_)))
             (_%g9127591525%_
              (lambda (_%g9127791301%_)
                (if (gx#stx-pair? _%g9127791301%_)
                    (let ((_%e9128291304%_ (gx#syntax-e _%g9127791301%_)))
                      (let ((_%hd9128191308%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9128291304%_)))
                            (_%tl9128091311%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9128291304%_))))
                        (if (gx#stx-pair? _%tl9128091311%_)
                            (let ((_%e9128591314%_
                                   (gx#syntax-e _%tl9128091311%_)))
                              (let ((_%hd9128491318%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9128591314%_)))
                                    (_%tl9128391321%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9128591314%_))))
                                (if (gx#stx-pair? _%hd9128491318%_)
                                    (let ((_%e9128891324%_
                                           (gx#syntax-e _%hd9128491318%_)))
                                      (let ((_%hd9128791328%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9128891324%_)))
                                            (_%tl9128691331%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9128891324%_))))
                                        (if (gx#stx-pair? _%tl9128691331%_)
                                            (let ((_%e9129191334%_
                                                   (gx#syntax-e
                                                    _%tl9128691331%_)))
                                              (let ((_%hd9129091338%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9129191334%_)))
                                                    (_%tl9128991341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9129191334%_))))
                                                (if (gx#stx-null?
                                                     _%tl9128991341%_)
                                                    (if (gx#stx-null?
                                                         _%tl9128391321%_)
                                                        ((lambda (_%L91344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L91346%_)
                   (let* ((_%g9136491372%_
                           (lambda (_%g9136591368%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9136591368%_)))
                          (_%g9136391521%_
                           (lambda (_%g9136591376%_)
                             ((lambda (_%L91379%_)
                                (let ()
                                  (let* ((_%g9139191399%_
                                          (lambda (_%g9139291395%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g9139291395%_)))
                                         (_%g9139091517%_
                                          (lambda (_%g9139291403%_)
                                            ((lambda (_%L91406%_)
                                               (let ()
                                                 (let* ((_%g9141991427%_
                                                         (lambda (_%g9142091423%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g9142091423%_)))
                                                        (_%g9141891513%_
                                                         (lambda (_%g9142091431%_)
                                                           ((lambda (_%L91434%_)
                                                              (let ()
                                                                (let* ((_%g9144791455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g9144891451%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g9144891451%_)))
                               (_%g9144691509%_
                                (lambda (_%g9144891459%_)
                                  ((lambda (_%L91462%_)
                                     (let ()
                                       (let* ((_%g9147591483%_
                                               (lambda (_%g9147691479%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g9147691479%_)))
                                              (_%g9147491505%_
                                               (lambda (_%g9147691487%_)
                                                 ((lambda (_%L91490%_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'def)
                                  (cons _%L91406%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.accessor)
                        (cons _%L91379%_ (cons _%L91346%_ (cons '#t '()))))
                  (cons (cons (gx#datum->syntax '#f 'lambda)
                              (cons (cons (gx#datum->syntax '#f 'klass) '())
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##structure-ref)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons _%L91344%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class::t)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L91346%_ '()))
                                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L91434%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.accessor)
                              (cons _%L91379%_
                                    (cons _%L91346%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f 'klass)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##unchecked-structure-ref)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons _%L91344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L91346%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons _%L91462%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation)
                        (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                    (cons _%L91379%_
                                          (cons _%L91346%_ (cons '#t '()))))
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
                                (cons _%L91344%_
                                      (cons (gx#datum->syntax '#f 'class::t)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%L91346%_ '()))
                                                  '()))))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L91490%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                          (cons _%L91379%_
                                                (cons _%L91346%_
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
                                      (cons _%L91344%_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'class::t)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%L91346%_
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
                                                  _%g9147691487%_))))
                                         (_%g9147491505%_
                                          (gx#stx-identifier
                                           _%L91346%_
                                           '"&"
                                           _%L91462%_)))))
                                   _%g9144891459%_))))
                          (_%g9144691509%_
                           (gx#stx-identifier
                            _%L91346%_
                            _%L91406%_
                            '"-set!")))))
                    _%g9142091431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g9141891513%_
                                                    (gx#stx-identifier
                                                     _%L91346%_
                                                     '"&"
                                                     _%L91406%_)))))
                                             _%g9139291403%_))))
                                    (_%g9139091517%_
                                     (gx#stx-identifier
                                      _%L91346%_
                                      '"class-type-"
                                      _%L91346%_)))))
                              _%g9136591376%_))))
                     (_%g9136391521%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9129091338%_
                 _%hd9128791328%_)
                (_%g9127691297%_ _%g9127791301%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9127691297%_
                                                     _%g9127791301%_))))
                                            (_%g9127691297%_
                                             _%g9127791301%_))))
                                    (_%g9127691297%_ _%g9127791301%_))))
                            (_%g9127691297%_ _%g9127791301%_))))
                    (_%g9127691297%_ _%g9127791301%_)))))
        (_%g9127591525%_ _%stx91273%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx91529%_)
      (let* ((_%g9153391562%_
              (lambda (_%g9153491558%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9153491558%_)))
             (_%g9153291662%_
              (lambda (_%g9153491566%_)
                (if (gx#stx-pair? _%g9153491566%_)
                    (let ((_%e9153991569%_ (gx#syntax-e _%g9153491566%_)))
                      (let ((_%hd9153891573%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9153991569%_)))
                            (_%tl9153791576%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9153991569%_))))
                        (if (gx#stx-pair/null? _%tl9153791576%_)
                            (let ((_g97848_
                                   (gx#syntax-split-splice
                                    _%tl9153791576%_
                                    '0)))
                              (begin
                                (let ((_g97849_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97848_)
                                             (##vector-length _g97848_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97849_ 2)))
                                      (error "Context expects 2 values"
                                             _g97849_)))
                                (let ((_%target9154091579%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97848_ 0)))
                                      (_%tl9154291582%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97848_ 1))))
                                  (if (gx#stx-null? _%tl9154291582%_)
                                      (letrec ((_%loop9154391585%_
                                                (lambda (_%hd9154191589%_
                                                         _%field9154791592%_
                                                         _%slot9154891594%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9154191589%_)
                                                      (let ((_%e9154491597%_
                                                             (gx#syntax-e
                                                              _%hd9154191589%_)))
                                                        (let ((_%lp-hd9154591601%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9154491597%_)))
                      (_%lp-tl9154691604%_
                       (let () (declare (not safe)) (##cdr _%e9154491597%_))))
                  (if (gx#stx-pair? _%lp-hd9154591601%_)
                      (let ((_%e9155391607%_
                             (gx#syntax-e _%lp-hd9154591601%_)))
                        (let ((_%hd9155291611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9155391607%_)))
                              (_%tl9155191614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9155391607%_))))
                          (if (gx#stx-pair? _%tl9155191614%_)
                              (let ((_%e9155691617%_
                                     (gx#syntax-e _%tl9155191614%_)))
                                (let ((_%hd9155591621%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9155691617%_)))
                                      (_%tl9155491624%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9155691617%_))))
                                  (if (gx#stx-null? _%tl9155491624%_)
                                      (_%loop9154391585%_
                                       _%lp-tl9154691604%_
                                       (cons _%hd9155591621%_
                                             _%field9154791592%_)
                                       (cons _%hd9155291611%_
                                             _%slot9154891594%_))
                                      (_%g9153391562%_ _%g9153491566%_))))
                              (_%g9153391562%_ _%g9153491566%_))))
                      (_%g9153391562%_ _%g9153491566%_))))
              (let ((_%field9154991627%_ (reverse _%field9154791592%_))
                    (_%slot9155091630%_ (reverse _%slot9154891594%_)))
                ((lambda (_%L91633%_ _%L91635%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L91633%_
                            _%L91635%_)
                           (let ((__tmp97850
                                  (lambda (_%g9165091654%_
                                           _%g9165191657%_
                                           _%g9165291659%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9165191657%_
                                                            (cons _%g9165091654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9165291659%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp97850
                              '()
                              _%L91633%_
                              _%L91635%_)))))
                 _%field9154991627%_
                 _%slot9155091630%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9154391585%_
                                         _%target9154091579%_
                                         '()
                                         '()))
                                      (_%g9153391562%_ _%g9153491566%_)))))
                            (_%g9153391562%_ _%g9153491566%_))))
                    (_%g9153391562%_ _%g9153491566%_)))))
        (_%g9153291662%_ _%$stx91529%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx91667%_)
      (let* ((_%g9167191705%_
              (lambda (_%g9167291701%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9167291701%_)))
             (_%g9167091816%_
              (lambda (_%g9167291709%_)
                (if (gx#stx-pair? _%g9167291709%_)
                    (let ((_%e9168191712%_ (gx#syntax-e _%g9167291709%_)))
                      (let ((_%hd9168091716%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9168191712%_)))
                            (_%tl9167991719%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9168191712%_))))
                        (if (gx#stx-pair? _%tl9167991719%_)
                            (let ((_%e9168491722%_
                                   (gx#syntax-e _%tl9167991719%_)))
                              (let ((_%hd9168391726%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9168491722%_)))
                                    (_%tl9168291729%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9168491722%_))))
                                (if (gx#stx-pair? _%tl9168291729%_)
                                    (let ((_%e9168791732%_
                                           (gx#syntax-e _%tl9168291729%_)))
                                      (let ((_%hd9168691736%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9168791732%_)))
                                            (_%tl9168591739%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9168791732%_))))
                                        (if (gx#stx-pair? _%tl9168591739%_)
                                            (let ((_%e9169091742%_
                                                   (gx#syntax-e
                                                    _%tl9168591739%_)))
                                              (let ((_%hd9168991746%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9169091742%_)))
                                                    (_%tl9168891749%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9169091742%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9168891749%_)
                                                    (let ((_%e9169391752%_
                                                           (gx#syntax-e
                                                            _%tl9168891749%_)))
                                                      (let ((_%hd9169291756%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9169391752%_)))
                    (_%tl9169191759%_
                     (let () (declare (not safe)) (##cdr _%e9169391752%_))))
                (if (gx#stx-pair? _%tl9169191759%_)
                    (let ((_%e9169691762%_ (gx#syntax-e _%tl9169191759%_)))
                      (let ((_%hd9169591766%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9169691762%_)))
                            (_%tl9169491769%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9169691762%_))))
                        (if (gx#stx-pair? _%tl9169491769%_)
                            (let ((_%e9169991772%_
                                   (gx#syntax-e _%tl9169491769%_)))
                              (let ((_%hd9169891776%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9169991772%_)))
                                    (_%tl9169791779%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9169991772%_))))
                                (if (gx#stx-null? _%tl9169791779%_)
                                    ((lambda (_%L91782%_
                                              _%L91784%_
                                              _%L91785%_
                                              _%L91786%_
                                              _%L91787%_
                                              _%L91788%_)
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
                                         (cons _%L91788%_ '()))
                                   (cons _%L91787%_ (cons '#f '()))))
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
                               (cons _%L91788%_
                                     (cons 'slot: (cons _%L91787%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L91788%_ '()))
                                         (cons (cons _%L91786%_
                                                     (cons _%L91788%_
                                                           (cons _%L91787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L91788%_ '()))
                                               (cons (cons _%L91785%_
                                                           (cons _%L91788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L91787%_
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
                                           (cons _%L91788%_ '()))
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
                                                     (cons (cons _%L91784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L91788%_
                               (cons _%L91787%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L91782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L91788%_
                                     (cons _%L91787%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9169891776%_
                                     _%hd9169591766%_
                                     _%hd9169291756%_
                                     _%hd9168991746%_
                                     _%hd9168691736%_
                                     _%hd9168391726%_)
                                    (_%g9167191705%_ _%g9167291709%_))))
                            (_%g9167191705%_ _%g9167291709%_))))
                    (_%g9167191705%_ _%g9167291709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9167191705%_
                                                     _%g9167291709%_))))
                                            (_%g9167191705%_
                                             _%g9167291709%_))))
                                    (_%g9167191705%_ _%g9167291709%_))))
                            (_%g9167191705%_ _%g9167291709%_))))
                    (_%g9167191705%_ _%g9167291709%_)))))
        (_%g9167091816%_ _%$stx91667%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx91820%_)
      (let* ((_%g9182491850%_
              (lambda (_%g9182591846%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9182591846%_)))
             (_%g9182391933%_
              (lambda (_%g9182591854%_)
                (if (gx#stx-pair? _%g9182591854%_)
                    (let ((_%e9183291857%_ (gx#syntax-e _%g9182591854%_)))
                      (let ((_%hd9183191861%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9183291857%_)))
                            (_%tl9183091864%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9183291857%_))))
                        (if (gx#stx-pair? _%tl9183091864%_)
                            (let ((_%e9183591867%_
                                   (gx#syntax-e _%tl9183091864%_)))
                              (let ((_%hd9183491871%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9183591867%_)))
                                    (_%tl9183391874%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9183591867%_))))
                                (if (gx#stx-pair? _%tl9183391874%_)
                                    (let ((_%e9183891877%_
                                           (gx#syntax-e _%tl9183391874%_)))
                                      (let ((_%hd9183791881%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9183891877%_)))
                                            (_%tl9183691884%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9183891877%_))))
                                        (if (gx#stx-pair? _%tl9183691884%_)
                                            (let ((_%e9184191887%_
                                                   (gx#syntax-e
                                                    _%tl9183691884%_)))
                                              (let ((_%hd9184091891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9184191887%_)))
                                                    (_%tl9183991894%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9184191887%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9183991894%_)
                                                    (let ((_%e9184491897%_
                                                           (gx#syntax-e
                                                            _%tl9183991894%_)))
                                                      (let ((_%hd9184391901%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9184491897%_)))
                    (_%tl9184291904%_
                     (let () (declare (not safe)) (##cdr _%e9184491897%_))))
                (if (gx#stx-null? _%tl9184291904%_)
                    ((lambda (_%L91907%_ _%L91909%_ _%L91910%_ _%L91911%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L91911%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L91910%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L91909%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L91907%_
                                     (cons _%L91911%_ (cons _%L91910%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9184391901%_
                     _%hd9184091891%_
                     _%hd9183791881%_
                     _%hd9183491871%_)
                    (_%g9182491850%_ _%g9182591854%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9182491850%_
                                                     _%g9182591854%_))))
                                            (_%g9182491850%_
                                             _%g9182591854%_))))
                                    (_%g9182491850%_ _%g9182591854%_))))
                            (_%g9182491850%_ _%g9182591854%_))))
                    (_%g9182491850%_ _%g9182591854%_)))))
        (_%g9182391933%_ _%$stx91820%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx91937%_)
      (let* ((_%g9194191970%_
              (lambda (_%g9194291966%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9194291966%_)))
             (_%g9194092070%_
              (lambda (_%g9194291974%_)
                (if (gx#stx-pair? _%g9194291974%_)
                    (let ((_%e9194791977%_ (gx#syntax-e _%g9194291974%_)))
                      (let ((_%hd9194691981%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9194791977%_)))
                            (_%tl9194591984%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9194791977%_))))
                        (if (gx#stx-pair/null? _%tl9194591984%_)
                            (let ((_g97851_
                                   (gx#syntax-split-splice
                                    _%tl9194591984%_
                                    '0)))
                              (begin
                                (let ((_g97852_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97851_)
                                             (##vector-length _g97851_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97852_ 2)))
                                      (error "Context expects 2 values"
                                             _g97852_)))
                                (let ((_%target9194891987%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97851_ 0)))
                                      (_%tl9195091990%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97851_ 1))))
                                  (if (gx#stx-null? _%tl9195091990%_)
                                      (letrec ((_%loop9195191993%_
                                                (lambda (_%hd9194991997%_
                                                         _%name9195592000%_
                                                         _%t9195692002%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9194991997%_)
                                                      (let ((_%e9195292005%_
                                                             (gx#syntax-e
                                                              _%hd9194991997%_)))
                                                        (let ((_%lp-hd9195392009%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9195292005%_)))
                      (_%lp-tl9195492012%_
                       (let () (declare (not safe)) (##cdr _%e9195292005%_))))
                  (if (gx#stx-pair? _%lp-hd9195392009%_)
                      (let ((_%e9196192015%_
                             (gx#syntax-e _%lp-hd9195392009%_)))
                        (let ((_%hd9196092019%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9196192015%_)))
                              (_%tl9195992022%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9196192015%_))))
                          (if (gx#stx-pair? _%tl9195992022%_)
                              (let ((_%e9196492025%_
                                     (gx#syntax-e _%tl9195992022%_)))
                                (let ((_%hd9196392029%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9196492025%_)))
                                      (_%tl9196292032%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9196492025%_))))
                                  (if (gx#stx-null? _%tl9196292032%_)
                                      (_%loop9195191993%_
                                       _%lp-tl9195492012%_
                                       (cons _%hd9196392029%_
                                             _%name9195592000%_)
                                       (cons _%hd9196092019%_ _%t9195692002%_))
                                      (_%g9194191970%_ _%g9194291974%_))))
                              (_%g9194191970%_ _%g9194291974%_))))
                      (_%g9194191970%_ _%g9194291974%_))))
              (let ((_%name9195792035%_ (reverse _%name9195592000%_))
                    (_%t9195892038%_ (reverse _%t9195692002%_)))
                ((lambda (_%L92041%_ _%L92043%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92041%_
                            _%L92043%_)
                           (let ((__tmp97853
                                  (lambda (_%g9205892062%_
                                           _%g9205992065%_
                                           _%g9206092067%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9205992065%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9205892062%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9206092067%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp97853
                              '()
                              _%L92041%_
                              _%L92043%_)))))
                 _%name9195792035%_
                 _%t9195892038%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9195191993%_
                                         _%target9194891987%_
                                         '()
                                         '()))
                                      (_%g9194191970%_ _%g9194291974%_)))))
                            (_%g9194191970%_ _%g9194291974%_))))
                    (_%g9194191970%_ _%g9194291974%_)))))
        (_%g9194092070%_ _%$stx91937%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx92075%_)
      (let* ((_%g9207992110%_
              (lambda (_%g9208092106%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9208092106%_)))
             (_%g9207892229%_
              (lambda (_%g9208092114%_)
                (if (gx#stx-pair? _%g9208092114%_)
                    (let ((_%e9208692117%_ (gx#syntax-e _%g9208092114%_)))
                      (let ((_%hd9208592121%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9208692117%_)))
                            (_%tl9208492124%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9208692117%_))))
                        (if (gx#stx-pair? _%tl9208492124%_)
                            (let ((_%e9208992127%_
                                   (gx#syntax-e _%tl9208492124%_)))
                              (let ((_%hd9208892131%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9208992127%_)))
                                    (_%tl9208792134%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9208992127%_))))
                                (if (gx#stx-pair? _%tl9208792134%_)
                                    (let ((_%e9209292137%_
                                           (gx#syntax-e _%tl9208792134%_)))
                                      (let ((_%hd9209192141%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9209292137%_)))
                                            (_%tl9209092144%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9209292137%_))))
                                        (if (gx#stx-pair? _%tl9209092144%_)
                                            (let ((_%e9209592147%_
                                                   (gx#syntax-e
                                                    _%tl9209092144%_)))
                                              (let ((_%hd9209492151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9209592147%_)))
                                                    (_%tl9209392154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9209592147%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9209492151%_)
                                                    (let ((_g97854_
                                                           (gx#syntax-split-splice
                                                            _%hd9209492151%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g97855_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g97854_)
                             (##vector-length _g97854_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97855_ 2)))
                      (error "Context expects 2 values" _g97855_)))
                (let ((_%target9209692157%_
                       (let () (declare (not safe)) (##vector-ref _g97854_ 0)))
                      (_%tl9209892160%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g97854_ 1))))
                  (if (gx#stx-null? _%tl9209892160%_)
                      (letrec ((_%loop9209992163%_
                                (lambda (_%hd9209792167%_ _%super9210392170%_)
                                  (if (gx#stx-pair? _%hd9209792167%_)
                                      (let ((_%e9210092173%_
                                             (gx#syntax-e _%hd9209792167%_)))
                                        (let ((_%lp-hd9210192177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9210092173%_)))
                                              (_%lp-tl9210292180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9210092173%_))))
                                          (_%loop9209992163%_
                                           _%lp-tl9210292180%_
                                           (cons _%lp-hd9210192177%_
                                                 _%super9210392170%_))))
                                      (let ((_%super9210492183%_
                                             (reverse _%super9210392170%_)))
                                        (if (gx#stx-null? _%tl9209392154%_)
                                            ((lambda (_%L92187%_
                                                      _%L92189%_
                                                      _%L92190%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92190%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92189%_
                                                 (cons (let ((__tmp97856
                                                              (lambda (_%g9221492217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9221592220%_)
                        (cons _%g9221492217%_ _%g9221592220%_))))
                 (declare (not safe))
                 (__foldr1 __tmp97856 '() _%L92187%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L92189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp97857
                                  (lambda (_%g9221292223%_ _%g9221392226%_)
                                    (cons _%g9221292223%_ _%g9221392226%_))))
                             (declare (not safe))
                             (__foldr1 __tmp97857 '() _%L92187%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9210492183%_
                                             _%hd9209192141%_
                                             _%hd9208892131%_)
                                            (_%g9207992110%_
                                             _%g9208092114%_)))))))
                        (_%loop9209992163%_ _%target9209692157%_ '()))
                      (_%g9207992110%_ _%g9208092114%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9207992110%_
                                                     _%g9208092114%_))))
                                            (_%g9207992110%_
                                             _%g9208092114%_))))
                                    (_%g9207992110%_ _%g9208092114%_))))
                            (_%g9207992110%_ _%g9208092114%_))))
                    (_%g9207992110%_ _%g9208092114%_)))))
        (_%g9207892229%_ _%$stx92075%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx92234%_)
      (let* ((_%g9223892269%_
              (lambda (_%g9223992265%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9223992265%_)))
             (_%g9223792380%_
              (lambda (_%g9223992273%_)
                (if (gx#stx-pair? _%g9223992273%_)
                    (let ((_%e9224592276%_ (gx#syntax-e _%g9223992273%_)))
                      (let ((_%hd9224492280%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9224592276%_)))
                            (_%tl9224392283%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9224592276%_))))
                        (if (gx#stx-pair? _%tl9224392283%_)
                            (let ((_%e9224892286%_
                                   (gx#syntax-e _%tl9224392283%_)))
                              (let ((_%hd9224792290%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9224892286%_)))
                                    (_%tl9224692293%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9224892286%_))))
                                (if (gx#stx-pair? _%tl9224692293%_)
                                    (let ((_%e9225192296%_
                                           (gx#syntax-e _%tl9224692293%_)))
                                      (let ((_%hd9225092300%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9225192296%_)))
                                            (_%tl9224992303%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9225192296%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9225092300%_)
                                            (let ((_g97858_
                                                   (gx#syntax-split-splice
                                                    _%hd9225092300%_
                                                    '0)))
                                              (begin
                                                (let ((_g97859_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g97858_)
                                                             (##vector-length
                                                              _g97858_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g97859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g97859_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9225292306%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g97858_
                                                          0)))
                                                      (_%tl9225492309%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g97858_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9225492309%_)
                                                      (letrec ((_%loop9225592312%_
                                                                (lambda (_%hd9225392316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9225992319%_)
                          (if (gx#stx-pair? _%hd9225392316%_)
                              (let ((_%e9225692322%_
                                     (gx#syntax-e _%hd9225392316%_)))
                                (let ((_%lp-hd9225792326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9225692322%_)))
                                      (_%lp-tl9225892329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9225692322%_))))
                                  (_%loop9225592312%_
                                   _%lp-tl9225892329%_
                                   (cons _%lp-hd9225792326%_
                                         _%super9225992319%_))))
                              (let ((_%super9226092332%_
                                     (reverse _%super9225992319%_)))
                                (if (gx#stx-pair? _%tl9224992303%_)
                                    (let ((_%e9226392336%_
                                           (gx#syntax-e _%tl9224992303%_)))
                                      (let ((_%hd9226292340%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9226392336%_)))
                                            (_%tl9226192343%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9226392336%_))))
                                        (if (gx#stx-null? _%tl9226192343%_)
                                            ((lambda (_%L92346%_
                                                      _%L92348%_
                                                      _%L92349%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92349%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92349%_
                                                 (cons (let ((__tmp97860
                                                              (lambda (_%g9237192374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9237292377%_)
                        (cons _%g9237192374%_ _%g9237292377%_))))
                 (declare (not safe))
                 (__foldr1 __tmp97860 '() _%L92348%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L92346%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9226292340%_
                                             _%super9226092332%_
                                             _%hd9224792290%_)
                                            (_%g9223892269%_
                                             _%g9223992273%_))))
                                    (_%g9223892269%_ _%g9223992273%_)))))))
                (_%loop9225592312%_ _%target9225292306%_ '()))
              (_%g9223892269%_ _%g9223992273%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9223892269%_
                                             _%g9223992273%_))))
                                    (_%g9223892269%_ _%g9223992273%_))))
                            (_%g9223892269%_ _%g9223992273%_))))
                    (_%g9223892269%_ _%g9223992273%_)))))
        (_%g9223792380%_ _%$stx92234%_)))))
