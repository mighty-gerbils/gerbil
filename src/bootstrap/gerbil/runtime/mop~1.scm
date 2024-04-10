(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx91851%_)
      (let* ((_%__stx9836098361%_ _%$stx91851%_)
             (_%g9185691885%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9836098361%_))))
        (let ((_%__kont9836398364%_
               (lambda (_%L91978%_ _%L91980%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91980%_ (cons _%L91978%_ '())))
                             (cons _%L91978%_ '())))))
              (_%__kont9836598366%_
               (lambda (_%L91922%_ _%L91924%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91922%_ (cons _%L91922%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91924%_
                                                           (cons _%L91922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L91922%_ '())))
                                   '()))))))
          (let ((_%__match9838798388%_
                 (lambda (_%e9186091948%_
                          _%hd9186191952%_
                          _%tl9186291955%_
                          _%e9186391958%_
                          _%hd9186491962%_
                          _%tl9186591965%_
                          _%e9186691968%_
                          _%hd9186791972%_
                          _%tl9186891975%_)
                   (let ((_%L91978%_ _%hd9186791972%_)
                         (_%L91980%_ _%hd9186491962%_))
                     (if (or (gx#identifier? _%L91978%_)
                             (gx#stx-fixnum? _%L91978%_))
                         (_%__kont9836398364%_ _%L91978%_ _%L91980%_)
                         (_%__kont9836598366%_
                          _%hd9186791972%_
                          _%hd9186491962%_))))))
            (if (gx#stx-pair? _%__stx9836098361%_)
                (let ((_%e9186091948%_ (gx#syntax-e _%__stx9836098361%_)))
                  (let ((_%tl9186291955%_
                         (let () (declare (not safe)) (##cdr _%e9186091948%_)))
                        (_%hd9186191952%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9186091948%_))))
                    (if (gx#stx-pair? _%tl9186291955%_)
                        (let ((_%e9186391958%_ (gx#syntax-e _%tl9186291955%_)))
                          (let ((_%tl9186591965%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9186391958%_)))
                                (_%hd9186491962%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9186391958%_))))
                            (if (gx#stx-pair? _%tl9186591965%_)
                                (let ((_%e9186691968%_
                                       (gx#syntax-e _%tl9186591965%_)))
                                  (let ((_%tl9186891975%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9186691968%_)))
                                        (_%hd9186791972%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9186691968%_))))
                                    (if (gx#stx-null? _%tl9186891975%_)
                                        (_%__match9838798388%_
                                         _%e9186091948%_
                                         _%hd9186191952%_
                                         _%tl9186291955%_
                                         _%e9186391958%_
                                         _%hd9186491962%_
                                         _%tl9186591965%_
                                         _%e9186691968%_
                                         _%hd9186791972%_
                                         _%tl9186891975%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9185691885%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9185691885%_)))))
                        (let () (declare (not safe)) (_%g9185691885%_)))))
                (let () (declare (not safe)) (_%g9185691885%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx92003%_)
      (let* ((_%__stx9841098411%_ _%$stx92003%_)
             (_%g9200892037%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9841098411%_))))
        (let ((_%__kont9841398414%_
               (lambda (_%L92129%_ _%L92131%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L92131%_ (cons _%L92129%_ '())))
                             (cons '0 '())))))
              (_%__kont9841598416%_
               (lambda (_%L92074%_ _%L92076%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L92074%_ (cons _%L92074%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L92076%_
                                                           (cons _%L92074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9843798438%_
                 (lambda (_%e9201292099%_
                          _%hd9201392103%_
                          _%tl9201492106%_
                          _%e9201592109%_
                          _%hd9201692113%_
                          _%tl9201792116%_
                          _%e9201892119%_
                          _%hd9201992123%_
                          _%tl9202092126%_)
                   (let ((_%L92129%_ _%hd9201992123%_)
                         (_%L92131%_ _%hd9201692113%_))
                     (if (or (gx#identifier? _%L92129%_)
                             (gx#stx-fixnum? _%L92129%_))
                         (_%__kont9841398414%_ _%L92129%_ _%L92131%_)
                         (_%__kont9841598416%_
                          _%hd9201992123%_
                          _%hd9201692113%_))))))
            (if (gx#stx-pair? _%__stx9841098411%_)
                (let ((_%e9201292099%_ (gx#syntax-e _%__stx9841098411%_)))
                  (let ((_%tl9201492106%_
                         (let () (declare (not safe)) (##cdr _%e9201292099%_)))
                        (_%hd9201392103%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9201292099%_))))
                    (if (gx#stx-pair? _%tl9201492106%_)
                        (let ((_%e9201592109%_ (gx#syntax-e _%tl9201492106%_)))
                          (let ((_%tl9201792116%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9201592109%_)))
                                (_%hd9201692113%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9201592109%_))))
                            (if (gx#stx-pair? _%tl9201792116%_)
                                (let ((_%e9201892119%_
                                       (gx#syntax-e _%tl9201792116%_)))
                                  (let ((_%tl9202092126%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9201892119%_)))
                                        (_%hd9201992123%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9201892119%_))))
                                    (if (gx#stx-null? _%tl9202092126%_)
                                        (_%__match9843798438%_
                                         _%e9201292099%_
                                         _%hd9201392103%_
                                         _%tl9201492106%_
                                         _%e9201592109%_
                                         _%hd9201692113%_
                                         _%tl9201792116%_
                                         _%e9201892119%_
                                         _%hd9201992123%_
                                         _%tl9202092126%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9200892037%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9200892037%_)))))
                        (let () (declare (not safe)) (_%g9200892037%_)))))
                (let () (declare (not safe)) (_%g9200892037%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx92154%_)
      (let* ((_%g9215792178%_
              (lambda (_%g9215892174%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9215892174%_)))
             (_%g9215692406%_
              (lambda (_%g9215892182%_)
                (if (gx#stx-pair? _%g9215892182%_)
                    (let ((_%e9216192185%_ (gx#syntax-e _%g9215892182%_)))
                      (let ((_%hd9216292189%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9216192185%_)))
                            (_%tl9216392192%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9216192185%_))))
                        (if (gx#stx-pair? _%tl9216392192%_)
                            (let ((_%e9216492195%_
                                   (gx#syntax-e _%tl9216392192%_)))
                              (let ((_%hd9216592199%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9216492195%_)))
                                    (_%tl9216692202%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9216492195%_))))
                                (if (gx#stx-pair? _%hd9216592199%_)
                                    (let ((_%e9216792205%_
                                           (gx#syntax-e _%hd9216592199%_)))
                                      (let ((_%hd9216892209%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9216792205%_)))
                                            (_%tl9216992212%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9216792205%_))))
                                        (if (gx#stx-pair? _%tl9216992212%_)
                                            (let ((_%e9217092215%_
                                                   (gx#syntax-e
                                                    _%tl9216992212%_)))
                                              (let ((_%hd9217192219%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9217092215%_)))
                                                    (_%tl9217292222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9217092215%_))))
                                                (if (gx#stx-null?
                                                     _%tl9217292222%_)
                                                    (if (gx#stx-null?
                                                         _%tl9216692202%_)
                                                        ((lambda (_%L92225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L92227%_)
                   (let* ((_%g9224592253%_
                           (lambda (_%g9224692249%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9224692249%_)))
                          (_%g9224492402%_
                           (lambda (_%g9224692257%_)
                             ((lambda (_%L92260%_)
                                (let* ((_%g9227292280%_
                                        (lambda (_%g9227392276%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9227392276%_)))
                                       (_%g9227192398%_
                                        (lambda (_%g9227392284%_)
                                          ((lambda (_%L92287%_)
                                             (let* ((_%g9230092308%_
                                                     (lambda (_%g9230192304%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9230192304%_)))
                                                    (_%g9229992394%_
                                                     (lambda (_%g9230192312%_)
                                                       ((lambda (_%L92315%_)
                                                          (let* ((_%g9232892336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9232992332%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9232992332%_)))
                         (_%g9232792390%_
                          (lambda (_%g9232992340%_)
                            ((lambda (_%L92343%_)
                               (let* ((_%g9235692364%_
                                       (lambda (_%g9235792360%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9235792360%_)))
                                      (_%g9235592386%_
                                       (lambda (_%g9235792368%_)
                                         ((lambda (_%L92371%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L92287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L92260%_
                                                          (cons _%L92227%_
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
                                          (cons _%L92225%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L92227%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L92315%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L92260%_
                                                                (cons _%L92227%_
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
                                                (cons _%L92225%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L92227%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L92343%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L92260%_ (cons _%L92227%_ (cons '#t '()))))
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
                                                            (cons _%L92225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L92227%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L92371%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L92260%_
                                    (cons _%L92227%_ (cons '#f '()))))
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
                          (cons _%L92225%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L92227%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9235792368%_))))
                                 (_%g9235592386%_
                                  (gx#stx-identifier
                                   _%L92227%_
                                   '"&"
                                   _%L92343%_))))
                             _%g9232992340%_))))
                    (_%g9232792390%_
                     (gx#stx-identifier _%L92227%_ _%L92287%_ '"-set!"))))
                _%g9230192312%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9229992394%_
                                                (gx#stx-identifier
                                                 _%L92227%_
                                                 '"&"
                                                 _%L92287%_))))
                                           _%g9227392284%_))))
                                  (_%g9227192398%_
                                   (gx#stx-identifier
                                    _%L92227%_
                                    '"class-type-"
                                    _%L92227%_))))
                              _%g9224692257%_))))
                     (_%g9224492402%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9217192219%_
                 _%hd9216892209%_)
                (_%g9215792178%_ _%g9215892182%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9215792178%_
                                                     _%g9215892182%_))))
                                            (_%g9215792178%_
                                             _%g9215892182%_))))
                                    (_%g9215792178%_ _%g9215892182%_))))
                            (_%g9215792178%_ _%g9215892182%_))))
                    (_%g9215792178%_ _%g9215892182%_)))))
        (_%g9215692406%_ _%stx92154%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx92410%_)
      (let* ((_%g9241492443%_
              (lambda (_%g9241592439%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9241592439%_)))
             (_%g9241392543%_
              (lambda (_%g9241592447%_)
                (if (gx#stx-pair? _%g9241592447%_)
                    (let ((_%e9241892450%_ (gx#syntax-e _%g9241592447%_)))
                      (let ((_%hd9241992454%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9241892450%_)))
                            (_%tl9242092457%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9241892450%_))))
                        (if (gx#stx-pair/null? _%tl9242092457%_)
                            (let ((_g98651_
                                   (gx#syntax-split-splice
                                    _%tl9242092457%_
                                    '0)))
                              (begin
                                (let ((_g98652_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98651_)
                                             (##vector-length _g98651_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98652_ 2)))
                                      (error "Context expects 2 values"
                                             _g98652_)))
                                (let ((_%target9242192460%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98651_ 0)))
                                      (_%tl9242392463%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98651_ 1))))
                                  (if (gx#stx-null? _%tl9242392463%_)
                                      (letrec ((_%loop9242492466%_
                                                (lambda (_%hd9242292470%_
                                                         _%field9242892473%_
                                                         _%slot9242992475%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9242292470%_)
                                                      (let ((_%e9242592478%_
                                                             (gx#syntax-e
                                                              _%hd9242292470%_)))
                                                        (let ((_%lp-hd9242692482%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9242592478%_)))
                      (_%lp-tl9242792485%_
                       (let () (declare (not safe)) (##cdr _%e9242592478%_))))
                  (if (gx#stx-pair? _%lp-hd9242692482%_)
                      (let ((_%e9243292488%_
                             (gx#syntax-e _%lp-hd9242692482%_)))
                        (let ((_%hd9243392492%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9243292488%_)))
                              (_%tl9243492495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9243292488%_))))
                          (if (gx#stx-pair? _%tl9243492495%_)
                              (let ((_%e9243592498%_
                                     (gx#syntax-e _%tl9243492495%_)))
                                (let ((_%hd9243692502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9243592498%_)))
                                      (_%tl9243792505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9243592498%_))))
                                  (if (gx#stx-null? _%tl9243792505%_)
                                      (_%loop9242492466%_
                                       _%lp-tl9242792485%_
                                       (cons _%hd9243692502%_
                                             _%field9242892473%_)
                                       (cons _%hd9243392492%_
                                             _%slot9242992475%_))
                                      (_%g9241492443%_ _%g9241592447%_))))
                              (_%g9241492443%_ _%g9241592447%_))))
                      (_%g9241492443%_ _%g9241592447%_))))
              (let ((_%field9243092508%_ (reverse _%field9242892473%_))
                    (_%slot9243192511%_ (reverse _%slot9242992475%_)))
                ((lambda (_%L92514%_ _%L92516%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92514%_
                            _%L92516%_)
                           (let ((__tmp98653
                                  (lambda (_%g9253192535%_
                                           _%g9253292538%_
                                           _%g9253392540%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9253292538%_
                                                            (cons _%g9253192535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9253392540%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp98653
                              '()
                              _%L92514%_
                              _%L92516%_)))))
                 _%field9243092508%_
                 _%slot9243192511%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9242492466%_
                                         _%target9242192460%_
                                         '()
                                         '()))
                                      (_%g9241492443%_ _%g9241592447%_)))))
                            (_%g9241492443%_ _%g9241592447%_))))
                    (_%g9241492443%_ _%g9241592447%_)))))
        (_%g9241392543%_ _%$stx92410%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx92548%_)
      (let* ((_%g9255292586%_
              (lambda (_%g9255392582%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9255392582%_)))
             (_%g9255192697%_
              (lambda (_%g9255392590%_)
                (if (gx#stx-pair? _%g9255392590%_)
                    (let ((_%e9256092593%_ (gx#syntax-e _%g9255392590%_)))
                      (let ((_%hd9256192597%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9256092593%_)))
                            (_%tl9256292600%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9256092593%_))))
                        (if (gx#stx-pair? _%tl9256292600%_)
                            (let ((_%e9256392603%_
                                   (gx#syntax-e _%tl9256292600%_)))
                              (let ((_%hd9256492607%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9256392603%_)))
                                    (_%tl9256592610%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9256392603%_))))
                                (if (gx#stx-pair? _%tl9256592610%_)
                                    (let ((_%e9256692613%_
                                           (gx#syntax-e _%tl9256592610%_)))
                                      (let ((_%hd9256792617%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9256692613%_)))
                                            (_%tl9256892620%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9256692613%_))))
                                        (if (gx#stx-pair? _%tl9256892620%_)
                                            (let ((_%e9256992623%_
                                                   (gx#syntax-e
                                                    _%tl9256892620%_)))
                                              (let ((_%hd9257092627%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9256992623%_)))
                                                    (_%tl9257192630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9256992623%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9257192630%_)
                                                    (let ((_%e9257292633%_
                                                           (gx#syntax-e
                                                            _%tl9257192630%_)))
                                                      (let ((_%hd9257392637%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9257292633%_)))
                    (_%tl9257492640%_
                     (let () (declare (not safe)) (##cdr _%e9257292633%_))))
                (if (gx#stx-pair? _%tl9257492640%_)
                    (let ((_%e9257592643%_ (gx#syntax-e _%tl9257492640%_)))
                      (let ((_%hd9257692647%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9257592643%_)))
                            (_%tl9257792650%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9257592643%_))))
                        (if (gx#stx-pair? _%tl9257792650%_)
                            (let ((_%e9257892653%_
                                   (gx#syntax-e _%tl9257792650%_)))
                              (let ((_%hd9257992657%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9257892653%_)))
                                    (_%tl9258092660%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9257892653%_))))
                                (if (gx#stx-null? _%tl9258092660%_)
                                    ((lambda (_%L92663%_
                                              _%L92665%_
                                              _%L92666%_
                                              _%L92667%_
                                              _%L92668%_
                                              _%L92669%_)
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
                                         (cons _%L92669%_ '()))
                                   (cons _%L92668%_ (cons '#f '()))))
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
                               (cons _%L92669%_
                                     (cons 'slot: (cons _%L92668%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L92669%_ '()))
                                         (cons (cons _%L92667%_
                                                     (cons _%L92669%_
                                                           (cons _%L92668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L92669%_ '()))
                                               (cons (cons _%L92666%_
                                                           (cons _%L92669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L92668%_
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
                                           (cons _%L92669%_ '()))
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
                                                     (cons (cons _%L92665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L92669%_
                               (cons _%L92668%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L92663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92669%_
                                     (cons _%L92668%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9257992657%_
                                     _%hd9257692647%_
                                     _%hd9257392637%_
                                     _%hd9257092627%_
                                     _%hd9256792617%_
                                     _%hd9256492607%_)
                                    (_%g9255292586%_ _%g9255392590%_))))
                            (_%g9255292586%_ _%g9255392590%_))))
                    (_%g9255292586%_ _%g9255392590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9255292586%_
                                                     _%g9255392590%_))))
                                            (_%g9255292586%_
                                             _%g9255392590%_))))
                                    (_%g9255292586%_ _%g9255392590%_))))
                            (_%g9255292586%_ _%g9255392590%_))))
                    (_%g9255292586%_ _%g9255392590%_)))))
        (_%g9255192697%_ _%$stx92548%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx92701%_)
      (let* ((_%g9270592731%_
              (lambda (_%g9270692727%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9270692727%_)))
             (_%g9270492814%_
              (lambda (_%g9270692735%_)
                (if (gx#stx-pair? _%g9270692735%_)
                    (let ((_%e9271192738%_ (gx#syntax-e _%g9270692735%_)))
                      (let ((_%hd9271292742%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9271192738%_)))
                            (_%tl9271392745%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9271192738%_))))
                        (if (gx#stx-pair? _%tl9271392745%_)
                            (let ((_%e9271492748%_
                                   (gx#syntax-e _%tl9271392745%_)))
                              (let ((_%hd9271592752%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9271492748%_)))
                                    (_%tl9271692755%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9271492748%_))))
                                (if (gx#stx-pair? _%tl9271692755%_)
                                    (let ((_%e9271792758%_
                                           (gx#syntax-e _%tl9271692755%_)))
                                      (let ((_%hd9271892762%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9271792758%_)))
                                            (_%tl9271992765%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9271792758%_))))
                                        (if (gx#stx-pair? _%tl9271992765%_)
                                            (let ((_%e9272092768%_
                                                   (gx#syntax-e
                                                    _%tl9271992765%_)))
                                              (let ((_%hd9272192772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9272092768%_)))
                                                    (_%tl9272292775%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9272092768%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9272292775%_)
                                                    (let ((_%e9272392778%_
                                                           (gx#syntax-e
                                                            _%tl9272292775%_)))
                                                      (let ((_%hd9272492782%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9272392778%_)))
                    (_%tl9272592785%_
                     (let () (declare (not safe)) (##cdr _%e9272392778%_))))
                (if (gx#stx-null? _%tl9272592785%_)
                    ((lambda (_%L92788%_ _%L92790%_ _%L92791%_ _%L92792%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L92792%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L92791%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L92790%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L92788%_
                                     (cons _%L92792%_ (cons _%L92791%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9272492782%_
                     _%hd9272192772%_
                     _%hd9271892762%_
                     _%hd9271592752%_)
                    (_%g9270592731%_ _%g9270692735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9270592731%_
                                                     _%g9270692735%_))))
                                            (_%g9270592731%_
                                             _%g9270692735%_))))
                                    (_%g9270592731%_ _%g9270692735%_))))
                            (_%g9270592731%_ _%g9270692735%_))))
                    (_%g9270592731%_ _%g9270692735%_)))))
        (_%g9270492814%_ _%$stx92701%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx92818%_)
      (let* ((_%g9282292851%_
              (lambda (_%g9282392847%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9282392847%_)))
             (_%g9282192951%_
              (lambda (_%g9282392855%_)
                (if (gx#stx-pair? _%g9282392855%_)
                    (let ((_%e9282692858%_ (gx#syntax-e _%g9282392855%_)))
                      (let ((_%hd9282792862%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9282692858%_)))
                            (_%tl9282892865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9282692858%_))))
                        (if (gx#stx-pair/null? _%tl9282892865%_)
                            (let ((_g98654_
                                   (gx#syntax-split-splice
                                    _%tl9282892865%_
                                    '0)))
                              (begin
                                (let ((_g98655_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98654_)
                                             (##vector-length _g98654_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98655_ 2)))
                                      (error "Context expects 2 values"
                                             _g98655_)))
                                (let ((_%target9282992868%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98654_ 0)))
                                      (_%tl9283192871%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98654_ 1))))
                                  (if (gx#stx-null? _%tl9283192871%_)
                                      (letrec ((_%loop9283292874%_
                                                (lambda (_%hd9283092878%_
                                                         _%name9283692881%_
                                                         _%t9283792883%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9283092878%_)
                                                      (let ((_%e9283392886%_
                                                             (gx#syntax-e
                                                              _%hd9283092878%_)))
                                                        (let ((_%lp-hd9283492890%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9283392886%_)))
                      (_%lp-tl9283592893%_
                       (let () (declare (not safe)) (##cdr _%e9283392886%_))))
                  (if (gx#stx-pair? _%lp-hd9283492890%_)
                      (let ((_%e9284092896%_
                             (gx#syntax-e _%lp-hd9283492890%_)))
                        (let ((_%hd9284192900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9284092896%_)))
                              (_%tl9284292903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9284092896%_))))
                          (if (gx#stx-pair? _%tl9284292903%_)
                              (let ((_%e9284392906%_
                                     (gx#syntax-e _%tl9284292903%_)))
                                (let ((_%hd9284492910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9284392906%_)))
                                      (_%tl9284592913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9284392906%_))))
                                  (if (gx#stx-null? _%tl9284592913%_)
                                      (_%loop9283292874%_
                                       _%lp-tl9283592893%_
                                       (cons _%hd9284492910%_
                                             _%name9283692881%_)
                                       (cons _%hd9284192900%_ _%t9283792883%_))
                                      (_%g9282292851%_ _%g9282392855%_))))
                              (_%g9282292851%_ _%g9282392855%_))))
                      (_%g9282292851%_ _%g9282392855%_))))
              (let ((_%name9283892916%_ (reverse _%name9283692881%_))
                    (_%t9283992919%_ (reverse _%t9283792883%_)))
                ((lambda (_%L92922%_ _%L92924%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92922%_
                            _%L92924%_)
                           (let ((__tmp98656
                                  (lambda (_%g9293992943%_
                                           _%g9294092946%_
                                           _%g9294192948%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9294092946%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9293992943%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9294192948%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp98656
                              '()
                              _%L92922%_
                              _%L92924%_)))))
                 _%name9283892916%_
                 _%t9283992919%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9283292874%_
                                         _%target9282992868%_
                                         '()
                                         '()))
                                      (_%g9282292851%_ _%g9282392855%_)))))
                            (_%g9282292851%_ _%g9282392855%_))))
                    (_%g9282292851%_ _%g9282392855%_)))))
        (_%g9282192951%_ _%$stx92818%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx92956%_)
      (let* ((_%g9296092991%_
              (lambda (_%g9296192987%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9296192987%_)))
             (_%g9295993110%_
              (lambda (_%g9296192995%_)
                (if (gx#stx-pair? _%g9296192995%_)
                    (let ((_%e9296592998%_ (gx#syntax-e _%g9296192995%_)))
                      (let ((_%hd9296693002%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9296592998%_)))
                            (_%tl9296793005%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9296592998%_))))
                        (if (gx#stx-pair? _%tl9296793005%_)
                            (let ((_%e9296893008%_
                                   (gx#syntax-e _%tl9296793005%_)))
                              (let ((_%hd9296993012%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9296893008%_)))
                                    (_%tl9297093015%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9296893008%_))))
                                (if (gx#stx-pair? _%tl9297093015%_)
                                    (let ((_%e9297193018%_
                                           (gx#syntax-e _%tl9297093015%_)))
                                      (let ((_%hd9297293022%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9297193018%_)))
                                            (_%tl9297393025%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9297193018%_))))
                                        (if (gx#stx-pair? _%tl9297393025%_)
                                            (let ((_%e9297493028%_
                                                   (gx#syntax-e
                                                    _%tl9297393025%_)))
                                              (let ((_%hd9297593032%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9297493028%_)))
                                                    (_%tl9297693035%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9297493028%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9297593032%_)
                                                    (let ((_g98657_
                                                           (gx#syntax-split-splice
                                                            _%hd9297593032%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g98658_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g98657_)
                             (##vector-length _g98657_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98658_ 2)))
                      (error "Context expects 2 values" _g98658_)))
                (let ((_%target9297793038%_
                       (let () (declare (not safe)) (##vector-ref _g98657_ 0)))
                      (_%tl9297993041%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98657_ 1))))
                  (if (gx#stx-null? _%tl9297993041%_)
                      (letrec ((_%loop9298093044%_
                                (lambda (_%hd9297893048%_ _%super9298493051%_)
                                  (if (gx#stx-pair? _%hd9297893048%_)
                                      (let ((_%e9298193054%_
                                             (gx#syntax-e _%hd9297893048%_)))
                                        (let ((_%lp-hd9298293058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9298193054%_)))
                                              (_%lp-tl9298393061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9298193054%_))))
                                          (_%loop9298093044%_
                                           _%lp-tl9298393061%_
                                           (cons _%lp-hd9298293058%_
                                                 _%super9298493051%_))))
                                      (let ((_%super9298593064%_
                                             (reverse _%super9298493051%_)))
                                        (if (gx#stx-null? _%tl9297693035%_)
                                            ((lambda (_%L93068%_
                                                      _%L93070%_
                                                      _%L93071%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L93071%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L93070%_
                                                 (cons (let ((__tmp98659
                                                              (lambda (_%g9309593098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9309693101%_)
                        (cons _%g9309593098%_ _%g9309693101%_))))
                 (declare (not safe))
                 (__foldr1 __tmp98659 '() _%L93068%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L93070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp98660
                                  (lambda (_%g9309393104%_ _%g9309493107%_)
                                    (cons _%g9309393104%_ _%g9309493107%_))))
                             (declare (not safe))
                             (__foldr1 __tmp98660 '() _%L93068%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9298593064%_
                                             _%hd9297293022%_
                                             _%hd9296993012%_)
                                            (_%g9296092991%_
                                             _%g9296192995%_)))))))
                        (_%loop9298093044%_ _%target9297793038%_ '()))
                      (_%g9296092991%_ _%g9296192995%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9296092991%_
                                                     _%g9296192995%_))))
                                            (_%g9296092991%_
                                             _%g9296192995%_))))
                                    (_%g9296092991%_ _%g9296192995%_))))
                            (_%g9296092991%_ _%g9296192995%_))))
                    (_%g9296092991%_ _%g9296192995%_)))))
        (_%g9295993110%_ _%$stx92956%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx93115%_)
      (let* ((_%g9311993150%_
              (lambda (_%g9312093146%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9312093146%_)))
             (_%g9311893261%_
              (lambda (_%g9312093154%_)
                (if (gx#stx-pair? _%g9312093154%_)
                    (let ((_%e9312493157%_ (gx#syntax-e _%g9312093154%_)))
                      (let ((_%hd9312593161%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9312493157%_)))
                            (_%tl9312693164%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9312493157%_))))
                        (if (gx#stx-pair? _%tl9312693164%_)
                            (let ((_%e9312793167%_
                                   (gx#syntax-e _%tl9312693164%_)))
                              (let ((_%hd9312893171%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9312793167%_)))
                                    (_%tl9312993174%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9312793167%_))))
                                (if (gx#stx-pair? _%tl9312993174%_)
                                    (let ((_%e9313093177%_
                                           (gx#syntax-e _%tl9312993174%_)))
                                      (let ((_%hd9313193181%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9313093177%_)))
                                            (_%tl9313293184%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9313093177%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9313193181%_)
                                            (let ((_g98661_
                                                   (gx#syntax-split-splice
                                                    _%hd9313193181%_
                                                    '0)))
                                              (begin
                                                (let ((_g98662_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g98661_)
                                                             (##vector-length
                                                              _g98661_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g98662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g98662_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9313393187%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g98661_
                                                          0)))
                                                      (_%tl9313593190%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g98661_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9313593190%_)
                                                      (letrec ((_%loop9313693193%_
                                                                (lambda (_%hd9313493197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9314093200%_)
                          (if (gx#stx-pair? _%hd9313493197%_)
                              (let ((_%e9313793203%_
                                     (gx#syntax-e _%hd9313493197%_)))
                                (let ((_%lp-hd9313893207%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9313793203%_)))
                                      (_%lp-tl9313993210%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9313793203%_))))
                                  (_%loop9313693193%_
                                   _%lp-tl9313993210%_
                                   (cons _%lp-hd9313893207%_
                                         _%super9314093200%_))))
                              (let ((_%super9314193213%_
                                     (reverse _%super9314093200%_)))
                                (if (gx#stx-pair? _%tl9313293184%_)
                                    (let ((_%e9314293217%_
                                           (gx#syntax-e _%tl9313293184%_)))
                                      (let ((_%hd9314393221%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9314293217%_)))
                                            (_%tl9314493224%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9314293217%_))))
                                        (if (gx#stx-null? _%tl9314493224%_)
                                            ((lambda (_%L93227%_
                                                      _%L93229%_
                                                      _%L93230%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L93230%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L93230%_
                                                 (cons (let ((__tmp98663
                                                              (lambda (_%g9325293255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9325393258%_)
                        (cons _%g9325293255%_ _%g9325393258%_))))
                 (declare (not safe))
                 (__foldr1 __tmp98663 '() _%L93229%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L93227%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9314393221%_
                                             _%super9314193213%_
                                             _%hd9312893171%_)
                                            (_%g9311993150%_
                                             _%g9312093154%_))))
                                    (_%g9311993150%_ _%g9312093154%_)))))))
                (_%loop9313693193%_ _%target9313393187%_ '()))
              (_%g9311993150%_ _%g9312093154%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9311993150%_
                                             _%g9312093154%_))))
                                    (_%g9311993150%_ _%g9312093154%_))))
                            (_%g9311993150%_ _%g9312093154%_))))
                    (_%g9311993150%_ _%g9312093154%_)))))
        (_%g9311893261%_ _%$stx93115%_)))))
