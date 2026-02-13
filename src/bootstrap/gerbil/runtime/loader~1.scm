(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g169562_|
    (gx#core-deserialize-mark
     '(0
       (arg168377 . _%arg168377168448%_)
       (id . _%id168401%_)
       (arg168376 . _%arg168376168434%_)
       (arg . _%arg168464%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g169563_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g169562_|)))
  (define |[1]#_g169565_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g169566_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g169565_|)))
  (define |[1]#_g169567_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id168535%_)
       (arg168512 . _%arg168512168582%_)
       (arg . _%arg168598%_)
       (arg168511 . _%arg168511168568%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g169568_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g169567_|)))
  (define |[1]#_g169570_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g169571_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g169570_|)))
  (define |[1]#_g169572_|
    (gx#core-deserialize-mark
     '(0
       (arg168645 . _%arg168645168702%_)
       (id . _%id168669%_)
       (arg168646 . _%arg168646168716%_)
       (arg . _%arg168732%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g169573_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g169572_|)))
  (define |[1]#_g169575_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g169576_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g169575_|)))
  (define |[1]#_g169577_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id168803%_)
       (arg168779 . _%arg168779168836%_)
       (arg168780 . _%arg168780168850%_)
       (arg . _%arg168866%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g169578_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g169577_|)))
  (define |[1]#_g169580_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g169581_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g169580_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx168358%_)
        (let* ((_%__stx169453169454%_ _%$stx168358%_)
               (_%g168363168384%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx169453169454%_))))
          (let ((_%__kont169456169457%_
                 (lambda (_%g168365168450%_)
                   (cons (gx#datum->syntax
                          |[1]#_g169563_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp169564
                                                  (lambda (_%g168465168468%_
                                                           _%g168466168471%_)
                                                    (cons _%g168465168468%_
                                                          _%g168466168471%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp169564
                                              '()
                                              _%g168365168450%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g169566_|
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
                (_%__kont169460169461%_
                 (lambda (_%g168378168391%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g168362168403%_
                    (lambda ()
                      (let ((_%g168378168391%_ _%__stx169453169454%_))
                        (if (gx#identifier? _%g168378168391%_)
                            (_%__kont169460169461%_ _%g168378168391%_)
                            (let ()
                              (declare (not safe))
                              (_%g168363168384%_))))))
                   (_%__match169476169477%_
                    (lambda (_%e168366168410%_
                             _%hd168367168414%_
                             _%tl168368168417%_
                             _%__splice169458169459%_
                             _%target168369168420%_
                             _%tl168371168423%_)
                      (letrec ((_%loop168372168426%_
                                (lambda (_%hd168370168430%_
                                         _%arg168376168433%_)
                                  (if (gx#stx-pair? _%hd168370168430%_)
                                      (let ((_%e168373168436%_
                                             (gx#syntax-e _%hd168370168430%_)))
                                        (let ((_%lp-tl168375168443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168373168436%_)))
                                              (_%lp-hd168374168440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168373168436%_))))
                                          (_%loop168372168426%_
                                           _%lp-tl168375168443%_
                                           (cons _%lp-hd168374168440%_
                                                 _%arg168376168433%_))))
                                      (let ((_%arg168377168446%_
                                             (reverse _%arg168376168433%_)))
                                        (_%__kont169456169457%_
                                         _%arg168377168446%_))))))
                        (_%loop168372168426%_ _%target168369168420%_ '())))))
              (if (gx#stx-pair? _%__stx169453169454%_)
                  (let ((_%e168366168410%_
                         (gx#syntax-e _%__stx169453169454%_)))
                    (let ((_%tl168368168417%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168366168410%_)))
                          (_%hd168367168414%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168366168410%_))))
                      (if (gx#stx-pair/null? _%tl168368168417%_)
                          (let ((_%__splice169458169459%_
                                 (gx#syntax-split-splice->vector
                                  _%tl168368168417%_
                                  '0)))
                            (let ((_%tl168371168423%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice169458169459%_
                                      '1)))
                                  (_%target168369168420%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice169458169459%_
                                      '0))))
                              (if (gx#stx-null? _%tl168371168423%_)
                                  (_%__match169476169477%_
                                   _%e168366168410%_
                                   _%hd168367168414%_
                                   _%tl168368168417%_
                                   _%__splice169458169459%_
                                   _%target168369168420%_
                                   _%tl168371168423%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g168362168403%_)))))
                          (let () (declare (not safe)) (_%g168362168403%_)))))
                  (let () (declare (not safe)) (_%g168362168403%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx168493%_)
        (let* ((_%__stx169479169480%_ _%$stx168493%_)
               (_%g168498168519%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx169479169480%_))))
          (let ((_%__kont169482169483%_
                 (lambda (_%g168500168584%_)
                   (cons (gx#datum->syntax
                          |[1]#_g169568_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp169569
                                                  (lambda (_%g168599168602%_
                                                           _%g168600168605%_)
                                                    (cons _%g168599168602%_
                                                          _%g168600168605%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp169569
                                              '()
                                              _%g168500168584%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g169571_|
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
                (_%__kont169486169487%_
                 (lambda (_%g168513168526%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g168497168537%_
                    (lambda ()
                      (let ((_%g168513168526%_ _%__stx169479169480%_))
                        (if (gx#identifier? _%g168513168526%_)
                            (_%__kont169486169487%_ _%g168513168526%_)
                            (let ()
                              (declare (not safe))
                              (_%g168498168519%_))))))
                   (_%__match169502169503%_
                    (lambda (_%e168501168544%_
                             _%hd168502168548%_
                             _%tl168503168551%_
                             _%__splice169484169485%_
                             _%target168504168554%_
                             _%tl168506168557%_)
                      (letrec ((_%loop168507168560%_
                                (lambda (_%hd168505168564%_
                                         _%arg168511168567%_)
                                  (if (gx#stx-pair? _%hd168505168564%_)
                                      (let ((_%e168508168570%_
                                             (gx#syntax-e _%hd168505168564%_)))
                                        (let ((_%lp-tl168510168577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168508168570%_)))
                                              (_%lp-hd168509168574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168508168570%_))))
                                          (_%loop168507168560%_
                                           _%lp-tl168510168577%_
                                           (cons _%lp-hd168509168574%_
                                                 _%arg168511168567%_))))
                                      (let ((_%arg168512168580%_
                                             (reverse _%arg168511168567%_)))
                                        (_%__kont169482169483%_
                                         _%arg168512168580%_))))))
                        (_%loop168507168560%_ _%target168504168554%_ '())))))
              (if (gx#stx-pair? _%__stx169479169480%_)
                  (let ((_%e168501168544%_
                         (gx#syntax-e _%__stx169479169480%_)))
                    (let ((_%tl168503168551%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168501168544%_)))
                          (_%hd168502168548%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168501168544%_))))
                      (if (gx#stx-pair/null? _%tl168503168551%_)
                          (let ((_%__splice169484169485%_
                                 (gx#syntax-split-splice->vector
                                  _%tl168503168551%_
                                  '0)))
                            (let ((_%tl168506168557%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice169484169485%_
                                      '1)))
                                  (_%target168504168554%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice169484169485%_
                                      '0))))
                              (if (gx#stx-null? _%tl168506168557%_)
                                  (_%__match169502169503%_
                                   _%e168501168544%_
                                   _%hd168502168548%_
                                   _%tl168503168551%_
                                   _%__splice169484169485%_
                                   _%target168504168554%_
                                   _%tl168506168557%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g168497168537%_)))))
                          (let () (declare (not safe)) (_%g168497168537%_)))))
                  (let () (declare (not safe)) (_%g168497168537%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx168627%_)
        (let* ((_%__stx169505169506%_ _%$stx168627%_)
               (_%g168632168653%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx169505169506%_))))
          (let ((_%__kont169508169509%_
                 (lambda (_%g168634168718%_)
                   (cons (gx#datum->syntax
                          |[1]#_g169573_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp169574
                                                  (lambda (_%g168733168736%_
                                                           _%g168734168739%_)
                                                    (cons _%g168733168736%_
                                                          _%g168734168739%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp169574
                                              '()
                                              _%g168634168718%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g169576_|
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
                (_%__kont169512169513%_
                 (lambda (_%g168647168660%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g168631168671%_
                    (lambda ()
                      (let ((_%g168647168660%_ _%__stx169505169506%_))
                        (if (gx#identifier? _%g168647168660%_)
                            (_%__kont169512169513%_ _%g168647168660%_)
                            (let ()
                              (declare (not safe))
                              (_%g168632168653%_))))))
                   (_%__match169528169529%_
                    (lambda (_%e168635168678%_
                             _%hd168636168682%_
                             _%tl168637168685%_
                             _%__splice169510169511%_
                             _%target168638168688%_
                             _%tl168640168691%_)
                      (letrec ((_%loop168641168694%_
                                (lambda (_%hd168639168698%_
                                         _%arg168645168701%_)
                                  (if (gx#stx-pair? _%hd168639168698%_)
                                      (let ((_%e168642168704%_
                                             (gx#syntax-e _%hd168639168698%_)))
                                        (let ((_%lp-tl168644168711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168642168704%_)))
                                              (_%lp-hd168643168708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168642168704%_))))
                                          (_%loop168641168694%_
                                           _%lp-tl168644168711%_
                                           (cons _%lp-hd168643168708%_
                                                 _%arg168645168701%_))))
                                      (let ((_%arg168646168714%_
                                             (reverse _%arg168645168701%_)))
                                        (_%__kont169508169509%_
                                         _%arg168646168714%_))))))
                        (_%loop168641168694%_ _%target168638168688%_ '())))))
              (if (gx#stx-pair? _%__stx169505169506%_)
                  (let ((_%e168635168678%_
                         (gx#syntax-e _%__stx169505169506%_)))
                    (let ((_%tl168637168685%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168635168678%_)))
                          (_%hd168636168682%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168635168678%_))))
                      (if (gx#stx-pair/null? _%tl168637168685%_)
                          (let ((_%__splice169510169511%_
                                 (gx#syntax-split-splice->vector
                                  _%tl168637168685%_
                                  '0)))
                            (let ((_%tl168640168691%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice169510169511%_
                                      '1)))
                                  (_%target168638168688%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice169510169511%_
                                      '0))))
                              (if (gx#stx-null? _%tl168640168691%_)
                                  (_%__match169528169529%_
                                   _%e168635168678%_
                                   _%hd168636168682%_
                                   _%tl168637168685%_
                                   _%__splice169510169511%_
                                   _%target168638168688%_
                                   _%tl168640168691%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g168631168671%_)))))
                          (let () (declare (not safe)) (_%g168631168671%_)))))
                  (let () (declare (not safe)) (_%g168631168671%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx168761%_)
        (let* ((_%__stx169531169532%_ _%$stx168761%_)
               (_%g168766168787%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx169531169532%_))))
          (let ((_%__kont169534169535%_
                 (lambda (_%g168768168852%_)
                   (cons (gx#datum->syntax
                          |[1]#_g169578_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp169579
                                                  (lambda (_%g168867168870%_
                                                           _%g168868168873%_)
                                                    (cons _%g168867168870%_
                                                          _%g168868168873%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp169579
                                              '()
                                              _%g168768168852%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g169581_|
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
                (_%__kont169538169539%_
                 (lambda (_%g168781168794%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g168765168805%_
                    (lambda ()
                      (let ((_%g168781168794%_ _%__stx169531169532%_))
                        (if (gx#identifier? _%g168781168794%_)
                            (_%__kont169538169539%_ _%g168781168794%_)
                            (let ()
                              (declare (not safe))
                              (_%g168766168787%_))))))
                   (_%__match169554169555%_
                    (lambda (_%e168769168812%_
                             _%hd168770168816%_
                             _%tl168771168819%_
                             _%__splice169536169537%_
                             _%target168772168822%_
                             _%tl168774168825%_)
                      (letrec ((_%loop168775168828%_
                                (lambda (_%hd168773168832%_
                                         _%arg168779168835%_)
                                  (if (gx#stx-pair? _%hd168773168832%_)
                                      (let ((_%e168776168838%_
                                             (gx#syntax-e _%hd168773168832%_)))
                                        (let ((_%lp-tl168778168845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168776168838%_)))
                                              (_%lp-hd168777168842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168776168838%_))))
                                          (_%loop168775168828%_
                                           _%lp-tl168778168845%_
                                           (cons _%lp-hd168777168842%_
                                                 _%arg168779168835%_))))
                                      (let ((_%arg168780168848%_
                                             (reverse _%arg168779168835%_)))
                                        (_%__kont169534169535%_
                                         _%arg168780168848%_))))))
                        (_%loop168775168828%_ _%target168772168822%_ '())))))
              (if (gx#stx-pair? _%__stx169531169532%_)
                  (let ((_%e168769168812%_
                         (gx#syntax-e _%__stx169531169532%_)))
                    (let ((_%tl168771168819%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168769168812%_)))
                          (_%hd168770168816%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168769168812%_))))
                      (if (gx#stx-pair/null? _%tl168771168819%_)
                          (let ((_%__splice169536169537%_
                                 (gx#syntax-split-splice->vector
                                  _%tl168771168819%_
                                  '0)))
                            (let ((_%tl168774168825%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice169536169537%_
                                      '1)))
                                  (_%target168772168822%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice169536169537%_
                                      '0))))
                              (if (gx#stx-null? _%tl168774168825%_)
                                  (_%__match169554169555%_
                                   _%e168769168812%_
                                   _%hd168770168816%_
                                   _%tl168771168819%_
                                   _%__splice169536169537%_
                                   _%target168772168822%_
                                   _%tl168774168825%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g168765168805%_)))))
                          (let () (declare (not safe)) (_%g168765168805%_)))))
                  (let () (declare (not safe)) (_%g168765168805%_))))))))))
