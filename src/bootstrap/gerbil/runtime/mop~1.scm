(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx93292%_)
      (let* ((_%__stx9979699797%_ _%$stx93292%_)
             (_%g9329793326%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9979699797%_))))
        (let ((_%__kont9979999800%_
               (lambda (_%L93419%_ _%L93421%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L93421%_ (cons _%L93419%_ '())))
                             (cons _%L93419%_ '())))))
              (_%__kont9980199802%_
               (lambda (_%L93363%_ _%L93365%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L93363%_ (cons _%L93363%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L93365%_
                                                           (cons _%L93363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L93363%_ '())))
                                   '()))))))
          (let ((_%__match9982399824%_
                 (lambda (_%e9330193389%_
                          _%hd9330293393%_
                          _%tl9330393396%_
                          _%e9330493399%_
                          _%hd9330593403%_
                          _%tl9330693406%_
                          _%e9330793409%_
                          _%hd9330893413%_
                          _%tl9330993416%_)
                   (let ((_%L93419%_ _%hd9330893413%_)
                         (_%L93421%_ _%hd9330593403%_))
                     (if (or (gx#identifier? _%L93419%_)
                             (gx#stx-fixnum? _%L93419%_))
                         (_%__kont9979999800%_ _%L93419%_ _%L93421%_)
                         (_%__kont9980199802%_
                          _%hd9330893413%_
                          _%hd9330593403%_))))))
            (if (gx#stx-pair? _%__stx9979699797%_)
                (let ((_%e9330193389%_ (gx#syntax-e _%__stx9979699797%_)))
                  (let ((_%tl9330393396%_
                         (let () (declare (not safe)) (##cdr _%e9330193389%_)))
                        (_%hd9330293393%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9330193389%_))))
                    (if (gx#stx-pair? _%tl9330393396%_)
                        (let ((_%e9330493399%_ (gx#syntax-e _%tl9330393396%_)))
                          (let ((_%tl9330693406%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9330493399%_)))
                                (_%hd9330593403%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9330493399%_))))
                            (if (gx#stx-pair? _%tl9330693406%_)
                                (let ((_%e9330793409%_
                                       (gx#syntax-e _%tl9330693406%_)))
                                  (let ((_%tl9330993416%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9330793409%_)))
                                        (_%hd9330893413%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9330793409%_))))
                                    (if (gx#stx-null? _%tl9330993416%_)
                                        (_%__match9982399824%_
                                         _%e9330193389%_
                                         _%hd9330293393%_
                                         _%tl9330393396%_
                                         _%e9330493399%_
                                         _%hd9330593403%_
                                         _%tl9330693406%_
                                         _%e9330793409%_
                                         _%hd9330893413%_
                                         _%tl9330993416%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9329793326%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9329793326%_)))))
                        (let () (declare (not safe)) (_%g9329793326%_)))))
                (let () (declare (not safe)) (_%g9329793326%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx93444%_)
      (let* ((_%__stx9984699847%_ _%$stx93444%_)
             (_%g9344993478%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9984699847%_))))
        (let ((_%__kont9984999850%_
               (lambda (_%L93570%_ _%L93572%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L93572%_ (cons _%L93570%_ '())))
                             (cons '0 '())))))
              (_%__kont9985199852%_
               (lambda (_%L93515%_ _%L93517%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L93515%_ (cons _%L93515%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L93517%_
                                                           (cons _%L93515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9987399874%_
                 (lambda (_%e9345393540%_
                          _%hd9345493544%_
                          _%tl9345593547%_
                          _%e9345693550%_
                          _%hd9345793554%_
                          _%tl9345893557%_
                          _%e9345993560%_
                          _%hd9346093564%_
                          _%tl9346193567%_)
                   (let ((_%L93570%_ _%hd9346093564%_)
                         (_%L93572%_ _%hd9345793554%_))
                     (if (or (gx#identifier? _%L93570%_)
                             (gx#stx-fixnum? _%L93570%_))
                         (_%__kont9984999850%_ _%L93570%_ _%L93572%_)
                         (_%__kont9985199852%_
                          _%hd9346093564%_
                          _%hd9345793554%_))))))
            (if (gx#stx-pair? _%__stx9984699847%_)
                (let ((_%e9345393540%_ (gx#syntax-e _%__stx9984699847%_)))
                  (let ((_%tl9345593547%_
                         (let () (declare (not safe)) (##cdr _%e9345393540%_)))
                        (_%hd9345493544%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9345393540%_))))
                    (if (gx#stx-pair? _%tl9345593547%_)
                        (let ((_%e9345693550%_ (gx#syntax-e _%tl9345593547%_)))
                          (let ((_%tl9345893557%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9345693550%_)))
                                (_%hd9345793554%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9345693550%_))))
                            (if (gx#stx-pair? _%tl9345893557%_)
                                (let ((_%e9345993560%_
                                       (gx#syntax-e _%tl9345893557%_)))
                                  (let ((_%tl9346193567%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9345993560%_)))
                                        (_%hd9346093564%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9345993560%_))))
                                    (if (gx#stx-null? _%tl9346193567%_)
                                        (_%__match9987399874%_
                                         _%e9345393540%_
                                         _%hd9345493544%_
                                         _%tl9345593547%_
                                         _%e9345693550%_
                                         _%hd9345793554%_
                                         _%tl9345893557%_
                                         _%e9345993560%_
                                         _%hd9346093564%_
                                         _%tl9346193567%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9344993478%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9344993478%_)))))
                        (let () (declare (not safe)) (_%g9344993478%_)))))
                (let () (declare (not safe)) (_%g9344993478%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx93595%_)
      (let* ((_%g9359893619%_
              (lambda (_%g9359993615%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9359993615%_)))
             (_%g9359793847%_
              (lambda (_%g9359993623%_)
                (if (gx#stx-pair? _%g9359993623%_)
                    (let ((_%e9360293626%_ (gx#syntax-e _%g9359993623%_)))
                      (let ((_%hd9360393630%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9360293626%_)))
                            (_%tl9360493633%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9360293626%_))))
                        (if (gx#stx-pair? _%tl9360493633%_)
                            (let ((_%e9360593636%_
                                   (gx#syntax-e _%tl9360493633%_)))
                              (let ((_%hd9360693640%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9360593636%_)))
                                    (_%tl9360793643%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9360593636%_))))
                                (if (gx#stx-pair? _%hd9360693640%_)
                                    (let ((_%e9360893646%_
                                           (gx#syntax-e _%hd9360693640%_)))
                                      (let ((_%hd9360993650%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9360893646%_)))
                                            (_%tl9361093653%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9360893646%_))))
                                        (if (gx#stx-pair? _%tl9361093653%_)
                                            (let ((_%e9361193656%_
                                                   (gx#syntax-e
                                                    _%tl9361093653%_)))
                                              (let ((_%hd9361293660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9361193656%_)))
                                                    (_%tl9361393663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9361193656%_))))
                                                (if (gx#stx-null?
                                                     _%tl9361393663%_)
                                                    (if (gx#stx-null?
                                                         _%tl9360793643%_)
                                                        ((lambda (_%L93666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L93668%_)
                   (let* ((_%g9368693694%_
                           (lambda (_%g9368793690%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9368793690%_)))
                          (_%g9368593843%_
                           (lambda (_%g9368793698%_)
                             ((lambda (_%L93701%_)
                                (let* ((_%g9371393721%_
                                        (lambda (_%g9371493717%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9371493717%_)))
                                       (_%g9371293839%_
                                        (lambda (_%g9371493725%_)
                                          ((lambda (_%L93728%_)
                                             (let* ((_%g9374193749%_
                                                     (lambda (_%g9374293745%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9374293745%_)))
                                                    (_%g9374093835%_
                                                     (lambda (_%g9374293753%_)
                                                       ((lambda (_%L93756%_)
                                                          (let* ((_%g9376993777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9377093773%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9377093773%_)))
                         (_%g9376893831%_
                          (lambda (_%g9377093781%_)
                            ((lambda (_%L93784%_)
                               (let* ((_%g9379793805%_
                                       (lambda (_%g9379893801%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9379893801%_)))
                                      (_%g9379693827%_
                                       (lambda (_%g9379893809%_)
                                         ((lambda (_%L93812%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L93728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L93701%_
                                                          (cons _%L93668%_
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
                                          (cons _%L93666%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L93668%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L93756%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L93701%_
                                                                (cons _%L93668%_
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
                                                (cons _%L93666%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L93668%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L93784%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L93701%_ (cons _%L93668%_ (cons '#t '()))))
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
                                                            (cons _%L93666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L93668%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L93812%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L93701%_
                                    (cons _%L93668%_ (cons '#f '()))))
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
                          (cons _%L93666%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L93668%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9379893809%_))))
                                 (_%g9379693827%_
                                  (gx#stx-identifier
                                   _%L93668%_
                                   '"&"
                                   _%L93784%_))))
                             _%g9377093781%_))))
                    (_%g9376893831%_
                     (gx#stx-identifier _%L93668%_ _%L93728%_ '"-set!"))))
                _%g9374293753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9374093835%_
                                                (gx#stx-identifier
                                                 _%L93668%_
                                                 '"&"
                                                 _%L93728%_))))
                                           _%g9371493725%_))))
                                  (_%g9371293839%_
                                   (gx#stx-identifier
                                    _%L93668%_
                                    '"class-type-"
                                    _%L93668%_))))
                              _%g9368793698%_))))
                     (_%g9368593843%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9361293660%_
                 _%hd9360993650%_)
                (_%g9359893619%_ _%g9359993623%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9359893619%_
                                                     _%g9359993623%_))))
                                            (_%g9359893619%_
                                             _%g9359993623%_))))
                                    (_%g9359893619%_ _%g9359993623%_))))
                            (_%g9359893619%_ _%g9359993623%_))))
                    (_%g9359893619%_ _%g9359993623%_)))))
        (_%g9359793847%_ _%stx93595%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx93851%_)
      (let* ((_%g9385593884%_
              (lambda (_%g9385693880%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9385693880%_)))
             (_%g9385493984%_
              (lambda (_%g9385693888%_)
                (if (gx#stx-pair? _%g9385693888%_)
                    (let ((_%e9385993891%_ (gx#syntax-e _%g9385693888%_)))
                      (let ((_%hd9386093895%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9385993891%_)))
                            (_%tl9386193898%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9385993891%_))))
                        (if (gx#stx-pair/null? _%tl9386193898%_)
                            (let ((_g100086_
                                   (gx#syntax-split-splice
                                    _%tl9386193898%_
                                    '0)))
                              (begin
                                (let ((_g100087_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g100086_)
                                             (##vector-length _g100086_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g100087_ 2)))
                                      (error "Context expects 2 values"
                                             _g100087_)))
                                (let ((_%target9386293901%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100086_ 0)))
                                      (_%tl9386493904%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100086_ 1))))
                                  (if (gx#stx-null? _%tl9386493904%_)
                                      (letrec ((_%loop9386593907%_
                                                (lambda (_%hd9386393911%_
                                                         _%field9386993914%_
                                                         _%slot9387093916%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9386393911%_)
                                                      (let ((_%e9386693919%_
                                                             (gx#syntax-e
                                                              _%hd9386393911%_)))
                                                        (let ((_%lp-hd9386793923%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9386693919%_)))
                      (_%lp-tl9386893926%_
                       (let () (declare (not safe)) (##cdr _%e9386693919%_))))
                  (if (gx#stx-pair? _%lp-hd9386793923%_)
                      (let ((_%e9387393929%_
                             (gx#syntax-e _%lp-hd9386793923%_)))
                        (let ((_%hd9387493933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9387393929%_)))
                              (_%tl9387593936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9387393929%_))))
                          (if (gx#stx-pair? _%tl9387593936%_)
                              (let ((_%e9387693939%_
                                     (gx#syntax-e _%tl9387593936%_)))
                                (let ((_%hd9387793943%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9387693939%_)))
                                      (_%tl9387893946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9387693939%_))))
                                  (if (gx#stx-null? _%tl9387893946%_)
                                      (_%loop9386593907%_
                                       _%lp-tl9386893926%_
                                       (cons _%hd9387793943%_
                                             _%field9386993914%_)
                                       (cons _%hd9387493933%_
                                             _%slot9387093916%_))
                                      (_%g9385593884%_ _%g9385693888%_))))
                              (_%g9385593884%_ _%g9385693888%_))))
                      (_%g9385593884%_ _%g9385693888%_))))
              (let ((_%field9387193949%_ (reverse _%field9386993914%_))
                    (_%slot9387293952%_ (reverse _%slot9387093916%_)))
                ((lambda (_%L93955%_ _%L93957%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L93955%_
                            _%L93957%_)
                           (let ((__tmp100088
                                  (lambda (_%g9397293976%_
                                           _%g9397393979%_
                                           _%g9397493981%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9397393979%_
                                                            (cons _%g9397293976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9397493981%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp100088
                              '()
                              _%L93955%_
                              _%L93957%_)))))
                 _%field9387193949%_
                 _%slot9387293952%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9386593907%_
                                         _%target9386293901%_
                                         '()
                                         '()))
                                      (_%g9385593884%_ _%g9385693888%_)))))
                            (_%g9385593884%_ _%g9385693888%_))))
                    (_%g9385593884%_ _%g9385693888%_)))))
        (_%g9385493984%_ _%$stx93851%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx93989%_)
      (let* ((_%g9399394027%_
              (lambda (_%g9399494023%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9399494023%_)))
             (_%g9399294138%_
              (lambda (_%g9399494031%_)
                (if (gx#stx-pair? _%g9399494031%_)
                    (let ((_%e9400194034%_ (gx#syntax-e _%g9399494031%_)))
                      (let ((_%hd9400294038%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9400194034%_)))
                            (_%tl9400394041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9400194034%_))))
                        (if (gx#stx-pair? _%tl9400394041%_)
                            (let ((_%e9400494044%_
                                   (gx#syntax-e _%tl9400394041%_)))
                              (let ((_%hd9400594048%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9400494044%_)))
                                    (_%tl9400694051%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9400494044%_))))
                                (if (gx#stx-pair? _%tl9400694051%_)
                                    (let ((_%e9400794054%_
                                           (gx#syntax-e _%tl9400694051%_)))
                                      (let ((_%hd9400894058%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9400794054%_)))
                                            (_%tl9400994061%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9400794054%_))))
                                        (if (gx#stx-pair? _%tl9400994061%_)
                                            (let ((_%e9401094064%_
                                                   (gx#syntax-e
                                                    _%tl9400994061%_)))
                                              (let ((_%hd9401194068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9401094064%_)))
                                                    (_%tl9401294071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9401094064%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9401294071%_)
                                                    (let ((_%e9401394074%_
                                                           (gx#syntax-e
                                                            _%tl9401294071%_)))
                                                      (let ((_%hd9401494078%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9401394074%_)))
                    (_%tl9401594081%_
                     (let () (declare (not safe)) (##cdr _%e9401394074%_))))
                (if (gx#stx-pair? _%tl9401594081%_)
                    (let ((_%e9401694084%_ (gx#syntax-e _%tl9401594081%_)))
                      (let ((_%hd9401794088%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9401694084%_)))
                            (_%tl9401894091%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9401694084%_))))
                        (if (gx#stx-pair? _%tl9401894091%_)
                            (let ((_%e9401994094%_
                                   (gx#syntax-e _%tl9401894091%_)))
                              (let ((_%hd9402094098%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9401994094%_)))
                                    (_%tl9402194101%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9401994094%_))))
                                (if (gx#stx-null? _%tl9402194101%_)
                                    ((lambda (_%L94104%_
                                              _%L94106%_
                                              _%L94107%_
                                              _%L94108%_
                                              _%L94109%_
                                              _%L94110%_)
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
                                         (cons _%L94110%_ '()))
                                   (cons _%L94109%_ (cons '#f '()))))
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
                               (cons _%L94110%_
                                     (cons 'slot: (cons _%L94109%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L94110%_ '()))
                                         (cons (cons _%L94108%_
                                                     (cons _%L94110%_
                                                           (cons _%L94109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L94110%_ '()))
                                               (cons (cons _%L94107%_
                                                           (cons _%L94110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L94109%_
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
                                           (cons _%L94110%_ '()))
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
                                                     (cons (cons _%L94106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L94110%_
                               (cons _%L94109%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L94104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L94110%_
                                     (cons _%L94109%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9402094098%_
                                     _%hd9401794088%_
                                     _%hd9401494078%_
                                     _%hd9401194068%_
                                     _%hd9400894058%_
                                     _%hd9400594048%_)
                                    (_%g9399394027%_ _%g9399494031%_))))
                            (_%g9399394027%_ _%g9399494031%_))))
                    (_%g9399394027%_ _%g9399494031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9399394027%_
                                                     _%g9399494031%_))))
                                            (_%g9399394027%_
                                             _%g9399494031%_))))
                                    (_%g9399394027%_ _%g9399494031%_))))
                            (_%g9399394027%_ _%g9399494031%_))))
                    (_%g9399394027%_ _%g9399494031%_)))))
        (_%g9399294138%_ _%$stx93989%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx94142%_)
      (let* ((_%g9414694172%_
              (lambda (_%g9414794168%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9414794168%_)))
             (_%g9414594255%_
              (lambda (_%g9414794176%_)
                (if (gx#stx-pair? _%g9414794176%_)
                    (let ((_%e9415294179%_ (gx#syntax-e _%g9414794176%_)))
                      (let ((_%hd9415394183%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9415294179%_)))
                            (_%tl9415494186%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9415294179%_))))
                        (if (gx#stx-pair? _%tl9415494186%_)
                            (let ((_%e9415594189%_
                                   (gx#syntax-e _%tl9415494186%_)))
                              (let ((_%hd9415694193%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9415594189%_)))
                                    (_%tl9415794196%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9415594189%_))))
                                (if (gx#stx-pair? _%tl9415794196%_)
                                    (let ((_%e9415894199%_
                                           (gx#syntax-e _%tl9415794196%_)))
                                      (let ((_%hd9415994203%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9415894199%_)))
                                            (_%tl9416094206%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9415894199%_))))
                                        (if (gx#stx-pair? _%tl9416094206%_)
                                            (let ((_%e9416194209%_
                                                   (gx#syntax-e
                                                    _%tl9416094206%_)))
                                              (let ((_%hd9416294213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9416194209%_)))
                                                    (_%tl9416394216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9416194209%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9416394216%_)
                                                    (let ((_%e9416494219%_
                                                           (gx#syntax-e
                                                            _%tl9416394216%_)))
                                                      (let ((_%hd9416594223%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9416494219%_)))
                    (_%tl9416694226%_
                     (let () (declare (not safe)) (##cdr _%e9416494219%_))))
                (if (gx#stx-null? _%tl9416694226%_)
                    ((lambda (_%L94229%_ _%L94231%_ _%L94232%_ _%L94233%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L94233%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L94232%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L94231%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L94229%_
                                     (cons _%L94233%_ (cons _%L94232%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9416594223%_
                     _%hd9416294213%_
                     _%hd9415994203%_
                     _%hd9415694193%_)
                    (_%g9414694172%_ _%g9414794176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9414694172%_
                                                     _%g9414794176%_))))
                                            (_%g9414694172%_
                                             _%g9414794176%_))))
                                    (_%g9414694172%_ _%g9414794176%_))))
                            (_%g9414694172%_ _%g9414794176%_))))
                    (_%g9414694172%_ _%g9414794176%_)))))
        (_%g9414594255%_ _%$stx94142%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx94259%_)
      (let* ((_%g9426394292%_
              (lambda (_%g9426494288%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9426494288%_)))
             (_%g9426294392%_
              (lambda (_%g9426494296%_)
                (if (gx#stx-pair? _%g9426494296%_)
                    (let ((_%e9426794299%_ (gx#syntax-e _%g9426494296%_)))
                      (let ((_%hd9426894303%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9426794299%_)))
                            (_%tl9426994306%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9426794299%_))))
                        (if (gx#stx-pair/null? _%tl9426994306%_)
                            (let ((_g100089_
                                   (gx#syntax-split-splice
                                    _%tl9426994306%_
                                    '0)))
                              (begin
                                (let ((_g100090_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g100089_)
                                             (##vector-length _g100089_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g100090_ 2)))
                                      (error "Context expects 2 values"
                                             _g100090_)))
                                (let ((_%target9427094309%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100089_ 0)))
                                      (_%tl9427294312%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100089_ 1))))
                                  (if (gx#stx-null? _%tl9427294312%_)
                                      (letrec ((_%loop9427394315%_
                                                (lambda (_%hd9427194319%_
                                                         _%name9427794322%_
                                                         _%t9427894324%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9427194319%_)
                                                      (let ((_%e9427494327%_
                                                             (gx#syntax-e
                                                              _%hd9427194319%_)))
                                                        (let ((_%lp-hd9427594331%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9427494327%_)))
                      (_%lp-tl9427694334%_
                       (let () (declare (not safe)) (##cdr _%e9427494327%_))))
                  (if (gx#stx-pair? _%lp-hd9427594331%_)
                      (let ((_%e9428194337%_
                             (gx#syntax-e _%lp-hd9427594331%_)))
                        (let ((_%hd9428294341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9428194337%_)))
                              (_%tl9428394344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9428194337%_))))
                          (if (gx#stx-pair? _%tl9428394344%_)
                              (let ((_%e9428494347%_
                                     (gx#syntax-e _%tl9428394344%_)))
                                (let ((_%hd9428594351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9428494347%_)))
                                      (_%tl9428694354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9428494347%_))))
                                  (if (gx#stx-null? _%tl9428694354%_)
                                      (_%loop9427394315%_
                                       _%lp-tl9427694334%_
                                       (cons _%hd9428594351%_
                                             _%name9427794322%_)
                                       (cons _%hd9428294341%_ _%t9427894324%_))
                                      (_%g9426394292%_ _%g9426494296%_))))
                              (_%g9426394292%_ _%g9426494296%_))))
                      (_%g9426394292%_ _%g9426494296%_))))
              (let ((_%name9427994357%_ (reverse _%name9427794322%_))
                    (_%t9428094360%_ (reverse _%t9427894324%_)))
                ((lambda (_%L94363%_ _%L94365%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L94363%_
                            _%L94365%_)
                           (let ((__tmp100091
                                  (lambda (_%g9438094384%_
                                           _%g9438194387%_
                                           _%g9438294389%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9438194387%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9438094384%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9438294389%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp100091
                              '()
                              _%L94363%_
                              _%L94365%_)))))
                 _%name9427994357%_
                 _%t9428094360%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9427394315%_
                                         _%target9427094309%_
                                         '()
                                         '()))
                                      (_%g9426394292%_ _%g9426494296%_)))))
                            (_%g9426394292%_ _%g9426494296%_))))
                    (_%g9426394292%_ _%g9426494296%_)))))
        (_%g9426294392%_ _%$stx94259%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx94397%_)
      (let* ((_%g9440194432%_
              (lambda (_%g9440294428%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9440294428%_)))
             (_%g9440094551%_
              (lambda (_%g9440294436%_)
                (if (gx#stx-pair? _%g9440294436%_)
                    (let ((_%e9440694439%_ (gx#syntax-e _%g9440294436%_)))
                      (let ((_%hd9440794443%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9440694439%_)))
                            (_%tl9440894446%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9440694439%_))))
                        (if (gx#stx-pair? _%tl9440894446%_)
                            (let ((_%e9440994449%_
                                   (gx#syntax-e _%tl9440894446%_)))
                              (let ((_%hd9441094453%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9440994449%_)))
                                    (_%tl9441194456%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9440994449%_))))
                                (if (gx#stx-pair? _%tl9441194456%_)
                                    (let ((_%e9441294459%_
                                           (gx#syntax-e _%tl9441194456%_)))
                                      (let ((_%hd9441394463%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9441294459%_)))
                                            (_%tl9441494466%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9441294459%_))))
                                        (if (gx#stx-pair? _%tl9441494466%_)
                                            (let ((_%e9441594469%_
                                                   (gx#syntax-e
                                                    _%tl9441494466%_)))
                                              (let ((_%hd9441694473%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9441594469%_)))
                                                    (_%tl9441794476%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9441594469%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9441694473%_)
                                                    (let ((_g100092_
                                                           (gx#syntax-split-splice
                                                            _%hd9441694473%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g100093_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g100092_)
                             (##vector-length _g100092_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g100093_ 2)))
                      (error "Context expects 2 values" _g100093_)))
                (let ((_%target9441894479%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g100092_ 0)))
                      (_%tl9442094482%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g100092_ 1))))
                  (if (gx#stx-null? _%tl9442094482%_)
                      (letrec ((_%loop9442194485%_
                                (lambda (_%hd9441994489%_ _%super9442594492%_)
                                  (if (gx#stx-pair? _%hd9441994489%_)
                                      (let ((_%e9442294495%_
                                             (gx#syntax-e _%hd9441994489%_)))
                                        (let ((_%lp-hd9442394499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9442294495%_)))
                                              (_%lp-tl9442494502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9442294495%_))))
                                          (_%loop9442194485%_
                                           _%lp-tl9442494502%_
                                           (cons _%lp-hd9442394499%_
                                                 _%super9442594492%_))))
                                      (let ((_%super9442694505%_
                                             (reverse _%super9442594492%_)))
                                        (if (gx#stx-null? _%tl9441794476%_)
                                            ((lambda (_%L94509%_
                                                      _%L94511%_
                                                      _%L94512%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L94512%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L94511%_
                                                 (cons (let ((__tmp100094
                                                              (lambda (_%g9453694539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9453794542%_)
                        (cons _%g9453694539%_ _%g9453794542%_))))
                 (declare (not safe))
                 (__foldr1 __tmp100094 '() _%L94509%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L94511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp100095
                                  (lambda (_%g9453494545%_ _%g9453594548%_)
                                    (cons _%g9453494545%_ _%g9453594548%_))))
                             (declare (not safe))
                             (__foldr1 __tmp100095 '() _%L94509%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9442694505%_
                                             _%hd9441394463%_
                                             _%hd9441094453%_)
                                            (_%g9440194432%_
                                             _%g9440294436%_)))))))
                        (_%loop9442194485%_ _%target9441894479%_ '()))
                      (_%g9440194432%_ _%g9440294436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9440194432%_
                                                     _%g9440294436%_))))
                                            (_%g9440194432%_
                                             _%g9440294436%_))))
                                    (_%g9440194432%_ _%g9440294436%_))))
                            (_%g9440194432%_ _%g9440294436%_))))
                    (_%g9440194432%_ _%g9440294436%_)))))
        (_%g9440094551%_ _%$stx94397%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx94556%_)
      (let* ((_%g9456094591%_
              (lambda (_%g9456194587%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9456194587%_)))
             (_%g9455994702%_
              (lambda (_%g9456194595%_)
                (if (gx#stx-pair? _%g9456194595%_)
                    (let ((_%e9456594598%_ (gx#syntax-e _%g9456194595%_)))
                      (let ((_%hd9456694602%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9456594598%_)))
                            (_%tl9456794605%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9456594598%_))))
                        (if (gx#stx-pair? _%tl9456794605%_)
                            (let ((_%e9456894608%_
                                   (gx#syntax-e _%tl9456794605%_)))
                              (let ((_%hd9456994612%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9456894608%_)))
                                    (_%tl9457094615%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9456894608%_))))
                                (if (gx#stx-pair? _%tl9457094615%_)
                                    (let ((_%e9457194618%_
                                           (gx#syntax-e _%tl9457094615%_)))
                                      (let ((_%hd9457294622%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9457194618%_)))
                                            (_%tl9457394625%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9457194618%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9457294622%_)
                                            (let ((_g100096_
                                                   (gx#syntax-split-splice
                                                    _%hd9457294622%_
                                                    '0)))
                                              (begin
                                                (let ((_g100097_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g100096_)
                                                             (##vector-length
                                                              _g100096_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g100097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g100097_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9457494628%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g100096_
                                                          0)))
                                                      (_%tl9457694631%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g100096_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9457694631%_)
                                                      (letrec ((_%loop9457794634%_
                                                                (lambda (_%hd9457594638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9458194641%_)
                          (if (gx#stx-pair? _%hd9457594638%_)
                              (let ((_%e9457894644%_
                                     (gx#syntax-e _%hd9457594638%_)))
                                (let ((_%lp-hd9457994648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9457894644%_)))
                                      (_%lp-tl9458094651%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9457894644%_))))
                                  (_%loop9457794634%_
                                   _%lp-tl9458094651%_
                                   (cons _%lp-hd9457994648%_
                                         _%super9458194641%_))))
                              (let ((_%super9458294654%_
                                     (reverse _%super9458194641%_)))
                                (if (gx#stx-pair? _%tl9457394625%_)
                                    (let ((_%e9458394658%_
                                           (gx#syntax-e _%tl9457394625%_)))
                                      (let ((_%hd9458494662%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9458394658%_)))
                                            (_%tl9458594665%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9458394658%_))))
                                        (if (gx#stx-null? _%tl9458594665%_)
                                            ((lambda (_%L94668%_
                                                      _%L94670%_
                                                      _%L94671%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L94671%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L94671%_
                                                 (cons (let ((__tmp100098
                                                              (lambda (_%g9469394696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9469494699%_)
                        (cons _%g9469394696%_ _%g9469494699%_))))
                 (declare (not safe))
                 (__foldr1 __tmp100098 '() _%L94670%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L94668%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9458494662%_
                                             _%super9458294654%_
                                             _%hd9456994612%_)
                                            (_%g9456094591%_
                                             _%g9456194595%_))))
                                    (_%g9456094591%_ _%g9456194595%_)))))))
                (_%loop9457794634%_ _%target9457494628%_ '()))
              (_%g9456094591%_ _%g9456194595%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9456094591%_
                                             _%g9456194595%_))))
                                    (_%g9456094591%_ _%g9456194595%_))))
                            (_%g9456094591%_ _%g9456194595%_))))
                    (_%g9456094591%_ _%g9456194595%_)))))
        (_%g9455994702%_ _%$stx94556%_)))))
