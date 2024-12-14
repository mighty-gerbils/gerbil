(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx52135%_)
      (let* ((_%g5213952153%_
              (lambda (_%g5214052149%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5214052149%_)))
             (_%g5213852195%_
              (lambda (_%g5214052157%_)
                (if (gx#stx-pair? _%g5214052157%_)
                    (let ((_%e5214252160%_ (gx#syntax-e _%g5214052157%_)))
                      (let ((_%hd5214352164%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5214252160%_)))
                            (_%tl5214452167%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5214252160%_))))
                        (if (gx#stx-pair? _%tl5214452167%_)
                            (let ((_%e5214552170%_
                                   (gx#syntax-e _%tl5214452167%_)))
                              (let ((_%hd5214652174%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5214552170%_)))
                                    (_%tl5214752177%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5214552170%_))))
                                (if (gx#stx-null? _%tl5214752177%_)
                                    ((lambda (_%L52180%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L52180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5214652174%_)
                                    (_%g5213952153%_ _%g5214052157%_))))
                            (_%g5213952153%_ _%g5214052157%_))))
                    (_%g5213952153%_ _%g5214052157%_)))))
        (_%g5213852195%_ _%$stx52135%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx52199%_)
      (let* ((_%g5220352221%_
              (lambda (_%g5220452217%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5220452217%_)))
             (_%g5220252276%_
              (lambda (_%g5220452225%_)
                (if (gx#stx-pair? _%g5220452225%_)
                    (let ((_%e5220752228%_ (gx#syntax-e _%g5220452225%_)))
                      (let ((_%hd5220852232%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5220752228%_)))
                            (_%tl5220952235%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5220752228%_))))
                        (if (gx#stx-pair? _%tl5220952235%_)
                            (let ((_%e5221052238%_
                                   (gx#syntax-e _%tl5220952235%_)))
                              (let ((_%hd5221152242%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5221052238%_)))
                                    (_%tl5221252245%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5221052238%_))))
                                (if (gx#stx-pair? _%tl5221252245%_)
                                    (let ((_%e5221352248%_
                                           (gx#syntax-e _%tl5221252245%_)))
                                      (let ((_%hd5221452252%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5221352248%_)))
                                            (_%tl5221552255%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5221352248%_))))
                                        (if (gx#stx-null? _%tl5221552255%_)
                                            ((lambda (_%L52258%_ _%L52260%_)
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
                                                       (cons _%L52260%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5221452252%_
                                             _%hd5221152242%_)
                                            (_%g5220352221%_
                                             _%g5220452225%_))))
                                    (_%g5220352221%_ _%g5220452225%_))))
                            (_%g5220352221%_ _%g5220452225%_))))
                    (_%g5220352221%_ _%g5220452225%_)))))
        (_%g5220252276%_ _%$stx52199%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx52280%_)
      (let* ((_%g5228452302%_
              (lambda (_%g5228552298%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5228552298%_)))
             (_%g5228352357%_
              (lambda (_%g5228552306%_)
                (if (gx#stx-pair? _%g5228552306%_)
                    (let ((_%e5228852309%_ (gx#syntax-e _%g5228552306%_)))
                      (let ((_%hd5228952313%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5228852309%_)))
                            (_%tl5229052316%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5228852309%_))))
                        (if (gx#stx-pair? _%tl5229052316%_)
                            (let ((_%e5229152319%_
                                   (gx#syntax-e _%tl5229052316%_)))
                              (let ((_%hd5229252323%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5229152319%_)))
                                    (_%tl5229352326%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5229152319%_))))
                                (if (gx#stx-pair? _%tl5229352326%_)
                                    (let ((_%e5229452329%_
                                           (gx#syntax-e _%tl5229352326%_)))
                                      (let ((_%hd5229552333%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5229452329%_)))
                                            (_%tl5229652336%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5229452329%_))))
                                        (if (gx#stx-null? _%tl5229652336%_)
                                            ((lambda (_%L52339%_ _%L52341%_)
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
                                                 (cons _%L52341%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5229552333%_
                                             _%hd5229252323%_)
                                            (_%g5228452302%_
                                             _%g5228552306%_))))
                                    (_%g5228452302%_ _%g5228552306%_))))
                            (_%g5228452302%_ _%g5228552306%_))))
                    (_%g5228452302%_ _%g5228552306%_)))))
        (_%g5228352357%_ _%$stx52280%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx52361%_)
      (let* ((_%g5236552379%_
              (lambda (_%g5236652375%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5236652375%_)))
             (_%g5236452420%_
              (lambda (_%g5236652383%_)
                (if (gx#stx-pair? _%g5236652383%_)
                    (let ((_%e5236852386%_ (gx#syntax-e _%g5236652383%_)))
                      (let ((_%hd5236952390%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5236852386%_)))
                            (_%tl5237052393%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5236852386%_))))
                        (if (gx#stx-pair? _%tl5237052393%_)
                            (let ((_%e5237152396%_
                                   (gx#syntax-e _%tl5237052393%_)))
                              (let ((_%hd5237252400%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5237152396%_)))
                                    (_%tl5237352403%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5237152396%_))))
                                (if (gx#stx-null? _%tl5237352403%_)
                                    ((lambda (_%L52406%_)
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
                                         (cons _%L52406%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5237252400%_)
                                    (_%g5236552379%_ _%g5236652383%_))))
                            (_%g5236552379%_ _%g5236652383%_))))
                    (_%g5236552379%_ _%g5236652383%_)))))
        (_%g5236452420%_ _%$stx52361%_)))))
