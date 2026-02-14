(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx240263%_)
      (let* ((_%g240267240281%_
              (lambda (_%g240268240277%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g240268240277%_)))
             (_%g240266240323%_
              (lambda (_%g240268240285%_)
                (if (gx#stx-pair? _%g240268240285%_)
                    (let ((_%e240270240288%_ (gx#syntax-e _%g240268240285%_)))
                      (let ((_%hd240271240292%_
                             (let ()
                               (declare (not safe))
                               (##car _%e240270240288%_)))
                            (_%tl240272240295%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e240270240288%_))))
                        (if (gx#stx-pair? _%tl240272240295%_)
                            (let ((_%e240273240298%_
                                   (gx#syntax-e _%tl240272240295%_)))
                              (let ((_%hd240274240302%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e240273240298%_)))
                                    (_%tl240275240305%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e240273240298%_))))
                                (if (gx#stx-null? _%tl240275240305%_)
                                    ((lambda (_%g240269240308%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%g240269240308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd240274240302%_)
                                    (_%g240267240281%_ _%g240268240285%_))))
                            (_%g240267240281%_ _%g240268240285%_))))
                    (_%g240267240281%_ _%g240268240285%_)))))
        (_%g240266240323%_ _%$stx240263%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx240327%_)
      (let* ((_%g240331240349%_
              (lambda (_%g240332240345%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g240332240345%_)))
             (_%g240330240404%_
              (lambda (_%g240332240353%_)
                (if (gx#stx-pair? _%g240332240353%_)
                    (let ((_%e240335240356%_ (gx#syntax-e _%g240332240353%_)))
                      (let ((_%hd240336240360%_
                             (let ()
                               (declare (not safe))
                               (##car _%e240335240356%_)))
                            (_%tl240337240363%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e240335240356%_))))
                        (if (gx#stx-pair? _%tl240337240363%_)
                            (let ((_%e240338240366%_
                                   (gx#syntax-e _%tl240337240363%_)))
                              (let ((_%hd240339240370%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e240338240366%_)))
                                    (_%tl240340240373%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e240338240366%_))))
                                (if (gx#stx-pair? _%tl240340240373%_)
                                    (let ((_%e240341240376%_
                                           (gx#syntax-e _%tl240340240373%_)))
                                      (let ((_%hd240342240380%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e240341240376%_)))
                                            (_%tl240343240383%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e240341240376%_))))
                                        (if (gx#stx-null? _%tl240343240383%_)
                                            ((lambda (_%g240333240386%_
                                                      _%g240334240388%_)
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
                                                       (cons _%g240334240388%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g240333240386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd240342240380%_
                                             _%hd240339240370%_)
                                            (_%g240331240349%_
                                             _%g240332240353%_))))
                                    (_%g240331240349%_ _%g240332240353%_))))
                            (_%g240331240349%_ _%g240332240353%_))))
                    (_%g240331240349%_ _%g240332240353%_)))))
        (_%g240330240404%_ _%$stx240327%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx240408%_)
      (let* ((_%g240412240430%_
              (lambda (_%g240413240426%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g240413240426%_)))
             (_%g240411240485%_
              (lambda (_%g240413240434%_)
                (if (gx#stx-pair? _%g240413240434%_)
                    (let ((_%e240416240437%_ (gx#syntax-e _%g240413240434%_)))
                      (let ((_%hd240417240441%_
                             (let ()
                               (declare (not safe))
                               (##car _%e240416240437%_)))
                            (_%tl240418240444%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e240416240437%_))))
                        (if (gx#stx-pair? _%tl240418240444%_)
                            (let ((_%e240419240447%_
                                   (gx#syntax-e _%tl240418240444%_)))
                              (let ((_%hd240420240451%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e240419240447%_)))
                                    (_%tl240421240454%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e240419240447%_))))
                                (if (gx#stx-pair? _%tl240421240454%_)
                                    (let ((_%e240422240457%_
                                           (gx#syntax-e _%tl240421240454%_)))
                                      (let ((_%hd240423240461%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e240422240457%_)))
                                            (_%tl240424240464%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e240422240457%_))))
                                        (if (gx#stx-null? _%tl240424240464%_)
                                            ((lambda (_%g240414240467%_
                                                      _%g240415240469%_)
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
                                                 (cons _%g240415240469%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g240414240467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd240423240461%_
                                             _%hd240420240451%_)
                                            (_%g240412240430%_
                                             _%g240413240434%_))))
                                    (_%g240412240430%_ _%g240413240434%_))))
                            (_%g240412240430%_ _%g240413240434%_))))
                    (_%g240412240430%_ _%g240413240434%_)))))
        (_%g240411240485%_ _%$stx240408%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx240489%_)
      (let* ((_%g240493240507%_
              (lambda (_%g240494240503%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g240494240503%_)))
             (_%g240492240548%_
              (lambda (_%g240494240511%_)
                (if (gx#stx-pair? _%g240494240511%_)
                    (let ((_%e240496240514%_ (gx#syntax-e _%g240494240511%_)))
                      (let ((_%hd240497240518%_
                             (let ()
                               (declare (not safe))
                               (##car _%e240496240514%_)))
                            (_%tl240498240521%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e240496240514%_))))
                        (if (gx#stx-pair? _%tl240498240521%_)
                            (let ((_%e240499240524%_
                                   (gx#syntax-e _%tl240498240521%_)))
                              (let ((_%hd240500240528%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e240499240524%_)))
                                    (_%tl240501240531%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e240499240524%_))))
                                (if (gx#stx-null? _%tl240501240531%_)
                                    ((lambda (_%g240495240534%_)
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
                                         (cons _%g240495240534%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd240500240528%_)
                                    (_%g240493240507%_ _%g240494240511%_))))
                            (_%g240493240507%_ _%g240494240511%_))))
                    (_%g240493240507%_ _%g240494240511%_)))))
        (_%g240492240548%_ _%$stx240489%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx240552%_)
      (let* ((_%g240556240576%_
              (lambda (_%g240557240572%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g240557240572%_)))
             (_%g240555240645%_
              (lambda (_%g240557240580%_)
                (if (gx#stx-pair? _%g240557240580%_)
                    (let ((_%e240559240583%_ (gx#syntax-e _%g240557240580%_)))
                      (let ((_%hd240560240587%_
                             (let ()
                               (declare (not safe))
                               (##car _%e240559240583%_)))
                            (_%tl240561240590%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e240559240583%_))))
                        (if (gx#stx-pair/null? _%tl240561240590%_)
                            (let ((_g283078_
                                   (gx#syntax-split-splice
                                    _%tl240561240590%_
                                    '0)))
                              (begin
                                (let ((_g283079_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g283078_)
                                             (##values-length _g283078_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g283079_ 2)))
                                      (error "Context expects 2 values"
                                             _g283079_)))
                                (let ((_%target240562240593%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g283078_ 0)))
                                      (_%tl240564240596%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g283078_ 1))))
                                  (if (gx#stx-null? _%tl240564240596%_)
                                      (letrec ((_%loop240565240599%_
                                                (lambda (_%hd240563240603%_
                                                         _%val240569240606%_)
                                                  (if (gx#stx-pair?
                                                       _%hd240563240603%_)
                                                      (let ((_%e240566240608%_
                                                             (gx#syntax-e
                                                              _%hd240563240603%_)))
                                                        (let ((_%lp-hd240567240612%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e240566240608%_)))
                      (_%lp-tl240568240615%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e240566240608%_))))
                  (_%loop240565240599%_
                   _%lp-tl240568240615%_
                   (cons _%lp-hd240567240612%_ _%val240569240606%_))))
              (let ((_%val240570240618%_ (reverse _%val240569240606%_)))
                ((lambda (_%g240558240621%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%g240636240639%_
                                                           _%g240637240642%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%g240636240639%_ '()))
                                    '())))
                  _%g240637240642%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g240558240621%_))
                                     '()))))
                 _%val240570240618%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop240565240599%_
                                         _%target240562240593%_
                                         '()))
                                      (_%g240556240576%_ _%g240557240580%_)))))
                            (_%g240556240576%_ _%g240557240580%_))))
                    (_%g240556240576%_ _%g240557240580%_)))))
        (_%g240555240645%_ _%$stx240552%_)))))
