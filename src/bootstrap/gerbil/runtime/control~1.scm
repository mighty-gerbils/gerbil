(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g121896_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg121241%_)
       ($%arg121153 . _%$%arg121153121211%_)
       (id . _%id121178%_)
       ($%arg121154 . _%$%arg121154121225%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121897_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121896_|)))
  (define |[1]#_g121899_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121900_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121899_|)))
  (define |[1]#_g121901_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg121361%_)
       ($%arg121275 . _%$%arg121275121345%_)
       ($%arg121274 . _%$%arg121274121331%_)
       (id . _%id121298%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121902_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121901_|)))
  (define |[1]#_g121904_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121905_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121904_|)))
  (define |[1]#_g121906_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg121481%_)
       ($%arg121394 . _%$%arg121394121451%_)
       ($%arg121395 . _%$%arg121395121465%_)
       (id . _%id121418%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g121907_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g121906_|)))
  (define |[1]#_g121909_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g121910_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g121909_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx121135%_)
        (let* ((_%__stx121805121806%_ _%$stx121135%_)
               (_%$%g121140121161%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121805121806%_))))
          (let ((_%__kont121808121809%_
                 (lambda (_%$%g121142121227%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121897_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp121898
                                                  (lambda (_%$%g121242121245%_
                                                           _%$%g121243121248%_)
                                                    (cons _%$%g121242121245%_
                                                          _%$%g121243121248%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121898
                                              '()
                                              _%$%g121142121227%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121900_|
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
                (_%__kont121812121813%_
                 (lambda (_%$%g121155121168%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%$%g121139121180%_
                    (lambda ()
                      (let ((_%$%g121155121168%_ _%__stx121805121806%_))
                        (if (gx#identifier? _%$%g121155121168%_)
                            (_%__kont121812121813%_ _%$%g121155121168%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g121140121161%_))))))
                   (_%__match121828121829%_
                    (lambda (_%$%e121143121187%_
                             _%$%hd121144121191%_
                             _%$%tl121145121194%_
                             _%__splice121810121811%_
                             _%$%target121146121197%_
                             _%$%tl121148121200%_)
                      (letrec ((_%$%loop121149121203%_
                                (lambda (_%$%hd121147121207%_
                                         _%$%arg121153121210%_)
                                  (if (gx#stx-pair? _%$%hd121147121207%_)
                                      (let ((_%$%e121150121213%_
                                             (gx#syntax-e
                                              _%$%hd121147121207%_)))
                                        (let ((_%$%lp-tl121152121220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e121150121213%_)))
                                              (_%$%lp-hd121151121217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e121150121213%_))))
                                          (_%$%loop121149121203%_
                                           _%$%lp-tl121152121220%_
                                           (cons _%$%lp-hd121151121217%_
                                                 _%$%arg121153121210%_))))
                                      (let ((_%$%arg121154121223%_
                                             (reverse _%$%arg121153121210%_)))
                                        (_%__kont121808121809%_
                                         _%$%arg121154121223%_))))))
                        (_%$%loop121149121203%_
                         _%$%target121146121197%_
                         '())))))
              (if (gx#stx-pair? _%__stx121805121806%_)
                  (let ((_%$%e121143121187%_
                         (gx#syntax-e _%__stx121805121806%_)))
                    (let ((_%$%tl121145121194%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e121143121187%_)))
                          (_%$%hd121144121191%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e121143121187%_))))
                      (if (gx#stx-pair/null? _%$%tl121145121194%_)
                          (let ((_%__splice121810121811%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl121145121194%_
                                  '0)))
                            (let ((_%$%tl121148121200%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121810121811%_
                                      '1)))
                                  (_%$%target121146121197%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121810121811%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl121148121200%_)
                                  (_%__match121828121829%_
                                   _%$%e121143121187%_
                                   _%$%hd121144121191%_
                                   _%$%tl121145121194%_
                                   _%__splice121810121811%_
                                   _%$%target121146121197%_
                                   _%$%tl121148121200%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g121139121180%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g121139121180%_)))))
                  (let () (declare (not safe)) (_%$%g121139121180%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx121256%_)
        (let* ((_%__stx121831121832%_ _%$stx121256%_)
               (_%$%g121261121282%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121831121832%_))))
          (let ((_%__kont121834121835%_
                 (lambda (_%$%g121263121347%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121902_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp121903
                                                  (lambda (_%$%g121362121365%_
                                                           _%$%g121363121368%_)
                                                    (cons _%$%g121362121365%_
                                                          _%$%g121363121368%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121903
                                              '()
                                              _%$%g121263121347%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121905_|
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
                (_%__kont121838121839%_
                 (lambda (_%$%g121276121289%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%$%g121260121300%_
                    (lambda ()
                      (let ((_%$%g121276121289%_ _%__stx121831121832%_))
                        (if (gx#identifier? _%$%g121276121289%_)
                            (_%__kont121838121839%_ _%$%g121276121289%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g121261121282%_))))))
                   (_%__match121854121855%_
                    (lambda (_%$%e121264121307%_
                             _%$%hd121265121311%_
                             _%$%tl121266121314%_
                             _%__splice121836121837%_
                             _%$%target121267121317%_
                             _%$%tl121269121320%_)
                      (letrec ((_%$%loop121270121323%_
                                (lambda (_%$%hd121268121327%_
                                         _%$%arg121274121330%_)
                                  (if (gx#stx-pair? _%$%hd121268121327%_)
                                      (let ((_%$%e121271121333%_
                                             (gx#syntax-e
                                              _%$%hd121268121327%_)))
                                        (let ((_%$%lp-tl121273121340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e121271121333%_)))
                                              (_%$%lp-hd121272121337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e121271121333%_))))
                                          (_%$%loop121270121323%_
                                           _%$%lp-tl121273121340%_
                                           (cons _%$%lp-hd121272121337%_
                                                 _%$%arg121274121330%_))))
                                      (let ((_%$%arg121275121343%_
                                             (reverse _%$%arg121274121330%_)))
                                        (_%__kont121834121835%_
                                         _%$%arg121275121343%_))))))
                        (_%$%loop121270121323%_
                         _%$%target121267121317%_
                         '())))))
              (if (gx#stx-pair? _%__stx121831121832%_)
                  (let ((_%$%e121264121307%_
                         (gx#syntax-e _%__stx121831121832%_)))
                    (let ((_%$%tl121266121314%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e121264121307%_)))
                          (_%$%hd121265121311%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e121264121307%_))))
                      (if (gx#stx-pair/null? _%$%tl121266121314%_)
                          (let ((_%__splice121836121837%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl121266121314%_
                                  '0)))
                            (let ((_%$%tl121269121320%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121836121837%_
                                      '1)))
                                  (_%$%target121267121317%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121836121837%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl121269121320%_)
                                  (_%__match121854121855%_
                                   _%$%e121264121307%_
                                   _%$%hd121265121311%_
                                   _%$%tl121266121314%_
                                   _%__splice121836121837%_
                                   _%$%target121267121317%_
                                   _%$%tl121269121320%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g121260121300%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g121260121300%_)))))
                  (let () (declare (not safe)) (_%$%g121260121300%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx121376%_)
        (let* ((_%__stx121857121858%_ _%$stx121376%_)
               (_%$%g121381121402%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx121857121858%_))))
          (let ((_%__kont121860121861%_
                 (lambda (_%$%g121383121467%_)
                   (cons (gx#datum->syntax
                          |[1]#_g121907_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp121908
                                                  (lambda (_%$%g121482121485%_
                                                           _%$%g121483121488%_)
                                                    (cons _%$%g121482121485%_
                                                          _%$%g121483121488%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp121908
                                              '()
                                              _%$%g121383121467%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g121910_|
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
                (_%__kont121864121865%_
                 (lambda (_%$%g121396121409%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%$%g121380121420%_
                    (lambda ()
                      (let ((_%$%g121396121409%_ _%__stx121857121858%_))
                        (if (gx#identifier? _%$%g121396121409%_)
                            (_%__kont121864121865%_ _%$%g121396121409%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g121381121402%_))))))
                   (_%__match121880121881%_
                    (lambda (_%$%e121384121427%_
                             _%$%hd121385121431%_
                             _%$%tl121386121434%_
                             _%__splice121862121863%_
                             _%$%target121387121437%_
                             _%$%tl121389121440%_)
                      (letrec ((_%$%loop121390121443%_
                                (lambda (_%$%hd121388121447%_
                                         _%$%arg121394121450%_)
                                  (if (gx#stx-pair? _%$%hd121388121447%_)
                                      (let ((_%$%e121391121453%_
                                             (gx#syntax-e
                                              _%$%hd121388121447%_)))
                                        (let ((_%$%lp-tl121393121460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e121391121453%_)))
                                              (_%$%lp-hd121392121457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e121391121453%_))))
                                          (_%$%loop121390121443%_
                                           _%$%lp-tl121393121460%_
                                           (cons _%$%lp-hd121392121457%_
                                                 _%$%arg121394121450%_))))
                                      (let ((_%$%arg121395121463%_
                                             (reverse _%$%arg121394121450%_)))
                                        (_%__kont121860121861%_
                                         _%$%arg121395121463%_))))))
                        (_%$%loop121390121443%_
                         _%$%target121387121437%_
                         '())))))
              (if (gx#stx-pair? _%__stx121857121858%_)
                  (let ((_%$%e121384121427%_
                         (gx#syntax-e _%__stx121857121858%_)))
                    (let ((_%$%tl121386121434%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e121384121427%_)))
                          (_%$%hd121385121431%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e121384121427%_))))
                      (if (gx#stx-pair/null? _%$%tl121386121434%_)
                          (let ((_%__splice121862121863%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl121386121434%_
                                  '0)))
                            (let ((_%$%tl121389121440%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121862121863%_
                                      '1)))
                                  (_%$%target121387121437%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice121862121863%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl121389121440%_)
                                  (_%__match121880121881%_
                                   _%$%e121384121427%_
                                   _%$%hd121385121431%_
                                   _%$%tl121386121434%_
                                   _%__splice121862121863%_
                                   _%$%target121387121437%_
                                   _%$%tl121389121440%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g121380121420%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g121380121420%_)))))
                  (let () (declare (not safe)) (_%$%g121380121420%_))))))))))
