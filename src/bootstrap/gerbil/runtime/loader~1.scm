(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g176622_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg175560%_)
       (id . _%id175497%_)
       ($%arg175473 . _%$%arg175473175544%_)
       ($%arg175472 . _%$%arg175472175530%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g176623_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g176622_|)))
  (define |[1]#_g176625_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g176626_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g176625_|)))
  (define |[1]#_g176627_|
    (gx#core-deserialize-mark
     '(0
       ($%arg175594 . _%$%arg175594175664%_)
       (arg . _%arg175680%_)
       ($%arg175593 . _%$%arg175593175650%_)
       (id . _%id175617%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g176628_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g176627_|)))
  (define |[1]#_g176630_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g176631_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g176630_|)))
  (define |[1]#_g176632_|
    (gx#core-deserialize-mark
     '(0
       ($%arg175713 . _%$%arg175713175770%_)
       (arg . _%arg175800%_)
       (id . _%id175737%_)
       ($%arg175714 . _%$%arg175714175784%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g176633_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g176632_|)))
  (define |[1]#_g176635_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g176636_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g176635_|)))
  (define |[1]#_g176637_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg175920%_)
       (id . _%id175857%_)
       ($%arg175834 . _%$%arg175834175904%_)
       ($%arg175833 . _%$%arg175833175890%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g176638_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g176637_|)))
  (define |[1]#_g176640_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g176641_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g176640_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx175454%_)
        (let* ((_%__stx176513176514%_ _%$stx175454%_)
               (_%$%g175459175480%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx176513176514%_))))
          (let ((_%__kont176516176517%_
                 (lambda (_%$%g175461175546%_)
                   (cons (gx#datum->syntax
                          |[1]#_g176623_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp176624
                                                  (lambda (_%$%g175561175564%_
                                                           _%$%g175562175567%_)
                                                    (cons _%$%g175561175564%_
                                                          _%$%g175562175567%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp176624
                                              '()
                                              _%$%g175461175546%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g176626_|
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
                (_%__kont176520176521%_
                 (lambda (_%$%g175474175487%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%$%g175458175499%_
                    (lambda ()
                      (let ((_%$%g175474175487%_ _%__stx176513176514%_))
                        (if (gx#identifier? _%$%g175474175487%_)
                            (_%__kont176520176521%_ _%$%g175474175487%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g175459175480%_))))))
                   (_%__match176536176537%_
                    (lambda (_%$%e175462175506%_
                             _%$%hd175463175510%_
                             _%$%tl175464175513%_
                             _%__splice176518176519%_
                             _%$%target175465175516%_
                             _%$%tl175467175519%_)
                      (letrec ((_%$%loop175468175522%_
                                (lambda (_%$%hd175466175526%_
                                         _%$%arg175472175529%_)
                                  (if (gx#stx-pair? _%$%hd175466175526%_)
                                      (let ((_%$%e175469175532%_
                                             (gx#syntax-e
                                              _%$%hd175466175526%_)))
                                        (let ((_%$%lp-tl175471175539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e175469175532%_)))
                                              (_%$%lp-hd175470175536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e175469175532%_))))
                                          (_%$%loop175468175522%_
                                           _%$%lp-tl175471175539%_
                                           (cons _%$%lp-hd175470175536%_
                                                 _%$%arg175472175529%_))))
                                      (let ((_%$%arg175473175542%_
                                             (reverse _%$%arg175472175529%_)))
                                        (_%__kont176516176517%_
                                         _%$%arg175473175542%_))))))
                        (_%$%loop175468175522%_
                         _%$%target175465175516%_
                         '())))))
              (if (gx#stx-pair? _%__stx176513176514%_)
                  (let ((_%$%e175462175506%_
                         (gx#syntax-e _%__stx176513176514%_)))
                    (let ((_%$%tl175464175513%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e175462175506%_)))
                          (_%$%hd175463175510%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e175462175506%_))))
                      (if (gx#stx-pair/null? _%$%tl175464175513%_)
                          (let ((_%__splice176518176519%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl175464175513%_
                                  '0)))
                            (let ((_%$%tl175467175519%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176518176519%_
                                      '1)))
                                  (_%$%target175465175516%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176518176519%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl175467175519%_)
                                  (_%__match176536176537%_
                                   _%$%e175462175506%_
                                   _%$%hd175463175510%_
                                   _%$%tl175464175513%_
                                   _%__splice176518176519%_
                                   _%$%target175465175516%_
                                   _%$%tl175467175519%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g175458175499%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g175458175499%_)))))
                  (let () (declare (not safe)) (_%$%g175458175499%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx175575%_)
        (let* ((_%__stx176539176540%_ _%$stx175575%_)
               (_%$%g175580175601%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx176539176540%_))))
          (let ((_%__kont176542176543%_
                 (lambda (_%$%g175582175666%_)
                   (cons (gx#datum->syntax
                          |[1]#_g176628_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp176629
                                                  (lambda (_%$%g175681175684%_
                                                           _%$%g175682175687%_)
                                                    (cons _%$%g175681175684%_
                                                          _%$%g175682175687%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp176629
                                              '()
                                              _%$%g175582175666%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g176631_|
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
                (_%__kont176546176547%_
                 (lambda (_%$%g175595175608%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%$%g175579175619%_
                    (lambda ()
                      (let ((_%$%g175595175608%_ _%__stx176539176540%_))
                        (if (gx#identifier? _%$%g175595175608%_)
                            (_%__kont176546176547%_ _%$%g175595175608%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g175580175601%_))))))
                   (_%__match176562176563%_
                    (lambda (_%$%e175583175626%_
                             _%$%hd175584175630%_
                             _%$%tl175585175633%_
                             _%__splice176544176545%_
                             _%$%target175586175636%_
                             _%$%tl175588175639%_)
                      (letrec ((_%$%loop175589175642%_
                                (lambda (_%$%hd175587175646%_
                                         _%$%arg175593175649%_)
                                  (if (gx#stx-pair? _%$%hd175587175646%_)
                                      (let ((_%$%e175590175652%_
                                             (gx#syntax-e
                                              _%$%hd175587175646%_)))
                                        (let ((_%$%lp-tl175592175659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e175590175652%_)))
                                              (_%$%lp-hd175591175656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e175590175652%_))))
                                          (_%$%loop175589175642%_
                                           _%$%lp-tl175592175659%_
                                           (cons _%$%lp-hd175591175656%_
                                                 _%$%arg175593175649%_))))
                                      (let ((_%$%arg175594175662%_
                                             (reverse _%$%arg175593175649%_)))
                                        (_%__kont176542176543%_
                                         _%$%arg175594175662%_))))))
                        (_%$%loop175589175642%_
                         _%$%target175586175636%_
                         '())))))
              (if (gx#stx-pair? _%__stx176539176540%_)
                  (let ((_%$%e175583175626%_
                         (gx#syntax-e _%__stx176539176540%_)))
                    (let ((_%$%tl175585175633%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e175583175626%_)))
                          (_%$%hd175584175630%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e175583175626%_))))
                      (if (gx#stx-pair/null? _%$%tl175585175633%_)
                          (let ((_%__splice176544176545%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl175585175633%_
                                  '0)))
                            (let ((_%$%tl175588175639%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176544176545%_
                                      '1)))
                                  (_%$%target175586175636%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176544176545%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl175588175639%_)
                                  (_%__match176562176563%_
                                   _%$%e175583175626%_
                                   _%$%hd175584175630%_
                                   _%$%tl175585175633%_
                                   _%__splice176544176545%_
                                   _%$%target175586175636%_
                                   _%$%tl175588175639%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g175579175619%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g175579175619%_)))))
                  (let () (declare (not safe)) (_%$%g175579175619%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx175695%_)
        (let* ((_%__stx176565176566%_ _%$stx175695%_)
               (_%$%g175700175721%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx176565176566%_))))
          (let ((_%__kont176568176569%_
                 (lambda (_%$%g175702175786%_)
                   (cons (gx#datum->syntax
                          |[1]#_g176633_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp176634
                                                  (lambda (_%$%g175801175804%_
                                                           _%$%g175802175807%_)
                                                    (cons _%$%g175801175804%_
                                                          _%$%g175802175807%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp176634
                                              '()
                                              _%$%g175702175786%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g176636_|
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
                (_%__kont176572176573%_
                 (lambda (_%$%g175715175728%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%$%g175699175739%_
                    (lambda ()
                      (let ((_%$%g175715175728%_ _%__stx176565176566%_))
                        (if (gx#identifier? _%$%g175715175728%_)
                            (_%__kont176572176573%_ _%$%g175715175728%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g175700175721%_))))))
                   (_%__match176588176589%_
                    (lambda (_%$%e175703175746%_
                             _%$%hd175704175750%_
                             _%$%tl175705175753%_
                             _%__splice176570176571%_
                             _%$%target175706175756%_
                             _%$%tl175708175759%_)
                      (letrec ((_%$%loop175709175762%_
                                (lambda (_%$%hd175707175766%_
                                         _%$%arg175713175769%_)
                                  (if (gx#stx-pair? _%$%hd175707175766%_)
                                      (let ((_%$%e175710175772%_
                                             (gx#syntax-e
                                              _%$%hd175707175766%_)))
                                        (let ((_%$%lp-tl175712175779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e175710175772%_)))
                                              (_%$%lp-hd175711175776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e175710175772%_))))
                                          (_%$%loop175709175762%_
                                           _%$%lp-tl175712175779%_
                                           (cons _%$%lp-hd175711175776%_
                                                 _%$%arg175713175769%_))))
                                      (let ((_%$%arg175714175782%_
                                             (reverse _%$%arg175713175769%_)))
                                        (_%__kont176568176569%_
                                         _%$%arg175714175782%_))))))
                        (_%$%loop175709175762%_
                         _%$%target175706175756%_
                         '())))))
              (if (gx#stx-pair? _%__stx176565176566%_)
                  (let ((_%$%e175703175746%_
                         (gx#syntax-e _%__stx176565176566%_)))
                    (let ((_%$%tl175705175753%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e175703175746%_)))
                          (_%$%hd175704175750%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e175703175746%_))))
                      (if (gx#stx-pair/null? _%$%tl175705175753%_)
                          (let ((_%__splice176570176571%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl175705175753%_
                                  '0)))
                            (let ((_%$%tl175708175759%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176570176571%_
                                      '1)))
                                  (_%$%target175706175756%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176570176571%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl175708175759%_)
                                  (_%__match176588176589%_
                                   _%$%e175703175746%_
                                   _%$%hd175704175750%_
                                   _%$%tl175705175753%_
                                   _%__splice176570176571%_
                                   _%$%target175706175756%_
                                   _%$%tl175708175759%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g175699175739%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g175699175739%_)))))
                  (let () (declare (not safe)) (_%$%g175699175739%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx175815%_)
        (let* ((_%__stx176591176592%_ _%$stx175815%_)
               (_%$%g175820175841%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx176591176592%_))))
          (let ((_%__kont176594176595%_
                 (lambda (_%$%g175822175906%_)
                   (cons (gx#datum->syntax
                          |[1]#_g176638_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp176639
                                                  (lambda (_%$%g175921175924%_
                                                           _%$%g175922175927%_)
                                                    (cons _%$%g175921175924%_
                                                          _%$%g175922175927%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp176639
                                              '()
                                              _%$%g175822175906%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g176641_|
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
                (_%__kont176598176599%_
                 (lambda (_%$%g175835175848%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%$%g175819175859%_
                    (lambda ()
                      (let ((_%$%g175835175848%_ _%__stx176591176592%_))
                        (if (gx#identifier? _%$%g175835175848%_)
                            (_%__kont176598176599%_ _%$%g175835175848%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g175820175841%_))))))
                   (_%__match176614176615%_
                    (lambda (_%$%e175823175866%_
                             _%$%hd175824175870%_
                             _%$%tl175825175873%_
                             _%__splice176596176597%_
                             _%$%target175826175876%_
                             _%$%tl175828175879%_)
                      (letrec ((_%$%loop175829175882%_
                                (lambda (_%$%hd175827175886%_
                                         _%$%arg175833175889%_)
                                  (if (gx#stx-pair? _%$%hd175827175886%_)
                                      (let ((_%$%e175830175892%_
                                             (gx#syntax-e
                                              _%$%hd175827175886%_)))
                                        (let ((_%$%lp-tl175832175899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e175830175892%_)))
                                              (_%$%lp-hd175831175896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e175830175892%_))))
                                          (_%$%loop175829175882%_
                                           _%$%lp-tl175832175899%_
                                           (cons _%$%lp-hd175831175896%_
                                                 _%$%arg175833175889%_))))
                                      (let ((_%$%arg175834175902%_
                                             (reverse _%$%arg175833175889%_)))
                                        (_%__kont176594176595%_
                                         _%$%arg175834175902%_))))))
                        (_%$%loop175829175882%_
                         _%$%target175826175876%_
                         '())))))
              (if (gx#stx-pair? _%__stx176591176592%_)
                  (let ((_%$%e175823175866%_
                         (gx#syntax-e _%__stx176591176592%_)))
                    (let ((_%$%tl175825175873%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e175823175866%_)))
                          (_%$%hd175824175870%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e175823175866%_))))
                      (if (gx#stx-pair/null? _%$%tl175825175873%_)
                          (let ((_%__splice176596176597%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl175825175873%_
                                  '0)))
                            (let ((_%$%tl175828175879%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176596176597%_
                                      '1)))
                                  (_%$%target175826175876%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice176596176597%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl175828175879%_)
                                  (_%__match176614176615%_
                                   _%$%e175823175866%_
                                   _%$%hd175824175870%_
                                   _%$%tl175825175873%_
                                   _%__splice176596176597%_
                                   _%$%target175826175876%_
                                   _%$%tl175828175879%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g175819175859%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g175819175859%_)))))
                  (let () (declare (not safe)) (_%$%g175819175859%_))))))))))
