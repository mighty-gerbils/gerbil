(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx56895%_)
      (let* ((_%g5689956913%_
              (lambda (_%g5690056909%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5690056909%_)))
             (_%g5689856955%_
              (lambda (_%g5690056917%_)
                (if (gx#stx-pair? _%g5690056917%_)
                    (let ((_%e5690256920%_ (gx#syntax-e _%g5690056917%_)))
                      (let ((_%hd5690356924%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5690256920%_)))
                            (_%tl5690456927%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5690256920%_))))
                        (if (gx#stx-pair? _%tl5690456927%_)
                            (let ((_%e5690556930%_
                                   (gx#syntax-e _%tl5690456927%_)))
                              (let ((_%hd5690656934%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5690556930%_)))
                                    (_%tl5690756937%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5690556930%_))))
                                (if (gx#stx-null? _%tl5690756937%_)
                                    ((lambda (_%g5690156940%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%g5690156940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5690656934%_)
                                    (_%g5689956913%_ _%g5690056917%_))))
                            (_%g5689956913%_ _%g5690056917%_))))
                    (_%g5689956913%_ _%g5690056917%_)))))
        (_%g5689856955%_ _%$stx56895%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx56959%_)
      (let* ((_%g5696356981%_
              (lambda (_%g5696456977%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5696456977%_)))
             (_%g5696257036%_
              (lambda (_%g5696456985%_)
                (if (gx#stx-pair? _%g5696456985%_)
                    (let ((_%e5696756988%_ (gx#syntax-e _%g5696456985%_)))
                      (let ((_%hd5696856992%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5696756988%_)))
                            (_%tl5696956995%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5696756988%_))))
                        (if (gx#stx-pair? _%tl5696956995%_)
                            (let ((_%e5697056998%_
                                   (gx#syntax-e _%tl5696956995%_)))
                              (let ((_%hd5697157002%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5697056998%_)))
                                    (_%tl5697257005%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5697056998%_))))
                                (if (gx#stx-pair? _%tl5697257005%_)
                                    (let ((_%e5697357008%_
                                           (gx#syntax-e _%tl5697257005%_)))
                                      (let ((_%hd5697457012%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5697357008%_)))
                                            (_%tl5697557015%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5697357008%_))))
                                        (if (gx#stx-null? _%tl5697557015%_)
                                            ((lambda (_%g5696557018%_
                                                      _%g5696657020%_)
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
                                                       (cons _%g5696657020%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5696557018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5697457012%_
                                             _%hd5697157002%_)
                                            (_%g5696356981%_
                                             _%g5696456985%_))))
                                    (_%g5696356981%_ _%g5696456985%_))))
                            (_%g5696356981%_ _%g5696456985%_))))
                    (_%g5696356981%_ _%g5696456985%_)))))
        (_%g5696257036%_ _%$stx56959%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx57040%_)
      (let* ((_%g5704457062%_
              (lambda (_%g5704557058%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5704557058%_)))
             (_%g5704357117%_
              (lambda (_%g5704557066%_)
                (if (gx#stx-pair? _%g5704557066%_)
                    (let ((_%e5704857069%_ (gx#syntax-e _%g5704557066%_)))
                      (let ((_%hd5704957073%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5704857069%_)))
                            (_%tl5705057076%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5704857069%_))))
                        (if (gx#stx-pair? _%tl5705057076%_)
                            (let ((_%e5705157079%_
                                   (gx#syntax-e _%tl5705057076%_)))
                              (let ((_%hd5705257083%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5705157079%_)))
                                    (_%tl5705357086%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5705157079%_))))
                                (if (gx#stx-pair? _%tl5705357086%_)
                                    (let ((_%e5705457089%_
                                           (gx#syntax-e _%tl5705357086%_)))
                                      (let ((_%hd5705557093%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5705457089%_)))
                                            (_%tl5705657096%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5705457089%_))))
                                        (if (gx#stx-null? _%tl5705657096%_)
                                            ((lambda (_%g5704657099%_
                                                      _%g5704757101%_)
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
                                                 (cons _%g5704757101%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5704657099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5705557093%_
                                             _%hd5705257083%_)
                                            (_%g5704457062%_
                                             _%g5704557066%_))))
                                    (_%g5704457062%_ _%g5704557066%_))))
                            (_%g5704457062%_ _%g5704557066%_))))
                    (_%g5704457062%_ _%g5704557066%_)))))
        (_%g5704357117%_ _%$stx57040%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx57121%_)
      (let* ((_%g5712557139%_
              (lambda (_%g5712657135%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5712657135%_)))
             (_%g5712457180%_
              (lambda (_%g5712657143%_)
                (if (gx#stx-pair? _%g5712657143%_)
                    (let ((_%e5712857146%_ (gx#syntax-e _%g5712657143%_)))
                      (let ((_%hd5712957150%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5712857146%_)))
                            (_%tl5713057153%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5712857146%_))))
                        (if (gx#stx-pair? _%tl5713057153%_)
                            (let ((_%e5713157156%_
                                   (gx#syntax-e _%tl5713057153%_)))
                              (let ((_%hd5713257160%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5713157156%_)))
                                    (_%tl5713357163%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5713157156%_))))
                                (if (gx#stx-null? _%tl5713357163%_)
                                    ((lambda (_%g5712757166%_)
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
                                         (cons _%g5712757166%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5713257160%_)
                                    (_%g5712557139%_ _%g5712657143%_))))
                            (_%g5712557139%_ _%g5712657143%_))))
                    (_%g5712557139%_ _%g5712657143%_)))))
        (_%g5712457180%_ _%$stx57121%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx57184%_)
      (let* ((_%g5718857208%_
              (lambda (_%g5718957204%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5718957204%_)))
             (_%g5718757277%_
              (lambda (_%g5718957212%_)
                (if (gx#stx-pair? _%g5718957212%_)
                    (let ((_%e5719157215%_ (gx#syntax-e _%g5718957212%_)))
                      (let ((_%hd5719257219%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5719157215%_)))
                            (_%tl5719357222%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5719157215%_))))
                        (if (gx#stx-pair/null? _%tl5719357222%_)
                            (let ((_g97768_
                                   (gx#syntax-split-splice
                                    _%tl5719357222%_
                                    '0)))
                              (begin
                                (let ((_g97769_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97768_)
                                             (##values-length _g97768_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97769_ 2)))
                                      (error "Context expects 2 values"
                                             _g97769_)))
                                (let ((_%target5719457225%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g97768_ 0)))
                                      (_%tl5719657228%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g97768_ 1))))
                                  (if (gx#stx-null? _%tl5719657228%_)
                                      (letrec ((_%loop5719757231%_
                                                (lambda (_%hd5719557235%_
                                                         _%val5720157238%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5719557235%_)
                                                      (let ((_%e5719857240%_
                                                             (gx#syntax-e
                                                              _%hd5719557235%_)))
                                                        (let ((_%lp-hd5719957244%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5719857240%_)))
                      (_%lp-tl5720057247%_
                       (let () (declare (not safe)) (##cdr _%e5719857240%_))))
                  (_%loop5719757231%_
                   _%lp-tl5720057247%_
                   (cons _%lp-hd5719957244%_ _%val5720157238%_))))
              (let ((_%val5720257250%_ (reverse _%val5720157238%_)))
                ((lambda (_%g5719057253%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%g5726857271%_
                                                           _%g5726957274%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%g5726857271%_ '()))
                                    '())))
                  _%g5726957274%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g5719057253%_))
                                     '()))))
                 _%val5720257250%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop5719757231%_
                                         _%target5719457225%_
                                         '()))
                                      (_%g5718857208%_ _%g5718957212%_)))))
                            (_%g5718857208%_ _%g5718957212%_))))
                    (_%g5718857208%_ _%g5718957212%_)))))
        (_%g5718757277%_ _%$stx57184%_)))))
