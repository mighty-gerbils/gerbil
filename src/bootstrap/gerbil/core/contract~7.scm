(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx51004%_)
      (let* ((_%$%g5100851022%_
              (lambda (_%$%g5100951018%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5100951018%_)))
             (_%$%g5100751064%_
              (lambda (_%$%g5100951026%_)
                (if (gx#stx-pair? _%$%g5100951026%_)
                    (let ((_%$%e5101151029%_ (gx#syntax-e _%$%g5100951026%_)))
                      (let ((_%$%hd5101251033%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5101151029%_)))
                            (_%$%tl5101351036%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5101151029%_))))
                        (if (gx#stx-pair? _%$%tl5101351036%_)
                            (let ((_%$%e5101451039%_
                                   (gx#syntax-e _%$%tl5101351036%_)))
                              (let ((_%$%hd5101551043%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5101451039%_)))
                                    (_%$%tl5101651046%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5101451039%_))))
                                (if (gx#stx-null? _%$%tl5101651046%_)
                                    ((lambda (_%$%g5101051049%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%$%g5101051049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%$%hd5101551043%_)
                                    (_%$%g5100851022%_ _%$%g5100951026%_))))
                            (_%$%g5100851022%_ _%$%g5100951026%_))))
                    (_%$%g5100851022%_ _%$%g5100951026%_)))))
        (_%$%g5100751064%_ _%$stx51004%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx51068%_)
      (let* ((_%$%g5107251090%_
              (lambda (_%$%g5107351086%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5107351086%_)))
             (_%$%g5107151145%_
              (lambda (_%$%g5107351094%_)
                (if (gx#stx-pair? _%$%g5107351094%_)
                    (let ((_%$%e5107651097%_ (gx#syntax-e _%$%g5107351094%_)))
                      (let ((_%$%hd5107751101%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5107651097%_)))
                            (_%$%tl5107851104%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5107651097%_))))
                        (if (gx#stx-pair? _%$%tl5107851104%_)
                            (let ((_%$%e5107951107%_
                                   (gx#syntax-e _%$%tl5107851104%_)))
                              (let ((_%$%hd5108051111%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5107951107%_)))
                                    (_%$%tl5108151114%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5107951107%_))))
                                (if (gx#stx-pair? _%$%tl5108151114%_)
                                    (let ((_%$%e5108251117%_
                                           (gx#syntax-e _%$%tl5108151114%_)))
                                      (let ((_%$%hd5108351121%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5108251117%_)))
                                            (_%$%tl5108451124%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5108251117%_))))
                                        (if (gx#stx-null? _%$%tl5108451124%_)
                                            ((lambda (_%$%g5107451127%_
                                                      _%$%g5107551129%_)
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
                                                       (cons _%$%g5107551129%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%$%g5107451127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%hd5108351121%_
                                             _%$%hd5108051111%_)
                                            (_%$%g5107251090%_
                                             _%$%g5107351094%_))))
                                    (_%$%g5107251090%_ _%$%g5107351094%_))))
                            (_%$%g5107251090%_ _%$%g5107351094%_))))
                    (_%$%g5107251090%_ _%$%g5107351094%_)))))
        (_%$%g5107151145%_ _%$stx51068%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx51149%_)
      (let* ((_%$%g5115351171%_
              (lambda (_%$%g5115451167%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5115451167%_)))
             (_%$%g5115251226%_
              (lambda (_%$%g5115451175%_)
                (if (gx#stx-pair? _%$%g5115451175%_)
                    (let ((_%$%e5115751178%_ (gx#syntax-e _%$%g5115451175%_)))
                      (let ((_%$%hd5115851182%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5115751178%_)))
                            (_%$%tl5115951185%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5115751178%_))))
                        (if (gx#stx-pair? _%$%tl5115951185%_)
                            (let ((_%$%e5116051188%_
                                   (gx#syntax-e _%$%tl5115951185%_)))
                              (let ((_%$%hd5116151192%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5116051188%_)))
                                    (_%$%tl5116251195%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5116051188%_))))
                                (if (gx#stx-pair? _%$%tl5116251195%_)
                                    (let ((_%$%e5116351198%_
                                           (gx#syntax-e _%$%tl5116251195%_)))
                                      (let ((_%$%hd5116451202%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5116351198%_)))
                                            (_%$%tl5116551205%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5116351198%_))))
                                        (if (gx#stx-null? _%$%tl5116551205%_)
                                            ((lambda (_%$%g5115551208%_
                                                      _%$%g5115651210%_)
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
                                                 (cons _%$%g5115651210%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%$%g5115551208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%hd5116451202%_
                                             _%$%hd5116151192%_)
                                            (_%$%g5115351171%_
                                             _%$%g5115451175%_))))
                                    (_%$%g5115351171%_ _%$%g5115451175%_))))
                            (_%$%g5115351171%_ _%$%g5115451175%_))))
                    (_%$%g5115351171%_ _%$%g5115451175%_)))))
        (_%$%g5115251226%_ _%$stx51149%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx51230%_)
      (let* ((_%$%g5123451248%_
              (lambda (_%$%g5123551244%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5123551244%_)))
             (_%$%g5123351289%_
              (lambda (_%$%g5123551252%_)
                (if (gx#stx-pair? _%$%g5123551252%_)
                    (let ((_%$%e5123751255%_ (gx#syntax-e _%$%g5123551252%_)))
                      (let ((_%$%hd5123851259%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5123751255%_)))
                            (_%$%tl5123951262%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5123751255%_))))
                        (if (gx#stx-pair? _%$%tl5123951262%_)
                            (let ((_%$%e5124051265%_
                                   (gx#syntax-e _%$%tl5123951262%_)))
                              (let ((_%$%hd5124151269%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5124051265%_)))
                                    (_%$%tl5124251272%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5124051265%_))))
                                (if (gx#stx-null? _%$%tl5124251272%_)
                                    ((lambda (_%$%g5123651275%_)
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
                                         (cons _%$%g5123651275%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%$%hd5124151269%_)
                                    (_%$%g5123451248%_ _%$%g5123551252%_))))
                            (_%$%g5123451248%_ _%$%g5123551252%_))))
                    (_%$%g5123451248%_ _%$%g5123551252%_)))))
        (_%$%g5123351289%_ _%$stx51230%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx51293%_)
      (let* ((_%$%g5129751317%_
              (lambda (_%$%g5129851313%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5129851313%_)))
             (_%$%g5129651386%_
              (lambda (_%$%g5129851321%_)
                (if (gx#stx-pair? _%$%g5129851321%_)
                    (let ((_%$%e5130051324%_ (gx#syntax-e _%$%g5129851321%_)))
                      (let ((_%$%hd5130151328%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5130051324%_)))
                            (_%$%tl5130251331%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5130051324%_))))
                        (if (gx#stx-pair/null? _%$%tl5130251331%_)
                            (let ((_g87710_
                                   (gx#syntax-split-splice
                                    _%$%tl5130251331%_
                                    '0)))
                              (begin
                                (let ((_g87711_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g87710_)
                                             (##values-length _g87710_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g87711_ 2)))
                                      (error "Context expects 2 values"
                                             _g87711_)))
                                (let ((_%$%target5130351334%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g87710_ 0)))
                                      (_%$%tl5130551337%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g87710_ 1))))
                                  (if (gx#stx-null? _%$%tl5130551337%_)
                                      (letrec ((_%$%loop5130651340%_
                                                (lambda (_%$%hd5130451344%_
                                                         _%$%val5131051347%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd5130451344%_)
                                                      (let ((_%$%e5130751349%_
                                                             (gx#syntax-e
                                                              _%$%hd5130451344%_)))
                                                        (let ((_%$%lp-hd5130851353%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e5130751349%_)))
                      (_%$%lp-tl5130951356%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e5130751349%_))))
                  (_%$%loop5130651340%_
                   _%$%lp-tl5130951356%_
                   (cons _%$%lp-hd5130851353%_ _%$%val5131051347%_))))
              (let ((_%$%val5131151359%_ (reverse _%$%val5131051347%_)))
                ((lambda (_%$%g5129951362%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%$%g5137751380%_
                                                           _%$%g5137851383%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%$%g5137751380%_ '()))
                                    '())))
                  _%$%g5137851383%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%$%g5129951362%_))
                                     '()))))
                 _%$%val5131151359%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%loop5130651340%_
                                         _%$%target5130351334%_
                                         '()))
                                      (_%$%g5129751317%_ _%$%g5129851321%_)))))
                            (_%$%g5129751317%_ _%$%g5129851321%_))))
                    (_%$%g5129751317%_ _%$%g5129851321%_)))))
        (_%$%g5129651386%_ _%$stx51293%_)))))
