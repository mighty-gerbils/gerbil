(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx58908%_)
      (let* ((_%$%g5891258926%_
              (lambda (_%$%g5891358922%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5891358922%_)))
             (_%$%g5891158968%_
              (lambda (_%$%g5891358930%_)
                (if (gx#stx-pair? _%$%g5891358930%_)
                    (let ((_%$%e5891558933%_ (gx#syntax-e _%$%g5891358930%_)))
                      (let ((_%$%hd5891658937%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5891558933%_)))
                            (_%$%tl5891758940%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5891558933%_))))
                        (if (gx#stx-pair? _%$%tl5891758940%_)
                            (let ((_%$%e5891858943%_
                                   (gx#syntax-e _%$%tl5891758940%_)))
                              (let ((_%$%hd5891958947%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5891858943%_)))
                                    (_%$%tl5892058950%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5891858943%_))))
                                (if (gx#stx-null? _%$%tl5892058950%_)
                                    (cons (gx#datum->syntax '#f '?)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'or)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'not)
                                                            (cons _%$%hd5891958947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_%$%g5891258926%_ _%$%g5891358930%_))))
                            (_%$%g5891258926%_ _%$%g5891358930%_))))
                    (_%$%g5891258926%_ _%$%g5891358930%_)))))
        (_%$%g5891158968%_ _%$stx58908%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx58972%_)
      (let* ((_%$%g5897658994%_
              (lambda (_%$%g5897758990%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5897758990%_)))
             (_%$%g5897559049%_
              (lambda (_%$%g5897758998%_)
                (if (gx#stx-pair? _%$%g5897758998%_)
                    (let ((_%$%e5898059001%_ (gx#syntax-e _%$%g5897758998%_)))
                      (let ((_%$%hd5898159005%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5898059001%_)))
                            (_%$%tl5898259008%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5898059001%_))))
                        (if (gx#stx-pair? _%$%tl5898259008%_)
                            (let ((_%$%e5898359011%_
                                   (gx#syntax-e _%$%tl5898259008%_)))
                              (let ((_%$%hd5898459015%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5898359011%_)))
                                    (_%$%tl5898559018%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5898359011%_))))
                                (if (gx#stx-pair? _%$%tl5898559018%_)
                                    (let ((_%$%e5898659021%_
                                           (gx#syntax-e _%$%tl5898559018%_)))
                                      (let ((_%$%hd5898759025%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5898659021%_)))
                                            (_%$%tl5898859028%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5898659021%_))))
                                        (if (gx#stx-null? _%$%tl5898859028%_)
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
                                                    (cons _%$%hd5898459015%_
                                                          '())))
                                        (cons (cons (gx#datum->syntax '#f 'fx<)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%$%hd5898759025%_
                                                                '())))
                                              '()))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g5897658994%_
                                             _%$%g5897758998%_))))
                                    (_%$%g5897658994%_ _%$%g5897758998%_))))
                            (_%$%g5897658994%_ _%$%g5897758998%_))))
                    (_%$%g5897658994%_ _%$%g5897758998%_)))))
        (_%$%g5897559049%_ _%$stx58972%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx59053%_)
      (let* ((_%$%g5905759075%_
              (lambda (_%$%g5905859071%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5905859071%_)))
             (_%$%g5905659130%_
              (lambda (_%$%g5905859079%_)
                (if (gx#stx-pair? _%$%g5905859079%_)
                    (let ((_%$%e5906159082%_ (gx#syntax-e _%$%g5905859079%_)))
                      (let ((_%$%hd5906259086%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5906159082%_)))
                            (_%$%tl5906359089%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5906159082%_))))
                        (if (gx#stx-pair? _%$%tl5906359089%_)
                            (let ((_%$%e5906459092%_
                                   (gx#syntax-e _%$%tl5906359089%_)))
                              (let ((_%$%hd5906559096%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5906459092%_)))
                                    (_%$%tl5906659099%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5906459092%_))))
                                (if (gx#stx-pair? _%$%tl5906659099%_)
                                    (let ((_%$%e5906759102%_
                                           (gx#syntax-e _%$%tl5906659099%_)))
                                      (let ((_%$%hd5906859106%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5906759102%_)))
                                            (_%$%tl5906959109%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5906759102%_))))
                                        (if (gx#stx-null? _%$%tl5906959109%_)
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
                                              (cons _%$%hd5906559096%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%$%hd5906859106%_
                                                                '()))))
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g5905759075%_
                                             _%$%g5905859079%_))))
                                    (_%$%g5905759075%_ _%$%g5905859079%_))))
                            (_%$%g5905759075%_ _%$%g5905859079%_))))
                    (_%$%g5905759075%_ _%$%g5905859079%_)))))
        (_%$%g5905659130%_ _%$stx59053%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx59134%_)
      (let* ((_%$%g5913859152%_
              (lambda (_%$%g5913959148%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5913959148%_)))
             (_%$%g5913759193%_
              (lambda (_%$%g5913959156%_)
                (if (gx#stx-pair? _%$%g5913959156%_)
                    (let ((_%$%e5914159159%_ (gx#syntax-e _%$%g5913959156%_)))
                      (let ((_%$%hd5914259163%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5914159159%_)))
                            (_%$%tl5914359166%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5914159159%_))))
                        (if (gx#stx-pair? _%$%tl5914359166%_)
                            (let ((_%$%e5914459169%_
                                   (gx#syntax-e _%$%tl5914359166%_)))
                              (let ((_%$%hd5914559173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5914459169%_)))
                                    (_%$%tl5914659176%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5914459169%_))))
                                (if (gx#stx-null? _%$%tl5914659176%_)
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
                                      (cons _%$%hd5914559173%_
                                            (cons (gx#datum->syntax '#f 'o)
                                                  '())))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%g5913859152%_ _%$%g5913959156%_))))
                            (_%$%g5913859152%_ _%$%g5913959156%_))))
                    (_%$%g5913859152%_ _%$%g5913959156%_)))))
        (_%$%g5913759193%_ _%$stx59134%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx59197%_)
      (let* ((_%$%g5920159221%_
              (lambda (_%$%g5920259217%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5920259217%_)))
             (_%$%g5920059290%_
              (lambda (_%$%g5920259225%_)
                (if (gx#stx-pair? _%$%g5920259225%_)
                    (let ((_%$%e5920459228%_ (gx#syntax-e _%$%g5920259225%_)))
                      (let ((_%$%hd5920559232%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5920459228%_)))
                            (_%$%tl5920659235%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5920459228%_))))
                        (if (gx#stx-pair/null? _%$%tl5920659235%_)
                            (let ((_g102618_
                                   (gx#syntax-split-splice
                                    _%$%tl5920659235%_
                                    '0)))
                              (begin
                                (let ((_g102619_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102618_)
                                             (##values-length _g102618_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102619_ 2)))
                                      (error "Context expects 2 values"
                                             _g102619_)))
                                (let ((_%$%target5920759238%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102618_ 0)))
                                      (_%$%tl5920959241%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102618_ 1))))
                                  (if (gx#stx-null? _%$%tl5920959241%_)
                                      (letrec ((_%$%loop5921059244%_
                                                (lambda (_%$%hd5920859248%_
                                                         _%$%val5921459251%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd5920859248%_)
                                                      (let ((_%$%e5921159253%_
                                                             (gx#syntax-e
                                                              _%$%hd5920859248%_)))
                                                        (let ((_%$%lp-hd5921259257%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e5921159253%_)))
                      (_%$%lp-tl5921359260%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e5921159253%_))))
                  (_%$%loop5921059244%_
                   _%$%lp-tl5921359260%_
                   (cons _%$%lp-hd5921259257%_ _%$%val5921459251%_))))
              (let ((_%$%val5921559263%_ (reverse _%$%val5921459251%_)))
                (cons (gx#datum->syntax '#f 'lambda)
                      (cons (cons (gx#datum->syntax '#f 'o) '())
                            (cons (cons (gx#datum->syntax '#f 'or)
                                        (foldr (lambda (_%$%g5928159284%_
                                                        _%$%g5928259287%_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'o)
                           (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                       (cons _%$%g5928159284%_ '()))
                                 '())))
               _%$%g5928259287%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%$%val5921559263%_))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%loop5921059244%_
                                         _%$%target5920759238%_
                                         '()))
                                      (_%$%g5920159221%_ _%$%g5920259225%_)))))
                            (_%$%g5920159221%_ _%$%g5920259225%_))))
                    (_%$%g5920159221%_ _%$%g5920259225%_)))))
        (_%$%g5920059290%_ _%$stx59197%_)))))
