(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g172384_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id171223%_)
       ($%arg171198 . _%$%arg171198171256%_)
       (arg . _%arg171286%_)
       ($%arg171199 . _%$%arg171199171270%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g172385_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g172384_|)))
  (define |[1]#_g172387_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g172388_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g172387_|)))
  (define |[1]#_g172389_|
    (gx#core-deserialize-mark
     '(0
       ($%arg171319 . _%$%arg171319171376%_)
       (id . _%id171343%_)
       ($%arg171320 . _%$%arg171320171390%_)
       (arg . _%arg171406%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g172390_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g172389_|)))
  (define |[1]#_g172392_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g172393_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g172392_|)))
  (define |[1]#_g172394_|
    (gx#core-deserialize-mark
     '(0
       ($%arg171440 . _%$%arg171440171510%_)
       (id . _%id171463%_)
       (arg . _%arg171526%_)
       ($%arg171439 . _%$%arg171439171496%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g172395_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g172394_|)))
  (define |[1]#_g172397_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g172398_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g172397_|)))
  (define |[1]#_g172399_|
    (gx#core-deserialize-mark
     '(0
       ($%arg171559 . _%$%arg171559171616%_)
       (id . _%id171583%_)
       ($%arg171560 . _%$%arg171560171630%_)
       (arg . _%arg171646%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g172400_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g172399_|)))
  (define |[1]#_g172402_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g172403_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g172402_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx171180%_)
        (let* ((_%__stx172275172276%_ _%$stx171180%_)
               (_%$%g171185171206%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx172275172276%_))))
          (let ((_%__kont172278172279%_
                 (lambda (_%$%g171187171272%_)
                   (cons (gx#datum->syntax
                          |[1]#_g172385_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp172386
                                                  (lambda (_%$%g171287171290%_
                                                           _%$%g171288171293%_)
                                                    (cons _%$%g171287171290%_
                                                          _%$%g171288171293%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp172386
                                              '()
                                              _%$%g171187171272%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g172388_|
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
                (_%__kont172282172283%_
                 (lambda (_%$%g171200171213%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%$%g171184171225%_
                    (lambda ()
                      (let ((_%$%g171200171213%_ _%__stx172275172276%_))
                        (if (gx#identifier? _%$%g171200171213%_)
                            (_%__kont172282172283%_ _%$%g171200171213%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g171185171206%_))))))
                   (_%__match172298172299%_
                    (lambda (_%$%e171188171232%_
                             _%$%hd171189171236%_
                             _%$%tl171190171239%_
                             _%__splice172280172281%_
                             _%$%target171191171242%_
                             _%$%tl171193171245%_)
                      (letrec ((_%$%loop171194171248%_
                                (lambda (_%$%hd171192171252%_
                                         _%$%arg171198171255%_)
                                  (if (gx#stx-pair? _%$%hd171192171252%_)
                                      (let ((_%$%e171195171258%_
                                             (gx#syntax-e
                                              _%$%hd171192171252%_)))
                                        (let ((_%$%lp-tl171197171265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e171195171258%_)))
                                              (_%$%lp-hd171196171262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e171195171258%_))))
                                          (_%$%loop171194171248%_
                                           _%$%lp-tl171197171265%_
                                           (cons _%$%lp-hd171196171262%_
                                                 _%$%arg171198171255%_))))
                                      (let ((_%$%arg171199171268%_
                                             (reverse _%$%arg171198171255%_)))
                                        (_%__kont172278172279%_
                                         _%$%arg171199171268%_))))))
                        (_%$%loop171194171248%_
                         _%$%target171191171242%_
                         '())))))
              (if (gx#stx-pair? _%__stx172275172276%_)
                  (let ((_%$%e171188171232%_
                         (gx#syntax-e _%__stx172275172276%_)))
                    (let ((_%$%tl171190171239%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e171188171232%_)))
                          (_%$%hd171189171236%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e171188171232%_))))
                      (if (gx#stx-pair/null? _%$%tl171190171239%_)
                          (let ((_%__splice172280172281%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl171190171239%_
                                  '0)))
                            (let ((_%$%tl171193171245%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172280172281%_
                                      '1)))
                                  (_%$%target171191171242%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172280172281%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl171193171245%_)
                                  (_%__match172298172299%_
                                   _%$%e171188171232%_
                                   _%$%hd171189171236%_
                                   _%$%tl171190171239%_
                                   _%__splice172280172281%_
                                   _%$%target171191171242%_
                                   _%$%tl171193171245%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g171184171225%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g171184171225%_)))))
                  (let () (declare (not safe)) (_%$%g171184171225%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx171301%_)
        (let* ((_%__stx172301172302%_ _%$stx171301%_)
               (_%$%g171306171327%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx172301172302%_))))
          (let ((_%__kont172304172305%_
                 (lambda (_%$%g171308171392%_)
                   (cons (gx#datum->syntax
                          |[1]#_g172390_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp172391
                                                  (lambda (_%$%g171407171410%_
                                                           _%$%g171408171413%_)
                                                    (cons _%$%g171407171410%_
                                                          _%$%g171408171413%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp172391
                                              '()
                                              _%$%g171308171392%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g172393_|
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
                (_%__kont172308172309%_
                 (lambda (_%$%g171321171334%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%$%g171305171345%_
                    (lambda ()
                      (let ((_%$%g171321171334%_ _%__stx172301172302%_))
                        (if (gx#identifier? _%$%g171321171334%_)
                            (_%__kont172308172309%_ _%$%g171321171334%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g171306171327%_))))))
                   (_%__match172324172325%_
                    (lambda (_%$%e171309171352%_
                             _%$%hd171310171356%_
                             _%$%tl171311171359%_
                             _%__splice172306172307%_
                             _%$%target171312171362%_
                             _%$%tl171314171365%_)
                      (letrec ((_%$%loop171315171368%_
                                (lambda (_%$%hd171313171372%_
                                         _%$%arg171319171375%_)
                                  (if (gx#stx-pair? _%$%hd171313171372%_)
                                      (let ((_%$%e171316171378%_
                                             (gx#syntax-e
                                              _%$%hd171313171372%_)))
                                        (let ((_%$%lp-tl171318171385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e171316171378%_)))
                                              (_%$%lp-hd171317171382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e171316171378%_))))
                                          (_%$%loop171315171368%_
                                           _%$%lp-tl171318171385%_
                                           (cons _%$%lp-hd171317171382%_
                                                 _%$%arg171319171375%_))))
                                      (let ((_%$%arg171320171388%_
                                             (reverse _%$%arg171319171375%_)))
                                        (_%__kont172304172305%_
                                         _%$%arg171320171388%_))))))
                        (_%$%loop171315171368%_
                         _%$%target171312171362%_
                         '())))))
              (if (gx#stx-pair? _%__stx172301172302%_)
                  (let ((_%$%e171309171352%_
                         (gx#syntax-e _%__stx172301172302%_)))
                    (let ((_%$%tl171311171359%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e171309171352%_)))
                          (_%$%hd171310171356%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e171309171352%_))))
                      (if (gx#stx-pair/null? _%$%tl171311171359%_)
                          (let ((_%__splice172306172307%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl171311171359%_
                                  '0)))
                            (let ((_%$%tl171314171365%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172306172307%_
                                      '1)))
                                  (_%$%target171312171362%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172306172307%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl171314171365%_)
                                  (_%__match172324172325%_
                                   _%$%e171309171352%_
                                   _%$%hd171310171356%_
                                   _%$%tl171311171359%_
                                   _%__splice172306172307%_
                                   _%$%target171312171362%_
                                   _%$%tl171314171365%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g171305171345%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g171305171345%_)))))
                  (let () (declare (not safe)) (_%$%g171305171345%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx171421%_)
        (let* ((_%__stx172327172328%_ _%$stx171421%_)
               (_%$%g171426171447%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx172327172328%_))))
          (let ((_%__kont172330172331%_
                 (lambda (_%$%g171428171512%_)
                   (cons (gx#datum->syntax
                          |[1]#_g172395_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp172396
                                                  (lambda (_%$%g171527171530%_
                                                           _%$%g171528171533%_)
                                                    (cons _%$%g171527171530%_
                                                          _%$%g171528171533%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp172396
                                              '()
                                              _%$%g171428171512%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g172398_|
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
                (_%__kont172334172335%_
                 (lambda (_%$%g171441171454%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%$%g171425171465%_
                    (lambda ()
                      (let ((_%$%g171441171454%_ _%__stx172327172328%_))
                        (if (gx#identifier? _%$%g171441171454%_)
                            (_%__kont172334172335%_ _%$%g171441171454%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g171426171447%_))))))
                   (_%__match172350172351%_
                    (lambda (_%$%e171429171472%_
                             _%$%hd171430171476%_
                             _%$%tl171431171479%_
                             _%__splice172332172333%_
                             _%$%target171432171482%_
                             _%$%tl171434171485%_)
                      (letrec ((_%$%loop171435171488%_
                                (lambda (_%$%hd171433171492%_
                                         _%$%arg171439171495%_)
                                  (if (gx#stx-pair? _%$%hd171433171492%_)
                                      (let ((_%$%e171436171498%_
                                             (gx#syntax-e
                                              _%$%hd171433171492%_)))
                                        (let ((_%$%lp-tl171438171505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e171436171498%_)))
                                              (_%$%lp-hd171437171502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e171436171498%_))))
                                          (_%$%loop171435171488%_
                                           _%$%lp-tl171438171505%_
                                           (cons _%$%lp-hd171437171502%_
                                                 _%$%arg171439171495%_))))
                                      (let ((_%$%arg171440171508%_
                                             (reverse _%$%arg171439171495%_)))
                                        (_%__kont172330172331%_
                                         _%$%arg171440171508%_))))))
                        (_%$%loop171435171488%_
                         _%$%target171432171482%_
                         '())))))
              (if (gx#stx-pair? _%__stx172327172328%_)
                  (let ((_%$%e171429171472%_
                         (gx#syntax-e _%__stx172327172328%_)))
                    (let ((_%$%tl171431171479%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e171429171472%_)))
                          (_%$%hd171430171476%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e171429171472%_))))
                      (if (gx#stx-pair/null? _%$%tl171431171479%_)
                          (let ((_%__splice172332172333%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl171431171479%_
                                  '0)))
                            (let ((_%$%tl171434171485%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172332172333%_
                                      '1)))
                                  (_%$%target171432171482%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172332172333%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl171434171485%_)
                                  (_%__match172350172351%_
                                   _%$%e171429171472%_
                                   _%$%hd171430171476%_
                                   _%$%tl171431171479%_
                                   _%__splice172332172333%_
                                   _%$%target171432171482%_
                                   _%$%tl171434171485%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g171425171465%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g171425171465%_)))))
                  (let () (declare (not safe)) (_%$%g171425171465%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx171541%_)
        (let* ((_%__stx172353172354%_ _%$stx171541%_)
               (_%$%g171546171567%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx172353172354%_))))
          (let ((_%__kont172356172357%_
                 (lambda (_%$%g171548171632%_)
                   (cons (gx#datum->syntax
                          |[1]#_g172400_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp172401
                                                  (lambda (_%$%g171647171650%_
                                                           _%$%g171648171653%_)
                                                    (cons _%$%g171647171650%_
                                                          _%$%g171648171653%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp172401
                                              '()
                                              _%$%g171548171632%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g172403_|
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
                (_%__kont172360172361%_
                 (lambda (_%$%g171561171574%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%$%g171545171585%_
                    (lambda ()
                      (let ((_%$%g171561171574%_ _%__stx172353172354%_))
                        (if (gx#identifier? _%$%g171561171574%_)
                            (_%__kont172360172361%_ _%$%g171561171574%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g171546171567%_))))))
                   (_%__match172376172377%_
                    (lambda (_%$%e171549171592%_
                             _%$%hd171550171596%_
                             _%$%tl171551171599%_
                             _%__splice172358172359%_
                             _%$%target171552171602%_
                             _%$%tl171554171605%_)
                      (letrec ((_%$%loop171555171608%_
                                (lambda (_%$%hd171553171612%_
                                         _%$%arg171559171615%_)
                                  (if (gx#stx-pair? _%$%hd171553171612%_)
                                      (let ((_%$%e171556171618%_
                                             (gx#syntax-e
                                              _%$%hd171553171612%_)))
                                        (let ((_%$%lp-tl171558171625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e171556171618%_)))
                                              (_%$%lp-hd171557171622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e171556171618%_))))
                                          (_%$%loop171555171608%_
                                           _%$%lp-tl171558171625%_
                                           (cons _%$%lp-hd171557171622%_
                                                 _%$%arg171559171615%_))))
                                      (let ((_%$%arg171560171628%_
                                             (reverse _%$%arg171559171615%_)))
                                        (_%__kont172356172357%_
                                         _%$%arg171560171628%_))))))
                        (_%$%loop171555171608%_
                         _%$%target171552171602%_
                         '())))))
              (if (gx#stx-pair? _%__stx172353172354%_)
                  (let ((_%$%e171549171592%_
                         (gx#syntax-e _%__stx172353172354%_)))
                    (let ((_%$%tl171551171599%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e171549171592%_)))
                          (_%$%hd171550171596%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e171549171592%_))))
                      (if (gx#stx-pair/null? _%$%tl171551171599%_)
                          (let ((_%__splice172358172359%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl171551171599%_
                                  '0)))
                            (let ((_%$%tl171554171605%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172358172359%_
                                      '1)))
                                  (_%$%target171552171602%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice172358172359%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl171554171605%_)
                                  (_%__match172376172377%_
                                   _%$%e171549171592%_
                                   _%$%hd171550171596%_
                                   _%$%tl171551171599%_
                                   _%__splice172358172359%_
                                   _%$%target171552171602%_
                                   _%$%tl171554171605%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g171545171585%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g171545171585%_)))))
                  (let () (declare (not safe)) (_%$%g171545171585%_))))))))))
