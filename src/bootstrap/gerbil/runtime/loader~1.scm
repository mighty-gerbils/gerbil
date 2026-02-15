(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g170632_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg169534%_)
       (id . _%id169471%_)
       (arg169447 . _%arg169447169518%_)
       (arg169446 . _%arg169446169504%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170633_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170632_|)))
  (define |[1]#_g170635_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170636_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170635_|)))
  (define |[1]#_g170637_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg169668%_)
       (id . _%id169605%_)
       (arg169582 . _%arg169582169652%_)
       (arg169581 . _%arg169581169638%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170638_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170637_|)))
  (define |[1]#_g170640_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170641_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170640_|)))
  (define |[1]#_g170642_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg169802%_)
       (id . _%id169739%_)
       (arg169715 . _%arg169715169772%_)
       (arg169716 . _%arg169716169786%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170643_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170642_|)))
  (define |[1]#_g170645_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170646_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170645_|)))
  (define |[1]#_g170647_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg169936%_)
       (id . _%id169873%_)
       (arg169850 . _%arg169850169920%_)
       (arg169849 . _%arg169849169906%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170648_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170647_|)))
  (define |[1]#_g170650_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170651_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170650_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx169428%_)
        (let* ((_%__stx170523170524%_ _%$stx169428%_)
               (_%g169433169454%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170523170524%_))))
          (let ((_%__kont170526170527%_
                 (lambda (_%g169435169520%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170633_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp170634
                                                  (lambda (_%g169535169538%_
                                                           _%g169536169541%_)
                                                    (cons _%g169535169538%_
                                                          _%g169536169541%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170634
                                              '()
                                              _%g169435169520%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170636_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'paths)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__set-load-path!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'paths)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont170530170531%_
                 (lambda (_%g169448169461%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g169432169473%_
                    (lambda ()
                      (let ((_%g169448169461%_ _%__stx170523170524%_))
                        (if (gx#identifier? _%g169448169461%_)
                            (_%__kont170530170531%_ _%g169448169461%_)
                            (let ()
                              (declare (not safe))
                              (_%g169433169454%_))))))
                   (_%__match170546170547%_
                    (lambda (_%e169436169480%_
                             _%hd169437169484%_
                             _%tl169438169487%_
                             _%__splice170528170529%_
                             _%target169439169490%_
                             _%tl169441169493%_)
                      (letrec ((_%loop169442169496%_
                                (lambda (_%hd169440169500%_
                                         _%arg169446169503%_)
                                  (if (gx#stx-pair? _%hd169440169500%_)
                                      (let ((_%e169443169506%_
                                             (gx#syntax-e _%hd169440169500%_)))
                                        (let ((_%lp-tl169445169513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169443169506%_)))
                                              (_%lp-hd169444169510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169443169506%_))))
                                          (_%loop169442169496%_
                                           _%lp-tl169445169513%_
                                           (cons _%lp-hd169444169510%_
                                                 _%arg169446169503%_))))
                                      (let ((_%arg169447169516%_
                                             (reverse _%arg169446169503%_)))
                                        (_%__kont170526170527%_
                                         _%arg169447169516%_))))))
                        (_%loop169442169496%_ _%target169439169490%_ '())))))
              (if (gx#stx-pair? _%__stx170523170524%_)
                  (let ((_%e169436169480%_
                         (gx#syntax-e _%__stx170523170524%_)))
                    (let ((_%tl169438169487%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169436169480%_)))
                          (_%hd169437169484%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169436169480%_))))
                      (if (gx#stx-pair/null? _%tl169438169487%_)
                          (let ((_%__splice170528170529%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169438169487%_
                                  '0)))
                            (let ((_%tl169441169493%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170528170529%_
                                      '1)))
                                  (_%target169439169490%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170528170529%_
                                      '0))))
                              (if (gx#stx-null? _%tl169441169493%_)
                                  (_%__match170546170547%_
                                   _%e169436169480%_
                                   _%hd169437169484%_
                                   _%tl169438169487%_
                                   _%__splice170528170529%_
                                   _%target169439169490%_
                                   _%tl169441169493%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169432169473%_)))))
                          (let () (declare (not safe)) (_%g169432169473%_)))))
                  (let () (declare (not safe)) (_%g169432169473%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx169563%_)
        (let* ((_%__stx170549170550%_ _%$stx169563%_)
               (_%g169568169589%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170549170550%_))))
          (let ((_%__kont170552170553%_
                 (lambda (_%g169570169654%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170638_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170639
                                                  (lambda (_%g169669169672%_
                                                           _%g169670169675%_)
                                                    (cons _%g169669169672%_
                                                          _%g169670169675%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170639
                                              '()
                                              _%g169570169654%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170641_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__load-module)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont170556170557%_
                 (lambda (_%g169583169596%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g169567169607%_
                    (lambda ()
                      (let ((_%g169583169596%_ _%__stx170549170550%_))
                        (if (gx#identifier? _%g169583169596%_)
                            (_%__kont170556170557%_ _%g169583169596%_)
                            (let ()
                              (declare (not safe))
                              (_%g169568169589%_))))))
                   (_%__match170572170573%_
                    (lambda (_%e169571169614%_
                             _%hd169572169618%_
                             _%tl169573169621%_
                             _%__splice170554170555%_
                             _%target169574169624%_
                             _%tl169576169627%_)
                      (letrec ((_%loop169577169630%_
                                (lambda (_%hd169575169634%_
                                         _%arg169581169637%_)
                                  (if (gx#stx-pair? _%hd169575169634%_)
                                      (let ((_%e169578169640%_
                                             (gx#syntax-e _%hd169575169634%_)))
                                        (let ((_%lp-tl169580169647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169578169640%_)))
                                              (_%lp-hd169579169644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169578169640%_))))
                                          (_%loop169577169630%_
                                           _%lp-tl169580169647%_
                                           (cons _%lp-hd169579169644%_
                                                 _%arg169581169637%_))))
                                      (let ((_%arg169582169650%_
                                             (reverse _%arg169581169637%_)))
                                        (_%__kont170552170553%_
                                         _%arg169582169650%_))))))
                        (_%loop169577169630%_ _%target169574169624%_ '())))))
              (if (gx#stx-pair? _%__stx170549170550%_)
                  (let ((_%e169571169614%_
                         (gx#syntax-e _%__stx170549170550%_)))
                    (let ((_%tl169573169621%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169571169614%_)))
                          (_%hd169572169618%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169571169614%_))))
                      (if (gx#stx-pair/null? _%tl169573169621%_)
                          (let ((_%__splice170554170555%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169573169621%_
                                  '0)))
                            (let ((_%tl169576169627%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170554170555%_
                                      '1)))
                                  (_%target169574169624%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170554170555%_
                                      '0))))
                              (if (gx#stx-null? _%tl169576169627%_)
                                  (_%__match170572170573%_
                                   _%e169571169614%_
                                   _%hd169572169618%_
                                   _%tl169573169621%_
                                   _%__splice170554170555%_
                                   _%target169574169624%_
                                   _%tl169576169627%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169567169607%_)))))
                          (let () (declare (not safe)) (_%g169567169607%_)))))
                  (let () (declare (not safe)) (_%g169567169607%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx169697%_)
        (let* ((_%__stx170575170576%_ _%$stx169697%_)
               (_%g169702169723%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170575170576%_))))
          (let ((_%__kont170578170579%_
                 (lambda (_%g169704169788%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170643_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170644
                                                  (lambda (_%g169803169806%_
                                                           _%g169804169809%_)
                                                    (cons _%g169803169806%_
                                                          _%g169804169809%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170644
                                              '()
                                              _%g169704169788%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170646_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__reload-module!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont170582170583%_
                 (lambda (_%g169717169730%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g169701169741%_
                    (lambda ()
                      (let ((_%g169717169730%_ _%__stx170575170576%_))
                        (if (gx#identifier? _%g169717169730%_)
                            (_%__kont170582170583%_ _%g169717169730%_)
                            (let ()
                              (declare (not safe))
                              (_%g169702169723%_))))))
                   (_%__match170598170599%_
                    (lambda (_%e169705169748%_
                             _%hd169706169752%_
                             _%tl169707169755%_
                             _%__splice170580170581%_
                             _%target169708169758%_
                             _%tl169710169761%_)
                      (letrec ((_%loop169711169764%_
                                (lambda (_%hd169709169768%_
                                         _%arg169715169771%_)
                                  (if (gx#stx-pair? _%hd169709169768%_)
                                      (let ((_%e169712169774%_
                                             (gx#syntax-e _%hd169709169768%_)))
                                        (let ((_%lp-tl169714169781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169712169774%_)))
                                              (_%lp-hd169713169778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169712169774%_))))
                                          (_%loop169711169764%_
                                           _%lp-tl169714169781%_
                                           (cons _%lp-hd169713169778%_
                                                 _%arg169715169771%_))))
                                      (let ((_%arg169716169784%_
                                             (reverse _%arg169715169771%_)))
                                        (_%__kont170578170579%_
                                         _%arg169716169784%_))))))
                        (_%loop169711169764%_ _%target169708169758%_ '())))))
              (if (gx#stx-pair? _%__stx170575170576%_)
                  (let ((_%e169705169748%_
                         (gx#syntax-e _%__stx170575170576%_)))
                    (let ((_%tl169707169755%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169705169748%_)))
                          (_%hd169706169752%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169705169748%_))))
                      (if (gx#stx-pair/null? _%tl169707169755%_)
                          (let ((_%__splice170580170581%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169707169755%_
                                  '0)))
                            (let ((_%tl169710169761%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170580170581%_
                                      '1)))
                                  (_%target169708169758%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170580170581%_
                                      '0))))
                              (if (gx#stx-null? _%tl169710169761%_)
                                  (_%__match170598170599%_
                                   _%e169705169748%_
                                   _%hd169706169752%_
                                   _%tl169707169755%_
                                   _%__splice170580170581%_
                                   _%target169708169758%_
                                   _%tl169710169761%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169701169741%_)))))
                          (let () (declare (not safe)) (_%g169701169741%_)))))
                  (let () (declare (not safe)) (_%g169701169741%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx169831%_)
        (let* ((_%__stx170601170602%_ _%$stx169831%_)
               (_%g169836169857%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170601170602%_))))
          (let ((_%__kont170604170605%_
                 (lambda (_%g169838169922%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170648_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170649
                                                  (lambda (_%g169937169940%_
                                                           _%g169938169943%_)
                                                    (cons _%g169937169940%_
                                                          _%g169938169943%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170649
                                              '()
                                              _%g169838169922%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170651_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__module-load-order)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont170608170609%_
                 (lambda (_%g169851169864%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g169835169875%_
                    (lambda ()
                      (let ((_%g169851169864%_ _%__stx170601170602%_))
                        (if (gx#identifier? _%g169851169864%_)
                            (_%__kont170608170609%_ _%g169851169864%_)
                            (let ()
                              (declare (not safe))
                              (_%g169836169857%_))))))
                   (_%__match170624170625%_
                    (lambda (_%e169839169882%_
                             _%hd169840169886%_
                             _%tl169841169889%_
                             _%__splice170606170607%_
                             _%target169842169892%_
                             _%tl169844169895%_)
                      (letrec ((_%loop169845169898%_
                                (lambda (_%hd169843169902%_
                                         _%arg169849169905%_)
                                  (if (gx#stx-pair? _%hd169843169902%_)
                                      (let ((_%e169846169908%_
                                             (gx#syntax-e _%hd169843169902%_)))
                                        (let ((_%lp-tl169848169915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169846169908%_)))
                                              (_%lp-hd169847169912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169846169908%_))))
                                          (_%loop169845169898%_
                                           _%lp-tl169848169915%_
                                           (cons _%lp-hd169847169912%_
                                                 _%arg169849169905%_))))
                                      (let ((_%arg169850169918%_
                                             (reverse _%arg169849169905%_)))
                                        (_%__kont170604170605%_
                                         _%arg169850169918%_))))))
                        (_%loop169845169898%_ _%target169842169892%_ '())))))
              (if (gx#stx-pair? _%__stx170601170602%_)
                  (let ((_%e169839169882%_
                         (gx#syntax-e _%__stx170601170602%_)))
                    (let ((_%tl169841169889%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169839169882%_)))
                          (_%hd169840169886%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169839169882%_))))
                      (if (gx#stx-pair/null? _%tl169841169889%_)
                          (let ((_%__splice170606170607%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169841169889%_
                                  '0)))
                            (let ((_%tl169844169895%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170606170607%_
                                      '1)))
                                  (_%target169842169892%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170606170607%_
                                      '0))))
                              (if (gx#stx-null? _%tl169844169895%_)
                                  (_%__match170624170625%_
                                   _%e169839169882%_
                                   _%hd169840169886%_
                                   _%tl169841169889%_
                                   _%__splice170606170607%_
                                   _%target169842169892%_
                                   _%tl169844169895%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169835169875%_)))))
                          (let () (declare (not safe)) (_%g169835169875%_)))))
                  (let () (declare (not safe)) (_%g169835169875%_))))))))))
