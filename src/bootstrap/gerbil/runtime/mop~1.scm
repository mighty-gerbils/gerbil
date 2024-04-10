(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx92293%_)
      (let* ((_%__stx9879798798%_ _%$stx92293%_)
             (_%g9229892327%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9879798798%_))))
        (let ((_%__kont9880098801%_
               (lambda (_%L92420%_ _%L92422%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L92422%_ (cons _%L92420%_ '())))
                             (cons _%L92420%_ '())))))
              (_%__kont9880298803%_
               (lambda (_%L92364%_ _%L92366%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L92364%_ (cons _%L92364%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L92366%_
                                                           (cons _%L92364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L92364%_ '())))
                                   '()))))))
          (let ((_%__match9882498825%_
                 (lambda (_%e9230292390%_
                          _%hd9230392394%_
                          _%tl9230492397%_
                          _%e9230592400%_
                          _%hd9230692404%_
                          _%tl9230792407%_
                          _%e9230892410%_
                          _%hd9230992414%_
                          _%tl9231092417%_)
                   (let ((_%L92420%_ _%hd9230992414%_)
                         (_%L92422%_ _%hd9230692404%_))
                     (if (or (gx#identifier? _%L92420%_)
                             (gx#stx-fixnum? _%L92420%_))
                         (_%__kont9880098801%_ _%L92420%_ _%L92422%_)
                         (_%__kont9880298803%_
                          _%hd9230992414%_
                          _%hd9230692404%_))))))
            (if (gx#stx-pair? _%__stx9879798798%_)
                (let ((_%e9230292390%_ (gx#syntax-e _%__stx9879798798%_)))
                  (let ((_%tl9230492397%_
                         (let () (declare (not safe)) (##cdr _%e9230292390%_)))
                        (_%hd9230392394%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9230292390%_))))
                    (if (gx#stx-pair? _%tl9230492397%_)
                        (let ((_%e9230592400%_ (gx#syntax-e _%tl9230492397%_)))
                          (let ((_%tl9230792407%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9230592400%_)))
                                (_%hd9230692404%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9230592400%_))))
                            (if (gx#stx-pair? _%tl9230792407%_)
                                (let ((_%e9230892410%_
                                       (gx#syntax-e _%tl9230792407%_)))
                                  (let ((_%tl9231092417%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9230892410%_)))
                                        (_%hd9230992414%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9230892410%_))))
                                    (if (gx#stx-null? _%tl9231092417%_)
                                        (_%__match9882498825%_
                                         _%e9230292390%_
                                         _%hd9230392394%_
                                         _%tl9230492397%_
                                         _%e9230592400%_
                                         _%hd9230692404%_
                                         _%tl9230792407%_
                                         _%e9230892410%_
                                         _%hd9230992414%_
                                         _%tl9231092417%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9229892327%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9229892327%_)))))
                        (let () (declare (not safe)) (_%g9229892327%_)))))
                (let () (declare (not safe)) (_%g9229892327%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx92445%_)
      (let* ((_%__stx9884798848%_ _%$stx92445%_)
             (_%g9245092479%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9884798848%_))))
        (let ((_%__kont9885098851%_
               (lambda (_%L92571%_ _%L92573%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L92573%_ (cons _%L92571%_ '())))
                             (cons '0 '())))))
              (_%__kont9885298853%_
               (lambda (_%L92516%_ _%L92518%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L92516%_ (cons _%L92516%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L92518%_
                                                           (cons _%L92516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9887498875%_
                 (lambda (_%e9245492541%_
                          _%hd9245592545%_
                          _%tl9245692548%_
                          _%e9245792551%_
                          _%hd9245892555%_
                          _%tl9245992558%_
                          _%e9246092561%_
                          _%hd9246192565%_
                          _%tl9246292568%_)
                   (let ((_%L92571%_ _%hd9246192565%_)
                         (_%L92573%_ _%hd9245892555%_))
                     (if (or (gx#identifier? _%L92571%_)
                             (gx#stx-fixnum? _%L92571%_))
                         (_%__kont9885098851%_ _%L92571%_ _%L92573%_)
                         (_%__kont9885298853%_
                          _%hd9246192565%_
                          _%hd9245892555%_))))))
            (if (gx#stx-pair? _%__stx9884798848%_)
                (let ((_%e9245492541%_ (gx#syntax-e _%__stx9884798848%_)))
                  (let ((_%tl9245692548%_
                         (let () (declare (not safe)) (##cdr _%e9245492541%_)))
                        (_%hd9245592545%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9245492541%_))))
                    (if (gx#stx-pair? _%tl9245692548%_)
                        (let ((_%e9245792551%_ (gx#syntax-e _%tl9245692548%_)))
                          (let ((_%tl9245992558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9245792551%_)))
                                (_%hd9245892555%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9245792551%_))))
                            (if (gx#stx-pair? _%tl9245992558%_)
                                (let ((_%e9246092561%_
                                       (gx#syntax-e _%tl9245992558%_)))
                                  (let ((_%tl9246292568%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9246092561%_)))
                                        (_%hd9246192565%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9246092561%_))))
                                    (if (gx#stx-null? _%tl9246292568%_)
                                        (_%__match9887498875%_
                                         _%e9245492541%_
                                         _%hd9245592545%_
                                         _%tl9245692548%_
                                         _%e9245792551%_
                                         _%hd9245892555%_
                                         _%tl9245992558%_
                                         _%e9246092561%_
                                         _%hd9246192565%_
                                         _%tl9246292568%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9245092479%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9245092479%_)))))
                        (let () (declare (not safe)) (_%g9245092479%_)))))
                (let () (declare (not safe)) (_%g9245092479%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx92596%_)
      (let* ((_%g9259992620%_
              (lambda (_%g9260092616%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9260092616%_)))
             (_%g9259892848%_
              (lambda (_%g9260092624%_)
                (if (gx#stx-pair? _%g9260092624%_)
                    (let ((_%e9260392627%_ (gx#syntax-e _%g9260092624%_)))
                      (let ((_%hd9260492631%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9260392627%_)))
                            (_%tl9260592634%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9260392627%_))))
                        (if (gx#stx-pair? _%tl9260592634%_)
                            (let ((_%e9260692637%_
                                   (gx#syntax-e _%tl9260592634%_)))
                              (let ((_%hd9260792641%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9260692637%_)))
                                    (_%tl9260892644%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9260692637%_))))
                                (if (gx#stx-pair? _%hd9260792641%_)
                                    (let ((_%e9260992647%_
                                           (gx#syntax-e _%hd9260792641%_)))
                                      (let ((_%hd9261092651%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9260992647%_)))
                                            (_%tl9261192654%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9260992647%_))))
                                        (if (gx#stx-pair? _%tl9261192654%_)
                                            (let ((_%e9261292657%_
                                                   (gx#syntax-e
                                                    _%tl9261192654%_)))
                                              (let ((_%hd9261392661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9261292657%_)))
                                                    (_%tl9261492664%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9261292657%_))))
                                                (if (gx#stx-null?
                                                     _%tl9261492664%_)
                                                    (if (gx#stx-null?
                                                         _%tl9260892644%_)
                                                        ((lambda (_%L92667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L92669%_)
                   (let* ((_%g9268792695%_
                           (lambda (_%g9268892691%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9268892691%_)))
                          (_%g9268692844%_
                           (lambda (_%g9268892699%_)
                             ((lambda (_%L92702%_)
                                (let* ((_%g9271492722%_
                                        (lambda (_%g9271592718%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9271592718%_)))
                                       (_%g9271392840%_
                                        (lambda (_%g9271592726%_)
                                          ((lambda (_%L92729%_)
                                             (let* ((_%g9274292750%_
                                                     (lambda (_%g9274392746%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9274392746%_)))
                                                    (_%g9274192836%_
                                                     (lambda (_%g9274392754%_)
                                                       ((lambda (_%L92757%_)
                                                          (let* ((_%g9277092778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9277192774%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9277192774%_)))
                         (_%g9276992832%_
                          (lambda (_%g9277192782%_)
                            ((lambda (_%L92785%_)
                               (let* ((_%g9279892806%_
                                       (lambda (_%g9279992802%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9279992802%_)))
                                      (_%g9279792828%_
                                       (lambda (_%g9279992810%_)
                                         ((lambda (_%L92813%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L92729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L92702%_
                                                          (cons _%L92669%_
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
                                          (cons _%L92667%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L92669%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L92757%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L92702%_
                                                                (cons _%L92669%_
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
                                                (cons _%L92667%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L92669%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L92785%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L92702%_ (cons _%L92669%_ (cons '#t '()))))
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
                                                            (cons _%L92667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L92669%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L92813%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L92702%_
                                    (cons _%L92669%_ (cons '#f '()))))
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
                          (cons _%L92667%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L92669%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9279992810%_))))
                                 (_%g9279792828%_
                                  (gx#stx-identifier
                                   _%L92669%_
                                   '"&"
                                   _%L92785%_))))
                             _%g9277192782%_))))
                    (_%g9276992832%_
                     (gx#stx-identifier _%L92669%_ _%L92729%_ '"-set!"))))
                _%g9274392754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9274192836%_
                                                (gx#stx-identifier
                                                 _%L92669%_
                                                 '"&"
                                                 _%L92729%_))))
                                           _%g9271592726%_))))
                                  (_%g9271392840%_
                                   (gx#stx-identifier
                                    _%L92669%_
                                    '"class-type-"
                                    _%L92669%_))))
                              _%g9268892699%_))))
                     (_%g9268692844%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9261392661%_
                 _%hd9261092651%_)
                (_%g9259992620%_ _%g9260092624%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9259992620%_
                                                     _%g9260092624%_))))
                                            (_%g9259992620%_
                                             _%g9260092624%_))))
                                    (_%g9259992620%_ _%g9260092624%_))))
                            (_%g9259992620%_ _%g9260092624%_))))
                    (_%g9259992620%_ _%g9260092624%_)))))
        (_%g9259892848%_ _%stx92596%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx92852%_)
      (let* ((_%g9285692885%_
              (lambda (_%g9285792881%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9285792881%_)))
             (_%g9285592985%_
              (lambda (_%g9285792889%_)
                (if (gx#stx-pair? _%g9285792889%_)
                    (let ((_%e9286092892%_ (gx#syntax-e _%g9285792889%_)))
                      (let ((_%hd9286192896%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9286092892%_)))
                            (_%tl9286292899%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9286092892%_))))
                        (if (gx#stx-pair/null? _%tl9286292899%_)
                            (let ((_g99088_
                                   (gx#syntax-split-splice
                                    _%tl9286292899%_
                                    '0)))
                              (begin
                                (let ((_g99089_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g99088_)
                                             (##vector-length _g99088_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g99089_ 2)))
                                      (error "Context expects 2 values"
                                             _g99089_)))
                                (let ((_%target9286392902%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99088_ 0)))
                                      (_%tl9286592905%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99088_ 1))))
                                  (if (gx#stx-null? _%tl9286592905%_)
                                      (letrec ((_%loop9286692908%_
                                                (lambda (_%hd9286492912%_
                                                         _%field9287092915%_
                                                         _%slot9287192917%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9286492912%_)
                                                      (let ((_%e9286792920%_
                                                             (gx#syntax-e
                                                              _%hd9286492912%_)))
                                                        (let ((_%lp-hd9286892924%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9286792920%_)))
                      (_%lp-tl9286992927%_
                       (let () (declare (not safe)) (##cdr _%e9286792920%_))))
                  (if (gx#stx-pair? _%lp-hd9286892924%_)
                      (let ((_%e9287492930%_
                             (gx#syntax-e _%lp-hd9286892924%_)))
                        (let ((_%hd9287592934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9287492930%_)))
                              (_%tl9287692937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9287492930%_))))
                          (if (gx#stx-pair? _%tl9287692937%_)
                              (let ((_%e9287792940%_
                                     (gx#syntax-e _%tl9287692937%_)))
                                (let ((_%hd9287892944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9287792940%_)))
                                      (_%tl9287992947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9287792940%_))))
                                  (if (gx#stx-null? _%tl9287992947%_)
                                      (_%loop9286692908%_
                                       _%lp-tl9286992927%_
                                       (cons _%hd9287892944%_
                                             _%field9287092915%_)
                                       (cons _%hd9287592934%_
                                             _%slot9287192917%_))
                                      (_%g9285692885%_ _%g9285792889%_))))
                              (_%g9285692885%_ _%g9285792889%_))))
                      (_%g9285692885%_ _%g9285792889%_))))
              (let ((_%field9287292950%_ (reverse _%field9287092915%_))
                    (_%slot9287392953%_ (reverse _%slot9287192917%_)))
                ((lambda (_%L92956%_ _%L92958%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92956%_
                            _%L92958%_)
                           (let ((__tmp99090
                                  (lambda (_%g9297392977%_
                                           _%g9297492980%_
                                           _%g9297592982%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9297492980%_
                                                            (cons _%g9297392977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9297592982%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp99090
                              '()
                              _%L92956%_
                              _%L92958%_)))))
                 _%field9287292950%_
                 _%slot9287392953%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9286692908%_
                                         _%target9286392902%_
                                         '()
                                         '()))
                                      (_%g9285692885%_ _%g9285792889%_)))))
                            (_%g9285692885%_ _%g9285792889%_))))
                    (_%g9285692885%_ _%g9285792889%_)))))
        (_%g9285592985%_ _%$stx92852%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx92990%_)
      (let* ((_%g9299493028%_
              (lambda (_%g9299593024%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9299593024%_)))
             (_%g9299393139%_
              (lambda (_%g9299593032%_)
                (if (gx#stx-pair? _%g9299593032%_)
                    (let ((_%e9300293035%_ (gx#syntax-e _%g9299593032%_)))
                      (let ((_%hd9300393039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9300293035%_)))
                            (_%tl9300493042%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9300293035%_))))
                        (if (gx#stx-pair? _%tl9300493042%_)
                            (let ((_%e9300593045%_
                                   (gx#syntax-e _%tl9300493042%_)))
                              (let ((_%hd9300693049%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9300593045%_)))
                                    (_%tl9300793052%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9300593045%_))))
                                (if (gx#stx-pair? _%tl9300793052%_)
                                    (let ((_%e9300893055%_
                                           (gx#syntax-e _%tl9300793052%_)))
                                      (let ((_%hd9300993059%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9300893055%_)))
                                            (_%tl9301093062%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9300893055%_))))
                                        (if (gx#stx-pair? _%tl9301093062%_)
                                            (let ((_%e9301193065%_
                                                   (gx#syntax-e
                                                    _%tl9301093062%_)))
                                              (let ((_%hd9301293069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9301193065%_)))
                                                    (_%tl9301393072%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9301193065%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9301393072%_)
                                                    (let ((_%e9301493075%_
                                                           (gx#syntax-e
                                                            _%tl9301393072%_)))
                                                      (let ((_%hd9301593079%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9301493075%_)))
                    (_%tl9301693082%_
                     (let () (declare (not safe)) (##cdr _%e9301493075%_))))
                (if (gx#stx-pair? _%tl9301693082%_)
                    (let ((_%e9301793085%_ (gx#syntax-e _%tl9301693082%_)))
                      (let ((_%hd9301893089%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9301793085%_)))
                            (_%tl9301993092%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9301793085%_))))
                        (if (gx#stx-pair? _%tl9301993092%_)
                            (let ((_%e9302093095%_
                                   (gx#syntax-e _%tl9301993092%_)))
                              (let ((_%hd9302193099%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9302093095%_)))
                                    (_%tl9302293102%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9302093095%_))))
                                (if (gx#stx-null? _%tl9302293102%_)
                                    ((lambda (_%L93105%_
                                              _%L93107%_
                                              _%L93108%_
                                              _%L93109%_
                                              _%L93110%_
                                              _%L93111%_)
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
                                         (cons _%L93111%_ '()))
                                   (cons _%L93110%_ (cons '#f '()))))
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
                               (cons _%L93111%_
                                     (cons 'slot: (cons _%L93110%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L93111%_ '()))
                                         (cons (cons _%L93109%_
                                                     (cons _%L93111%_
                                                           (cons _%L93110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L93111%_ '()))
                                               (cons (cons _%L93108%_
                                                           (cons _%L93111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L93110%_
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
                                           (cons _%L93111%_ '()))
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
                                                     (cons (cons _%L93107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L93111%_
                               (cons _%L93110%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L93105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L93111%_
                                     (cons _%L93110%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9302193099%_
                                     _%hd9301893089%_
                                     _%hd9301593079%_
                                     _%hd9301293069%_
                                     _%hd9300993059%_
                                     _%hd9300693049%_)
                                    (_%g9299493028%_ _%g9299593032%_))))
                            (_%g9299493028%_ _%g9299593032%_))))
                    (_%g9299493028%_ _%g9299593032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9299493028%_
                                                     _%g9299593032%_))))
                                            (_%g9299493028%_
                                             _%g9299593032%_))))
                                    (_%g9299493028%_ _%g9299593032%_))))
                            (_%g9299493028%_ _%g9299593032%_))))
                    (_%g9299493028%_ _%g9299593032%_)))))
        (_%g9299393139%_ _%$stx92990%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx93143%_)
      (let* ((_%g9314793173%_
              (lambda (_%g9314893169%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9314893169%_)))
             (_%g9314693256%_
              (lambda (_%g9314893177%_)
                (if (gx#stx-pair? _%g9314893177%_)
                    (let ((_%e9315393180%_ (gx#syntax-e _%g9314893177%_)))
                      (let ((_%hd9315493184%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9315393180%_)))
                            (_%tl9315593187%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9315393180%_))))
                        (if (gx#stx-pair? _%tl9315593187%_)
                            (let ((_%e9315693190%_
                                   (gx#syntax-e _%tl9315593187%_)))
                              (let ((_%hd9315793194%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9315693190%_)))
                                    (_%tl9315893197%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9315693190%_))))
                                (if (gx#stx-pair? _%tl9315893197%_)
                                    (let ((_%e9315993200%_
                                           (gx#syntax-e _%tl9315893197%_)))
                                      (let ((_%hd9316093204%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9315993200%_)))
                                            (_%tl9316193207%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9315993200%_))))
                                        (if (gx#stx-pair? _%tl9316193207%_)
                                            (let ((_%e9316293210%_
                                                   (gx#syntax-e
                                                    _%tl9316193207%_)))
                                              (let ((_%hd9316393214%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9316293210%_)))
                                                    (_%tl9316493217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9316293210%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9316493217%_)
                                                    (let ((_%e9316593220%_
                                                           (gx#syntax-e
                                                            _%tl9316493217%_)))
                                                      (let ((_%hd9316693224%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9316593220%_)))
                    (_%tl9316793227%_
                     (let () (declare (not safe)) (##cdr _%e9316593220%_))))
                (if (gx#stx-null? _%tl9316793227%_)
                    ((lambda (_%L93230%_ _%L93232%_ _%L93233%_ _%L93234%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L93234%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L93233%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L93232%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L93230%_
                                     (cons _%L93234%_ (cons _%L93233%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9316693224%_
                     _%hd9316393214%_
                     _%hd9316093204%_
                     _%hd9315793194%_)
                    (_%g9314793173%_ _%g9314893177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9314793173%_
                                                     _%g9314893177%_))))
                                            (_%g9314793173%_
                                             _%g9314893177%_))))
                                    (_%g9314793173%_ _%g9314893177%_))))
                            (_%g9314793173%_ _%g9314893177%_))))
                    (_%g9314793173%_ _%g9314893177%_)))))
        (_%g9314693256%_ _%$stx93143%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx93260%_)
      (let* ((_%g9326493293%_
              (lambda (_%g9326593289%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9326593289%_)))
             (_%g9326393393%_
              (lambda (_%g9326593297%_)
                (if (gx#stx-pair? _%g9326593297%_)
                    (let ((_%e9326893300%_ (gx#syntax-e _%g9326593297%_)))
                      (let ((_%hd9326993304%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9326893300%_)))
                            (_%tl9327093307%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9326893300%_))))
                        (if (gx#stx-pair/null? _%tl9327093307%_)
                            (let ((_g99091_
                                   (gx#syntax-split-splice
                                    _%tl9327093307%_
                                    '0)))
                              (begin
                                (let ((_g99092_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g99091_)
                                             (##vector-length _g99091_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g99092_ 2)))
                                      (error "Context expects 2 values"
                                             _g99092_)))
                                (let ((_%target9327193310%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99091_ 0)))
                                      (_%tl9327393313%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g99091_ 1))))
                                  (if (gx#stx-null? _%tl9327393313%_)
                                      (letrec ((_%loop9327493316%_
                                                (lambda (_%hd9327293320%_
                                                         _%name9327893323%_
                                                         _%t9327993325%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9327293320%_)
                                                      (let ((_%e9327593328%_
                                                             (gx#syntax-e
                                                              _%hd9327293320%_)))
                                                        (let ((_%lp-hd9327693332%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9327593328%_)))
                      (_%lp-tl9327793335%_
                       (let () (declare (not safe)) (##cdr _%e9327593328%_))))
                  (if (gx#stx-pair? _%lp-hd9327693332%_)
                      (let ((_%e9328293338%_
                             (gx#syntax-e _%lp-hd9327693332%_)))
                        (let ((_%hd9328393342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9328293338%_)))
                              (_%tl9328493345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9328293338%_))))
                          (if (gx#stx-pair? _%tl9328493345%_)
                              (let ((_%e9328593348%_
                                     (gx#syntax-e _%tl9328493345%_)))
                                (let ((_%hd9328693352%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9328593348%_)))
                                      (_%tl9328793355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9328593348%_))))
                                  (if (gx#stx-null? _%tl9328793355%_)
                                      (_%loop9327493316%_
                                       _%lp-tl9327793335%_
                                       (cons _%hd9328693352%_
                                             _%name9327893323%_)
                                       (cons _%hd9328393342%_ _%t9327993325%_))
                                      (_%g9326493293%_ _%g9326593297%_))))
                              (_%g9326493293%_ _%g9326593297%_))))
                      (_%g9326493293%_ _%g9326593297%_))))
              (let ((_%name9328093358%_ (reverse _%name9327893323%_))
                    (_%t9328193361%_ (reverse _%t9327993325%_)))
                ((lambda (_%L93364%_ _%L93366%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L93364%_
                            _%L93366%_)
                           (let ((__tmp99093
                                  (lambda (_%g9338193385%_
                                           _%g9338293388%_
                                           _%g9338393390%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9338293388%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9338193385%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9338393390%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp99093
                              '()
                              _%L93364%_
                              _%L93366%_)))))
                 _%name9328093358%_
                 _%t9328193361%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9327493316%_
                                         _%target9327193310%_
                                         '()
                                         '()))
                                      (_%g9326493293%_ _%g9326593297%_)))))
                            (_%g9326493293%_ _%g9326593297%_))))
                    (_%g9326493293%_ _%g9326593297%_)))))
        (_%g9326393393%_ _%$stx93260%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx93398%_)
      (let* ((_%g9340293433%_
              (lambda (_%g9340393429%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9340393429%_)))
             (_%g9340193552%_
              (lambda (_%g9340393437%_)
                (if (gx#stx-pair? _%g9340393437%_)
                    (let ((_%e9340793440%_ (gx#syntax-e _%g9340393437%_)))
                      (let ((_%hd9340893444%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9340793440%_)))
                            (_%tl9340993447%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9340793440%_))))
                        (if (gx#stx-pair? _%tl9340993447%_)
                            (let ((_%e9341093450%_
                                   (gx#syntax-e _%tl9340993447%_)))
                              (let ((_%hd9341193454%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9341093450%_)))
                                    (_%tl9341293457%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9341093450%_))))
                                (if (gx#stx-pair? _%tl9341293457%_)
                                    (let ((_%e9341393460%_
                                           (gx#syntax-e _%tl9341293457%_)))
                                      (let ((_%hd9341493464%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9341393460%_)))
                                            (_%tl9341593467%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9341393460%_))))
                                        (if (gx#stx-pair? _%tl9341593467%_)
                                            (let ((_%e9341693470%_
                                                   (gx#syntax-e
                                                    _%tl9341593467%_)))
                                              (let ((_%hd9341793474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9341693470%_)))
                                                    (_%tl9341893477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9341693470%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9341793474%_)
                                                    (let ((_g99094_
                                                           (gx#syntax-split-splice
                                                            _%hd9341793474%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g99095_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g99094_)
                             (##vector-length _g99094_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g99095_ 2)))
                      (error "Context expects 2 values" _g99095_)))
                (let ((_%target9341993480%_
                       (let () (declare (not safe)) (##vector-ref _g99094_ 0)))
                      (_%tl9342193483%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g99094_ 1))))
                  (if (gx#stx-null? _%tl9342193483%_)
                      (letrec ((_%loop9342293486%_
                                (lambda (_%hd9342093490%_ _%super9342693493%_)
                                  (if (gx#stx-pair? _%hd9342093490%_)
                                      (let ((_%e9342393496%_
                                             (gx#syntax-e _%hd9342093490%_)))
                                        (let ((_%lp-hd9342493500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9342393496%_)))
                                              (_%lp-tl9342593503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9342393496%_))))
                                          (_%loop9342293486%_
                                           _%lp-tl9342593503%_
                                           (cons _%lp-hd9342493500%_
                                                 _%super9342693493%_))))
                                      (let ((_%super9342793506%_
                                             (reverse _%super9342693493%_)))
                                        (if (gx#stx-null? _%tl9341893477%_)
                                            ((lambda (_%L93510%_
                                                      _%L93512%_
                                                      _%L93513%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L93513%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L93512%_
                                                 (cons (let ((__tmp99096
                                                              (lambda (_%g9353793540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9353893543%_)
                        (cons _%g9353793540%_ _%g9353893543%_))))
                 (declare (not safe))
                 (__foldr1 __tmp99096 '() _%L93510%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L93512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp99097
                                  (lambda (_%g9353593546%_ _%g9353693549%_)
                                    (cons _%g9353593546%_ _%g9353693549%_))))
                             (declare (not safe))
                             (__foldr1 __tmp99097 '() _%L93510%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9342793506%_
                                             _%hd9341493464%_
                                             _%hd9341193454%_)
                                            (_%g9340293433%_
                                             _%g9340393437%_)))))))
                        (_%loop9342293486%_ _%target9341993480%_ '()))
                      (_%g9340293433%_ _%g9340393437%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9340293433%_
                                                     _%g9340393437%_))))
                                            (_%g9340293433%_
                                             _%g9340393437%_))))
                                    (_%g9340293433%_ _%g9340393437%_))))
                            (_%g9340293433%_ _%g9340393437%_))))
                    (_%g9340293433%_ _%g9340393437%_)))))
        (_%g9340193552%_ _%$stx93398%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx93557%_)
      (let* ((_%g9356193592%_
              (lambda (_%g9356293588%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9356293588%_)))
             (_%g9356093703%_
              (lambda (_%g9356293596%_)
                (if (gx#stx-pair? _%g9356293596%_)
                    (let ((_%e9356693599%_ (gx#syntax-e _%g9356293596%_)))
                      (let ((_%hd9356793603%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9356693599%_)))
                            (_%tl9356893606%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9356693599%_))))
                        (if (gx#stx-pair? _%tl9356893606%_)
                            (let ((_%e9356993609%_
                                   (gx#syntax-e _%tl9356893606%_)))
                              (let ((_%hd9357093613%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9356993609%_)))
                                    (_%tl9357193616%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9356993609%_))))
                                (if (gx#stx-pair? _%tl9357193616%_)
                                    (let ((_%e9357293619%_
                                           (gx#syntax-e _%tl9357193616%_)))
                                      (let ((_%hd9357393623%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9357293619%_)))
                                            (_%tl9357493626%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9357293619%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9357393623%_)
                                            (let ((_g99098_
                                                   (gx#syntax-split-splice
                                                    _%hd9357393623%_
                                                    '0)))
                                              (begin
                                                (let ((_g99099_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g99098_)
                                                             (##vector-length
                                                              _g99098_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g99099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g99099_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9357593629%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g99098_
                                                          0)))
                                                      (_%tl9357793632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g99098_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9357793632%_)
                                                      (letrec ((_%loop9357893635%_
                                                                (lambda (_%hd9357693639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9358293642%_)
                          (if (gx#stx-pair? _%hd9357693639%_)
                              (let ((_%e9357993645%_
                                     (gx#syntax-e _%hd9357693639%_)))
                                (let ((_%lp-hd9358093649%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9357993645%_)))
                                      (_%lp-tl9358193652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9357993645%_))))
                                  (_%loop9357893635%_
                                   _%lp-tl9358193652%_
                                   (cons _%lp-hd9358093649%_
                                         _%super9358293642%_))))
                              (let ((_%super9358393655%_
                                     (reverse _%super9358293642%_)))
                                (if (gx#stx-pair? _%tl9357493626%_)
                                    (let ((_%e9358493659%_
                                           (gx#syntax-e _%tl9357493626%_)))
                                      (let ((_%hd9358593663%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9358493659%_)))
                                            (_%tl9358693666%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9358493659%_))))
                                        (if (gx#stx-null? _%tl9358693666%_)
                                            ((lambda (_%L93669%_
                                                      _%L93671%_
                                                      _%L93672%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L93672%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L93672%_
                                                 (cons (let ((__tmp99100
                                                              (lambda (_%g9369493697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9369593700%_)
                        (cons _%g9369493697%_ _%g9369593700%_))))
                 (declare (not safe))
                 (__foldr1 __tmp99100 '() _%L93671%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L93669%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9358593663%_
                                             _%super9358393655%_
                                             _%hd9357093613%_)
                                            (_%g9356193592%_
                                             _%g9356293596%_))))
                                    (_%g9356193592%_ _%g9356293596%_)))))))
                (_%loop9357893635%_ _%target9357593629%_ '()))
              (_%g9356193592%_ _%g9356293596%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9356193592%_
                                             _%g9356293596%_))))
                                    (_%g9356193592%_ _%g9356293596%_))))
                            (_%g9356193592%_ _%g9356293596%_))))
                    (_%g9356193592%_ _%g9356293596%_)))))
        (_%g9356093703%_ _%$stx93557%_)))))
