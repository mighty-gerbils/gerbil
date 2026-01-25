(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx56577%_)
      (let* ((_%g5658156595%_
              (lambda (_%g5658256591%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5658256591%_)))
             (_%g5658056637%_
              (lambda (_%g5658256599%_)
                (if (gx#stx-pair? _%g5658256599%_)
                    (let ((_%e5658456602%_ (gx#syntax-e _%g5658256599%_)))
                      (let ((_%hd5658556606%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5658456602%_)))
                            (_%tl5658656609%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5658456602%_))))
                        (if (gx#stx-pair? _%tl5658656609%_)
                            (let ((_%e5658756612%_
                                   (gx#syntax-e _%tl5658656609%_)))
                              (let ((_%hd5658856616%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5658756612%_)))
                                    (_%tl5658956619%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5658756612%_))))
                                (if (gx#stx-null? _%tl5658956619%_)
                                    ((lambda (_%g5658356622%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%g5658356622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5658856616%_)
                                    (_%g5658156595%_ _%g5658256599%_))))
                            (_%g5658156595%_ _%g5658256599%_))))
                    (_%g5658156595%_ _%g5658256599%_)))))
        (_%g5658056637%_ _%$stx56577%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx56641%_)
      (let* ((_%g5664556663%_
              (lambda (_%g5664656659%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5664656659%_)))
             (_%g5664456718%_
              (lambda (_%g5664656667%_)
                (if (gx#stx-pair? _%g5664656667%_)
                    (let ((_%e5664956670%_ (gx#syntax-e _%g5664656667%_)))
                      (let ((_%hd5665056674%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5664956670%_)))
                            (_%tl5665156677%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5664956670%_))))
                        (if (gx#stx-pair? _%tl5665156677%_)
                            (let ((_%e5665256680%_
                                   (gx#syntax-e _%tl5665156677%_)))
                              (let ((_%hd5665356684%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5665256680%_)))
                                    (_%tl5665456687%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5665256680%_))))
                                (if (gx#stx-pair? _%tl5665456687%_)
                                    (let ((_%e5665556690%_
                                           (gx#syntax-e _%tl5665456687%_)))
                                      (let ((_%hd5665656694%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5665556690%_)))
                                            (_%tl5665756697%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5665556690%_))))
                                        (if (gx#stx-null? _%tl5665756697%_)
                                            ((lambda (_%g5664756700%_
                                                      _%g5664856702%_)
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
                                                       (cons _%g5664856702%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5664756700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5665656694%_
                                             _%hd5665356684%_)
                                            (_%g5664556663%_
                                             _%g5664656667%_))))
                                    (_%g5664556663%_ _%g5664656667%_))))
                            (_%g5664556663%_ _%g5664656667%_))))
                    (_%g5664556663%_ _%g5664656667%_)))))
        (_%g5664456718%_ _%$stx56641%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx56722%_)
      (let* ((_%g5672656744%_
              (lambda (_%g5672756740%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5672756740%_)))
             (_%g5672556799%_
              (lambda (_%g5672756748%_)
                (if (gx#stx-pair? _%g5672756748%_)
                    (let ((_%e5673056751%_ (gx#syntax-e _%g5672756748%_)))
                      (let ((_%hd5673156755%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5673056751%_)))
                            (_%tl5673256758%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5673056751%_))))
                        (if (gx#stx-pair? _%tl5673256758%_)
                            (let ((_%e5673356761%_
                                   (gx#syntax-e _%tl5673256758%_)))
                              (let ((_%hd5673456765%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5673356761%_)))
                                    (_%tl5673556768%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5673356761%_))))
                                (if (gx#stx-pair? _%tl5673556768%_)
                                    (let ((_%e5673656771%_
                                           (gx#syntax-e _%tl5673556768%_)))
                                      (let ((_%hd5673756775%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5673656771%_)))
                                            (_%tl5673856778%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5673656771%_))))
                                        (if (gx#stx-null? _%tl5673856778%_)
                                            ((lambda (_%g5672856781%_
                                                      _%g5672956783%_)
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
                                                 (cons _%g5672956783%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5672856781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5673756775%_
                                             _%hd5673456765%_)
                                            (_%g5672656744%_
                                             _%g5672756748%_))))
                                    (_%g5672656744%_ _%g5672756748%_))))
                            (_%g5672656744%_ _%g5672756748%_))))
                    (_%g5672656744%_ _%g5672756748%_)))))
        (_%g5672556799%_ _%$stx56722%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx56803%_)
      (let* ((_%g5680756821%_
              (lambda (_%g5680856817%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5680856817%_)))
             (_%g5680656862%_
              (lambda (_%g5680856825%_)
                (if (gx#stx-pair? _%g5680856825%_)
                    (let ((_%e5681056828%_ (gx#syntax-e _%g5680856825%_)))
                      (let ((_%hd5681156832%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5681056828%_)))
                            (_%tl5681256835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5681056828%_))))
                        (if (gx#stx-pair? _%tl5681256835%_)
                            (let ((_%e5681356838%_
                                   (gx#syntax-e _%tl5681256835%_)))
                              (let ((_%hd5681456842%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5681356838%_)))
                                    (_%tl5681556845%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5681356838%_))))
                                (if (gx#stx-null? _%tl5681556845%_)
                                    ((lambda (_%g5680956848%_)
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
                                         (cons _%g5680956848%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5681456842%_)
                                    (_%g5680756821%_ _%g5680856825%_))))
                            (_%g5680756821%_ _%g5680856825%_))))
                    (_%g5680756821%_ _%g5680856825%_)))))
        (_%g5680656862%_ _%$stx56803%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx56866%_)
      (let* ((_%g5687056890%_
              (lambda (_%g5687156886%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5687156886%_)))
             (_%g5686956959%_
              (lambda (_%g5687156894%_)
                (if (gx#stx-pair? _%g5687156894%_)
                    (let ((_%e5687356897%_ (gx#syntax-e _%g5687156894%_)))
                      (let ((_%hd5687456901%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5687356897%_)))
                            (_%tl5687556904%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5687356897%_))))
                        (if (gx#stx-pair/null? _%tl5687556904%_)
                            (let ((_g92688_
                                   (gx#syntax-split-splice
                                    _%tl5687556904%_
                                    '0)))
                              (begin
                                (let ((_g92689_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g92688_)
                                             (##values-length _g92688_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g92689_ 2)))
                                      (error "Context expects 2 values"
                                             _g92689_)))
                                (let ((_%target5687656907%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g92688_ 0)))
                                      (_%tl5687856910%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g92688_ 1))))
                                  (if (gx#stx-null? _%tl5687856910%_)
                                      (letrec ((_%loop5687956913%_
                                                (lambda (_%hd5687756917%_
                                                         _%val5688356920%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5687756917%_)
                                                      (let ((_%e5688056922%_
                                                             (gx#syntax-e
                                                              _%hd5687756917%_)))
                                                        (let ((_%lp-hd5688156926%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5688056922%_)))
                      (_%lp-tl5688256929%_
                       (let () (declare (not safe)) (##cdr _%e5688056922%_))))
                  (_%loop5687956913%_
                   _%lp-tl5688256929%_
                   (cons _%lp-hd5688156926%_ _%val5688356920%_))))
              (let ((_%val5688456932%_ (reverse _%val5688356920%_)))
                ((lambda (_%g5687256935%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%g5695056953%_
                                                           _%g5695156956%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%g5695056953%_ '()))
                                    '())))
                  _%g5695156956%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g5687256935%_))
                                     '()))))
                 _%val5688456932%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop5687956913%_
                                         _%target5687656907%_
                                         '()))
                                      (_%g5687056890%_ _%g5687156894%_)))))
                            (_%g5687056890%_ _%g5687156894%_))))
                    (_%g5687056890%_ _%g5687156894%_)))))
        (_%g5686956959%_ _%$stx56866%_)))))
