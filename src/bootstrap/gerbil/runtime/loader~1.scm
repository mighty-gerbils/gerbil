(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g171510_|
    (gx#core-deserialize-mark
     '(0
       (arg170325 . _%arg170325170396%_)
       (arg . _%arg170412%_)
       (id . _%id170349%_)
       (arg170324 . _%arg170324170382%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171511_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171510_|)))
  (define |[1]#_g171513_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171514_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171513_|)))
  (define |[1]#_g171515_|
    (gx#core-deserialize-mark
     '(0
       (arg170459 . _%arg170459170516%_)
       (arg . _%arg170546%_)
       (id . _%id170483%_)
       (arg170460 . _%arg170460170530%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171516_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171515_|)))
  (define |[1]#_g171518_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171519_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171518_|)))
  (define |[1]#_g171520_|
    (gx#core-deserialize-mark
     '(0
       (arg170593 . _%arg170593170650%_)
       (arg170594 . _%arg170594170664%_)
       (arg . _%arg170680%_)
       (id . _%id170617%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171521_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171520_|)))
  (define |[1]#_g171523_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171524_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171523_|)))
  (define |[1]#_g171525_|
    (gx#core-deserialize-mark
     '(0
       (arg170727 . _%arg170727170784%_)
       (arg170728 . _%arg170728170798%_)
       (arg . _%arg170814%_)
       (id . _%id170751%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g171526_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g171525_|)))
  (define |[1]#_g171528_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g171529_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g171528_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx170306%_)
        (let* ((_%__stx171401171402%_ _%$stx170306%_)
               (_%g170311170332%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171401171402%_))))
          (let ((_%__kont171404171405%_
                 (lambda (_%g170313170398%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171511_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp171512
                                                  (lambda (_%g170413170416%_
                                                           _%g170414170419%_)
                                                    (cons _%g170413170416%_
                                                          _%g170414170419%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171512
                                              '()
                                              _%g170313170398%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171514_|
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
                (_%__kont171408171409%_
                 (lambda (_%g170326170339%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g170310170351%_
                    (lambda ()
                      (let ((_%g170326170339%_ _%__stx171401171402%_))
                        (if (gx#identifier? _%g170326170339%_)
                            (_%__kont171408171409%_ _%g170326170339%_)
                            (let ()
                              (declare (not safe))
                              (_%g170311170332%_))))))
                   (_%__match171424171425%_
                    (lambda (_%e170314170358%_
                             _%hd170315170362%_
                             _%tl170316170365%_
                             _%__splice171406171407%_
                             _%target170317170368%_
                             _%tl170319170371%_)
                      (letrec ((_%loop170320170374%_
                                (lambda (_%hd170318170378%_
                                         _%arg170324170381%_)
                                  (if (gx#stx-pair? _%hd170318170378%_)
                                      (let ((_%e170321170384%_
                                             (gx#syntax-e _%hd170318170378%_)))
                                        (let ((_%lp-tl170323170391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170321170384%_)))
                                              (_%lp-hd170322170388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170321170384%_))))
                                          (_%loop170320170374%_
                                           _%lp-tl170323170391%_
                                           (cons _%lp-hd170322170388%_
                                                 _%arg170324170381%_))))
                                      (let ((_%arg170325170394%_
                                             (reverse _%arg170324170381%_)))
                                        (_%__kont171404171405%_
                                         _%arg170325170394%_))))))
                        (_%loop170320170374%_ _%target170317170368%_ '())))))
              (if (gx#stx-pair? _%__stx171401171402%_)
                  (let ((_%e170314170358%_
                         (gx#syntax-e _%__stx171401171402%_)))
                    (let ((_%tl170316170365%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170314170358%_)))
                          (_%hd170315170362%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170314170358%_))))
                      (if (gx#stx-pair/null? _%tl170316170365%_)
                          (let ((_%__splice171406171407%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170316170365%_
                                  '0)))
                            (let ((_%tl170319170371%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171406171407%_
                                      '1)))
                                  (_%target170317170368%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171406171407%_
                                      '0))))
                              (if (gx#stx-null? _%tl170319170371%_)
                                  (_%__match171424171425%_
                                   _%e170314170358%_
                                   _%hd170315170362%_
                                   _%tl170316170365%_
                                   _%__splice171406171407%_
                                   _%target170317170368%_
                                   _%tl170319170371%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170310170351%_)))))
                          (let () (declare (not safe)) (_%g170310170351%_)))))
                  (let () (declare (not safe)) (_%g170310170351%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx170441%_)
        (let* ((_%__stx171427171428%_ _%$stx170441%_)
               (_%g170446170467%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171427171428%_))))
          (let ((_%__kont171430171431%_
                 (lambda (_%g170448170532%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171516_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp171517
                                                  (lambda (_%g170547170550%_
                                                           _%g170548170553%_)
                                                    (cons _%g170547170550%_
                                                          _%g170548170553%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171517
                                              '()
                                              _%g170448170532%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171519_|
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
                (_%__kont171434171435%_
                 (lambda (_%g170461170474%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g170445170485%_
                    (lambda ()
                      (let ((_%g170461170474%_ _%__stx171427171428%_))
                        (if (gx#identifier? _%g170461170474%_)
                            (_%__kont171434171435%_ _%g170461170474%_)
                            (let ()
                              (declare (not safe))
                              (_%g170446170467%_))))))
                   (_%__match171450171451%_
                    (lambda (_%e170449170492%_
                             _%hd170450170496%_
                             _%tl170451170499%_
                             _%__splice171432171433%_
                             _%target170452170502%_
                             _%tl170454170505%_)
                      (letrec ((_%loop170455170508%_
                                (lambda (_%hd170453170512%_
                                         _%arg170459170515%_)
                                  (if (gx#stx-pair? _%hd170453170512%_)
                                      (let ((_%e170456170518%_
                                             (gx#syntax-e _%hd170453170512%_)))
                                        (let ((_%lp-tl170458170525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170456170518%_)))
                                              (_%lp-hd170457170522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170456170518%_))))
                                          (_%loop170455170508%_
                                           _%lp-tl170458170525%_
                                           (cons _%lp-hd170457170522%_
                                                 _%arg170459170515%_))))
                                      (let ((_%arg170460170528%_
                                             (reverse _%arg170459170515%_)))
                                        (_%__kont171430171431%_
                                         _%arg170460170528%_))))))
                        (_%loop170455170508%_ _%target170452170502%_ '())))))
              (if (gx#stx-pair? _%__stx171427171428%_)
                  (let ((_%e170449170492%_
                         (gx#syntax-e _%__stx171427171428%_)))
                    (let ((_%tl170451170499%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170449170492%_)))
                          (_%hd170450170496%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170449170492%_))))
                      (if (gx#stx-pair/null? _%tl170451170499%_)
                          (let ((_%__splice171432171433%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170451170499%_
                                  '0)))
                            (let ((_%tl170454170505%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171432171433%_
                                      '1)))
                                  (_%target170452170502%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171432171433%_
                                      '0))))
                              (if (gx#stx-null? _%tl170454170505%_)
                                  (_%__match171450171451%_
                                   _%e170449170492%_
                                   _%hd170450170496%_
                                   _%tl170451170499%_
                                   _%__splice171432171433%_
                                   _%target170452170502%_
                                   _%tl170454170505%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170445170485%_)))))
                          (let () (declare (not safe)) (_%g170445170485%_)))))
                  (let () (declare (not safe)) (_%g170445170485%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx170575%_)
        (let* ((_%__stx171453171454%_ _%$stx170575%_)
               (_%g170580170601%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171453171454%_))))
          (let ((_%__kont171456171457%_
                 (lambda (_%g170582170666%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171521_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp171522
                                                  (lambda (_%g170681170684%_
                                                           _%g170682170687%_)
                                                    (cons _%g170681170684%_
                                                          _%g170682170687%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171522
                                              '()
                                              _%g170582170666%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171524_|
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
                (_%__kont171460171461%_
                 (lambda (_%g170595170608%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g170579170619%_
                    (lambda ()
                      (let ((_%g170595170608%_ _%__stx171453171454%_))
                        (if (gx#identifier? _%g170595170608%_)
                            (_%__kont171460171461%_ _%g170595170608%_)
                            (let ()
                              (declare (not safe))
                              (_%g170580170601%_))))))
                   (_%__match171476171477%_
                    (lambda (_%e170583170626%_
                             _%hd170584170630%_
                             _%tl170585170633%_
                             _%__splice171458171459%_
                             _%target170586170636%_
                             _%tl170588170639%_)
                      (letrec ((_%loop170589170642%_
                                (lambda (_%hd170587170646%_
                                         _%arg170593170649%_)
                                  (if (gx#stx-pair? _%hd170587170646%_)
                                      (let ((_%e170590170652%_
                                             (gx#syntax-e _%hd170587170646%_)))
                                        (let ((_%lp-tl170592170659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170590170652%_)))
                                              (_%lp-hd170591170656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170590170652%_))))
                                          (_%loop170589170642%_
                                           _%lp-tl170592170659%_
                                           (cons _%lp-hd170591170656%_
                                                 _%arg170593170649%_))))
                                      (let ((_%arg170594170662%_
                                             (reverse _%arg170593170649%_)))
                                        (_%__kont171456171457%_
                                         _%arg170594170662%_))))))
                        (_%loop170589170642%_ _%target170586170636%_ '())))))
              (if (gx#stx-pair? _%__stx171453171454%_)
                  (let ((_%e170583170626%_
                         (gx#syntax-e _%__stx171453171454%_)))
                    (let ((_%tl170585170633%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170583170626%_)))
                          (_%hd170584170630%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170583170626%_))))
                      (if (gx#stx-pair/null? _%tl170585170633%_)
                          (let ((_%__splice171458171459%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170585170633%_
                                  '0)))
                            (let ((_%tl170588170639%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171458171459%_
                                      '1)))
                                  (_%target170586170636%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171458171459%_
                                      '0))))
                              (if (gx#stx-null? _%tl170588170639%_)
                                  (_%__match171476171477%_
                                   _%e170583170626%_
                                   _%hd170584170630%_
                                   _%tl170585170633%_
                                   _%__splice171458171459%_
                                   _%target170586170636%_
                                   _%tl170588170639%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170579170619%_)))))
                          (let () (declare (not safe)) (_%g170579170619%_)))))
                  (let () (declare (not safe)) (_%g170579170619%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx170709%_)
        (let* ((_%__stx171479171480%_ _%$stx170709%_)
               (_%g170714170735%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx171479171480%_))))
          (let ((_%__kont171482171483%_
                 (lambda (_%g170716170800%_)
                   (cons (gx#datum->syntax
                          |[1]#_g171526_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp171527
                                                  (lambda (_%g170815170818%_
                                                           _%g170816170821%_)
                                                    (cons _%g170815170818%_
                                                          _%g170816170821%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp171527
                                              '()
                                              _%g170716170800%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g171529_|
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
                (_%__kont171486171487%_
                 (lambda (_%g170729170742%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g170713170753%_
                    (lambda ()
                      (let ((_%g170729170742%_ _%__stx171479171480%_))
                        (if (gx#identifier? _%g170729170742%_)
                            (_%__kont171486171487%_ _%g170729170742%_)
                            (let ()
                              (declare (not safe))
                              (_%g170714170735%_))))))
                   (_%__match171502171503%_
                    (lambda (_%e170717170760%_
                             _%hd170718170764%_
                             _%tl170719170767%_
                             _%__splice171484171485%_
                             _%target170720170770%_
                             _%tl170722170773%_)
                      (letrec ((_%loop170723170776%_
                                (lambda (_%hd170721170780%_
                                         _%arg170727170783%_)
                                  (if (gx#stx-pair? _%hd170721170780%_)
                                      (let ((_%e170724170786%_
                                             (gx#syntax-e _%hd170721170780%_)))
                                        (let ((_%lp-tl170726170793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170724170786%_)))
                                              (_%lp-hd170725170790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170724170786%_))))
                                          (_%loop170723170776%_
                                           _%lp-tl170726170793%_
                                           (cons _%lp-hd170725170790%_
                                                 _%arg170727170783%_))))
                                      (let ((_%arg170728170796%_
                                             (reverse _%arg170727170783%_)))
                                        (_%__kont171482171483%_
                                         _%arg170728170796%_))))))
                        (_%loop170723170776%_ _%target170720170770%_ '())))))
              (if (gx#stx-pair? _%__stx171479171480%_)
                  (let ((_%e170717170760%_
                         (gx#syntax-e _%__stx171479171480%_)))
                    (let ((_%tl170719170767%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170717170760%_)))
                          (_%hd170718170764%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170717170760%_))))
                      (if (gx#stx-pair/null? _%tl170719170767%_)
                          (let ((_%__splice171484171485%_
                                 (gx#syntax-split-splice->vector
                                  _%tl170719170767%_
                                  '0)))
                            (let ((_%tl170722170773%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171484171485%_
                                      '1)))
                                  (_%target170720170770%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice171484171485%_
                                      '0))))
                              (if (gx#stx-null? _%tl170722170773%_)
                                  (_%__match171502171503%_
                                   _%e170717170760%_
                                   _%hd170718170764%_
                                   _%tl170719170767%_
                                   _%__splice171484171485%_
                                   _%target170720170770%_
                                   _%tl170722170773%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g170713170753%_)))))
                          (let () (declare (not safe)) (_%g170713170753%_)))))
                  (let () (declare (not safe)) (_%g170713170753%_))))))))))
