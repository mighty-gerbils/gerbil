(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx56908%_)
      (let* ((_%g5691256926%_
              (lambda (_%g5691356922%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5691356922%_)))
             (_%g5691156968%_
              (lambda (_%g5691356930%_)
                (if (gx#stx-pair? _%g5691356930%_)
                    (let ((_%e5691556933%_ (gx#syntax-e _%g5691356930%_)))
                      (let ((_%hd5691656937%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5691556933%_)))
                            (_%tl5691756940%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5691556933%_))))
                        (if (gx#stx-pair? _%tl5691756940%_)
                            (let ((_%e5691856943%_
                                   (gx#syntax-e _%tl5691756940%_)))
                              (let ((_%hd5691956947%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5691856943%_)))
                                    (_%tl5692056950%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5691856943%_))))
                                (if (gx#stx-null? _%tl5692056950%_)
                                    ((lambda (_%g5691456953%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%g5691456953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5691956947%_)
                                    (_%g5691256926%_ _%g5691356930%_))))
                            (_%g5691256926%_ _%g5691356930%_))))
                    (_%g5691256926%_ _%g5691356930%_)))))
        (_%g5691156968%_ _%$stx56908%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx56972%_)
      (let* ((_%g5697656994%_
              (lambda (_%g5697756990%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5697756990%_)))
             (_%g5697557049%_
              (lambda (_%g5697756998%_)
                (if (gx#stx-pair? _%g5697756998%_)
                    (let ((_%e5698057001%_ (gx#syntax-e _%g5697756998%_)))
                      (let ((_%hd5698157005%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5698057001%_)))
                            (_%tl5698257008%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5698057001%_))))
                        (if (gx#stx-pair? _%tl5698257008%_)
                            (let ((_%e5698357011%_
                                   (gx#syntax-e _%tl5698257008%_)))
                              (let ((_%hd5698457015%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5698357011%_)))
                                    (_%tl5698557018%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5698357011%_))))
                                (if (gx#stx-pair? _%tl5698557018%_)
                                    (let ((_%e5698657021%_
                                           (gx#syntax-e _%tl5698557018%_)))
                                      (let ((_%hd5698757025%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5698657021%_)))
                                            (_%tl5698857028%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5698657021%_))))
                                        (if (gx#stx-null? _%tl5698857028%_)
                                            ((lambda (_%g5697857031%_
                                                      _%g5697957033%_)
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
                                                       (cons _%g5697957033%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5697857031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5698757025%_
                                             _%hd5698457015%_)
                                            (_%g5697656994%_
                                             _%g5697756998%_))))
                                    (_%g5697656994%_ _%g5697756998%_))))
                            (_%g5697656994%_ _%g5697756998%_))))
                    (_%g5697656994%_ _%g5697756998%_)))))
        (_%g5697557049%_ _%$stx56972%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx57053%_)
      (let* ((_%g5705757075%_
              (lambda (_%g5705857071%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5705857071%_)))
             (_%g5705657130%_
              (lambda (_%g5705857079%_)
                (if (gx#stx-pair? _%g5705857079%_)
                    (let ((_%e5706157082%_ (gx#syntax-e _%g5705857079%_)))
                      (let ((_%hd5706257086%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5706157082%_)))
                            (_%tl5706357089%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5706157082%_))))
                        (if (gx#stx-pair? _%tl5706357089%_)
                            (let ((_%e5706457092%_
                                   (gx#syntax-e _%tl5706357089%_)))
                              (let ((_%hd5706557096%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5706457092%_)))
                                    (_%tl5706657099%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5706457092%_))))
                                (if (gx#stx-pair? _%tl5706657099%_)
                                    (let ((_%e5706757102%_
                                           (gx#syntax-e _%tl5706657099%_)))
                                      (let ((_%hd5706857106%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5706757102%_)))
                                            (_%tl5706957109%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5706757102%_))))
                                        (if (gx#stx-null? _%tl5706957109%_)
                                            ((lambda (_%g5705957112%_
                                                      _%g5706057114%_)
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
                                                 (cons _%g5706057114%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5705957112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5706857106%_
                                             _%hd5706557096%_)
                                            (_%g5705757075%_
                                             _%g5705857079%_))))
                                    (_%g5705757075%_ _%g5705857079%_))))
                            (_%g5705757075%_ _%g5705857079%_))))
                    (_%g5705757075%_ _%g5705857079%_)))))
        (_%g5705657130%_ _%$stx57053%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx57134%_)
      (let* ((_%g5713857152%_
              (lambda (_%g5713957148%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5713957148%_)))
             (_%g5713757193%_
              (lambda (_%g5713957156%_)
                (if (gx#stx-pair? _%g5713957156%_)
                    (let ((_%e5714157159%_ (gx#syntax-e _%g5713957156%_)))
                      (let ((_%hd5714257163%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5714157159%_)))
                            (_%tl5714357166%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5714157159%_))))
                        (if (gx#stx-pair? _%tl5714357166%_)
                            (let ((_%e5714457169%_
                                   (gx#syntax-e _%tl5714357166%_)))
                              (let ((_%hd5714557173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5714457169%_)))
                                    (_%tl5714657176%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5714457169%_))))
                                (if (gx#stx-null? _%tl5714657176%_)
                                    ((lambda (_%g5714057179%_)
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
                                         (cons _%g5714057179%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5714557173%_)
                                    (_%g5713857152%_ _%g5713957156%_))))
                            (_%g5713857152%_ _%g5713957156%_))))
                    (_%g5713857152%_ _%g5713957156%_)))))
        (_%g5713757193%_ _%$stx57134%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx57197%_)
      (let* ((_%g5720157221%_
              (lambda (_%g5720257217%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5720257217%_)))
             (_%g5720057290%_
              (lambda (_%g5720257225%_)
                (if (gx#stx-pair? _%g5720257225%_)
                    (let ((_%e5720457228%_ (gx#syntax-e _%g5720257225%_)))
                      (let ((_%hd5720557232%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5720457228%_)))
                            (_%tl5720657235%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5720457228%_))))
                        (if (gx#stx-pair/null? _%tl5720657235%_)
                            (let ((_g98924_
                                   (gx#syntax-split-splice
                                    _%tl5720657235%_
                                    '0)))
                              (begin
                                (let ((_g98925_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98924_)
                                             (##values-length _g98924_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98925_ 2)))
                                      (error "Context expects 2 values"
                                             _g98925_)))
                                (let ((_%target5720757238%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g98924_ 0)))
                                      (_%tl5720957241%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g98924_ 1))))
                                  (if (gx#stx-null? _%tl5720957241%_)
                                      (letrec ((_%loop5721057244%_
                                                (lambda (_%hd5720857248%_
                                                         _%val5721457251%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5720857248%_)
                                                      (let ((_%e5721157253%_
                                                             (gx#syntax-e
                                                              _%hd5720857248%_)))
                                                        (let ((_%lp-hd5721257257%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5721157253%_)))
                      (_%lp-tl5721357260%_
                       (let () (declare (not safe)) (##cdr _%e5721157253%_))))
                  (_%loop5721057244%_
                   _%lp-tl5721357260%_
                   (cons _%lp-hd5721257257%_ _%val5721457251%_))))
              (let ((_%val5721557263%_ (reverse _%val5721457251%_)))
                ((lambda (_%g5720357266%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%g5728157284%_
                                                           _%g5728257287%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%g5728157284%_ '()))
                                    '())))
                  _%g5728257287%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g5720357266%_))
                                     '()))))
                 _%val5721557263%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop5721057244%_
                                         _%target5720757238%_
                                         '()))
                                      (_%g5720157221%_ _%g5720257225%_)))))
                            (_%g5720157221%_ _%g5720257225%_))))
                    (_%g5720157221%_ _%g5720257225%_)))))
        (_%g5720057290%_ _%$stx57197%_)))))
