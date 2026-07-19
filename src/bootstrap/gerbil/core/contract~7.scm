(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx61724%_)
      (let* ((_%$%g6172861742%_
              (lambda (_%$%g6172961738%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6172961738%_)))
             (_%$%g6172761784%_
              (lambda (_%$%g6172961746%_)
                (if (gx#stx-pair? _%$%g6172961746%_)
                    (let ((_%$%e6173161749%_ (gx#syntax-e _%$%g6172961746%_)))
                      (let ((_%$%hd6173261753%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6173161749%_)))
                            (_%$%tl6173361756%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6173161749%_))))
                        (if (gx#stx-pair? _%$%tl6173361756%_)
                            (let ((_%$%e6173461759%_
                                   (gx#syntax-e _%$%tl6173361756%_)))
                              (let ((_%$%hd6173561763%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e6173461759%_)))
                                    (_%$%tl6173661766%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e6173461759%_))))
                                (if (gx#stx-null? _%$%tl6173661766%_)
                                    (cons (gx#datum->syntax '#f '?)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'or)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'not)
                                                            (cons _%$%hd6173561763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_%$%g6172861742%_ _%$%g6172961746%_))))
                            (_%$%g6172861742%_ _%$%g6172961746%_))))
                    (_%$%g6172861742%_ _%$%g6172961746%_)))))
        (_%$%g6172761784%_ _%$stx61724%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx61788%_)
      (let* ((_%$%g6179261810%_
              (lambda (_%$%g6179361806%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6179361806%_)))
             (_%$%g6179161865%_
              (lambda (_%$%g6179361814%_)
                (if (gx#stx-pair? _%$%g6179361814%_)
                    (let ((_%$%e6179661817%_ (gx#syntax-e _%$%g6179361814%_)))
                      (let ((_%$%hd6179761821%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6179661817%_)))
                            (_%$%tl6179861824%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6179661817%_))))
                        (if (gx#stx-pair? _%$%tl6179861824%_)
                            (let ((_%$%e6179961827%_
                                   (gx#syntax-e _%$%tl6179861824%_)))
                              (let ((_%$%hd6180061831%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e6179961827%_)))
                                    (_%$%tl6180161834%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e6179961827%_))))
                                (if (gx#stx-pair? _%$%tl6180161834%_)
                                    (let ((_%$%e6180261837%_
                                           (gx#syntax-e _%$%tl6180161834%_)))
                                      (let ((_%$%hd6180361841%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e6180261837%_)))
                                            (_%$%tl6180461844%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e6180261837%_))))
                                        (if (gx#stx-null? _%$%tl6180461844%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'lambda)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'o)
                                                              '())
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'and)
                            (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                        (cons (gx#datum->syntax '#f 'o) '()))
                                  (cons (cons (gx#datum->syntax '#f 'fx>=)
                                              (cons (gx#datum->syntax '#f 'o)
                                                    (cons _%$%hd6180061831%_
                                                          '())))
                                        (cons (cons (gx#datum->syntax '#f 'fx<)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%$%hd6180361841%_
                                                                '())))
                                              '()))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g6179261810%_
                                             _%$%g6179361814%_))))
                                    (_%$%g6179261810%_ _%$%g6179361814%_))))
                            (_%$%g6179261810%_ _%$%g6179361814%_))))
                    (_%$%g6179261810%_ _%$%g6179361814%_)))))
        (_%$%g6179161865%_ _%$stx61788%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx61869%_)
      (let* ((_%$%g6187361891%_
              (lambda (_%$%g6187461887%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6187461887%_)))
             (_%$%g6187261946%_
              (lambda (_%$%g6187461895%_)
                (if (gx#stx-pair? _%$%g6187461895%_)
                    (let ((_%$%e6187761898%_ (gx#syntax-e _%$%g6187461895%_)))
                      (let ((_%$%hd6187861902%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6187761898%_)))
                            (_%$%tl6187961905%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6187761898%_))))
                        (if (gx#stx-pair? _%$%tl6187961905%_)
                            (let ((_%$%e6188061908%_
                                   (gx#syntax-e _%$%tl6187961905%_)))
                              (let ((_%$%hd6188161912%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e6188061908%_)))
                                    (_%$%tl6188261915%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e6188061908%_))))
                                (if (gx#stx-pair? _%$%tl6188261915%_)
                                    (let ((_%$%e6188361918%_
                                           (gx#syntax-e _%$%tl6188261915%_)))
                                      (let ((_%$%hd6188461922%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e6188361918%_)))
                                            (_%$%tl6188561925%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e6188361918%_))))
                                        (if (gx#stx-null? _%$%tl6188561925%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'lambda)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'o)
                                                              '())
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'and)
                            (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                        (cons (gx#datum->syntax '#f 'o) '()))
                                  (cons (cons (gx#datum->syntax '#f 'fx<=)
                                              (cons _%$%hd6188161912%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%$%hd6188461922%_
                                                                '()))))
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g6187361891%_
                                             _%$%g6187461895%_))))
                                    (_%$%g6187361891%_ _%$%g6187461895%_))))
                            (_%$%g6187361891%_ _%$%g6187461895%_))))
                    (_%$%g6187361891%_ _%$%g6187461895%_)))))
        (_%$%g6187261946%_ _%$stx61869%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx61950%_)
      (let* ((_%$%g6195461968%_
              (lambda (_%$%g6195561964%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6195561964%_)))
             (_%$%g6195362009%_
              (lambda (_%$%g6195561972%_)
                (if (gx#stx-pair? _%$%g6195561972%_)
                    (let ((_%$%e6195761975%_ (gx#syntax-e _%$%g6195561972%_)))
                      (let ((_%$%hd6195861979%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6195761975%_)))
                            (_%$%tl6195961982%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6195761975%_))))
                        (if (gx#stx-pair? _%$%tl6195961982%_)
                            (let ((_%$%e6196061985%_
                                   (gx#syntax-e _%$%tl6195961982%_)))
                              (let ((_%$%hd6196161989%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e6196061985%_)))
                                    (_%$%tl6196261992%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e6196061985%_))))
                                (if (gx#stx-null? _%$%tl6196261992%_)
                                    (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons (gx#datum->syntax '#f 'o)
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
                                      (cons _%$%hd6196161989%_
                                            (cons (gx#datum->syntax '#f 'o)
                                                  '())))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%g6195461968%_ _%$%g6195561972%_))))
                            (_%$%g6195461968%_ _%$%g6195561972%_))))
                    (_%$%g6195461968%_ _%$%g6195561972%_)))))
        (_%$%g6195362009%_ _%$stx61950%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx62013%_)
      (let* ((_%$%g6201762037%_
              (lambda (_%$%g6201862033%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6201862033%_)))
             (_%$%g6201662106%_
              (lambda (_%$%g6201862041%_)
                (if (gx#stx-pair? _%$%g6201862041%_)
                    (let ((_%$%e6202062044%_ (gx#syntax-e _%$%g6201862041%_)))
                      (let ((_%$%hd6202162048%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6202062044%_)))
                            (_%$%tl6202262051%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6202062044%_))))
                        (if (gx#stx-pair/null? _%$%tl6202262051%_)
                            (let ((_g105226_
                                   (gx#syntax-split-splice
                                    _%$%tl6202262051%_
                                    '0)))
                              (begin
                                (let ((_g105227_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g105226_)
                                             (##values-length _g105226_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g105227_ 2)))
                                      (error "Context expects 2 values"
                                             _g105227_)))
                                (let ((_%$%target6202362054%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g105226_ 0)))
                                      (_%$%tl6202562057%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g105226_ 1))))
                                  (if (gx#stx-null? _%$%tl6202562057%_)
                                      (letrec ((_%$%loop6202662060%_
                                                (lambda (_%$%hd6202462064%_
                                                         _%$%val6203062067%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd6202462064%_)
                                                      (let ((_%$%e6202762069%_
                                                             (gx#syntax-e
                                                              _%$%hd6202462064%_)))
                                                        (let ((_%$%lp-hd6202862073%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e6202762069%_)))
                      (_%$%lp-tl6202962076%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e6202762069%_))))
                  (_%$%loop6202662060%_
                   _%$%lp-tl6202962076%_
                   (cons _%$%lp-hd6202862073%_ _%$%val6203062067%_))))
              (let ((_%$%val6203162079%_ (reverse _%$%val6203062067%_)))
                (cons (gx#datum->syntax '#f 'lambda)
                      (cons (cons (gx#datum->syntax '#f 'o) '())
                            (cons (cons (gx#datum->syntax '#f 'or)
                                        (foldr (lambda (_%$%g6209762100%_
                                                        _%$%g6209862103%_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'o)
                           (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                       (cons _%$%g6209762100%_ '()))
                                 '())))
               _%$%g6209862103%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%$%val6203162079%_))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%loop6202662060%_
                                         _%$%target6202362054%_
                                         '()))
                                      (_%$%g6201762037%_ _%$%g6201862041%_)))))
                            (_%$%g6201762037%_ _%$%g6201862041%_))))
                    (_%$%g6201762037%_ _%$%g6201862041%_)))))
        (_%$%g6201662106%_ _%$stx62013%_)))))
