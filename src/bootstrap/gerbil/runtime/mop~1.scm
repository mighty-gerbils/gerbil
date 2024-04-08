(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx91147%_)
      (let* ((_%__stx9765697657%_ _%$stx91147%_)
             (_%g9115291181%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9765697657%_))))
        (let ((_%__kont9765997660%_
               (lambda (_%L91274%_ _%L91276%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91276%_ (cons _%L91274%_ '())))
                             (cons _%L91274%_ '())))))
              (_%__kont9766197662%_
               (lambda (_%L91218%_ _%L91220%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91218%_ (cons _%L91218%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91220%_
                                                           (cons _%L91218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L91218%_ '())))
                                   '()))))))
          (let ((_%__match9768397684%_
                 (lambda (_%e9115691244%_
                          _%hd9115791248%_
                          _%tl9115891251%_
                          _%e9115991254%_
                          _%hd9116091258%_
                          _%tl9116191261%_
                          _%e9116291264%_
                          _%hd9116391268%_
                          _%tl9116491271%_)
                   (let ((_%L91274%_ _%hd9116391268%_)
                         (_%L91276%_ _%hd9116091258%_))
                     (if (or (gx#identifier? _%L91274%_)
                             (gx#stx-fixnum? _%L91274%_))
                         (_%__kont9765997660%_ _%L91274%_ _%L91276%_)
                         (_%__kont9766197662%_
                          _%hd9116391268%_
                          _%hd9116091258%_))))))
            (if (gx#stx-pair? _%__stx9765697657%_)
                (let ((_%e9115691244%_ (gx#syntax-e _%__stx9765697657%_)))
                  (let ((_%tl9115891251%_
                         (let () (declare (not safe)) (##cdr _%e9115691244%_)))
                        (_%hd9115791248%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9115691244%_))))
                    (if (gx#stx-pair? _%tl9115891251%_)
                        (let ((_%e9115991254%_ (gx#syntax-e _%tl9115891251%_)))
                          (let ((_%tl9116191261%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9115991254%_)))
                                (_%hd9116091258%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9115991254%_))))
                            (if (gx#stx-pair? _%tl9116191261%_)
                                (let ((_%e9116291264%_
                                       (gx#syntax-e _%tl9116191261%_)))
                                  (let ((_%tl9116491271%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9116291264%_)))
                                        (_%hd9116391268%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9116291264%_))))
                                    (if (gx#stx-null? _%tl9116491271%_)
                                        (_%__match9768397684%_
                                         _%e9115691244%_
                                         _%hd9115791248%_
                                         _%tl9115891251%_
                                         _%e9115991254%_
                                         _%hd9116091258%_
                                         _%tl9116191261%_
                                         _%e9116291264%_
                                         _%hd9116391268%_
                                         _%tl9116491271%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9115291181%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9115291181%_)))))
                        (let () (declare (not safe)) (_%g9115291181%_)))))
                (let () (declare (not safe)) (_%g9115291181%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx91299%_)
      (let* ((_%__stx9770697707%_ _%$stx91299%_)
             (_%g9130491333%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9770697707%_))))
        (let ((_%__kont9770997710%_
               (lambda (_%L91425%_ _%L91427%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91427%_ (cons _%L91425%_ '())))
                             (cons '0 '())))))
              (_%__kont9771197712%_
               (lambda (_%L91370%_ _%L91372%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91370%_ (cons _%L91370%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91372%_
                                                           (cons _%L91370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9773397734%_
                 (lambda (_%e9130891395%_
                          _%hd9130991399%_
                          _%tl9131091402%_
                          _%e9131191405%_
                          _%hd9131291409%_
                          _%tl9131391412%_
                          _%e9131491415%_
                          _%hd9131591419%_
                          _%tl9131691422%_)
                   (let ((_%L91425%_ _%hd9131591419%_)
                         (_%L91427%_ _%hd9131291409%_))
                     (if (or (gx#identifier? _%L91425%_)
                             (gx#stx-fixnum? _%L91425%_))
                         (_%__kont9770997710%_ _%L91425%_ _%L91427%_)
                         (_%__kont9771197712%_
                          _%hd9131591419%_
                          _%hd9131291409%_))))))
            (if (gx#stx-pair? _%__stx9770697707%_)
                (let ((_%e9130891395%_ (gx#syntax-e _%__stx9770697707%_)))
                  (let ((_%tl9131091402%_
                         (let () (declare (not safe)) (##cdr _%e9130891395%_)))
                        (_%hd9130991399%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9130891395%_))))
                    (if (gx#stx-pair? _%tl9131091402%_)
                        (let ((_%e9131191405%_ (gx#syntax-e _%tl9131091402%_)))
                          (let ((_%tl9131391412%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9131191405%_)))
                                (_%hd9131291409%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9131191405%_))))
                            (if (gx#stx-pair? _%tl9131391412%_)
                                (let ((_%e9131491415%_
                                       (gx#syntax-e _%tl9131391412%_)))
                                  (let ((_%tl9131691422%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9131491415%_)))
                                        (_%hd9131591419%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9131491415%_))))
                                    (if (gx#stx-null? _%tl9131691422%_)
                                        (_%__match9773397734%_
                                         _%e9130891395%_
                                         _%hd9130991399%_
                                         _%tl9131091402%_
                                         _%e9131191405%_
                                         _%hd9131291409%_
                                         _%tl9131391412%_
                                         _%e9131491415%_
                                         _%hd9131591419%_
                                         _%tl9131691422%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9130491333%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9130491333%_)))))
                        (let () (declare (not safe)) (_%g9130491333%_)))))
                (let () (declare (not safe)) (_%g9130491333%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx91450%_)
      (let* ((_%g9145391474%_
              (lambda (_%g9145491470%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9145491470%_)))
             (_%g9145291702%_
              (lambda (_%g9145491478%_)
                (if (gx#stx-pair? _%g9145491478%_)
                    (let ((_%e9145791481%_ (gx#syntax-e _%g9145491478%_)))
                      (let ((_%hd9145891485%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9145791481%_)))
                            (_%tl9145991488%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9145791481%_))))
                        (if (gx#stx-pair? _%tl9145991488%_)
                            (let ((_%e9146091491%_
                                   (gx#syntax-e _%tl9145991488%_)))
                              (let ((_%hd9146191495%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9146091491%_)))
                                    (_%tl9146291498%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9146091491%_))))
                                (if (gx#stx-pair? _%hd9146191495%_)
                                    (let ((_%e9146391501%_
                                           (gx#syntax-e _%hd9146191495%_)))
                                      (let ((_%hd9146491505%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9146391501%_)))
                                            (_%tl9146591508%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9146391501%_))))
                                        (if (gx#stx-pair? _%tl9146591508%_)
                                            (let ((_%e9146691511%_
                                                   (gx#syntax-e
                                                    _%tl9146591508%_)))
                                              (let ((_%hd9146791515%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9146691511%_)))
                                                    (_%tl9146891518%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9146691511%_))))
                                                (if (gx#stx-null?
                                                     _%tl9146891518%_)
                                                    (if (gx#stx-null?
                                                         _%tl9146291498%_)
                                                        ((lambda (_%L91521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L91523%_)
                   (let* ((_%g9154191549%_
                           (lambda (_%g9154291545%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9154291545%_)))
                          (_%g9154091698%_
                           (lambda (_%g9154291553%_)
                             ((lambda (_%L91556%_)
                                (let* ((_%g9156891576%_
                                        (lambda (_%g9156991572%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9156991572%_)))
                                       (_%g9156791694%_
                                        (lambda (_%g9156991580%_)
                                          ((lambda (_%L91583%_)
                                             (let* ((_%g9159691604%_
                                                     (lambda (_%g9159791600%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9159791600%_)))
                                                    (_%g9159591690%_
                                                     (lambda (_%g9159791608%_)
                                                       ((lambda (_%L91611%_)
                                                          (let* ((_%g9162491632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9162591628%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9162591628%_)))
                         (_%g9162391686%_
                          (lambda (_%g9162591636%_)
                            ((lambda (_%L91639%_)
                               (let* ((_%g9165291660%_
                                       (lambda (_%g9165391656%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9165391656%_)))
                                      (_%g9165191682%_
                                       (lambda (_%g9165391664%_)
                                         ((lambda (_%L91667%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L91583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L91556%_
                                                          (cons _%L91523%_
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
                                          (cons _%L91521%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L91523%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L91611%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L91556%_
                                                                (cons _%L91523%_
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
                                                (cons _%L91521%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L91523%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L91639%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L91556%_ (cons _%L91523%_ (cons '#t '()))))
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
                                                            (cons _%L91521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L91523%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L91667%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L91556%_
                                    (cons _%L91523%_ (cons '#f '()))))
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
                          (cons _%L91521%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L91523%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9165391664%_))))
                                 (_%g9165191682%_
                                  (gx#stx-identifier
                                   _%L91523%_
                                   '"&"
                                   _%L91639%_))))
                             _%g9162591636%_))))
                    (_%g9162391686%_
                     (gx#stx-identifier _%L91523%_ _%L91583%_ '"-set!"))))
                _%g9159791608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9159591690%_
                                                (gx#stx-identifier
                                                 _%L91523%_
                                                 '"&"
                                                 _%L91583%_))))
                                           _%g9156991580%_))))
                                  (_%g9156791694%_
                                   (gx#stx-identifier
                                    _%L91523%_
                                    '"class-type-"
                                    _%L91523%_))))
                              _%g9154291553%_))))
                     (_%g9154091698%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9146791515%_
                 _%hd9146491505%_)
                (_%g9145391474%_ _%g9145491478%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9145391474%_
                                                     _%g9145491478%_))))
                                            (_%g9145391474%_
                                             _%g9145491478%_))))
                                    (_%g9145391474%_ _%g9145491478%_))))
                            (_%g9145391474%_ _%g9145491478%_))))
                    (_%g9145391474%_ _%g9145491478%_)))))
        (_%g9145291702%_ _%stx91450%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx91706%_)
      (let* ((_%g9171091739%_
              (lambda (_%g9171191735%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9171191735%_)))
             (_%g9170991839%_
              (lambda (_%g9171191743%_)
                (if (gx#stx-pair? _%g9171191743%_)
                    (let ((_%e9171491746%_ (gx#syntax-e _%g9171191743%_)))
                      (let ((_%hd9171591750%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9171491746%_)))
                            (_%tl9171691753%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9171491746%_))))
                        (if (gx#stx-pair/null? _%tl9171691753%_)
                            (let ((_g97947_
                                   (gx#syntax-split-splice
                                    _%tl9171691753%_
                                    '0)))
                              (begin
                                (let ((_g97948_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97947_)
                                             (##vector-length _g97947_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97948_ 2)))
                                      (error "Context expects 2 values"
                                             _g97948_)))
                                (let ((_%target9171791756%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97947_ 0)))
                                      (_%tl9171991759%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97947_ 1))))
                                  (if (gx#stx-null? _%tl9171991759%_)
                                      (letrec ((_%loop9172091762%_
                                                (lambda (_%hd9171891766%_
                                                         _%field9172491769%_
                                                         _%slot9172591771%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9171891766%_)
                                                      (let ((_%e9172191774%_
                                                             (gx#syntax-e
                                                              _%hd9171891766%_)))
                                                        (let ((_%lp-hd9172291778%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9172191774%_)))
                      (_%lp-tl9172391781%_
                       (let () (declare (not safe)) (##cdr _%e9172191774%_))))
                  (if (gx#stx-pair? _%lp-hd9172291778%_)
                      (let ((_%e9172891784%_
                             (gx#syntax-e _%lp-hd9172291778%_)))
                        (let ((_%hd9172991788%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9172891784%_)))
                              (_%tl9173091791%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9172891784%_))))
                          (if (gx#stx-pair? _%tl9173091791%_)
                              (let ((_%e9173191794%_
                                     (gx#syntax-e _%tl9173091791%_)))
                                (let ((_%hd9173291798%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9173191794%_)))
                                      (_%tl9173391801%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9173191794%_))))
                                  (if (gx#stx-null? _%tl9173391801%_)
                                      (_%loop9172091762%_
                                       _%lp-tl9172391781%_
                                       (cons _%hd9173291798%_
                                             _%field9172491769%_)
                                       (cons _%hd9172991788%_
                                             _%slot9172591771%_))
                                      (_%g9171091739%_ _%g9171191743%_))))
                              (_%g9171091739%_ _%g9171191743%_))))
                      (_%g9171091739%_ _%g9171191743%_))))
              (let ((_%field9172691804%_ (reverse _%field9172491769%_))
                    (_%slot9172791807%_ (reverse _%slot9172591771%_)))
                ((lambda (_%L91810%_ _%L91812%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L91810%_
                            _%L91812%_)
                           (let ((__tmp97949
                                  (lambda (_%g9182791831%_
                                           _%g9182891834%_
                                           _%g9182991836%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9182891834%_
                                                            (cons _%g9182791831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9182991836%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp97949
                              '()
                              _%L91810%_
                              _%L91812%_)))))
                 _%field9172691804%_
                 _%slot9172791807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9172091762%_
                                         _%target9171791756%_
                                         '()
                                         '()))
                                      (_%g9171091739%_ _%g9171191743%_)))))
                            (_%g9171091739%_ _%g9171191743%_))))
                    (_%g9171091739%_ _%g9171191743%_)))))
        (_%g9170991839%_ _%$stx91706%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx91844%_)
      (let* ((_%g9184891882%_
              (lambda (_%g9184991878%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9184991878%_)))
             (_%g9184791993%_
              (lambda (_%g9184991886%_)
                (if (gx#stx-pair? _%g9184991886%_)
                    (let ((_%e9185691889%_ (gx#syntax-e _%g9184991886%_)))
                      (let ((_%hd9185791893%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9185691889%_)))
                            (_%tl9185891896%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9185691889%_))))
                        (if (gx#stx-pair? _%tl9185891896%_)
                            (let ((_%e9185991899%_
                                   (gx#syntax-e _%tl9185891896%_)))
                              (let ((_%hd9186091903%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9185991899%_)))
                                    (_%tl9186191906%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9185991899%_))))
                                (if (gx#stx-pair? _%tl9186191906%_)
                                    (let ((_%e9186291909%_
                                           (gx#syntax-e _%tl9186191906%_)))
                                      (let ((_%hd9186391913%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9186291909%_)))
                                            (_%tl9186491916%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9186291909%_))))
                                        (if (gx#stx-pair? _%tl9186491916%_)
                                            (let ((_%e9186591919%_
                                                   (gx#syntax-e
                                                    _%tl9186491916%_)))
                                              (let ((_%hd9186691923%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9186591919%_)))
                                                    (_%tl9186791926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9186591919%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9186791926%_)
                                                    (let ((_%e9186891929%_
                                                           (gx#syntax-e
                                                            _%tl9186791926%_)))
                                                      (let ((_%hd9186991933%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9186891929%_)))
                    (_%tl9187091936%_
                     (let () (declare (not safe)) (##cdr _%e9186891929%_))))
                (if (gx#stx-pair? _%tl9187091936%_)
                    (let ((_%e9187191939%_ (gx#syntax-e _%tl9187091936%_)))
                      (let ((_%hd9187291943%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9187191939%_)))
                            (_%tl9187391946%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9187191939%_))))
                        (if (gx#stx-pair? _%tl9187391946%_)
                            (let ((_%e9187491949%_
                                   (gx#syntax-e _%tl9187391946%_)))
                              (let ((_%hd9187591953%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9187491949%_)))
                                    (_%tl9187691956%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9187491949%_))))
                                (if (gx#stx-null? _%tl9187691956%_)
                                    ((lambda (_%L91959%_
                                              _%L91961%_
                                              _%L91962%_
                                              _%L91963%_
                                              _%L91964%_
                                              _%L91965%_)
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
                                         (cons _%L91965%_ '()))
                                   (cons _%L91964%_ (cons '#f '()))))
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
                               (cons _%L91965%_
                                     (cons 'slot: (cons _%L91964%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L91965%_ '()))
                                         (cons (cons _%L91963%_
                                                     (cons _%L91965%_
                                                           (cons _%L91964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L91965%_ '()))
                                               (cons (cons _%L91962%_
                                                           (cons _%L91965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L91964%_
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
                                           (cons _%L91965%_ '()))
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
                                                     (cons (cons _%L91961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L91965%_
                               (cons _%L91964%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L91959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L91965%_
                                     (cons _%L91964%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9187591953%_
                                     _%hd9187291943%_
                                     _%hd9186991933%_
                                     _%hd9186691923%_
                                     _%hd9186391913%_
                                     _%hd9186091903%_)
                                    (_%g9184891882%_ _%g9184991886%_))))
                            (_%g9184891882%_ _%g9184991886%_))))
                    (_%g9184891882%_ _%g9184991886%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9184891882%_
                                                     _%g9184991886%_))))
                                            (_%g9184891882%_
                                             _%g9184991886%_))))
                                    (_%g9184891882%_ _%g9184991886%_))))
                            (_%g9184891882%_ _%g9184991886%_))))
                    (_%g9184891882%_ _%g9184991886%_)))))
        (_%g9184791993%_ _%$stx91844%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx91997%_)
      (let* ((_%g9200192027%_
              (lambda (_%g9200292023%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9200292023%_)))
             (_%g9200092110%_
              (lambda (_%g9200292031%_)
                (if (gx#stx-pair? _%g9200292031%_)
                    (let ((_%e9200792034%_ (gx#syntax-e _%g9200292031%_)))
                      (let ((_%hd9200892038%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9200792034%_)))
                            (_%tl9200992041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9200792034%_))))
                        (if (gx#stx-pair? _%tl9200992041%_)
                            (let ((_%e9201092044%_
                                   (gx#syntax-e _%tl9200992041%_)))
                              (let ((_%hd9201192048%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9201092044%_)))
                                    (_%tl9201292051%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9201092044%_))))
                                (if (gx#stx-pair? _%tl9201292051%_)
                                    (let ((_%e9201392054%_
                                           (gx#syntax-e _%tl9201292051%_)))
                                      (let ((_%hd9201492058%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9201392054%_)))
                                            (_%tl9201592061%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9201392054%_))))
                                        (if (gx#stx-pair? _%tl9201592061%_)
                                            (let ((_%e9201692064%_
                                                   (gx#syntax-e
                                                    _%tl9201592061%_)))
                                              (let ((_%hd9201792068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9201692064%_)))
                                                    (_%tl9201892071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9201692064%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9201892071%_)
                                                    (let ((_%e9201992074%_
                                                           (gx#syntax-e
                                                            _%tl9201892071%_)))
                                                      (let ((_%hd9202092078%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9201992074%_)))
                    (_%tl9202192081%_
                     (let () (declare (not safe)) (##cdr _%e9201992074%_))))
                (if (gx#stx-null? _%tl9202192081%_)
                    ((lambda (_%L92084%_ _%L92086%_ _%L92087%_ _%L92088%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L92088%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L92087%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L92086%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L92084%_
                                     (cons _%L92088%_ (cons _%L92087%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9202092078%_
                     _%hd9201792068%_
                     _%hd9201492058%_
                     _%hd9201192048%_)
                    (_%g9200192027%_ _%g9200292031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9200192027%_
                                                     _%g9200292031%_))))
                                            (_%g9200192027%_
                                             _%g9200292031%_))))
                                    (_%g9200192027%_ _%g9200292031%_))))
                            (_%g9200192027%_ _%g9200292031%_))))
                    (_%g9200192027%_ _%g9200292031%_)))))
        (_%g9200092110%_ _%$stx91997%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx92114%_)
      (let* ((_%g9211892147%_
              (lambda (_%g9211992143%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9211992143%_)))
             (_%g9211792247%_
              (lambda (_%g9211992151%_)
                (if (gx#stx-pair? _%g9211992151%_)
                    (let ((_%e9212292154%_ (gx#syntax-e _%g9211992151%_)))
                      (let ((_%hd9212392158%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9212292154%_)))
                            (_%tl9212492161%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9212292154%_))))
                        (if (gx#stx-pair/null? _%tl9212492161%_)
                            (let ((_g97950_
                                   (gx#syntax-split-splice
                                    _%tl9212492161%_
                                    '0)))
                              (begin
                                (let ((_g97951_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97950_)
                                             (##vector-length _g97950_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97951_ 2)))
                                      (error "Context expects 2 values"
                                             _g97951_)))
                                (let ((_%target9212592164%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97950_ 0)))
                                      (_%tl9212792167%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97950_ 1))))
                                  (if (gx#stx-null? _%tl9212792167%_)
                                      (letrec ((_%loop9212892170%_
                                                (lambda (_%hd9212692174%_
                                                         _%name9213292177%_
                                                         _%t9213392179%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9212692174%_)
                                                      (let ((_%e9212992182%_
                                                             (gx#syntax-e
                                                              _%hd9212692174%_)))
                                                        (let ((_%lp-hd9213092186%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9212992182%_)))
                      (_%lp-tl9213192189%_
                       (let () (declare (not safe)) (##cdr _%e9212992182%_))))
                  (if (gx#stx-pair? _%lp-hd9213092186%_)
                      (let ((_%e9213692192%_
                             (gx#syntax-e _%lp-hd9213092186%_)))
                        (let ((_%hd9213792196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9213692192%_)))
                              (_%tl9213892199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9213692192%_))))
                          (if (gx#stx-pair? _%tl9213892199%_)
                              (let ((_%e9213992202%_
                                     (gx#syntax-e _%tl9213892199%_)))
                                (let ((_%hd9214092206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9213992202%_)))
                                      (_%tl9214192209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9213992202%_))))
                                  (if (gx#stx-null? _%tl9214192209%_)
                                      (_%loop9212892170%_
                                       _%lp-tl9213192189%_
                                       (cons _%hd9214092206%_
                                             _%name9213292177%_)
                                       (cons _%hd9213792196%_ _%t9213392179%_))
                                      (_%g9211892147%_ _%g9211992151%_))))
                              (_%g9211892147%_ _%g9211992151%_))))
                      (_%g9211892147%_ _%g9211992151%_))))
              (let ((_%name9213492212%_ (reverse _%name9213292177%_))
                    (_%t9213592215%_ (reverse _%t9213392179%_)))
                ((lambda (_%L92218%_ _%L92220%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92218%_
                            _%L92220%_)
                           (let ((__tmp97952
                                  (lambda (_%g9223592239%_
                                           _%g9223692242%_
                                           _%g9223792244%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9223692242%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9223592239%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9223792244%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp97952
                              '()
                              _%L92218%_
                              _%L92220%_)))))
                 _%name9213492212%_
                 _%t9213592215%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9212892170%_
                                         _%target9212592164%_
                                         '()
                                         '()))
                                      (_%g9211892147%_ _%g9211992151%_)))))
                            (_%g9211892147%_ _%g9211992151%_))))
                    (_%g9211892147%_ _%g9211992151%_)))))
        (_%g9211792247%_ _%$stx92114%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx92252%_)
      (let* ((_%g9225692287%_
              (lambda (_%g9225792283%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9225792283%_)))
             (_%g9225592406%_
              (lambda (_%g9225792291%_)
                (if (gx#stx-pair? _%g9225792291%_)
                    (let ((_%e9226192294%_ (gx#syntax-e _%g9225792291%_)))
                      (let ((_%hd9226292298%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9226192294%_)))
                            (_%tl9226392301%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9226192294%_))))
                        (if (gx#stx-pair? _%tl9226392301%_)
                            (let ((_%e9226492304%_
                                   (gx#syntax-e _%tl9226392301%_)))
                              (let ((_%hd9226592308%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9226492304%_)))
                                    (_%tl9226692311%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9226492304%_))))
                                (if (gx#stx-pair? _%tl9226692311%_)
                                    (let ((_%e9226792314%_
                                           (gx#syntax-e _%tl9226692311%_)))
                                      (let ((_%hd9226892318%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9226792314%_)))
                                            (_%tl9226992321%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9226792314%_))))
                                        (if (gx#stx-pair? _%tl9226992321%_)
                                            (let ((_%e9227092324%_
                                                   (gx#syntax-e
                                                    _%tl9226992321%_)))
                                              (let ((_%hd9227192328%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9227092324%_)))
                                                    (_%tl9227292331%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9227092324%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9227192328%_)
                                                    (let ((_g97953_
                                                           (gx#syntax-split-splice
                                                            _%hd9227192328%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g97954_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g97953_)
                             (##vector-length _g97953_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97954_ 2)))
                      (error "Context expects 2 values" _g97954_)))
                (let ((_%target9227392334%_
                       (let () (declare (not safe)) (##vector-ref _g97953_ 0)))
                      (_%tl9227592337%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g97953_ 1))))
                  (if (gx#stx-null? _%tl9227592337%_)
                      (letrec ((_%loop9227692340%_
                                (lambda (_%hd9227492344%_ _%super9228092347%_)
                                  (if (gx#stx-pair? _%hd9227492344%_)
                                      (let ((_%e9227792350%_
                                             (gx#syntax-e _%hd9227492344%_)))
                                        (let ((_%lp-hd9227892354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9227792350%_)))
                                              (_%lp-tl9227992357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9227792350%_))))
                                          (_%loop9227692340%_
                                           _%lp-tl9227992357%_
                                           (cons _%lp-hd9227892354%_
                                                 _%super9228092347%_))))
                                      (let ((_%super9228192360%_
                                             (reverse _%super9228092347%_)))
                                        (if (gx#stx-null? _%tl9227292331%_)
                                            ((lambda (_%L92364%_
                                                      _%L92366%_
                                                      _%L92367%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92367%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92366%_
                                                 (cons (let ((__tmp97955
                                                              (lambda (_%g9239192394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9239292397%_)
                        (cons _%g9239192394%_ _%g9239292397%_))))
                 (declare (not safe))
                 (__foldr1 __tmp97955 '() _%L92364%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L92366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp97956
                                  (lambda (_%g9238992400%_ _%g9239092403%_)
                                    (cons _%g9238992400%_ _%g9239092403%_))))
                             (declare (not safe))
                             (__foldr1 __tmp97956 '() _%L92364%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9228192360%_
                                             _%hd9226892318%_
                                             _%hd9226592308%_)
                                            (_%g9225692287%_
                                             _%g9225792291%_)))))))
                        (_%loop9227692340%_ _%target9227392334%_ '()))
                      (_%g9225692287%_ _%g9225792291%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9225692287%_
                                                     _%g9225792291%_))))
                                            (_%g9225692287%_
                                             _%g9225792291%_))))
                                    (_%g9225692287%_ _%g9225792291%_))))
                            (_%g9225692287%_ _%g9225792291%_))))
                    (_%g9225692287%_ _%g9225792291%_)))))
        (_%g9225592406%_ _%$stx92252%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx92411%_)
      (let* ((_%g9241592446%_
              (lambda (_%g9241692442%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9241692442%_)))
             (_%g9241492557%_
              (lambda (_%g9241692450%_)
                (if (gx#stx-pair? _%g9241692450%_)
                    (let ((_%e9242092453%_ (gx#syntax-e _%g9241692450%_)))
                      (let ((_%hd9242192457%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9242092453%_)))
                            (_%tl9242292460%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9242092453%_))))
                        (if (gx#stx-pair? _%tl9242292460%_)
                            (let ((_%e9242392463%_
                                   (gx#syntax-e _%tl9242292460%_)))
                              (let ((_%hd9242492467%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9242392463%_)))
                                    (_%tl9242592470%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9242392463%_))))
                                (if (gx#stx-pair? _%tl9242592470%_)
                                    (let ((_%e9242692473%_
                                           (gx#syntax-e _%tl9242592470%_)))
                                      (let ((_%hd9242792477%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9242692473%_)))
                                            (_%tl9242892480%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9242692473%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9242792477%_)
                                            (let ((_g97957_
                                                   (gx#syntax-split-splice
                                                    _%hd9242792477%_
                                                    '0)))
                                              (begin
                                                (let ((_g97958_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g97957_)
                                                             (##vector-length
                                                              _g97957_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g97958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g97958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9242992483%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g97957_
                                                          0)))
                                                      (_%tl9243192486%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g97957_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9243192486%_)
                                                      (letrec ((_%loop9243292489%_
                                                                (lambda (_%hd9243092493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9243692496%_)
                          (if (gx#stx-pair? _%hd9243092493%_)
                              (let ((_%e9243392499%_
                                     (gx#syntax-e _%hd9243092493%_)))
                                (let ((_%lp-hd9243492503%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9243392499%_)))
                                      (_%lp-tl9243592506%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9243392499%_))))
                                  (_%loop9243292489%_
                                   _%lp-tl9243592506%_
                                   (cons _%lp-hd9243492503%_
                                         _%super9243692496%_))))
                              (let ((_%super9243792509%_
                                     (reverse _%super9243692496%_)))
                                (if (gx#stx-pair? _%tl9242892480%_)
                                    (let ((_%e9243892513%_
                                           (gx#syntax-e _%tl9242892480%_)))
                                      (let ((_%hd9243992517%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9243892513%_)))
                                            (_%tl9244092520%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9243892513%_))))
                                        (if (gx#stx-null? _%tl9244092520%_)
                                            ((lambda (_%L92523%_
                                                      _%L92525%_
                                                      _%L92526%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92526%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92526%_
                                                 (cons (let ((__tmp97959
                                                              (lambda (_%g9254892551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9254992554%_)
                        (cons _%g9254892551%_ _%g9254992554%_))))
                 (declare (not safe))
                 (__foldr1 __tmp97959 '() _%L92525%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L92523%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9243992517%_
                                             _%super9243792509%_
                                             _%hd9242492467%_)
                                            (_%g9241592446%_
                                             _%g9241692450%_))))
                                    (_%g9241592446%_ _%g9241692450%_)))))))
                (_%loop9243292489%_ _%target9242992483%_ '()))
              (_%g9241592446%_ _%g9241692450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9241592446%_
                                             _%g9241692450%_))))
                                    (_%g9241592446%_ _%g9241692450%_))))
                            (_%g9241592446%_ _%g9241692450%_))))
                    (_%g9241592446%_ _%g9241692450%_)))))
        (_%g9241492557%_ _%$stx92411%_)))))
