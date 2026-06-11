(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx57957%_)
      (let* ((_%$%g5796157975%_
              (lambda (_%$%g5796257971%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5796257971%_)))
             (_%$%g5796058017%_
              (lambda (_%$%g5796257979%_)
                (if (gx#stx-pair? _%$%g5796257979%_)
                    (let ((_%$%e5796457982%_ (gx#syntax-e _%$%g5796257979%_)))
                      (let ((_%$%hd5796557986%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5796457982%_)))
                            (_%$%tl5796657989%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5796457982%_))))
                        (if (gx#stx-pair? _%$%tl5796657989%_)
                            (let ((_%$%e5796757992%_
                                   (gx#syntax-e _%$%tl5796657989%_)))
                              (let ((_%$%hd5796857996%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5796757992%_)))
                                    (_%$%tl5796957999%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5796757992%_))))
                                (if (gx#stx-null? _%$%tl5796957999%_)
                                    (cons (gx#datum->syntax '#f '?)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'or)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'not)
                                                            (cons _%$%hd5796857996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_%$%g5796157975%_ _%$%g5796257979%_))))
                            (_%$%g5796157975%_ _%$%g5796257979%_))))
                    (_%$%g5796157975%_ _%$%g5796257979%_)))))
        (_%$%g5796058017%_ _%$stx57957%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx58021%_)
      (let* ((_%$%g5802558043%_
              (lambda (_%$%g5802658039%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5802658039%_)))
             (_%$%g5802458098%_
              (lambda (_%$%g5802658047%_)
                (if (gx#stx-pair? _%$%g5802658047%_)
                    (let ((_%$%e5802958050%_ (gx#syntax-e _%$%g5802658047%_)))
                      (let ((_%$%hd5803058054%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5802958050%_)))
                            (_%$%tl5803158057%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5802958050%_))))
                        (if (gx#stx-pair? _%$%tl5803158057%_)
                            (let ((_%$%e5803258060%_
                                   (gx#syntax-e _%$%tl5803158057%_)))
                              (let ((_%$%hd5803358064%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5803258060%_)))
                                    (_%$%tl5803458067%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5803258060%_))))
                                (if (gx#stx-pair? _%$%tl5803458067%_)
                                    (let ((_%$%e5803558070%_
                                           (gx#syntax-e _%$%tl5803458067%_)))
                                      (let ((_%$%hd5803658074%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5803558070%_)))
                                            (_%$%tl5803758077%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5803558070%_))))
                                        (if (gx#stx-null? _%$%tl5803758077%_)
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
                                                    (cons _%$%hd5803358064%_
                                                          '())))
                                        (cons (cons (gx#datum->syntax '#f 'fx<)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%$%hd5803658074%_
                                                                '())))
                                              '()))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g5802558043%_
                                             _%$%g5802658047%_))))
                                    (_%$%g5802558043%_ _%$%g5802658047%_))))
                            (_%$%g5802558043%_ _%$%g5802658047%_))))
                    (_%$%g5802558043%_ _%$%g5802658047%_)))))
        (_%$%g5802458098%_ _%$stx58021%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx58102%_)
      (let* ((_%$%g5810658124%_
              (lambda (_%$%g5810758120%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5810758120%_)))
             (_%$%g5810558179%_
              (lambda (_%$%g5810758128%_)
                (if (gx#stx-pair? _%$%g5810758128%_)
                    (let ((_%$%e5811058131%_ (gx#syntax-e _%$%g5810758128%_)))
                      (let ((_%$%hd5811158135%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5811058131%_)))
                            (_%$%tl5811258138%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5811058131%_))))
                        (if (gx#stx-pair? _%$%tl5811258138%_)
                            (let ((_%$%e5811358141%_
                                   (gx#syntax-e _%$%tl5811258138%_)))
                              (let ((_%$%hd5811458145%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5811358141%_)))
                                    (_%$%tl5811558148%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5811358141%_))))
                                (if (gx#stx-pair? _%$%tl5811558148%_)
                                    (let ((_%$%e5811658151%_
                                           (gx#syntax-e _%$%tl5811558148%_)))
                                      (let ((_%$%hd5811758155%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5811658151%_)))
                                            (_%$%tl5811858158%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5811658151%_))))
                                        (if (gx#stx-null? _%$%tl5811858158%_)
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
                                              (cons _%$%hd5811458145%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%$%hd5811758155%_
                                                                '()))))
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g5810658124%_
                                             _%$%g5810758128%_))))
                                    (_%$%g5810658124%_ _%$%g5810758128%_))))
                            (_%$%g5810658124%_ _%$%g5810758128%_))))
                    (_%$%g5810658124%_ _%$%g5810758128%_)))))
        (_%$%g5810558179%_ _%$stx58102%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx58183%_)
      (let* ((_%$%g5818758201%_
              (lambda (_%$%g5818858197%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5818858197%_)))
             (_%$%g5818658242%_
              (lambda (_%$%g5818858205%_)
                (if (gx#stx-pair? _%$%g5818858205%_)
                    (let ((_%$%e5819058208%_ (gx#syntax-e _%$%g5818858205%_)))
                      (let ((_%$%hd5819158212%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5819058208%_)))
                            (_%$%tl5819258215%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5819058208%_))))
                        (if (gx#stx-pair? _%$%tl5819258215%_)
                            (let ((_%$%e5819358218%_
                                   (gx#syntax-e _%$%tl5819258215%_)))
                              (let ((_%$%hd5819458222%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5819358218%_)))
                                    (_%$%tl5819558225%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5819358218%_))))
                                (if (gx#stx-null? _%$%tl5819558225%_)
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
                                      (cons _%$%hd5819458222%_
                                            (cons (gx#datum->syntax '#f 'o)
                                                  '())))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%g5818758201%_ _%$%g5818858205%_))))
                            (_%$%g5818758201%_ _%$%g5818858205%_))))
                    (_%$%g5818758201%_ _%$%g5818858205%_)))))
        (_%$%g5818658242%_ _%$stx58183%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx58246%_)
      (let* ((_%$%g5825058270%_
              (lambda (_%$%g5825158266%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5825158266%_)))
             (_%$%g5824958339%_
              (lambda (_%$%g5825158274%_)
                (if (gx#stx-pair? _%$%g5825158274%_)
                    (let ((_%$%e5825358277%_ (gx#syntax-e _%$%g5825158274%_)))
                      (let ((_%$%hd5825458281%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5825358277%_)))
                            (_%$%tl5825558284%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5825358277%_))))
                        (if (gx#stx-pair/null? _%$%tl5825558284%_)
                            (let ((_g101472_
                                   (gx#syntax-split-splice
                                    _%$%tl5825558284%_
                                    '0)))
                              (begin
                                (let ((_g101473_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g101472_)
                                             (##values-length _g101472_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g101473_ 2)))
                                      (error "Context expects 2 values"
                                             _g101473_)))
                                (let ((_%$%target5825658287%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g101472_ 0)))
                                      (_%$%tl5825858290%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g101472_ 1))))
                                  (if (gx#stx-null? _%$%tl5825858290%_)
                                      (letrec ((_%$%loop5825958293%_
                                                (lambda (_%$%hd5825758297%_
                                                         _%$%val5826358300%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd5825758297%_)
                                                      (let ((_%$%e5826058302%_
                                                             (gx#syntax-e
                                                              _%$%hd5825758297%_)))
                                                        (let ((_%$%lp-hd5826158306%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e5826058302%_)))
                      (_%$%lp-tl5826258309%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e5826058302%_))))
                  (_%$%loop5825958293%_
                   _%$%lp-tl5826258309%_
                   (cons _%$%lp-hd5826158306%_ _%$%val5826358300%_))))
              (let ((_%$%val5826458312%_ (reverse _%$%val5826358300%_)))
                (cons (gx#datum->syntax '#f 'lambda)
                      (cons (cons (gx#datum->syntax '#f 'o) '())
                            (cons (cons (gx#datum->syntax '#f 'or)
                                        (foldr (lambda (_%$%g5833058333%_
                                                        _%$%g5833158336%_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'o)
                           (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                       (cons _%$%g5833058333%_ '()))
                                 '())))
               _%$%g5833158336%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%$%val5826458312%_))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%loop5825958293%_
                                         _%$%target5825658287%_
                                         '()))
                                      (_%$%g5825058270%_ _%$%g5825158274%_)))))
                            (_%$%g5825058270%_ _%$%g5825158274%_))))
                    (_%$%g5825058270%_ _%$%g5825158274%_)))))
        (_%$%g5824958339%_ _%$stx58246%_)))))
