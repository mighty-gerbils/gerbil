(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx52122%_)
      (let* ((_%g5212652140%_
              (lambda (_%g5212752136%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5212752136%_)))
             (_%g5212552182%_
              (lambda (_%g5212752144%_)
                (if (gx#stx-pair? _%g5212752144%_)
                    (let ((_%e5212952147%_ (gx#syntax-e _%g5212752144%_)))
                      (let ((_%hd5213052151%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5212952147%_)))
                            (_%tl5213152154%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5212952147%_))))
                        (if (gx#stx-pair? _%tl5213152154%_)
                            (let ((_%e5213252157%_
                                   (gx#syntax-e _%tl5213152154%_)))
                              (let ((_%hd5213352161%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5213252157%_)))
                                    (_%tl5213452164%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5213252157%_))))
                                (if (gx#stx-null? _%tl5213452164%_)
                                    ((lambda (_%L52167%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L52167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5213352161%_)
                                    (_%g5212652140%_ _%g5212752144%_))))
                            (_%g5212652140%_ _%g5212752144%_))))
                    (_%g5212652140%_ _%g5212752144%_)))))
        (_%g5212552182%_ _%$stx52122%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx52186%_)
      (let* ((_%g5219052208%_
              (lambda (_%g5219152204%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5219152204%_)))
             (_%g5218952263%_
              (lambda (_%g5219152212%_)
                (if (gx#stx-pair? _%g5219152212%_)
                    (let ((_%e5219452215%_ (gx#syntax-e _%g5219152212%_)))
                      (let ((_%hd5219552219%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5219452215%_)))
                            (_%tl5219652222%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5219452215%_))))
                        (if (gx#stx-pair? _%tl5219652222%_)
                            (let ((_%e5219752225%_
                                   (gx#syntax-e _%tl5219652222%_)))
                              (let ((_%hd5219852229%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5219752225%_)))
                                    (_%tl5219952232%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5219752225%_))))
                                (if (gx#stx-pair? _%tl5219952232%_)
                                    (let ((_%e5220052235%_
                                           (gx#syntax-e _%tl5219952232%_)))
                                      (let ((_%hd5220152239%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5220052235%_)))
                                            (_%tl5220252242%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5220052235%_))))
                                        (if (gx#stx-null? _%tl5220252242%_)
                                            ((lambda (_%L52245%_ _%L52247%_)
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
                                                       (cons _%L52247%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5220152239%_
                                             _%hd5219852229%_)
                                            (_%g5219052208%_
                                             _%g5219152212%_))))
                                    (_%g5219052208%_ _%g5219152212%_))))
                            (_%g5219052208%_ _%g5219152212%_))))
                    (_%g5219052208%_ _%g5219152212%_)))))
        (_%g5218952263%_ _%$stx52186%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx52267%_)
      (let* ((_%g5227152289%_
              (lambda (_%g5227252285%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5227252285%_)))
             (_%g5227052344%_
              (lambda (_%g5227252293%_)
                (if (gx#stx-pair? _%g5227252293%_)
                    (let ((_%e5227552296%_ (gx#syntax-e _%g5227252293%_)))
                      (let ((_%hd5227652300%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5227552296%_)))
                            (_%tl5227752303%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5227552296%_))))
                        (if (gx#stx-pair? _%tl5227752303%_)
                            (let ((_%e5227852306%_
                                   (gx#syntax-e _%tl5227752303%_)))
                              (let ((_%hd5227952310%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5227852306%_)))
                                    (_%tl5228052313%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5227852306%_))))
                                (if (gx#stx-pair? _%tl5228052313%_)
                                    (let ((_%e5228152316%_
                                           (gx#syntax-e _%tl5228052313%_)))
                                      (let ((_%hd5228252320%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5228152316%_)))
                                            (_%tl5228352323%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5228152316%_))))
                                        (if (gx#stx-null? _%tl5228352323%_)
                                            ((lambda (_%L52326%_ _%L52328%_)
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
                                                 (cons _%L52328%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5228252320%_
                                             _%hd5227952310%_)
                                            (_%g5227152289%_
                                             _%g5227252293%_))))
                                    (_%g5227152289%_ _%g5227252293%_))))
                            (_%g5227152289%_ _%g5227252293%_))))
                    (_%g5227152289%_ _%g5227252293%_)))))
        (_%g5227052344%_ _%$stx52267%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx52348%_)
      (let* ((_%g5235252366%_
              (lambda (_%g5235352362%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5235352362%_)))
             (_%g5235152407%_
              (lambda (_%g5235352370%_)
                (if (gx#stx-pair? _%g5235352370%_)
                    (let ((_%e5235552373%_ (gx#syntax-e _%g5235352370%_)))
                      (let ((_%hd5235652377%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5235552373%_)))
                            (_%tl5235752380%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5235552373%_))))
                        (if (gx#stx-pair? _%tl5235752380%_)
                            (let ((_%e5235852383%_
                                   (gx#syntax-e _%tl5235752380%_)))
                              (let ((_%hd5235952387%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5235852383%_)))
                                    (_%tl5236052390%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5235852383%_))))
                                (if (gx#stx-null? _%tl5236052390%_)
                                    ((lambda (_%L52393%_)
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
                                         (cons _%L52393%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5235952387%_)
                                    (_%g5235252366%_ _%g5235352370%_))))
                            (_%g5235252366%_ _%g5235352370%_))))
                    (_%g5235252366%_ _%g5235352370%_)))))
        (_%g5235152407%_ _%$stx52348%_)))))
