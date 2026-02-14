(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx57437%_)
      (let* ((_%g5744157455%_
              (lambda (_%g5744257451%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5744257451%_)))
             (_%g5744057497%_
              (lambda (_%g5744257459%_)
                (if (gx#stx-pair? _%g5744257459%_)
                    (let ((_%e5744457462%_ (gx#syntax-e _%g5744257459%_)))
                      (let ((_%hd5744557466%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5744457462%_)))
                            (_%tl5744657469%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5744457462%_))))
                        (if (gx#stx-pair? _%tl5744657469%_)
                            (let ((_%e5744757472%_
                                   (gx#syntax-e _%tl5744657469%_)))
                              (let ((_%hd5744857476%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5744757472%_)))
                                    (_%tl5744957479%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5744757472%_))))
                                (if (gx#stx-null? _%tl5744957479%_)
                                    ((lambda (_%g5744357482%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%g5744357482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5744857476%_)
                                    (_%g5744157455%_ _%g5744257459%_))))
                            (_%g5744157455%_ _%g5744257459%_))))
                    (_%g5744157455%_ _%g5744257459%_)))))
        (_%g5744057497%_ _%$stx57437%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx57501%_)
      (let* ((_%g5750557523%_
              (lambda (_%g5750657519%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5750657519%_)))
             (_%g5750457578%_
              (lambda (_%g5750657527%_)
                (if (gx#stx-pair? _%g5750657527%_)
                    (let ((_%e5750957530%_ (gx#syntax-e _%g5750657527%_)))
                      (let ((_%hd5751057534%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5750957530%_)))
                            (_%tl5751157537%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5750957530%_))))
                        (if (gx#stx-pair? _%tl5751157537%_)
                            (let ((_%e5751257540%_
                                   (gx#syntax-e _%tl5751157537%_)))
                              (let ((_%hd5751357544%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5751257540%_)))
                                    (_%tl5751457547%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5751257540%_))))
                                (if (gx#stx-pair? _%tl5751457547%_)
                                    (let ((_%e5751557550%_
                                           (gx#syntax-e _%tl5751457547%_)))
                                      (let ((_%hd5751657554%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5751557550%_)))
                                            (_%tl5751757557%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5751557550%_))))
                                        (if (gx#stx-null? _%tl5751757557%_)
                                            ((lambda (_%g5750757560%_
                                                      _%g5750857562%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx>=)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'o)
                                                       (cons _%g5750857562%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5750757560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5751657554%_
                                             _%hd5751357544%_)
                                            (_%g5750557523%_
                                             _%g5750657527%_))))
                                    (_%g5750557523%_ _%g5750657527%_))))
                            (_%g5750557523%_ _%g5750657527%_))))
                    (_%g5750557523%_ _%g5750657527%_)))))
        (_%g5750457578%_ _%$stx57501%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx57582%_)
      (let* ((_%g5758657604%_
              (lambda (_%g5758757600%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5758757600%_)))
             (_%g5758557659%_
              (lambda (_%g5758757608%_)
                (if (gx#stx-pair? _%g5758757608%_)
                    (let ((_%e5759057611%_ (gx#syntax-e _%g5758757608%_)))
                      (let ((_%hd5759157615%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5759057611%_)))
                            (_%tl5759257618%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5759057611%_))))
                        (if (gx#stx-pair? _%tl5759257618%_)
                            (let ((_%e5759357621%_
                                   (gx#syntax-e _%tl5759257618%_)))
                              (let ((_%hd5759457625%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5759357621%_)))
                                    (_%tl5759557628%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5759357621%_))))
                                (if (gx#stx-pair? _%tl5759557628%_)
                                    (let ((_%e5759657631%_
                                           (gx#syntax-e _%tl5759557628%_)))
                                      (let ((_%hd5759757635%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5759657631%_)))
                                            (_%tl5759857638%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5759657631%_))))
                                        (if (gx#stx-null? _%tl5759857638%_)
                                            ((lambda (_%g5758857641%_
                                                      _%g5758957643%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx<=)
                                                 (cons _%g5758957643%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5758857641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5759757635%_
                                             _%hd5759457625%_)
                                            (_%g5758657604%_
                                             _%g5758757608%_))))
                                    (_%g5758657604%_ _%g5758757608%_))))
                            (_%g5758657604%_ _%g5758757608%_))))
                    (_%g5758657604%_ _%g5758757608%_)))))
        (_%g5758557659%_ _%$stx57582%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx57663%_)
      (let* ((_%g5766757681%_
              (lambda (_%g5766857677%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5766857677%_)))
             (_%g5766657722%_
              (lambda (_%g5766857685%_)
                (if (gx#stx-pair? _%g5766857685%_)
                    (let ((_%e5767057688%_ (gx#syntax-e _%g5766857685%_)))
                      (let ((_%hd5767157692%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5767057688%_)))
                            (_%tl5767257695%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5767057688%_))))
                        (if (gx#stx-pair? _%tl5767257695%_)
                            (let ((_%e5767357698%_
                                   (gx#syntax-e _%tl5767257695%_)))
                              (let ((_%hd5767457702%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5767357698%_)))
                                    (_%tl5767557705%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5767357698%_))))
                                (if (gx#stx-null? _%tl5767557705%_)
                                    ((lambda (_%g5766957708%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'o)
                                                         '())
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'and)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'list?)
                                   (cons (gx#datum->syntax '#f 'o) '()))
                             (cons (cons (gx#datum->syntax '#f 'andmap)
                                         (cons _%g5766957708%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5767457702%_)
                                    (_%g5766757681%_ _%g5766857685%_))))
                            (_%g5766757681%_ _%g5766857685%_))))
                    (_%g5766757681%_ _%g5766857685%_)))))
        (_%g5766657722%_ _%$stx57663%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx57726%_)
      (let* ((_%g5773057750%_
              (lambda (_%g5773157746%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5773157746%_)))
             (_%g5772957819%_
              (lambda (_%g5773157754%_)
                (if (gx#stx-pair? _%g5773157754%_)
                    (let ((_%e5773357757%_ (gx#syntax-e _%g5773157754%_)))
                      (let ((_%hd5773457761%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5773357757%_)))
                            (_%tl5773557764%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5773357757%_))))
                        (if (gx#stx-pair/null? _%tl5773557764%_)
                            (let ((_g100256_
                                   (gx#syntax-split-splice
                                    _%tl5773557764%_
                                    '0)))
                              (begin
                                (let ((_g100257_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g100256_)
                                             (##values-length _g100256_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g100257_ 2)))
                                      (error "Context expects 2 values"
                                             _g100257_)))
                                (let ((_%target5773657767%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g100256_ 0)))
                                      (_%tl5773857770%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g100256_ 1))))
                                  (if (gx#stx-null? _%tl5773857770%_)
                                      (letrec ((_%loop5773957773%_
                                                (lambda (_%hd5773757777%_
                                                         _%val5774357780%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5773757777%_)
                                                      (let ((_%e5774057782%_
                                                             (gx#syntax-e
                                                              _%hd5773757777%_)))
                                                        (let ((_%lp-hd5774157786%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5774057782%_)))
                      (_%lp-tl5774257789%_
                       (let () (declare (not safe)) (##cdr _%e5774057782%_))))
                  (_%loop5773957773%_
                   _%lp-tl5774257789%_
                   (cons _%lp-hd5774157786%_ _%val5774357780%_))))
              (let ((_%val5774457792%_ (reverse _%val5774357780%_)))
                ((lambda (_%g5773257795%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%g5781057813%_
                                                           _%g5781157816%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%g5781057813%_ '()))
                                    '())))
                  _%g5781157816%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g5773257795%_))
                                     '()))))
                 _%val5774457792%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop5773957773%_
                                         _%target5773657767%_
                                         '()))
                                      (_%g5773057750%_ _%g5773157754%_)))))
                            (_%g5773057750%_ _%g5773157754%_))))
                    (_%g5773057750%_ _%g5773157754%_)))))
        (_%g5772957819%_ _%$stx57726%_)))))
