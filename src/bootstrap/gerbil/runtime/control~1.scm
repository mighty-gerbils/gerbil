(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g120871_|
    (gx#core-deserialize-mark
     '(0
       ($%arg120128 . _%$%arg120128120186%_)
       (id . _%id120153%_)
       ($%arg120129 . _%$%arg120129120200%_)
       (arg . _%arg120216%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120872_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120871_|)))
  (define |[1]#_g120874_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120875_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120874_|)))
  (define |[1]#_g120876_|
    (gx#core-deserialize-mark
     '(0
       ($%arg120249 . _%$%arg120249120306%_)
       (id . _%id120273%_)
       ($%arg120250 . _%$%arg120250120320%_)
       (arg . _%arg120336%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120877_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120876_|)))
  (define |[1]#_g120879_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120880_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120879_|)))
  (define |[1]#_g120881_|
    (gx#core-deserialize-mark
     '(0
       ($%arg120369 . _%$%arg120369120426%_)
       ($%arg120370 . _%$%arg120370120440%_)
       (id . _%id120393%_)
       (arg . _%arg120456%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g120882_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g120881_|)))
  (define |[1]#_g120884_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g120885_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g120884_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx120110%_)
        (let* ((_%__stx120780120781%_ _%$stx120110%_)
               (_%$%g120115120136%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120780120781%_))))
          (let ((_%__kont120783120784%_
                 (lambda (_%$%g120117120202%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120872_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp120873
                                                  (lambda (_%$%g120217120220%_
                                                           _%$%g120218120223%_)
                                                    (cons _%$%g120217120220%_
                                                          _%$%g120218120223%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120873
                                              '()
                                              _%$%g120117120202%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120875_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120787120788%_
                 (lambda (_%$%g120130120143%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%$%g120114120155%_
                    (lambda ()
                      (let ((_%$%g120130120143%_ _%__stx120780120781%_))
                        (if (gx#identifier? _%$%g120130120143%_)
                            (_%__kont120787120788%_ _%$%g120130120143%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g120115120136%_))))))
                   (_%__match120803120804%_
                    (lambda (_%$%e120118120162%_
                             _%$%hd120119120166%_
                             _%$%tl120120120169%_
                             _%__splice120785120786%_
                             _%$%target120121120172%_
                             _%$%tl120123120175%_)
                      (letrec ((_%$%loop120124120178%_
                                (lambda (_%$%hd120122120182%_
                                         _%$%arg120128120185%_)
                                  (if (gx#stx-pair? _%$%hd120122120182%_)
                                      (let ((_%$%e120125120188%_
                                             (gx#syntax-e
                                              _%$%hd120122120182%_)))
                                        (let ((_%$%lp-tl120127120195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e120125120188%_)))
                                              (_%$%lp-hd120126120192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e120125120188%_))))
                                          (_%$%loop120124120178%_
                                           _%$%lp-tl120127120195%_
                                           (cons _%$%lp-hd120126120192%_
                                                 _%$%arg120128120185%_))))
                                      (let ((_%$%arg120129120198%_
                                             (reverse _%$%arg120128120185%_)))
                                        (_%__kont120783120784%_
                                         _%$%arg120129120198%_))))))
                        (_%$%loop120124120178%_
                         _%$%target120121120172%_
                         '())))))
              (if (gx#stx-pair? _%__stx120780120781%_)
                  (let ((_%$%e120118120162%_
                         (gx#syntax-e _%__stx120780120781%_)))
                    (let ((_%$%tl120120120169%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e120118120162%_)))
                          (_%$%hd120119120166%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e120118120162%_))))
                      (if (gx#stx-pair/null? _%$%tl120120120169%_)
                          (let ((_%__splice120785120786%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl120120120169%_
                                  '0)))
                            (let ((_%$%tl120123120175%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120785120786%_
                                      '1)))
                                  (_%$%target120121120172%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120785120786%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl120123120175%_)
                                  (_%__match120803120804%_
                                   _%$%e120118120162%_
                                   _%$%hd120119120166%_
                                   _%$%tl120120120169%_
                                   _%__splice120785120786%_
                                   _%$%target120121120172%_
                                   _%$%tl120123120175%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g120114120155%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g120114120155%_)))))
                  (let () (declare (not safe)) (_%$%g120114120155%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx120231%_)
        (let* ((_%__stx120806120807%_ _%$stx120231%_)
               (_%$%g120236120257%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120806120807%_))))
          (let ((_%__kont120809120810%_
                 (lambda (_%$%g120238120322%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120877_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp120878
                                                  (lambda (_%$%g120337120340%_
                                                           _%$%g120338120343%_)
                                                    (cons _%$%g120337120340%_
                                                          _%$%g120338120343%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120878
                                              '()
                                              _%$%g120238120322%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120880_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-atomic-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120813120814%_
                 (lambda (_%$%g120251120264%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%$%g120235120275%_
                    (lambda ()
                      (let ((_%$%g120251120264%_ _%__stx120806120807%_))
                        (if (gx#identifier? _%$%g120251120264%_)
                            (_%__kont120813120814%_ _%$%g120251120264%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g120236120257%_))))))
                   (_%__match120829120830%_
                    (lambda (_%$%e120239120282%_
                             _%$%hd120240120286%_
                             _%$%tl120241120289%_
                             _%__splice120811120812%_
                             _%$%target120242120292%_
                             _%$%tl120244120295%_)
                      (letrec ((_%$%loop120245120298%_
                                (lambda (_%$%hd120243120302%_
                                         _%$%arg120249120305%_)
                                  (if (gx#stx-pair? _%$%hd120243120302%_)
                                      (let ((_%$%e120246120308%_
                                             (gx#syntax-e
                                              _%$%hd120243120302%_)))
                                        (let ((_%$%lp-tl120248120315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e120246120308%_)))
                                              (_%$%lp-hd120247120312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e120246120308%_))))
                                          (_%$%loop120245120298%_
                                           _%$%lp-tl120248120315%_
                                           (cons _%$%lp-hd120247120312%_
                                                 _%$%arg120249120305%_))))
                                      (let ((_%$%arg120250120318%_
                                             (reverse _%$%arg120249120305%_)))
                                        (_%__kont120809120810%_
                                         _%$%arg120250120318%_))))))
                        (_%$%loop120245120298%_
                         _%$%target120242120292%_
                         '())))))
              (if (gx#stx-pair? _%__stx120806120807%_)
                  (let ((_%$%e120239120282%_
                         (gx#syntax-e _%__stx120806120807%_)))
                    (let ((_%$%tl120241120289%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e120239120282%_)))
                          (_%$%hd120240120286%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e120239120282%_))))
                      (if (gx#stx-pair/null? _%$%tl120241120289%_)
                          (let ((_%__splice120811120812%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl120241120289%_
                                  '0)))
                            (let ((_%$%tl120244120295%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120811120812%_
                                      '1)))
                                  (_%$%target120242120292%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120811120812%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl120244120295%_)
                                  (_%__match120829120830%_
                                   _%$%e120239120282%_
                                   _%$%hd120240120286%_
                                   _%$%tl120241120289%_
                                   _%__splice120811120812%_
                                   _%$%target120242120292%_
                                   _%$%tl120244120295%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g120235120275%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g120235120275%_)))))
                  (let () (declare (not safe)) (_%$%g120235120275%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx120351%_)
        (let* ((_%__stx120832120833%_ _%$stx120351%_)
               (_%$%g120356120377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx120832120833%_))))
          (let ((_%__kont120835120836%_
                 (lambda (_%$%g120358120442%_)
                   (cons (gx#datum->syntax
                          |[1]#_g120882_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp120883
                                                  (lambda (_%$%g120457120460%_
                                                           _%$%g120458120463%_)
                                                    (cons _%$%g120457120460%_
                                                          _%$%g120458120463%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp120883
                                              '()
                                              _%$%g120358120442%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g120885_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'K)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               (cons (cons (gx#datum->syntax '#f 'fini)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':procedure)
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__with-unwind-protect)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'K)
                           (cons (gx#datum->syntax '#f 'fini) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont120839120840%_
                 (lambda (_%$%g120371120384%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%$%g120355120395%_
                    (lambda ()
                      (let ((_%$%g120371120384%_ _%__stx120832120833%_))
                        (if (gx#identifier? _%$%g120371120384%_)
                            (_%__kont120839120840%_ _%$%g120371120384%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g120356120377%_))))))
                   (_%__match120855120856%_
                    (lambda (_%$%e120359120402%_
                             _%$%hd120360120406%_
                             _%$%tl120361120409%_
                             _%__splice120837120838%_
                             _%$%target120362120412%_
                             _%$%tl120364120415%_)
                      (letrec ((_%$%loop120365120418%_
                                (lambda (_%$%hd120363120422%_
                                         _%$%arg120369120425%_)
                                  (if (gx#stx-pair? _%$%hd120363120422%_)
                                      (let ((_%$%e120366120428%_
                                             (gx#syntax-e
                                              _%$%hd120363120422%_)))
                                        (let ((_%$%lp-tl120368120435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e120366120428%_)))
                                              (_%$%lp-hd120367120432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e120366120428%_))))
                                          (_%$%loop120365120418%_
                                           _%$%lp-tl120368120435%_
                                           (cons _%$%lp-hd120367120432%_
                                                 _%$%arg120369120425%_))))
                                      (let ((_%$%arg120370120438%_
                                             (reverse _%$%arg120369120425%_)))
                                        (_%__kont120835120836%_
                                         _%$%arg120370120438%_))))))
                        (_%$%loop120365120418%_
                         _%$%target120362120412%_
                         '())))))
              (if (gx#stx-pair? _%__stx120832120833%_)
                  (let ((_%$%e120359120402%_
                         (gx#syntax-e _%__stx120832120833%_)))
                    (let ((_%$%tl120361120409%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e120359120402%_)))
                          (_%$%hd120360120406%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e120359120402%_))))
                      (if (gx#stx-pair/null? _%$%tl120361120409%_)
                          (let ((_%__splice120837120838%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl120361120409%_
                                  '0)))
                            (let ((_%$%tl120364120415%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120837120838%_
                                      '1)))
                                  (_%$%target120362120412%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice120837120838%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl120364120415%_)
                                  (_%__match120855120856%_
                                   _%$%e120359120402%_
                                   _%$%hd120360120406%_
                                   _%$%tl120361120409%_
                                   _%__splice120837120838%_
                                   _%$%target120362120412%_
                                   _%$%tl120364120415%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g120355120395%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g120355120395%_)))))
                  (let () (declare (not safe)) (_%$%g120355120395%_))))))))))
