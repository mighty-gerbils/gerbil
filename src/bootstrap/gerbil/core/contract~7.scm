(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx51927%_)
      (let* ((_%g5193151945%_
              (lambda (_%g5193251941%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5193251941%_)))
             (_%g5193051987%_
              (lambda (_%g5193251949%_)
                (if (gx#stx-pair? _%g5193251949%_)
                    (let ((_%e5193651952%_ (gx#syntax-e _%g5193251949%_)))
                      (let ((_%hd5193551956%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5193651952%_)))
                            (_%tl5193451959%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5193651952%_))))
                        (if (gx#stx-pair? _%tl5193451959%_)
                            (let ((_%e5193951962%_
                                   (gx#syntax-e _%tl5193451959%_)))
                              (let ((_%hd5193851966%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5193951962%_)))
                                    (_%tl5193751969%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5193951962%_))))
                                (if (gx#stx-null? _%tl5193751969%_)
                                    ((lambda (_%L51972%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L51972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5193851966%_)
                                    (_%g5193151945%_ _%g5193251949%_))))
                            (_%g5193151945%_ _%g5193251949%_))))
                    (_%g5193151945%_ _%g5193251949%_)))))
        (_%g5193051987%_ _%$stx51927%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx51991%_)
      (let* ((_%g5199552013%_
              (lambda (_%g5199652009%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5199652009%_)))
             (_%g5199452068%_
              (lambda (_%g5199652017%_)
                (if (gx#stx-pair? _%g5199652017%_)
                    (let ((_%e5200152020%_ (gx#syntax-e _%g5199652017%_)))
                      (let ((_%hd5200052024%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5200152020%_)))
                            (_%tl5199952027%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5200152020%_))))
                        (if (gx#stx-pair? _%tl5199952027%_)
                            (let ((_%e5200452030%_
                                   (gx#syntax-e _%tl5199952027%_)))
                              (let ((_%hd5200352034%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5200452030%_)))
                                    (_%tl5200252037%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5200452030%_))))
                                (if (gx#stx-pair? _%tl5200252037%_)
                                    (let ((_%e5200752040%_
                                           (gx#syntax-e _%tl5200252037%_)))
                                      (let ((_%hd5200652044%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5200752040%_)))
                                            (_%tl5200552047%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5200752040%_))))
                                        (if (gx#stx-null? _%tl5200552047%_)
                                            ((lambda (_%L52050%_ _%L52052%_)
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
                                                       (cons _%L52052%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5200652044%_
                                             _%hd5200352034%_)
                                            (_%g5199552013%_
                                             _%g5199652017%_))))
                                    (_%g5199552013%_ _%g5199652017%_))))
                            (_%g5199552013%_ _%g5199652017%_))))
                    (_%g5199552013%_ _%g5199652017%_)))))
        (_%g5199452068%_ _%$stx51991%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx52072%_)
      (let* ((_%g5207652094%_
              (lambda (_%g5207752090%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5207752090%_)))
             (_%g5207552149%_
              (lambda (_%g5207752098%_)
                (if (gx#stx-pair? _%g5207752098%_)
                    (let ((_%e5208252101%_ (gx#syntax-e _%g5207752098%_)))
                      (let ((_%hd5208152105%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5208252101%_)))
                            (_%tl5208052108%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5208252101%_))))
                        (if (gx#stx-pair? _%tl5208052108%_)
                            (let ((_%e5208552111%_
                                   (gx#syntax-e _%tl5208052108%_)))
                              (let ((_%hd5208452115%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5208552111%_)))
                                    (_%tl5208352118%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5208552111%_))))
                                (if (gx#stx-pair? _%tl5208352118%_)
                                    (let ((_%e5208852121%_
                                           (gx#syntax-e _%tl5208352118%_)))
                                      (let ((_%hd5208752125%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5208852121%_)))
                                            (_%tl5208652128%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5208852121%_))))
                                        (if (gx#stx-null? _%tl5208652128%_)
                                            ((lambda (_%L52131%_ _%L52133%_)
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
                                                 (cons _%L52133%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5208752125%_
                                             _%hd5208452115%_)
                                            (_%g5207652094%_
                                             _%g5207752098%_))))
                                    (_%g5207652094%_ _%g5207752098%_))))
                            (_%g5207652094%_ _%g5207752098%_))))
                    (_%g5207652094%_ _%g5207752098%_)))))
        (_%g5207552149%_ _%$stx52072%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx52153%_)
      (let* ((_%g5215752171%_
              (lambda (_%g5215852167%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5215852167%_)))
             (_%g5215652212%_
              (lambda (_%g5215852175%_)
                (if (gx#stx-pair? _%g5215852175%_)
                    (let ((_%e5216252178%_ (gx#syntax-e _%g5215852175%_)))
                      (let ((_%hd5216152182%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5216252178%_)))
                            (_%tl5216052185%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5216252178%_))))
                        (if (gx#stx-pair? _%tl5216052185%_)
                            (let ((_%e5216552188%_
                                   (gx#syntax-e _%tl5216052185%_)))
                              (let ((_%hd5216452192%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5216552188%_)))
                                    (_%tl5216352195%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5216552188%_))))
                                (if (gx#stx-null? _%tl5216352195%_)
                                    ((lambda (_%L52198%_)
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
                                         (cons _%L52198%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5216452192%_)
                                    (_%g5215752171%_ _%g5215852175%_))))
                            (_%g5215752171%_ _%g5215852175%_))))
                    (_%g5215752171%_ _%g5215852175%_)))))
        (_%g5215652212%_ _%$stx52153%_)))))
