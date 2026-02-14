(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx57456%_)
      (let* ((_%g5746057474%_
              (lambda (_%g5746157470%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5746157470%_)))
             (_%g5745957516%_
              (lambda (_%g5746157478%_)
                (if (gx#stx-pair? _%g5746157478%_)
                    (let ((_%e5746357481%_ (gx#syntax-e _%g5746157478%_)))
                      (let ((_%hd5746457485%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5746357481%_)))
                            (_%tl5746557488%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5746357481%_))))
                        (if (gx#stx-pair? _%tl5746557488%_)
                            (let ((_%e5746657491%_
                                   (gx#syntax-e _%tl5746557488%_)))
                              (let ((_%hd5746757495%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5746657491%_)))
                                    (_%tl5746857498%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5746657491%_))))
                                (if (gx#stx-null? _%tl5746857498%_)
                                    ((lambda (_%g5746257501%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%g5746257501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5746757495%_)
                                    (_%g5746057474%_ _%g5746157478%_))))
                            (_%g5746057474%_ _%g5746157478%_))))
                    (_%g5746057474%_ _%g5746157478%_)))))
        (_%g5745957516%_ _%$stx57456%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx57520%_)
      (let* ((_%g5752457542%_
              (lambda (_%g5752557538%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5752557538%_)))
             (_%g5752357597%_
              (lambda (_%g5752557546%_)
                (if (gx#stx-pair? _%g5752557546%_)
                    (let ((_%e5752857549%_ (gx#syntax-e _%g5752557546%_)))
                      (let ((_%hd5752957553%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5752857549%_)))
                            (_%tl5753057556%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5752857549%_))))
                        (if (gx#stx-pair? _%tl5753057556%_)
                            (let ((_%e5753157559%_
                                   (gx#syntax-e _%tl5753057556%_)))
                              (let ((_%hd5753257563%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5753157559%_)))
                                    (_%tl5753357566%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5753157559%_))))
                                (if (gx#stx-pair? _%tl5753357566%_)
                                    (let ((_%e5753457569%_
                                           (gx#syntax-e _%tl5753357566%_)))
                                      (let ((_%hd5753557573%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5753457569%_)))
                                            (_%tl5753657576%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5753457569%_))))
                                        (if (gx#stx-null? _%tl5753657576%_)
                                            ((lambda (_%g5752657579%_
                                                      _%g5752757581%_)
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
                                                       (cons _%g5752757581%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5752657579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5753557573%_
                                             _%hd5753257563%_)
                                            (_%g5752457542%_
                                             _%g5752557546%_))))
                                    (_%g5752457542%_ _%g5752557546%_))))
                            (_%g5752457542%_ _%g5752557546%_))))
                    (_%g5752457542%_ _%g5752557546%_)))))
        (_%g5752357597%_ _%$stx57520%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx57601%_)
      (let* ((_%g5760557623%_
              (lambda (_%g5760657619%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5760657619%_)))
             (_%g5760457678%_
              (lambda (_%g5760657627%_)
                (if (gx#stx-pair? _%g5760657627%_)
                    (let ((_%e5760957630%_ (gx#syntax-e _%g5760657627%_)))
                      (let ((_%hd5761057634%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5760957630%_)))
                            (_%tl5761157637%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5760957630%_))))
                        (if (gx#stx-pair? _%tl5761157637%_)
                            (let ((_%e5761257640%_
                                   (gx#syntax-e _%tl5761157637%_)))
                              (let ((_%hd5761357644%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5761257640%_)))
                                    (_%tl5761457647%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5761257640%_))))
                                (if (gx#stx-pair? _%tl5761457647%_)
                                    (let ((_%e5761557650%_
                                           (gx#syntax-e _%tl5761457647%_)))
                                      (let ((_%hd5761657654%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5761557650%_)))
                                            (_%tl5761757657%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5761557650%_))))
                                        (if (gx#stx-null? _%tl5761757657%_)
                                            ((lambda (_%g5760757660%_
                                                      _%g5760857662%_)
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
                                                 (cons _%g5760857662%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g5760757660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5761657654%_
                                             _%hd5761357644%_)
                                            (_%g5760557623%_
                                             _%g5760657627%_))))
                                    (_%g5760557623%_ _%g5760657627%_))))
                            (_%g5760557623%_ _%g5760657627%_))))
                    (_%g5760557623%_ _%g5760657627%_)))))
        (_%g5760457678%_ _%$stx57601%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx57682%_)
      (let* ((_%g5768657700%_
              (lambda (_%g5768757696%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5768757696%_)))
             (_%g5768557741%_
              (lambda (_%g5768757704%_)
                (if (gx#stx-pair? _%g5768757704%_)
                    (let ((_%e5768957707%_ (gx#syntax-e _%g5768757704%_)))
                      (let ((_%hd5769057711%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5768957707%_)))
                            (_%tl5769157714%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5768957707%_))))
                        (if (gx#stx-pair? _%tl5769157714%_)
                            (let ((_%e5769257717%_
                                   (gx#syntax-e _%tl5769157714%_)))
                              (let ((_%hd5769357721%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5769257717%_)))
                                    (_%tl5769457724%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5769257717%_))))
                                (if (gx#stx-null? _%tl5769457724%_)
                                    ((lambda (_%g5768857727%_)
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
                                         (cons _%g5768857727%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5769357721%_)
                                    (_%g5768657700%_ _%g5768757704%_))))
                            (_%g5768657700%_ _%g5768757704%_))))
                    (_%g5768657700%_ _%g5768757704%_)))))
        (_%g5768557741%_ _%$stx57682%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx57745%_)
      (let* ((_%g5774957769%_
              (lambda (_%g5775057765%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5775057765%_)))
             (_%g5774857838%_
              (lambda (_%g5775057773%_)
                (if (gx#stx-pair? _%g5775057773%_)
                    (let ((_%e5775257776%_ (gx#syntax-e _%g5775057773%_)))
                      (let ((_%hd5775357780%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5775257776%_)))
                            (_%tl5775457783%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5775257776%_))))
                        (if (gx#stx-pair/null? _%tl5775457783%_)
                            (let ((_g100275_
                                   (gx#syntax-split-splice
                                    _%tl5775457783%_
                                    '0)))
                              (begin
                                (let ((_g100276_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g100275_)
                                             (##values-length _g100275_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g100276_ 2)))
                                      (error "Context expects 2 values"
                                             _g100276_)))
                                (let ((_%target5775557786%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g100275_ 0)))
                                      (_%tl5775757789%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g100275_ 1))))
                                  (if (gx#stx-null? _%tl5775757789%_)
                                      (letrec ((_%loop5775857792%_
                                                (lambda (_%hd5775657796%_
                                                         _%val5776257799%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5775657796%_)
                                                      (let ((_%e5775957801%_
                                                             (gx#syntax-e
                                                              _%hd5775657796%_)))
                                                        (let ((_%lp-hd5776057805%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5775957801%_)))
                      (_%lp-tl5776157808%_
                       (let () (declare (not safe)) (##cdr _%e5775957801%_))))
                  (_%loop5775857792%_
                   _%lp-tl5776157808%_
                   (cons _%lp-hd5776057805%_ _%val5776257799%_))))
              (let ((_%val5776357811%_ (reverse _%val5776257799%_)))
                ((lambda (_%g5775157814%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%g5782957832%_
                                                           _%g5783057835%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%g5782957832%_ '()))
                                    '())))
                  _%g5783057835%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g5775157814%_))
                                     '()))))
                 _%val5776357811%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop5775857792%_
                                         _%target5775557786%_
                                         '()))
                                      (_%g5774957769%_ _%g5775057773%_)))))
                            (_%g5774957769%_ _%g5775057773%_))))
                    (_%g5774957769%_ _%g5775057773%_)))))
        (_%g5774857838%_ _%$stx57745%_)))))
