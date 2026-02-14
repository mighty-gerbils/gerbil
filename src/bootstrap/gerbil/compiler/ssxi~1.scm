(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g266916_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266923_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266925_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266927_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266929_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266931_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266943_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266945_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266947_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266949_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g266951_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx260374%_)
        (let* ((_%g260378260396%_
                (lambda (_%g260379260392%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260379260392%_))))
               (_%g260377260451%_
                (lambda (_%g260379260400%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260379260400%_))
                      (let ((_%e260382260403%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260379260400%_))))
                        (let ((_%hd260383260407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260382260403%_)))
                              (_%tl260384260410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260382260403%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260384260410%_))
                              (let ((_%e260385260413%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260384260410%_))))
                                (let ((_%hd260386260417%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260385260413%_)))
                                      (_%tl260387260420%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260385260413%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260387260420%_))
                                      (let ((_%e260388260423%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260387260420%_))))
                                        (let ((_%hd260389260427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260388260423%_)))
                                              (_%tl260390260430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260388260423%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260390260430%_))
                                              ((lambda (_%g260380260433%_
                                                        _%g260381260435%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g260381260435%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g260381260435%_ '()))
                         (cons _%g260380260433%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g260378260396%_
                                                      _%g260379260400%_)))
                                               _%hd260389260427%_
                                               _%hd260386260417%_)
                                              (_%g260378260396%_
                                               _%g260379260400%_))))
                                      (_%g260378260396%_ _%g260379260400%_))))
                              (_%g260378260396%_ _%g260379260400%_))))
                      (_%g260378260396%_ _%g260379260400%_)))))
          (_%g260377260451%_ _%$stx260374%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx260455%_)
        (let* ((_%g260459260477%_
                (lambda (_%g260460260473%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260460260473%_))))
               (_%g260458260532%_
                (lambda (_%g260460260481%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260460260481%_))
                      (let ((_%e260463260484%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260460260481%_))))
                        (let ((_%hd260464260488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260463260484%_)))
                              (_%tl260465260491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260463260484%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260465260491%_))
                              (let ((_%e260466260494%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl260465260491%_))))
                                (let ((_%hd260467260498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260466260494%_)))
                                      (_%tl260468260501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260466260494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260468260501%_))
                                      (let ((_%e260469260504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl260468260501%_))))
                                        (let ((_%hd260470260508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260469260504%_)))
                                              (_%tl260471260511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260469260504%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260471260511%_))
                                              ((lambda (_%g260461260514%_
                                                        _%g260462260516%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g260462260516%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g260462260516%_ '()))
                         (cons _%g260461260514%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g260459260477%_
                                                      _%g260460260481%_)))
                                               _%hd260470260508%_
                                               _%hd260467260498%_)
                                              (_%g260459260477%_
                                               _%g260460260481%_))))
                                      (_%g260459260477%_ _%g260460260481%_))))
                              (_%g260459260477%_ _%g260460260481%_))))
                      (_%g260459260477%_ _%g260460260481%_)))))
          (_%g260458260532%_ _%$stx260455%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx260536%_)
        (let* ((_%g260540260569%_
                (lambda (_%g260541260565%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260541260565%_))))
               (_%g260539260665%_
                (lambda (_%g260541260573%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260541260573%_))
                      (let ((_%e260544260576%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260541260573%_))))
                        (let ((_%hd260545260580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260544260576%_)))
                              (_%tl260546260583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260544260576%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260546260583%_))
                              (let ((_g266894_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl260546260583%_
                                        '0))))
                                (begin
                                  (let ((_g266895_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266894_)
                                               (##values-length _g266894_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266895_ 2)))
                                        (error "Context expects 2 values"
                                               _g266895_)))
                                  (let ((_%target260547260586%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266894_ 0)))
                                        (_%tl260549260589%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266894_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260549260589%_))
                                        (letrec ((_%loop260550260592%_
                                                  (lambda (_%hd260548260596%_
                                                           _%type260554260599%_
                                                           _%symbol260555260600%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd260548260596%_))
                                                        (let ((_%e260551260602%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd260548260596%_))))
                  (let ((_%lp-hd260552260606%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260551260602%_)))
                        (_%lp-tl260553260609%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260551260602%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd260552260606%_))
                        (let ((_%e260558260612%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd260552260606%_))))
                          (let ((_%hd260559260616%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260558260612%_)))
                                (_%tl260560260619%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260558260612%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260560260619%_))
                                (let ((_%e260561260622%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260560260619%_))))
                                  (let ((_%hd260562260626%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260561260622%_)))
                                        (_%tl260563260629%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260561260622%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260563260629%_))
                                        (_%loop260550260592%_
                                         _%lp-tl260553260609%_
                                         (cons _%hd260562260626%_
                                               _%type260554260599%_)
                                         (cons _%hd260559260616%_
                                               _%symbol260555260600%_))
                                        (_%g260540260569%_
                                         _%g260541260573%_))))
                                (_%g260540260569%_ _%g260541260573%_))))
                        (_%g260540260569%_ _%g260541260573%_))))
                (let ((_%type260556260632%_ (reverse _%type260554260599%_))
                      (_%symbol260557260634%_
                       (reverse _%symbol260555260600%_)))
                  ((lambda (_%g260542260636%_ _%g260543260638%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g260542260636%_
                                _%g260543260638%_))
                             (let ((__tmp266896
                                    (lambda (_%g260653260657%_
                                             _%g260654260660%_
                                             _%g260655260662%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g260654260660%_
                                                        (cons _%g260653260657%_
                                                              '())))
                                            _%g260655260662%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp266896
                                '()
                                _%g260542260636%_
                                _%g260543260638%_)))))
                   _%type260556260632%_
                   _%symbol260557260634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop260550260592%_
                                           _%target260547260586%_
                                           '()
                                           '()))
                                        (_%g260540260569%_
                                         _%g260541260573%_)))))
                              (_%g260540260569%_ _%g260541260573%_))))
                      (_%g260540260569%_ _%g260541260573%_)))))
          (_%g260539260665%_ _%$stx260536%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx260670%_)
        (let* ((_%__stx266205266206%_ _%$stx260670%_)
               (_%g260675260717%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266205266206%_)))))
          (let ((_%__kont266208266209%_
                 (lambda (_%g260677260845%_
                          _%g260678260847%_
                          _%g260679260848%_
                          _%g260680260849%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g260680260849%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g260679260848%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g260678260847%_ '()))
                                           (cons _%g260677260845%_ '())))))))
                (_%__kont266210266211%_
                 (lambda (_%g260696260764%_
                          _%g260697260766%_
                          _%g260698260767%_
                          _%g260699260768%_)
                   (cons _%g260699260768%_
                         (cons _%g260698260767%_
                               (cons _%g260697260766%_
                                     (cons _%g260696260764%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match266244266245%_
                   (lambda (_%e260681260795%_
                            _%hd260682260799%_
                            _%tl260683260802%_
                            _%e260684260805%_
                            _%hd260685260809%_
                            _%tl260686260812%_
                            _%e260687260815%_
                            _%hd260688260819%_
                            _%tl260689260822%_
                            _%e260690260825%_
                            _%hd260691260829%_
                            _%tl260692260832%_
                            _%e260693260835%_
                            _%hd260694260839%_
                            _%tl260695260842%_)
                     (let ((_%g260677260845%_ _%hd260694260839%_)
                           (_%g260678260847%_ _%hd260691260829%_)
                           (_%g260679260848%_ _%hd260688260819%_)
                           (_%g260680260849%_ _%hd260685260809%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260680260849%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260679260848%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g260678260847%_)))
                           (_%__kont266208266209%_
                            _%g260677260845%_
                            _%g260678260847%_
                            _%g260679260848%_
                            _%g260680260849%_)
                           (let ()
                             (declare (not safe))
                             (_%g260675260717%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266205266206%_))
                  (let ((_%e260681260795%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266205266206%_))))
                    (let ((_%tl260683260802%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260681260795%_)))
                          (_%hd260682260799%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260681260795%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260683260802%_))
                          (let ((_%e260684260805%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl260683260802%_))))
                            (let ((_%tl260686260812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260684260805%_)))
                                  (_%hd260685260809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260684260805%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl260686260812%_))
                                  (let ((_%e260687260815%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl260686260812%_))))
                                    (let ((_%tl260689260822%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e260687260815%_)))
                                          (_%hd260688260819%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e260687260815%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl260689260822%_))
                                          (let ((_%e260690260825%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl260689260822%_))))
                                            (let ((_%tl260692260832%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e260690260825%_)))
                                                  (_%hd260691260829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e260690260825%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl260692260832%_))
                                                  (let ((_%e260693260835%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl260692260832%_))))
                                                    (let ((_%tl260695260842%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e260693260835%_)))
                                                          (_%hd260694260839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e260693260835%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl260695260842%_))
                                                          (_%__match266244266245%_
                                                           _%e260681260795%_
                                                           _%hd260682260799%_
                                                           _%tl260683260802%_
                                                           _%e260684260805%_
                                                           _%hd260685260809%_
                                                           _%tl260686260812%_
                                                           _%e260687260815%_
                                                           _%hd260688260819%_
                                                           _%tl260689260822%_
                                                           _%e260690260825%_
                                                           _%hd260691260829%_
                                                           _%tl260692260832%_
                                                           _%e260693260835%_
                                                           _%hd260694260839%_
                                                           _%tl260695260842%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g260675260717%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260692260832%_))
                                                      (_%__kont266210266211%_
                                                       _%hd260691260829%_
                                                       _%hd260688260819%_
                                                       _%hd260685260809%_
                                                       _%hd260682260799%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g260675260717%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g260675260717%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g260675260717%_)))))
                          (let () (declare (not safe)) (_%g260675260717%_)))))
                  (let () (declare (not safe)) (_%g260675260717%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx260874%_)
        (let* ((_%g260878260913%_
                (lambda (_%g260879260909%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260879260909%_))))
               (_%g260877261026%_
                (lambda (_%g260879260917%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260879260917%_))
                      (let ((_%e260883260920%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g260879260917%_))))
                        (let ((_%hd260884260924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260883260920%_)))
                              (_%tl260885260927%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260883260920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl260885260927%_))
                              (let ((_g266897_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl260885260927%_
                                        '0))))
                                (begin
                                  (let ((_g266898_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266897_)
                                               (##values-length _g266897_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266898_ 2)))
                                        (error "Context expects 2 values"
                                               _g266898_)))
                                  (let ((_%target260886260930%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266897_ 0)))
                                        (_%tl260888260933%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266897_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl260888260933%_))
                                        (letrec ((_%loop260889260936%_
                                                  (lambda (_%hd260887260940%_
                                                           _%symbol260893260943%_
                                                           _%method260894260944%_
                                                           _%type-t260895260945%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd260887260940%_))
                                                        (let ((_%e260890260947%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd260887260940%_))))
                  (let ((_%lp-hd260891260951%_
                         (let ()
                           (declare (not safe))
                           (##car _%e260890260947%_)))
                        (_%lp-tl260892260954%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e260890260947%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd260891260951%_))
                        (let ((_%e260899260957%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd260891260951%_))))
                          (let ((_%hd260900260961%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e260899260957%_)))
                                (_%tl260901260964%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e260899260957%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl260901260964%_))
                                (let ((_%e260902260967%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl260901260964%_))))
                                  (let ((_%hd260903260971%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e260902260967%_)))
                                        (_%tl260904260974%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e260902260967%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl260904260974%_))
                                        (let ((_%e260905260977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl260904260974%_))))
                                          (let ((_%hd260906260981%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e260905260977%_)))
                                                (_%tl260907260984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e260905260977%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260907260984%_))
                                                (_%loop260889260936%_
                                                 _%lp-tl260892260954%_
                                                 (cons _%hd260906260981%_
                                                       _%symbol260893260943%_)
                                                 (cons _%hd260903260971%_
                                                       _%method260894260944%_)
                                                 (cons _%hd260900260961%_
                                                       _%type-t260895260945%_))
                                                (_%g260878260913%_
                                                 _%g260879260917%_))))
                                        (_%g260878260913%_
                                         _%g260879260917%_))))
                                (_%g260878260913%_ _%g260879260917%_))))
                        (_%g260878260913%_ _%g260879260917%_))))
                (let ((_%symbol260896260987%_ (reverse _%symbol260893260943%_))
                      (_%method260897260989%_ (reverse _%method260894260944%_))
                      (_%type-t260898260990%_
                       (reverse _%type-t260895260945%_)))
                  ((lambda (_%g260880260992%_
                            _%g260881260994%_
                            _%g260882260995%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g260880260992%_
                                _%g260881260994%_
                                _%g260882260995%_))
                             (let ((__tmp266899
                                    (lambda (_%g261011261016%_
                                             _%g261012261019%_
                                             _%g261013261021%_
                                             _%g261014261023%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g261013261021%_
                                                        (cons _%g261012261019%_
                                                              (cons _%g261011261016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g261014261023%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp266899
                                '()
                                _%g260880260992%_
                                _%g260881260994%_
                                _%g260882260995%_)))))
                   _%symbol260896260987%_
                   _%method260897260989%_
                   _%type-t260898260990%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop260889260936%_
                                           _%target260886260930%_
                                           '()
                                           '()
                                           '()))
                                        (_%g260878260913%_
                                         _%g260879260917%_)))))
                              (_%g260878260913%_ _%g260879260917%_))))
                      (_%g260878260913%_ _%g260879260917%_)))))
          (_%g260877261026%_ _%$stx260874%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx261031%_)
        (let* ((_%g261035261068%_
                (lambda (_%g261036261064%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261036261064%_))))
               (_%g261034261178%_
                (lambda (_%g261036261072%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261036261072%_))
                      (let ((_%e261040261075%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261036261072%_))))
                        (let ((_%hd261041261079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261040261075%_)))
                              (_%tl261042261082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261040261075%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261042261082%_))
                              (let ((_%e261043261085%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261042261082%_))))
                                (let ((_%hd261044261089%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261043261085%_)))
                                      (_%tl261045261092%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261043261085%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl261045261092%_))
                                      (let ((_g266900_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl261045261092%_
                                                '0))))
                                        (begin
                                          (let ((_g266901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g266900_)
                                                       (##values-length
                                                        _g266900_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g266901_ 2)))
                                                (error "Context expects 2 values"
                                                       _g266901_)))
                                          (let ((_%target261046261095%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g266900_ 0)))
                                                (_%tl261048261098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g266900_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261048261098%_))
                                                (letrec ((_%loop261049261101%_
                                                          (lambda (_%hd261047261105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol261053261108%_
                           _%method261054261109%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd261047261105%_))
                        (let ((_%e261050261111%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd261047261105%_))))
                          (let ((_%lp-hd261051261115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261050261111%_)))
                                (_%lp-tl261052261118%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261050261111%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd261051261115%_))
                                (let ((_%e261057261121%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd261051261115%_))))
                                  (let ((_%hd261058261125%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261057261121%_)))
                                        (_%tl261059261128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261057261121%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl261059261128%_))
                                        (let ((_%e261060261131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl261059261128%_))))
                                          (let ((_%hd261061261135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e261060261131%_)))
                                                (_%tl261062261138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e261060261131%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl261062261138%_))
                                                (_%loop261049261101%_
                                                 _%lp-tl261052261118%_
                                                 (cons _%hd261061261135%_
                                                       _%symbol261053261108%_)
                                                 (cons _%hd261058261125%_
                                                       _%method261054261109%_))
                                                (_%g261035261068%_
                                                 _%g261036261072%_))))
                                        (_%g261035261068%_
                                         _%g261036261072%_))))
                                (_%g261035261068%_ _%g261036261072%_))))
                        (let ((_%symbol261055261141%_
                               (reverse _%symbol261053261108%_))
                              (_%method261056261143%_
                               (reverse _%method261054261109%_)))
                          ((lambda (_%g261037261145%_
                                    _%g261038261147%_
                                    _%g261039261148%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g261037261145%_
                                        _%g261038261147%_))
                                     (let ((__tmp266902
                                            (lambda (_%g261166261170%_
                                                     _%g261167261173%_
                                                     _%g261168261175%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g261039261148%_
                                                                (cons _%g261167261173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g261166261170%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g261168261175%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp266902
                                        '()
                                        _%g261037261145%_
                                        _%g261038261147%_)))))
                           _%symbol261055261141%_
                           _%method261056261143%_
                           _%hd261044261089%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop261049261101%_
                                                   _%target261046261095%_
                                                   '()
                                                   '()))
                                                (_%g261035261068%_
                                                 _%g261036261072%_)))))
                                      (_%g261035261068%_ _%g261036261072%_))))
                              (_%g261035261068%_ _%g261036261072%_))))
                      (_%g261035261068%_ _%g261036261072%_)))))
          (_%g261034261178%_ _%$stx261031%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx261183%_)
        (let* ((_%g261187261201%_
                (lambda (_%g261188261197%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261188261197%_))))
               (_%g261186261242%_
                (lambda (_%g261188261205%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261188261205%_))
                      (let ((_%e261190261208%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261188261205%_))))
                        (let ((_%hd261191261212%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261190261208%_)))
                              (_%tl261192261215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261190261208%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261192261215%_))
                              (let ((_%e261193261218%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261192261215%_))))
                                (let ((_%hd261194261222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261193261218%_)))
                                      (_%tl261195261225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261193261218%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261195261225%_))
                                      ((lambda (_%g261189261228%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g261189261228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261194261222%_)
                                      (_%g261187261201%_ _%g261188261205%_))))
                              (_%g261187261201%_ _%g261188261205%_))))
                      (_%g261187261201%_ _%g261188261205%_)))))
          (_%g261186261242%_ _%$stx261183%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx261246%_)
        (let* ((_%g261250261304%_
                (lambda (_%g261251261300%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261251261300%_))))
               (_%g261249261485%_
                (lambda (_%g261251261308%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261251261308%_))
                      (let ((_%e261263261311%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261251261308%_))))
                        (let ((_%hd261264261315%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261263261311%_)))
                              (_%tl261265261318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261263261311%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261265261318%_))
                              (let ((_%e261266261321%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261265261318%_))))
                                (let ((_%hd261267261325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261266261321%_)))
                                      (_%tl261268261328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261266261321%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261268261328%_))
                                      (let ((_%e261269261331%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261268261328%_))))
                                        (let ((_%hd261270261335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261269261331%_)))
                                              (_%tl261271261338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261269261331%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261271261338%_))
                                              (let ((_%e261272261341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261271261338%_))))
                                                (let ((_%hd261273261345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261272261341%_)))
                                                      (_%tl261274261348%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261272261341%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl261274261348%_))
                                                      (let ((_%e261275261351%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl261274261348%_))))
                (let ((_%hd261276261355%_
                       (let () (declare (not safe)) (##car _%e261275261351%_)))
                      (_%tl261277261358%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e261275261351%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261277261358%_))
                      (let ((_%e261278261361%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261277261358%_))))
                        (let ((_%hd261279261365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261278261361%_)))
                              (_%tl261280261368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261278261361%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261280261368%_))
                              (let ((_%e261281261371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261280261368%_))))
                                (let ((_%hd261282261375%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261281261371%_)))
                                      (_%tl261283261378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261281261371%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261283261378%_))
                                      (let ((_%e261284261381%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261283261378%_))))
                                        (let ((_%hd261285261385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261284261381%_)))
                                              (_%tl261286261388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261284261381%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261286261388%_))
                                              (let ((_%e261287261391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261286261388%_))))
                                                (let ((_%hd261288261395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261287261391%_)))
                                                      (_%tl261289261398%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261287261391%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl261289261398%_))
                                                      (let ((_%e261290261401%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl261289261398%_))))
                (let ((_%hd261291261405%_
                       (let () (declare (not safe)) (##car _%e261290261401%_)))
                      (_%tl261292261408%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e261290261401%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261292261408%_))
                      (let ((_%e261293261411%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261292261408%_))))
                        (let ((_%hd261294261415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261293261411%_)))
                              (_%tl261295261418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261293261411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261295261418%_))
                              (let ((_%e261296261421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261295261418%_))))
                                (let ((_%hd261297261425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261296261421%_)))
                                      (_%tl261298261428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261296261421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261298261428%_))
                                      ((lambda (_%g261252261431%_
                                                _%g261253261433%_
                                                _%g261254261434%_
                                                _%g261255261435%_
                                                _%g261256261436%_
                                                _%g261257261437%_
                                                _%g261258261438%_
                                                _%g261259261439%_
                                                _%g261260261440%_
                                                _%g261261261441%_
                                                _%g261262261442%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g261262261442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g261261261441%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g261260261440%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261259261439%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261258261438%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g261257261437%_ '()))
                                           (cons _%g261256261436%_
                                                 (cons _%g261255261435%_
                                                       (cons _%g261254261434%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261253261433%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g261252261431%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd261297261425%_
                                       _%hd261294261415%_
                                       _%hd261291261405%_
                                       _%hd261288261395%_
                                       _%hd261285261385%_
                                       _%hd261282261375%_
                                       _%hd261279261365%_
                                       _%hd261276261355%_
                                       _%hd261273261345%_
                                       _%hd261270261335%_
                                       _%hd261267261325%_)
                                      (_%g261250261304%_ _%g261251261308%_))))
                              (_%g261250261304%_ _%g261251261308%_))))
                      (_%g261250261304%_ _%g261251261308%_))))
              (_%g261250261304%_ _%g261251261308%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261250261304%_
                                               _%g261251261308%_))))
                                      (_%g261250261304%_ _%g261251261308%_))))
                              (_%g261250261304%_ _%g261251261308%_))))
                      (_%g261250261304%_ _%g261251261308%_))))
              (_%g261250261304%_ _%g261251261308%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261250261304%_
                                               _%g261251261308%_))))
                                      (_%g261250261304%_ _%g261251261308%_))))
                              (_%g261250261304%_ _%g261251261308%_))))
                      (_%g261250261304%_ _%g261251261308%_)))))
          (_%g261249261485%_ _%$stx261246%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx261489%_)
        (let* ((_%g261493261507%_
                (lambda (_%g261494261503%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261494261503%_))))
               (_%g261492261548%_
                (lambda (_%g261494261511%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261494261511%_))
                      (let ((_%e261496261514%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261494261511%_))))
                        (let ((_%hd261497261518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261496261514%_)))
                              (_%tl261498261521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261496261514%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261498261521%_))
                              (let ((_%e261499261524%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261498261521%_))))
                                (let ((_%hd261500261528%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261499261524%_)))
                                      (_%tl261501261531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261499261524%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261501261531%_))
                                      ((lambda (_%g261495261534%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g261495261534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261500261528%_)
                                      (_%g261493261507%_ _%g261494261511%_))))
                              (_%g261493261507%_ _%g261494261511%_))))
                      (_%g261493261507%_ _%g261494261511%_)))))
          (_%g261492261548%_ _%$stx261489%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx261552%_)
        (let* ((_%g261556261570%_
                (lambda (_%g261557261566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261557261566%_))))
               (_%g261555261611%_
                (lambda (_%g261557261574%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261557261574%_))
                      (let ((_%e261559261577%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261557261574%_))))
                        (let ((_%hd261560261581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261559261577%_)))
                              (_%tl261561261584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261559261577%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261561261584%_))
                              (let ((_%e261562261587%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261561261584%_))))
                                (let ((_%hd261563261591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261562261587%_)))
                                      (_%tl261564261594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261562261587%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261564261594%_))
                                      ((lambda (_%g261558261597%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g261558261597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261563261591%_)
                                      (_%g261556261570%_ _%g261557261574%_))))
                              (_%g261556261570%_ _%g261557261574%_))))
                      (_%g261556261570%_ _%g261557261574%_)))))
          (_%g261555261611%_ _%$stx261552%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx261615%_)
        (let* ((_%g261619261641%_
                (lambda (_%g261620261637%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261620261637%_))))
               (_%g261618261710%_
                (lambda (_%g261620261645%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261620261645%_))
                      (let ((_%e261624261648%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261620261645%_))))
                        (let ((_%hd261625261652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261624261648%_)))
                              (_%tl261626261655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261624261648%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261626261655%_))
                              (let ((_%e261627261658%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261626261655%_))))
                                (let ((_%hd261628261662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261627261658%_)))
                                      (_%tl261629261665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261627261658%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261629261665%_))
                                      (let ((_%e261630261668%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261629261665%_))))
                                        (let ((_%hd261631261672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261630261668%_)))
                                              (_%tl261632261675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261630261668%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261632261675%_))
                                              (let ((_%e261633261678%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261632261675%_))))
                                                (let ((_%hd261634261682%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261633261678%_)))
                                                      (_%tl261635261685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261633261678%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261635261685%_))
                                                      ((lambda (_%g261621261688%_
                                                                _%g261622261690%_
                                                                _%g261623261691%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261623261691%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g261622261690%_ '()))
                                   (cons _%g261621261688%_ '())))))
               _%hd261634261682%_
               _%hd261631261672%_
               _%hd261628261662%_)
              (_%g261619261641%_ _%g261620261645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261619261641%_
                                               _%g261620261645%_))))
                                      (_%g261619261641%_ _%g261620261645%_))))
                              (_%g261619261641%_ _%g261620261645%_))))
                      (_%g261619261641%_ _%g261620261645%_)))))
          (_%g261618261710%_ _%$stx261615%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx261714%_)
        (let* ((_%g261718261740%_
                (lambda (_%g261719261736%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261719261736%_))))
               (_%g261717261809%_
                (lambda (_%g261719261744%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261719261744%_))
                      (let ((_%e261723261747%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261719261744%_))))
                        (let ((_%hd261724261751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261723261747%_)))
                              (_%tl261725261754%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261723261747%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261725261754%_))
                              (let ((_%e261726261757%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261725261754%_))))
                                (let ((_%hd261727261761%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261726261757%_)))
                                      (_%tl261728261764%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261726261757%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261728261764%_))
                                      (let ((_%e261729261767%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261728261764%_))))
                                        (let ((_%hd261730261771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261729261767%_)))
                                              (_%tl261731261774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261729261767%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl261731261774%_))
                                              (let ((_%e261732261777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl261731261774%_))))
                                                (let ((_%hd261733261781%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e261732261777%_)))
                                                      (_%tl261734261784%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e261732261777%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl261734261784%_))
                                                      ((lambda (_%g261720261787%_
                                                                _%g261721261789%_
                                                                _%g261722261790%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g261722261790%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g261721261789%_ '()))
                                   (cons _%g261720261787%_ '())))))
               _%hd261733261781%_
               _%hd261730261771%_
               _%hd261727261761%_)
              (_%g261718261740%_ _%g261719261744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g261718261740%_
                                               _%g261719261744%_))))
                                      (_%g261718261740%_ _%g261719261744%_))))
                              (_%g261718261740%_ _%g261719261744%_))))
                      (_%g261718261740%_ _%g261719261744%_)))))
          (_%g261717261809%_ _%$stx261714%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx261813%_)
        (let* ((_%g261817261831%_
                (lambda (_%g261818261827%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261818261827%_))))
               (_%g261816261872%_
                (lambda (_%g261818261835%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261818261835%_))
                      (let ((_%e261820261838%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261818261835%_))))
                        (let ((_%hd261821261842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261820261838%_)))
                              (_%tl261822261845%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261820261838%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261822261845%_))
                              (let ((_%e261823261848%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261822261845%_))))
                                (let ((_%hd261824261852%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261823261848%_)))
                                      (_%tl261825261855%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261823261848%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl261825261855%_))
                                      ((lambda (_%g261819261858%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g261819261858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd261824261852%_)
                                      (_%g261817261831%_ _%g261818261835%_))))
                              (_%g261817261831%_ _%g261818261835%_))))
                      (_%g261817261831%_ _%g261818261835%_)))))
          (_%g261816261872%_ _%$stx261813%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx261876%_)
        (let* ((_%g261880261898%_
                (lambda (_%g261881261894%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g261881261894%_))))
               (_%g261879261953%_
                (lambda (_%g261881261902%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g261881261902%_))
                      (let ((_%e261884261905%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g261881261902%_))))
                        (let ((_%hd261885261909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261884261905%_)))
                              (_%tl261886261912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261884261905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl261886261912%_))
                              (let ((_%e261887261915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl261886261912%_))))
                                (let ((_%hd261888261919%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e261887261915%_)))
                                      (_%tl261889261922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e261887261915%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl261889261922%_))
                                      (let ((_%e261890261925%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl261889261922%_))))
                                        (let ((_%hd261891261929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e261890261925%_)))
                                              (_%tl261892261932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e261890261925%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl261892261932%_))
                                              ((lambda (_%g261882261935%_
                                                        _%g261883261937%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g261883261937%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261882261935%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd261891261929%_
                                               _%hd261888261919%_)
                                              (_%g261880261898%_
                                               _%g261881261902%_))))
                                      (_%g261880261898%_ _%g261881261902%_))))
                              (_%g261880261898%_ _%g261881261902%_))))
                      (_%g261880261898%_ _%g261881261902%_)))))
          (_%g261879261953%_ _%$stx261876%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx261957%_)
        (let* ((_%__stx266273266274%_ _%$stx261957%_)
               (_%g261964262025%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266273266274%_)))))
          (let ((_%__kont266276266277%_
                 (lambda (_%g261966262263%_ _%g261967262265%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261967262265%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261966262263%_ '()))
                                     '())))))
                (_%__kont266278266279%_
                 (lambda (_%g261977262202%_
                          _%g261978262204%_
                          _%g261979262205%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g261979262205%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g261978262204%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g261977262202%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont266280266281%_
                 (lambda (_%g261996262126%_ _%g261997262128%_)
                   (cons _%g261997262128%_
                         (cons _%g261996262126%_ (cons '#f '())))))
                (_%__kont266282266283%_
                 (lambda (_%g262004262076%_
                          _%g262005262078%_
                          _%g262006262079%_)
                   (cons _%g262006262079%_
                         (cons _%g262005262078%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g262004262076%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266273266274%_))
                (let ((_%e261968262233%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266273266274%_))))
                  (let ((_%tl261970262240%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e261968262233%_)))
                        (_%hd261969262237%_
                         (let ()
                           (declare (not safe))
                           (##car _%e261968262233%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl261970262240%_))
                        (let ((_%e261971262243%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl261970262240%_))))
                          (let ((_%tl261973262250%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e261971262243%_)))
                                (_%hd261972262247%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e261971262243%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl261973262250%_))
                                (let ((_%e261974262253%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl261973262250%_))))
                                  (let ((_%tl261976262260%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e261974262253%_)))
                                        (_%hd261975262257%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e261974262253%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl261976262260%_))
                                        (_%__kont266276266277%_
                                         _%hd261975262257%_
                                         _%hd261972262247%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl261976262260%_))
                                            (let ((_%e261989262178%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl261976262260%_))))
                                              (let ((_%tl261991262185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e261989262178%_)))
                                                    (_%hd261990262182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e261989262178%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd261990262182%_))
                                                    (let ((_%e261992262188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd261990262182%_))))
                                                      (if (equal? _%e261992262188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl261991262185%_))
                      (let ((_%e261993262192%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl261991262185%_))))
                        (let ((_%tl261995262199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e261993262192%_)))
                              (_%hd261994262196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e261993262192%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl261995262199%_))
                              (_%__kont266278266279%_
                               _%hd261994262196%_
                               _%hd261975262257%_
                               _%hd261972262247%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd261975262257%_))
                                  (let ((_%e262016262062%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd261975262257%_))))
                                    (declare (not safe))
                                    (_%g261964262025%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g261964262025%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd261975262257%_))
                          (let ((_%e262016262062%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd261975262257%_))))
                            (if (equal? _%e262016262062%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl261991262185%_))
                                    (_%__kont266282266283%_
                                     _%hd261990262182%_
                                     _%hd261972262247%_
                                     _%hd261969262237%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g261964262025%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g261964262025%_))))
                          (let () (declare (not safe)) (_%g261964262025%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd261975262257%_))
                      (let ((_%e262016262062%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd261975262257%_))))
                        (if (equal? _%e262016262062%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl261991262185%_))
                                (_%__kont266282266283%_
                                 _%hd261990262182%_
                                 _%hd261972262247%_
                                 _%hd261969262237%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g261964262025%_)))
                            (let () (declare (not safe)) (_%g261964262025%_))))
                      (let () (declare (not safe)) (_%g261964262025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd261975262257%_))
                                                        (let ((_%e262016262062%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd261975262257%_))))
                  (if (equal? _%e262016262062%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl261991262185%_))
                          (_%__kont266282266283%_
                           _%hd261990262182%_
                           _%hd261972262247%_
                           _%hd261969262237%_)
                          (let () (declare (not safe)) (_%g261964262025%_)))
                      (let () (declare (not safe)) (_%g261964262025%_))))
                (let () (declare (not safe)) (_%g261964262025%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd261975262257%_))
                                                (let ((_%e262016262062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd261975262257%_))))
                                                  (declare (not safe))
                                                  (_%g261964262025%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g261964262025%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl261973262250%_))
                                    (_%__kont266280266281%_
                                     _%hd261972262247%_
                                     _%hd261969262237%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g261964262025%_))))))
                        (let () (declare (not safe)) (_%g261964262025%_)))))
                (let () (declare (not safe)) (_%g261964262025%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx262284%_)
        (let* ((_%g262288262317%_
                (lambda (_%g262289262313%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262289262313%_))))
               (_%g262287262422%_
                (lambda (_%g262289262321%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262289262321%_))
                      (let ((_%e262291262324%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262289262321%_))))
                        (let ((_%hd262292262328%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262291262324%_)))
                              (_%tl262293262331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262291262324%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262293262331%_))
                              (let ((_g266903_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262293262331%_
                                        '0))))
                                (begin
                                  (let ((_g266904_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266903_)
                                               (##values-length _g266903_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266904_ 2)))
                                        (error "Context expects 2 values"
                                               _g266904_)))
                                  (let ((_%target262294262334%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266903_ 0)))
                                        (_%tl262296262337%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266903_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262296262337%_))
                                        (letrec ((_%loop262297262340%_
                                                  (lambda (_%hd262295262344%_
                                                           _%clause262301262347%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262295262344%_))
                                                        (let ((_%e262298262349%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262295262344%_))))
                  (let ((_%lp-hd262299262353%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262298262349%_)))
                        (_%lp-tl262300262356%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262298262349%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd262299262353%_))
                        (let ((_g266905_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd262299262353%_
                                  '0))))
                          (begin
                            (let ((_g266906_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g266905_)
                                         (##values-length _g266905_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g266906_ 2)))
                                  (error "Context expects 2 values"
                                         _g266906_)))
                            (let ((_%target262303262359%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g266905_ 0)))
                                  (_%tl262305262362%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g266905_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl262305262362%_))
                                  (letrec ((_%loop262306262365%_
                                            (lambda (_%hd262304262369%_
                                                     _%clause262310262372%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd262304262369%_))
                                                  (let ((_%e262307262374%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd262304262369%_))))
                                                    (let ((_%lp-hd262308262378%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e262307262374%_)))
                                                          (_%lp-tl262309262381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e262307262374%_))))
                                                      (_%loop262306262365%_
                                                       _%lp-tl262309262381%_
                                                       (cons _%lp-hd262308262378%_
                                                             _%clause262310262372%_))))
                                                  (let ((_%clause262311262384%_
                                                         (reverse _%clause262310262372%_)))
                                                    (_%loop262297262340%_
                                                     _%lp-tl262300262356%_
                                                     (cons _%clause262311262384%_
                                                           _%clause262301262347%_)))))))
                                    (_%loop262306262365%_
                                     _%target262303262359%_
                                     '()))
                                  (_%g262288262317%_ _%g262289262321%_)))))
                        (_%g262288262317%_ _%g262289262321%_))))
                (let ((_%clause262302262387%_
                       (reverse _%clause262301262347%_)))
                  ((lambda (_%g262290262390%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp266907
                                              (lambda (_%g262405262410%_
                                                       _%g262406262413%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp266908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g262407262416%_ _%g262408262419%_)
                             (cons _%g262407262416%_ _%g262408262419%_))))
                      (declare (not safe))
                      (foldr__0 __tmp266908 '() _%g262405262410%_)))
              _%g262406262413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp266907
                                          '()
                                          _%g262290262390%_)))
                                 '())))
                   _%clause262302262387%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262297262340%_
                                           _%target262294262334%_
                                           '()))
                                        (_%g262288262317%_
                                         _%g262289262321%_)))))
                              (_%g262288262317%_ _%g262289262321%_))))
                      (_%g262288262317%_ _%g262289262321%_)))))
          (_%g262287262422%_ _%$stx262284%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx262428%_)
        (let* ((_%g262432262450%_
                (lambda (_%g262433262446%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262433262446%_))))
               (_%g262431262505%_
                (lambda (_%g262433262454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262433262454%_))
                      (let ((_%e262436262457%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262433262454%_))))
                        (let ((_%hd262437262461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262436262457%_)))
                              (_%tl262438262464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262436262457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262438262464%_))
                              (let ((_%e262439262467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262438262464%_))))
                                (let ((_%hd262440262471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262439262467%_)))
                                      (_%tl262441262474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262439262467%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262441262474%_))
                                      (let ((_%e262442262477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262441262474%_))))
                                        (let ((_%hd262443262481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262442262477%_)))
                                              (_%tl262444262484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262442262477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262444262484%_))
                                              ((lambda (_%g262434262487%_
                                                        _%g262435262489%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262435262489%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262434262487%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262443262481%_
                                               _%hd262440262471%_)
                                              (_%g262432262450%_
                                               _%g262433262454%_))))
                                      (_%g262432262450%_ _%g262433262454%_))))
                              (_%g262432262450%_ _%g262433262454%_))))
                      (_%g262432262450%_ _%g262433262454%_)))))
          (_%g262431262505%_ _%$stx262428%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx262509%_)
        (let* ((_%g262513262531%_
                (lambda (_%g262514262527%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262514262527%_))))
               (_%g262512262586%_
                (lambda (_%g262514262535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262514262535%_))
                      (let ((_%e262517262538%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262514262535%_))))
                        (let ((_%hd262518262542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262517262538%_)))
                              (_%tl262519262545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262517262538%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262519262545%_))
                              (let ((_%e262520262548%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262519262545%_))))
                                (let ((_%hd262521262552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262520262548%_)))
                                      (_%tl262522262555%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262520262548%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262522262555%_))
                                      (let ((_%e262523262558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262522262555%_))))
                                        (let ((_%hd262524262562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262523262558%_)))
                                              (_%tl262525262565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262523262558%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262525262565%_))
                                              ((lambda (_%g262515262568%_
                                                        _%g262516262570%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g262516262570%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g262515262568%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262524262562%_
                                               _%hd262521262552%_)
                                              (_%g262513262531%_
                                               _%g262514262535%_))))
                                      (_%g262513262531%_ _%g262514262535%_))))
                              (_%g262513262531%_ _%g262514262535%_))))
                      (_%g262513262531%_ _%g262514262535%_)))))
          (_%g262512262586%_ _%$stx262509%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx262590%_)
        (let* ((_%g262594262623%_
                (lambda (_%g262595262619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262595262619%_))))
               (_%g262593262719%_
                (lambda (_%g262595262627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262595262627%_))
                      (let ((_%e262598262630%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262595262627%_))))
                        (let ((_%hd262599262634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262598262630%_)))
                              (_%tl262600262637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262598262630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl262600262637%_))
                              (let ((_g266909_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl262600262637%_
                                        '0))))
                                (begin
                                  (let ((_g266910_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266909_)
                                               (##values-length _g266909_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266910_ 2)))
                                        (error "Context expects 2 values"
                                               _g266910_)))
                                  (let ((_%target262601262640%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266909_ 0)))
                                        (_%tl262603262643%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266909_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262603262643%_))
                                        (letrec ((_%loop262604262646%_
                                                  (lambda (_%hd262602262650%_
                                                           _%rule262608262653%_
                                                           _%proc262609262654%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd262602262650%_))
                                                        (let ((_%e262605262656%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd262602262650%_))))
                  (let ((_%lp-hd262606262660%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262605262656%_)))
                        (_%lp-tl262607262663%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262605262656%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd262606262660%_))
                        (let ((_%e262612262666%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd262606262660%_))))
                          (let ((_%hd262613262670%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e262612262666%_)))
                                (_%tl262614262673%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e262612262666%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl262614262673%_))
                                (let ((_%e262615262676%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl262614262673%_))))
                                  (let ((_%hd262616262680%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e262615262676%_)))
                                        (_%tl262617262683%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e262615262676%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl262617262683%_))
                                        (_%loop262604262646%_
                                         _%lp-tl262607262663%_
                                         (cons _%hd262616262680%_
                                               _%rule262608262653%_)
                                         (cons _%hd262613262670%_
                                               _%proc262609262654%_))
                                        (_%g262594262623%_
                                         _%g262595262627%_))))
                                (_%g262594262623%_ _%g262595262627%_))))
                        (_%g262594262623%_ _%g262595262627%_))))
                (let ((_%rule262610262686%_ (reverse _%rule262608262653%_))
                      (_%proc262611262688%_ (reverse _%proc262609262654%_)))
                  ((lambda (_%g262596262690%_ _%g262597262692%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g262596262690%_
                                _%g262597262692%_))
                             (let ((__tmp266911
                                    (lambda (_%g262707262711%_
                                             _%g262708262714%_
                                             _%g262709262716%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g262708262714%_
                                                        (cons _%g262707262711%_
                                                              '())))
                                            _%g262709262716%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp266911
                                '()
                                _%g262596262690%_
                                _%g262597262692%_)))))
                   _%rule262610262686%_
                   _%proc262611262688%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop262604262646%_
                                           _%target262601262640%_
                                           '()
                                           '()))
                                        (_%g262594262623%_
                                         _%g262595262627%_)))))
                              (_%g262594262623%_ _%g262595262627%_))))
                      (_%g262594262623%_ _%g262595262627%_)))))
          (_%g262593262719%_ _%$stx262590%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx262724%_)
        (let* ((_%g262728262746%_
                (lambda (_%g262729262742%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262729262742%_))))
               (_%g262727262801%_
                (lambda (_%g262729262750%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262729262750%_))
                      (let ((_%e262732262753%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262729262750%_))))
                        (let ((_%hd262733262757%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262732262753%_)))
                              (_%tl262734262760%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262732262753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262734262760%_))
                              (let ((_%e262735262763%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262734262760%_))))
                                (let ((_%hd262736262767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262735262763%_)))
                                      (_%tl262737262770%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262735262763%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262737262770%_))
                                      (let ((_%e262738262773%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262737262770%_))))
                                        (let ((_%hd262739262777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262738262773%_)))
                                              (_%tl262740262780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262738262773%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262740262780%_))
                                              ((lambda (_%g262730262783%_
                                                        _%g262731262785%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g262731262785%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%g262730262783%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g262731262785%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd262739262777%_
                                               _%hd262736262767%_)
                                              (_%g262728262746%_
                                               _%g262729262750%_))))
                                      (_%g262728262746%_ _%g262729262750%_))))
                              (_%g262728262746%_ _%g262729262750%_))))
                      (_%g262728262746%_ _%g262729262750%_)))))
          (_%g262727262801%_ _%$stx262724%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx262805%_)
        (let* ((_%__stx266391266392%_ _%$stx262805%_)
               (_%g262810262835%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266391266392%_)))))
          (let ((_%__kont266394266395%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont266396266397%_
                 (lambda (_%g262815262882%_
                          _%g262816262884%_
                          _%g262817262885%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g262817262885%_
                                           (cons _%g262816262884%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g262815262882%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266391266392%_))
                (let ((_%e262812262911%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266391266392%_))))
                  (let ((_%tl262814262918%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e262812262911%_)))
                        (_%hd262813262915%_
                         (let ()
                           (declare (not safe))
                           (##car _%e262812262911%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl262814262918%_))
                        (_%__kont266394266395%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl262814262918%_))
                            (let ((_%e262821262852%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl262814262918%_))))
                              (let ((_%tl262823262859%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e262821262852%_)))
                                    (_%hd262822262856%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e262821262852%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd262822262856%_))
                                    (let ((_%e262824262862%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd262822262856%_))))
                                      (let ((_%tl262826262869%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e262824262862%_)))
                                            (_%hd262825262866%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e262824262862%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl262826262869%_))
                                            (let ((_%e262827262872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl262826262869%_))))
                                              (let ((_%tl262829262879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e262827262872%_)))
                                                    (_%hd262828262876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e262827262872%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl262829262879%_))
                                                    (_%__kont266396266397%_
                                                     _%tl262823262859%_
                                                     _%hd262828262876%_
                                                     _%hd262825262866%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g262810262835%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g262810262835%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g262810262835%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g262810262835%_))))))
                (let () (declare (not safe)) (_%g262810262835%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx262929%_)
        (let* ((_%__stx266435266436%_ _%$stx262929%_)
               (_%g262934262965%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266435266436%_)))))
          (let ((_%__kont266438266439%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont266440266441%_
                 (lambda (_%g262939263030%_
                          _%g262940263032%_
                          _%g262941263033%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g262941263033%_
                                           (let ((__tmp266912
                                                  (lambda (_%g263053263056%_
                                                           _%g263054263059%_)
                                                    (cons _%g263053263056%_
                                                          _%g263054263059%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp266912
                                              '()
                                              _%g262940263032%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g262939263030%_)
                                     '()))))))
            (let ((_%__match266478266479%_
                   (lambda (_%e262942262972%_
                            _%hd262943262976%_
                            _%tl262944262979%_
                            _%e262945262982%_
                            _%hd262946262986%_
                            _%tl262947262989%_
                            _%e262948262992%_
                            _%hd262949262996%_
                            _%tl262950262999%_
                            _%__splice266442266443%_
                            _%target262951263002%_
                            _%tl262953263005%_)
                     (letrec ((_%loop262954263008%_
                               (lambda (_%hd262952263012%_ _%sig262958263015%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd262952263012%_))
                                     (let ((_%e262955263017%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd262952263012%_))))
                                       (let ((_%lp-tl262957263024%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e262955263017%_)))
                                             (_%lp-hd262956263021%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e262955263017%_))))
                                         (_%loop262954263008%_
                                          _%lp-tl262957263024%_
                                          (cons _%lp-hd262956263021%_
                                                _%sig262958263015%_))))
                                     (let ((_%sig262959263027%_
                                            (reverse _%sig262958263015%_)))
                                       (_%__kont266440266441%_
                                        _%tl262947262989%_
                                        _%sig262959263027%_
                                        _%hd262949262996%_))))))
                       (_%loop262954263008%_ _%target262951263002%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266435266436%_))
                  (let ((_%e262936263069%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266435266436%_))))
                    (let ((_%tl262938263076%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e262936263069%_)))
                          (_%hd262937263073%_
                           (let ()
                             (declare (not safe))
                             (##car _%e262936263069%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl262938263076%_))
                          (_%__kont266438266439%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262938263076%_))
                              (let ((_%e262945262982%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262938263076%_))))
                                (let ((_%tl262947262989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262945262982%_)))
                                      (_%hd262946262986%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262945262982%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd262946262986%_))
                                      (let ((_%e262948262992%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd262946262986%_))))
                                        (let ((_%tl262950262999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262948262992%_)))
                                              (_%hd262949262996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262948262992%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl262950262999%_))
                                              (let ((_%__splice266442266443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl262950262999%_
                                                        '0))))
                                                (let ((_%tl262953263005%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266442266443%_
                                                          '1)))
                                                      (_%target262951263002%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266442266443%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl262953263005%_))
                                                      (_%__match266478266479%_
                                                       _%e262936263069%_
                                                       _%hd262937263073%_
                                                       _%tl262938263076%_
                                                       _%e262945262982%_
                                                       _%hd262946262986%_
                                                       _%tl262947262989%_
                                                       _%e262948262992%_
                                                       _%hd262949262996%_
                                                       _%tl262950262999%_
                                                       _%__splice266442266443%_
                                                       _%target262951263002%_
                                                       _%tl262953263005%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g262934262965%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g262934262965%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g262934262965%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g262934262965%_))))))
                  (let () (declare (not safe)) (_%g262934262965%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx263088%_)
        (let* ((_%__stx266481266482%_ _%$stx263088%_)
               (_%g263093263140%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266481266482%_)))))
          (let ((_%__kont266484266485%_
                 (lambda (_%g263095263298%_ _%g263096263300%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g263096263300%_
                               (let ((__tmp266913
                                      (lambda (_%g263320263323%_
                                               _%g263321263326%_)
                                        (cons _%g263320263323%_
                                              _%g263321263326%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp266913
                                  '()
                                  _%g263095263298%_))))))
                (_%__kont266488266489%_
                 (lambda (_%g263118263195%_ _%g263119263197%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g263119263197%_
                               (let ((__tmp266914
                                      (lambda (_%g263214263217%_
                                               _%g263215263220%_)
                                        (cons _%g263214263217%_
                                              _%g263215263220%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp266914
                                  '()
                                  _%g263118263195%_)))))))
            (let* ((_%__match266548266549%_
                    (lambda (_%e263120263147%_
                             _%hd263121263151%_
                             _%tl263122263154%_
                             _%e263123263157%_
                             _%hd263124263161%_
                             _%tl263125263164%_
                             _%__splice266490266491%_
                             _%target263126263167%_
                             _%tl263128263170%_)
                      (letrec ((_%loop263129263173%_
                                (lambda (_%hd263127263177%_
                                         _%sig263133263180%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263127263177%_))
                                      (let ((_%e263130263182%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263127263177%_))))
                                        (let ((_%lp-tl263132263189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263130263182%_)))
                                              (_%lp-hd263131263186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263130263182%_))))
                                          (_%loop263129263173%_
                                           _%lp-tl263132263189%_
                                           (cons _%lp-hd263131263186%_
                                                 _%sig263133263180%_))))
                                      (let ((_%sig263134263192%_
                                             (reverse _%sig263133263180%_)))
                                        (_%__kont266488266489%_
                                         _%sig263134263192%_
                                         _%hd263124263161%_))))))
                        (_%loop263129263173%_ _%target263126263167%_ '()))))
                   (_%__match266540266541%_
                    (lambda (_%e263120263147%_
                             _%hd263121263151%_
                             _%tl263122263154%_
                             _%e263123263157%_
                             _%hd263124263161%_
                             _%tl263125263164%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl263125263164%_))
                          (let ((_%__splice266490266491%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl263125263164%_
                                    '0))))
                            (let ((_%tl263128263170%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice266490266491%_
                                      '1)))
                                  (_%target263126263167%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice266490266491%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263128263170%_))
                                  (_%__match266548266549%_
                                   _%e263120263147%_
                                   _%hd263121263151%_
                                   _%tl263122263154%_
                                   _%e263123263157%_
                                   _%hd263124263161%_
                                   _%tl263125263164%_
                                   _%__splice266490266491%_
                                   _%target263126263167%_
                                   _%tl263128263170%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g263093263140%_)))))
                          (let () (declare (not safe)) (_%g263093263140%_)))))
                   (_%__match266528266529%_
                    (lambda (_%e263097263230%_
                             _%hd263098263234%_
                             _%tl263099263237%_
                             _%e263100263240%_
                             _%hd263101263244%_
                             _%tl263102263247%_
                             _%e263103263250%_
                             _%hd263104263254%_
                             _%tl263105263257%_
                             _%e263106263260%_
                             _%hd263107263264%_
                             _%tl263108263267%_
                             _%__splice266486266487%_
                             _%target263109263270%_
                             _%tl263111263273%_)
                      (letrec ((_%loop263112263276%_
                                (lambda (_%hd263110263280%_
                                         _%sig263116263283%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd263110263280%_))
                                      (let ((_%e263113263285%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd263110263280%_))))
                                        (let ((_%lp-tl263115263292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263113263285%_)))
                                              (_%lp-hd263114263289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263113263285%_))))
                                          (_%loop263112263276%_
                                           _%lp-tl263115263292%_
                                           (cons _%lp-hd263114263289%_
                                                 _%sig263116263283%_))))
                                      (let ((_%sig263117263295%_
                                             (reverse _%sig263116263283%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl263105263257%_))
                                            (_%__kont266484266485%_
                                             _%sig263117263295%_
                                             _%hd263101263244%_)
                                            (_%__match266540266541%_
                                             _%e263097263230%_
                                             _%hd263098263234%_
                                             _%tl263099263237%_
                                             _%e263100263240%_
                                             _%hd263101263244%_
                                             _%tl263102263247%_)))))))
                        (_%loop263112263276%_ _%target263109263270%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266481266482%_))
                  (let ((_%e263097263230%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266481266482%_))))
                    (let ((_%tl263099263237%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263097263230%_)))
                          (_%hd263098263234%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263097263230%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263099263237%_))
                          (let ((_%e263100263240%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263099263237%_))))
                            (let ((_%tl263102263247%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263100263240%_)))
                                  (_%hd263101263244%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263100263240%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl263102263247%_))
                                  (let ((_%e263103263250%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl263102263247%_))))
                                    (let ((_%tl263105263257%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e263103263250%_)))
                                          (_%hd263104263254%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e263103263250%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd263104263254%_))
                                          (let ((_%e263106263260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd263104263254%_))))
                                            (let ((_%tl263108263267%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e263106263260%_)))
                                                  (_%hd263107263264%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e263106263260%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd263107263264%_))
                                                  (if (let ((__tmp266915
                                                             |gxc[1]#_g266916_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp266915
                                                         _%hd263107263264%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl263108263267%_))
                                                          (let ((_%__splice266486266487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl263108263267%_
                            '0))))
                    (let ((_%tl263111263273%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266486266487%_ '1)))
                          (_%target263109263270%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266486266487%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263111263273%_))
                          (_%__match266528266529%_
                           _%e263097263230%_
                           _%hd263098263234%_
                           _%tl263099263237%_
                           _%e263100263240%_
                           _%hd263101263244%_
                           _%tl263102263247%_
                           _%e263103263250%_
                           _%hd263104263254%_
                           _%tl263105263257%_
                           _%e263106263260%_
                           _%hd263107263264%_
                           _%tl263108263267%_
                           _%__splice266486266487%_
                           _%target263109263270%_
                           _%tl263111263273%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263102263247%_))
                              (let ((_%__splice266490266491%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl263102263247%_
                                        '0))))
                                (let ((_%tl263128263170%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice266490266491%_
                                          '1)))
                                      (_%target263126263167%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice266490266491%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl263128263170%_))
                                      (_%__match266548266549%_
                                       _%e263097263230%_
                                       _%hd263098263234%_
                                       _%tl263099263237%_
                                       _%e263100263240%_
                                       _%hd263101263244%_
                                       _%tl263102263247%_
                                       _%__splice266490266491%_
                                       _%target263126263167%_
                                       _%tl263128263170%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g263093263140%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g263093263140%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl263102263247%_))
                      (let ((_%__splice266490266491%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl263102263247%_
                                '0))))
                        (let ((_%tl263128263170%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice266490266491%_ '1)))
                              (_%target263126263167%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice266490266491%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl263128263170%_))
                              (_%__match266548266549%_
                               _%e263097263230%_
                               _%hd263098263234%_
                               _%tl263099263237%_
                               _%e263100263240%_
                               _%hd263101263244%_
                               _%tl263102263247%_
                               _%__splice266490266491%_
                               _%target263126263167%_
                               _%tl263128263170%_)
                              (let ()
                                (declare (not safe))
                                (_%g263093263140%_)))))
                      (let () (declare (not safe)) (_%g263093263140%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl263102263247%_))
                  (let ((_%__splice266490266491%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl263102263247%_
                            '0))))
                    (let ((_%tl263128263170%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266490266491%_ '1)))
                          (_%target263126263167%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice266490266491%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl263128263170%_))
                          (_%__match266548266549%_
                           _%e263097263230%_
                           _%hd263098263234%_
                           _%tl263099263237%_
                           _%e263100263240%_
                           _%hd263101263244%_
                           _%tl263102263247%_
                           _%__splice266490266491%_
                           _%target263126263167%_
                           _%tl263128263170%_)
                          (let () (declare (not safe)) (_%g263093263140%_)))))
                  (let () (declare (not safe)) (_%g263093263140%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl263102263247%_))
                                                      (let ((_%__splice266490266491%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl263102263247%_
                        '0))))
                (let ((_%tl263128263170%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice266490266491%_ '1)))
                      (_%target263126263167%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice266490266491%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl263128263170%_))
                      (_%__match266548266549%_
                       _%e263097263230%_
                       _%hd263098263234%_
                       _%tl263099263237%_
                       _%e263100263240%_
                       _%hd263101263244%_
                       _%tl263102263247%_
                       _%__splice266490266491%_
                       _%target263126263167%_
                       _%tl263128263170%_)
                      (let () (declare (not safe)) (_%g263093263140%_)))))
              (let () (declare (not safe)) (_%g263093263140%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl263102263247%_))
                                              (let ((_%__splice266490266491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl263102263247%_
                                                        '0))))
                                                (let ((_%tl263128263170%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266490266491%_
                                                          '1)))
                                                      (_%target263126263167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice266490266491%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263128263170%_))
                                                      (_%__match266548266549%_
                                                       _%e263097263230%_
                                                       _%hd263098263234%_
                                                       _%tl263099263237%_
                                                       _%e263100263240%_
                                                       _%hd263101263244%_
                                                       _%tl263102263247%_
                                                       _%__splice266490266491%_
                                                       _%target263126263167%_
                                                       _%tl263128263170%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g263093263140%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g263093263140%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl263102263247%_))
                                      (let ((_%__splice266490266491%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl263102263247%_
                                                '0))))
                                        (let ((_%tl263128263170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice266490266491%_
                                                  '1)))
                                              (_%target263126263167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice266490266491%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263128263170%_))
                                              (_%__match266548266549%_
                                               _%e263097263230%_
                                               _%hd263098263234%_
                                               _%tl263099263237%_
                                               _%e263100263240%_
                                               _%hd263101263244%_
                                               _%tl263102263247%_
                                               _%__splice266490266491%_
                                               _%target263126263167%_
                                               _%tl263128263170%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g263093263140%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263093263140%_))))))
                          (let () (declare (not safe)) (_%g263093263140%_)))))
                  (let () (declare (not safe)) (_%g263093263140%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx264483%_ _%id264485%_)
        (let ((_%proc264489%_
               (let ((__tmp266917
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id264485%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp266917))))
          (if (procedure? _%proc264489%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx264483%_
                 _%id264485%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx264474%_ _%id264476%_)
        (let ((_%klass264480%_
               (let ((__tmp266918
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id264476%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp266918))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass264480%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx264474%_
                 _%id264476%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx263724%_ _%proc263726%_ _%sig263727%_)
        (letrec ((_%signature-arity263729%_
                  (lambda (_%args264406%_)
                    (let _%loop264409%_ ((_%rest264412%_ _%args264406%_)
                                         (_%count264414%_ '0))
                      (let* ((_%rest264415264426%_ _%rest264412%_)
                             (_%E264419264432%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest264415264426%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K264422264463%_
                               (lambda (_%rest264460%_)
                                 (_%loop264409%_
                                  _%rest264460%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count264414%_ '1)))))
                              (_%K264421264452%_ (lambda () _%count264414%_))
                              (_%K264420264440%_
                               (lambda () (cons _%count264414%_ '()))))
                          (let ((_%try-match264417264456%_
                                 (lambda ()
                                   (if (null? _%rest264415264426%_)
                                       (_%K264421264452%_)
                                       (_%K264420264440%_)))))
                            (if (pair? _%rest264415264426%_)
                                (let* ((_%tl264424264467%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest264415264426%_)))
                                       (_%rest264471%_ _%tl264424264467%_))
                                  (_%K264422264463%_ _%rest264471%_))
                                (_%try-match264417264456%_))))))))
                 (_%make-signature263731%_
                  (lambda (_%args264288%_
                           _%return264290%_
                           _%effect264291%_
                           _%unchecked264292%_)
                    (let ((__tmp266919
                           (lambda (_%g264293264295%_)
                             (|gxc[1]#verify-class!|
                              _%ctx263724%_
                              _%g264293264295%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp266919 _%args264288%_))
                    (|gxc[1]#verify-class!| _%ctx263724%_ _%return264290%_)
                    (if _%unchecked264292%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx263724%_
                         _%unchecked264292%_)
                        '#!void)
                    (let ((_%arity264299%_
                           (_%signature-arity263729%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args264288%_)))))
                      (if _%effect264291%_
                          (let ((_%effect264302%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect264291%_))))
                            (if (and (list? _%effect264302%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect264302%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx263724%_
                                   _%proc263726%_
                                   _%effect264302%_))))
                          '#!void)
                      (cons _%arity264299%_
                            (cons (let* ((_%g264305264328%_
                                          (lambda (_%g264306264324%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g264306264324%_))))
                                         (_%g264304264402%_
                                          (lambda (_%g264306264332%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g264306264332%_))
                                                (let ((_%e264311264335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g264306264332%_))))
                                                  (let ((_%hd264312264339%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e264311264335%_)))
                                                        (_%tl264313264342%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e264311264335%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl264313264342%_))
                                                        (let ((_%e264314264345%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl264313264342%_))))
                  (let ((_%hd264315264349%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264314264345%_)))
                        (_%tl264316264352%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264314264345%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl264316264352%_))
                        (let ((_%e264317264355%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264316264352%_))))
                          (let ((_%hd264318264359%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264317264355%_)))
                                (_%tl264319264362%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264317264355%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl264319264362%_))
                                (let ((_%e264320264365%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl264319264362%_))))
                                  (let ((_%hd264321264369%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264320264365%_)))
                                        (_%tl264322264372%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264320264365%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl264322264372%_))
                                        ((lambda (_%g264307264375%_
                                                  _%g264308264377%_
                                                  _%g264309264378%_
                                                  _%g264310264379%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g264310264379%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g264309264378%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g264308264377%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g264307264375%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd264321264369%_
                                         _%hd264318264359%_
                                         _%hd264315264349%_
                                         _%hd264312264339%_)
                                        (_%g264305264328%_
                                         _%g264306264332%_))))
                                (_%g264305264328%_ _%g264306264332%_))))
                        (_%g264305264328%_ _%g264306264332%_))))
                (_%g264305264328%_ _%g264306264332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g264305264328%_
                                                 _%g264306264332%_)))))
                                    (_%g264304264402%_
                                     (list _%args264288%_
                                           _%return264290%_
                                           _%effect264291%_
                                           _%unchecked264292%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx263724%_ _%proc263726%_)
          (let* ((_%__stx266559266560%_ _%sig263727%_)
                 (_%g263738263841%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx266559266560%_)))))
            (let ((_%__kont266562266563%_
                   (lambda (_%g263740264269%_ _%g263741264271%_)
                     (_%make-signature263731%_
                      _%g263741264271%_
                      _%g263740264269%_
                      '#f
                      '#f)))
                  (_%__kont266564266565%_
                   (lambda (_%g263748264220%_
                            _%g263749264222%_
                            _%g263750264223%_)
                     (_%make-signature263731%_
                      _%g263750264223%_
                      _%g263749264222%_
                      _%g263748264220%_
                      '#f)))
                  (_%__kont266566266567%_
                   (lambda (_%g263764264144%_
                            _%g263765264146%_
                            _%g263766264147%_)
                     (_%make-signature263731%_
                      _%g263766264147%_
                      _%g263765264146%_
                      _%g263764264144%_
                      (let ((__tmp266920
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc263726%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp266920)))))
                  (_%__kont266568266569%_
                   (lambda (_%g263784264050%_
                            _%g263785264052%_
                            _%g263786264053%_
                            _%g263787264054%_)
                     (_%make-signature263731%_
                      _%g263787264054%_
                      _%g263786264053%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g263784264050%_)))))
                  (_%__kont266570266571%_
                   (lambda (_%g263808263957%_ _%g263809263959%_)
                     (_%make-signature263731%_
                      _%g263809263959%_
                      _%g263808263957%_
                      '#f
                      (let ((__tmp266921
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc263726%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp266921)))))
                  (_%__kont266572266573%_
                   (lambda (_%g263820263892%_
                            _%g263821263894%_
                            _%g263822263895%_)
                     (_%make-signature263731%_
                      _%g263822263895%_
                      _%g263821263894%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g263820263892%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266559266560%_))
                  (let ((_%e263742264249%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx266559266560%_))))
                    (let ((_%tl263744264256%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263742264249%_)))
                          (_%hd263743264253%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263742264249%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263744264256%_))
                          (let ((_%e263745264259%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263744264256%_))))
                            (let ((_%tl263747264266%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263745264259%_)))
                                  (_%hd263746264263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263745264259%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl263747264266%_))
                                  (_%__kont266562266563%_
                                   _%hd263746264263%_
                                   _%hd263743264253%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263747264266%_))
                                      (let ((_%e263757264196%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263747264266%_))))
                                        (let ((_%tl263759264203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263757264196%_)))
                                              (_%hd263758264200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263757264196%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd263758264200%_))
                                              (let ((_%e263760264206%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd263758264200%_))))
                                                (if (equal? _%e263760264206%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl263759264203%_))
                                                        (let ((_%e263761264210%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl263759264203%_))))
                  (let ((_%tl263763264217%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263761264210%_)))
                        (_%hd263762264214%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263761264210%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl263763264217%_))
                        (_%__kont266564266565%_
                         _%hd263762264214%_
                         _%hd263746264263%_
                         _%hd263743264253%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl263763264217%_))
                            (let ((_%e263780264130%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl263763264217%_))))
                              (let ((_%tl263782264137%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e263780264130%_)))
                                    (_%hd263781264134%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e263780264130%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd263781264134%_))
                                    (let ((_%e263783264140%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd263781264134%_))))
                                      (if (equal? _%e263783264140%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263782264137%_))
                                              (_%__kont266566266567%_
                                               _%hd263762264214%_
                                               _%hd263746264263%_
                                               _%hd263743264253%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263782264137%_))
                                                  (let ((_%e263805264040%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263782264137%_))))
                                                    (let ((_%tl263807264047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263805264040%_)))
                                                          (_%hd263806264044%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263805264040%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl263807264047%_))
                                                          (_%__kont266568266569%_
                                                           _%hd263806264044%_
                                                           _%hd263762264214%_
                                                           _%hd263746264263%_
                                                           _%hd263743264253%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g263738263841%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g263738263841%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g263738263841%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g263738263841%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g263738263841%_))))))
                (let () (declare (not safe)) (_%g263738263841%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e263760264206%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl263759264203%_))
                                                            (_%__kont266570266571%_
                                                             _%hd263746264263%_
                                                             _%hd263743264253%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl263759264203%_))
                        (let ((_%e263833263882%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263759264203%_))))
                          (let ((_%tl263835263889%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263833263882%_)))
                                (_%hd263834263886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263833263882%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl263835263889%_))
                                (_%__kont266572266573%_
                                 _%hd263834263886%_
                                 _%hd263746264263%_
                                 _%hd263743264253%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g263738263841%_)))))
                        (let () (declare (not safe)) (_%g263738263841%_))))
                (let () (declare (not safe)) (_%g263738263841%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g263738263841%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g263738263841%_))))))
                          (let () (declare (not safe)) (_%g263738263841%_)))))
                  (let () (declare (not safe)) (_%g263738263841%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig263335%_)
        (let* ((_%g263338263418%_
                (lambda (_%g263339263414%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263339263414%_))))
               (_%g263337263720%_
                (lambda (_%g263339263422%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263339263422%_))
                      (let ((_%e263345263425%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263339263422%_))))
                        (let ((_%hd263346263429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263345263425%_)))
                              (_%tl263347263432%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263345263425%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263347263432%_))
                              (let ((_%e263348263435%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263347263432%_))))
                                (let ((_%hd263349263439%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263348263435%_)))
                                      (_%tl263350263442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263348263435%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd263349263439%_))
                                      (let ((_%e263351263445%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd263349263439%_))))
                                        (if (equal? _%e263351263445%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl263350263442%_))
                                                (let ((_%e263352263449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl263350263442%_))))
                                                  (let ((_%hd263353263453%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e263352263449%_)))
                                                        (_%tl263354263456%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e263352263449%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263353263453%_))
                                                        (let ((_%e263355263459%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263353263453%_))))
                  (let ((_%hd263356263463%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263355263459%_)))
                        (_%tl263357263466%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263355263459%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd263356263463%_))
                        (if (let ((__tmp266922 |gxc[1]#_g266923_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp266922
                               _%hd263356263463%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263357263466%_))
                                (let ((_%e263358263469%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263357263466%_))))
                                  (let ((_%hd263359263473%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263358263469%_)))
                                        (_%tl263360263476%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263358263469%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263360263476%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl263354263456%_))
                                            (let ((_%e263361263479%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl263354263456%_))))
                                              (let ((_%hd263362263483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e263361263479%_)))
                                                    (_%tl263363263486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e263361263479%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd263362263483%_))
                                                    (let ((_%e263364263489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd263362263483%_))))
                                                      (if (equal? _%e263364263489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl263363263486%_))
                      (let ((_%e263365263493%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl263363263486%_))))
                        (let ((_%hd263366263497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263365263493%_)))
                              (_%tl263367263500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263365263493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd263366263497%_))
                              (let ((_%e263368263503%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd263366263497%_))))
                                (let ((_%hd263369263507%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263368263503%_)))
                                      (_%tl263370263510%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263368263503%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd263369263507%_))
                                      (if (let ((__tmp266924
                                                 |gxc[1]#_g266925_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp266924
                                             _%hd263369263507%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263370263510%_))
                                              (let ((_%e263371263513%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263370263510%_))))
                                                (let ((_%hd263372263517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263371263513%_)))
                                                      (_%tl263373263520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263371263513%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263373263520%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl263367263500%_))
                                                          (let ((_%e263374263523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl263367263500%_))))
                    (let ((_%hd263375263527%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263374263523%_)))
                          (_%tl263376263530%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263374263523%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd263375263527%_))
                          (let ((_%e263377263533%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd263375263527%_))))
                            (if (equal? _%e263377263533%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl263376263530%_))
                                    (let ((_%e263378263537%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl263376263530%_))))
                                      (let ((_%hd263379263541%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e263378263537%_)))
                                            (_%tl263380263544%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e263378263537%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd263379263541%_))
                                            (let ((_%e263381263547%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd263379263541%_))))
                                              (let ((_%hd263382263551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e263381263547%_)))
                                                    (_%tl263383263554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e263381263547%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd263382263551%_))
                                                    (if (let ((__tmp266926
                                                               |gxc[1]#_g266927_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp266926
                                                           _%hd263382263551%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl263383263554%_))
                                                            (let ((_%e263384263557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl263383263554%_))))
                      (let ((_%hd263385263561%_
                             (let ()
                               (declare (not safe))
                               (##car _%e263384263557%_)))
                            (_%tl263386263564%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e263384263557%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl263386263564%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263380263544%_))
                                (let ((_%e263387263567%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263380263544%_))))
                                  (let ((_%hd263388263571%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263387263567%_)))
                                        (_%tl263389263574%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263387263567%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd263388263571%_))
                                        (let ((_%e263390263577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd263388263571%_))))
                                          (if (equal? _%e263390263577%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263389263574%_))
                                                  (let ((_%e263391263581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263389263574%_))))
                                                    (let ((_%hd263392263585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263391263581%_)))
                                                          (_%tl263393263588%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263391263581%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd263392263585%_))
                                                          (let ((_%e263394263591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd263392263585%_))))
                    (let ((_%hd263395263595%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263394263591%_)))
                          (_%tl263396263598%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263394263591%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd263395263595%_))
                          (if (let ((__tmp266928 |gxc[1]#_g266929_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp266928
                                 _%hd263395263595%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl263396263598%_))
                                  (let ((_%e263397263601%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl263396263598%_))))
                                    (let ((_%hd263398263605%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e263397263601%_)))
                                          (_%tl263399263608%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e263397263601%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl263399263608%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263393263588%_))
                                              (let ((_%e263400263611%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263393263588%_))))
                                                (let ((_%hd263401263615%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263400263611%_)))
                                                      (_%tl263402263618%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263400263611%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd263401263615%_))
                                                      (let ((_%e263403263621%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd263401263615%_))))
                (if (equal? _%e263403263621%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl263402263618%_))
                        (let ((_%e263404263625%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl263402263618%_))))
                          (let ((_%hd263405263629%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263404263625%_)))
                                (_%tl263406263632%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263404263625%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd263405263629%_))
                                (let ((_%e263407263635%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd263405263629%_))))
                                  (let ((_%hd263408263639%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263407263635%_)))
                                        (_%tl263409263642%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263407263635%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd263408263639%_))
                                        (if (let ((__tmp266930
                                                   |gxc[1]#_g266931_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp266930
                                               _%hd263408263639%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl263409263642%_))
                                                (let ((_%e263410263645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl263409263642%_))))
                                                  (let ((_%hd263411263649%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e263410263645%_)))
                                                        (_%tl263412263652%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e263410263645%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl263412263652%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl263406263632%_))
                                                            ((lambda (_%g263340263655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g263341263657%_
                              _%g263342263658%_
                              _%g263343263659%_
                              _%g263344263660%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g263341263657%_))
                           (cons _%g263341263657%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g263343263659%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g263340263655%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd263411263649%_
                     _%hd263398263605%_
                     _%hd263385263561%_
                     _%hd263372263517%_
                     _%hd263359263473%_)
                    (_%g263338263418%_ _%g263339263422%_))
                (_%g263338263418%_ _%g263339263422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263338263418%_
                                                 _%g263339263422%_))
                                            (_%g263338263418%_
                                             _%g263339263422%_))
                                        (_%g263338263418%_
                                         _%g263339263422%_))))
                                (_%g263338263418%_ _%g263339263422%_))))
                        (_%g263338263418%_ _%g263339263422%_))
                    (_%g263338263418%_ _%g263339263422%_)))
              (_%g263338263418%_ _%g263339263422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263338263418%_
                                               _%g263339263422%_))
                                          (_%g263338263418%_
                                           _%g263339263422%_))))
                                  (_%g263338263418%_ _%g263339263422%_))
                              (_%g263338263418%_ _%g263339263422%_))
                          (_%g263338263418%_ _%g263339263422%_))))
                  (_%g263338263418%_ _%g263339263422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g263338263418%_
                                                   _%g263339263422%_))
                                              (_%g263338263418%_
                                               _%g263339263422%_)))
                                        (_%g263338263418%_
                                         _%g263339263422%_))))
                                (_%g263338263418%_ _%g263339263422%_))
                            (_%g263338263418%_ _%g263339263422%_))))
                    (_%g263338263418%_ _%g263339263422%_))
                (_%g263338263418%_ _%g263339263422%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g263338263418%_
                                                     _%g263339263422%_))))
                                            (_%g263338263418%_
                                             _%g263339263422%_))))
                                    (_%g263338263418%_ _%g263339263422%_))
                                (_%g263338263418%_ _%g263339263422%_)))
                          (_%g263338263418%_ _%g263339263422%_))))
                  (_%g263338263418%_ _%g263339263422%_))
              (_%g263338263418%_ _%g263339263422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263338263418%_
                                               _%g263339263422%_))
                                          (_%g263338263418%_
                                           _%g263339263422%_))
                                      (_%g263338263418%_ _%g263339263422%_))))
                              (_%g263338263418%_ _%g263339263422%_))))
                      (_%g263338263418%_ _%g263339263422%_))
                  (_%g263338263418%_ _%g263339263422%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g263338263418%_
                                                     _%g263339263422%_))))
                                            (_%g263338263418%_
                                             _%g263339263422%_))
                                        (_%g263338263418%_
                                         _%g263339263422%_))))
                                (_%g263338263418%_ _%g263339263422%_))
                            (_%g263338263418%_ _%g263339263422%_))
                        (_%g263338263418%_ _%g263339263422%_))))
                (_%g263338263418%_ _%g263339263422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g263338263418%_
                                                 _%g263339263422%_))
                                            (_%g263338263418%_
                                             _%g263339263422%_)))
                                      (_%g263338263418%_ _%g263339263422%_))))
                              (_%g263338263418%_ _%g263339263422%_))))
                      (_%g263338263418%_ _%g263339263422%_)))))
          (_%g263337263720%_ _%sig263335%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx264492%_)
        (let* ((_%g264495264513%_
                (lambda (_%g264496264509%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264496264509%_))))
               (_%g264494264568%_
                (lambda (_%g264496264517%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264496264517%_))
                      (let ((_%e264499264520%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264496264517%_))))
                        (let ((_%hd264500264524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264499264520%_)))
                              (_%tl264501264527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264499264520%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264501264527%_))
                              (let ((_%e264502264530%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264501264527%_))))
                                (let ((_%hd264503264534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264502264530%_)))
                                      (_%tl264504264537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264502264530%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264504264537%_))
                                      (let ((_%e264505264540%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264504264537%_))))
                                        (let ((_%hd264506264544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264505264540%_)))
                                              (_%tl264507264547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264505264540%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264507264547%_))
                                              ((lambda (_%g264497264550%_
                                                        _%g264498264552%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g264498264552%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g264497264550%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx264492%_
                                                        _%g264498264552%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx264492%_
                                                        _%g264497264550%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g264498264552%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g264497264550%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g264495264513%_
                                                      _%g264496264517%_)))
                                               _%hd264506264544%_
                                               _%hd264503264534%_)
                                              (_%g264495264513%_
                                               _%g264496264517%_))))
                                      (_%g264495264513%_ _%g264496264517%_))))
                              (_%g264495264513%_ _%g264496264517%_))))
                      (_%g264495264513%_ _%g264496264517%_)))))
          (_%g264494264568%_ _%stx264492%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx264572%_)
        (let* ((_%g264575264599%_
                (lambda (_%g264576264595%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264576264595%_))))
               (_%g264574264880%_
                (lambda (_%g264576264603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264576264603%_))
                      (let ((_%e264579264606%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264576264603%_))))
                        (let ((_%hd264580264610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264579264606%_)))
                              (_%tl264581264613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264579264606%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264581264613%_))
                              (let ((_%e264582264616%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264581264613%_))))
                                (let ((_%hd264583264620%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264582264616%_)))
                                      (_%tl264584264623%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264582264616%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl264584264623%_))
                                      (let ((_g266932_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl264584264623%_
                                                '0))))
                                        (begin
                                          (let ((_g266933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g266932_)
                                                       (##values-length
                                                        _g266932_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g266933_ 2)))
                                                (error "Context expects 2 values"
                                                       _g266933_)))
                                          (let ((_%target264585264626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g266932_ 0)))
                                                (_%tl264587264629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g266932_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl264587264629%_))
                                                (letrec ((_%loop264588264632%_
                                                          (lambda (_%hd264586264636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature264592264639%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd264586264636%_))
                        (let ((_%e264589264641%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd264586264636%_))))
                          (let ((_%lp-hd264590264645%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264589264641%_)))
                                (_%lp-tl264591264648%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264589264641%_))))
                            (_%loop264588264632%_
                             _%lp-tl264591264648%_
                             (cons _%lp-hd264590264645%_
                                   _%signature264592264639%_))))
                        (let ((_%signature264593264651%_
                               (reverse _%signature264592264639%_)))
                          ((lambda (_%g264577264654%_ _%g264578264656%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g264578264656%_))
                                 (let* ((_%g264674264689%_
                                         (lambda (_%g264675264685%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g264675264685%_))))
                                        (_%g264673264868%_
                                         (lambda (_%g264675264693%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g264675264693%_))
                                               (let ((_%e264678264696%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g264675264693%_))))
                                                 (let ((_%hd264679264700%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e264678264696%_)))
                                                       (_%tl264680264703%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e264678264696%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl264680264703%_))
                                                       (let ((_%e264681264706%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl264680264703%_))))
                 (let ((_%hd264682264710%_
                        (let ()
                          (declare (not safe))
                          (##car _%e264681264706%_)))
                       (_%tl264683264713%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e264681264706%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl264683264713%_))
                       ((lambda (_%g264676264716%_ _%g264677264718%_)
                          (let* ((_%g264734264742%_
                                  (lambda (_%g264735264738%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g264735264738%_))))
                                 (_%g264733264864%_
                                  (lambda (_%g264735264746%_)
                                    ((lambda (_%g264736264749%_)
                                       (let* ((_%unchecked264762%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g264676264716%_))
                                              (_%g264765264773%_
                                               (lambda (_%g264766264769%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g264766264769%_))))
                                              (_%g264764264796%_
                                               (lambda (_%g264766264777%_)
                                                 ((lambda (_%g264767264780%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g264736264749%_
                                                                (cons _%g264767264780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g264766264777%_))))
                                         (_%g264764264796%_
                                          (if _%unchecked264762%_
                                              (let* ((_%g264800264815%_
                                                      (lambda (_%g264801264811%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g264801264811%_))))
                                                     (_%g264799264860%_
                                                      (lambda (_%g264801264819%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g264801264819%_))
                                                            (let ((_%e264804264822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g264801264819%_))))
                      (let ((_%hd264805264826%_
                             (let ()
                               (declare (not safe))
                               (##car _%e264804264822%_)))
                            (_%tl264806264829%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e264804264822%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl264806264829%_))
                            (let ((_%e264807264832%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl264806264829%_))))
                              (let ((_%hd264808264836%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e264807264832%_)))
                                    (_%tl264809264839%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e264807264832%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl264809264839%_))
                                    ((lambda (_%g264802264842%_
                                              _%g264803264844%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g264803264844%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g264677264718%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g264802264842%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd264808264836%_
                                     _%hd264805264826%_)
                                    (_%g264800264815%_ _%g264801264819%_))))
                            (_%g264800264815%_ _%g264801264819%_))))
                    (_%g264800264815%_ _%g264801264819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g264799264860%_
                                                 _%unchecked264762%_))
                                              '(begin)))))
                                     _%g264735264746%_))))
                            (_%g264733264864%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g264578264656%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g264677264718%_ '()))
                   (cons '#f (cons 'signature: (cons _%g264676264716%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd264682264710%_
                        _%hd264679264700%_)
                       (_%g264674264689%_ _%g264675264693%_))))
               (_%g264674264689%_ _%g264675264693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g264674264689%_
                                                _%g264675264693%_)))))
                                   (_%g264673264868%_
                                    (|gxc[1]#parse-signature|
                                     _%stx264572%_
                                     _%g264578264656%_
                                     (let ((__tmp266934
                                            (lambda (_%g264871264874%_
                                                     _%g264872264877%_)
                                              (cons _%g264871264874%_
                                                    _%g264872264877%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp266934
                                        '()
                                        _%g264577264654%_)))))
                                 (_%g264575264599%_ _%g264576264603%_)))
                           _%signature264593264651%_
                           _%hd264583264620%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop264588264632%_
                                                   _%target264585264626%_
                                                   '()))
                                                (_%g264575264599%_
                                                 _%g264576264603%_)))))
                                      (_%g264575264599%_ _%g264576264603%_))))
                              (_%g264575264599%_ _%g264576264603%_))))
                      (_%g264575264599%_ _%g264576264603%_)))))
          (_%g264574264880%_ _%stx264572%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx264885%_)
        (let* ((_%g264888264912%_
                (lambda (_%g264889264908%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264889264908%_))))
               (_%g264887265787%_
                (lambda (_%g264889264916%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264889264916%_))
                      (let ((_%e264892264919%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264889264916%_))))
                        (let ((_%hd264893264923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264892264919%_)))
                              (_%tl264894264926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264892264919%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264894264926%_))
                              (let ((_%e264895264929%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264894264926%_))))
                                (let ((_%hd264896264933%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264895264929%_)))
                                      (_%tl264897264936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264895264929%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl264897264936%_))
                                      (let ((_g266935_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl264897264936%_
                                                '0))))
                                        (begin
                                          (let ((_g266936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g266935_)
                                                       (##values-length
                                                        _g266935_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g266936_ 2)))
                                                (error "Context expects 2 values"
                                                       _g266936_)))
                                          (let ((_%target264898264939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g266935_ 0)))
                                                (_%tl264900264942%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g266935_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl264900264942%_))
                                                (letrec ((_%loop264901264945%_
                                                          (lambda (_%hd264899264949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature264905264952%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd264899264949%_))
                        (let ((_%e264902264954%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd264899264949%_))))
                          (let ((_%lp-hd264903264958%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264902264954%_)))
                                (_%lp-tl264904264961%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264902264954%_))))
                            (_%loop264901264945%_
                             _%lp-tl264904264961%_
                             (cons _%lp-hd264903264958%_
                                   _%case-signature264905264952%_))))
                        (let ((_%case-signature264906264964%_
                               (reverse _%case-signature264905264952%_)))
                          ((lambda (_%g264890264967%_ _%g264891264969%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g264891264969%_))
                                 (let* ((_%signatures265000%_
                                         (map (lambda (_%g264986264988%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx264885%_
                                                 _%g264891264969%_
                                                 _%g264986264988%_))
                                              (let ((__tmp266937
                                                     (lambda (_%g264991264994%_
                                                              _%g264992264997%_)
                                                       (cons _%g264991264994%_
                                                             _%g264992264997%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp266937
                                                 '()
                                                 _%g264890264967%_))))
                                        (_%g265003265029%_
                                         (lambda (_%g265004265025%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265004265025%_))))
                                        (_%g265002265783%_
                                         (lambda (_%g265004265033%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g265004265033%_))
                                               (let ((_g266938_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g265004265033%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g266939_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g266938_)
                        (##values-length _g266938_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g266939_ 2)))
                 (error "Context expects 2 values" _g266939_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target265007265036%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g266938_
                                                             0)))
                                                         (_%tl265009265039%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g266938_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265009265039%_))
                                                         (letrec ((_%loop265010265042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd265008265046%_
                                    _%sig265014265049%_
                                    _%arity265015265050%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd265008265046%_))
                                 (let ((_%e265011265052%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd265008265046%_))))
                                   (let ((_%lp-hd265012265056%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265011265052%_)))
                                         (_%lp-tl265013265059%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265011265052%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd265012265056%_))
                                         (let ((_%e265018265062%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd265012265056%_))))
                                           (let ((_%hd265019265066%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e265018265062%_)))
                                                 (_%tl265020265069%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e265018265062%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265020265069%_))
                                                 (let ((_%e265021265072%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265020265069%_))))
                                                   (let ((_%hd265022265076%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265021265072%_)))
                                                         (_%tl265023265079%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265021265072%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265023265079%_))
                                                         (_%loop265010265042%_
                                                          _%lp-tl265013265059%_
                                                          (cons _%hd265022265076%_
                                                                _%sig265014265049%_)
                                                          (cons _%hd265019265066%_
                                                                _%arity265015265050%_))
                                                         (_%g265003265029%_
                                                          _%g265004265033%_))))
                                                 (_%g265003265029%_
                                                  _%g265004265033%_))))
                                         (_%g265003265029%_
                                          _%g265004265033%_))))
                                 (let ((_%sig265016265082%_
                                        (reverse _%sig265014265049%_))
                                       (_%arity265017265084%_
                                        (reverse _%arity265015265050%_)))
                                   ((lambda (_%g265005265086%_
                                             _%g265006265088%_)
                                      (let* ((_%g265105265113%_
                                              (lambda (_%g265106265109%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g265106265109%_))))
                                             (_%g265104265768%_
                                              (lambda (_%g265106265117%_)
                                                ((lambda (_%g265107265120%_)
                                                   (let* ((_%g265133265141%_
                                                           (lambda (_%g265134265137%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g265134265137%_))))
                  (_%g265132265163%_
                   (lambda (_%g265134265145%_)
                     ((lambda (_%g265135265148%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g265107265120%_
                                    (cons _%g265135265148%_ '()))))
                      _%g265134265145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265132265163%_
                                                      (let ((_g266940_
                                                             (let _%loop265167%_ ((_%rest265170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures265000%_)
                                          (_%unchecked-proc265172%_ '#f)
                                          (_%unchecked-clauses265173%_ '()))
                       (let* ((_%rest265174265182%_ _%rest265170%_)
                              (_%else265176265194%_
                               (lambda ()
                                 (values _%unchecked-proc265172%_
                                         (reverse!
                                          _%unchecked-clauses265173%_))))
                              (_%K265178265635%_
                               (lambda (_%rest265198%_ _%hd265200%_)
                                 (let* ((_%g265202265289%_
                                         (lambda (_%g265203265285%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g265203265285%_))))
                                        (_%g265201265631%_
                                         (lambda (_%g265203265293%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g265203265293%_))
                                               (let ((_%e265210265296%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g265203265293%_))))
                                                 (let ((_%hd265211265300%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265210265296%_)))
                                                       (_%tl265212265303%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265210265296%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl265212265303%_))
                                                       (let ((_%e265213265306%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl265212265303%_))))
                 (let ((_%hd265214265310%_
                        (let ()
                          (declare (not safe))
                          (##car _%e265213265306%_)))
                       (_%tl265215265313%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e265213265306%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd265214265310%_))
                       (let ((_%e265216265316%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd265214265310%_))))
                         (let ((_%hd265217265320%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e265216265316%_)))
                               (_%tl265218265323%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e265216265316%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl265218265323%_))
                               (let ((_%e265219265326%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl265218265323%_))))
                                 (let ((_%hd265220265330%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e265219265326%_)))
                                       (_%tl265221265333%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e265219265326%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd265220265330%_))
                                       (let ((_%e265222265336%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd265220265330%_))))
                                         (if (equal? _%e265222265336%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265221265333%_))
                                                 (let ((_%e265223265340%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265221265333%_))))
                                                   (let ((_%hd265224265344%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265223265340%_)))
                                                         (_%tl265225265347%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265223265340%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd265224265344%_))
                                                         (let ((_%e265226265350%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd265224265344%_))))
                   (let ((_%hd265227265354%_
                          (let ()
                            (declare (not safe))
                            (##car _%e265226265350%_)))
                         (_%tl265228265357%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e265226265350%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd265227265354%_))
                         (if (let ((__tmp266942 |gxc[1]#_g266943_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp266942
                                _%hd265227265354%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl265228265357%_))
                                 (let ((_%e265229265360%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl265228265357%_))))
                                   (let ((_%hd265230265364%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265229265360%_)))
                                         (_%tl265231265367%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265229265360%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl265231265367%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl265225265347%_))
                                             (let ((_%e265232265370%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl265225265347%_))))
                                               (let ((_%hd265233265374%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e265232265370%_)))
                                                     (_%tl265234265377%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e265232265370%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd265233265374%_))
                                                     (let ((_%e265235265380%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd265233265374%_))))
                                                       (if (equal? _%e265235265380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl265234265377%_))
                       (let ((_%e265236265384%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl265234265377%_))))
                         (let ((_%hd265237265388%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e265236265384%_)))
                               (_%tl265238265391%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e265236265384%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd265237265388%_))
                               (let ((_%e265239265394%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd265237265388%_))))
                                 (let ((_%hd265240265398%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e265239265394%_)))
                                       (_%tl265241265401%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e265239265394%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd265240265398%_))
                                       (if (let ((__tmp266944
                                                  |gxc[1]#_g266945_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp266944
                                              _%hd265240265398%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl265241265401%_))
                                               (let ((_%e265242265404%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl265241265401%_))))
                                                 (let ((_%hd265243265408%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265242265404%_)))
                                                       (_%tl265244265411%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265242265404%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl265244265411%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl265238265391%_))
                                                           (let ((_%e265245265414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl265238265391%_))))
                     (let ((_%hd265246265418%_
                            (let ()
                              (declare (not safe))
                              (##car _%e265245265414%_)))
                           (_%tl265247265421%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e265245265414%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd265246265418%_))
                           (let ((_%e265248265424%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd265246265418%_))))
                             (if (equal? _%e265248265424%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl265247265421%_))
                                     (let ((_%e265249265428%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl265247265421%_))))
                                       (let ((_%hd265250265432%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e265249265428%_)))
                                             (_%tl265251265435%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e265249265428%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd265250265432%_))
                                             (let ((_%e265252265438%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd265250265432%_))))
                                               (let ((_%hd265253265442%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e265252265438%_)))
                                                     (_%tl265254265445%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e265252265438%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd265253265442%_))
                                                     (if (let ((__tmp266946
                                                                |gxc[1]#_g266947_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp266946
                                                            _%hd265253265442%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl265254265445%_))
                     (let ((_%e265255265448%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl265254265445%_))))
                       (let ((_%hd265256265452%_
                              (let ()
                                (declare (not safe))
                                (##car _%e265255265448%_)))
                             (_%tl265257265455%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e265255265448%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl265257265455%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl265251265435%_))
                                 (let ((_%e265258265458%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl265251265435%_))))
                                   (let ((_%hd265259265462%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265258265458%_)))
                                         (_%tl265260265465%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265258265458%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd265259265462%_))
                                         (let ((_%e265261265468%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd265259265462%_))))
                                           (if (equal? _%e265261265468%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl265260265465%_))
                                                   (let ((_%e265262265472%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl265260265465%_))))
                                                     (let ((_%hd265263265476%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e265262265472%_)))
                                                           (_%tl265264265479%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e265262265472%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd265263265476%_))
                                                           (let ((_%e265265265482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd265263265476%_))))
                     (let ((_%hd265266265486%_
                            (let ()
                              (declare (not safe))
                              (##car _%e265265265482%_)))
                           (_%tl265267265489%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e265265265482%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd265266265486%_))
                           (if (let ((__tmp266948 |gxc[1]#_g266949_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp266948
                                  _%hd265266265486%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl265267265489%_))
                                   (let ((_%e265268265492%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl265267265489%_))))
                                     (let ((_%hd265269265496%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e265268265492%_)))
                                           (_%tl265270265499%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e265268265492%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl265270265499%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl265264265479%_))
                                               (let ((_%e265271265502%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl265264265479%_))))
                                                 (let ((_%hd265272265506%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e265271265502%_)))
                                                       (_%tl265273265509%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e265271265502%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd265272265506%_))
                                                       (let ((_%e265274265512%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd265272265506%_))))
                 (if (equal? _%e265274265512%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl265273265509%_))
                         (let ((_%e265275265516%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl265273265509%_))))
                           (let ((_%hd265276265520%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e265275265516%_)))
                                 (_%tl265277265523%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e265275265516%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd265276265520%_))
                                 (let ((_%e265278265526%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd265276265520%_))))
                                   (let ((_%hd265279265530%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e265278265526%_)))
                                         (_%tl265280265533%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e265278265526%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd265279265530%_))
                                         (if (let ((__tmp266950
                                                    |gxc[1]#_g266951_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp266950
                                                _%hd265279265530%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl265280265533%_))
                                                 (let ((_%e265281265536%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl265280265533%_))))
                                                   (let ((_%hd265282265540%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e265281265536%_)))
                                                         (_%tl265283265543%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e265281265536%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl265283265543%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl265277265523%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl265215265313%_))
                         ((lambda (_%g265204265546%_
                                   _%g265205265548%_
                                   _%g265206265549%_
                                   _%g265207265550%_
                                   _%g265208265551%_
                                   _%g265209265552%_)
                            (let ((_%clause265623%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%g265209265552%_
                                                           '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g265207265550%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265204265546%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked265625%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g265205265548%_))))
                              (_%loop265167%_
                               _%rest265198%_
                               (let ((_%$e265627%_ _%unchecked265625%_))
                                 (if _%$e265627%_
                                     _%$e265627%_
                                     _%unchecked-proc265172%_))
                               (cons _%clause265623%_
                                     _%unchecked-clauses265173%_))))
                          _%hd265282265540%_
                          _%hd265269265496%_
                          _%hd265256265452%_
                          _%hd265243265408%_
                          _%hd265230265364%_
                          _%hd265211265300%_)
                         (_%g265202265289%_ _%g265203265293%_))
                     (_%g265202265289%_ _%g265203265293%_))
                 (_%g265202265289%_ _%g265203265293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g265202265289%_
                                                  _%g265203265293%_))
                                             (_%g265202265289%_
                                              _%g265203265293%_))
                                         (_%g265202265289%_
                                          _%g265203265293%_))))
                                 (_%g265202265289%_ _%g265203265293%_))))
                         (_%g265202265289%_ _%g265203265293%_))
                     (_%g265202265289%_ _%g265203265293%_)))
               (_%g265202265289%_ _%g265203265293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265202265289%_
                                                _%g265203265293%_))
                                           (_%g265202265289%_
                                            _%g265203265293%_))))
                                   (_%g265202265289%_ _%g265203265293%_))
                               (_%g265202265289%_ _%g265203265293%_))
                           (_%g265202265289%_ _%g265203265293%_))))
                   (_%g265202265289%_ _%g265203265293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g265202265289%_
                                                    _%g265203265293%_))
                                               (_%g265202265289%_
                                                _%g265203265293%_)))
                                         (_%g265202265289%_
                                          _%g265203265293%_))))
                                 (_%g265202265289%_ _%g265203265293%_))
                             (_%g265202265289%_ _%g265203265293%_))))
                     (_%g265202265289%_ _%g265203265293%_))
                 (_%g265202265289%_ _%g265203265293%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265202265289%_
                                                      _%g265203265293%_))))
                                             (_%g265202265289%_
                                              _%g265203265293%_))))
                                     (_%g265202265289%_ _%g265203265293%_))
                                 (_%g265202265289%_ _%g265203265293%_)))
                           (_%g265202265289%_ _%g265203265293%_))))
                   (_%g265202265289%_ _%g265203265293%_))
               (_%g265202265289%_ _%g265203265293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265202265289%_
                                                _%g265203265293%_))
                                           (_%g265202265289%_
                                            _%g265203265293%_))
                                       (_%g265202265289%_ _%g265203265293%_))))
                               (_%g265202265289%_ _%g265203265293%_))))
                       (_%g265202265289%_ _%g265203265293%_))
                   (_%g265202265289%_ _%g265203265293%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g265202265289%_
                                                      _%g265203265293%_))))
                                             (_%g265202265289%_
                                              _%g265203265293%_))
                                         (_%g265202265289%_
                                          _%g265203265293%_))))
                                 (_%g265202265289%_ _%g265203265293%_))
                             (_%g265202265289%_ _%g265203265293%_))
                         (_%g265202265289%_ _%g265203265293%_))))
                 (_%g265202265289%_ _%g265203265293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g265202265289%_
                                                  _%g265203265293%_))
                                             (_%g265202265289%_
                                              _%g265203265293%_)))
                                       (_%g265202265289%_ _%g265203265293%_))))
                               (_%g265202265289%_ _%g265203265293%_))))
                       (_%g265202265289%_ _%g265203265293%_))))
               (_%g265202265289%_ _%g265203265293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265202265289%_
                                                _%g265203265293%_)))))
                                   (_%g265201265631%_ _%hd265200%_)))))
                         (if (pair? _%rest265174265182%_)
                             (let ((_%hd265179265639%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest265174265182%_)))
                                   (_%tl265180265642%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest265174265182%_))))
                               (let* ((_%hd265645%_ _%hd265179265639%_)
                                      (_%rest265648%_ _%tl265180265642%_))
                                 (_%K265178265635%_
                                  _%rest265648%_
                                  _%hd265645%_)))
                             (_%else265176265194%_))))))
                (begin
                  (let ((_g266941_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g266940_)
                               (##values-length _g266940_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g266941_ 2)))
                        (error "Context expects 2 values" _g266941_)))
                  (let ((_%unchecked-proc265651%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266940_ 0)))
                        (_%unchecked-clauses265653%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266940_ 1))))
                    (if _%unchecked-proc265651%_
                        (let* ((_%g265655265679%_
                                (lambda (_%g265656265675%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g265656265675%_))))
                               (_%g265654265764%_
                                (lambda (_%g265656265683%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g265656265683%_))
                                      (let ((_%e265659265686%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g265656265683%_))))
                                        (let ((_%hd265660265690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265659265686%_)))
                                              (_%tl265661265693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265659265686%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265661265693%_))
                                              (let ((_%e265662265696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265661265693%_))))
                                                (let ((_%hd265663265700%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265662265696%_)))
                                                      (_%tl265664265703%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265662265696%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd265663265700%_))
                                                      (let ((_g266952_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd265663265700%_ '0))))
                (begin
                  (let ((_g266953_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g266952_)
                               (##values-length _g266952_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g266953_ 2)))
                        (error "Context expects 2 values" _g266953_)))
                  (let ((_%target265665265706%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266952_ 0)))
                        (_%tl265667265709%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g266952_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl265667265709%_))
                        (letrec ((_%loop265668265712%_
                                  (lambda (_%hd265666265716%_
                                           _%clause265672265719%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd265666265716%_))
                                        (let ((_%e265669265721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd265666265716%_))))
                                          (let ((_%lp-hd265670265725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e265669265721%_)))
                                                (_%lp-tl265671265728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e265669265721%_))))
                                            (_%loop265668265712%_
                                             _%lp-tl265671265728%_
                                             (cons _%lp-hd265670265725%_
                                                   _%clause265672265719%_))))
                                        (let ((_%clause265673265731%_
                                               (reverse _%clause265672265719%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265664265703%_))
                                              ((lambda (_%g265657265734%_
                                                        _%g265658265736%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g265658265736%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp266954
                                                    (lambda (_%g265755265758%_
                                                             _%g265756265761%_)
                                                      (cons _%g265755265758%_
                                                            _%g265756265761%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp266954
                                                '()
                                                _%g265657265734%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause265673265731%_
                                               _%hd265660265690%_)
                                              (_%g265655265679%_
                                               _%g265656265683%_)))))))
                          (_%loop265668265712%_ _%target265665265706%_ '()))
                        (_%g265655265679%_ _%g265656265683%_)))))
              (_%g265655265679%_ _%g265656265683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265655265679%_
                                               _%g265656265683%_))))
                                      (_%g265655265679%_ _%g265656265683%_)))))
                          (_%g265654265764%_
                           (list _%unchecked-proc265651%_
                                 _%unchecked-clauses265653%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g265106265117%_))))
                                        (_%g265104265768%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g264891264969%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%g265005265086%_
                                          _%g265006265088%_))
                                       (let ((__tmp266955
                                              (lambda (_%g265771265775%_
                                                       _%g265772265778%_
                                                       _%g265773265780%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g265772265778%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g265771265775%_ '())))))
              _%g265773265780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp266955
                                          '()
                                          _%g265005265086%_
                                          _%g265006265088%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig265016265082%_
                                    _%arity265017265084%_))))))
                   (_%loop265010265042%_ _%target265007265036%_ '() '()))
                 (_%g265003265029%_ _%g265004265033%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g265003265029%_
                                                _%g265004265033%_)))))
                                   (_%g265002265783%_ _%signatures265000%_))
                                 (_%g264888264912%_ _%g264889264916%_)))
                           _%case-signature264906264964%_
                           _%hd264896264933%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop264901264945%_
                                                   _%target264898264939%_
                                                   '()))
                                                (_%g264888264912%_
                                                 _%g264889264916%_)))))
                                      (_%g264888264912%_ _%g264889264916%_))))
                              (_%g264888264912%_ _%g264889264916%_))))
                      (_%g264888264912%_ _%g264889264916%_)))))
          (_%g264887265787%_ _%stx264885%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx265795%_)
        (let* ((_%__stx266775266776%_ _%$stx265795%_)
               (_%g265801265861%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266775266776%_)))))
          (let ((_%__kont266778266779%_
                 (lambda (_%g265803266083%_ _%g265804266085%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265804266085%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g265804266085%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265803266083%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont266780266781%_
                 (lambda (_%g265818266008%_
                          _%g265819266010%_
                          _%g265820266011%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265820266011%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g265820266011%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265819266010%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g265818266008%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont266782266783%_
                 (lambda (_%g265837265922%_
                          _%g265838265924%_
                          _%g265839265925%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265839265925%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g265839265925%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g265838265924%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g265837265922%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266775266776%_))
                (let ((_%e265805266039%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx266775266776%_))))
                  (let ((_%tl265807266046%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265805266039%_)))
                        (_%hd265806266043%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265805266039%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl265807266046%_))
                        (let ((_%e265808266049%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl265807266046%_))))
                          (let ((_%tl265810266056%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265808266049%_)))
                                (_%hd265809266053%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265808266049%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd265809266053%_))
                                (let ((_%e265811266059%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd265809266053%_))))
                                  (if (equal? _%e265811266059%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl265810266056%_))
                                          (let ((_%e265812266063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl265810266056%_))))
                                            (let ((_%tl265814266070%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e265812266063%_)))
                                                  (_%hd265813266067%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e265812266063%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265814266070%_))
                                                  (let ((_%e265815266073%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl265814266070%_))))
                                                    (let ((_%tl265817266080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265815266073%_)))
                                                          (_%hd265816266077%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265815266073%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl265817266080%_))
                                                          (_%__kont266778266779%_
                                                           _%hd265816266077%_
                                                           _%hd265813266067%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g265801265861%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g265801265861%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g265801265861%_)))
                                      (if (equal? _%e265811266059%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265810266056%_))
                                              (let ((_%e265828265978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265810266056%_))))
                                                (let ((_%tl265830265985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265828265978%_)))
                                                      (_%hd265829265982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265828265978%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl265830265985%_))
                                                      (let ((_%e265831265988%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl265830265985%_))))
                (let ((_%tl265833265995%_
                       (let () (declare (not safe)) (##cdr _%e265831265988%_)))
                      (_%hd265832265992%_
                       (let ()
                         (declare (not safe))
                         (##car _%e265831265988%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl265833265995%_))
                      (let ((_%e265834265998%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl265833265995%_))))
                        (let ((_%tl265836266005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265834265998%_)))
                              (_%hd265835266002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265834265998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl265836266005%_))
                              (_%__kont266780266781%_
                               _%hd265835266002%_
                               _%hd265832265992%_
                               _%hd265829265982%_)
                              (let ()
                                (declare (not safe))
                                (_%g265801265861%_)))))
                      (let () (declare (not safe)) (_%g265801265861%_)))))
              (let () (declare (not safe)) (_%g265801265861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g265801265861%_)))
                                          (if (equal? _%e265811266059%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265810266056%_))
                                                  (let ((_%e265847265892%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl265810266056%_))))
                                                    (let ((_%tl265849265899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265847265892%_)))
                                                          (_%hd265848265896%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265847265892%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl265849265899%_))
                                                          (let ((_%e265850265902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl265849265899%_))))
                    (let ((_%tl265852265909%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265850265902%_)))
                          (_%hd265851265906%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265850265902%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl265852265909%_))
                          (let ((_%e265853265912%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl265852265909%_))))
                            (let ((_%tl265855265919%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e265853265912%_)))
                                  (_%hd265854265916%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e265853265912%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl265855265919%_))
                                  (_%__kont266782266783%_
                                   _%hd265854265916%_
                                   _%hd265851265906%_
                                   _%hd265848265896%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g265801265861%_)))))
                          (let () (declare (not safe)) (_%g265801265861%_)))))
                  (let () (declare (not safe)) (_%g265801265861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g265801265861%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g265801265861%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g265801265861%_)))))
                        (let () (declare (not safe)) (_%g265801265861%_)))))
                (let () (declare (not safe)) (_%g265801265861%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx266107%_)
        (let* ((_%g266111266131%_
                (lambda (_%g266112266127%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g266112266127%_))))
               (_%g266110266200%_
                (lambda (_%g266112266135%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g266112266135%_))
                      (let ((_%e266114266138%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g266112266135%_))))
                        (let ((_%hd266115266142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e266114266138%_)))
                              (_%tl266116266145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e266114266138%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl266116266145%_))
                              (let ((_g266956_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl266116266145%_
                                        '0))))
                                (begin
                                  (let ((_g266957_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g266956_)
                                               (##values-length _g266956_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g266957_ 2)))
                                        (error "Context expects 2 values"
                                               _g266957_)))
                                  (let ((_%target266117266148%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266956_ 0)))
                                        (_%tl266119266151%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g266956_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl266119266151%_))
                                        (letrec ((_%loop266120266154%_
                                                  (lambda (_%hd266118266158%_
                                                           _%decl266124266161%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd266118266158%_))
                                                        (let ((_%e266121266163%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd266118266158%_))))
                  (let ((_%lp-hd266122266167%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266121266163%_)))
                        (_%lp-tl266123266170%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266121266163%_))))
                    (_%loop266120266154%_
                     _%lp-tl266123266170%_
                     (cons _%lp-hd266122266167%_ _%decl266124266161%_))))
                (let ((_%decl266125266173%_ (reverse _%decl266124266161%_)))
                  ((lambda (_%g266113266176%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp266958
                                  (lambda (_%g266191266194%_ _%g266192266197%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g266191266194%_)
                                          _%g266192266197%_))))
                             (declare (not safe))
                             (foldr__0 __tmp266958 '() _%g266113266176%_))))
                   _%decl266125266173%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop266120266154%_
                                           _%target266117266148%_
                                           '()))
                                        (_%g266111266131%_
                                         _%g266112266135%_)))))
                              (_%g266111266131%_ _%g266112266135%_))))
                      (_%g266111266131%_ _%g266112266135%_)))))
          (_%g266110266200%_ _%$stx266107%_))))))
