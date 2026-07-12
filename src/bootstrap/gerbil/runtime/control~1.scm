(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g123135_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id122417%_)
       ($%arg122392 . _%$%arg122392122450%_)
       ($%arg122393 . _%$%arg122393122464%_)
       (arg . _%arg122480%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g123136_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g123135_|)))
  (define |[1]#_g123138_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g123139_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g123138_|)))
  (define |[1]#_g123140_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id122537%_)
       ($%arg122513 . _%$%arg122513122570%_)
       ($%arg122514 . _%$%arg122514122584%_)
       (arg . _%arg122600%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g123141_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g123140_|)))
  (define |[1]#_g123143_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g123144_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g123143_|)))
  (define |[1]#_g123145_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id122657%_)
       ($%arg122633 . _%$%arg122633122690%_)
       ($%arg122634 . _%$%arg122634122704%_)
       (arg . _%arg122720%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g123146_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g123145_|)))
  (define |[1]#_g123148_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g123149_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g123148_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx122374%_)
        (let* ((_%__stx123044123045%_ _%$stx122374%_)
               (_%$%g122379122400%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx123044123045%_))))
          (let ((_%__kont123047123048%_
                 (lambda (_%$%g122381122466%_)
                   (cons (gx#datum->syntax
                          |[1]#_g123136_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp123137
                                                  (lambda (_%$%g122481122484%_
                                                           _%$%g122482122487%_)
                                                    (cons _%$%g122481122484%_
                                                          _%$%g122482122487%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp123137
                                              '()
                                              _%$%g122381122466%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g123139_|
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
                (_%__kont123051123052%_
                 (lambda (_%$%g122394122407%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%$%g122378122419%_
                    (lambda ()
                      (let ((_%$%g122394122407%_ _%__stx123044123045%_))
                        (if (gx#identifier? _%$%g122394122407%_)
                            (_%__kont123051123052%_ _%$%g122394122407%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g122379122400%_))))))
                   (_%__match123067123068%_
                    (lambda (_%$%e122382122426%_
                             _%$%hd122383122430%_
                             _%$%tl122384122433%_
                             _%__splice123049123050%_
                             _%$%target122385122436%_
                             _%$%tl122387122439%_)
                      (letrec ((_%$%loop122388122442%_
                                (lambda (_%$%hd122386122446%_
                                         _%$%arg122392122449%_)
                                  (if (gx#stx-pair? _%$%hd122386122446%_)
                                      (let ((_%$%e122389122452%_
                                             (gx#syntax-e
                                              _%$%hd122386122446%_)))
                                        (let ((_%$%lp-tl122391122459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e122389122452%_)))
                                              (_%$%lp-hd122390122456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e122389122452%_))))
                                          (_%$%loop122388122442%_
                                           _%$%lp-tl122391122459%_
                                           (cons _%$%lp-hd122390122456%_
                                                 _%$%arg122392122449%_))))
                                      (let ((_%$%arg122393122462%_
                                             (reverse _%$%arg122392122449%_)))
                                        (_%__kont123047123048%_
                                         _%$%arg122393122462%_))))))
                        (_%$%loop122388122442%_
                         _%$%target122385122436%_
                         '())))))
              (if (gx#stx-pair? _%__stx123044123045%_)
                  (let ((_%$%e122382122426%_
                         (gx#syntax-e _%__stx123044123045%_)))
                    (let ((_%$%tl122384122433%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e122382122426%_)))
                          (_%$%hd122383122430%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e122382122426%_))))
                      (if (gx#stx-pair/null? _%$%tl122384122433%_)
                          (let ((_%__splice123049123050%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl122384122433%_
                                  '0)))
                            (let ((_%$%tl122387122439%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123049123050%_
                                      '1)))
                                  (_%$%target122385122436%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123049123050%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl122387122439%_)
                                  (_%__match123067123068%_
                                   _%$%e122382122426%_
                                   _%$%hd122383122430%_
                                   _%$%tl122384122433%_
                                   _%__splice123049123050%_
                                   _%$%target122385122436%_
                                   _%$%tl122387122439%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g122378122419%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g122378122419%_)))))
                  (let () (declare (not safe)) (_%$%g122378122419%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx122495%_)
        (let* ((_%__stx123070123071%_ _%$stx122495%_)
               (_%$%g122500122521%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx123070123071%_))))
          (let ((_%__kont123073123074%_
                 (lambda (_%$%g122502122586%_)
                   (cons (gx#datum->syntax
                          |[1]#_g123141_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp123142
                                                  (lambda (_%$%g122601122604%_
                                                           _%$%g122602122607%_)
                                                    (cons _%$%g122601122604%_
                                                          _%$%g122602122607%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp123142
                                              '()
                                              _%$%g122502122586%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g123144_|
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
                (_%__kont123077123078%_
                 (lambda (_%$%g122515122528%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%$%g122499122539%_
                    (lambda ()
                      (let ((_%$%g122515122528%_ _%__stx123070123071%_))
                        (if (gx#identifier? _%$%g122515122528%_)
                            (_%__kont123077123078%_ _%$%g122515122528%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g122500122521%_))))))
                   (_%__match123093123094%_
                    (lambda (_%$%e122503122546%_
                             _%$%hd122504122550%_
                             _%$%tl122505122553%_
                             _%__splice123075123076%_
                             _%$%target122506122556%_
                             _%$%tl122508122559%_)
                      (letrec ((_%$%loop122509122562%_
                                (lambda (_%$%hd122507122566%_
                                         _%$%arg122513122569%_)
                                  (if (gx#stx-pair? _%$%hd122507122566%_)
                                      (let ((_%$%e122510122572%_
                                             (gx#syntax-e
                                              _%$%hd122507122566%_)))
                                        (let ((_%$%lp-tl122512122579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e122510122572%_)))
                                              (_%$%lp-hd122511122576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e122510122572%_))))
                                          (_%$%loop122509122562%_
                                           _%$%lp-tl122512122579%_
                                           (cons _%$%lp-hd122511122576%_
                                                 _%$%arg122513122569%_))))
                                      (let ((_%$%arg122514122582%_
                                             (reverse _%$%arg122513122569%_)))
                                        (_%__kont123073123074%_
                                         _%$%arg122514122582%_))))))
                        (_%$%loop122509122562%_
                         _%$%target122506122556%_
                         '())))))
              (if (gx#stx-pair? _%__stx123070123071%_)
                  (let ((_%$%e122503122546%_
                         (gx#syntax-e _%__stx123070123071%_)))
                    (let ((_%$%tl122505122553%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e122503122546%_)))
                          (_%$%hd122504122550%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e122503122546%_))))
                      (if (gx#stx-pair/null? _%$%tl122505122553%_)
                          (let ((_%__splice123075123076%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl122505122553%_
                                  '0)))
                            (let ((_%$%tl122508122559%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123075123076%_
                                      '1)))
                                  (_%$%target122506122556%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123075123076%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl122508122559%_)
                                  (_%__match123093123094%_
                                   _%$%e122503122546%_
                                   _%$%hd122504122550%_
                                   _%$%tl122505122553%_
                                   _%__splice123075123076%_
                                   _%$%target122506122556%_
                                   _%$%tl122508122559%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g122499122539%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g122499122539%_)))))
                  (let () (declare (not safe)) (_%$%g122499122539%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx122615%_)
        (let* ((_%__stx123096123097%_ _%$stx122615%_)
               (_%$%g122620122641%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx123096123097%_))))
          (let ((_%__kont123099123100%_
                 (lambda (_%$%g122622122706%_)
                   (cons (gx#datum->syntax
                          |[1]#_g123146_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp123147
                                                  (lambda (_%$%g122721122724%_
                                                           _%$%g122722122727%_)
                                                    (cons _%$%g122721122724%_
                                                          _%$%g122722122727%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp123147
                                              '()
                                              _%$%g122622122706%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g123149_|
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
                (_%__kont123103123104%_
                 (lambda (_%$%g122635122648%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%$%g122619122659%_
                    (lambda ()
                      (let ((_%$%g122635122648%_ _%__stx123096123097%_))
                        (if (gx#identifier? _%$%g122635122648%_)
                            (_%__kont123103123104%_ _%$%g122635122648%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g122620122641%_))))))
                   (_%__match123119123120%_
                    (lambda (_%$%e122623122666%_
                             _%$%hd122624122670%_
                             _%$%tl122625122673%_
                             _%__splice123101123102%_
                             _%$%target122626122676%_
                             _%$%tl122628122679%_)
                      (letrec ((_%$%loop122629122682%_
                                (lambda (_%$%hd122627122686%_
                                         _%$%arg122633122689%_)
                                  (if (gx#stx-pair? _%$%hd122627122686%_)
                                      (let ((_%$%e122630122692%_
                                             (gx#syntax-e
                                              _%$%hd122627122686%_)))
                                        (let ((_%$%lp-tl122632122699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e122630122692%_)))
                                              (_%$%lp-hd122631122696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e122630122692%_))))
                                          (_%$%loop122629122682%_
                                           _%$%lp-tl122632122699%_
                                           (cons _%$%lp-hd122631122696%_
                                                 _%$%arg122633122689%_))))
                                      (let ((_%$%arg122634122702%_
                                             (reverse _%$%arg122633122689%_)))
                                        (_%__kont123099123100%_
                                         _%$%arg122634122702%_))))))
                        (_%$%loop122629122682%_
                         _%$%target122626122676%_
                         '())))))
              (if (gx#stx-pair? _%__stx123096123097%_)
                  (let ((_%$%e122623122666%_
                         (gx#syntax-e _%__stx123096123097%_)))
                    (let ((_%$%tl122625122673%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e122623122666%_)))
                          (_%$%hd122624122670%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e122623122666%_))))
                      (if (gx#stx-pair/null? _%$%tl122625122673%_)
                          (let ((_%__splice123101123102%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl122625122673%_
                                  '0)))
                            (let ((_%$%tl122628122679%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123101123102%_
                                      '1)))
                                  (_%$%target122626122676%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice123101123102%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl122628122679%_)
                                  (_%__match123119123120%_
                                   _%$%e122623122666%_
                                   _%$%hd122624122670%_
                                   _%$%tl122625122673%_
                                   _%__splice123101123102%_
                                   _%$%target122626122676%_
                                   _%$%tl122628122679%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g122619122659%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g122619122659%_)))))
                  (let () (declare (not safe)) (_%$%g122619122659%_))))))))))
