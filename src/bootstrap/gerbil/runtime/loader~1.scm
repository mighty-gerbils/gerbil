(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g170579_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg169481%_)
       (id . _%id169418%_)
       (arg169393 . _%arg169393169451%_)
       (arg169394 . _%arg169394169465%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170580_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170579_|)))
  (define |[1]#_g170582_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170583_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170582_|)))
  (define |[1]#_g170584_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg169615%_)
       (id . _%id169552%_)
       (arg169528 . _%arg169528169585%_)
       (arg169529 . _%arg169529169599%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170585_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170584_|)))
  (define |[1]#_g170587_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170588_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170587_|)))
  (define |[1]#_g170589_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg169749%_)
       (id . _%id169686%_)
       (arg169663 . _%arg169663169733%_)
       (arg169662 . _%arg169662169719%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170590_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170589_|)))
  (define |[1]#_g170592_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170593_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170592_|)))
  (define |[1]#_g170594_|
    (gx#core-deserialize-mark
     '(0
       (arg169797 . _%arg169797169867%_)
       (arg . _%arg169883%_)
       (id . _%id169820%_)
       (arg169796 . _%arg169796169853%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170595_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170594_|)))
  (define |[1]#_g170597_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170598_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170597_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx169375%_)
        (let* ((_%__stx170470170471%_ _%$stx169375%_)
               (_%g169380169401%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170470170471%_))))
          (let ((_%__kont170473170474%_
                 (lambda (_%g169382169467%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170580_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp170581
                                                  (lambda (_%g169482169485%_
                                                           _%g169483169488%_)
                                                    (cons _%g169482169485%_
                                                          _%g169483169488%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170581
                                              '()
                                              _%g169382169467%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170583_|
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
                (_%__kont170477170478%_
                 (lambda (_%g169395169408%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g169379169420%_
                    (lambda ()
                      (let ((_%g169395169408%_ _%__stx170470170471%_))
                        (if (gx#identifier? _%g169395169408%_)
                            (_%__kont170477170478%_ _%g169395169408%_)
                            (let ()
                              (declare (not safe))
                              (_%g169380169401%_))))))
                   (_%__match170493170494%_
                    (lambda (_%e169383169427%_
                             _%hd169384169431%_
                             _%tl169385169434%_
                             _%__splice170475170476%_
                             _%target169386169437%_
                             _%tl169388169440%_)
                      (letrec ((_%loop169389169443%_
                                (lambda (_%hd169387169447%_
                                         _%arg169393169450%_)
                                  (if (gx#stx-pair? _%hd169387169447%_)
                                      (let ((_%e169390169453%_
                                             (gx#syntax-e _%hd169387169447%_)))
                                        (let ((_%lp-tl169392169460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169390169453%_)))
                                              (_%lp-hd169391169457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169390169453%_))))
                                          (_%loop169389169443%_
                                           _%lp-tl169392169460%_
                                           (cons _%lp-hd169391169457%_
                                                 _%arg169393169450%_))))
                                      (let ((_%arg169394169463%_
                                             (reverse _%arg169393169450%_)))
                                        (_%__kont170473170474%_
                                         _%arg169394169463%_))))))
                        (_%loop169389169443%_ _%target169386169437%_ '())))))
              (if (gx#stx-pair? _%__stx170470170471%_)
                  (let ((_%e169383169427%_
                         (gx#syntax-e _%__stx170470170471%_)))
                    (let ((_%tl169385169434%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169383169427%_)))
                          (_%hd169384169431%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169383169427%_))))
                      (if (gx#stx-pair/null? _%tl169385169434%_)
                          (let ((_%__splice170475170476%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169385169434%_
                                  '0)))
                            (let ((_%tl169388169440%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170475170476%_
                                      '1)))
                                  (_%target169386169437%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170475170476%_
                                      '0))))
                              (if (gx#stx-null? _%tl169388169440%_)
                                  (_%__match170493170494%_
                                   _%e169383169427%_
                                   _%hd169384169431%_
                                   _%tl169385169434%_
                                   _%__splice170475170476%_
                                   _%target169386169437%_
                                   _%tl169388169440%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169379169420%_)))))
                          (let () (declare (not safe)) (_%g169379169420%_)))))
                  (let () (declare (not safe)) (_%g169379169420%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx169510%_)
        (let* ((_%__stx170496170497%_ _%$stx169510%_)
               (_%g169515169536%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170496170497%_))))
          (let ((_%__kont170499170500%_
                 (lambda (_%g169517169601%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170585_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170586
                                                  (lambda (_%g169616169619%_
                                                           _%g169617169622%_)
                                                    (cons _%g169616169619%_
                                                          _%g169617169622%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170586
                                              '()
                                              _%g169517169601%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170588_|
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
                (_%__kont170503170504%_
                 (lambda (_%g169530169543%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g169514169554%_
                    (lambda ()
                      (let ((_%g169530169543%_ _%__stx170496170497%_))
                        (if (gx#identifier? _%g169530169543%_)
                            (_%__kont170503170504%_ _%g169530169543%_)
                            (let ()
                              (declare (not safe))
                              (_%g169515169536%_))))))
                   (_%__match170519170520%_
                    (lambda (_%e169518169561%_
                             _%hd169519169565%_
                             _%tl169520169568%_
                             _%__splice170501170502%_
                             _%target169521169571%_
                             _%tl169523169574%_)
                      (letrec ((_%loop169524169577%_
                                (lambda (_%hd169522169581%_
                                         _%arg169528169584%_)
                                  (if (gx#stx-pair? _%hd169522169581%_)
                                      (let ((_%e169525169587%_
                                             (gx#syntax-e _%hd169522169581%_)))
                                        (let ((_%lp-tl169527169594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169525169587%_)))
                                              (_%lp-hd169526169591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169525169587%_))))
                                          (_%loop169524169577%_
                                           _%lp-tl169527169594%_
                                           (cons _%lp-hd169526169591%_
                                                 _%arg169528169584%_))))
                                      (let ((_%arg169529169597%_
                                             (reverse _%arg169528169584%_)))
                                        (_%__kont170499170500%_
                                         _%arg169529169597%_))))))
                        (_%loop169524169577%_ _%target169521169571%_ '())))))
              (if (gx#stx-pair? _%__stx170496170497%_)
                  (let ((_%e169518169561%_
                         (gx#syntax-e _%__stx170496170497%_)))
                    (let ((_%tl169520169568%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169518169561%_)))
                          (_%hd169519169565%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169518169561%_))))
                      (if (gx#stx-pair/null? _%tl169520169568%_)
                          (let ((_%__splice170501170502%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169520169568%_
                                  '0)))
                            (let ((_%tl169523169574%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170501170502%_
                                      '1)))
                                  (_%target169521169571%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170501170502%_
                                      '0))))
                              (if (gx#stx-null? _%tl169523169574%_)
                                  (_%__match170519170520%_
                                   _%e169518169561%_
                                   _%hd169519169565%_
                                   _%tl169520169568%_
                                   _%__splice170501170502%_
                                   _%target169521169571%_
                                   _%tl169523169574%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169514169554%_)))))
                          (let () (declare (not safe)) (_%g169514169554%_)))))
                  (let () (declare (not safe)) (_%g169514169554%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx169644%_)
        (let* ((_%__stx170522170523%_ _%$stx169644%_)
               (_%g169649169670%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170522170523%_))))
          (let ((_%__kont170525170526%_
                 (lambda (_%g169651169735%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170590_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170591
                                                  (lambda (_%g169750169753%_
                                                           _%g169751169756%_)
                                                    (cons _%g169750169753%_
                                                          _%g169751169756%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170591
                                              '()
                                              _%g169651169735%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170593_|
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
                (_%__kont170529170530%_
                 (lambda (_%g169664169677%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g169648169688%_
                    (lambda ()
                      (let ((_%g169664169677%_ _%__stx170522170523%_))
                        (if (gx#identifier? _%g169664169677%_)
                            (_%__kont170529170530%_ _%g169664169677%_)
                            (let ()
                              (declare (not safe))
                              (_%g169649169670%_))))))
                   (_%__match170545170546%_
                    (lambda (_%e169652169695%_
                             _%hd169653169699%_
                             _%tl169654169702%_
                             _%__splice170527170528%_
                             _%target169655169705%_
                             _%tl169657169708%_)
                      (letrec ((_%loop169658169711%_
                                (lambda (_%hd169656169715%_
                                         _%arg169662169718%_)
                                  (if (gx#stx-pair? _%hd169656169715%_)
                                      (let ((_%e169659169721%_
                                             (gx#syntax-e _%hd169656169715%_)))
                                        (let ((_%lp-tl169661169728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169659169721%_)))
                                              (_%lp-hd169660169725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169659169721%_))))
                                          (_%loop169658169711%_
                                           _%lp-tl169661169728%_
                                           (cons _%lp-hd169660169725%_
                                                 _%arg169662169718%_))))
                                      (let ((_%arg169663169731%_
                                             (reverse _%arg169662169718%_)))
                                        (_%__kont170525170526%_
                                         _%arg169663169731%_))))))
                        (_%loop169658169711%_ _%target169655169705%_ '())))))
              (if (gx#stx-pair? _%__stx170522170523%_)
                  (let ((_%e169652169695%_
                         (gx#syntax-e _%__stx170522170523%_)))
                    (let ((_%tl169654169702%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169652169695%_)))
                          (_%hd169653169699%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169652169695%_))))
                      (if (gx#stx-pair/null? _%tl169654169702%_)
                          (let ((_%__splice170527170528%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169654169702%_
                                  '0)))
                            (let ((_%tl169657169708%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170527170528%_
                                      '1)))
                                  (_%target169655169705%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170527170528%_
                                      '0))))
                              (if (gx#stx-null? _%tl169657169708%_)
                                  (_%__match170545170546%_
                                   _%e169652169695%_
                                   _%hd169653169699%_
                                   _%tl169654169702%_
                                   _%__splice170527170528%_
                                   _%target169655169705%_
                                   _%tl169657169708%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169648169688%_)))))
                          (let () (declare (not safe)) (_%g169648169688%_)))))
                  (let () (declare (not safe)) (_%g169648169688%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx169778%_)
        (let* ((_%__stx170548170549%_ _%$stx169778%_)
               (_%g169783169804%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170548170549%_))))
          (let ((_%__kont170551170552%_
                 (lambda (_%g169785169869%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170595_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170596
                                                  (lambda (_%g169884169887%_
                                                           _%g169885169890%_)
                                                    (cons _%g169884169887%_
                                                          _%g169885169890%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170596
                                              '()
                                              _%g169785169869%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170598_|
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
                (_%__kont170555170556%_
                 (lambda (_%g169798169811%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g169782169822%_
                    (lambda ()
                      (let ((_%g169798169811%_ _%__stx170548170549%_))
                        (if (gx#identifier? _%g169798169811%_)
                            (_%__kont170555170556%_ _%g169798169811%_)
                            (let ()
                              (declare (not safe))
                              (_%g169783169804%_))))))
                   (_%__match170571170572%_
                    (lambda (_%e169786169829%_
                             _%hd169787169833%_
                             _%tl169788169836%_
                             _%__splice170553170554%_
                             _%target169789169839%_
                             _%tl169791169842%_)
                      (letrec ((_%loop169792169845%_
                                (lambda (_%hd169790169849%_
                                         _%arg169796169852%_)
                                  (if (gx#stx-pair? _%hd169790169849%_)
                                      (let ((_%e169793169855%_
                                             (gx#syntax-e _%hd169790169849%_)))
                                        (let ((_%lp-tl169795169862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169793169855%_)))
                                              (_%lp-hd169794169859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169793169855%_))))
                                          (_%loop169792169845%_
                                           _%lp-tl169795169862%_
                                           (cons _%lp-hd169794169859%_
                                                 _%arg169796169852%_))))
                                      (let ((_%arg169797169865%_
                                             (reverse _%arg169796169852%_)))
                                        (_%__kont170551170552%_
                                         _%arg169797169865%_))))))
                        (_%loop169792169845%_ _%target169789169839%_ '())))))
              (if (gx#stx-pair? _%__stx170548170549%_)
                  (let ((_%e169786169829%_
                         (gx#syntax-e _%__stx170548170549%_)))
                    (let ((_%tl169788169836%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169786169829%_)))
                          (_%hd169787169833%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169786169829%_))))
                      (if (gx#stx-pair/null? _%tl169788169836%_)
                          (let ((_%__splice170553170554%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169788169836%_
                                  '0)))
                            (let ((_%tl169791169842%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170553170554%_
                                      '1)))
                                  (_%target169789169839%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170553170554%_
                                      '0))))
                              (if (gx#stx-null? _%tl169791169842%_)
                                  (_%__match170571170572%_
                                   _%e169786169829%_
                                   _%hd169787169833%_
                                   _%tl169788169836%_
                                   _%__splice170553170554%_
                                   _%target169789169839%_
                                   _%tl169791169842%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169782169822%_)))))
                          (let () (declare (not safe)) (_%g169782169822%_)))))
                  (let () (declare (not safe)) (_%g169782169822%_))))))))))
