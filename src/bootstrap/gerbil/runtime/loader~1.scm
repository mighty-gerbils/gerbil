(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g170683_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id169522%_)
       (arg . _%arg169585%_)
       (arg169497 . _%arg169497169555%_)
       (arg169498 . _%arg169498169569%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170684_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170683_|)))
  (define |[1]#_g170686_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170687_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170686_|)))
  (define |[1]#_g170688_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id169656%_)
       (arg . _%arg169719%_)
       (arg169633 . _%arg169633169703%_)
       (arg169632 . _%arg169632169689%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170689_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170688_|)))
  (define |[1]#_g170691_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170692_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170691_|)))
  (define |[1]#_g170693_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id169790%_)
       (arg . _%arg169853%_)
       (arg169767 . _%arg169767169837%_)
       (arg169766 . _%arg169766169823%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170694_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170693_|)))
  (define |[1]#_g170696_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170697_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170696_|)))
  (define |[1]#_g170698_|
    (gx#core-deserialize-mark
     '(0
       (arg169901 . _%arg169901169971%_)
       (id . _%id169924%_)
       (arg . _%arg169987%_)
       (arg169900 . _%arg169900169957%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g170699_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g170698_|)))
  (define |[1]#_g170701_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g170702_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g170701_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx169479%_)
        (let* ((_%__stx170574170575%_ _%$stx169479%_)
               (_%g169484169505%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170574170575%_))))
          (let ((_%__kont170577170578%_
                 (lambda (_%g169486169571%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170684_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp170685
                                                  (lambda (_%g169586169589%_
                                                           _%g169587169592%_)
                                                    (cons _%g169586169589%_
                                                          _%g169587169592%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170685
                                              '()
                                              _%g169486169571%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170687_|
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
                (_%__kont170581170582%_
                 (lambda (_%g169499169512%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g169483169524%_
                    (lambda ()
                      (let ((_%g169499169512%_ _%__stx170574170575%_))
                        (if (gx#identifier? _%g169499169512%_)
                            (_%__kont170581170582%_ _%g169499169512%_)
                            (let ()
                              (declare (not safe))
                              (_%g169484169505%_))))))
                   (_%__match170597170598%_
                    (lambda (_%e169487169531%_
                             _%hd169488169535%_
                             _%tl169489169538%_
                             _%__splice170579170580%_
                             _%target169490169541%_
                             _%tl169492169544%_)
                      (letrec ((_%loop169493169547%_
                                (lambda (_%hd169491169551%_
                                         _%arg169497169554%_)
                                  (if (gx#stx-pair? _%hd169491169551%_)
                                      (let ((_%e169494169557%_
                                             (gx#syntax-e _%hd169491169551%_)))
                                        (let ((_%lp-tl169496169564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169494169557%_)))
                                              (_%lp-hd169495169561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169494169557%_))))
                                          (_%loop169493169547%_
                                           _%lp-tl169496169564%_
                                           (cons _%lp-hd169495169561%_
                                                 _%arg169497169554%_))))
                                      (let ((_%arg169498169567%_
                                             (reverse _%arg169497169554%_)))
                                        (_%__kont170577170578%_
                                         _%arg169498169567%_))))))
                        (_%loop169493169547%_ _%target169490169541%_ '())))))
              (if (gx#stx-pair? _%__stx170574170575%_)
                  (let ((_%e169487169531%_
                         (gx#syntax-e _%__stx170574170575%_)))
                    (let ((_%tl169489169538%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169487169531%_)))
                          (_%hd169488169535%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169487169531%_))))
                      (if (gx#stx-pair/null? _%tl169489169538%_)
                          (let ((_%__splice170579170580%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169489169538%_
                                  '0)))
                            (let ((_%tl169492169544%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170579170580%_
                                      '1)))
                                  (_%target169490169541%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170579170580%_
                                      '0))))
                              (if (gx#stx-null? _%tl169492169544%_)
                                  (_%__match170597170598%_
                                   _%e169487169531%_
                                   _%hd169488169535%_
                                   _%tl169489169538%_
                                   _%__splice170579170580%_
                                   _%target169490169541%_
                                   _%tl169492169544%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169483169524%_)))))
                          (let () (declare (not safe)) (_%g169483169524%_)))))
                  (let () (declare (not safe)) (_%g169483169524%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx169614%_)
        (let* ((_%__stx170600170601%_ _%$stx169614%_)
               (_%g169619169640%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170600170601%_))))
          (let ((_%__kont170603170604%_
                 (lambda (_%g169621169705%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170689_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170690
                                                  (lambda (_%g169720169723%_
                                                           _%g169721169726%_)
                                                    (cons _%g169720169723%_
                                                          _%g169721169726%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170690
                                              '()
                                              _%g169621169705%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170692_|
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
                (_%__kont170607170608%_
                 (lambda (_%g169634169647%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g169618169658%_
                    (lambda ()
                      (let ((_%g169634169647%_ _%__stx170600170601%_))
                        (if (gx#identifier? _%g169634169647%_)
                            (_%__kont170607170608%_ _%g169634169647%_)
                            (let ()
                              (declare (not safe))
                              (_%g169619169640%_))))))
                   (_%__match170623170624%_
                    (lambda (_%e169622169665%_
                             _%hd169623169669%_
                             _%tl169624169672%_
                             _%__splice170605170606%_
                             _%target169625169675%_
                             _%tl169627169678%_)
                      (letrec ((_%loop169628169681%_
                                (lambda (_%hd169626169685%_
                                         _%arg169632169688%_)
                                  (if (gx#stx-pair? _%hd169626169685%_)
                                      (let ((_%e169629169691%_
                                             (gx#syntax-e _%hd169626169685%_)))
                                        (let ((_%lp-tl169631169698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169629169691%_)))
                                              (_%lp-hd169630169695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169629169691%_))))
                                          (_%loop169628169681%_
                                           _%lp-tl169631169698%_
                                           (cons _%lp-hd169630169695%_
                                                 _%arg169632169688%_))))
                                      (let ((_%arg169633169701%_
                                             (reverse _%arg169632169688%_)))
                                        (_%__kont170603170604%_
                                         _%arg169633169701%_))))))
                        (_%loop169628169681%_ _%target169625169675%_ '())))))
              (if (gx#stx-pair? _%__stx170600170601%_)
                  (let ((_%e169622169665%_
                         (gx#syntax-e _%__stx170600170601%_)))
                    (let ((_%tl169624169672%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169622169665%_)))
                          (_%hd169623169669%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169622169665%_))))
                      (if (gx#stx-pair/null? _%tl169624169672%_)
                          (let ((_%__splice170605170606%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169624169672%_
                                  '0)))
                            (let ((_%tl169627169678%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170605170606%_
                                      '1)))
                                  (_%target169625169675%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170605170606%_
                                      '0))))
                              (if (gx#stx-null? _%tl169627169678%_)
                                  (_%__match170623170624%_
                                   _%e169622169665%_
                                   _%hd169623169669%_
                                   _%tl169624169672%_
                                   _%__splice170605170606%_
                                   _%target169625169675%_
                                   _%tl169627169678%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169618169658%_)))))
                          (let () (declare (not safe)) (_%g169618169658%_)))))
                  (let () (declare (not safe)) (_%g169618169658%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx169748%_)
        (let* ((_%__stx170626170627%_ _%$stx169748%_)
               (_%g169753169774%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170626170627%_))))
          (let ((_%__kont170629170630%_
                 (lambda (_%g169755169839%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170694_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170695
                                                  (lambda (_%g169854169857%_
                                                           _%g169855169860%_)
                                                    (cons _%g169854169857%_
                                                          _%g169855169860%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170695
                                              '()
                                              _%g169755169839%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170697_|
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
                (_%__kont170633170634%_
                 (lambda (_%g169768169781%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g169752169792%_
                    (lambda ()
                      (let ((_%g169768169781%_ _%__stx170626170627%_))
                        (if (gx#identifier? _%g169768169781%_)
                            (_%__kont170633170634%_ _%g169768169781%_)
                            (let ()
                              (declare (not safe))
                              (_%g169753169774%_))))))
                   (_%__match170649170650%_
                    (lambda (_%e169756169799%_
                             _%hd169757169803%_
                             _%tl169758169806%_
                             _%__splice170631170632%_
                             _%target169759169809%_
                             _%tl169761169812%_)
                      (letrec ((_%loop169762169815%_
                                (lambda (_%hd169760169819%_
                                         _%arg169766169822%_)
                                  (if (gx#stx-pair? _%hd169760169819%_)
                                      (let ((_%e169763169825%_
                                             (gx#syntax-e _%hd169760169819%_)))
                                        (let ((_%lp-tl169765169832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169763169825%_)))
                                              (_%lp-hd169764169829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169763169825%_))))
                                          (_%loop169762169815%_
                                           _%lp-tl169765169832%_
                                           (cons _%lp-hd169764169829%_
                                                 _%arg169766169822%_))))
                                      (let ((_%arg169767169835%_
                                             (reverse _%arg169766169822%_)))
                                        (_%__kont170629170630%_
                                         _%arg169767169835%_))))))
                        (_%loop169762169815%_ _%target169759169809%_ '())))))
              (if (gx#stx-pair? _%__stx170626170627%_)
                  (let ((_%e169756169799%_
                         (gx#syntax-e _%__stx170626170627%_)))
                    (let ((_%tl169758169806%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169756169799%_)))
                          (_%hd169757169803%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169756169799%_))))
                      (if (gx#stx-pair/null? _%tl169758169806%_)
                          (let ((_%__splice170631170632%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169758169806%_
                                  '0)))
                            (let ((_%tl169761169812%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170631170632%_
                                      '1)))
                                  (_%target169759169809%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170631170632%_
                                      '0))))
                              (if (gx#stx-null? _%tl169761169812%_)
                                  (_%__match170649170650%_
                                   _%e169756169799%_
                                   _%hd169757169803%_
                                   _%tl169758169806%_
                                   _%__splice170631170632%_
                                   _%target169759169809%_
                                   _%tl169761169812%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169752169792%_)))))
                          (let () (declare (not safe)) (_%g169752169792%_)))))
                  (let () (declare (not safe)) (_%g169752169792%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx169882%_)
        (let* ((_%__stx170652170653%_ _%$stx169882%_)
               (_%g169887169908%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx170652170653%_))))
          (let ((_%__kont170655170656%_
                 (lambda (_%g169889169973%_)
                   (cons (gx#datum->syntax
                          |[1]#_g170699_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp170700
                                                  (lambda (_%g169988169991%_
                                                           _%g169989169994%_)
                                                    (cons _%g169988169991%_
                                                          _%g169989169994%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp170700
                                              '()
                                              _%g169889169973%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g170702_|
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
                (_%__kont170659170660%_
                 (lambda (_%g169902169915%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g169886169926%_
                    (lambda ()
                      (let ((_%g169902169915%_ _%__stx170652170653%_))
                        (if (gx#identifier? _%g169902169915%_)
                            (_%__kont170659170660%_ _%g169902169915%_)
                            (let ()
                              (declare (not safe))
                              (_%g169887169908%_))))))
                   (_%__match170675170676%_
                    (lambda (_%e169890169933%_
                             _%hd169891169937%_
                             _%tl169892169940%_
                             _%__splice170657170658%_
                             _%target169893169943%_
                             _%tl169895169946%_)
                      (letrec ((_%loop169896169949%_
                                (lambda (_%hd169894169953%_
                                         _%arg169900169956%_)
                                  (if (gx#stx-pair? _%hd169894169953%_)
                                      (let ((_%e169897169959%_
                                             (gx#syntax-e _%hd169894169953%_)))
                                        (let ((_%lp-tl169899169966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169897169959%_)))
                                              (_%lp-hd169898169963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169897169959%_))))
                                          (_%loop169896169949%_
                                           _%lp-tl169899169966%_
                                           (cons _%lp-hd169898169963%_
                                                 _%arg169900169956%_))))
                                      (let ((_%arg169901169969%_
                                             (reverse _%arg169900169956%_)))
                                        (_%__kont170655170656%_
                                         _%arg169901169969%_))))))
                        (_%loop169896169949%_ _%target169893169943%_ '())))))
              (if (gx#stx-pair? _%__stx170652170653%_)
                  (let ((_%e169890169933%_
                         (gx#syntax-e _%__stx170652170653%_)))
                    (let ((_%tl169892169940%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169890169933%_)))
                          (_%hd169891169937%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169890169933%_))))
                      (if (gx#stx-pair/null? _%tl169892169940%_)
                          (let ((_%__splice170657170658%_
                                 (gx#syntax-split-splice->vector
                                  _%tl169892169940%_
                                  '0)))
                            (let ((_%tl169895169946%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170657170658%_
                                      '1)))
                                  (_%target169893169943%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice170657170658%_
                                      '0))))
                              (if (gx#stx-null? _%tl169895169946%_)
                                  (_%__match170675170676%_
                                   _%e169890169933%_
                                   _%hd169891169937%_
                                   _%tl169892169940%_
                                   _%__splice170657170658%_
                                   _%target169893169943%_
                                   _%tl169895169946%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g169886169926%_)))))
                          (let () (declare (not safe)) (_%g169886169926%_)))))
                  (let () (declare (not safe)) (_%g169886169926%_))))))))))
