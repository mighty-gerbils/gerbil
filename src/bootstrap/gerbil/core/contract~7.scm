(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx56053%_)
      (let* ((_%g5605756071%_
              (lambda (_%g5605856067%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5605856067%_)))
             (_%g5605656113%_
              (lambda (_%g5605856075%_)
                (if (gx#stx-pair? _%g5605856075%_)
                    (let ((_%e5606056078%_ (gx#syntax-e _%g5605856075%_)))
                      (let ((_%hd5606156082%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5606056078%_)))
                            (_%tl5606256085%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5606056078%_))))
                        (if (gx#stx-pair? _%tl5606256085%_)
                            (let ((_%e5606356088%_
                                   (gx#syntax-e _%tl5606256085%_)))
                              (let ((_%hd5606456092%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5606356088%_)))
                                    (_%tl5606556095%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5606356088%_))))
                                (if (gx#stx-null? _%tl5606556095%_)
                                    ((lambda (_%L56098%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L56098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5606456092%_)
                                    (_%g5605756071%_ _%g5605856075%_))))
                            (_%g5605756071%_ _%g5605856075%_))))
                    (_%g5605756071%_ _%g5605856075%_)))))
        (_%g5605656113%_ _%$stx56053%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx56117%_)
      (let* ((_%g5612156139%_
              (lambda (_%g5612256135%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5612256135%_)))
             (_%g5612056194%_
              (lambda (_%g5612256143%_)
                (if (gx#stx-pair? _%g5612256143%_)
                    (let ((_%e5612556146%_ (gx#syntax-e _%g5612256143%_)))
                      (let ((_%hd5612656150%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5612556146%_)))
                            (_%tl5612756153%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5612556146%_))))
                        (if (gx#stx-pair? _%tl5612756153%_)
                            (let ((_%e5612856156%_
                                   (gx#syntax-e _%tl5612756153%_)))
                              (let ((_%hd5612956160%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5612856156%_)))
                                    (_%tl5613056163%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5612856156%_))))
                                (if (gx#stx-pair? _%tl5613056163%_)
                                    (let ((_%e5613156166%_
                                           (gx#syntax-e _%tl5613056163%_)))
                                      (let ((_%hd5613256170%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5613156166%_)))
                                            (_%tl5613356173%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5613156166%_))))
                                        (if (gx#stx-null? _%tl5613356173%_)
                                            ((lambda (_%L56176%_ _%L56178%_)
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
                                                       (cons _%L56178%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L56176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5613256170%_
                                             _%hd5612956160%_)
                                            (_%g5612156139%_
                                             _%g5612256143%_))))
                                    (_%g5612156139%_ _%g5612256143%_))))
                            (_%g5612156139%_ _%g5612256143%_))))
                    (_%g5612156139%_ _%g5612256143%_)))))
        (_%g5612056194%_ _%$stx56117%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx56198%_)
      (let* ((_%g5620256220%_
              (lambda (_%g5620356216%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5620356216%_)))
             (_%g5620156275%_
              (lambda (_%g5620356224%_)
                (if (gx#stx-pair? _%g5620356224%_)
                    (let ((_%e5620656227%_ (gx#syntax-e _%g5620356224%_)))
                      (let ((_%hd5620756231%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5620656227%_)))
                            (_%tl5620856234%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5620656227%_))))
                        (if (gx#stx-pair? _%tl5620856234%_)
                            (let ((_%e5620956237%_
                                   (gx#syntax-e _%tl5620856234%_)))
                              (let ((_%hd5621056241%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5620956237%_)))
                                    (_%tl5621156244%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5620956237%_))))
                                (if (gx#stx-pair? _%tl5621156244%_)
                                    (let ((_%e5621256247%_
                                           (gx#syntax-e _%tl5621156244%_)))
                                      (let ((_%hd5621356251%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5621256247%_)))
                                            (_%tl5621456254%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5621256247%_))))
                                        (if (gx#stx-null? _%tl5621456254%_)
                                            ((lambda (_%L56257%_ _%L56259%_)
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
                                                 (cons _%L56259%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L56257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5621356251%_
                                             _%hd5621056241%_)
                                            (_%g5620256220%_
                                             _%g5620356224%_))))
                                    (_%g5620256220%_ _%g5620356224%_))))
                            (_%g5620256220%_ _%g5620356224%_))))
                    (_%g5620256220%_ _%g5620356224%_)))))
        (_%g5620156275%_ _%$stx56198%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx56279%_)
      (let* ((_%g5628356297%_
              (lambda (_%g5628456293%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5628456293%_)))
             (_%g5628256338%_
              (lambda (_%g5628456301%_)
                (if (gx#stx-pair? _%g5628456301%_)
                    (let ((_%e5628656304%_ (gx#syntax-e _%g5628456301%_)))
                      (let ((_%hd5628756308%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5628656304%_)))
                            (_%tl5628856311%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5628656304%_))))
                        (if (gx#stx-pair? _%tl5628856311%_)
                            (let ((_%e5628956314%_
                                   (gx#syntax-e _%tl5628856311%_)))
                              (let ((_%hd5629056318%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5628956314%_)))
                                    (_%tl5629156321%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5628956314%_))))
                                (if (gx#stx-null? _%tl5629156321%_)
                                    ((lambda (_%L56324%_)
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
                                         (cons _%L56324%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5629056318%_)
                                    (_%g5628356297%_ _%g5628456301%_))))
                            (_%g5628356297%_ _%g5628456301%_))))
                    (_%g5628356297%_ _%g5628456301%_)))))
        (_%g5628256338%_ _%$stx56279%_)))))
