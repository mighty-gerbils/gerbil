(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g17860_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17861_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17864_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17865_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17903_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17904_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17905_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17922_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17923_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17926_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17927_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17930_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17931_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17932_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17933_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17934_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17935_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17936_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g17937_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx4848%_)
        (letrec ((_%simple-lambda?4851%_
                  (lambda (_%hd8235%_)
                    (gx#stx-andmap gx#identifier? _%hd8235%_)))
                 (_%opt-lambda?4853%_
                  (lambda (_%hd8087%_)
                    (let _%lp8090%_ ((_%rest8093%_ _%hd8087%_)
                                     (_%opt?8095%_ '#f))
                      (let* ((_%$%g80988110%_
                              (lambda (_%$%g80998106%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g80998106%_)))
                             (_%$%g80978125%_
                              (lambda (_%$%g80998114%_)
                                ((lambda ()
                                   (if _%opt?8095%_
                                       (let ((_%$e8121%_
                                              (gx#stx-null? _%rest8093%_)))
                                         (if _%$e8121%_
                                             _%$e8121%_
                                             (gx#identifier? _%rest8093%_)))
                                       '#f)))))
                             (_%$%g80968231%_
                              (lambda (_%$%g80998129%_)
                                (if (gx#stx-pair? _%$%g80998129%_)
                                    (let ((_%$%e81028132%_
                                           (gx#syntax-e _%$%g80998129%_)))
                                      (let ((_%$%hd81038136%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e81028132%_)))
                                            (_%$%tl81048139%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e81028132%_))))
                                        ((lambda (_%$%g81008142%_
                                                  _%$%g81018144%_)
                                           (let* ((_%$%g81608174%_
                                                   (lambda (_%$%g81618170%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g81618170%_)))
                                                  (_%$%g81598185%_
                                                   (lambda (_%$%g81618178%_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _%$%g81018144%_)
                                                            (if (not _%opt?8095%_)
                                                                (_%lp8090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g81008142%_
                         '#f)
                        '#f)
                    '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g81588227%_
                                                   (lambda (_%$%g81618189%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g81618189%_)
                                                         (let ((_%$%e81638192%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g81618189%_)))
                   (let ((_%$%hd81648196%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e81638192%_)))
                         (_%$%tl81658199%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e81638192%_))))
                     (if (gx#stx-pair? _%$%tl81658199%_)
                         (let ((_%$%e81668202%_
                                (gx#syntax-e _%$%tl81658199%_)))
                           (let ((_%$%hd81678206%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e81668202%_)))
                                 (_%$%tl81688209%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e81668202%_))))
                             (if (gx#stx-null? _%$%tl81688209%_)
                                 ((lambda (_%$%g81628212%_)
                                    (if (gx#identifier? _%$%g81628212%_)
                                        (_%lp8090%_ _%$%g81008142%_ '#t)
                                        (_%$%g81598185%_ _%$%g81618189%_)))
                                  _%$%hd81648196%_)
                                 (_%$%g81598185%_ _%$%g81618189%_))))
                         (_%$%g81598185%_ _%$%g81618189%_))))
                 (_%$%g81598185%_ _%$%g81618189%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g81588227%_
                                              _%$%g81018144%_)))
                                         _%$%tl81048139%_
                                         _%$%hd81038136%_)))
                                    (_%$%g80978125%_ _%$%g80998129%_)))))
                        (_%$%g80968231%_ _%rest8093%_)))))
                 (_%opt-lambda-split4854%_
                  (lambda (_%hd7939%_)
                    (let _%lp7942%_ ((_%rest7945%_ _%hd7939%_)
                                     (_%pre7947%_ '())
                                     (_%opt7948%_ '()))
                      (let* ((_%$%g79517963%_
                              (lambda (_%$%g79527959%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g79527959%_)))
                             (_%$%g79507974%_
                              (lambda (_%$%g79527967%_)
                                ((lambda ()
                                   (values (reverse _%pre7947%_)
                                           (reverse _%opt7948%_)
                                           _%rest7945%_)))))
                             (_%$%g79498083%_
                              (lambda (_%$%g79527978%_)
                                (if (gx#stx-pair? _%$%g79527978%_)
                                    (let ((_%$%e79557981%_
                                           (gx#syntax-e _%$%g79527978%_)))
                                      (let ((_%$%hd79567985%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e79557981%_)))
                                            (_%$%tl79577988%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e79557981%_))))
                                        ((lambda (_%$%g79537991%_
                                                  _%$%g79547993%_)
                                           (let* ((_%$%g80098024%_
                                                   (lambda (_%$%g80108020%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g80108020%_)))
                                                  (_%$%g80088035%_
                                                   (lambda (_%$%g80108028%_)
                                                     ((lambda ()
                                                        (_%lp7942%_
                                                         _%$%g79537991%_
                                                         (cons _%$%g79547993%_
                                                               _%pre7947%_)
                                                         _%opt7948%_)))))
                                                  (_%$%g80078079%_
                                                   (lambda (_%$%g80108039%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g80108039%_)
                                                         (let ((_%$%e80138042%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g80108039%_)))
                   (let ((_%$%hd80148046%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e80138042%_)))
                         (_%$%tl80158049%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e80138042%_))))
                     (if (gx#stx-pair? _%$%tl80158049%_)
                         (let ((_%$%e80168052%_
                                (gx#syntax-e _%$%tl80158049%_)))
                           (let ((_%$%hd80178056%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e80168052%_)))
                                 (_%$%tl80188059%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e80168052%_))))
                             (if (gx#stx-null? _%$%tl80188059%_)
                                 ((lambda (_%$%g80118062%_ _%$%g80128064%_)
                                    (_%lp7942%_
                                     _%$%g79537991%_
                                     _%pre7947%_
                                     (cons (cons _%$%g80128064%_
                                                 _%$%g80118062%_)
                                           _%opt7948%_)))
                                  _%$%hd80178056%_
                                  _%$%hd80148046%_)
                                 (_%$%g80088035%_ _%$%g80108039%_))))
                         (_%$%g80088035%_ _%$%g80108039%_))))
                 (_%$%g80088035%_ _%$%g80108039%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g80078079%_
                                              _%$%g79547993%_)))
                                         _%$%tl79577988%_
                                         _%$%hd79567985%_)))
                                    (_%$%g79507974%_ _%$%g79527978%_)))))
                        (_%$%g79498083%_ _%rest7945%_)))))
                 (_%kw-lambda?4855%_
                  (lambda (_%hd7607%_)
                    (let _%lp7610%_ ((_%rest7613%_ _%hd7607%_)
                                     (_%opt?7615%_ '#f)
                                     (_%key?7616%_ '#f))
                      (let* ((_%$%g76217651%_
                              (lambda (_%$%g76227647%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g76227647%_)))
                             (_%$%g76207666%_
                              (lambda (_%$%g76227655%_)
                                ((lambda ()
                                   (if _%key?7616%_
                                       (let ((_%$e7662%_
                                              (gx#stx-null? _%rest7613%_)))
                                         (if _%$e7662%_
                                             _%$e7662%_
                                             (gx#identifier? _%rest7613%_)))
                                       '#f)))))
                             (_%$%g76197772%_
                              (lambda (_%$%g76227670%_)
                                (if (gx#stx-pair? _%$%g76227670%_)
                                    (let ((_%$%e76437673%_
                                           (gx#syntax-e _%$%g76227670%_)))
                                      (let ((_%$%hd76447677%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e76437673%_)))
                                            (_%$%tl76457680%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e76437673%_))))
                                        ((lambda (_%$%g76417683%_
                                                  _%$%g76427685%_)
                                           (let* ((_%$%g77017715%_
                                                   (lambda (_%$%g77027711%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g77027711%_)))
                                                  (_%$%g77007726%_
                                                   (lambda (_%$%g77027719%_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _%$%g76427685%_)
                                                            (if (not _%opt?7615%_)
                                                                (_%lp7610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g76417683%_
                         '#f
                         _%key?7616%_)
                        '#f)
                    '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g76997768%_
                                                   (lambda (_%$%g77027730%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g77027730%_)
                                                         (let ((_%$%e77047733%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g77027730%_)))
                   (let ((_%$%hd77057737%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e77047733%_)))
                         (_%$%tl77067740%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e77047733%_))))
                     (if (gx#stx-pair? _%$%tl77067740%_)
                         (let ((_%$%e77077743%_
                                (gx#syntax-e _%$%tl77067740%_)))
                           (let ((_%$%hd77087747%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e77077743%_)))
                                 (_%$%tl77097750%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e77077743%_))))
                             (if (gx#stx-null? _%$%tl77097750%_)
                                 ((lambda (_%$%g77037753%_)
                                    (if (gx#identifier? _%$%g77037753%_)
                                        (_%lp7610%_
                                         _%$%g76417683%_
                                         '#t
                                         _%key?7616%_)
                                        '#f))
                                  _%$%hd77057737%_)
                                 (_%$%g77007726%_ _%$%g77027730%_))))
                         (_%$%g77007726%_ _%$%g77027730%_))))
                 (_%$%g77007726%_ _%$%g77027730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g76997768%_
                                              _%$%g76427685%_)))
                                         _%$%tl76457680%_
                                         _%$%hd76447677%_)))
                                    (_%$%g76207666%_ _%$%g76227670%_))))
                             (_%$%g76187819%_
                              (lambda (_%$%g76227776%_)
                                (if (gx#stx-pair? _%$%g76227776%_)
                                    (let ((_%$%e76347779%_
                                           (gx#syntax-e _%$%g76227776%_)))
                                      (let ((_%$%hd76357783%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e76347779%_)))
                                            (_%$%tl76367786%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e76347779%_))))
                                        (if (gx#stx-datum? _%$%hd76357783%_)
                                            (let ((_%$%e76377789%_
                                                   (gx#stx-e
                                                    _%$%hd76357783%_)))
                                              (if (equal? _%$%e76377789%_
                                                          '#!key)
                                                  (if (gx#stx-pair?
                                                       _%$%tl76367786%_)
                                                      (let ((_%$%e76387793%_
                                                             (gx#syntax-e
                                                              _%$%tl76367786%_)))
                                                        (let ((_%$%hd76397797%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e76387793%_)))
                      (_%$%tl76407800%_
                       (let () (declare (not safe)) (##cdr _%$%e76387793%_))))
                  ((lambda (_%$%g76327803%_ _%$%g76337805%_)
                     (if (gx#identifier? _%$%g76337805%_)
                         (_%lp7610%_ _%$%g76327803%_ _%opt?7615%_ '#t)
                         '#f))
                   _%$%tl76407800%_
                   _%$%hd76397797%_)))
              (_%$%g76197772%_ _%$%g76227776%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g76197772%_
                                                   _%$%g76227776%_)))
                                            (_%$%g76197772%_
                                             _%$%g76227776%_))))
                                    (_%$%g76197772%_ _%$%g76227776%_))))
                             (_%$%g76177935%_
                              (lambda (_%$%g76227823%_)
                                (if (gx#stx-pair? _%$%g76227823%_)
                                    (let ((_%$%e76267826%_
                                           (gx#syntax-e _%$%g76227823%_)))
                                      (let ((_%$%hd76277830%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e76267826%_)))
                                            (_%$%tl76287833%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e76267826%_))))
                                        (if (gx#stx-pair? _%$%tl76287833%_)
                                            (let ((_%$%e76297836%_
                                                   (gx#syntax-e
                                                    _%$%tl76287833%_)))
                                              (let ((_%$%hd76307840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e76297836%_)))
                                                    (_%$%tl76317843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e76297836%_))))
                                                ((lambda (_%$%g76237846%_
                                                          _%$%g76247848%_
                                                          _%$%g76257849%_)
                                                   (if (gx#stx-keyword?
                                                        _%$%g76257849%_)
                                                       (let* ((_%$%g78647878%_
                                                               (lambda (_%$%g78657874%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g78657874%_)))
                      (_%$%g78637889%_
                       (lambda (_%$%g78657882%_)
                         ((lambda ()
                            (if (gx#identifier? _%$%g76247848%_)
                                (_%lp7610%_ _%$%g76237846%_ _%opt?7615%_ '#t)
                                '#f)))))
                      (_%$%g78627931%_
                       (lambda (_%$%g78657893%_)
                         (if (gx#stx-pair? _%$%g78657893%_)
                             (let ((_%$%e78677896%_
                                    (gx#syntax-e _%$%g78657893%_)))
                               (let ((_%$%hd78687900%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e78677896%_)))
                                     (_%$%tl78697903%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e78677896%_))))
                                 (if (gx#stx-pair? _%$%tl78697903%_)
                                     (let ((_%$%e78707906%_
                                            (gx#syntax-e _%$%tl78697903%_)))
                                       (let ((_%$%hd78717910%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e78707906%_)))
                                             (_%$%tl78727913%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e78707906%_))))
                                         (if (gx#stx-null? _%$%tl78727913%_)
                                             ((lambda (_%$%g78667916%_)
                                                (if (gx#identifier?
                                                     _%$%g78667916%_)
                                                    (_%lp7610%_
                                                     _%$%g76237846%_
                                                     _%opt?7615%_
                                                     '#t)
                                                    '#f))
                                              _%$%hd78687900%_)
                                             (_%$%g78637889%_
                                              _%$%g78657893%_))))
                                     (_%$%g78637889%_ _%$%g78657893%_))))
                             (_%$%g78637889%_ _%$%g78657893%_)))))
                 (_%$%g78627931%_ _%$%g76247848%_))
               (_%$%g76187819%_ _%$%g76227823%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%tl76317843%_
                                                 _%$%hd76307840%_
                                                 _%$%hd76277830%_)))
                                            (_%$%g76187819%_
                                             _%$%g76227823%_))))
                                    (_%$%g76187819%_ _%$%g76227823%_)))))
                        (_%$%g76177935%_ _%rest7613%_)))))
                 (_%kw-lambda-split4856%_
                  (lambda (_%hd7340%_)
                    (let _%lp7343%_ ((_%rest7346%_ _%hd7340%_)
                                     (_%kwvar7348%_ '#f)
                                     (_%kwargs7349%_ '())
                                     (_%args7350%_ '()))
                      (let* ((_%$%g73557385%_
                              (lambda (_%$%g73567381%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g73567381%_)))
                             (_%$%g73547396%_
                              (lambda (_%$%g73567389%_)
                                ((lambda ()
                                   (values _%kwvar7348%_
                                           (reverse _%kwargs7349%_)
                                           (foldl cons
                                                  _%rest7346%_
                                                  _%args7350%_))))))
                             (_%$%g73537430%_
                              (lambda (_%$%g73567400%_)
                                (if (gx#stx-pair? _%$%g73567400%_)
                                    (let ((_%$%e73777403%_
                                           (gx#syntax-e _%$%g73567400%_)))
                                      (let ((_%$%hd73787407%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e73777403%_)))
                                            (_%$%tl73797410%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e73777403%_))))
                                        ((lambda (_%$%g73757413%_
                                                  _%$%g73767415%_)
                                           (_%lp7343%_
                                            _%$%g73757413%_
                                            _%kwvar7348%_
                                            _%kwargs7349%_
                                            (cons _%$%g73767415%_
                                                  _%args7350%_)))
                                         _%$%tl73797410%_
                                         _%$%hd73787407%_)))
                                    (_%$%g73547396%_ _%$%g73567400%_))))
                             (_%$%g73527477%_
                              (lambda (_%$%g73567434%_)
                                (if (gx#stx-pair? _%$%g73567434%_)
                                    (let ((_%$%e73687437%_
                                           (gx#syntax-e _%$%g73567434%_)))
                                      (let ((_%$%hd73697441%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e73687437%_)))
                                            (_%$%tl73707444%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e73687437%_))))
                                        (if (gx#stx-datum? _%$%hd73697441%_)
                                            (let ((_%$%e73717447%_
                                                   (gx#stx-e
                                                    _%$%hd73697441%_)))
                                              (if (equal? _%$%e73717447%_
                                                          '#!key)
                                                  (if (gx#stx-pair?
                                                       _%$%tl73707444%_)
                                                      (let ((_%$%e73727451%_
                                                             (gx#syntax-e
                                                              _%$%tl73707444%_)))
                                                        (let ((_%$%hd73737455%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e73727451%_)))
                      (_%$%tl73747458%_
                       (let () (declare (not safe)) (##cdr _%$%e73727451%_))))
                  ((lambda (_%$%g73667461%_ _%$%g73677463%_)
                     (if _%kwvar7348%_
                         (gx#raise-syntax-error
                          '#f
                          '"bad syntax; duplicate #!key argument"
                          _%stx4848%_
                          _%hd7340%_
                          _%$%g73677463%_)
                         (_%lp7343%_
                          _%$%g73667461%_
                          _%$%g73677463%_
                          _%kwargs7349%_
                          _%args7350%_)))
                   _%$%tl73747458%_
                   _%$%hd73737455%_)))
              (_%$%g73537430%_ _%$%g73567434%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g73537430%_
                                                   _%$%g73567434%_)))
                                            (_%$%g73537430%_
                                             _%$%g73567434%_))))
                                    (_%$%g73537430%_ _%$%g73567434%_))))
                             (_%$%g73517603%_
                              (lambda (_%$%g73567481%_)
                                (if (gx#stx-pair? _%$%g73567481%_)
                                    (let ((_%$%e73607484%_
                                           (gx#syntax-e _%$%g73567481%_)))
                                      (let ((_%$%hd73617488%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e73607484%_)))
                                            (_%$%tl73627491%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e73607484%_))))
                                        (if (gx#stx-pair? _%$%tl73627491%_)
                                            (let ((_%$%e73637494%_
                                                   (gx#syntax-e
                                                    _%$%tl73627491%_)))
                                              (let ((_%$%hd73647498%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e73637494%_)))
                                                    (_%$%tl73657501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e73637494%_))))
                                                ((lambda (_%$%g73577504%_
                                                          _%$%g73587506%_
                                                          _%$%g73597507%_)
                                                   (if (gx#stx-keyword?
                                                        _%$%g73597507%_)
                                                       (let ((_%key7521%_
                                                              (gx#stx-e
                                                               _%$%g73597507%_)))
                                                         (if (find (lambda (_%kwarg7524%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (eq? _%key7521%_ (car _%kwarg7524%_)))
                           _%kwargs7349%_)
                     (gx#raise-syntax-error
                      '#f
                      '"bad syntax; duplicate keyword argument"
                      _%stx4848%_
                      _%hd7340%_
                      _%key7521%_)
                     (let* ((_%$%g75287543%_
                             (lambda (_%$%g75297539%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g75297539%_)))
                            (_%$%g75277554%_
                             (lambda (_%$%g75297547%_)
                               ((lambda ()
                                  (_%lp7343%_
                                   _%$%g73577504%_
                                   _%kwvar7348%_
                                   (cons (list _%key7521%_
                                               _%$%g73587506%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'error)
                                                     (cons '"Missing required keyword argument"
                                                           (cons _%$%g73597507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%kwargs7349%_)
                                   _%args7350%_)))))
                            (_%$%g75267599%_
                             (lambda (_%$%g75297558%_)
                               (if (gx#stx-pair? _%$%g75297558%_)
                                   (let ((_%$%e75327561%_
                                          (gx#syntax-e _%$%g75297558%_)))
                                     (let ((_%$%hd75337565%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e75327561%_)))
                                           (_%$%tl75347568%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e75327561%_))))
                                       (if (gx#stx-pair? _%$%tl75347568%_)
                                           (let ((_%$%e75357571%_
                                                  (gx#syntax-e
                                                   _%$%tl75347568%_)))
                                             (let ((_%$%hd75367575%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e75357571%_)))
                                                   (_%$%tl75377578%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e75357571%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl75377578%_)
                                                   ((lambda (_%$%g75307581%_
                                                             _%$%g75317583%_)
                                                      (_%lp7343%_
                                                       _%$%g73577504%_
                                                       _%kwvar7348%_
                                                       (cons (list _%key7521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g75317583%_
                           _%$%g75307581%_)
                     _%kwargs7349%_)
               _%args7350%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%hd75367575%_
                                                    _%$%hd75337565%_)
                                                   (_%$%g75277554%_
                                                    _%$%g75297558%_))))
                                           (_%$%g75277554%_ _%$%g75297558%_))))
                                   (_%$%g75277554%_ _%$%g75297558%_)))))
                       (_%$%g75267599%_ _%$%g73587506%_))))
               (_%$%g73527477%_ _%$%g73567481%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%tl73657501%_
                                                 _%$%hd73647498%_
                                                 _%$%hd73617488%_)))
                                            (_%$%g73527477%_
                                             _%$%g73567481%_))))
                                    (_%$%g73527477%_ _%$%g73567481%_)))))
                        (_%$%g73517603%_ _%rest7346%_)))))
                 (_%check-duplicate-bindings4857%_
                  (lambda (_%hd7032%_)
                    (let _%lp7035%_ ((_%rest7038%_ _%hd7032%_)
                                     (_%ids7040%_ '()))
                      (let* ((_%$%g70437055%_
                              (lambda (_%$%g70447051%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g70447051%_)))
                             (_%$%g70427066%_
                              (lambda (_%$%g70447059%_)
                                ((lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _%rest7038%_)
                                        _%ids7040%_
                                        (cons _%rest7038%_ _%ids7040%_))
                                    _%stx4848%_)))))
                             (_%$%g70417336%_
                              (lambda (_%$%g70447070%_)
                                (if (gx#stx-pair? _%$%g70447070%_)
                                    (let ((_%$%e70477073%_
                                           (gx#syntax-e _%$%g70447070%_)))
                                      (let ((_%$%hd70487077%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e70477073%_)))
                                            (_%$%tl70497080%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e70477073%_))))
                                        ((lambda (_%$%g70457083%_
                                                  _%$%g70467085%_)
                                           (if (gx#identifier? _%$%g70467085%_)
                                               (_%lp7035%_
                                                _%$%g70457083%_
                                                (cons _%$%g70467085%_
                                                      _%ids7040%_))
                                               (if (gx#stx-pair?
                                                    _%$%g70467085%_)
                                                   (let* ((_%$%g71047118%_
                                                           (lambda (_%$%g71057114%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g71057114%_)))
                                                          (_%$%g71037160%_
                                                           (lambda (_%$%g71057122%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g71057122%_)
                         (let ((_%$%e71077125%_ (gx#syntax-e _%$%g71057122%_)))
                           (let ((_%$%hd71087129%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e71077125%_)))
                                 (_%$%tl71097132%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e71077125%_))))
                             (if (gx#stx-pair? _%$%tl71097132%_)
                                 (let ((_%$%e71107135%_
                                        (gx#syntax-e _%$%tl71097132%_)))
                                   (let ((_%$%hd71117139%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e71107135%_)))
                                         (_%$%tl71127142%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e71107135%_))))
                                     (if (gx#stx-null? _%$%tl71127142%_)
                                         ((lambda (_%$%g71067145%_)
                                            (_%lp7035%_
                                             _%$%g70457083%_
                                             (cons _%$%g71067145%_
                                                   _%ids7040%_)))
                                          _%$%hd71087129%_)
                                         (_%$%g71047118%_ _%$%g71057122%_))))
                                 (_%$%g71047118%_ _%$%g71057122%_))))
                         (_%$%g71047118%_ _%$%g71057122%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g71037160%_
                                                      _%$%g70467085%_))
                                                   (if (gx#stx-keyword?
                                                        _%$%g70467085%_)
                                                       (let* ((_%$%g71667178%_
                                                               (lambda (_%$%g71677174%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g71677174%_)))
                      (_%$%g71657281%_
                       (lambda (_%$%g71677182%_)
                         (if (gx#stx-pair? _%$%g71677182%_)
                             (let ((_%$%e71707185%_
                                    (gx#syntax-e _%$%g71677182%_)))
                               (let ((_%$%hd71717189%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e71707185%_)))
                                     (_%$%tl71727192%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e71707185%_))))
                                 ((lambda (_%$%g71687195%_ _%$%g71697197%_)
                                    (let* ((_%$%g72107224%_
                                            (lambda (_%$%g72117220%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g72117220%_)))
                                           (_%$%g72097235%_
                                            (lambda (_%$%g72117228%_)
                                              ((lambda ()
                                                 (_%lp7035%_
                                                  _%$%g71687195%_
                                                  (cons _%$%g71697197%_
                                                        _%ids7040%_))))))
                                           (_%$%g72087277%_
                                            (lambda (_%$%g72117239%_)
                                              (if (gx#stx-pair?
                                                   _%$%g72117239%_)
                                                  (let ((_%$%e72137242%_
                                                         (gx#syntax-e
                                                          _%$%g72117239%_)))
                                                    (let ((_%$%hd72147246%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e72137242%_)))
                                                          (_%$%tl72157249%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e72137242%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl72157249%_)
                                                          (let ((_%$%e72167252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl72157249%_)))
                    (let ((_%$%hd72177256%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e72167252%_)))
                          (_%$%tl72187259%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e72167252%_))))
                      (if (gx#stx-null? _%$%tl72187259%_)
                          ((lambda (_%$%g72127262%_)
                             (_%lp7035%_
                              _%$%g71687195%_
                              (cons _%$%g72127262%_ _%ids7040%_)))
                           _%$%hd72147246%_)
                          (_%$%g72097235%_ _%$%g72117239%_))))
                  (_%$%g72097235%_ _%$%g72117239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g72097235%_
                                                   _%$%g72117239%_)))))
                                      (_%$%g72087277%_ _%$%g71697197%_)))
                                  _%$%tl71727192%_
                                  _%$%hd71717189%_)))
                             (_%$%g71667178%_ _%$%g71677182%_)))))
                 (_%$%g71657281%_ _%$%g70457083%_))
               (if (eq? (gx#stx-e _%$%g70467085%_) '#!key)
                   (let* ((_%$%g72877299%_
                           (lambda (_%$%g72887295%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g72887295%_)))
                          (_%$%g72867330%_
                           (lambda (_%$%g72887303%_)
                             (if (gx#stx-pair? _%$%g72887303%_)
                                 (let ((_%$%e72917306%_
                                        (gx#syntax-e _%$%g72887303%_)))
                                   (let ((_%$%hd72927310%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e72917306%_)))
                                         (_%$%tl72937313%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e72917306%_))))
                                     ((lambda (_%$%g72897316%_ _%$%g72907318%_)
                                        (_%lp7035%_
                                         _%$%g72897316%_
                                         (cons _%$%g72907318%_ _%ids7040%_)))
                                      _%$%tl72937313%_
                                      _%$%hd72927310%_)))
                                 (_%$%g72877299%_ _%$%g72887303%_)))))
                     (_%$%g72867330%_ _%$%g70457083%_))
                   (error '"BUG: check-duplicate-bindings"
                          _%stx4848%_
                          _%rest7038%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%tl70497080%_
                                         _%$%hd70487077%_)))
                                    (_%$%g70427066%_ _%$%g70447070%_)))))
                        (_%$%g70417336%_ _%rest7038%_)))))
                 (_%generate-opt-primary4858%_
                  (lambda (_%pre6828%_ _%opt6830%_ _%tail6831%_ _%body6832%_)
                    (let* ((_%$%g68346875%_
                            (lambda (_%$%g68356871%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g68356871%_)))
                           (_%$%g68337028%_
                            (lambda (_%$%g68356879%_)
                              (if (gx#stx-pair? _%$%g68356879%_)
                                  (let ((_%$%e68406882%_
                                         (gx#syntax-e _%$%g68356879%_)))
                                    (let ((_%$%hd68416886%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e68406882%_)))
                                          (_%$%tl68426889%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e68406882%_))))
                                      (if (gx#stx-pair/null? _%$%hd68416886%_)
                                          (let ((_g17818_
                                                 (gx#syntax-split-splice
                                                  _%$%hd68416886%_
                                                  '0)))
                                            (begin
                                              (let ((_g17819_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g17818_)
                                                           (##values-length
                                                            _g17818_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g17819_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g17819_)))
                                              (let ((_%$%target68436892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g17818_
                                                        0)))
                                                    (_%$%tl68456895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g17818_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl68456895%_)
                                                    (letrec ((_%$%loop68466898%_
                                                              (lambda (_%$%hd68446902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%pre68506905%_)
                        (if (gx#stx-pair? _%$%hd68446902%_)
                            (let ((_%$%e68476907%_
                                   (gx#syntax-e _%$%hd68446902%_)))
                              (let ((_%$%lp-hd68486911%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e68476907%_)))
                                    (_%$%lp-tl68496914%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e68476907%_))))
                                (_%$%loop68466898%_
                                 _%$%lp-tl68496914%_
                                 (cons _%$%lp-hd68486911%_
                                       _%$%pre68506905%_))))
                            (let ((_%$%pre68516917%_
                                   (reverse _%$%pre68506905%_)))
                              (if (gx#stx-pair? _%$%tl68426889%_)
                                  (let ((_%$%e68526920%_
                                         (gx#syntax-e _%$%tl68426889%_)))
                                    (let ((_%$%hd68536924%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e68526920%_)))
                                          (_%$%tl68546927%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e68526920%_))))
                                      (if (gx#stx-pair/null? _%$%hd68536924%_)
                                          (let ((_g17820_
                                                 (gx#syntax-split-splice
                                                  _%$%hd68536924%_
                                                  '0)))
                                            (begin
                                              (let ((_g17821_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g17820_)
                                                           (##values-length
                                                            _g17820_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g17821_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g17821_)))
                                              (let ((_%$%target68556930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g17820_
                                                        0)))
                                                    (_%$%tl68576933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g17820_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl68576933%_)
                                                    (letrec ((_%$%loop68586936%_
                                                              (lambda (_%$%hd68566940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%opt68626943%_)
                        (if (gx#stx-pair? _%$%hd68566940%_)
                            (let ((_%$%e68596945%_
                                   (gx#syntax-e _%$%hd68566940%_)))
                              (let ((_%$%lp-hd68606949%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e68596945%_)))
                                    (_%$%lp-tl68616952%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e68596945%_))))
                                (_%$%loop68586936%_
                                 _%$%lp-tl68616952%_
                                 (cons _%$%lp-hd68606949%_
                                       _%$%opt68626943%_))))
                            (let ((_%$%opt68636955%_
                                   (reverse _%$%opt68626943%_)))
                              (if (gx#stx-pair? _%$%tl68546927%_)
                                  (let ((_%$%e68646958%_
                                         (gx#syntax-e _%$%tl68546927%_)))
                                    (let ((_%$%hd68656962%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e68646958%_)))
                                          (_%$%tl68666965%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e68646958%_))))
                                      (if (gx#stx-pair? _%$%tl68666965%_)
                                          (let ((_%$%e68676968%_
                                                 (gx#syntax-e
                                                  _%$%tl68666965%_)))
                                            (let ((_%$%hd68686972%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e68676968%_)))
                                                  (_%$%tl68696975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e68676968%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl68696975%_)
                                                  ((lambda (_%$%g68366978%_
                                                            _%$%g68376980%_
                                                            _%$%g68386981%_
                                                            _%$%g68396982%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%$%g70117016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%$%g70127019%_)
                                  (cons _%$%g70117016%_ _%$%g70127019%_))
                                (foldr (lambda (_%$%g70137022%_
                                                _%$%g70147025%_)
                                         (cons _%$%g70137022%_
                                               _%$%g70147025%_))
                                       _%$%g68376980%_
                                       _%$%g68386981%_)
                                _%$%g68396982%_)
                         _%$%g68366978%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%hd68686972%_
                                                   _%$%hd68656962%_
                                                   _%$%opt68636955%_
                                                   _%$%pre68516917%_)
                                                  (_%$%g68346875%_
                                                   _%$%g68356879%_))))
                                          (_%$%g68346875%_ _%$%g68356879%_))))
                                  (_%$%g68346875%_ _%$%g68356879%_)))))))
              (_%$%loop68586936%_ _%$%target68556930%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g68346875%_
                                                     _%$%g68356879%_)))))
                                          (_%$%g68346875%_ _%$%g68356879%_))))
                                  (_%$%g68346875%_ _%$%g68356879%_)))))))
              (_%$%loop68466898%_ _%$%target68436892%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g68346875%_
                                                     _%$%g68356879%_)))))
                                          (_%$%g68346875%_ _%$%g68356879%_))))
                                  (_%$%g68346875%_ _%$%g68356879%_)))))
                      (_%$%g68337028%_
                       (list _%pre6828%_
                             (map car _%opt6830%_)
                             _%tail6831%_
                             _%body6832%_)))))
                 (_%generate-opt-dispatch4859%_
                  (lambda (_%primary6822%_
                           _%pre6824%_
                           _%opt6825%_
                           _%tail6826%_)
                    (cons (list _%pre6824%_
                                (_%generate-opt-clause4861%_
                                 _%primary6822%_
                                 _%pre6824%_
                                 _%opt6825%_))
                          (_%generate-opt-dispatch*4860%_
                           _%primary6822%_
                           _%pre6824%_
                           _%opt6825%_
                           _%tail6826%_))))
                 (_%generate-opt-dispatch*4860%_
                  (lambda (_%primary6379%_
                           _%pre6381%_
                           _%opt6382%_
                           _%tail6383%_)
                    (let _%recur6385%_ ((_%opt-rest6388%_ _%opt6382%_)
                                        (_%right6390%_ '()))
                      (if (pair? _%opt-rest6388%_)
                          (let* ((_%hd6394%_ (caar _%opt-rest6388%_))
                                 (_%rest6397%_ (cdr _%opt-rest6388%_))
                                 (_%right*6400%_
                                  (cons _%hd6394%_ _%right6390%_))
                                 (_%$%g64036420%_
                                  (lambda (_%$%g64046416%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g64046416%_)))
                                 (_%$%g64026600%_
                                  (lambda (_%$%g64046424%_)
                                    (if (gx#stx-pair/null? _%$%g64046424%_)
                                        (let ((_g17822_
                                               (gx#syntax-split-splice
                                                _%$%g64046424%_
                                                '0)))
                                          (begin
                                            (let ((_g17823_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g17822_)
                                                         (##values-length
                                                          _g17822_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g17823_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g17823_)))
                                            (let ((_%$%target64066427%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g17822_
                                                      0)))
                                                  (_%$%tl64086430%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g17822_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl64086430%_)
                                                  (letrec ((_%$%loop64096433%_
                                                            (lambda (_%$%hd64076437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%pre-bind64136440%_)
                      (if (gx#stx-pair? _%$%hd64076437%_)
                          (let ((_%$%e64106442%_
                                 (gx#syntax-e _%$%hd64076437%_)))
                            (let ((_%$%lp-hd64116446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e64106442%_)))
                                  (_%$%lp-tl64126449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e64106442%_))))
                              (_%$%loop64096433%_
                               _%$%lp-tl64126449%_
                               (cons _%$%lp-hd64116446%_
                                     _%$%pre-bind64136440%_))))
                          (let ((_%$%pre-bind64146452%_
                                 (reverse _%$%pre-bind64136440%_)))
                            ((lambda (_%$%g64056455%_)
                               (let* ((_%$%g64776494%_
                                       (lambda (_%$%g64786490%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%$%g64786490%_)))
                                      (_%$%g64766596%_
                                       (lambda (_%$%g64786498%_)
                                         (if (gx#stx-pair/null?
                                              _%$%g64786498%_)
                                             (let ((_g17824_
                                                    (gx#syntax-split-splice
                                                     _%$%g64786498%_
                                                     '0)))
                                               (begin
                                                 (let ((_g17825_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g17824_)
                                                              (##values-length
                                                               _g17824_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g17825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g17825_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target64806501%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g17824_
                                                           0)))
                                                       (_%$%tl64826504%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g17824_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%$%tl64826504%_)
                                                       (letrec ((_%$%loop64836507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd64816511%_ _%$%opt-bind64876514%_)
                           (if (gx#stx-pair? _%$%hd64816511%_)
                               (let ((_%$%e64846516%_
                                      (gx#syntax-e _%$%hd64816511%_)))
                                 (let ((_%$%lp-hd64856520%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e64846516%_)))
                                       (_%$%lp-tl64866523%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e64846516%_))))
                                   (_%$%loop64836507%_
                                    _%$%lp-tl64866523%_
                                    (cons _%$%lp-hd64856520%_
                                          _%$%opt-bind64876514%_))))
                               (let ((_%$%opt-bind64886526%_
                                      (reverse _%$%opt-bind64876514%_)))
                                 ((lambda (_%$%g64796529%_)
                                    (let* ((_%$%g65466554%_
                                            (lambda (_%$%g65476550%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g65476550%_)))
                                           (_%$%g65456592%_
                                            (lambda (_%$%g65476558%_)
                                              ((lambda (_%$%g65486561%_)
                                                 (cons (list (foldr (lambda (_%$%g65756580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g65766583%_)
                              (cons _%$%g65756580%_ _%$%g65766583%_))
                            (foldr (lambda (_%$%g65776586%_ _%$%g65786589%_)
                                     (cons _%$%g65776586%_ _%$%g65786589%_))
                                   (cons _%$%g65486561%_ '())
                                   _%$%g64796529%_)
                            _%$%g64056455%_)
                     (_%generate-opt-clause4861%_
                      _%primary6379%_
                      (foldr cons (reverse _%right*6400%_) _%pre6381%_)
                      _%rest6397%_))
               (_%recur6385%_ _%rest6397%_ _%right*6400%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%g65476558%_))))
                                      (_%$%g65456592%_ _%hd6394%_)))
                                  _%$%opt-bind64886526%_))))))
                 (_%$%loop64836507%_ _%$%target64806501%_ '()))
               (_%$%g64776494%_ _%$%g64786498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g64776494%_
                                              _%$%g64786498%_)))))
                                 (_%$%g64766596%_ (reverse _%right6390%_))))
                             _%$%pre-bind64146452%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop64096433%_
                                                     _%$%target64066427%_
                                                     '()))
                                                  (_%$%g64036420%_
                                                   _%$%g64046424%_)))))
                                        (_%$%g64036420%_ _%$%g64046424%_)))))
                            (_%$%g64026600%_ _%pre6381%_))
                          (if (gx#stx-null? _%tail6383%_)
                              '()
                              (let* ((_%$%g66086649%_
                                      (lambda (_%$%g66096645%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g66096645%_)))
                                     (_%$%g66076818%_
                                      (lambda (_%$%g66096653%_)
                                        (if (gx#stx-pair? _%$%g66096653%_)
                                            (let ((_%$%e66146656%_
                                                   (gx#syntax-e
                                                    _%$%g66096653%_)))
                                              (let ((_%$%hd66156660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e66146656%_)))
                                                    (_%$%tl66166663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e66146656%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%hd66156660%_)
                                                    (let ((_g17826_
                                                           (gx#syntax-split-splice
                                                            _%$%hd66156660%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g17827_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g17826_)
                             (##values-length _g17826_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g17827_ 2)))
                      (error "Context expects 2 values" _g17827_)))
                (let ((_%$%target66176666%_
                       (let () (declare (not safe)) (##values-ref _g17826_ 0)))
                      (_%$%tl66196669%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g17826_ 1))))
                  (if (gx#stx-null? _%$%tl66196669%_)
                      (letrec ((_%$%loop66206672%_
                                (lambda (_%$%hd66186676%_ _%$%pre66246679%_)
                                  (if (gx#stx-pair? _%$%hd66186676%_)
                                      (let ((_%$%e66216681%_
                                             (gx#syntax-e _%$%hd66186676%_)))
                                        (let ((_%$%lp-hd66226685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e66216681%_)))
                                              (_%$%lp-tl66236688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e66216681%_))))
                                          (_%$%loop66206672%_
                                           _%$%lp-tl66236688%_
                                           (cons _%$%lp-hd66226685%_
                                                 _%$%pre66246679%_))))
                                      (let ((_%$%pre66256691%_
                                             (reverse _%$%pre66246679%_)))
                                        (if (gx#stx-pair? _%$%tl66166663%_)
                                            (let ((_%$%e66266694%_
                                                   (gx#syntax-e
                                                    _%$%tl66166663%_)))
                                              (let ((_%$%hd66276698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e66266694%_)))
                                                    (_%$%tl66286701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e66266694%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%hd66276698%_)
                                                    (let ((_g17828_
                                                           (gx#syntax-split-splice
                                                            _%$%hd66276698%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g17829_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g17828_)
                             (##values-length _g17828_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g17829_ 2)))
                      (error "Context expects 2 values" _g17829_)))
                (let ((_%$%target66296704%_
                       (let () (declare (not safe)) (##values-ref _g17828_ 0)))
                      (_%$%tl66316707%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g17828_ 1))))
                  (if (gx#stx-null? _%$%tl66316707%_)
                      (letrec ((_%$%loop66326710%_
                                (lambda (_%$%hd66306714%_ _%$%opt66366717%_)
                                  (if (gx#stx-pair? _%$%hd66306714%_)
                                      (let ((_%$%e66336719%_
                                             (gx#syntax-e _%$%hd66306714%_)))
                                        (let ((_%$%lp-hd66346723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e66336719%_)))
                                              (_%$%lp-tl66356726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e66336719%_))))
                                          (_%$%loop66326710%_
                                           _%$%lp-tl66356726%_
                                           (cons _%$%lp-hd66346723%_
                                                 _%$%opt66366717%_))))
                                      (let ((_%$%opt66376729%_
                                             (reverse _%$%opt66366717%_)))
                                        (if (gx#stx-pair? _%$%tl66286701%_)
                                            (let ((_%$%e66386732%_
                                                   (gx#syntax-e
                                                    _%$%tl66286701%_)))
                                              (let ((_%$%hd66396736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e66386732%_)))
                                                    (_%$%tl66406739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e66386732%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl66406739%_)
                                                    (let ((_%$%e66416742%_
                                                           (gx#syntax-e
                                                            _%$%tl66406739%_)))
                                                      (let ((_%$%hd66426746%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e66416742%_)))
                    (_%$%tl66436749%_
                     (let () (declare (not safe)) (##cdr _%$%e66416742%_))))
                (if (gx#stx-null? _%$%tl66436749%_)
                    ((lambda (_%$%g66106752%_
                              _%$%g66116754%_
                              _%$%g66126755%_
                              _%$%g66136756%_)
                       (list (list (foldr (lambda (_%$%g67856790%_
                                                   _%$%g67866793%_)
                                            (cons _%$%g67856790%_
                                                  _%$%g67866793%_))
                                          (foldr (lambda (_%$%g67876796%_
                                                          _%$%g67886799%_)
                                                   (cons _%$%g67876796%_
                                                         _%$%g67886799%_))
                                                 _%$%g66116754%_
                                                 _%$%g66126755%_)
                                          _%$%g66136756%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%$%g66106752%_
                                                (foldr (lambda (_%$%g68016806%_
                                                                _%$%g68026809%_)
                                                         (cons _%$%g68016806%_
                                                               _%$%g68026809%_))
                                                       (foldr (lambda (_%$%g68036812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g68046815%_)
                        (cons _%$%g68036812%_ _%$%g68046815%_))
                      (cons _%$%g66116754%_ '())
                      _%$%g66126755%_)
               _%$%g66136756%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx4848%_)))))
                     _%$%hd66426746%_
                     _%$%hd66396736%_
                     _%$%opt66376729%_
                     _%$%pre66256691%_)
                    (_%$%g66086649%_ _%$%g66096653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g66086649%_
                                                     _%$%g66096653%_))))
                                            (_%$%g66086649%_
                                             _%$%g66096653%_)))))))
                        (_%$%loop66326710%_ _%$%target66296704%_ '()))
                      (_%$%g66086649%_ _%$%g66096653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g66086649%_
                                                     _%$%g66096653%_))))
                                            (_%$%g66086649%_
                                             _%$%g66096653%_)))))))
                        (_%$%loop66206672%_ _%$%target66176666%_ '()))
                      (_%$%g66086649%_ _%$%g66096653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g66086649%_
                                                     _%$%g66096653%_))))
                                            (_%$%g66086649%_
                                             _%$%g66096653%_)))))
                                (_%$%g66076818%_
                                 (list _%pre6381%_
                                       (reverse _%right6390%_)
                                       _%tail6383%_
                                       _%primary6379%_))))))))
                 (_%generate-opt-clause4861%_
                  (lambda (_%primary6081%_ _%pre6083%_ _%opt6084%_)
                    (let _%recur6086%_ ((_%opt-rest6089%_ _%opt6084%_)
                                        (_%right6091%_ '()))
                      (if (pair? _%opt-rest6089%_)
                          (let* ((_%hd6093%_ (car _%opt-rest6089%_))
                                 (_%rest6096%_ (cdr _%opt-rest6089%_))
                                 (_%$%g60996107%_
                                  (lambda (_%$%g61006103%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g61006103%_)))
                                 (_%$%g60986196%_
                                  (lambda (_%$%g61006111%_)
                                    ((lambda (_%$%g61016114%_)
                                       (let* ((_%$%g61306138%_
                                               (lambda (_%$%g61316134%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g61316134%_)))
                                              (_%$%g61296192%_
                                               (lambda (_%$%g61316142%_)
                                                 ((lambda (_%$%g61326145%_)
                                                    (let* ((_%$%g61586166%_
                                                            (lambda (_%$%g61596162%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g61596162%_)))
                                                           (_%$%g61576188%_
                                                            (lambda (_%$%g61596170%_)
                                                              ((lambda (_%$%g61606173%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%$%g61016114%_ '())
                                                 (cons _%$%g61326145%_ '()))
                                           '())
                                     (cons _%$%g61606173%_ '()))))
                       _%$%g61596170%_))))
              (_%$%g61576188%_
               (_%recur6086%_
                _%rest6096%_
                (cons _%$%g61016114%_ _%right6091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%g61316142%_))))
                                         (_%$%g61296192%_ (cdr _%hd6093%_))))
                                     _%$%g61006111%_))))
                            (_%$%g60986196%_ (car _%hd6093%_)))
                          (let* ((_%$%g62006237%_
                                  (lambda (_%$%g62016233%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g62016233%_)))
                                 (_%$%g61996375%_
                                  (lambda (_%$%g62016241%_)
                                    (if (gx#stx-pair? _%$%g62016241%_)
                                        (let ((_%$%e62056244%_
                                               (gx#syntax-e _%$%g62016241%_)))
                                          (let ((_%$%hd62066248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e62056244%_)))
                                                (_%$%tl62076251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e62056244%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%hd62066248%_)
                                                (let ((_g17830_
                                                       (gx#syntax-split-splice
                                                        _%$%hd62066248%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g17831_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g17830_)
                         (##values-length _g17830_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g17831_ 2)))
                  (error "Context expects 2 values" _g17831_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target62086254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g17830_
                                                              0)))
                                                          (_%$%tl62106257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g17830_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl62106257%_)
                                                          (letrec ((_%$%loop62116260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd62096264%_ _%$%pre62156267%_)
                              (if (gx#stx-pair? _%$%hd62096264%_)
                                  (let ((_%$%e62126269%_
                                         (gx#syntax-e _%$%hd62096264%_)))
                                    (let ((_%$%lp-hd62136273%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e62126269%_)))
                                          (_%$%lp-tl62146276%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e62126269%_))))
                                      (_%$%loop62116260%_
                                       _%$%lp-tl62146276%_
                                       (cons _%$%lp-hd62136273%_
                                             _%$%pre62156267%_))))
                                  (let ((_%$%pre62166279%_
                                         (reverse _%$%pre62156267%_)))
                                    (if (gx#stx-pair? _%$%tl62076251%_)
                                        (let ((_%$%e62176282%_
                                               (gx#syntax-e _%$%tl62076251%_)))
                                          (let ((_%$%hd62186286%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e62176282%_)))
                                                (_%$%tl62196289%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e62176282%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%hd62186286%_)
                                                (let ((_g17832_
                                                       (gx#syntax-split-splice
                                                        _%$%hd62186286%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g17833_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g17832_)
                         (##values-length _g17832_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g17833_ 2)))
                  (error "Context expects 2 values" _g17833_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target62206292%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g17832_
                                                              0)))
                                                          (_%$%tl62226295%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g17832_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl62226295%_)
                                                          (letrec ((_%$%loop62236298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd62216302%_ _%$%opt62276305%_)
                              (if (gx#stx-pair? _%$%hd62216302%_)
                                  (let ((_%$%e62246307%_
                                         (gx#syntax-e _%$%hd62216302%_)))
                                    (let ((_%$%lp-hd62256311%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e62246307%_)))
                                          (_%$%lp-tl62266314%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e62246307%_))))
                                      (_%$%loop62236298%_
                                       _%$%lp-tl62266314%_
                                       (cons _%$%lp-hd62256311%_
                                             _%$%opt62276305%_))))
                                  (let ((_%$%opt62286317%_
                                         (reverse _%$%opt62276305%_)))
                                    (if (gx#stx-pair? _%$%tl62196289%_)
                                        (let ((_%$%e62296320%_
                                               (gx#syntax-e _%$%tl62196289%_)))
                                          (let ((_%$%hd62306324%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e62296320%_)))
                                                (_%$%tl62316327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e62296320%_))))
                                            (if (gx#stx-null? _%$%tl62316327%_)
                                                ((lambda (_%$%g62026330%_
                                                          _%$%g62036332%_
                                                          _%$%g62046333%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%$%g62026330%_
                                                          (foldr (lambda (_%$%g63586363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%$%g63596366%_)
                           (cons _%$%g63586363%_ _%$%g63596366%_))
                         (foldr (lambda (_%$%g63606369%_ _%$%g63616372%_)
                                  (cons _%$%g63606369%_ _%$%g63616372%_))
                                '()
                                _%$%g62036332%_)
                         _%$%g62046333%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx4848%_)))
                                                 _%$%hd62306324%_
                                                 _%$%opt62286317%_
                                                 _%$%pre62166279%_)
                                                (_%$%g62006237%_
                                                 _%$%g62016241%_))))
                                        (_%$%g62006237%_ _%$%g62016241%_)))))))
                    (_%$%loop62236298%_ _%$%target62206292%_ '()))
                  (_%$%g62006237%_ _%$%g62016241%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g62006237%_
                                                 _%$%g62016241%_))))
                                        (_%$%g62006237%_ _%$%g62016241%_)))))))
                    (_%$%loop62116260%_ _%$%target62086254%_ '()))
                  (_%$%g62006237%_ _%$%g62016241%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g62006237%_
                                                 _%$%g62016241%_))))
                                        (_%$%g62006237%_ _%$%g62016241%_)))))
                            (_%$%g61996375%_
                             (list _%pre6083%_
                                   (reverse _%right6091%_)
                                   _%primary6081%_)))))))
                 (_%generate-kw-primary4862%_
                  (lambda (_%key5461%_
                           _%kwargs5463%_
                           _%args5464%_
                           _%body5465%_)
                    (letrec ((_%make-body5467%_
                              (lambda (_%kwargs5950%_ _%kwvals5952%_)
                                (if (pair? _%kwargs5950%_)
                                    (let* ((_%kwarg5954%_ (car _%kwargs5950%_))
                                           (_%var5957%_ (cadr _%kwarg5954%_))
                                           (_%default5960%_
                                            (caddr _%kwarg5954%_))
                                           (_%kwval5963%_ (car _%kwvals5952%_))
                                           (_%rest-kwargs5966%_
                                            (cdr _%kwargs5950%_))
                                           (_%rest-kwvals5969%_
                                            (cdr _%kwvals5952%_))
                                           (_%$%g59745997%_
                                            (lambda (_%$%g59755993%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g59755993%_)))
                                           (_%$%g59736077%_
                                            (lambda (_%$%g59756001%_)
                                              (if (gx#stx-pair?
                                                   _%$%g59756001%_)
                                                  (let ((_%$%e59806004%_
                                                         (gx#syntax-e
                                                          _%$%g59756001%_)))
                                                    (let ((_%$%hd59816008%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e59806004%_)))
                                                          (_%$%tl59826011%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e59806004%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl59826011%_)
                                                          (let ((_%$%e59836014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl59826011%_)))
                    (let ((_%$%hd59846018%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e59836014%_)))
                          (_%$%tl59856021%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e59836014%_))))
                      (if (gx#stx-pair? _%$%tl59856021%_)
                          (let ((_%$%e59866024%_
                                 (gx#syntax-e _%$%tl59856021%_)))
                            (let ((_%$%hd59876028%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e59866024%_)))
                                  (_%$%tl59886031%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e59866024%_))))
                              (if (gx#stx-pair? _%$%tl59886031%_)
                                  (let ((_%$%e59896034%_
                                         (gx#syntax-e _%$%tl59886031%_)))
                                    (let ((_%$%hd59906038%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e59896034%_)))
                                          (_%$%tl59916041%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e59896034%_))))
                                      (if (gx#stx-null? _%$%tl59916041%_)
                                          ((lambda (_%$%g59766044%_
                                                    _%$%g59776046%_
                                                    _%$%g59786047%_
                                                    _%$%g59796048%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%$%g59796048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%$%g59786047%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%$%g59776046%_
                                                     (cons _%$%g59786047%_
                                                           '()))))
                                   '()))
                       '())
                 (cons _%$%g59766044%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%hd59906038%_
                                           _%$%hd59876028%_
                                           _%$%hd59846018%_
                                           _%$%hd59816008%_)
                                          (_%$%g59745997%_ _%$%g59756001%_))))
                                  (_%$%g59745997%_ _%$%g59756001%_))))
                          (_%$%g59745997%_ _%$%g59756001%_))))
                  (_%$%g59745997%_ _%$%g59756001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g59745997%_
                                                   _%$%g59756001%_)))))
                                      (_%$%g59736077%_
                                       (list _%var5957%_
                                             _%kwval5963%_
                                             _%default5960%_
                                             (_%make-body5467%_
                                              _%rest-kwargs5966%_
                                              _%rest-kwvals5969%_))))
                                    (cons 'begin _%body5465%_))))
                             (_%make-main5469%_
                              (lambda ()
                                (let* ((_%$%g57605768%_
                                        (lambda (_%$%g57615764%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g57615764%_)))
                                       (_%$%g57595942%_
                                        (lambda (_%$%g57615772%_)
                                          ((lambda (_%$%g57625775%_)
                                             (let* ((_%$%g57875804%_
                                                     (lambda (_%$%g57885800%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g57885800%_)))
                                                    (_%$%g57865938%_
                                                     (lambda (_%$%g57885808%_)
                                                       (if (gx#stx-pair/null?
                                                            _%$%g57885808%_)
                                                           (let ((_g17834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%$%g57885808%_ '0)))
                     (begin
                       (let ((_g17835_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g17834_)
                                    (##values-length _g17834_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g17835_ 2)))
                             (error "Context expects 2 values" _g17835_)))
                       (let ((_%$%target57905811%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g17834_ 0)))
                             (_%$%tl57925814%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g17834_ 1))))
                         (if (gx#stx-null? _%$%tl57925814%_)
                             (letrec ((_%$%loop57935817%_
                                       (lambda (_%$%hd57915821%_
                                                _%$%kwval57975824%_)
                                         (if (gx#stx-pair? _%$%hd57915821%_)
                                             (let ((_%$%e57945826%_
                                                    (gx#syntax-e
                                                     _%$%hd57915821%_)))
                                               (let ((_%$%lp-hd57955830%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e57945826%_)))
                                                     (_%$%lp-tl57965833%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e57945826%_))))
                                                 (_%$%loop57935817%_
                                                  _%$%lp-tl57965833%_
                                                  (cons _%$%lp-hd57955830%_
                                                        _%$%kwval57975824%_))))
                                             (let ((_%$%kwval57985836%_
                                                    (reverse _%$%kwval57975824%_)))
                                               ((lambda (_%$%g57895839%_)
                                                  (let* ((_%$%g58565864%_
                                                          (lambda (_%$%g58575860%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g58575860%_)))
                                                         (_%$%g58555934%_
                                                          (lambda (_%$%g58575868%_)
                                                            ((lambda (_%$%g58585871%_)
                                                               (let* ((_%$%g58845892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g58855888%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g58855888%_)))
                              (_%$%g58835922%_
                               (lambda (_%$%g58855896%_)
                                 ((lambda (_%$%g58865899%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%$%g57625775%_
                                                       (foldr (lambda (_%$%g59135916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g59145919%_)
                        (cons _%$%g59135916%_ _%$%g59145919%_))
                      _%$%g58585871%_
                      _%$%g57895839%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%$%g58865899%_ '())))
                                     (gx#stx-source _%stx4848%_)))
                                  _%$%g58855896%_))))
                         (_%$%g58835922%_
                          (_%make-body5467%_
                           _%kwargs5463%_
                           (foldr (lambda (_%$%g59255928%_ _%$%g59265931%_)
                                    (cons _%$%g59255928%_ _%$%g59265931%_))
                                  '()
                                  _%$%g57895839%_)))))
                     _%$%g58575868%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g58555934%_
                                                     _%args5464%_)))
                                                _%$%kwval57985836%_))))))
                               (_%$%loop57935817%_ _%$%target57905811%_ '()))
                             (_%$%g57875804%_ _%$%g57885808%_)))))
                   (_%$%g57875804%_ _%$%g57885808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g57865938%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs5463%_)))))
                                           _%$%g57615772%_))))
                                  (_%$%g57595942%_
                                   (let ((_%$e5946%_ _%key5461%_))
                                     (if _%$e5946%_
                                         _%$e5946%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch5470%_
                              (lambda (_%main5570%_)
                                (let* ((_%$%g55735581%_
                                        (lambda (_%$%g55745577%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g55745577%_)))
                                       (_%$%g55725750%_
                                        (lambda (_%$%g55745585%_)
                                          ((lambda (_%$%g55755588%_)
                                             (let* ((_%$%g56005617%_
                                                     (lambda (_%$%g56015613%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g56015613%_)))
                                                    (_%$%g55995711%_
                                                     (lambda (_%$%g56015621%_)
                                                       (if (gx#stx-pair/null?
                                                            _%$%g56015621%_)
                                                           (let ((_g17836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%$%g56015621%_ '0)))
                     (begin
                       (let ((_g17837_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g17836_)
                                    (##values-length _g17836_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g17837_ 2)))
                             (error "Context expects 2 values" _g17837_)))
                       (let ((_%$%target56035624%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g17836_ 0)))
                             (_%$%tl56055627%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g17836_ 1))))
                         (if (gx#stx-null? _%$%tl56055627%_)
                             (letrec ((_%$%loop56065630%_
                                       (lambda (_%$%hd56045634%_
                                                _%$%get-kw56105637%_)
                                         (if (gx#stx-pair? _%$%hd56045634%_)
                                             (let ((_%$%e56075639%_
                                                    (gx#syntax-e
                                                     _%$%hd56045634%_)))
                                               (let ((_%$%lp-hd56085643%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e56075639%_)))
                                                     (_%$%lp-tl56095646%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e56075639%_))))
                                                 (_%$%loop56065630%_
                                                  _%$%lp-tl56095646%_
                                                  (cons _%$%lp-hd56085643%_
                                                        _%$%get-kw56105637%_))))
                                             (let ((_%$%get-kw56115649%_
                                                    (reverse _%$%get-kw56105637%_)))
                                               ((lambda (_%$%g56025652%_)
                                                  (let* ((_%$%g56695677%_
                                                          (lambda (_%$%g56705673%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g56705673%_)))
                                                         (_%$%g56685707%_
                                                          (lambda (_%$%g56705681%_)
                                                            ((lambda (_%$%g56715684%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%$%g55755588%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%$%g56715684%_
                                                      (cons _%$%g55755588%_
                                                            (foldr (lambda (_%$%g56985701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g56995704%_)
                             (cons _%$%g56985701%_ _%$%g56995704%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%$%g56025652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx4848%_)))
                     _%$%g56705681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g56685707%_
                                                     _%main5570%_)))
                                                _%$%get-kw56115649%_))))))
                               (_%$%loop56065630%_ _%$%target56035624%_ '()))
                             (_%$%g56005617%_ _%$%g56015621%_)))))
                   (_%$%g56005617%_ _%$%g56015621%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g55995711%_
                                                (map (lambda (_%kwarg5715%_)
                                                       (let* ((_%$%g57185726%_
                                                               (lambda (_%$%g57195722%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g57195722%_)))
                      (_%$%g57175746%_
                       (lambda (_%$%g57195730%_)
                         ((lambda (_%$%g57205733%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%$%g55755588%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%$%g57205733%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%$%g57195730%_))))
                 (_%$%g57175746%_ (car _%kwarg5715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs5463%_))))
                                           _%$%g55745585%_))))
                                  (_%$%g55725750%_
                                   (let ((_%$e5754%_ _%key5461%_))
                                     (if _%$e5754%_
                                         _%$e5754%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%$%g54725480%_
                              (lambda (_%$%g54735476%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g54735476%_)))
                             (_%$%g54715566%_
                              (lambda (_%$%g54735484%_)
                                ((lambda (_%$%g54745487%_)
                                   (let* ((_%$%g55005508%_
                                           (lambda (_%$%g55015504%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g55015504%_)))
                                          (_%$%g54995562%_
                                           (lambda (_%$%g55015512%_)
                                             ((lambda (_%$%g55025515%_)
                                                (let* ((_%$%g55285536%_
                                                        (lambda (_%$%g55295532%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g55295532%_)))
                                                       (_%$%g55275558%_
                                                        (lambda (_%$%g55295540%_)
                                                          ((lambda (_%$%g55305543%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%$%g54745487%_ '())
                                             (cons _%$%g55305543%_ '()))
                                       '())
                                 (cons _%$%g55025515%_ '()))))
                   _%$%g55295540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g55275558%_
                                                   (_%make-main5469%_))))
                                              _%$%g55015512%_))))
                                     (_%$%g54995562%_
                                      (_%make-dispatch5470%_
                                       _%$%g54745487%_))))
                                 _%$%g54735484%_))))
                        (_%$%g54715566%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch4863%_
                  (lambda (_%primary5374%_ _%kwargs5376%_ _%strict?5377%_)
                    (let* ((_%$%g53795398%_
                            (lambda (_%$%g53805394%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g53805394%_)))
                           (_%$%g53785457%_
                            (lambda (_%$%g53805402%_)
                              (if (gx#stx-pair? _%$%g53805402%_)
                                  (let ((_%$%e53845405%_
                                         (gx#syntax-e _%$%g53805402%_)))
                                    (let ((_%$%hd53855409%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e53845405%_)))
                                          (_%$%tl53865412%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e53845405%_))))
                                      (if (gx#stx-pair? _%$%tl53865412%_)
                                          (let ((_%$%e53875415%_
                                                 (gx#syntax-e
                                                  _%$%tl53865412%_)))
                                            (let ((_%$%hd53885419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e53875415%_)))
                                                  (_%$%tl53895422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e53875415%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl53895422%_)
                                                  (let ((_%$%e53905425%_
                                                         (gx#syntax-e
                                                          _%$%tl53895422%_)))
                                                    (let ((_%$%hd53915429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e53905425%_)))
                                                          (_%$%tl53925432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e53905425%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl53925432%_)
                                                          ((lambda (_%$%g53815435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g53825437%_
                            _%$%g53835438%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%$%g53815435%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%$%g53835438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%$%g53825437%_ (cons _%$%g53815435%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%$%hd53915429%_
                   _%$%hd53885419%_
                   _%$%hd53855409%_)
                  (_%$%g53795398%_ _%$%g53805402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g53795398%_
                                                   _%$%g53805402%_))))
                                          (_%$%g53795398%_ _%$%g53805402%_))))
                                  (_%$%g53795398%_ _%$%g53805402%_)))))
                      (_%$%g53785457%_
                       (list (if _%strict?5377%_
                                 (_%generate-kw-table4864%_
                                  (map car _%kwargs5376%_))
                                 '#f)
                             _%primary5374%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table4864%_
                  (lambda (_%kws5348%_)
                    (let _%rehash5351%_ ((_%pht5354%_
                                          (make-vector
                                           (length _%kws5348%_)
                                           '#f)))
                      (let _%lp5357%_ ((_%rest5360%_ _%kws5348%_))
                        (if (pair? _%rest5360%_)
                            (let* ((_%key5363%_ (car _%rest5360%_))
                                   (_%rest5366%_ (cdr _%rest5360%_))
                                   (_%pos5369%_
                                    (fxmodulo
                                     (keyword-hash _%key5363%_)
                                     (vector-length _%pht5354%_))))
                              (if (vector-ref _%pht5354%_ _%pos5369%_)
                                  (if (fx< (vector-length _%pht5354%_) '8192)
                                      (_%rehash5351%_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _%pht5354%_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5348%_))
                                  (begin
                                    (vector-set!
                                     _%pht5354%_
                                     _%pos5369%_
                                     _%key5363%_)
                                    (_%lp5357%_ _%rest5366%_))))
                            _%pht5354%_))))))
          (let* ((_%$%g48684899%_
                  (lambda (_%$%g48694895%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g48694895%_)))
                 (_%$%g48675076%_
                  (lambda (_%$%g48694903%_)
                    (if (gx#stx-pair? _%$%g48694903%_)
                        (let ((_%$%e48884906%_ (gx#syntax-e _%$%g48694903%_)))
                          (let ((_%$%hd48894910%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e48884906%_)))
                                (_%$%tl48904913%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e48884906%_))))
                            (if (gx#stx-pair? _%$%tl48904913%_)
                                (let ((_%$%e48914916%_
                                       (gx#syntax-e _%$%tl48904913%_)))
                                  (let ((_%$%hd48924920%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e48914916%_)))
                                        (_%$%tl48934923%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e48914916%_))))
                                    ((lambda (_%$%g48864926%_ _%$%g48874928%_)
                                       (if (_%kw-lambda?4855%_ _%$%g48874928%_)
                                           (let* ((_%$%g49444951%_
                                                   (lambda (_%$%g49454947%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g49454947%_)))
                                                  (_%$%g49435072%_
                                                   (lambda (_%$%g49454955%_)
                                                     ((lambda ()
                                                        (let ((_g17838_
                                                               (_%kw-lambda-split4856%_
                                                                _%$%g48874928%_)))
                                                          (begin
                                                            (let ((_g17839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g17838_)
                                 (##values-length _g17838_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g17839_ 3)))
                          (error "Context expects 3 values" _g17839_)))
                    (let ((_%key4964%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g17838_ 0)))
                          (_%kwargs4966%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g17838_ 1)))
                          (_%args4967%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g17838_ 2))))
                      (let* ((_%$%g49694977%_
                              (lambda (_%$%g49704973%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g49704973%_)))
                             (_%$%g49685068%_
                              (lambda (_%$%g49704981%_)
                                ((lambda (_%$%g49714984%_)
                                   (let* ((_%$%g50025010%_
                                           (lambda (_%$%g50035006%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g50035006%_)))
                                          (_%$%g50015064%_
                                           (lambda (_%$%g50035014%_)
                                             ((lambda (_%$%g50045017%_)
                                                (let* ((_%$%g50305038%_
                                                        (lambda (_%$%g50315034%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g50315034%_)))
                                                       (_%$%g50295060%_
                                                        (lambda (_%$%g50315042%_)
                                                          ((lambda (_%$%g50325045%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%$%g49714984%_ '())
                                             (cons _%$%g50045017%_ '()))
                                       '())
                                 (cons _%$%g50325045%_ '()))))
                   _%$%g50315042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g50295060%_
                                                   (gx#stx-wrap-source
                                                    (_%generate-kw-dispatch4863%_
                                                     _%$%g49714984%_
                                                     _%kwargs4966%_
                                                     (not _%key4964%_))
                                                    (gx#stx-source
                                                     _%stx4848%_)))))
                                              _%$%g50035014%_))))
                                     (_%$%g50015064%_
                                      (gx#stx-wrap-source
                                       (_%generate-kw-primary4862%_
                                        _%key4964%_
                                        _%kwargs4966%_
                                        _%args4967%_
                                        _%$%g48864926%_)
                                       (gx#stx-source _%stx4848%_)))))
                                 _%$%g49704981%_))))
                        (_%$%g49685068%_ (gx#genident 'kw-lambda)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g49435072%_
                                              (_%check-duplicate-bindings4857%_
                                               _%$%g48874928%_)))
                                           (_%$%g48684899%_ _%$%g48694903%_)))
                                     _%$%tl48934923%_
                                     _%$%hd48924920%_)))
                                (_%$%g48684899%_ _%$%g48694903%_))))
                        (_%$%g48684899%_ _%$%g48694903%_))))
                 (_%$%g48665302%_
                  (lambda (_%$%g48695080%_)
                    (if (gx#stx-pair? _%$%g48695080%_)
                        (let ((_%$%e48805083%_ (gx#syntax-e _%$%g48695080%_)))
                          (let ((_%$%hd48815087%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e48805083%_)))
                                (_%$%tl48825090%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e48805083%_))))
                            (if (gx#stx-pair? _%$%tl48825090%_)
                                (let ((_%$%e48835093%_
                                       (gx#syntax-e _%$%tl48825090%_)))
                                  (let ((_%$%hd48845097%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e48835093%_)))
                                        (_%$%tl48855100%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e48835093%_))))
                                    ((lambda (_%$%g48785103%_ _%$%g48795105%_)
                                       (if (_%opt-lambda?4853%_
                                            _%$%g48795105%_)
                                           (let ((_g17840_
                                                  (_%opt-lambda-split4854%_
                                                   _%$%g48795105%_)))
                                             (begin
                                               (let ((_g17841_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g17840_)
                                                            (##values-length
                                                             _g17840_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g17841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           3)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 3 values"
                                                            _g17841_)))
                                               (let ((_%pre5118%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g17840_
                                                         0)))
                                                     (_%opt5120%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g17840_
                                                         1)))
                                                     (_%tail5121%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g17840_
                                                         2))))
                                                 (let* ((_%$%g51235131%_
                                                         (lambda (_%$%g51245127%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%$%g51245127%_)))
                                                        (_%$%g51225298%_
                                                         (lambda (_%$%g51245135%_)
                                                           ((lambda (_%$%g51255138%_)
                                                              (let* ((_%$%g51515159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%$%g51525155%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g51525155%_)))
                             (_%$%g51505294%_
                              (lambda (_%$%g51525163%_)
                                ((lambda (_%$%g51535166%_)
                                   (let* ((_%$%g51795196%_
                                           (lambda (_%$%g51805192%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g51805192%_)))
                                          (_%$%g51785290%_
                                           (lambda (_%$%g51805200%_)
                                             (if (gx#stx-pair/null?
                                                  _%$%g51805200%_)
                                                 (let ((_g17842_
                                                        (gx#syntax-split-splice
                                                         _%$%g51805200%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g17843_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g17842_)
                          (##values-length _g17842_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g17843_ 2)))
                   (error "Context expects 2 values" _g17843_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%target51825203%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g17842_
                                                               0)))
                                                           (_%$%tl51845206%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g17842_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%$%tl51845206%_)
                                                           (letrec ((_%$%loop51855209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%hd51835213%_ _%$%clause51895216%_)
                               (if (gx#stx-pair? _%$%hd51835213%_)
                                   (let ((_%$%e51865218%_
                                          (gx#syntax-e _%$%hd51835213%_)))
                                     (let ((_%$%lp-hd51875222%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e51865218%_)))
                                           (_%$%lp-tl51885225%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e51865218%_))))
                                       (_%$%loop51855209%_
                                        _%$%lp-tl51885225%_
                                        (cons _%$%lp-hd51875222%_
                                              _%$%clause51895216%_))))
                                   (let ((_%$%clause51905228%_
                                          (reverse _%$%clause51895216%_)))
                                     ((lambda (_%$%g51815231%_)
                                        (let* ((_%$%g52485256%_
                                                (lambda (_%$%g52495252%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g52495252%_)))
                                               (_%$%g52475278%_
                                                (lambda (_%$%g52495260%_)
                                                  ((lambda (_%$%g52505263%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let-values)
                                                           (cons (cons (cons (cons _%$%g51255138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _%$%g51535166%_ '()))
                               '())
                         (cons _%$%g52505263%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g52495260%_))))
                                          (_%$%g52475278%_
                                           (gx#stx-wrap-source
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'case-lambda)
                                                  (foldr (lambda (_%$%g52815284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g52825287%_)
                   (cons _%$%g52815284%_ _%$%g52825287%_))
                 '()
                 _%$%g51815231%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gx#stx-source _%stx4848%_)))))
                                      _%$%clause51905228%_))))))
                     (_%$%loop51855209%_ _%$%target51825203%_ '()))
                   (_%$%g51795196%_ _%$%g51805200%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g51795196%_
                                                  _%$%g51805200%_)))))
                                     (_%$%g51785290%_
                                      (_%generate-opt-dispatch4859%_
                                       _%$%g51255138%_
                                       _%pre5118%_
                                       _%opt5120%_
                                       _%tail5121%_))))
                                 _%$%g51525163%_))))
                        (_%$%g51505294%_
                         (gx#stx-wrap-source
                          (_%generate-opt-primary4858%_
                           _%pre5118%_
                           _%opt5120%_
                           _%tail5121%_
                           _%$%g48785103%_)
                          (gx#stx-source _%stx4848%_)))))
                    _%$%g51245135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g51225298%_
                                                    (gx#genident
                                                     'opt-lambda))))))
                                           (_%$%g48675076%_ _%$%g48695080%_)))
                                     _%$%tl48855100%_
                                     _%$%hd48845097%_)))
                                (_%$%g48675076%_ _%$%g48695080%_))))
                        (_%$%g48675076%_ _%$%g48695080%_))))
                 (_%$%g48655344%_
                  (lambda (_%$%g48695306%_)
                    (if (gx#stx-pair? _%$%g48695306%_)
                        (let ((_%$%e48725309%_ (gx#syntax-e _%$%g48695306%_)))
                          (let ((_%$%hd48735313%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e48725309%_)))
                                (_%$%tl48745316%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e48725309%_))))
                            (if (gx#stx-pair? _%$%tl48745316%_)
                                (let ((_%$%e48755319%_
                                       (gx#syntax-e _%$%tl48745316%_)))
                                  (let ((_%$%hd48765323%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e48755319%_)))
                                        (_%$%tl48775326%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e48755319%_))))
                                    ((lambda (_%$%g48705329%_ _%$%g48715331%_)
                                       (if (_%simple-lambda?4851%_
                                            _%$%g48715331%_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'lambda%)
                                                 (cons _%$%g48715331%_
                                                       _%$%g48705329%_))
                                           (_%$%g48665302%_ _%$%g48695306%_)))
                                     _%$%tl48775326%_
                                     _%$%hd48765323%_)))
                                (_%$%g48665302%_ _%$%g48695306%_))))
                        (_%$%g48665302%_ _%$%g48695306%_)))))
            (_%$%g48655344%_ _%stx4848%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8251%_)
        (let* ((_%$%g82598371%_
                (lambda (_%$%g82608367%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g82608367%_)))
               (_%$%g82588457%_
                (lambda (_%$%g82608375%_)
                  (if (gx#stx-pair? _%$%g82608375%_)
                      (let ((_%$%e83508378%_ (gx#syntax-e _%$%g82608375%_)))
                        (let ((_%$%hd83518382%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e83508378%_)))
                              (_%$%tl83528385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e83508378%_))))
                          (if (gx#stx-pair? _%$%tl83528385%_)
                              (let ((_%$%e83538388%_
                                     (gx#syntax-e _%$%tl83528385%_)))
                                (let ((_%$%hd83548392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e83538388%_)))
                                      (_%$%tl83558395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e83538388%_))))
                                  (if (gx#stx-pair? _%$%tl83558395%_)
                                      (let ((_%$%e83568398%_
                                             (gx#syntax-e _%$%tl83558395%_)))
                                        (let ((_%$%hd83578402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e83568398%_)))
                                              (_%$%tl83588405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e83568398%_))))
                                          (if (gx#stx-pair? _%$%tl83588405%_)
                                              (let ((_%$%e83598408%_
                                                     (gx#syntax-e
                                                      _%$%tl83588405%_)))
                                                (let ((_%$%hd83608412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e83598408%_)))
                                                      (_%$%tl83618415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e83598408%_))))
                                                  (if (gx#stx-datum?
                                                       _%$%hd83608412%_)
                                                      (let ((_%$%e83628418%_
                                                             (gx#stx-e
                                                              _%$%hd83608412%_)))
                                                        (if (equal? _%$%e83628418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'macro:)
                    (if (gx#stx-pair? _%$%tl83618415%_)
                        (let ((_%$%e83638422%_ (gx#syntax-e _%$%tl83618415%_)))
                          (let ((_%$%hd83648426%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e83638422%_)))
                                (_%$%tl83658429%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e83638422%_))))
                            (if (gx#stx-null? _%$%tl83658429%_)
                                ((lambda (_%$%g83478432%_
                                          _%$%g83488434%_
                                          _%$%g83498435%_)
                                   (if (and (gx#identifier? _%$%g83498435%_)
                                            (gx#identifier? _%$%g83478432%_))
                                       (cons (gx#datum->syntax
                                              '#f
                                              'define-values)
                                             (cons (cons _%$%g83498435%_ '())
                                                   (cons _%$%g83488434%_
                                                         (cons 'macro:
                                                               (cons _%$%g83478432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%$%g82598371%_ _%$%g82608375%_)))
                                 _%$%hd83648426%_
                                 _%$%hd83578402%_
                                 _%$%hd83548392%_)
                                (_%$%g82598371%_ _%$%g82608375%_))))
                        (_%$%g82598371%_ _%$%g82608375%_))
                    (_%$%g82598371%_ _%$%g82608375%_)))
              (_%$%g82598371%_ _%$%g82608375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g82598371%_
                                               _%$%g82608375%_))))
                                      (_%$%g82598371%_ _%$%g82608375%_))))
                              (_%$%g82598371%_ _%$%g82608375%_))))
                      (_%$%g82598371%_ _%$%g82608375%_))))
               (_%$%g82578511%_
                (lambda (_%$%g82608461%_)
                  (if (gx#stx-pair? _%$%g82608461%_)
                      (let ((_%$%e83388464%_ (gx#syntax-e _%$%g82608461%_)))
                        (let ((_%$%hd83398468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e83388464%_)))
                              (_%$%tl83408471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e83388464%_))))
                          (if (gx#stx-pair? _%$%tl83408471%_)
                              (let ((_%$%e83418474%_
                                     (gx#syntax-e _%$%tl83408471%_)))
                                (let ((_%$%hd83428478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e83418474%_)))
                                      (_%$%tl83438481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e83418474%_))))
                                  (if (gx#stx-pair? _%$%tl83438481%_)
                                      (let ((_%$%e83448484%_
                                             (gx#syntax-e _%$%tl83438481%_)))
                                        (let ((_%$%hd83458488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e83448484%_)))
                                              (_%$%tl83468491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e83448484%_))))
                                          (if (gx#stx-null? _%$%tl83468491%_)
                                              ((lambda (_%$%g83368494%_
                                                        _%$%g83378496%_)
                                                 (if (gx#identifier?
                                                      _%$%g83378496%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons (cons _%$%g83378496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%$%g83368494%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g82588457%_
                                                      _%$%g82608461%_)))
                                               _%$%hd83458488%_
                                               _%$%hd83428478%_)
                                              (_%$%g82588457%_
                                               _%$%g82608461%_))))
                                      (_%$%g82588457%_ _%$%g82608461%_))))
                              (_%$%g82588457%_ _%$%g82608461%_))))
                      (_%$%g82588457%_ _%$%g82608461%_))))
               (_%$%g82568607%_
                (lambda (_%$%g82608515%_)
                  (if (gx#stx-pair? _%$%g82608515%_)
                      (let ((_%$%e83188518%_ (gx#syntax-e _%$%g82608515%_)))
                        (let ((_%$%hd83198522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e83188518%_)))
                              (_%$%tl83208525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e83188518%_))))
                          (if (gx#stx-pair? _%$%tl83208525%_)
                              (let ((_%$%e83218528%_
                                     (gx#syntax-e _%$%tl83208525%_)))
                                (let ((_%$%hd83228532%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e83218528%_)))
                                      (_%$%tl83238535%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e83218528%_))))
                                  (if (gx#stx-pair? _%$%hd83228532%_)
                                      (let ((_%$%e83248538%_
                                             (gx#syntax-e _%$%hd83228532%_)))
                                        (let ((_%$%hd83258542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e83248538%_)))
                                              (_%$%tl83268545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e83248538%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl83238535%_)
                                              (let ((_g17844_
                                                     (gx#syntax-split-splice
                                                      _%$%tl83238535%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17845_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17844_)
                                                               (##values-length
                                                                _g17844_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17845_ 2)))
                (error "Context expects 2 values" _g17845_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target83278548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17844_
                                                            0)))
                                                        (_%$%tl83298551%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17844_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl83298551%_)
                                                        (letrec ((_%$%loop83308554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd83288558%_ _%$%body83348561%_)
                            (if (gx#stx-pair? _%$%hd83288558%_)
                                (let ((_%$%e83318563%_
                                       (gx#syntax-e _%$%hd83288558%_)))
                                  (let ((_%$%lp-hd83328567%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e83318563%_)))
                                        (_%$%lp-tl83338570%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e83318563%_))))
                                    (_%$%loop83308554%_
                                     _%$%lp-tl83338570%_
                                     (cons _%$%lp-hd83328567%_
                                           _%$%body83348561%_))))
                                (let ((_%$%body83358573%_
                                       (reverse _%$%body83348561%_)))
                                  ((lambda (_%$%g83158576%_
                                            _%$%g83168578%_
                                            _%$%g83178579%_)
                                     (if (gx#identifier? _%$%g83178579%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-values)
                                               (cons (cons _%$%g83178579%_ '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons _%$%g83168578%_
                               (foldr (lambda (_%$%g85988601%_ _%$%g85998604%_)
                                        (cons _%$%g85988601%_ _%$%g85998604%_))
                                      '()
                                      _%$%g83158576%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%g82578511%_ _%$%g82608515%_)))
                                   _%$%body83358573%_
                                   _%$%tl83268545%_
                                   _%$%hd83258542%_))))))
                  (_%$%loop83308554%_ _%$%target83278548%_ '()))
                (_%$%g82578511%_ _%$%g82608515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g82578511%_
                                               _%$%g82608515%_))))
                                      (_%$%g82578511%_ _%$%g82608515%_))))
                              (_%$%g82578511%_ _%$%g82608515%_))))
                      (_%$%g82578511%_ _%$%g82608515%_))))
               (_%$%g82558734%_
                (lambda (_%$%g82608611%_)
                  (if (gx#stx-pair? _%$%g82608611%_)
                      (let ((_%$%e82908614%_ (gx#syntax-e _%$%g82608611%_)))
                        (let ((_%$%hd82918618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e82908614%_)))
                              (_%$%tl82928621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e82908614%_))))
                          (if (gx#stx-pair? _%$%tl82928621%_)
                              (let ((_%$%e82938624%_
                                     (gx#syntax-e _%$%tl82928621%_)))
                                (let ((_%$%hd82948628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e82938624%_)))
                                      (_%$%tl82958631%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e82938624%_))))
                                  (if (gx#stx-pair? _%$%hd82948628%_)
                                      (let ((_%$%e82968634%_
                                             (gx#syntax-e _%$%hd82948628%_)))
                                        (let ((_%$%hd82978638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e82968634%_)))
                                              (_%$%tl82988641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e82968634%_))))
                                          (if (gx#stx-pair? _%$%tl82958631%_)
                                              (let ((_%$%e82998644%_
                                                     (gx#syntax-e
                                                      _%$%tl82958631%_)))
                                                (let ((_%$%hd83008648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e82998644%_)))
                                                      (_%$%tl83018651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e82998644%_))))
                                                  (if (gx#stx-datum?
                                                       _%$%hd83008648%_)
                                                      (let ((_%$%e83028654%_
                                                             (gx#stx-e
                                                              _%$%hd83008648%_)))
                                                        (if (equal? _%$%e83028654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'macro:)
                    (if (gx#stx-pair? _%$%tl83018651%_)
                        (let ((_%$%e83038658%_ (gx#syntax-e _%$%tl83018651%_)))
                          (let ((_%$%hd83048662%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e83038658%_)))
                                (_%$%tl83058665%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e83038658%_))))
                            (if (gx#stx-pair/null? _%$%tl83058665%_)
                                (let ((_g17846_
                                       (gx#syntax-split-splice
                                        _%$%tl83058665%_
                                        '0)))
                                  (begin
                                    (let ((_g17847_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g17846_)
                                                 (##values-length _g17846_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g17847_ 2)))
                                          (error "Context expects 2 values"
                                                 _g17847_)))
                                    (let ((_%$%target83068668%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g17846_ 0)))
                                          (_%$%tl83088671%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g17846_ 1))))
                                      (if (gx#stx-null? _%$%tl83088671%_)
                                          (letrec ((_%$%loop83098674%_
                                                    (lambda (_%$%hd83078678%_
                                                             _%$%body83138681%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd83078678%_)
                                                          (let ((_%$%e83108683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd83078678%_)))
                    (let ((_%$%lp-hd83118687%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e83108683%_)))
                          (_%$%lp-tl83128690%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e83108683%_))))
                      (_%$%loop83098674%_
                       _%$%lp-tl83128690%_
                       (cons _%$%lp-hd83118687%_ _%$%body83138681%_))))
                  (let ((_%$%body83148693%_ (reverse _%$%body83138681%_)))
                    ((lambda (_%$%g82868696%_
                              _%$%g82878698%_
                              _%$%g82888699%_
                              _%$%g82898700%_)
                       (if (and (gx#identifier? _%$%g82898700%_)
                                (gx#identifier? _%$%g82878698%_))
                           (cons (gx#datum->syntax '#f 'define-values)
                                 (cons (cons _%$%g82898700%_ '())
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons _%$%g82888699%_
                                                         (foldr (lambda (_%$%g87258728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g87268731%_)
                          (cons _%$%g87258728%_ _%$%g87268731%_))
                        '()
                        _%$%g82868696%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'macro:
                                                   (cons _%$%g82878698%_
                                                         '())))))
                           (_%$%g82568607%_ _%$%g82608611%_)))
                     _%$%body83148693%_
                     _%$%hd83048662%_
                     _%$%tl82988641%_
                     _%$%hd82978638%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop83098674%_
                                             _%$%target83068668%_
                                             '()))
                                          (_%$%g82568607%_ _%$%g82608611%_)))))
                                (_%$%g82568607%_ _%$%g82608611%_))))
                        (_%$%g82568607%_ _%$%g82608611%_))
                    (_%$%g82568607%_ _%$%g82608611%_)))
              (_%$%g82568607%_ _%$%g82608611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g82568607%_
                                               _%$%g82608611%_))))
                                      (_%$%g82568607%_ _%$%g82608611%_))))
                              (_%$%g82568607%_ _%$%g82608611%_))))
                      (_%$%g82568607%_ _%$%g82608611%_))))
               (_%$%g82548844%_
                (lambda (_%$%g82608738%_)
                  (if (gx#stx-pair? _%$%g82608738%_)
                      (let ((_%$%e82658741%_ (gx#syntax-e _%$%g82608738%_)))
                        (let ((_%$%hd82668745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e82658741%_)))
                              (_%$%tl82678748%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e82658741%_))))
                          (if (gx#stx-pair? _%$%tl82678748%_)
                              (let ((_%$%e82688751%_
                                     (gx#syntax-e _%$%tl82678748%_)))
                                (let ((_%$%hd82698755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e82688751%_)))
                                      (_%$%tl82708758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e82688751%_))))
                                  (if (gx#stx-pair? _%$%hd82698755%_)
                                      (let ((_%$%e82718761%_
                                             (gx#syntax-e _%$%hd82698755%_)))
                                        (let ((_%$%hd82728765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e82718761%_)))
                                              (_%$%tl82738768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e82718761%_))))
                                          (if (gx#stx-pair? _%$%hd82728765%_)
                                              (let ((_%$%e82748771%_
                                                     (gx#syntax-e
                                                      _%$%hd82728765%_)))
                                                (let ((_%$%hd82758775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e82748771%_)))
                                                      (_%$%tl82768778%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e82748771%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl82708758%_)
                                                      (let ((_g17848_
                                                             (gx#syntax-split-splice
                                                              _%$%tl82708758%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g17849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g17848_)
                               (##values-length _g17848_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g17849_ 2)))
                        (error "Context expects 2 values" _g17849_)))
                  (let ((_%$%target82778781%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g17848_ 0)))
                        (_%$%tl82798784%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g17848_ 1))))
                    (if (gx#stx-null? _%$%tl82798784%_)
                        (letrec ((_%$%loop82808787%_
                                  (lambda (_%$%hd82788791%_ _%$%body82848794%_)
                                    (if (gx#stx-pair? _%$%hd82788791%_)
                                        (let ((_%$%e82818796%_
                                               (gx#syntax-e _%$%hd82788791%_)))
                                          (let ((_%$%lp-hd82828800%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e82818796%_)))
                                                (_%$%lp-tl82838803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e82818796%_))))
                                            (_%$%loop82808787%_
                                             _%$%lp-tl82838803%_
                                             (cons _%$%lp-hd82828800%_
                                                   _%$%body82848794%_))))
                                        (let ((_%$%body82858806%_
                                               (reverse _%$%body82848794%_)))
                                          ((lambda (_%$%g82618809%_
                                                    _%$%g82628811%_
                                                    _%$%g82638812%_
                                                    _%$%g82648813%_)
                                             (cons (gx#datum->syntax '#f 'def)
                                                   (cons (cons _%$%g82648813%_
                                                               _%$%g82638812%_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons _%$%g82628811%_
                                   (foldr (lambda (_%$%g88358838%_
                                                   _%$%g88368841%_)
                                            (cons _%$%g88358838%_
                                                  _%$%g88368841%_))
                                          '()
                                          _%$%g82618809%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%body82858806%_
                                           _%$%tl82738768%_
                                           _%$%tl82768778%_
                                           _%$%hd82758775%_))))))
                          (_%$%loop82808787%_ _%$%target82778781%_ '()))
                        (_%$%g82558734%_ _%$%g82608738%_)))))
              (_%$%g82558734%_ _%$%g82608738%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g82558734%_
                                               _%$%g82608738%_))))
                                      (_%$%g82558734%_ _%$%g82608738%_))))
                              (_%$%g82558734%_ _%$%g82608738%_))))
                      (_%$%g82558734%_ _%$%g82608738%_)))))
          (_%$%g82548844%_ _%$stx8251%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx8851%_)
        (let* ((_%$%g88558879%_
                (lambda (_%$%g88568875%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g88568875%_)))
               (_%$%g88548962%_
                (lambda (_%$%g88568883%_)
                  (if (gx#stx-pair? _%$%g88568883%_)
                      (let ((_%$%e88598886%_ (gx#syntax-e _%$%g88568883%_)))
                        (let ((_%$%hd88608890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e88598886%_)))
                              (_%$%tl88618893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e88598886%_))))
                          (if (gx#stx-pair? _%$%tl88618893%_)
                              (let ((_%$%e88628896%_
                                     (gx#syntax-e _%$%tl88618893%_)))
                                (let ((_%$%hd88638900%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e88628896%_)))
                                      (_%$%tl88648903%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e88628896%_))))
                                  (if (gx#stx-pair/null? _%$%tl88648903%_)
                                      (let ((_g17850_
                                             (gx#syntax-split-splice
                                              _%$%tl88648903%_
                                              '0)))
                                        (begin
                                          (let ((_g17851_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17850_)
                                                       (##values-length
                                                        _g17850_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17851_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17851_)))
                                          (let ((_%$%target88658906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17850_ 0)))
                                                (_%$%tl88678909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17850_ 1))))
                                            (if (gx#stx-null? _%$%tl88678909%_)
                                                (letrec ((_%$%loop88688912%_
                                                          (lambda (_%$%hd88668916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clauses88728919%_)
                    (if (gx#stx-pair? _%$%hd88668916%_)
                        (let ((_%$%e88698921%_ (gx#syntax-e _%$%hd88668916%_)))
                          (let ((_%$%lp-hd88708925%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e88698921%_)))
                                (_%$%lp-tl88718928%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e88698921%_))))
                            (_%$%loop88688912%_
                             _%$%lp-tl88718928%_
                             (cons _%$%lp-hd88708925%_
                                   _%$%clauses88728919%_))))
                        (let ((_%$%clauses88738931%_
                               (reverse _%$%clauses88728919%_)))
                          ((lambda (_%$%g88578934%_ _%$%g88588936%_)
                             (if (gx#identifier? _%$%g88588936%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%$%g88588936%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%$%g89538956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g89548959%_)
                          (cons _%$%g89538956%_ _%$%g89548959%_))
                        '()
                        _%$%g88578934%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%$%g88558879%_ _%$%g88568883%_)))
                           _%$%clauses88738931%_
                           _%$%hd88638900%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop88688912%_
                                                   _%$%target88658906%_
                                                   '()))
                                                (_%$%g88558879%_
                                                 _%$%g88568883%_)))))
                                      (_%$%g88558879%_ _%$%g88568883%_))))
                              (_%$%g88558879%_ _%$%g88568883%_))))
                      (_%$%g88558879%_ _%$%g88568883%_)))))
          (_%$%g88548962%_ _%$stx8851%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx8967%_)
        (let* ((_%$%g89718989%_
                (lambda (_%$%g89728985%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g89728985%_)))
               (_%$%g89709044%_
                (lambda (_%$%g89728993%_)
                  (if (gx#stx-pair? _%$%g89728993%_)
                      (let ((_%$%e89758996%_ (gx#syntax-e _%$%g89728993%_)))
                        (let ((_%$%hd89769000%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e89758996%_)))
                              (_%$%tl89779003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e89758996%_))))
                          (if (gx#stx-pair? _%$%tl89779003%_)
                              (let ((_%$%e89789006%_
                                     (gx#syntax-e _%$%tl89779003%_)))
                                (let ((_%$%hd89799010%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e89789006%_)))
                                      (_%$%tl89809013%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e89789006%_))))
                                  (if (gx#stx-pair? _%$%tl89809013%_)
                                      (let ((_%$%e89819016%_
                                             (gx#syntax-e _%$%tl89809013%_)))
                                        (let ((_%$%hd89829020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e89819016%_)))
                                              (_%$%tl89839023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e89819016%_))))
                                          (if (gx#stx-null? _%$%tl89839023%_)
                                              ((lambda (_%$%g89739026%_
                                                        _%$%g89749028%_)
                                                 (if (gx#identifier-list?
                                                      _%$%g89749028%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%$%g89749028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g89739026%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g89718989%_
                                                      _%$%g89728993%_)))
                                               _%$%hd89829020%_
                                               _%$%hd89799010%_)
                                              (_%$%g89718989%_
                                               _%$%g89728993%_))))
                                      (_%$%g89718989%_ _%$%g89728993%_))))
                              (_%$%g89718989%_ _%$%g89728993%_))))
                      (_%$%g89718989%_ _%$%g89728993%_)))))
          (_%$%g89709044%_ _%$stx8967%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9048%_)
        (let* ((_%$%g90529076%_
                (lambda (_%$%g90539072%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g90539072%_)))
               (_%$%g90519159%_
                (lambda (_%$%g90539080%_)
                  (if (gx#stx-pair? _%$%g90539080%_)
                      (let ((_%$%e90569083%_ (gx#syntax-e _%$%g90539080%_)))
                        (let ((_%$%hd90579087%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e90569083%_)))
                              (_%$%tl90589090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e90569083%_))))
                          (if (gx#stx-pair? _%$%tl90589090%_)
                              (let ((_%$%e90599093%_
                                     (gx#syntax-e _%$%tl90589090%_)))
                                (let ((_%$%hd90609097%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e90599093%_)))
                                      (_%$%tl90619100%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e90599093%_))))
                                  (if (gx#stx-pair/null? _%$%tl90619100%_)
                                      (let ((_g17852_
                                             (gx#syntax-split-splice
                                              _%$%tl90619100%_
                                              '0)))
                                        (begin
                                          (let ((_g17853_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17852_)
                                                       (##values-length
                                                        _g17852_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17853_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17853_)))
                                          (let ((_%$%target90629103%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17852_ 0)))
                                                (_%$%tl90649106%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17852_ 1))))
                                            (if (gx#stx-null? _%$%tl90649106%_)
                                                (letrec ((_%$%loop90659109%_
                                                          (lambda (_%$%hd90639113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause90699116%_)
                    (if (gx#stx-pair? _%$%hd90639113%_)
                        (let ((_%$%e90669118%_ (gx#syntax-e _%$%hd90639113%_)))
                          (let ((_%$%lp-hd90679122%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e90669118%_)))
                                (_%$%lp-tl90689125%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e90669118%_))))
                            (_%$%loop90659109%_
                             _%$%lp-tl90689125%_
                             (cons _%$%lp-hd90679122%_ _%$%clause90699116%_))))
                        (let ((_%$%clause90709128%_
                               (reverse _%$%clause90699116%_)))
                          ((lambda (_%$%g90549131%_ _%$%g90559133%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%$%g90559133%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%$%g91509153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%$%g91519156%_)
                            (cons _%$%g91509153%_ _%$%g91519156%_))
                          '()
                          _%$%g90549131%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$%clause90709128%_
                           _%$%hd90609097%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop90659109%_
                                                   _%$%target90629103%_
                                                   '()))
                                                (_%$%g90529076%_
                                                 _%$%g90539080%_)))))
                                      (_%$%g90529076%_ _%$%g90539080%_))))
                              (_%$%g90529076%_ _%$%g90539080%_))))
                      (_%$%g90529076%_ _%$%g90539080%_)))))
          (_%$%g90519159%_ _%$stx9048%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9164%_)
        (letrec ((_%parse-clauses9167%_
                  (lambda (_%e11624%_ _%clauses11626%_)
                    (let _%lp11628%_ ((_%rest11631%_ _%clauses11626%_)
                                      (_%datums11633%_ '())
                                      (_%dispatch11634%_ '())
                                      (_%default11635%_ '#f))
                      (let* ((_%$%g1163811650%_
                              (lambda (_%$%g1163911646%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g1163911646%_)))
                             (_%$%g1163711665%_
                              (lambda (_%$%g1163911654%_)
                                (if (gx#stx-null? _%$%g1163911654%_)
                                    ((lambda ()
                                       (_%check-duplicate-datums9169%_
                                        _%datums11633%_)
                                       (values (reverse _%datums11633%_)
                                               (reverse _%dispatch11634%_)
                                               (let ((_%$e11661%_
                                                      _%default11635%_))
                                                 (if _%$e11661%_
                                                     _%$e11661%_
                                                     '#!void)))))
                                    (_%$%g1163811650%_ _%$%g1163911654%_))))
                             (_%$%g1163612182%_
                              (lambda (_%$%g1163911669%_)
                                (if (gx#stx-pair? _%$%g1163911669%_)
                                    (let ((_%$%e1164211672%_
                                           (gx#syntax-e _%$%g1163911669%_)))
                                      (let ((_%$%hd1164311676%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e1164211672%_)))
                                            (_%$%tl1164411679%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e1164211672%_))))
                                        ((lambda (_%$%g1164011682%_
                                                  _%$%g1164111684%_)
                                           (let* ((_%$%g1170211775%_
                                                   (lambda (_%$%g1170311771%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g1170311771%_)))
                                                  (_%$%g1170111894%_
                                                   (lambda (_%$%g1170311779%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g1170311779%_)
                                                         (let ((_%$%e1174911782%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g1170311779%_)))
                   (let ((_%$%hd1175011786%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e1174911782%_)))
                         (_%$%tl1175111789%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e1174911782%_))))
                     (if (gx#stx-pair/null? _%$%hd1175011786%_)
                         (let ((_g17854_
                                (gx#syntax-split-splice
                                 _%$%hd1175011786%_
                                 '0)))
                           (begin
                             (let ((_g17855_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g17854_)
                                          (##values-length _g17854_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g17855_ 2)))
                                   (error "Context expects 2 values"
                                          _g17855_)))
                             (let ((_%$%target1175211792%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g17854_ 0)))
                                   (_%$%tl1175411795%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g17854_ 1))))
                               (if (gx#stx-null? _%$%tl1175411795%_)
                                   (letrec ((_%$%loop1175511798%_
                                             (lambda (_%$%hd1175311802%_
                                                      _%$%datum1175911805%_)
                                               (if (gx#stx-pair?
                                                    _%$%hd1175311802%_)
                                                   (let ((_%$%e1175611807%_
                                                          (gx#syntax-e
                                                           _%$%hd1175311802%_)))
                                                     (let ((_%$%lp-hd1175711811%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e1175611807%_)))
                                                           (_%$%lp-tl1175811814%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e1175611807%_))))
                                                       (_%$%loop1175511798%_
                                                        _%$%lp-tl1175811814%_
                                                        (cons _%$%lp-hd1175711811%_
                                                              _%$%datum1175911805%_))))
                                                   (let ((_%$%datum1176011817%_
                                                          (reverse _%$%datum1175911805%_)))
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl1175111789%_)
                                                         (let ((_g17856_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl1175111789%_
                         '0)))
                   (begin
                     (let ((_g17857_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g17856_)
                                  (##values-length _g17856_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g17857_ 2)))
                           (error "Context expects 2 values" _g17857_)))
                     (let ((_%$%target1176111820%_
                            (let ()
                              (declare (not safe))
                              (##values-ref _g17856_ 0)))
                           (_%$%tl1176311823%_
                            (let ()
                              (declare (not safe))
                              (##values-ref _g17856_ 1))))
                       (if (gx#stx-null? _%$%tl1176311823%_)
                           (letrec ((_%$%loop1176411826%_
                                     (lambda (_%$%hd1176211830%_
                                              _%$%body1176811833%_)
                                       (if (gx#stx-pair? _%$%hd1176211830%_)
                                           (let ((_%$%e1176511835%_
                                                  (gx#syntax-e
                                                   _%$%hd1176211830%_)))
                                             (let ((_%$%lp-hd1176611839%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e1176511835%_)))
                                                   (_%$%lp-tl1176711842%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e1176511835%_))))
                                               (_%$%loop1176411826%_
                                                _%$%lp-tl1176711842%_
                                                (cons _%$%lp-hd1176611839%_
                                                      _%$%body1176811833%_))))
                                           (let ((_%$%body1176911845%_
                                                  (reverse _%$%body1176811833%_)))
                                             ((lambda (_%$%g1174711848%_
                                                       _%$%g1174811850%_)
                                                (if (null? (foldr (lambda (_%$%g1186911872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%$%g1187011875%_)
                            (cons _%$%g1186911872%_ _%$%g1187011875%_))
                          '()
                          _%$%g1174811850%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%lp11628%_
                                                     _%$%g1164011682%_
                                                     _%datums11633%_
                                                     _%dispatch11634%_
                                                     _%default11635%_)
                                                    (_%lp11628%_
                                                     _%$%g1164011682%_
                                                     (cons (map gx#stx-e
                                                                (foldr (lambda (_%$%g1187711880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%$%g1187811883%_)
                                 (cons _%$%g1187711880%_ _%$%g1187811883%_))
                               '()
                               _%$%g1174811850%_))
                   _%datums11633%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (foldr (lambda (_%$%g1188511888%_ _%$%g1188611891%_)
                                  (cons _%$%g1188511888%_ _%$%g1188611891%_))
                                '()
                                _%$%g1174711848%_))
                   _%dispatch11634%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%default11635%_)))
                                              _%$%body1176911845%_
                                              _%$%datum1176011817%_))))))
                             (_%$%loop1176411826%_ _%$%target1176111820%_ '()))
                           (_%$%g1170211775%_ _%$%g1170311779%_)))))
                 (_%$%g1170211775%_ _%$%g1170311779%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop1175511798%_
                                      _%$%target1175211792%_
                                      '()))
                                   (_%$%g1170211775%_ _%$%g1170311779%_)))))
                         (_%$%g1170211775%_ _%$%g1170311779%_))))
                 (_%$%g1170211775%_ _%$%g1170311779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1170012027%_
                                                   (lambda (_%$%g1170311898%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g1170311898%_)
                                                         (let ((_%$%e1172911901%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g1170311898%_)))
                   (let ((_%$%hd1173011905%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e1172911901%_)))
                         (_%$%tl1173111908%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e1172911901%_))))
                     (if (gx#stx-pair/null? _%$%hd1173011905%_)
                         (let ((_g17858_
                                (gx#syntax-split-splice
                                 _%$%hd1173011905%_
                                 '0)))
                           (begin
                             (let ((_g17859_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g17858_)
                                          (##values-length _g17858_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g17859_ 2)))
                                   (error "Context expects 2 values"
                                          _g17859_)))
                             (let ((_%$%target1173211911%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g17858_ 0)))
                                   (_%$%tl1173411914%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g17858_ 1))))
                               (if (gx#stx-null? _%$%tl1173411914%_)
                                   (letrec ((_%$%loop1173511917%_
                                             (lambda (_%$%hd1173311921%_
                                                      _%$%datum1173911924%_)
                                               (if (gx#stx-pair?
                                                    _%$%hd1173311921%_)
                                                   (let ((_%$%e1173611926%_
                                                          (gx#syntax-e
                                                           _%$%hd1173311921%_)))
                                                     (let ((_%$%lp-hd1173711930%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e1173611926%_)))
                                                           (_%$%lp-tl1173811933%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e1173611926%_))))
                                                       (_%$%loop1173511917%_
                                                        _%$%lp-tl1173811933%_
                                                        (cons _%$%lp-hd1173711930%_
                                                              _%$%datum1173911924%_))))
                                                   (let ((_%$%datum1174011936%_
                                                          (reverse _%$%datum1173911924%_)))
                                                     (if (gx#stx-pair?
                                                          _%$%tl1173111908%_)
                                                         (let ((_%$%e1174111939%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl1173111908%_)))
                   (let ((_%$%hd1174211943%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e1174111939%_)))
                         (_%$%tl1174311946%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e1174111939%_))))
                     (if (gx#identifier? _%$%hd1174211943%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/sugar~Sugar-2[1]#_g17860_|
                              _%$%hd1174211943%_)
                             (if (gx#stx-pair? _%$%tl1174311946%_)
                                 (let ((_%$%e1174411949%_
                                        (gx#syntax-e _%$%tl1174311946%_)))
                                   (let ((_%$%hd1174511953%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e1174411949%_)))
                                         (_%$%tl1174611956%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e1174411949%_))))
                                     (if (gx#stx-null? _%$%tl1174611956%_)
                                         ((lambda (_%$%g1172711959%_
                                                   _%$%g1172811961%_)
                                            (if (null? (foldr (lambda (_%$%g1197911982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g1198011985%_)
                        (cons _%$%g1197911982%_ _%$%g1198011985%_))
                      '()
                      _%$%g1172811961%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11628%_
                                                 _%$%g1164011682%_
                                                 _%datums11633%_
                                                 _%dispatch11634%_
                                                 _%default11635%_)
                                                (let* ((_%$%g1198811996%_
                                                        (lambda (_%$%g1198911992%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g1198911992%_)))
                                                       (_%$%g1198712023%_
                                                        (lambda (_%$%g1198912000%_)
                                                          ((lambda (_%$%g1199012003%_)
                                                             (_%lp11628%_
                                                              _%$%g1164011682%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%$%g1201412017%_
                                                 _%$%g1201512020%_)
                                          (cons _%$%g1201412017%_
                                                _%$%g1201512020%_))
                                        '()
                                        _%$%g1172811961%_))
                            _%datums11633%_)
                      (cons (cons _%$%g1172711959%_
                                  (cons _%$%g1199012003%_ '()))
                            _%dispatch11634%_)
                      _%default11635%_))
                   _%$%g1198912000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1198712023%_
                                                   _%e11624%_))))
                                          _%$%hd1174511953%_
                                          _%$%datum1174011936%_)
                                         (_%$%g1170111894%_
                                          _%$%g1170311898%_))))
                                 (_%$%g1170111894%_ _%$%g1170311898%_))
                             (_%$%g1170111894%_ _%$%g1170311898%_))
                         (_%$%g1170111894%_ _%$%g1170311898%_))))
                 (_%$%g1170111894%_ _%$%g1170311898%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%loop1173511917%_
                                      _%$%target1173211911%_
                                      '()))
                                   (_%$%g1170111894%_ _%$%g1170311898%_)))))
                         (_%$%g1170111894%_ _%$%g1170311898%_))))
                 (_%$%g1170111894%_ _%$%g1170311898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1169912095%_
                                                   (lambda (_%$%g1170312031%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g1170312031%_)
                                                         (let ((_%$%e1171512034%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g1170312031%_)))
                   (let ((_%$%hd1171612038%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e1171512034%_)))
                         (_%$%tl1171712041%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e1171512034%_))))
                     (if (gx#identifier? _%$%hd1171612038%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/sugar~Sugar-2[1]#_g17861_|
                              _%$%hd1171612038%_)
                             (if (gx#stx-pair/null? _%$%tl1171712041%_)
                                 (let ((_g17862_
                                        (gx#syntax-split-splice
                                         _%$%tl1171712041%_
                                         '0)))
                                   (begin
                                     (let ((_g17863_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g17862_)
                                                  (##values-length _g17862_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g17863_ 2)))
                                           (error "Context expects 2 values"
                                                  _g17863_)))
                                     (let ((_%$%target1171812044%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g17862_ 0)))
                                           (_%$%tl1172012047%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g17862_ 1))))
                                       (if (gx#stx-null? _%$%tl1172012047%_)
                                           (letrec ((_%$%loop1172112050%_
                                                     (lambda (_%$%hd1171912054%_
                                                              _%$%body1172512057%_)
                                                       (if (gx#stx-pair?
                                                            _%$%hd1171912054%_)
                                                           (let ((_%$%e1172212059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%hd1171912054%_)))
                     (let ((_%$%lp-hd1172312063%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e1172212059%_)))
                           (_%$%lp-tl1172412066%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e1172212059%_))))
                       (_%$%loop1172112050%_
                        _%$%lp-tl1172412066%_
                        (cons _%$%lp-hd1172312063%_ _%$%body1172512057%_))))
                   (let ((_%$%body1172612069%_ (reverse _%$%body1172512057%_)))
                     ((lambda (_%$%g1171412072%_)
                        (if (gx#stx-null? _%$%g1164011682%_)
                            (_%lp11628%_
                             '()
                             _%datums11633%_
                             _%dispatch11634%_
                             (cons (gx#datum->syntax '#f 'begin)
                                   (foldr (lambda (_%$%g1208612089%_
                                                   _%$%g1208712092%_)
                                            (cons _%$%g1208612089%_
                                                  _%$%g1208712092%_))
                                          '()
                                          _%$%g1171412072%_)))
                            (gx#raise-syntax-error
                             '#f
                             '"Misplaced else clause"
                             _%stx9164%_
                             _%$%g1164111684%_)))
                      _%$%body1172612069%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop1172112050%_
                                              _%$%target1171812044%_
                                              '()))
                                           (_%$%g1170012027%_
                                            _%$%g1170312031%_)))))
                                 (_%$%g1170012027%_ _%$%g1170312031%_))
                             (_%$%g1170012027%_ _%$%g1170312031%_))
                         (_%$%g1170012027%_ _%$%g1170312031%_))))
                 (_%$%g1170012027%_ _%$%g1170312031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1169812178%_
                                                   (lambda (_%$%g1170312099%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g1170312099%_)
                                                         (let ((_%$%e1170512102%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g1170312099%_)))
                   (let ((_%$%hd1170612106%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e1170512102%_)))
                         (_%$%tl1170712109%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e1170512102%_))))
                     (if (gx#identifier? _%$%hd1170612106%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/sugar~Sugar-2[1]#_g17864_|
                              _%$%hd1170612106%_)
                             (if (gx#stx-pair? _%$%tl1170712109%_)
                                 (let ((_%$%e1170812112%_
                                        (gx#syntax-e _%$%tl1170712109%_)))
                                   (let ((_%$%hd1170912116%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e1170812112%_)))
                                         (_%$%tl1171012119%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e1170812112%_))))
                                     (if (gx#identifier? _%$%hd1170912116%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g17865_|
                                              _%$%hd1170912116%_)
                                             (if (gx#stx-pair?
                                                  _%$%tl1171012119%_)
                                                 (let ((_%$%e1171112122%_
                                                        (gx#syntax-e
                                                         _%$%tl1171012119%_)))
                                                   (let ((_%$%hd1171212126%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e1171112122%_)))
                                                         (_%$%tl1171312129%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e1171112122%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl1171312129%_)
                                                         ((lambda (_%$%g1170412132%_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g1164011682%_)
                        (let* ((_%$%g1214712155%_
                                (lambda (_%$%g1214812151%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g1214812151%_)))
                               (_%$%g1214612174%_
                                (lambda (_%$%g1214812159%_)
                                  ((lambda (_%$%g1214912162%_)
                                     (_%lp11628%_
                                      '()
                                      _%datums11633%_
                                      _%dispatch11634%_
                                      (cons _%$%g1170412132%_
                                            (cons _%$%g1214912162%_ '()))))
                                   _%$%g1214812159%_))))
                          (_%$%g1214612174%_ _%e11624%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Misplaced else clause"
                         _%stx9164%_
                         _%$%g1164111684%_)))
                  _%$%hd1171212126%_)
                 (_%$%g1169912095%_ _%$%g1170312099%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g1169912095%_
                                                  _%$%g1170312099%_))
                                             (_%$%g1169912095%_
                                              _%$%g1170312099%_))
                                         (_%$%g1169912095%_
                                          _%$%g1170312099%_))))
                                 (_%$%g1169912095%_ _%$%g1170312099%_))
                             (_%$%g1169912095%_ _%$%g1170312099%_))
                         (_%$%g1169912095%_ _%$%g1170312099%_))))
                 (_%$%g1169912095%_ _%$%g1170312099%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g1169812178%_
                                              _%$%g1164111684%_)))
                                         _%$%tl1164411679%_
                                         _%$%hd1164311676%_)))
                                    (_%$%g1163711665%_ _%$%g1163911669%_)))))
                        (_%$%g1163612182%_ _%rest11631%_)))))
                 (_%check-duplicate-datums9169%_
                  (lambda (_%datums11612%_)
                    (let ((_%ht11615%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst11618%_)
                         (for-each
                          (lambda (_%datum11621%_)
                            (if (hash-get _%ht11615%_ _%datum11621%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9164%_
                                 _%datum11621%_)
                                (hash-put! _%ht11615%_ _%datum11621%_ '#t)))
                          _%lst11618%_))
                       _%datums11612%_))))
                 (_%count-datums9170%_
                  (lambda (_%datums11605%_)
                    (foldl (lambda (_%lst11608%_ _%r11610%_)
                             (+ (length _%lst11608%_) _%r11610%_))
                           '0
                           _%datums11605%_)))
                 (_%symbolic-datums?9171%_
                  (lambda (_%datums11599%_)
                    (andmap (lambda (_%lst11602%_)
                              (andmap symbol? _%lst11602%_))
                            _%datums11599%_)))
                 (_%char-datums?9172%_
                  (lambda (_%datums11593%_)
                    (andmap (lambda (_%lst11596%_) (andmap char? _%lst11596%_))
                            _%datums11593%_)))
                 (_%fixnum-datums?9173%_
                  (lambda (_%datums11587%_)
                    (andmap (lambda (_%lst11590%_)
                              (andmap fixnum? _%lst11590%_))
                            _%datums11587%_)))
                 (_%eq-datums?9174%_
                  (lambda (_%datums11570%_)
                    (andmap (lambda (_%lst11573%_)
                              (andmap (lambda (_%x11576%_)
                                        (let ((_%$e11579%_
                                               (symbol? _%x11576%_)))
                                          (if _%$e11579%_
                                              _%$e11579%_
                                              (let ((_%$e11583%_
                                                     (keyword? _%x11576%_)))
                                                (if _%$e11583%_
                                                    _%$e11583%_
                                                    (immediate?
                                                     _%x11576%_))))))
                                      _%lst11573%_))
                            _%datums11570%_)))
                 (_%generate-simple-case9175%_
                  (lambda (_%e11336%_
                           _%datums11338%_
                           _%dispatch11339%_
                           _%default11340%_)
                    (let* ((_%$%g1134211350%_
                            (lambda (_%$%g1134311346%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g1134311346%_)))
                           (_%$%g1134111566%_
                            (lambda (_%$%g1134311354%_)
                              ((lambda (_%$%g1134411357%_)
                                 (let _%recur11369%_ ((_%datums11372%_
                                                       _%datums11338%_)
                                                      (_%dispatch11374%_
                                                       _%dispatch11339%_))
                                   (let* ((_%$%g1137711398%_
                                           (lambda (_%$%g1137811394%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g1137811394%_)))
                                          (_%$%g1137611409%_
                                           (lambda (_%$%g1137811402%_)
                                             ((lambda () _%default11340%_))))
                                          (_%$%g1137511562%_
                                           (lambda (_%$%g1137811413%_)
                                             (if (gx#stx-pair?
                                                  _%$%g1137811413%_)
                                                 (let ((_%$%e1138111416%_
                                                        (gx#syntax-e
                                                         _%$%g1137811413%_)))
                                                   (let ((_%$%hd1138211420%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e1138111416%_)))
                                                         (_%$%tl1138311423%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e1138111416%_))))
                                                     (if (gx#stx-pair/null?
                                                          _%$%hd1138211420%_)
                                                         (let ((_g17866_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd1138211420%_
                         '0)))
                   (begin
                     (let ((_g17867_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g17866_)
                                  (##values-length _g17866_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g17867_ 2)))
                           (error "Context expects 2 values" _g17867_)))
                     (let ((_%$%target1138411426%_
                            (let ()
                              (declare (not safe))
                              (##values-ref _g17866_ 0)))
                           (_%$%tl1138611429%_
                            (let ()
                              (declare (not safe))
                              (##values-ref _g17866_ 1))))
                       (if (gx#stx-null? _%$%tl1138611429%_)
                           (letrec ((_%$%loop1138711432%_
                                     (lambda (_%$%hd1138511436%_
                                              _%$%datum1139111439%_)
                                       (if (gx#stx-pair? _%$%hd1138511436%_)
                                           (let ((_%$%e1138811441%_
                                                  (gx#syntax-e
                                                   _%$%hd1138511436%_)))
                                             (let ((_%$%lp-hd1138911445%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e1138811441%_)))
                                                   (_%$%lp-tl1139011448%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e1138811441%_))))
                                               (_%$%loop1138711432%_
                                                _%$%lp-tl1139011448%_
                                                (cons _%$%lp-hd1138911445%_
                                                      _%$%datum1139111439%_))))
                                           (let ((_%$%datum1139211451%_
                                                  (reverse _%$%datum1139111439%_)))
                                             ((lambda (_%$%g1137911454%_
                                                       _%$%g1138011456%_)
                                                (let* ((_%$%g1147611488%_
                                                        (lambda (_%$%g1147711484%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g1147711484%_)))
                                                       (_%$%g1147511558%_
                                                        (lambda (_%$%g1147711492%_)
                                                          (if (gx#stx-pair?
                                                               _%$%g1147711492%_)
                                                              (let ((_%$%e1148011495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%g1147711492%_)))
                        (let ((_%$%hd1148111499%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1148011495%_)))
                              (_%$%tl1148211502%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1148011495%_))))
                          ((lambda (_%$%g1147811505%_ _%$%g1147911507%_)
                             (let* ((_%$%g1151911527%_
                                     (lambda (_%$%g1152011523%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g1152011523%_)))
                                    (_%$%g1151811554%_
                                     (lambda (_%$%g1152011531%_)
                                       ((lambda (_%$%g1152111534%_)
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'or)
                                                            (foldr (lambda (_%$%g1154511548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g1154611551%_)
                             (cons (cons (gx#datum->syntax '#f '~case-test)
                                         (cons _%$%g1154511548%_
                                               (cons _%$%g1134411357%_ '())))
                                   _%$%g1154611551%_))
                           '()
                           _%$%g1138011456%_))
              (cons _%$%g1147911507%_ (cons _%$%g1152111534%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$%g1152011531%_))))
                               (_%$%g1151811554%_
                                (_%recur11369%_
                                 _%$%g1137911454%_
                                 _%$%g1147811505%_))))
                           _%$%tl1148211502%_
                           _%$%hd1148111499%_)))
                      (_%$%g1147611488%_ _%$%g1147711492%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1147511558%_
                                                   _%dispatch11374%_)))
                                              _%$%tl1138311423%_
                                              _%$%datum1139211451%_))))))
                             (_%$%loop1138711432%_ _%$%target1138411426%_ '()))
                           (_%$%g1137611409%_ _%$%g1137811413%_)))))
                 (_%$%g1137611409%_ _%$%g1137811413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g1137611409%_
                                                  _%$%g1137811413%_)))))
                                     (_%$%g1137511562%_ _%datums11372%_))))
                               _%$%g1134311354%_))))
                      (_%$%g1134111566%_ _%e11336%_))))
                 (_%datum-dispatch-index9176%_
                  (lambda (_%datums11210%_)
                    (let _%lp11213%_ ((_%rest11216%_ _%datums11210%_)
                                      (_%ix11218%_ '0)
                                      (_%r11219%_ '()))
                      (let* ((_%$%g1122211243%_
                              (lambda (_%$%g1122311239%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g1122311239%_)))
                             (_%$%g1122111254%_
                              (lambda (_%$%g1122311247%_)
                                ((lambda () _%r11219%_))))
                             (_%$%g1122011332%_
                              (lambda (_%$%g1122311258%_)
                                (if (gx#stx-pair? _%$%g1122311258%_)
                                    (let ((_%$%e1122611261%_
                                           (gx#syntax-e _%$%g1122311258%_)))
                                      (let ((_%$%hd1122711265%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e1122611261%_)))
                                            (_%$%tl1122811268%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e1122611261%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%hd1122711265%_)
                                            (let ((_g17868_
                                                   (gx#syntax-split-splice
                                                    _%$%hd1122711265%_
                                                    '0)))
                                              (begin
                                                (let ((_g17869_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g17868_)
                                                             (##values-length
                                                              _g17868_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g17869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g17869_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target1122911271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g17868_
                                                          0)))
                                                      (_%$%tl1123111274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g17868_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl1123111274%_)
                                                      (letrec ((_%$%loop1123211277%_
                                                                (lambda (_%$%hd1123011281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%datum1123611284%_)
                          (if (gx#stx-pair? _%$%hd1123011281%_)
                              (let ((_%$%e1123311286%_
                                     (gx#syntax-e _%$%hd1123011281%_)))
                                (let ((_%$%lp-hd1123411290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1123311286%_)))
                                      (_%$%lp-tl1123511293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1123311286%_))))
                                  (_%$%loop1123211277%_
                                   _%$%lp-tl1123511293%_
                                   (cons _%$%lp-hd1123411290%_
                                         _%$%datum1123611284%_))))
                              (let ((_%$%datum1123711296%_
                                     (reverse _%$%datum1123611284%_)))
                                ((lambda (_%$%g1122411299%_ _%$%g1122511301%_)
                                   (_%lp11213%_
                                    _%$%g1122411299%_
                                    (fx1+ _%ix11218%_)
                                    (foldl (lambda (_%x11320%_ _%r11322%_)
                                             (cons (cons _%x11320%_
                                                         _%ix11218%_)
                                                   _%r11322%_))
                                           _%r11219%_
                                           (foldr (lambda (_%$%g1132311326%_
                                                           _%$%g1132411329%_)
                                                    (cons _%$%g1132311326%_
                                                          _%$%g1132411329%_))
                                                  '()
                                                  _%$%g1122511301%_))))
                                 _%$%tl1122811268%_
                                 _%$%datum1123711296%_))))))
                (_%$%loop1123211277%_ _%$%target1122911271%_ '()))
              (_%$%g1122111254%_ _%$%g1122311258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g1122111254%_
                                             _%$%g1122311258%_))))
                                    (_%$%g1122111254%_ _%$%g1122311258%_)))))
                        (_%$%g1122011332%_ _%rest11216%_)))))
                 (_%duplicate-indexes?9177%_
                  (lambda (_%xs11191%_)
                    (let ((_%ht11194%_ (make-hash-table-eq)))
                      (let _%lp11197%_ ((_%rest11200%_ _%xs11191%_))
                        (if (pair? _%rest11200%_)
                            (let* ((_%ix11203%_ (car _%rest11200%_))
                                   (_%$e11206%_
                                    (hash-get _%ht11194%_ _%ix11203%_)))
                              (if _%$e11206%_
                                  _%$e11206%_
                                  (begin
                                    (hash-put! _%ht11194%_ _%ix11203%_ '#t)
                                    (_%lp11197%_ (cdr _%rest11200%_)))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9178%_
                  (lambda (_%indexes11160%_ _%hash-e11162%_)
                    (let _%lp11164%_ ((_%len11167%_
                                       (* '2 (length _%indexes11160%_))))
                      (let* ((_%hs11173%_
                              (map (lambda (_%x11170%_)
                                     (_%hash-e11162%_ (car _%x11170%_)))
                                   _%indexes11160%_))
                             (_%xs11179%_
                              (map (lambda (_%h11176%_)
                                     (fxmodulo _%h11176%_ _%len11167%_))
                                   _%hs11173%_)))
                        (if (_%duplicate-indexes?9177%_ _%xs11179%_)
                            (if (< _%len11167%_ '131072)
                                (_%lp11164%_
                                 (quotient (fx* _%len11167%_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9164%_
                                 _%indexes11160%_))
                            (let ((_%tab11184%_
                                   (make-vector _%len11167%_ '#f)))
                              (for-each
                               (lambda (_%entry11187%_ _%x11189%_)
                                 (vector-set!
                                  _%tab11184%_
                                  _%x11189%_
                                  _%entry11187%_))
                               _%indexes11160%_
                               _%xs11179%_)
                              _%tab11184%_))))))
                 (_%generate-symbolic-dispatch9179%_
                  (lambda (_%e10765%_
                           _%datums10767%_
                           _%dispatch10768%_
                           _%default10769%_)
                    (let* ((_%indexes10771%_
                            (_%datum-dispatch-index9176%_ _%datums10767%_))
                           (_%tab10774%_
                            (_%generate-hash-dispatch-table9178%_
                             _%indexes10771%_
                             symbol-hash)))
                      (if (= (length _%dispatch10768%_) '1)
                          (let* ((_%tab10782%_
                                  (vector-map
                                   (lambda (_%x10779%_)
                                     (if _%x10779%_ (car _%x10779%_) '#f))
                                   _%tab10774%_))
                                 (_%$%g1078510823%_
                                  (lambda (_%$%g1078610819%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g1078610819%_)))
                                 (_%$%g1078410954%_
                                  (lambda (_%$%g1078610827%_)
                                    (if (gx#stx-pair? _%$%g1078610827%_)
                                        (let ((_%$%e1079410830%_
                                               (gx#syntax-e
                                                _%$%g1078610827%_)))
                                          (let ((_%$%hd1079510834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1079410830%_)))
                                                (_%$%tl1079610837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1079410830%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl1079610837%_)
                                                (let ((_%$%e1079710840%_
                                                       (gx#syntax-e
                                                        _%$%tl1079610837%_)))
                                                  (let ((_%$%hd1079810844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e1079710840%_)))
                                                        (_%$%tl1079910847%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e1079710840%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl1079910847%_)
                                                        (let ((_%$%e1080010850%_
                                                               (gx#syntax-e
                                                                _%$%tl1079910847%_)))
                                                          (let ((_%$%hd1080110854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e1080010850%_)))
                        (_%$%tl1080210857%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e1080010850%_))))
                    (if (gx#stx-pair? _%$%tl1080210857%_)
                        (let ((_%$%e1080310860%_
                               (gx#syntax-e _%$%tl1080210857%_)))
                          (let ((_%$%hd1080410864%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1080310860%_)))
                                (_%$%tl1080510867%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1080310860%_))))
                            (if (gx#stx-pair? _%$%hd1080410864%_)
                                (let ((_%$%e1080610870%_
                                       (gx#syntax-e _%$%hd1080410864%_)))
                                  (let ((_%$%hd1080710874%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1080610870%_)))
                                        (_%$%tl1080810877%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1080610870%_))))
                                    (if (gx#stx-null? _%$%tl1080810877%_)
                                        (if (gx#stx-pair? _%$%tl1080510867%_)
                                            (let ((_%$%e1080910880%_
                                                   (gx#syntax-e
                                                    _%$%tl1080510867%_)))
                                              (let ((_%$%hd1081010884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e1080910880%_)))
                                                    (_%$%tl1081110887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e1080910880%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl1081110887%_)
                                                    (let ((_%$%e1081210890%_
                                                           (gx#syntax-e
                                                            _%$%tl1081110887%_)))
                                                      (let ((_%$%hd1081310894%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e1081210890%_)))
                    (_%$%tl1081410897%_
                     (let () (declare (not safe)) (##cdr _%$%e1081210890%_))))
                (if (gx#stx-pair? _%$%tl1081410897%_)
                    (let ((_%$%e1081510900%_ (gx#syntax-e _%$%tl1081410897%_)))
                      (let ((_%$%hd1081610904%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e1081510900%_)))
                            (_%$%tl1081710907%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e1081510900%_))))
                        (if (gx#stx-null? _%$%tl1081710907%_)
                            ((lambda (_%$%g1078710910%_
                                      _%$%g1078810912%_
                                      _%$%g1078910913%_
                                      _%$%g1079010914%_
                                      _%$%g1079110915%_
                                      _%$%g1079210916%_
                                      _%$%g1079310917%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%$%g1079210916%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%$%g1078910913%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g1079110915%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%g1078810912%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'symbol?)
                           (cons _%$%g1079310917%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%$%g1079310917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'ix)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##fxmodulo)
                             (cons (gx#datum->syntax '#f 'h)
                                   (cons _%$%g1078710910%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%$%g1079110915%_
                                         (cons (gx#datum->syntax '#f 'ix)
                                               '())))
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'eq?)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'q)
                             (cons _%$%g1079310917%_ '())))
                 (cons _%$%g1079010914%_
                       (cons (cons _%$%g1079210916%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%$%g1079210916%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%$%hd1081610904%_
                             _%$%hd1081310894%_
                             _%$%hd1081010884%_
                             _%$%hd1080710874%_
                             _%$%hd1080110854%_
                             _%$%hd1079810844%_
                             _%$%hd1079510834%_)
                            (_%$%g1078510823%_ _%$%g1078610827%_))))
                    (_%$%g1078510823%_ _%$%g1078610827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g1078510823%_
                                                     _%$%g1078610827%_))))
                                            (_%$%g1078510823%_
                                             _%$%g1078610827%_))
                                        (_%$%g1078510823%_
                                         _%$%g1078610827%_))))
                                (_%$%g1078510823%_ _%$%g1078610827%_))))
                        (_%$%g1078510823%_ _%$%g1078610827%_))))
                (_%$%g1078510823%_ _%$%g1078610827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g1078510823%_
                                                 _%$%g1078610827%_))))
                                        (_%$%g1078510823%_
                                         _%$%g1078610827%_)))))
                            (_%$%g1078410954%_
                             (list _%e10765%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch10768%_
                                   _%default10769%_
                                   _%tab10782%_
                                   (vector-length _%tab10782%_))))
                          (let* ((_%$%g1095811002%_
                                  (lambda (_%$%g1095910998%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g1095910998%_)))
                                 (_%$%g1095711156%_
                                  (lambda (_%$%g1095911006%_)
                                    (if (gx#stx-pair? _%$%g1095911006%_)
                                        (let ((_%$%e1096711009%_
                                               (gx#syntax-e
                                                _%$%g1095911006%_)))
                                          (let ((_%$%hd1096811013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1096711009%_)))
                                                (_%$%tl1096911016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1096711009%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl1096911016%_)
                                                (let ((_%$%e1097011019%_
                                                       (gx#syntax-e
                                                        _%$%tl1096911016%_)))
                                                  (let ((_%$%hd1097111023%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e1097011019%_)))
                                                        (_%$%tl1097211026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e1097011019%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl1097211026%_)
                                                        (let ((_%$%e1097311029%_
                                                               (gx#syntax-e
                                                                _%$%tl1097211026%_)))
                                                          (let ((_%$%hd1097411033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e1097311029%_)))
                        (_%$%tl1097511036%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e1097311029%_))))
                    (if (gx#stx-pair? _%$%tl1097511036%_)
                        (let ((_%$%e1097611039%_
                               (gx#syntax-e _%$%tl1097511036%_)))
                          (let ((_%$%hd1097711043%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1097611039%_)))
                                (_%$%tl1097811046%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1097611039%_))))
                            (if (gx#stx-pair/null? _%$%hd1097711043%_)
                                (let ((_g17870_
                                       (gx#syntax-split-splice
                                        _%$%hd1097711043%_
                                        '0)))
                                  (begin
                                    (let ((_g17871_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g17870_)
                                                 (##values-length _g17870_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g17871_ 2)))
                                          (error "Context expects 2 values"
                                                 _g17871_)))
                                    (let ((_%$%target1097911049%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g17870_ 0)))
                                          (_%$%tl1098111052%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g17870_ 1))))
                                      (if (gx#stx-null? _%$%tl1098111052%_)
                                          (letrec ((_%$%loop1098211055%_
                                                    (lambda (_%$%hd1098011059%_
                                                             _%$%dispatch1098611062%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd1098011059%_)
                                                          (let ((_%$%e1098311064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd1098011059%_)))
                    (let ((_%$%lp-hd1098411068%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1098311064%_)))
                          (_%$%lp-tl1098511071%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1098311064%_))))
                      (_%$%loop1098211055%_
                       _%$%lp-tl1098511071%_
                       (cons _%$%lp-hd1098411068%_ _%$%dispatch1098611062%_))))
                  (let ((_%$%dispatch1098711074%_
                         (reverse _%$%dispatch1098611062%_)))
                    (if (gx#stx-pair? _%$%tl1097811046%_)
                        (let ((_%$%e1098811077%_
                               (gx#syntax-e _%$%tl1097811046%_)))
                          (let ((_%$%hd1098911081%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1098811077%_)))
                                (_%$%tl1099011084%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1098811077%_))))
                            (if (gx#stx-pair? _%$%tl1099011084%_)
                                (let ((_%$%e1099111087%_
                                       (gx#syntax-e _%$%tl1099011084%_)))
                                  (let ((_%$%hd1099211091%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1099111087%_)))
                                        (_%$%tl1099311094%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1099111087%_))))
                                    (if (gx#stx-pair? _%$%tl1099311094%_)
                                        (let ((_%$%e1099411097%_
                                               (gx#syntax-e
                                                _%$%tl1099311094%_)))
                                          (let ((_%$%hd1099511101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1099411097%_)))
                                                (_%$%tl1099611104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1099411097%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl1099611104%_)
                                                ((lambda (_%$%g1096011107%_
                                                          _%$%g1096111109%_
                                                          _%$%g1096211110%_
                                                          _%$%g1096311111%_
                                                          _%$%g1096411112%_
                                                          _%$%g1096511113%_
                                                          _%$%g1096611114%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%$%g1096511113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%$%g1096211110%_
                                                           '())))
                                         '()))
                             (cons (cons _%$%g1096411112%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%$%g1096111109%_
                                                           '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%$%g1096611114%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let*)
                                                     (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'h)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##symbol-hash)
                                           (cons _%$%g1096611114%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%$%g1096011107%_
                                                             '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%$%g1096411112%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'ix)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax '#f 'if)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##car)
                                 (cons (gx#datum->syntax '#f 'q) '()))
                           (cons _%$%g1096611114%_ '())))
               (cons (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (gx#datum->syntax '#f 'x)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'q)
                                                         '()))
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '~case-dispatch)
                                             (cons (gx#datum->syntax '#f 'x)
                                                   (foldr (lambda (_%$%g1114711150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g1114811153%_)
                    (cons _%$%g1114711150%_ _%$%g1114811153%_))
                  '()
                  _%$%g1096311111%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%$%g1096511113%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%$%g1096511113%_ '())
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%$%g1096511113%_
                                                           '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%hd1099511101%_
                                                 _%$%hd1099211091%_
                                                 _%$%hd1098911081%_
                                                 _%$%dispatch1098711074%_
                                                 _%$%hd1097411033%_
                                                 _%$%hd1097111023%_
                                                 _%$%hd1096811013%_)
                                                (_%$%g1095811002%_
                                                 _%$%g1095911006%_))))
                                        (_%$%g1095811002%_
                                         _%$%g1095911006%_))))
                                (_%$%g1095811002%_ _%$%g1095911006%_))))
                        (_%$%g1095811002%_ _%$%g1095911006%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop1098211055%_
                                             _%$%target1097911049%_
                                             '()))
                                          (_%$%g1095811002%_
                                           _%$%g1095911006%_)))))
                                (_%$%g1095811002%_ _%$%g1095911006%_))))
                        (_%$%g1095811002%_ _%$%g1095911006%_))))
                (_%$%g1095811002%_ _%$%g1095911006%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g1095811002%_
                                                 _%$%g1095911006%_))))
                                        (_%$%g1095811002%_
                                         _%$%g1095911006%_)))))
                            (_%$%g1095711156%_
                             (list _%e10765%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch10768%_
                                   _%default10769%_
                                   _%tab10774%_
                                   (vector-length _%tab10774%_))))))))
                 (_%max-char9180%_
                  (lambda (_%datums10754%_)
                    (foldl (lambda (_%lst10757%_ _%r10759%_)
                             (foldl (lambda (_%char10761%_ _%r10763%_)
                                      (max (char->integer _%char10761%_)
                                           _%r10763%_))
                                    _%r10759%_
                                    _%lst10757%_))
                           '0
                           _%datums10754%_)))
                 (_%generate-char-dispatch-table9181%_
                  (lambda (_%indexes10733%_)
                    (let* ((_%ixs10739%_
                            (map (lambda (_%x10736%_)
                                   (char->integer (car _%x10736%_)))
                                 _%indexes10733%_))
                           (_%len10742%_ (fx1+ (foldl max '0 _%ixs10739%_)))
                           (_%vec10745%_ (make-vector _%len10742%_ '#f)))
                      (for-each
                       (lambda (_%entry10750%_ _%x10752%_)
                         (vector-set!
                          _%vec10745%_
                          _%x10752%_
                          (cdr _%entry10750%_)))
                       _%indexes10733%_
                       _%ixs10739%_)
                      _%vec10745%_)))
                 (_%simple-char-range?9182%_
                  (lambda (_%tab10709%_)
                    (let ((_%end10712%_ (vector-length _%tab10709%_)))
                      (let _%lp10715%_ ((_%i10718%_ '0))
                        (let ((_%ix10721%_
                               (vector-ref _%tab10709%_ _%i10718%_)))
                          (if _%ix10721%_
                              (let _%lp210724%_ ((_%i10727%_
                                                  (fx1+ _%i10718%_)))
                                (if (fx< _%i10727%_ _%end10712%_)
                                    (let ((_%ix*10730%_
                                           (vector-ref
                                            _%tab10709%_
                                            _%i10727%_)))
                                      (if (eq? _%ix10721%_ _%ix*10730%_)
                                          (_%lp210724%_ (fx1+ _%i10727%_))
                                          '#f))
                                    '#t))
                              (_%lp10715%_ (fx1+ _%i10718%_))))))))
                 (_%char-range-start9183%_
                  (lambda (_%tab10700%_)
                    (let _%lp10703%_ ((_%i10706%_ '0))
                      (if (vector-ref _%tab10700%_ _%i10706%_)
                          _%i10706%_
                          (_%lp10703%_ (fx1+ _%i10706%_))))))
                 (_%generate-char-dispatch9184%_
                  (lambda (_%e10325%_
                           _%datums10327%_
                           _%dispatch10328%_
                           _%default10329%_)
                    (if (< (_%max-char9180%_ _%datums10327%_) '128)
                        (let* ((_%indexes10331%_
                                (_%datum-dispatch-index9176%_ _%datums10327%_))
                               (_%tab10334%_
                                (_%generate-char-dispatch-table9181%_
                                 _%indexes10331%_)))
                          (if (_%simple-char-range?9182%_ _%tab10334%_)
                              (let ((_%start10339%_
                                     (_%char-range-start9183%_ _%tab10334%_))
                                    (_%end10341%_
                                     (vector-length _%tab10334%_)))
                                (let* ((_%$%g1034310377%_
                                        (lambda (_%$%g1034410373%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g1034410373%_)))
                                       (_%$%g1034210494%_
                                        (lambda (_%$%g1034410381%_)
                                          (if (gx#stx-pair? _%$%g1034410381%_)
                                              (let ((_%$%e1035110384%_
                                                     (gx#syntax-e
                                                      _%$%g1034410381%_)))
                                                (let ((_%$%hd1035210388%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1035110384%_)))
                                                      (_%$%tl1035310391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1035110384%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl1035310391%_)
                                                      (let ((_%$%e1035410394%_
                                                             (gx#syntax-e
                                                              _%$%tl1035310391%_)))
                                                        (let ((_%$%hd1035510398%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e1035410394%_)))
                      (_%$%tl1035610401%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e1035410394%_))))
                  (if (gx#stx-pair? _%$%tl1035610401%_)
                      (let ((_%$%e1035710404%_
                             (gx#syntax-e _%$%tl1035610401%_)))
                        (let ((_%$%hd1035810408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1035710404%_)))
                              (_%$%tl1035910411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1035710404%_))))
                          (if (gx#stx-pair? _%$%hd1035810408%_)
                              (let ((_%$%e1036010414%_
                                     (gx#syntax-e _%$%hd1035810408%_)))
                                (let ((_%$%hd1036110418%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1036010414%_)))
                                      (_%$%tl1036210421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1036010414%_))))
                                  (if (gx#stx-null? _%$%tl1036210421%_)
                                      (if (gx#stx-pair? _%$%tl1035910411%_)
                                          (let ((_%$%e1036310424%_
                                                 (gx#syntax-e
                                                  _%$%tl1035910411%_)))
                                            (let ((_%$%hd1036410428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e1036310424%_)))
                                                  (_%$%tl1036510431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e1036310424%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl1036510431%_)
                                                  (let ((_%$%e1036610434%_
                                                         (gx#syntax-e
                                                          _%$%tl1036510431%_)))
                                                    (let ((_%$%hd1036710438%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1036610434%_)))
                                                          (_%$%tl1036810441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1036610434%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl1036810441%_)
                                                          (let ((_%$%e1036910444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl1036810441%_)))
                    (let ((_%$%hd1037010448%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1036910444%_)))
                          (_%$%tl1037110451%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1036910444%_))))
                      (if (gx#stx-null? _%$%tl1037110451%_)
                          ((lambda (_%$%g1034510454%_
                                    _%$%g1034610456%_
                                    _%$%g1034710457%_
                                    _%$%g1034810458%_
                                    _%$%g1034910459%_
                                    _%$%g1035010460%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%$%g1034910459%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g1034710457%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%$%g1035010460%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%$%g1035010460%_
                                                             '()))
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'if)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'and)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##fx>=)
                                 (cons (gx#datum->syntax '#f 'ix)
                                       (cons _%$%g1034610456%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%$%g1034510454%_ '())))
                                 '())))
               (cons _%$%g1034810458%_
                     (cons (cons _%$%g1034910459%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%$%g1034910459%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$%hd1037010448%_
                           _%$%hd1036710438%_
                           _%$%hd1036410428%_
                           _%$%hd1036110418%_
                           _%$%hd1035510398%_
                           _%$%hd1035210388%_)
                          (_%$%g1034310377%_ _%$%g1034410381%_))))
                  (_%$%g1034310377%_ _%$%g1034410381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1034310377%_
                                                   _%$%g1034410381%_))))
                                          (_%$%g1034310377%_
                                           _%$%g1034410381%_))
                                      (_%$%g1034310377%_ _%$%g1034410381%_))))
                              (_%$%g1034310377%_ _%$%g1034410381%_))))
                      (_%$%g1034310377%_ _%$%g1034410381%_))))
              (_%$%g1034310377%_ _%$%g1034410381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1034310377%_
                                               _%$%g1034410381%_)))))
                                  (_%$%g1034210494%_
                                   (list _%e10325%_
                                         (gx#genident 'default)
                                         _%dispatch10328%_
                                         _%default10329%_
                                         _%start10339%_
                                         _%end10341%_))))
                              (let* ((_%$%g1049810542%_
                                      (lambda (_%$%g1049910538%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g1049910538%_)))
                                     (_%$%g1049710696%_
                                      (lambda (_%$%g1049910546%_)
                                        (if (gx#stx-pair? _%$%g1049910546%_)
                                            (let ((_%$%e1050710549%_
                                                   (gx#syntax-e
                                                    _%$%g1049910546%_)))
                                              (let ((_%$%hd1050810553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e1050710549%_)))
                                                    (_%$%tl1050910556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e1050710549%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl1050910556%_)
                                                    (let ((_%$%e1051010559%_
                                                           (gx#syntax-e
                                                            _%$%tl1050910556%_)))
                                                      (let ((_%$%hd1051110563%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e1051010559%_)))
                    (_%$%tl1051210566%_
                     (let () (declare (not safe)) (##cdr _%$%e1051010559%_))))
                (if (gx#stx-pair? _%$%tl1051210566%_)
                    (let ((_%$%e1051310569%_ (gx#syntax-e _%$%tl1051210566%_)))
                      (let ((_%$%hd1051410573%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e1051310569%_)))
                            (_%$%tl1051510576%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e1051310569%_))))
                        (if (gx#stx-pair? _%$%tl1051510576%_)
                            (let ((_%$%e1051610579%_
                                   (gx#syntax-e _%$%tl1051510576%_)))
                              (let ((_%$%hd1051710583%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1051610579%_)))
                                    (_%$%tl1051810586%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1051610579%_))))
                                (if (gx#stx-pair/null? _%$%hd1051710583%_)
                                    (let ((_g17872_
                                           (gx#syntax-split-splice
                                            _%$%hd1051710583%_
                                            '0)))
                                      (begin
                                        (let ((_g17873_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g17872_)
                                                     (##values-length _g17872_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g17873_ 2)))
                                              (error "Context expects 2 values"
                                                     _g17873_)))
                                        (let ((_%$%target1051910589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g17872_ 0)))
                                              (_%$%tl1052110592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g17872_ 1))))
                                          (if (gx#stx-null? _%$%tl1052110592%_)
                                              (letrec ((_%$%loop1052210595%_
                                                        (lambda (_%$%hd1052010599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%dispatch1052610602%_)
                  (if (gx#stx-pair? _%$%hd1052010599%_)
                      (let ((_%$%e1052310604%_
                             (gx#syntax-e _%$%hd1052010599%_)))
                        (let ((_%$%lp-hd1052410608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1052310604%_)))
                              (_%$%lp-tl1052510611%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1052310604%_))))
                          (_%$%loop1052210595%_
                           _%$%lp-tl1052510611%_
                           (cons _%$%lp-hd1052410608%_
                                 _%$%dispatch1052610602%_))))
                      (let ((_%$%dispatch1052710614%_
                             (reverse _%$%dispatch1052610602%_)))
                        (if (gx#stx-pair? _%$%tl1051810586%_)
                            (let ((_%$%e1052810617%_
                                   (gx#syntax-e _%$%tl1051810586%_)))
                              (let ((_%$%hd1052910621%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1052810617%_)))
                                    (_%$%tl1053010624%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1052810617%_))))
                                (if (gx#stx-pair? _%$%tl1053010624%_)
                                    (let ((_%$%e1053110627%_
                                           (gx#syntax-e _%$%tl1053010624%_)))
                                      (let ((_%$%hd1053210631%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e1053110627%_)))
                                            (_%$%tl1053310634%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e1053110627%_))))
                                        (if (gx#stx-pair? _%$%tl1053310634%_)
                                            (let ((_%$%e1053410637%_
                                                   (gx#syntax-e
                                                    _%$%tl1053310634%_)))
                                              (let ((_%$%hd1053510641%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e1053410637%_)))
                                                    (_%$%tl1053610644%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e1053410637%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl1053610644%_)
                                                    ((lambda (_%$%g1050010647%_
                                                              _%$%g1050110649%_
                                                              _%$%g1050210650%_
                                                              _%$%g1050310651%_
                                                              _%$%g1050410652%_
                                                              _%$%g1050510653%_
                                                              _%$%g1050610654%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%$%g1050510653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%$%g1050210650%_
                                                               '())))
                                             '()))
                                 (cons (cons _%$%g1050410652%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%$%g1050110649%_
                                                               '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%$%g1050610654%_
                                                         '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##char->integer)
                                         (cons _%$%g1050610654%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%$%g1050010647%_
                                                           '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%$%g1050410652%_
                                           (cons (gx#datum->syntax '#f 'ix)
                                                 '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (gx#datum->syntax '#f 'x)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '~case-dispatch)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'x)
                                                       (foldr (lambda (_%$%g1068710690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g1068810693%_)
                        (cons _%$%g1068710690%_ _%$%g1068810693%_))
                      '()
                      _%$%g1050310651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%$%g1050510653%_ '())
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%$%g1050510653%_
                                                           '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%$%g1050510653%_
                                                               '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$%hd1053510641%_
                                                     _%$%hd1053210631%_
                                                     _%$%hd1052910621%_
                                                     _%$%dispatch1052710614%_
                                                     _%$%hd1051410573%_
                                                     _%$%hd1051110563%_
                                                     _%$%hd1050810553%_)
                                                    (_%$%g1049810542%_
                                                     _%$%g1049910546%_))))
                                            (_%$%g1049810542%_
                                             _%$%g1049910546%_))))
                                    (_%$%g1049810542%_ _%$%g1049910546%_))))
                            (_%$%g1049810542%_ _%$%g1049910546%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop1052210595%_
                                                 _%$%target1051910589%_
                                                 '()))
                                              (_%$%g1049810542%_
                                               _%$%g1049910546%_)))))
                                    (_%$%g1049810542%_ _%$%g1049910546%_))))
                            (_%$%g1049810542%_ _%$%g1049910546%_))))
                    (_%$%g1049810542%_ _%$%g1049910546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g1049810542%_
                                                     _%$%g1049910546%_))))
                                            (_%$%g1049810542%_
                                             _%$%g1049910546%_)))))
                                (_%$%g1049710696%_
                                 (list _%e10325%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10328%_
                                       _%default10329%_
                                       _%tab10334%_
                                       (vector-length _%tab10334%_))))))
                        (_%generate-char-dispatch/hash9185%_
                         _%e10325%_
                         _%datums10327%_
                         _%dispatch10328%_
                         _%default10329%_))))
                 (_%generate-char-dispatch/hash9185%_
                  (lambda (_%e10105%_
                           _%datums10107%_
                           _%dispatch10108%_
                           _%default10109%_)
                    (let* ((_%indexes10111%_
                            (_%datum-dispatch-index9176%_ _%datums10107%_))
                           (_%tab10114%_
                            (_%generate-hash-dispatch-table9178%_
                             _%indexes10111%_
                             char->integer))
                           (_%$%g1011910163%_
                            (lambda (_%$%g1012010159%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g1012010159%_)))
                           (_%$%g1011810321%_
                            (lambda (_%$%g1012010167%_)
                              (if (gx#stx-pair? _%$%g1012010167%_)
                                  (let ((_%$%e1012810170%_
                                         (gx#syntax-e _%$%g1012010167%_)))
                                    (let ((_%$%hd1012910174%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1012810170%_)))
                                          (_%$%tl1013010177%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1012810170%_))))
                                      (if (gx#stx-pair? _%$%tl1013010177%_)
                                          (let ((_%$%e1013110180%_
                                                 (gx#syntax-e
                                                  _%$%tl1013010177%_)))
                                            (let ((_%$%hd1013210184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e1013110180%_)))
                                                  (_%$%tl1013310187%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e1013110180%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl1013310187%_)
                                                  (let ((_%$%e1013410190%_
                                                         (gx#syntax-e
                                                          _%$%tl1013310187%_)))
                                                    (let ((_%$%hd1013510194%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1013410190%_)))
                                                          (_%$%tl1013610197%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1013410190%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl1013610197%_)
                                                          (let ((_%$%e1013710200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl1013610197%_)))
                    (let ((_%$%hd1013810204%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1013710200%_)))
                          (_%$%tl1013910207%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1013710200%_))))
                      (if (gx#stx-pair/null? _%$%hd1013810204%_)
                          (let ((_g17874_
                                 (gx#syntax-split-splice
                                  _%$%hd1013810204%_
                                  '0)))
                            (begin
                              (let ((_g17875_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g17874_)
                                           (##values-length _g17874_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g17875_ 2)))
                                    (error "Context expects 2 values"
                                           _g17875_)))
                              (let ((_%$%target1014010210%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g17874_ 0)))
                                    (_%$%tl1014210213%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g17874_ 1))))
                                (if (gx#stx-null? _%$%tl1014210213%_)
                                    (letrec ((_%$%loop1014310216%_
                                              (lambda (_%$%hd1014110220%_
                                                       _%$%dispatch1014710223%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd1014110220%_)
                                                    (let ((_%$%e1014410225%_
                                                           (gx#syntax-e
                                                            _%$%hd1014110220%_)))
                                                      (let ((_%$%lp-hd1014510229%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e1014410225%_)))
                    (_%$%lp-tl1014610232%_
                     (let () (declare (not safe)) (##cdr _%$%e1014410225%_))))
                (_%$%loop1014310216%_
                 _%$%lp-tl1014610232%_
                 (cons _%$%lp-hd1014510229%_ _%$%dispatch1014710223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%dispatch1014810235%_
                                                           (reverse _%$%dispatch1014710223%_)))
                                                      (if (gx#stx-pair?
                                                           _%$%tl1013910207%_)
                                                          (let ((_%$%e1014910238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl1013910207%_)))
                    (let ((_%$%hd1015010242%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1014910238%_)))
                          (_%$%tl1015110245%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1014910238%_))))
                      (if (gx#stx-pair? _%$%tl1015110245%_)
                          (let ((_%$%e1015210248%_
                                 (gx#syntax-e _%$%tl1015110245%_)))
                            (let ((_%$%hd1015310252%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1015210248%_)))
                                  (_%$%tl1015410255%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1015210248%_))))
                              (if (gx#stx-pair? _%$%tl1015410255%_)
                                  (let ((_%$%e1015510258%_
                                         (gx#syntax-e _%$%tl1015410255%_)))
                                    (let ((_%$%hd1015610262%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1015510258%_)))
                                          (_%$%tl1015710265%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1015510258%_))))
                                      (if (gx#stx-null? _%$%tl1015710265%_)
                                          ((lambda (_%$%g1012110268%_
                                                    _%$%g1012210270%_
                                                    _%$%g1012310271%_
                                                    _%$%g1012410272%_
                                                    _%$%g1012510273%_
                                                    _%$%g1012610274%_
                                                    _%$%g1012710275%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%$%g1012610274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '()
                                               (cons _%$%g1012310271%_ '())))
                                   '()))
                       (cons (cons _%$%g1012510273%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%$%g1012210270%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%$%g1012710275%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%$%g1012710275%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%$%g1012110268%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%$%g1012510273%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'ix)
                                                             '())))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'if)
                         (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'eq?)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons (gx#datum->syntax '#f 'q) '()))
                     (cons _%$%g1012710275%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'x)
                                 (cons (cons (gx#datum->syntax '#f '##cdr)
                                             (cons (gx#datum->syntax '#f 'q)
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                       (cons (gx#datum->syntax '#f 'x)
                                             (foldr (lambda (_%$%g1031210315%_
                                                             _%$%g1031310318%_)
                                                      (cons _%$%g1031210315%_
                                                            _%$%g1031310318%_))
                                                    '()
                                                    _%$%g1012410272%_)))
                                 '())))
               (cons (cons _%$%g1012610274%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%$%g1012610274%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%$%g1012610274%_ '())
                                               '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%hd1015610262%_
                                           _%$%hd1015310252%_
                                           _%$%hd1015010242%_
                                           _%$%dispatch1014810235%_
                                           _%$%hd1013510194%_
                                           _%$%hd1013210184%_
                                           _%$%hd1012910174%_)
                                          (_%$%g1011910163%_
                                           _%$%g1012010167%_))))
                                  (_%$%g1011910163%_ _%$%g1012010167%_))))
                          (_%$%g1011910163%_ _%$%g1012010167%_))))
                  (_%$%g1011910163%_ _%$%g1012010167%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop1014310216%_
                                       _%$%target1014010210%_
                                       '()))
                                    (_%$%g1011910163%_ _%$%g1012010167%_)))))
                          (_%$%g1011910163%_ _%$%g1012010167%_))))
                  (_%$%g1011910163%_ _%$%g1012010167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1011910163%_
                                                   _%$%g1012010167%_))))
                                          (_%$%g1011910163%_
                                           _%$%g1012010167%_))))
                                  (_%$%g1011910163%_ _%$%g1012010167%_)))))
                      (_%$%g1011810321%_
                       (list _%e10105%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10108%_
                             _%default10109%_
                             _%tab10114%_
                             (vector-length _%tab10114%_))))))
                 (_%min-fixnum9186%_
                  (lambda (_%datums10098%_)
                    (foldl (lambda (_%lst10101%_ _%r10103%_)
                             (foldl min _%r10103%_ _%lst10101%_))
                           ##max-fixnum
                           _%datums10098%_)))
                 (_%max-fixnum9187%_
                  (lambda (_%datums10091%_)
                    (foldl (lambda (_%lst10094%_ _%r10096%_)
                             (foldl max _%r10096%_ _%lst10094%_))
                           ##min-fixnum
                           _%datums10091%_)))
                 (_%generate-fixnum-dispatch-table9188%_
                  (lambda (_%indexes10073%_)
                    (let* ((_%ixs10076%_ (map car _%indexes10073%_))
                           (_%len10079%_ (fx1+ (foldl max '0 _%ixs10076%_)))
                           (_%vec10082%_ (make-vector _%len10079%_ '#f)))
                      (for-each
                       (lambda (_%entry10087%_ _%x10089%_)
                         (vector-set!
                          _%vec10082%_
                          _%x10089%_
                          (cdr _%entry10087%_)))
                       _%indexes10073%_
                       _%ixs10076%_)
                      _%vec10082%_)))
                 (_%generate-fixnum-dispatch9189%_
                  (lambda (_%e9809%_
                           _%datums9811%_
                           _%dispatch9812%_
                           _%default9813%_)
                    (if (and (>= (_%min-fixnum9186%_ _%datums9811%_) '0)
                             (< (_%max-fixnum9187%_ _%datums9811%_) '1024))
                        (let* ((_%indexes9815%_
                                (_%datum-dispatch-index9176%_ _%datums9811%_))
                               (_%tab9818%_
                                (_%generate-fixnum-dispatch-table9188%_
                                 _%indexes9815%_))
                               (_%dense?9821%_
                                (andmap values (vector->list _%tab9818%_)))
                               (_%$%g98269870%_
                                (lambda (_%$%g98279866%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g98279866%_)))
                               (_%$%g982510069%_
                                (lambda (_%$%g98279874%_)
                                  (if (gx#stx-pair? _%$%g98279874%_)
                                      (let ((_%$%e98359877%_
                                             (gx#syntax-e _%$%g98279874%_)))
                                        (let ((_%$%hd98369881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e98359877%_)))
                                              (_%$%tl98379884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e98359877%_))))
                                          (if (gx#stx-pair? _%$%tl98379884%_)
                                              (let ((_%$%e98389887%_
                                                     (gx#syntax-e
                                                      _%$%tl98379884%_)))
                                                (let ((_%$%hd98399891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e98389887%_)))
                                                      (_%$%tl98409894%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e98389887%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl98409894%_)
                                                      (let ((_%$%e98419897%_
                                                             (gx#syntax-e
                                                              _%$%tl98409894%_)))
                                                        (let ((_%$%hd98429901%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e98419897%_)))
                      (_%$%tl98439904%_
                       (let () (declare (not safe)) (##cdr _%$%e98419897%_))))
                  (if (gx#stx-pair? _%$%tl98439904%_)
                      (let ((_%$%e98449907%_ (gx#syntax-e _%$%tl98439904%_)))
                        (let ((_%$%hd98459911%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e98449907%_)))
                              (_%$%tl98469914%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e98449907%_))))
                          (if (gx#stx-pair/null? _%$%hd98459911%_)
                              (let ((_g17876_
                                     (gx#syntax-split-splice
                                      _%$%hd98459911%_
                                      '0)))
                                (begin
                                  (let ((_g17877_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g17876_)
                                               (##values-length _g17876_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g17877_ 2)))
                                        (error "Context expects 2 values"
                                               _g17877_)))
                                  (let ((_%$%target98479917%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g17876_ 0)))
                                        (_%$%tl98499920%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g17876_ 1))))
                                    (if (gx#stx-null? _%$%tl98499920%_)
                                        (letrec ((_%$%loop98509923%_
                                                  (lambda (_%$%hd98489927%_
                                                           _%$%dispatch98549930%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd98489927%_)
                                                        (let ((_%$%e98519932%_
                                                               (gx#syntax-e
                                                                _%$%hd98489927%_)))
                                                          (let ((_%$%lp-hd98529936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%$%e98519932%_)))
                        (_%$%lp-tl98539939%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e98519932%_))))
                    (_%$%loop98509923%_
                     _%$%lp-tl98539939%_
                     (cons _%$%lp-hd98529936%_ _%$%dispatch98549930%_))))
                (let ((_%$%dispatch98559942%_
                       (reverse _%$%dispatch98549930%_)))
                  (if (gx#stx-pair? _%$%tl98469914%_)
                      (let ((_%$%e98569945%_ (gx#syntax-e _%$%tl98469914%_)))
                        (let ((_%$%hd98579949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e98569945%_)))
                              (_%$%tl98589952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e98569945%_))))
                          (if (gx#stx-pair? _%$%tl98589952%_)
                              (let ((_%$%e98599955%_
                                     (gx#syntax-e _%$%tl98589952%_)))
                                (let ((_%$%hd98609959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e98599955%_)))
                                      (_%$%tl98619962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e98599955%_))))
                                  (if (gx#stx-pair? _%$%tl98619962%_)
                                      (let ((_%$%e98629965%_
                                             (gx#syntax-e _%$%tl98619962%_)))
                                        (let ((_%$%hd98639969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e98629965%_)))
                                              (_%$%tl98649972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e98629965%_))))
                                          (if (gx#stx-null? _%$%tl98649972%_)
                                              ((lambda (_%$%g98289975%_
                                                        _%$%g98299977%_
                                                        _%$%g98309978%_
                                                        _%$%g98319979%_
                                                        _%$%g98329980%_
                                                        _%$%g98339981%_
                                                        _%$%g98349982%_)
                                                 (let* ((_%$%g1002110029%_
                                                         (lambda (_%$%g1002210025%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%$%g1002210025%_)))
                                                        (_%$%g1002010049%_
                                                         (lambda (_%$%g1002210033%_)
                                                           ((lambda (_%$%g1002310036%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%$%g98339981%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%$%g98309978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%$%g98329980%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%$%g98299977%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%$%g98349982%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%$%g98349982%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%$%g98349982%_
                                                            (cons _%$%g98289975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (gx#datum->syntax '#f 'x)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##vector-ref)
                          (cons _%$%g98329980%_ (cons _%$%g98349982%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%$%g1002310036%_ '())))
                                    (cons (cons _%$%g98339981%_ '()) '()))))
                  (cons (cons _%$%g98339981%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%$%g1002210033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g1002010049%_
                                                    (if _%dense?9821%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%$%g1005210055%_
                                            _%$%g1005310058%_)
                                     (cons _%$%g1005210055%_
                                           _%$%g1005310058%_))
                                   '()
                                   _%$%g98319979%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%$%g1006010063%_
                                                              _%$%g1006110066%_)
                                                       (cons _%$%g1006010063%_
                                                             _%$%g1006110066%_))
                                                     '()
                                                     _%$%g98319979%_)))
                                  (cons (cons _%$%g98339981%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd98639969%_
                                               _%$%hd98609959%_
                                               _%$%hd98579949%_
                                               _%$%dispatch98559942%_
                                               _%$%hd98429901%_
                                               _%$%hd98399891%_
                                               _%$%hd98369881%_)
                                              (_%$%g98269870%_
                                               _%$%g98279874%_))))
                                      (_%$%g98269870%_ _%$%g98279874%_))))
                              (_%$%g98269870%_ _%$%g98279874%_))))
                      (_%$%g98269870%_ _%$%g98279874%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop98509923%_
                                           _%$%target98479917%_
                                           '()))
                                        (_%$%g98269870%_ _%$%g98279874%_)))))
                              (_%$%g98269870%_ _%$%g98279874%_))))
                      (_%$%g98269870%_ _%$%g98279874%_))))
              (_%$%g98269870%_ _%$%g98279874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g98269870%_
                                               _%$%g98279874%_))))
                                      (_%$%g98269870%_ _%$%g98279874%_)))))
                          (_%$%g982510069%_
                           (list _%e9809%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch9812%_
                                 _%default9813%_
                                 _%tab9818%_
                                 (vector-length _%tab9818%_))))
                        (_%generate-fixnum-dispatch/hash9190%_
                         _%e9809%_
                         _%datums9811%_
                         _%dispatch9812%_
                         _%default9813%_))))
                 (_%generate-fixnum-dispatch/hash9190%_
                  (lambda (_%e9589%_
                           _%datums9591%_
                           _%dispatch9592%_
                           _%default9593%_)
                    (let* ((_%indexes9595%_
                            (_%datum-dispatch-index9176%_ _%datums9591%_))
                           (_%tab9598%_
                            (_%generate-hash-dispatch-table9178%_
                             _%indexes9595%_
                             values))
                           (_%$%g96039647%_
                            (lambda (_%$%g96049643%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g96049643%_)))
                           (_%$%g96029805%_
                            (lambda (_%$%g96049651%_)
                              (if (gx#stx-pair? _%$%g96049651%_)
                                  (let ((_%$%e96129654%_
                                         (gx#syntax-e _%$%g96049651%_)))
                                    (let ((_%$%hd96139658%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e96129654%_)))
                                          (_%$%tl96149661%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e96129654%_))))
                                      (if (gx#stx-pair? _%$%tl96149661%_)
                                          (let ((_%$%e96159664%_
                                                 (gx#syntax-e
                                                  _%$%tl96149661%_)))
                                            (let ((_%$%hd96169668%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e96159664%_)))
                                                  (_%$%tl96179671%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e96159664%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl96179671%_)
                                                  (let ((_%$%e96189674%_
                                                         (gx#syntax-e
                                                          _%$%tl96179671%_)))
                                                    (let ((_%$%hd96199678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e96189674%_)))
                                                          (_%$%tl96209681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e96189674%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl96209681%_)
                                                          (let ((_%$%e96219684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl96209681%_)))
                    (let ((_%$%hd96229688%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e96219684%_)))
                          (_%$%tl96239691%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e96219684%_))))
                      (if (gx#stx-pair/null? _%$%hd96229688%_)
                          (let ((_g17878_
                                 (gx#syntax-split-splice _%$%hd96229688%_ '0)))
                            (begin
                              (let ((_g17879_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g17878_)
                                           (##values-length _g17878_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g17879_ 2)))
                                    (error "Context expects 2 values"
                                           _g17879_)))
                              (let ((_%$%target96249694%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g17878_ 0)))
                                    (_%$%tl96269697%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g17878_ 1))))
                                (if (gx#stx-null? _%$%tl96269697%_)
                                    (letrec ((_%$%loop96279700%_
                                              (lambda (_%$%hd96259704%_
                                                       _%$%dispatch96319707%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd96259704%_)
                                                    (let ((_%$%e96289709%_
                                                           (gx#syntax-e
                                                            _%$%hd96259704%_)))
                                                      (let ((_%$%lp-hd96299713%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e96289709%_)))
                    (_%$%lp-tl96309716%_
                     (let () (declare (not safe)) (##cdr _%$%e96289709%_))))
                (_%$%loop96279700%_
                 _%$%lp-tl96309716%_
                 (cons _%$%lp-hd96299713%_ _%$%dispatch96319707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%dispatch96329719%_
                                                           (reverse _%$%dispatch96319707%_)))
                                                      (if (gx#stx-pair?
                                                           _%$%tl96239691%_)
                                                          (let ((_%$%e96339722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl96239691%_)))
                    (let ((_%$%hd96349726%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e96339722%_)))
                          (_%$%tl96359729%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e96339722%_))))
                      (if (gx#stx-pair? _%$%tl96359729%_)
                          (let ((_%$%e96369732%_
                                 (gx#syntax-e _%$%tl96359729%_)))
                            (let ((_%$%hd96379736%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e96369732%_)))
                                  (_%$%tl96389739%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e96369732%_))))
                              (if (gx#stx-pair? _%$%tl96389739%_)
                                  (let ((_%$%e96399742%_
                                         (gx#syntax-e _%$%tl96389739%_)))
                                    (let ((_%$%hd96409746%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e96399742%_)))
                                          (_%$%tl96419749%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e96399742%_))))
                                      (if (gx#stx-null? _%$%tl96419749%_)
                                          ((lambda (_%$%g96059752%_
                                                    _%$%g96069754%_
                                                    _%$%g96079755%_
                                                    _%$%g96089756%_
                                                    _%$%g96099757%_
                                                    _%$%g96109758%_
                                                    _%$%g96119759%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%$%g96109758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%$%g96079755%_ '())))
                                   '()))
                       (cons (cons _%$%g96099757%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%$%g96069754%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%$%g96119759%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%$%g96119759%_
                                           (cons _%$%g96059752%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%$%g96099757%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ix)
                                                       '())))
                                     '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'if)
                         (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'eq?)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons (gx#datum->syntax '#f 'q) '()))
                     (cons _%$%g96119759%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'x)
                                 (cons (cons (gx#datum->syntax '#f '##cdr)
                                             (cons (gx#datum->syntax '#f 'q)
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                       (cons (gx#datum->syntax '#f 'x)
                                             (foldr (lambda (_%$%g97969799%_
                                                             _%$%g97979802%_)
                                                      (cons _%$%g97969799%_
                                                            _%$%g97979802%_))
                                                    '()
                                                    _%$%g96089756%_)))
                                 '())))
               (cons (cons _%$%g96109758%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%$%g96109758%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%$%g96109758%_ '())
                                               '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%hd96409746%_
                                           _%$%hd96379736%_
                                           _%$%hd96349726%_
                                           _%$%dispatch96329719%_
                                           _%$%hd96199678%_
                                           _%$%hd96169668%_
                                           _%$%hd96139658%_)
                                          (_%$%g96039647%_ _%$%g96049651%_))))
                                  (_%$%g96039647%_ _%$%g96049651%_))))
                          (_%$%g96039647%_ _%$%g96049651%_))))
                  (_%$%g96039647%_ _%$%g96049651%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop96279700%_
                                       _%$%target96249694%_
                                       '()))
                                    (_%$%g96039647%_ _%$%g96049651%_)))))
                          (_%$%g96039647%_ _%$%g96049651%_))))
                  (_%$%g96039647%_ _%$%g96049651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g96039647%_
                                                   _%$%g96049651%_))))
                                          (_%$%g96039647%_ _%$%g96049651%_))))
                                  (_%$%g96039647%_ _%$%g96049651%_)))))
                      (_%$%g96029805%_
                       (list _%e9589%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch9592%_
                             _%default9593%_
                             _%tab9598%_
                             (vector-length _%tab9598%_))))))
                 (_%generate-generic-dispatch9191%_
                  (lambda (_%e9327%_
                           _%datums9329%_
                           _%dispatch9330%_
                           _%default9331%_)
                    (let ((_g17880_
                           (if (_%eq-datums?9174%_ _%datums9329%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9333%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g17880_ 0)))
                              (_%hashf9335%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g17880_ 1)))
                              (_%eqf9336%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g17880_ 2))))
                          (let* ((_%indexes9338%_
                                  (_%datum-dispatch-index9176%_
                                   _%datums9329%_))
                                 (_%tab9341%_
                                  (_%generate-hash-dispatch-table9178%_
                                   _%indexes9338%_
                                   _%hash-e9333%_))
                                 (_%$%g93469398%_
                                  (lambda (_%$%g93479394%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g93479394%_)))
                                 (_%$%g93459585%_
                                  (lambda (_%$%g93479402%_)
                                    (if (gx#stx-pair? _%$%g93479402%_)
                                        (let ((_%$%e93579405%_
                                               (gx#syntax-e _%$%g93479402%_)))
                                          (let ((_%$%hd93589409%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e93579405%_)))
                                                (_%$%tl93599412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e93579405%_))))
                                            (if (gx#stx-pair? _%$%tl93599412%_)
                                                (let ((_%$%e93609415%_
                                                       (gx#syntax-e
                                                        _%$%tl93599412%_)))
                                                  (let ((_%$%hd93619419%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e93609415%_)))
                                                        (_%$%tl93629422%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e93609415%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl93629422%_)
                                                        (let ((_%$%e93639425%_
                                                               (gx#syntax-e
                                                                _%$%tl93629422%_)))
                                                          (let ((_%$%hd93649429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%$%e93639425%_)))
                        (_%$%tl93659432%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e93639425%_))))
                    (if (gx#stx-pair? _%$%tl93659432%_)
                        (let ((_%$%e93669435%_ (gx#syntax-e _%$%tl93659432%_)))
                          (let ((_%$%hd93679439%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e93669435%_)))
                                (_%$%tl93689442%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e93669435%_))))
                            (if (gx#stx-pair/null? _%$%hd93679439%_)
                                (let ((_g17881_
                                       (gx#syntax-split-splice
                                        _%$%hd93679439%_
                                        '0)))
                                  (begin
                                    (let ((_g17882_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g17881_)
                                                 (##values-length _g17881_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g17882_ 2)))
                                          (error "Context expects 2 values"
                                                 _g17882_)))
                                    (let ((_%$%target93699445%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g17881_ 0)))
                                          (_%$%tl93719448%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g17881_ 1))))
                                      (if (gx#stx-null? _%$%tl93719448%_)
                                          (letrec ((_%$%loop93729451%_
                                                    (lambda (_%$%hd93709455%_
                                                             _%$%dispatch93769458%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd93709455%_)
                                                          (let ((_%$%e93739460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd93709455%_)))
                    (let ((_%$%lp-hd93749464%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e93739460%_)))
                          (_%$%lp-tl93759467%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e93739460%_))))
                      (_%$%loop93729451%_
                       _%$%lp-tl93759467%_
                       (cons _%$%lp-hd93749464%_ _%$%dispatch93769458%_))))
                  (let ((_%$%dispatch93779470%_
                         (reverse _%$%dispatch93769458%_)))
                    (if (gx#stx-pair? _%$%tl93689442%_)
                        (let ((_%$%e93789473%_ (gx#syntax-e _%$%tl93689442%_)))
                          (let ((_%$%hd93799477%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e93789473%_)))
                                (_%$%tl93809480%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e93789473%_))))
                            (if (gx#stx-pair? _%$%tl93809480%_)
                                (let ((_%$%e93819483%_
                                       (gx#syntax-e _%$%tl93809480%_)))
                                  (let ((_%$%hd93829487%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e93819483%_)))
                                        (_%$%tl93839490%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e93819483%_))))
                                    (if (gx#stx-pair? _%$%tl93839490%_)
                                        (let ((_%$%e93849493%_
                                               (gx#syntax-e _%$%tl93839490%_)))
                                          (let ((_%$%hd93859497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e93849493%_)))
                                                (_%$%tl93869500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e93849493%_))))
                                            (if (gx#stx-pair? _%$%tl93869500%_)
                                                (let ((_%$%e93879503%_
                                                       (gx#syntax-e
                                                        _%$%tl93869500%_)))
                                                  (let ((_%$%hd93889507%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e93879503%_)))
                                                        (_%$%tl93899510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e93879503%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl93899510%_)
                                                        (let ((_%$%e93909513%_
                                                               (gx#syntax-e
                                                                _%$%tl93899510%_)))
                                                          (let ((_%$%hd93919517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%$%e93909513%_)))
                        (_%$%tl93929520%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e93909513%_))))
                    (if (gx#stx-null? _%$%tl93929520%_)
                        ((lambda (_%$%g93489523%_
                                  _%$%g93499525%_
                                  _%$%g93509526%_
                                  _%$%g93519527%_
                                  _%$%g93529528%_
                                  _%$%g93539529%_
                                  _%$%g93549530%_
                                  _%$%g93559531%_
                                  _%$%g93569532%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%$%g93559531%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%$%g93529528%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%$%g93549530%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%$%g93519527%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%$%g93499525%_
                                         (cons _%$%g93569532%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%$%g93509526%_
                                                           '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%$%g93549530%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons _%$%g93489523%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%$%g93569532%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f 'x)
                                     (cons (cons (gx#datum->syntax '#f '##cdr)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'q)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '~case-dispatch)
                                           (cons (gx#datum->syntax '#f 'x)
                                                 (foldr (lambda (_%$%g95769579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g95779582%_)
                  (cons _%$%g95769579%_ _%$%g95779582%_))
                '()
                _%$%g93539529%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%$%g93559531%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%$%g93559531%_ '())
                                               '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%$%hd93919517%_
                         _%$%hd93889507%_
                         _%$%hd93859497%_
                         _%$%hd93829487%_
                         _%$%hd93799477%_
                         _%$%dispatch93779470%_
                         _%$%hd93649429%_
                         _%$%hd93619419%_
                         _%$%hd93589409%_)
                        (_%$%g93469398%_ _%$%g93479402%_))))
                (_%$%g93469398%_ _%$%g93479402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g93469398%_
                                                 _%$%g93479402%_))))
                                        (_%$%g93469398%_ _%$%g93479402%_))))
                                (_%$%g93469398%_ _%$%g93479402%_))))
                        (_%$%g93469398%_ _%$%g93479402%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop93729451%_
                                             _%$%target93699445%_
                                             '()))
                                          (_%$%g93469398%_ _%$%g93479402%_)))))
                                (_%$%g93469398%_ _%$%g93479402%_))))
                        (_%$%g93469398%_ _%$%g93479402%_))))
                (_%$%g93469398%_ _%$%g93479402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g93469398%_
                                                 _%$%g93479402%_))))
                                        (_%$%g93469398%_ _%$%g93479402%_)))))
                            (_%$%g93459585%_
                             (list _%e9327%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9330%_
                                   _%default9331%_
                                   _%tab9341%_
                                   (vector-length _%tab9341%_)
                                   _%hashf9335%_
                                   _%eqf9336%_)))))))))
          (let* ((_%$%g91939217%_
                  (lambda (_%$%g91949213%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g91949213%_)))
                 (_%$%g91929323%_
                  (lambda (_%$%g91949221%_)
                    (if (gx#stx-pair? _%$%g91949221%_)
                        (let ((_%$%e91979224%_ (gx#syntax-e _%$%g91949221%_)))
                          (let ((_%$%hd91989228%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e91979224%_)))
                                (_%$%tl91999231%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e91979224%_))))
                            (if (gx#stx-pair? _%$%tl91999231%_)
                                (let ((_%$%e92009234%_
                                       (gx#syntax-e _%$%tl91999231%_)))
                                  (let ((_%$%hd92019238%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e92009234%_)))
                                        (_%$%tl92029241%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e92009234%_))))
                                    (if (gx#stx-pair/null? _%$%tl92029241%_)
                                        (let ((_g17883_
                                               (gx#syntax-split-splice
                                                _%$%tl92029241%_
                                                '0)))
                                          (begin
                                            (let ((_g17884_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g17883_)
                                                         (##values-length
                                                          _g17883_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g17884_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g17884_)))
                                            (let ((_%$%target92039244%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g17883_
                                                      0)))
                                                  (_%$%tl92059247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g17883_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl92059247%_)
                                                  (letrec ((_%$%loop92069250%_
                                                            (lambda (_%$%hd92049254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%clause92109257%_)
                      (if (gx#stx-pair? _%$%hd92049254%_)
                          (let ((_%$%e92079259%_
                                 (gx#syntax-e _%$%hd92049254%_)))
                            (let ((_%$%lp-hd92089263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e92079259%_)))
                                  (_%$%lp-tl92099266%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e92079259%_))))
                              (_%$%loop92069250%_
                               _%$%lp-tl92099266%_
                               (cons _%$%lp-hd92089263%_
                                     _%$%clause92109257%_))))
                          (let ((_%$%clause92119269%_
                                 (reverse _%$%clause92109257%_)))
                            ((lambda (_%$%g91959272%_ _%$%g91969274%_)
                               (let ((_g17885_
                                      (_%parse-clauses9167%_
                                       _%$%g91969274%_
                                       (foldr (lambda (_%$%g92929295%_
                                                       _%$%g92939298%_)
                                                (cons _%$%g92929295%_
                                                      _%$%g92939298%_))
                                              '()
                                              _%$%g91959272%_))))
                                 (begin
                                   (let ((_g17886_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g17885_)
                                                (##values-length _g17885_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g17886_ 3)))
                                         (error "Context expects 3 values"
                                                _g17886_)))
                                   (let ((_%datums9301%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g17885_ 0)))
                                         (_%dispatch9303%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g17885_ 1)))
                                         (_%default9304%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g17885_ 2))))
                                     (let ((_%datum-count9306%_
                                            (_%count-datums9170%_
                                             _%datums9301%_)))
                                       (if (< _%datum-count9306%_ '6)
                                           (_%generate-simple-case9175%_
                                            _%$%g91969274%_
                                            _%datums9301%_
                                            _%dispatch9303%_
                                            _%default9304%_)
                                           (if (_%char-datums?9172%_
                                                _%datums9301%_)
                                               (_%generate-char-dispatch9184%_
                                                _%$%g91969274%_
                                                _%datums9301%_
                                                _%dispatch9303%_
                                                _%default9304%_)
                                               (if (_%fixnum-datums?9173%_
                                                    _%datums9301%_)
                                                   (_%generate-fixnum-dispatch9189%_
                                                    _%$%g91969274%_
                                                    _%datums9301%_
                                                    _%dispatch9303%_
                                                    _%default9304%_)
                                                   (if (< _%datum-count9306%_
                                                          '12)
                                                       (_%generate-simple-case9175%_
                                                        _%$%g91969274%_
                                                        _%datums9301%_
                                                        _%dispatch9303%_
                                                        _%default9304%_)
                                                       (if (_%symbolic-datums?9171%_
                                                            _%datums9301%_)
                                                           (_%generate-symbolic-dispatch9179%_
                                                            _%$%g91969274%_
                                                            _%datums9301%_
                                                            _%dispatch9303%_
                                                            _%default9304%_)
                                                           (_%generate-generic-dispatch9191%_
                                                            _%$%g91969274%_
                                                            _%datums9301%_
                                                            _%dispatch9303%_
                                                            _%default9304%_)))))))))))
                             _%$%clause92119269%_
                             _%$%hd92019238%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop92069250%_
                                                     _%$%target92039244%_
                                                     '()))
                                                  (_%$%g91939217%_
                                                   _%$%g91949221%_)))))
                                        (_%$%g91939217%_ _%$%g91949221%_))))
                                (_%$%g91939217%_ _%$%g91949221%_))))
                        (_%$%g91939217%_ _%$%g91949221%_)))))
            (_%$%g91929323%_ _%stx9164%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12201%_)
        (let* ((_%$%g1220412222%_
                (lambda (_%$%g1220512218%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1220512218%_)))
               (_%$%g1220312294%_
                (lambda (_%$%g1220512226%_)
                  (if (gx#stx-pair? _%$%g1220512226%_)
                      (let ((_%$%e1220812229%_
                             (gx#syntax-e _%$%g1220512226%_)))
                        (let ((_%$%hd1220912233%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1220812229%_)))
                              (_%$%tl1221012236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1220812229%_))))
                          (if (gx#stx-pair? _%$%tl1221012236%_)
                              (let ((_%$%e1221112239%_
                                     (gx#syntax-e _%$%tl1221012236%_)))
                                (let ((_%$%hd1221212243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1221112239%_)))
                                      (_%$%tl1221312246%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1221112239%_))))
                                  (if (gx#stx-pair? _%$%tl1221312246%_)
                                      (let ((_%$%e1221412249%_
                                             (gx#syntax-e _%$%tl1221312246%_)))
                                        (let ((_%$%hd1221512253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1221412249%_)))
                                              (_%$%tl1221612256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1221412249%_))))
                                          (if (gx#stx-null? _%$%tl1221612256%_)
                                              ((lambda (_%$%g1220612259%_
                                                        _%$%g1220712261%_)
                                                 (let ((_%datum-e12277%_
                                                        (gx#stx-e
                                                         _%$%g1220712261%_)))
                                                   (if (or (symbol? _%datum-e12277%_)
                                                           (keyword?
                                                            _%datum-e12277%_)
                                                           (immediate?
                                                            _%datum-e12277%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%g1220712261%_ '()))
                           (cons _%$%g1220612259%_ '())))
               (if (number? _%datum-e12277%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%$%g1220712261%_ '()))
                               (cons _%$%g1220612259%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%$%g1220712261%_ '()))
                               (cons _%$%g1220612259%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd1221512253%_
                                               _%$%hd1221212243%_)
                                              (_%$%g1220412222%_
                                               _%$%g1220512226%_))))
                                      (_%$%g1220412222%_ _%$%g1220512226%_))))
                              (_%$%g1220412222%_ _%$%g1220512226%_))))
                      (_%$%g1220412222%_ _%$%g1220512226%_)))))
          (_%$%g1220312294%_ _%stx12201%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12298%_)
        (let* ((_%$%g1230212326%_
                (lambda (_%$%g1230312322%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1230312322%_)))
               (_%$%g1230112409%_
                (lambda (_%$%g1230312330%_)
                  (if (gx#stx-pair? _%$%g1230312330%_)
                      (let ((_%$%e1230612333%_
                             (gx#syntax-e _%$%g1230312330%_)))
                        (let ((_%$%hd1230712337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1230612333%_)))
                              (_%$%tl1230812340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1230612333%_))))
                          (if (gx#stx-pair? _%$%tl1230812340%_)
                              (let ((_%$%e1230912343%_
                                     (gx#syntax-e _%$%tl1230812340%_)))
                                (let ((_%$%hd1231012347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1230912343%_)))
                                      (_%$%tl1231112350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1230912343%_))))
                                  (if (gx#stx-pair/null? _%$%tl1231112350%_)
                                      (let ((_g17887_
                                             (gx#syntax-split-splice
                                              _%$%tl1231112350%_
                                              '0)))
                                        (begin
                                          (let ((_g17888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17887_)
                                                       (##values-length
                                                        _g17887_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17888_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17888_)))
                                          (let ((_%$%target1231212353%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17887_ 0)))
                                                (_%$%tl1231412356%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17887_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl1231412356%_)
                                                (letrec ((_%$%loop1231512359%_
                                                          (lambda (_%$%hd1231312363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%K1231912366%_)
                    (if (gx#stx-pair? _%$%hd1231312363%_)
                        (let ((_%$%e1231612368%_
                               (gx#syntax-e _%$%hd1231312363%_)))
                          (let ((_%$%lp-hd1231712372%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1231612368%_)))
                                (_%$%lp-tl1231812375%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1231612368%_))))
                            (_%$%loop1231512359%_
                             _%$%lp-tl1231812375%_
                             (cons _%$%lp-hd1231712372%_ _%$%K1231912366%_))))
                        (let ((_%$%K1232012378%_ (reverse _%$%K1231912366%_)))
                          ((lambda (_%$%g1230412381%_ _%$%g1230512383%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%$%g1230512383%_
                                               (foldr (lambda (_%$%g1240012403%_
                                                               _%$%g1240112406%_)
                                                        (cons _%$%g1240012403%_
                                                              _%$%g1240112406%_))
                                                      '()
                                                      _%$%g1230412381%_)))))
                           _%$%K1232012378%_
                           _%$%hd1231012347%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop1231512359%_
                                                   _%$%target1231212353%_
                                                   '()))
                                                (_%$%g1230212326%_
                                                 _%$%g1230312330%_)))))
                                      (_%$%g1230212326%_ _%$%g1230312330%_))))
                              (_%$%g1230212326%_ _%$%g1230312330%_))))
                      (_%$%g1230212326%_ _%$%g1230312330%_)))))
          (_%$%g1230112409%_ _%$stx12298%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12414%_)
        (let* ((_%$%g1242112517%_
                (lambda (_%$%g1242212513%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1242212513%_)))
               (_%$%g1242012614%_
                (lambda (_%$%g1242212521%_)
                  (if (gx#stx-pair? _%$%g1242212521%_)
                      (let ((_%$%e1249412524%_
                             (gx#syntax-e _%$%g1242212521%_)))
                        (let ((_%$%hd1249512528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1249412524%_)))
                              (_%$%tl1249612531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1249412524%_))))
                          (if (gx#stx-pair? _%$%tl1249612531%_)
                              (let ((_%$%e1249712534%_
                                     (gx#syntax-e _%$%tl1249612531%_)))
                                (let ((_%$%hd1249812538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1249712534%_)))
                                      (_%$%tl1249912541%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1249712534%_))))
                                  (if (gx#stx-pair? _%$%tl1249912541%_)
                                      (let ((_%$%e1250012544%_
                                             (gx#syntax-e _%$%tl1249912541%_)))
                                        (let ((_%$%hd1250112548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1250012544%_)))
                                              (_%$%tl1250212551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1250012544%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl1250212551%_)
                                              (let ((_g17889_
                                                     (gx#syntax-split-splice
                                                      _%$%tl1250212551%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17890_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17889_)
                                                               (##values-length
                                                                _g17889_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17890_ 2)))
                (error "Context expects 2 values" _g17890_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target1250312554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17889_
                                                            0)))
                                                        (_%$%tl1250512557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17889_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1250512557%_)
                                                        (letrec ((_%$%loop1250612560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd1250412564%_ _%$%K1251012567%_)
                            (if (gx#stx-pair? _%$%hd1250412564%_)
                                (let ((_%$%e1250712569%_
                                       (gx#syntax-e _%$%hd1250412564%_)))
                                  (let ((_%$%lp-hd1250812573%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1250712569%_)))
                                        (_%$%lp-tl1250912576%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1250712569%_))))
                                    (_%$%loop1250612560%_
                                     _%$%lp-tl1250912576%_
                                     (cons _%$%lp-hd1250812573%_
                                           _%$%K1251012567%_))))
                                (let ((_%$%K1251112579%_
                                       (reverse _%$%K1251012567%_)))
                                  ((lambda (_%$%g1249112582%_
                                            _%$%g1249212584%_
                                            _%$%g1249312585%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            '~case-dispatch-bsearch)
                                           (cons _%$%g1249312585%_
                                                 (cons _%$%g1249212584%_
                                                       (foldr (lambda (_%$%g1260512608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g1260612611%_)
                        (cons _%$%g1260512608%_ _%$%g1260612611%_))
                      '()
                      _%$%g1249112582%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%K1251112579%_
                                   _%$%hd1250112548%_
                                   _%$%hd1249812538%_))))))
                  (_%$%loop1250612560%_ _%$%target1250312554%_ '()))
                (_%$%g1242112517%_ _%$%g1242212521%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1242112517%_
                                               _%$%g1242212521%_))))
                                      (_%$%g1242112517%_ _%$%g1242212521%_))))
                              (_%$%g1242112517%_ _%$%g1242212521%_))))
                      (_%$%g1242112517%_ _%$%g1242212521%_))))
               (_%$%g1241912774%_
                (lambda (_%$%g1242212618%_)
                  (if (gx#stx-pair? _%$%g1242212618%_)
                      (let ((_%$%e1247312621%_
                             (gx#syntax-e _%$%g1242212618%_)))
                        (let ((_%$%hd1247412625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1247312621%_)))
                              (_%$%tl1247512628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1247312621%_))))
                          (if (gx#stx-pair? _%$%tl1247512628%_)
                              (let ((_%$%e1247612631%_
                                     (gx#syntax-e _%$%tl1247512628%_)))
                                (let ((_%$%hd1247712635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1247612631%_)))
                                      (_%$%tl1247812638%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1247612631%_))))
                                  (if (gx#stx-pair? _%$%tl1247812638%_)
                                      (let ((_%$%e1247912641%_
                                             (gx#syntax-e _%$%tl1247812638%_)))
                                        (let ((_%$%hd1248012645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1247912641%_)))
                                              (_%$%tl1248112648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1247912641%_))))
                                          (if (gx#stx-pair? _%$%tl1248112648%_)
                                              (let ((_%$%e1248212651%_
                                                     (gx#syntax-e
                                                      _%$%tl1248112648%_)))
                                                (let ((_%$%hd1248312655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1248212651%_)))
                                                      (_%$%tl1248412658%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1248212651%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl1248412658%_)
                                                      (let ((_%$%e1248512661%_
                                                             (gx#syntax-e
                                                              _%$%tl1248412658%_)))
                                                        (let ((_%$%hd1248612665%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e1248512661%_)))
                      (_%$%tl1248712668%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e1248512661%_))))
                  (if (gx#stx-pair? _%$%tl1248712668%_)
                      (let ((_%$%e1248812671%_
                             (gx#syntax-e _%$%tl1248712668%_)))
                        (let ((_%$%hd1248912675%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1248812671%_)))
                              (_%$%tl1249012678%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1248812671%_))))
                          (if (gx#stx-null? _%$%tl1249012678%_)
                              ((lambda (_%$%g1246812681%_
                                        _%$%g1246912683%_
                                        _%$%g1247012684%_
                                        _%$%g1247112685%_
                                        _%$%g1247212686%_)
                                 (let* ((_%$%g1271012725%_
                                         (lambda (_%$%g1271112721%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g1271112721%_)))
                                        (_%$%g1270912770%_
                                         (lambda (_%$%g1271112729%_)
                                           (if (gx#stx-pair? _%$%g1271112729%_)
                                               (let ((_%$%e1271412732%_
                                                      (gx#syntax-e
                                                       _%$%g1271112729%_)))
                                                 (let ((_%$%hd1271512736%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e1271412732%_)))
                                                       (_%$%tl1271612739%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e1271412732%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%tl1271612739%_)
                                                       (let ((_%$%e1271712742%_
                                                              (gx#syntax-e
                                                               _%$%tl1271612739%_)))
                                                         (let ((_%$%hd1271812746%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e1271712742%_)))
                       (_%$%tl1271912749%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e1271712742%_))))
                   (if (gx#stx-null? _%$%tl1271912749%_)
                       ((lambda (_%$%g1271212752%_ _%$%g1271312754%_)
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f '##fx=)
                                            (cons _%$%g1247112685%_
                                                  (cons _%$%g1271312754%_
                                                        '())))
                                      (cons _%$%g1247012684%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons _%$%g1247112685%_
                                  (cons _%$%g1271212752%_ '())))
                      (cons _%$%g1246912683%_ (cons _%$%g1246812681%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                        _%$%hd1271812746%_
                        _%$%hd1271512736%_)
                       (_%$%g1271012725%_ _%$%g1271112729%_))))
               (_%$%g1271012725%_ _%$%g1271112729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g1271012725%_
                                                _%$%g1271112729%_)))))
                                   (_%$%g1270912770%_
                                    (list (gx#stx-e _%$%g1247212686%_)
                                          (fx1+ (gx#stx-e
                                                 _%$%g1247212686%_))))))
                               _%$%hd1248912675%_
                               _%$%hd1248612665%_
                               _%$%hd1248312655%_
                               _%$%hd1248012645%_
                               _%$%hd1247712635%_)
                              (_%$%g1242012614%_ _%$%g1242212618%_))))
                      (_%$%g1242012614%_ _%$%g1242212618%_))))
              (_%$%g1242012614%_ _%$%g1242212618%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1242012614%_
                                               _%$%g1242212618%_))))
                                      (_%$%g1242012614%_ _%$%g1242212618%_))))
                              (_%$%g1242012614%_ _%$%g1242212618%_))))
                      (_%$%g1242012614%_ _%$%g1242212618%_))))
               (_%$%g1241812887%_
                (lambda (_%$%g1242212778%_)
                  (if (gx#stx-pair? _%$%g1242212778%_)
                      (let ((_%$%e1245312781%_
                             (gx#syntax-e _%$%g1242212778%_)))
                        (let ((_%$%hd1245412785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1245312781%_)))
                              (_%$%tl1245512788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1245312781%_))))
                          (if (gx#stx-pair? _%$%tl1245512788%_)
                              (let ((_%$%e1245612791%_
                                     (gx#syntax-e _%$%tl1245512788%_)))
                                (let ((_%$%hd1245712795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1245612791%_)))
                                      (_%$%tl1245812798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1245612791%_))))
                                  (if (gx#stx-pair? _%$%tl1245812798%_)
                                      (let ((_%$%e1245912801%_
                                             (gx#syntax-e _%$%tl1245812798%_)))
                                        (let ((_%$%hd1246012805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1245912801%_)))
                                              (_%$%tl1246112808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1245912801%_))))
                                          (if (gx#stx-pair? _%$%tl1246112808%_)
                                              (let ((_%$%e1246212811%_
                                                     (gx#syntax-e
                                                      _%$%tl1246112808%_)))
                                                (let ((_%$%hd1246312815%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1246212811%_)))
                                                      (_%$%tl1246412818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1246212811%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl1246412818%_)
                                                      (let ((_%$%e1246512821%_
                                                             (gx#syntax-e
                                                              _%$%tl1246412818%_)))
                                                        (let ((_%$%hd1246612825%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e1246512821%_)))
                      (_%$%tl1246712828%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e1246512821%_))))
                  (if (gx#stx-null? _%$%tl1246712828%_)
                      ((lambda (_%$%g1244912831%_
                                _%$%g1245012833%_
                                _%$%g1245112834%_
                                _%$%g1245212835%_)
                         (let* ((_%$%g1285612864%_
                                 (lambda (_%$%g1285712860%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g1285712860%_)))
                                (_%$%g1285512883%_
                                 (lambda (_%$%g1285712868%_)
                                   ((lambda (_%$%g1285812871%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx=)
                                                        (cons _%$%g1245112834%_
                                                              (cons _%$%g1285812871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%$%g1245012833%_
                                                        (cons _%$%g1244912831%_
                                                              '())))))
                                    _%$%g1285712868%_))))
                           (_%$%g1285512883%_ (gx#stx-e _%$%g1245212835%_))))
                       _%$%hd1246612825%_
                       _%$%hd1246312815%_
                       _%$%hd1246012805%_
                       _%$%hd1245712795%_)
                      (_%$%g1241912774%_ _%$%g1242212778%_))))
              (_%$%g1241912774%_ _%$%g1242212778%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1241912774%_
                                               _%$%g1242212778%_))))
                                      (_%$%g1241912774%_ _%$%g1242212778%_))))
                              (_%$%g1241912774%_ _%$%g1242212778%_))))
                      (_%$%g1241912774%_ _%$%g1242212778%_))))
               (_%$%g1241712955%_
                (lambda (_%$%g1242212891%_)
                  (if (gx#stx-pair? _%$%g1242212891%_)
                      (let ((_%$%e1243712894%_
                             (gx#syntax-e _%$%g1242212891%_)))
                        (let ((_%$%hd1243812898%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1243712894%_)))
                              (_%$%tl1243912901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1243712894%_))))
                          (if (gx#stx-pair? _%$%tl1243912901%_)
                              (let ((_%$%e1244012904%_
                                     (gx#syntax-e _%$%tl1243912901%_)))
                                (let ((_%$%hd1244112908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1244012904%_)))
                                      (_%$%tl1244212911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1244012904%_))))
                                  (if (gx#stx-pair? _%$%tl1244212911%_)
                                      (let ((_%$%e1244312914%_
                                             (gx#syntax-e _%$%tl1244212911%_)))
                                        (let ((_%$%hd1244412918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1244312914%_)))
                                              (_%$%tl1244512921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1244312914%_))))
                                          (if (gx#stx-pair? _%$%tl1244512921%_)
                                              (let ((_%$%e1244612924%_
                                                     (gx#syntax-e
                                                      _%$%tl1244512921%_)))
                                                (let ((_%$%hd1244712928%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1244612924%_)))
                                                      (_%$%tl1244812931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1244612924%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl1244812931%_)
                                                      ((lambda (_%$%g1243412934%_
                                                                _%$%g1243512936%_
                                                                _%$%g1243612937%_)
                                                         _%$%g1243412934%_)
                                                       _%$%hd1244712928%_
                                                       _%$%hd1244412918%_
                                                       _%$%hd1244112908%_)
                                                      (_%$%g1241812887%_
                                                       _%$%g1242212891%_))))
                                              (_%$%g1241812887%_
                                               _%$%g1242212891%_))))
                                      (_%$%g1241812887%_ _%$%g1242212891%_))))
                              (_%$%g1241812887%_ _%$%g1242212891%_))))
                      (_%$%g1241812887%_ _%$%g1242212891%_))))
               (_%$%g1241613009%_
                (lambda (_%$%g1242212959%_)
                  (if (gx#stx-pair? _%$%g1242212959%_)
                      (let ((_%$%e1242512962%_
                             (gx#syntax-e _%$%g1242212959%_)))
                        (let ((_%$%hd1242612966%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1242512962%_)))
                              (_%$%tl1242712969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1242512962%_))))
                          (if (gx#stx-pair? _%$%tl1242712969%_)
                              (let ((_%$%e1242812972%_
                                     (gx#syntax-e _%$%tl1242712969%_)))
                                (let ((_%$%hd1242912976%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1242812972%_)))
                                      (_%$%tl1243012979%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1242812972%_))))
                                  (if (gx#stx-pair? _%$%tl1243012979%_)
                                      (let ((_%$%e1243112982%_
                                             (gx#syntax-e _%$%tl1243012979%_)))
                                        (let ((_%$%hd1243212986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1243112982%_)))
                                              (_%$%tl1243312989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1243112982%_))))
                                          (if (gx#stx-null? _%$%tl1243312989%_)
                                              ((lambda (_%$%g1242312992%_
                                                        _%$%g1242412994%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons '#!void '())))
                                               _%$%hd1243212986%_
                                               _%$%hd1242912976%_)
                                              (_%$%g1241712955%_
                                               _%$%g1242212959%_))))
                                      (_%$%g1241712955%_ _%$%g1242212959%_))))
                              (_%$%g1241712955%_ _%$%g1242212959%_))))
                      (_%$%g1241712955%_ _%$%g1242212959%_)))))
          (_%$%g1241613009%_ _%stx12414%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13014%_)
        (letrec ((_%split13017%_
                  (lambda (_%lst13372%_ _%mid13374%_)
                    (let _%lp13376%_ ((_%i13379%_ '0)
                                      (_%rest13381%_ _%lst13372%_)
                                      (_%left13382%_ '()))
                      (if (fx< _%i13379%_ _%mid13374%_)
                          (_%lp13376%_
                           (fx1+ _%i13379%_)
                           (cdr _%rest13381%_)
                           (cons (car _%rest13381%_) _%left13382%_))
                          (values (reverse _%left13382%_) _%rest13381%_))))))
          (let* ((_%$%g1302013048%_
                  (lambda (_%$%g1302113044%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g1302113044%_)))
                 (_%$%g1301913368%_
                  (lambda (_%$%g1302113052%_)
                    (if (gx#stx-pair? _%$%g1302113052%_)
                        (let ((_%$%e1302513055%_
                               (gx#syntax-e _%$%g1302113052%_)))
                          (let ((_%$%hd1302613059%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1302513055%_)))
                                (_%$%tl1302713062%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1302513055%_))))
                            (if (gx#stx-pair? _%$%tl1302713062%_)
                                (let ((_%$%e1302813065%_
                                       (gx#syntax-e _%$%tl1302713062%_)))
                                  (let ((_%$%hd1302913069%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1302813065%_)))
                                        (_%$%tl1303013072%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1302813065%_))))
                                    (if (gx#stx-pair? _%$%tl1303013072%_)
                                        (let ((_%$%e1303113075%_
                                               (gx#syntax-e
                                                _%$%tl1303013072%_)))
                                          (let ((_%$%hd1303213079%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1303113075%_)))
                                                (_%$%tl1303313082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1303113075%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl1303313082%_)
                                                (let ((_g17891_
                                                       (gx#syntax-split-splice
                                                        _%$%tl1303313082%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g17892_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g17891_)
                         (##values-length _g17891_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g17892_ 2)))
                  (error "Context expects 2 values" _g17892_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target1303413085%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g17891_
                                                              0)))
                                                          (_%$%tl1303613088%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g17891_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl1303613088%_)
                                                          (letrec ((_%$%loop1303713091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd1303513095%_ _%$%K1304113098%_)
                              (if (gx#stx-pair? _%$%hd1303513095%_)
                                  (let ((_%$%e1303813100%_
                                         (gx#syntax-e _%$%hd1303513095%_)))
                                    (let ((_%$%lp-hd1303913104%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1303813100%_)))
                                          (_%$%lp-tl1304013107%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1303813100%_))))
                                      (_%$%loop1303713091%_
                                       _%$%lp-tl1304013107%_
                                       (cons _%$%lp-hd1303913104%_
                                             _%$%K1304113098%_))))
                                  (let ((_%$%K1304213110%_
                                         (reverse _%$%K1304113098%_)))
                                    ((lambda (_%$%g1302213113%_
                                              _%$%g1302313115%_
                                              _%$%g1302413116%_)
                                       (let* ((_%len13146%_
                                               (length (foldr (lambda (_%$%g1313713140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g1313813143%_)
                        (cons _%$%g1313713140%_ _%$%g1313813143%_))
                      '()
                      _%$%g1302213113%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13149%_
                                               (quotient _%len13146%_ '2))
                                              (_g17893_
                                               (_%split13017%_
                                                (foldr (lambda (_%$%g1315113154%_
                                                                _%$%g1315213157%_)
                                                         (cons _%$%g1315113154%_
                                                               _%$%g1315213157%_))
                                                       '()
                                                       _%$%g1302213113%_)
                                                _%mid13149%_)))
                                         (begin
                                           (let ((_g17894_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g17893_)
                                                        (##values-length
                                                         _g17893_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g17894_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g17894_)))
                                           (let ((_%left13160%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g17893_ 0)))
                                                 (_%right13162%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g17893_
                                                     1))))
                                             (let* ((_%$%g1316613207%_
                                                     (lambda (_%$%g1316713203%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g1316713203%_)))
                                                    (_%$%g1316513364%_
                                                     (lambda (_%$%g1316713211%_)
                                                       (if (gx#stx-pair?
                                                            _%$%g1316713211%_)
                                                           (let ((_%$%e1317213214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%g1316713211%_)))
                     (let ((_%$%hd1317313218%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e1317213214%_)))
                           (_%$%tl1317413221%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e1317213214%_))))
                       (if (gx#stx-pair? _%$%tl1317413221%_)
                           (let ((_%$%e1317513224%_
                                  (gx#syntax-e _%$%tl1317413221%_)))
                             (let ((_%$%hd1317613228%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e1317513224%_)))
                                   (_%$%tl1317713231%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e1317513224%_))))
                               (if (gx#stx-pair/null? _%$%hd1317613228%_)
                                   (let ((_g17895_
                                          (gx#syntax-split-splice
                                           _%$%hd1317613228%_
                                           '0)))
                                     (begin
                                       (let ((_g17896_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g17895_)
                                                    (##values-length _g17895_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g17896_ 2)))
                                             (error "Context expects 2 values"
                                                    _g17896_)))
                                       (let ((_%$%target1317813234%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g17895_ 0)))
                                             (_%$%tl1318013237%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g17895_ 1))))
                                         (if (gx#stx-null? _%$%tl1318013237%_)
                                             (letrec ((_%$%loop1318113240%_
                                                       (lambda (_%$%hd1317913244%_
                                                                _%$%K-left1318513247%_)
                                                         (if (gx#stx-pair?
                                                              _%$%hd1317913244%_)
                                                             (let ((_%$%e1318213249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%$%hd1317913244%_)))
                       (let ((_%$%lp-hd1318313253%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e1318213249%_)))
                             (_%$%lp-tl1318413256%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e1318213249%_))))
                         (_%$%loop1318113240%_
                          _%$%lp-tl1318413256%_
                          (cons _%$%lp-hd1318313253%_
                                _%$%K-left1318513247%_))))
                     (let ((_%$%K-left1318613259%_
                            (reverse _%$%K-left1318513247%_)))
                       (if (gx#stx-pair? _%$%tl1317713231%_)
                           (let ((_%$%e1318713262%_
                                  (gx#syntax-e _%$%tl1317713231%_)))
                             (let ((_%$%hd1318813266%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e1318713262%_)))
                                   (_%$%tl1318913269%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e1318713262%_))))
                               (if (gx#stx-pair/null? _%$%hd1318813266%_)
                                   (let ((_g17897_
                                          (gx#syntax-split-splice
                                           _%$%hd1318813266%_
                                           '0)))
                                     (begin
                                       (let ((_g17898_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g17897_)
                                                    (##values-length _g17897_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g17898_ 2)))
                                             (error "Context expects 2 values"
                                                    _g17898_)))
                                       (let ((_%$%target1319013272%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g17897_ 0)))
                                             (_%$%tl1319213275%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g17897_ 1))))
                                         (if (gx#stx-null? _%$%tl1319213275%_)
                                             (letrec ((_%$%loop1319313278%_
                                                       (lambda (_%$%hd1319113282%_
                                                                _%$%K-right1319713285%_)
                                                         (if (gx#stx-pair?
                                                              _%$%hd1319113282%_)
                                                             (let ((_%$%e1319413287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%$%hd1319113282%_)))
                       (let ((_%$%lp-hd1319513291%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e1319413287%_)))
                             (_%$%lp-tl1319613294%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e1319413287%_))))
                         (_%$%loop1319313278%_
                          _%$%lp-tl1319613294%_
                          (cons _%$%lp-hd1319513291%_
                                _%$%K-right1319713285%_))))
                     (let ((_%$%K-right1319813297%_
                            (reverse _%$%K-right1319713285%_)))
                       (if (gx#stx-pair? _%$%tl1318913269%_)
                           (let ((_%$%e1319913300%_
                                  (gx#syntax-e _%$%tl1318913269%_)))
                             (let ((_%$%hd1320013304%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e1319913300%_)))
                                   (_%$%tl1320113307%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e1319913300%_))))
                               (if (gx#stx-null? _%$%tl1320113307%_)
                                   ((lambda (_%$%g1316813310%_
                                             _%$%g1316913312%_
                                             _%$%g1317013313%_
                                             _%$%g1317113314%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%$%g1302313115%_
                                                              (cons _%$%g1316813310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%$%g1302413116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%g1302313115%_
                                  (foldr (lambda (_%$%g1334713352%_
                                                  _%$%g1334813355%_)
                                           (cons _%$%g1334713352%_
                                                 _%$%g1334813355%_))
                                         '()
                                         _%$%g1317013313%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%$%g1316813310%_
                                  (cons _%$%g1302313115%_
                                        (foldr (lambda (_%$%g1334913358%_
                                                        _%$%g1335013361%_)
                                                 (cons _%$%g1334913358%_
                                                       _%$%g1335013361%_))
                                               '()
                                               _%$%g1316913312%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$%hd1320013304%_
                                    _%$%K-right1319813297%_
                                    _%$%K-left1318613259%_
                                    _%$%hd1317313218%_)
                                   (_%$%g1316613207%_ _%$%g1316713211%_))))
                           (_%$%g1316613207%_ _%$%g1316713211%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop1319313278%_
                                                _%$%target1319013272%_
                                                '()))
                                             (_%$%g1316613207%_
                                              _%$%g1316713211%_)))))
                                   (_%$%g1316613207%_ _%$%g1316713211%_))))
                           (_%$%g1316613207%_ _%$%g1316713211%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop1318113240%_
                                                _%$%target1317813234%_
                                                '()))
                                             (_%$%g1316613207%_
                                              _%$%g1316713211%_)))))
                                   (_%$%g1316613207%_ _%$%g1316713211%_))))
                           (_%$%g1316613207%_ _%$%g1316713211%_))))
                   (_%$%g1316613207%_ _%$%g1316713211%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g1316513364%_
                                                (list _%mid13149%_
                                                      _%left13160%_
                                                      _%right13162%_
                                                      (fx+ _%mid13149%_
                                                           (gx#stx-e
                                                            _%$%g1302413116%_)))))))))
                                     _%$%K1304213110%_
                                     _%$%hd1303213079%_
                                     _%$%hd1302913069%_))))))
                    (_%$%loop1303713091%_ _%$%target1303413085%_ '()))
                  (_%$%g1302013048%_ _%$%g1302113052%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g1302013048%_
                                                 _%$%g1302113052%_))))
                                        (_%$%g1302013048%_
                                         _%$%g1302113052%_))))
                                (_%$%g1302013048%_ _%$%g1302113052%_))))
                        (_%$%g1302013048%_ _%$%g1302113052%_)))))
            (_%$%g1301913368%_ _%stx13014%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx13388%_)
        (let* ((_%$%g1339313424%_
                (lambda (_%$%g1339413420%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1339413420%_)))
               (_%$%g1339213507%_
                (lambda (_%$%g1339413428%_)
                  (if (gx#stx-pair? _%$%g1339413428%_)
                      (let ((_%$%e1340413431%_
                             (gx#syntax-e _%$%g1339413428%_)))
                        (let ((_%$%hd1340513435%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1340413431%_)))
                              (_%$%tl1340613438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1340413431%_))))
                          (if (gx#stx-pair? _%$%tl1340613438%_)
                              (let ((_%$%e1340713441%_
                                     (gx#syntax-e _%$%tl1340613438%_)))
                                (let ((_%$%hd1340813445%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1340713441%_)))
                                      (_%$%tl1340913448%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1340713441%_))))
                                  (if (gx#stx-pair/null? _%$%tl1340913448%_)
                                      (let ((_g17899_
                                             (gx#syntax-split-splice
                                              _%$%tl1340913448%_
                                              '0)))
                                        (begin
                                          (let ((_g17900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g17899_)
                                                       (##values-length
                                                        _g17899_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g17900_ 2)))
                                                (error "Context expects 2 values"
                                                       _g17900_)))
                                          (let ((_%$%target1341013451%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17899_ 0)))
                                                (_%$%tl1341213454%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g17899_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl1341213454%_)
                                                (letrec ((_%$%loop1341313457%_
                                                          (lambda (_%$%hd1341113461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%rest1341713464%_)
                    (if (gx#stx-pair? _%$%hd1341113461%_)
                        (let ((_%$%e1341413466%_
                               (gx#syntax-e _%$%hd1341113461%_)))
                          (let ((_%$%lp-hd1341513470%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1341413466%_)))
                                (_%$%lp-tl1341613473%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1341413466%_))))
                            (_%$%loop1341313457%_
                             _%$%lp-tl1341613473%_
                             (cons _%$%lp-hd1341513470%_
                                   _%$%rest1341713464%_))))
                        (let ((_%$%rest1341813476%_
                               (reverse _%$%rest1341713464%_)))
                          ((lambda (_%$%g1340213479%_ _%$%g1340313481%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$r)
                                               (cons _%$%g1340313481%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '%#expression)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (foldr (lambda (_%$%g1349813501%_ _%$%g1349913504%_)
                                  (cons _%$%g1349813501%_ _%$%g1349913504%_))
                                '()
                                _%$%g1340213479%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (gx#datum->syntax '#f '$r)
                                                     '())))))
                           _%$%rest1341813476%_
                           _%$%hd1340813445%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop1341313457%_
                                                   _%$%target1341013451%_
                                                   '()))
                                                (_%$%g1339313424%_
                                                 _%$%g1339413428%_)))))
                                      (_%$%g1339313424%_ _%$%g1339413428%_))))
                              (_%$%g1339313424%_ _%$%g1339413428%_))))
                      (_%$%g1339313424%_ _%$%g1339413428%_))))
               (_%$%g1339113547%_
                (lambda (_%$%g1339413511%_)
                  (if (gx#stx-pair? _%$%g1339413511%_)
                      (let ((_%$%e1339613514%_
                             (gx#syntax-e _%$%g1339413511%_)))
                        (let ((_%$%hd1339713518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1339613514%_)))
                              (_%$%tl1339813521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1339613514%_))))
                          (if (gx#stx-pair? _%$%tl1339813521%_)
                              (let ((_%$%e1339913524%_
                                     (gx#syntax-e _%$%tl1339813521%_)))
                                (let ((_%$%hd1340013528%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1339913524%_)))
                                      (_%$%tl1340113531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1339913524%_))))
                                  (if (gx#stx-null? _%$%tl1340113531%_)
                                      ((lambda (_%$%g1339513534%_)
                                         _%$%g1339513534%_)
                                       _%$%hd1340013528%_)
                                      (_%$%g1339213507%_ _%$%g1339413511%_))))
                              (_%$%g1339213507%_ _%$%g1339413511%_))))
                      (_%$%g1339213507%_ _%$%g1339413511%_)))))
          (_%$%g1339113547%_ _%$stx13388%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx13552%_)
        (let* ((_%$%g1355813611%_
                (lambda (_%$%g1355913607%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1355913607%_)))
               (_%$%g1355713708%_
                (lambda (_%$%g1355913615%_)
                  (if (gx#stx-pair? _%$%g1355913615%_)
                      (let ((_%$%e1358813618%_
                             (gx#syntax-e _%$%g1355913615%_)))
                        (let ((_%$%hd1358913622%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1358813618%_)))
                              (_%$%tl1359013625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1358813618%_))))
                          (if (gx#stx-pair? _%$%tl1359013625%_)
                              (let ((_%$%e1359113628%_
                                     (gx#syntax-e _%$%tl1359013625%_)))
                                (let ((_%$%hd1359213632%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1359113628%_)))
                                      (_%$%tl1359313635%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1359113628%_))))
                                  (if (gx#stx-pair? _%$%hd1359213632%_)
                                      (let ((_%$%e1359413638%_
                                             (gx#syntax-e _%$%hd1359213632%_)))
                                        (let ((_%$%hd1359513642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1359413638%_)))
                                              (_%$%tl1359613645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1359413638%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl1359313635%_)
                                              (let ((_g17901_
                                                     (gx#syntax-split-splice
                                                      _%$%tl1359313635%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17901_)
                                                               (##values-length
                                                                _g17901_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17902_ 2)))
                (error "Context expects 2 values" _g17902_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target1359713648%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17901_
                                                            0)))
                                                        (_%$%tl1359913651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17901_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1359913651%_)
                                                        (letrec ((_%$%loop1360013654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd1359813658%_ _%$%body1360413661%_)
                            (if (gx#stx-pair? _%$%hd1359813658%_)
                                (let ((_%$%e1360113663%_
                                       (gx#syntax-e _%$%hd1359813658%_)))
                                  (let ((_%$%lp-hd1360213667%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1360113663%_)))
                                        (_%$%lp-tl1360313670%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1360113663%_))))
                                    (_%$%loop1360013654%_
                                     _%$%lp-tl1360313670%_
                                     (cons _%$%lp-hd1360213667%_
                                           _%$%body1360413661%_))))
                                (let ((_%$%body1360513673%_
                                       (reverse _%$%body1360413661%_)))
                                  ((lambda (_%$%g1358513676%_
                                            _%$%g1358613678%_
                                            _%$%g1358713679%_)
                                     (if (gx#identifier? _%$%g1358713679%_)
                                         (cons (gx#datum->syntax '#f 'letrec)
                                               (cons (cons (cons _%$%g1358713679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons _%$%g1358613678%_
                                           (foldr (lambda (_%$%g1369913702%_
                                                           _%$%g1370013705%_)
                                                    (cons _%$%g1369913702%_
                                                          _%$%g1370013705%_))
                                                  '()
                                                  _%$%g1358513676%_)))
                               '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g1358713679%_
                                                           '())))
                                         (_%$%g1355813611%_
                                          _%$%g1355913615%_)))
                                   _%$%body1360513673%_
                                   _%$%tl1359613645%_
                                   _%$%hd1359513642%_))))))
                  (_%$%loop1360013654%_ _%$%target1359713648%_ '()))
                (_%$%g1355813611%_ _%$%g1355913615%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1355813611%_
                                               _%$%g1355913615%_))))
                                      (_%$%g1355813611%_ _%$%g1355913615%_))))
                              (_%$%g1355813611%_ _%$%g1355913615%_))))
                      (_%$%g1355813611%_ _%$%g1355913615%_))))
               (_%$%g1355613774%_
                (lambda (_%$%g1355913712%_)
                  (if (gx#stx-pair? _%$%g1355913712%_)
                      (let ((_%$%e1357313715%_
                             (gx#syntax-e _%$%g1355913712%_)))
                        (let ((_%$%hd1357413719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1357313715%_)))
                              (_%$%tl1357513722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1357313715%_))))
                          (if (gx#stx-pair? _%$%tl1357513722%_)
                              (let ((_%$%e1357613725%_
                                     (gx#syntax-e _%$%tl1357513722%_)))
                                (let ((_%$%hd1357713729%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1357613725%_)))
                                      (_%$%tl1357813732%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1357613725%_))))
                                  (if (gx#stx-pair? _%$%hd1357713729%_)
                                      (let ((_%$%e1357913735%_
                                             (gx#syntax-e _%$%hd1357713729%_)))
                                        (let ((_%$%hd1358013739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1357913735%_)))
                                              (_%$%tl1358113742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1357913735%_))))
                                          (if (gx#identifier?
                                               _%$%hd1358013739%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g17903_|
                                                   _%$%hd1358013739%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl1357813732%_)
                                                      (let ((_%$%e1358213745%_
                                                             (gx#syntax-e
                                                              _%$%tl1357813732%_)))
                                                        (let ((_%$%hd1358313749%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e1358213745%_)))
                      (_%$%tl1358413752%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e1358213745%_))))
                  (if (gx#stx-null? _%$%tl1358413752%_)
                      ((lambda (_%$%g1357113755%_ _%$%g1357213757%_)
                         (if (gx#identifier-list? _%$%g1357213757%_)
                             (cons (gx#datum->syntax '#f 'letrec-values)
                                   (cons (cons (cons _%$%g1357213757%_
                                                     (cons _%$%g1357113755%_
                                                           '()))
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'values)
                                                     _%$%g1357213757%_)
                                               '())))
                             (_%$%g1355713708%_ _%$%g1355913712%_)))
                       _%$%hd1358313749%_
                       _%$%tl1358113742%_)
                      (_%$%g1355713708%_ _%$%g1355913712%_))))
              (_%$%g1355713708%_ _%$%g1355913712%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1355713708%_
                                                   _%$%g1355913712%_))
                                              (_%$%g1355713708%_
                                               _%$%g1355913712%_))))
                                      (_%$%g1355713708%_ _%$%g1355913712%_))))
                              (_%$%g1355713708%_ _%$%g1355913712%_))))
                      (_%$%g1355713708%_ _%$%g1355913712%_))))
               (_%$%g1355513828%_
                (lambda (_%$%g1355913778%_)
                  (if (gx#stx-pair? _%$%g1355913778%_)
                      (let ((_%$%e1356213781%_
                             (gx#syntax-e _%$%g1355913778%_)))
                        (let ((_%$%hd1356313785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1356213781%_)))
                              (_%$%tl1356413788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1356213781%_))))
                          (if (gx#stx-pair? _%$%tl1356413788%_)
                              (let ((_%$%e1356513791%_
                                     (gx#syntax-e _%$%tl1356413788%_)))
                                (let ((_%$%hd1356613795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1356513791%_)))
                                      (_%$%tl1356713798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1356513791%_))))
                                  (if (gx#stx-pair? _%$%tl1356713798%_)
                                      (let ((_%$%e1356813801%_
                                             (gx#syntax-e _%$%tl1356713798%_)))
                                        (let ((_%$%hd1356913805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1356813801%_)))
                                              (_%$%tl1357013808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1356813801%_))))
                                          (if (gx#stx-null? _%$%tl1357013808%_)
                                              ((lambda (_%$%g1356013811%_
                                                        _%$%g1356113813%_)
                                                 (if (gx#identifier?
                                                      _%$%g1356113813%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'letrec)
                                                           (cons (cons (cons _%$%g1356113813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons _%$%g1356013811%_ '()))
                               '())
                         (cons _%$%g1356113813%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g1355613774%_
                                                      _%$%g1355913778%_)))
                                               _%$%hd1356913805%_
                                               _%$%hd1356613795%_)
                                              (_%$%g1355613774%_
                                               _%$%g1355913778%_))))
                                      (_%$%g1355613774%_ _%$%g1355913778%_))))
                              (_%$%g1355613774%_ _%$%g1355913778%_))))
                      (_%$%g1355613774%_ _%$%g1355913778%_)))))
          (_%$%g1355513828%_ _%$stx13552%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx13833%_)
        (letrec ((_%let-bind?13836%_
                  (lambda (_%x14745%_)
                    (let* ((_%$%g1475014769%_
                            (lambda (_%$%g1475114765%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g1475114765%_)))
                           (_%$%g1474914780%_
                            (lambda (_%$%g1475114773%_) ((lambda () '#f))))
                           (_%$%g1474814810%_
                            (lambda (_%$%g1475114784%_)
                              (if (gx#stx-pair? _%$%g1475114784%_)
                                  (let ((_%$%e1476114787%_
                                         (gx#syntax-e _%$%g1475114784%_)))
                                    (let ((_%$%hd1476214791%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1476114787%_)))
                                          (_%$%tl1476314794%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1476114787%_))))
                                      (if (gx#stx-null? _%$%tl1476314794%_)
                                          ((lambda (_%$%g1476014797%_) '#t)
                                           _%$%hd1476214791%_)
                                          (_%$%g1474914780%_
                                           _%$%g1475114784%_))))
                                  (_%$%g1474914780%_ _%$%g1475114784%_))))
                           (_%$%g1474714852%_
                            (lambda (_%$%g1475114814%_)
                              (if (gx#stx-pair? _%$%g1475114814%_)
                                  (let ((_%$%e1475414817%_
                                         (gx#syntax-e _%$%g1475114814%_)))
                                    (let ((_%$%hd1475514821%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1475414817%_)))
                                          (_%$%tl1475614824%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1475414817%_))))
                                      (if (gx#stx-pair? _%$%tl1475614824%_)
                                          (let ((_%$%e1475714827%_
                                                 (gx#syntax-e
                                                  _%$%tl1475614824%_)))
                                            (let ((_%$%hd1475814831%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e1475714827%_)))
                                                  (_%$%tl1475914834%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e1475714827%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl1475914834%_)
                                                  ((lambda (_%$%g1475214837%_
                                                            _%$%g1475314839%_)
                                                     (_%let-head?13839%_
                                                      _%$%g1475314839%_))
                                                   _%$%hd1475814831%_
                                                   _%$%hd1475514821%_)
                                                  (_%$%g1474814810%_
                                                   _%$%g1475114814%_))))
                                          (_%$%g1474814810%_
                                           _%$%g1475114814%_))))
                                  (_%$%g1474814810%_ _%$%g1475114814%_)))))
                      (_%$%g1474714852%_ _%x14745%_))))
                 (_%let-bind13838%_
                  (lambda (_%x14647%_)
                    (let* ((_%$%g1465114670%_
                            (lambda (_%$%g1465214666%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g1465214666%_)))
                           (_%$%g1465014699%_
                            (lambda (_%$%g1465214674%_)
                              (if (gx#stx-pair? _%$%g1465214674%_)
                                  (let ((_%$%e1466214677%_
                                         (gx#syntax-e _%$%g1465214674%_)))
                                    (let ((_%$%hd1466314681%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1466214677%_)))
                                          (_%$%tl1466414684%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1466214677%_))))
                                      (if (gx#stx-null? _%$%tl1466414684%_)
                                          ((lambda (_%$%g1466114687%_)
                                             (cons (gx#datum->syntax '#f '_)
                                                   (cons _%$%g1466114687%_
                                                         '())))
                                           _%$%hd1466314681%_)
                                          (_%$%g1465114670%_
                                           _%$%g1465214674%_))))
                                  (_%$%g1465114670%_ _%$%g1465214674%_))))
                           (_%$%g1464914741%_
                            (lambda (_%$%g1465214703%_)
                              (if (gx#stx-pair? _%$%g1465214703%_)
                                  (let ((_%$%e1465514706%_
                                         (gx#syntax-e _%$%g1465214703%_)))
                                    (let ((_%$%hd1465614710%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1465514706%_)))
                                          (_%$%tl1465714713%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1465514706%_))))
                                      (if (gx#stx-pair? _%$%tl1465714713%_)
                                          (let ((_%$%e1465814716%_
                                                 (gx#syntax-e
                                                  _%$%tl1465714713%_)))
                                            (let ((_%$%hd1465914720%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e1465814716%_)))
                                                  (_%$%tl1466014723%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e1465814716%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl1466014723%_)
                                                  ((lambda (_%$%g1465314726%_
                                                            _%$%g1465414728%_)
                                                     _%x14647%_)
                                                   _%$%hd1465914720%_
                                                   _%$%hd1465614710%_)
                                                  (_%$%g1465014699%_
                                                   _%$%g1465214703%_))))
                                          (_%$%g1465014699%_
                                           _%$%g1465214703%_))))
                                  (_%$%g1465014699%_ _%$%g1465214703%_)))))
                      (_%$%g1464914741%_ _%x14647%_))))
                 (_%let-head?13839%_
                  (lambda (_%x14587%_)
                    (let* ((_%$%g1459114602%_
                            (lambda (_%$%g1459214598%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g1459214598%_)))
                           (_%$%g1459014613%_
                            (lambda (_%$%g1459214606%_)
                              ((lambda () (gx#identifier? _%x14587%_)))))
                           (_%$%g1458914643%_
                            (lambda (_%$%g1459214617%_)
                              (if (gx#stx-pair? _%$%g1459214617%_)
                                  (let ((_%$%e1459414620%_
                                         (gx#syntax-e _%$%g1459214617%_)))
                                    (let ((_%$%hd1459514624%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1459414620%_)))
                                          (_%$%tl1459614627%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1459414620%_))))
                                      (if (gx#identifier? _%$%hd1459514624%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g17904_|
                                               _%$%hd1459514624%_)
                                              ((lambda (_%$%g1459314630%_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _%$%g1459314630%_))
                                               _%$%tl1459614627%_)
                                              (_%$%g1459014613%_
                                               _%$%g1459214617%_))
                                          (_%$%g1459014613%_
                                           _%$%g1459214617%_))))
                                  (_%$%g1459014613%_ _%$%g1459214617%_)))))
                      (_%$%g1458914643%_ _%x14587%_))))
                 (_%let-head13840%_
                  (lambda (_%x14527%_)
                    (let* ((_%$%g1453114542%_
                            (lambda (_%$%g1453214538%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g1453214538%_)))
                           (_%$%g1453014553%_
                            (lambda (_%$%g1453214546%_)
                              ((lambda () (list _%x14527%_)))))
                           (_%$%g1452914583%_
                            (lambda (_%$%g1453214557%_)
                              (if (gx#stx-pair? _%$%g1453214557%_)
                                  (let ((_%$%e1453414560%_
                                         (gx#syntax-e _%$%g1453214557%_)))
                                    (let ((_%$%hd1453514564%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1453414560%_)))
                                          (_%$%tl1453614567%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1453414560%_))))
                                      (if (gx#identifier? _%$%hd1453514564%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g17905_|
                                               _%$%hd1453514564%_)
                                              ((lambda (_%$%g1453314570%_)
                                                 _%$%g1453314570%_)
                                               _%$%tl1453614567%_)
                                              (_%$%g1453014553%_
                                               _%$%g1453214557%_))
                                          (_%$%g1453014553%_
                                           _%$%g1453214557%_))))
                                  (_%$%g1453014553%_ _%$%g1453214557%_)))))
                      (_%$%g1452914583%_ _%x14527%_)))))
          (let* ((_%$%g1384413916%_
                  (lambda (_%$%g1384513912%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g1384513912%_)))
                 (_%$%g1384314347%_
                  (lambda (_%$%g1384513920%_)
                    (if (gx#stx-pair? _%$%g1384513920%_)
                        (let ((_%$%e1388713923%_
                               (gx#syntax-e _%$%g1384513920%_)))
                          (let ((_%$%hd1388813927%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1388713923%_)))
                                (_%$%tl1388913930%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1388713923%_))))
                            (if (gx#stx-pair? _%$%tl1388913930%_)
                                (let ((_%$%e1389013933%_
                                       (gx#syntax-e _%$%tl1388913930%_)))
                                  (let ((_%$%hd1389113937%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1389013933%_)))
                                        (_%$%tl1389213940%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1389013933%_))))
                                    (if (gx#stx-pair/null? _%$%hd1389113937%_)
                                        (let ((_g17906_
                                               (gx#syntax-split-splice
                                                _%$%hd1389113937%_
                                                '0)))
                                          (begin
                                            (let ((_g17907_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g17906_)
                                                         (##values-length
                                                          _g17906_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g17907_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g17907_)))
                                            (let ((_%$%target1389313943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g17906_
                                                      0)))
                                                  (_%$%tl1389513946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g17906_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl1389513946%_)
                                                  (letrec ((_%$%loop1389613949%_
                                                            (lambda (_%$%hd1389413953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%bind1390013956%_)
                      (if (gx#stx-pair? _%$%hd1389413953%_)
                          (let ((_%$%e1389713958%_
                                 (gx#syntax-e _%$%hd1389413953%_)))
                            (let ((_%$%lp-hd1389813962%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1389713958%_)))
                                  (_%$%lp-tl1389913965%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1389713958%_))))
                              (_%$%loop1389613949%_
                               _%$%lp-tl1389913965%_
                               (cons _%$%lp-hd1389813962%_
                                     _%$%bind1390013956%_))))
                          (let ((_%$%bind1390113968%_
                                 (reverse _%$%bind1390013956%_)))
                            (if (gx#stx-pair/null? _%$%tl1389213940%_)
                                (let ((_g17908_
                                       (gx#syntax-split-splice
                                        _%$%tl1389213940%_
                                        '0)))
                                  (begin
                                    (let ((_g17909_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g17908_)
                                                 (##values-length _g17908_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g17909_ 2)))
                                          (error "Context expects 2 values"
                                                 _g17909_)))
                                    (let ((_%$%target1390213971%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g17908_ 0)))
                                          (_%$%tl1390413974%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g17908_ 1))))
                                      (if (gx#stx-null? _%$%tl1390413974%_)
                                          (letrec ((_%$%loop1390513977%_
                                                    (lambda (_%$%hd1390313981%_
                                                             _%$%body1390913984%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd1390313981%_)
                                                          (let ((_%$%e1390613986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd1390313981%_)))
                    (let ((_%$%lp-hd1390713990%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1390613986%_)))
                          (_%$%lp-tl1390813993%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1390613986%_))))
                      (_%$%loop1390513977%_
                       _%$%lp-tl1390813993%_
                       (cons _%$%lp-hd1390713990%_ _%$%body1390913984%_))))
                  (let ((_%$%body1391013996%_ (reverse _%$%body1390913984%_)))
                    ((lambda (_%$%g1388513999%_ _%$%g1388614001%_)
                       (if (gx#stx-andmap
                            _%let-bind?13836%_
                            (foldr (lambda (_%$%g1402314026%_
                                            _%$%g1402414029%_)
                                     (cons _%$%g1402314026%_
                                           _%$%g1402414029%_))
                                   '()
                                   _%$%g1388614001%_))
                           (let* ((_%$%g1403214058%_
                                   (lambda (_%$%g1403314054%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g1403314054%_)))
                                  (_%$%g1403114335%_
                                   (lambda (_%$%g1403314062%_)
                                     (if (gx#stx-pair/null? _%$%g1403314062%_)
                                         (let ((_g17910_
                                                (gx#syntax-split-splice
                                                 _%$%g1403314062%_
                                                 '0)))
                                           (begin
                                             (let ((_g17911_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g17910_)
                                                          (##values-length
                                                           _g17910_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g17911_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g17911_)))
                                             (let ((_%$%target1403614065%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##values-ref
                                                       _g17910_
                                                       0)))
                                                   (_%$%tl1403814068%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##values-ref
                                                       _g17910_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _%$%tl1403814068%_)
                                                   (letrec ((_%$%loop1403914071%_
                                                             (lambda (_%$%hd1403714075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%e1404314078%_
                              _%$%hd1404414079%_)
                       (if (gx#stx-pair? _%$%hd1403714075%_)
                           (let ((_%$%e1404014081%_
                                  (gx#syntax-e _%$%hd1403714075%_)))
                             (let ((_%$%lp-hd1404114085%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e1404014081%_)))
                                   (_%$%lp-tl1404214088%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e1404014081%_))))
                               (if (gx#stx-pair? _%$%lp-hd1404114085%_)
                                   (let ((_%$%e1404714091%_
                                          (gx#syntax-e _%$%lp-hd1404114085%_)))
                                     (let ((_%$%hd1404814095%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e1404714091%_)))
                                           (_%$%tl1404914098%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e1404714091%_))))
                                       (if (gx#stx-pair? _%$%tl1404914098%_)
                                           (let ((_%$%e1405014101%_
                                                  (gx#syntax-e
                                                   _%$%tl1404914098%_)))
                                             (let ((_%$%hd1405114105%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e1405014101%_)))
                                                   (_%$%tl1405214108%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e1405014101%_))))
                                               (if (gx#stx-null?
                                                    _%$%tl1405214108%_)
                                                   (_%$%loop1403914071%_
                                                    _%$%lp-tl1404214088%_
                                                    (cons _%$%hd1405114105%_
                                                          _%$%e1404314078%_)
                                                    (cons _%$%hd1404814095%_
                                                          _%$%hd1404414079%_))
                                                   (_%$%g1403214058%_
                                                    _%$%g1403314062%_))))
                                           (_%$%g1403214058%_
                                            _%$%g1403314062%_))))
                                   (_%$%g1403214058%_ _%$%g1403314062%_))))
                           (let ((_%$%e1404514111%_
                                  (reverse _%$%e1404314078%_))
                                 (_%$%hd1404614113%_
                                  (reverse _%$%hd1404414079%_)))
                             ((lambda (_%$%g1403414115%_ _%$%g1403514117%_)
                                (let* ((_%$%g1413314150%_
                                        (lambda (_%$%g1413414146%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g1413414146%_)))
                                       (_%$%g1413214323%_
                                        (lambda (_%$%g1413414154%_)
                                          (if (gx#stx-pair/null?
                                               _%$%g1413414154%_)
                                              (let ((_g17912_
                                                     (gx#syntax-split-splice
                                                      _%$%g1413414154%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17913_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17912_)
                                                               (##values-length
                                                                _g17912_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17913_ 2)))
                (error "Context expects 2 values" _g17913_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target1413614157%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17912_
                                                            0)))
                                                        (_%$%tl1413814160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17912_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1413814160%_)
                                                        (letrec ((_%$%loop1413914163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd1413714167%_ _%$%$e1414314170%_)
                            (if (gx#stx-pair? _%$%hd1413714167%_)
                                (let ((_%$%e1414014172%_
                                       (gx#syntax-e _%$%hd1413714167%_)))
                                  (let ((_%$%lp-hd1414114176%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1414014172%_)))
                                        (_%$%lp-tl1414214179%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1414014172%_))))
                                    (_%$%loop1413914163%_
                                     _%$%lp-tl1414214179%_
                                     (cons _%$%lp-hd1414114176%_
                                           _%$%$e1414314170%_))))
                                (let ((_%$%$e1414414182%_
                                       (reverse _%$%$e1414314170%_)))
                                  ((lambda (_%$%g1413514185%_)
                                     (let* ((_%$%g1420214219%_
                                             (lambda (_%$%g1420314215%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g1420314215%_)))
                                            (_%$%g1420114311%_
                                             (lambda (_%$%g1420314223%_)
                                               (if (gx#stx-pair/null?
                                                    _%$%g1420314223%_)
                                                   (let ((_g17914_
                                                          (gx#syntax-split-splice
                                                           _%$%g1420314223%_
                                                           '0)))
                                                     (begin
                                                       (let ((_g17915_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (if (##values? _g17914_)
                            (##values-length _g17914_)
                            1))))
                 (if (not (let () (declare (not safe)) (##fx= _g17915_ 2)))
                     (error "Context expects 2 values" _g17915_)))
               (let ((_%$%target1420514226%_
                      (let () (declare (not safe)) (##values-ref _g17914_ 0)))
                     (_%$%tl1420714229%_
                      (let () (declare (not safe)) (##values-ref _g17914_ 1))))
                 (if (gx#stx-null? _%$%tl1420714229%_)
                     (letrec ((_%$%loop1420814232%_
                               (lambda (_%$%hd1420614236%_
                                        _%$%hd-bind1421214239%_)
                                 (if (gx#stx-pair? _%$%hd1420614236%_)
                                     (let ((_%$%e1420914241%_
                                            (gx#syntax-e _%$%hd1420614236%_)))
                                       (let ((_%$%lp-hd1421014245%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e1420914241%_)))
                                             (_%$%lp-tl1421114248%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e1420914241%_))))
                                         (_%$%loop1420814232%_
                                          _%$%lp-tl1421114248%_
                                          (cons _%$%lp-hd1421014245%_
                                                _%$%hd-bind1421214239%_))))
                                     (let ((_%$%hd-bind1421314251%_
                                            (reverse _%$%hd-bind1421214239%_)))
                                       ((lambda (_%$%g1420414254%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%$%g1403414115%_
                                                         _%$%g1413514185%_)
                                                        (foldr (lambda (_%$%g1427214283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g1427314286%_
                                _%$%g1427414288%_)
                         (cons (cons (cons _%$%g1427314286%_ '())
                                     (cons _%$%g1427214283%_ '()))
                               _%$%g1427414288%_))
                       '()
                       _%$%g1403414115%_
                       _%$%g1413514185%_))
              (cons (cons (gx#datum->syntax '#f 'and)
                          (foldr (lambda (_%$%g1427514291%_ _%$%g1427614294%_)
                                   (cons _%$%g1427514291%_ _%$%g1427614294%_))
                                 (cons (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%$%g1413514185%_
                                                      _%$%g1420414254%_)
                                                     (foldr (lambda (_%$%g1427714297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g1427814300%_
                             _%$%g1427914302%_)
                      (cons (cons _%$%g1427814300%_
                                  (cons _%$%g1427714297%_ '()))
                            _%$%g1427914302%_))
                    '()
                    _%$%g1413514185%_
                    _%$%g1420414254%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%$%g1428014305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g1428114308%_)
                    (cons _%$%g1428014305%_ _%$%g1428114308%_))
                  '()
                  _%$%g1388513999%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())
                                 _%$%g1413514185%_))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%$%hd-bind1421314251%_))))))
                       (_%$%loop1420814232%_ _%$%target1420514226%_ '()))
                     (_%$%g1420214219%_ _%$%g1420314223%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g1420214219%_
                                                    _%$%g1420314223%_)))))
                                       (_%$%g1420114311%_
                                        (gx#stx-map
                                         _%let-head13840%_
                                         (foldr (lambda (_%$%g1431414317%_
                                                         _%$%g1431514320%_)
                                                  (cons _%$%g1431414317%_
                                                        _%$%g1431514320%_))
                                                '()
                                                _%$%g1403514117%_)))))
                                   _%$%$e1414414182%_))))))
                  (_%$%loop1413914163%_ _%$%target1413614157%_ '()))
                (_%$%g1413314150%_ _%$%g1413414154%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1413314150%_
                                               _%$%g1413414154%_)))))
                                  (_%$%g1413214323%_
                                   (gx#gentemps
                                    (foldr (lambda (_%$%g1432614329%_
                                                    _%$%g1432714332%_)
                                             (cons _%$%g1432614329%_
                                                   _%$%g1432714332%_))
                                           '()
                                           _%$%g1403514117%_)))))
                              _%$%e1404514111%_
                              _%$%hd1404614113%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%loop1403914071%_
                                                      _%$%target1403614065%_
                                                      '()
                                                      '()))
                                                   (_%$%g1403214058%_
                                                    _%$%g1403314062%_)))))
                                         (_%$%g1403214058%_
                                          _%$%g1403314062%_)))))
                             (_%$%g1403114335%_
                              (gx#stx-map
                               _%let-bind13838%_
                               (foldr (lambda (_%$%g1433814341%_
                                               _%$%g1433914344%_)
                                        (cons _%$%g1433814341%_
                                              _%$%g1433914344%_))
                                      '()
                                      _%$%g1388614001%_))))
                           (_%$%g1384413916%_ _%$%g1384513920%_)))
                     _%$%body1391013996%_
                     _%$%bind1390113968%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop1390513977%_
                                             _%$%target1390213971%_
                                             '()))
                                          (_%$%g1384413916%_
                                           _%$%g1384513920%_)))))
                                (_%$%g1384413916%_ _%$%g1384513920%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop1389613949%_
                                                     _%$%target1389313943%_
                                                     '()))
                                                  (_%$%g1384413916%_
                                                   _%$%g1384513920%_)))))
                                        (_%$%g1384413916%_
                                         _%$%g1384513920%_))))
                                (_%$%g1384413916%_ _%$%g1384513920%_))))
                        (_%$%g1384413916%_ _%$%g1384513920%_))))
                 (_%$%g1384214453%_
                  (lambda (_%$%g1384514351%_)
                    (if (gx#stx-pair? _%$%g1384514351%_)
                        (let ((_%$%e1386414354%_
                               (gx#syntax-e _%$%g1384514351%_)))
                          (let ((_%$%hd1386514358%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1386414354%_)))
                                (_%$%tl1386614361%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1386414354%_))))
                            (if (gx#stx-pair? _%$%tl1386614361%_)
                                (let ((_%$%e1386714364%_
                                       (gx#syntax-e _%$%tl1386614361%_)))
                                  (let ((_%$%hd1386814368%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1386714364%_)))
                                        (_%$%tl1386914371%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1386714364%_))))
                                    (if (gx#stx-pair? _%$%hd1386814368%_)
                                        (let ((_%$%e1387014374%_
                                               (gx#syntax-e
                                                _%$%hd1386814368%_)))
                                          (let ((_%$%hd1387114378%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1387014374%_)))
                                                (_%$%tl1387214381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1387014374%_))))
                                            (if (gx#stx-pair?
                                                 _%$%hd1387114378%_)
                                                (let ((_%$%e1387314384%_
                                                       (gx#syntax-e
                                                        _%$%hd1387114378%_)))
                                                  (let ((_%$%hd1387414388%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e1387314384%_)))
                                                        (_%$%tl1387514391%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e1387314384%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1387514391%_)
                                                        (if (gx#stx-null?
                                                             _%$%tl1387214381%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl1386914371%_)
                        (let ((_g17916_
                               (gx#syntax-split-splice _%$%tl1386914371%_ '0)))
                          (begin
                            (let ((_g17917_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g17916_)
                                         (##values-length _g17916_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g17917_ 2)))
                                  (error "Context expects 2 values" _g17917_)))
                            (let ((_%$%target1387614394%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g17916_ 0)))
                                  (_%$%tl1387814397%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g17916_ 1))))
                              (if (gx#stx-null? _%$%tl1387814397%_)
                                  (letrec ((_%$%loop1387914400%_
                                            (lambda (_%$%hd1387714404%_
                                                     _%$%body1388314407%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd1387714404%_)
                                                  (let ((_%$%e1388014409%_
                                                         (gx#syntax-e
                                                          _%$%hd1387714404%_)))
                                                    (let ((_%$%lp-hd1388114413%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1388014409%_)))
                                                          (_%$%lp-tl1388214416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1388014409%_))))
                                                      (_%$%loop1387914400%_
                                                       _%$%lp-tl1388214416%_
                                                       (cons _%$%lp-hd1388114413%_
                                                             _%$%body1388314407%_))))
                                                  (let ((_%$%body1388414419%_
                                                         (reverse _%$%body1388314407%_)))
                                                    ((lambda (_%$%g1386214422%_
                                                              _%$%g1386314424%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'and)
                                                             (cons _%$%g1386314424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'let)
                                       (cons '()
                                             (foldr (lambda (_%$%g1444414447%_
                                                             _%$%g1444514450%_)
                                                      (cons _%$%g1444414447%_
                                                            _%$%g1444514450%_))
                                                    '()
                                                    _%$%g1386214422%_)))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$%body1388414419%_
                                                     _%$%hd1387414388%_))))))
                                    (_%$%loop1387914400%_
                                     _%$%target1387614394%_
                                     '()))
                                  (_%$%g1384314347%_ _%$%g1384514351%_)))))
                        (_%$%g1384314347%_ _%$%g1384514351%_))
                    (_%$%g1384314347%_ _%$%g1384514351%_))
                (_%$%g1384314347%_ _%$%g1384514351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g1384314347%_
                                                 _%$%g1384514351%_))))
                                        (_%$%g1384314347%_
                                         _%$%g1384514351%_))))
                                (_%$%g1384314347%_ _%$%g1384514351%_))))
                        (_%$%g1384314347%_ _%$%g1384514351%_))))
                 (_%$%g1384114523%_
                  (lambda (_%$%g1384514457%_)
                    (if (gx#stx-pair? _%$%g1384514457%_)
                        (let ((_%$%e1385014460%_
                               (gx#syntax-e _%$%g1384514457%_)))
                          (let ((_%$%hd1385114464%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1385014460%_)))
                                (_%$%tl1385214467%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1385014460%_))))
                            (if (gx#stx-pair? _%$%tl1385214467%_)
                                (let ((_%$%e1385314470%_
                                       (gx#syntax-e _%$%tl1385214467%_)))
                                  (let ((_%$%hd1385414474%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1385314470%_)))
                                        (_%$%tl1385514477%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1385314470%_))))
                                    (if (gx#stx-pair? _%$%hd1385414474%_)
                                        (let ((_%$%e1385614480%_
                                               (gx#syntax-e
                                                _%$%hd1385414474%_)))
                                          (let ((_%$%hd1385714484%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1385614480%_)))
                                                (_%$%tl1385814487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1385614480%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl1385814487%_)
                                                (let ((_%$%e1385914490%_
                                                       (gx#syntax-e
                                                        _%$%tl1385814487%_)))
                                                  (let ((_%$%hd1386014494%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e1385914490%_)))
                                                        (_%$%tl1386114497%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e1385914490%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1386114497%_)
                                                        ((lambda (_%$%g1384614500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g1384714502%_
                          _%$%g1384814503%_
                          _%$%g1384914504%_)
                   (if (_%let-head?13839%_ _%$%g1384814503%_)
                       (cons _%$%g1384914504%_
                             (cons (cons (cons _%$%g1384814503%_
                                               (cons _%$%g1384714502%_ '()))
                                         '())
                                   _%$%g1384614500%_))
                       (_%$%g1384214453%_ _%$%g1384514457%_)))
                 _%$%tl1385514477%_
                 _%$%hd1386014494%_
                 _%$%hd1385714484%_
                 _%$%hd1385114464%_)
                (_%$%g1384214453%_ _%$%g1384514457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g1384214453%_
                                                 _%$%g1384514457%_))))
                                        (_%$%g1384214453%_
                                         _%$%g1384514457%_))))
                                (_%$%g1384214453%_ _%$%g1384514457%_))))
                        (_%$%g1384214453%_ _%$%g1384514457%_)))))
            (_%$%g1384114523%_ _%stx13833%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx14862%_)
        (let* ((_%$%g1486814919%_
                (lambda (_%$%g1486914915%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1486914915%_)))
               (_%$%g1486715018%_
                (lambda (_%$%g1486914923%_)
                  (if (gx#stx-pair? _%$%g1486914923%_)
                      (let ((_%$%e1489614926%_
                             (gx#syntax-e _%$%g1486914923%_)))
                        (let ((_%$%hd1489714930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1489614926%_)))
                              (_%$%tl1489814933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1489614926%_))))
                          (if (gx#stx-pair? _%$%tl1489814933%_)
                              (let ((_%$%e1489914936%_
                                     (gx#syntax-e _%$%tl1489814933%_)))
                                (let ((_%$%hd1490014940%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1489914936%_)))
                                      (_%$%tl1490114943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1489914936%_))))
                                  (if (gx#stx-pair? _%$%hd1490014940%_)
                                      (let ((_%$%e1490214946%_
                                             (gx#syntax-e _%$%hd1490014940%_)))
                                        (let ((_%$%hd1490314950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1490214946%_)))
                                              (_%$%tl1490414953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1490214946%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl1490114943%_)
                                              (let ((_g17918_
                                                     (gx#syntax-split-splice
                                                      _%$%tl1490114943%_
                                                      '0)))
                                                (begin
                                                  (let ((_g17919_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g17918_)
                                                               (##values-length
                                                                _g17918_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g17919_ 2)))
                (error "Context expects 2 values" _g17919_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target1490514956%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17918_
                                                            0)))
                                                        (_%$%tl1490714959%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g17918_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1490714959%_)
                                                        (letrec ((_%$%loop1490814962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd1490614966%_ _%$%body1491214969%_)
                            (if (gx#stx-pair? _%$%hd1490614966%_)
                                (let ((_%$%e1490914971%_
                                       (gx#syntax-e _%$%hd1490614966%_)))
                                  (let ((_%$%lp-hd1491014975%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1490914971%_)))
                                        (_%$%lp-tl1491114978%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1490914971%_))))
                                    (_%$%loop1490814962%_
                                     _%$%lp-tl1491114978%_
                                     (cons _%$%lp-hd1491014975%_
                                           _%$%body1491214969%_))))
                                (let ((_%$%body1491314981%_
                                       (reverse _%$%body1491214969%_)))
                                  ((lambda (_%$%g1489214984%_
                                            _%$%g1489314986%_
                                            _%$%g1489414987%_
                                            _%$%g1489514988%_)
                                     (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons _%$%g1489414987%_ '())
                                                 (cons (cons _%$%g1489514988%_
                                                             (cons _%$%g1489314986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%$%g1500915012%_ _%$%g1501015015%_)
                                    (cons _%$%g1500915012%_ _%$%g1501015015%_))
                                  '()
                                  _%$%g1489214984%_)))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%body1491314981%_
                                   _%$%tl1490414953%_
                                   _%$%hd1490314950%_
                                   _%$%hd1489714930%_))))))
                  (_%$%loop1490814962%_ _%$%target1490514956%_ '()))
                (_%$%g1486814919%_ _%$%g1486914923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1486814919%_
                                               _%$%g1486914923%_))))
                                      (_%$%g1486814919%_ _%$%g1486914923%_))))
                              (_%$%g1486814919%_ _%$%g1486914923%_))))
                      (_%$%g1486814919%_ _%$%g1486914923%_))))
               (_%$%g1486615098%_
                (lambda (_%$%g1486915022%_)
                  (if (gx#stx-pair? _%$%g1486915022%_)
                      (let ((_%$%e1487715025%_
                             (gx#syntax-e _%$%g1486915022%_)))
                        (let ((_%$%hd1487815029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1487715025%_)))
                              (_%$%tl1487915032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1487715025%_))))
                          (if (gx#stx-pair? _%$%tl1487915032%_)
                              (let ((_%$%e1488015035%_
                                     (gx#syntax-e _%$%tl1487915032%_)))
                                (let ((_%$%hd1488115039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1488015035%_)))
                                      (_%$%tl1488215042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1488015035%_))))
                                  (if (gx#stx-null? _%$%hd1488115039%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl1488215042%_)
                                          (let ((_g17920_
                                                 (gx#syntax-split-splice
                                                  _%$%tl1488215042%_
                                                  '0)))
                                            (begin
                                              (let ((_g17921_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g17920_)
                                                           (##values-length
                                                            _g17920_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g17921_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g17921_)))
                                              (let ((_%$%target1488315045%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g17920_
                                                        0)))
                                                    (_%$%tl1488515048%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g17920_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl1488515048%_)
                                                    (letrec ((_%$%loop1488615051%_
                                                              (lambda (_%$%hd1488415055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body1489015058%_)
                        (if (gx#stx-pair? _%$%hd1488415055%_)
                            (let ((_%$%e1488715060%_
                                   (gx#syntax-e _%$%hd1488415055%_)))
                              (let ((_%$%lp-hd1488815064%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1488715060%_)))
                                    (_%$%lp-tl1488915067%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1488715060%_))))
                                (_%$%loop1488615051%_
                                 _%$%lp-tl1488915067%_
                                 (cons _%$%lp-hd1488815064%_
                                       _%$%body1489015058%_))))
                            (let ((_%$%body1489115070%_
                                   (reverse _%$%body1489015058%_)))
                              ((lambda (_%$%g1487615073%_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons '()
                                             (foldr (lambda (_%$%g1508915092%_
                                                             _%$%g1509015095%_)
                                                      (cons _%$%g1508915092%_
                                                            _%$%g1509015095%_))
                                                    '()
                                                    _%$%g1487615073%_))))
                               _%$%body1489115070%_))))))
              (_%$%loop1488615051%_ _%$%target1488315045%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g1486715018%_
                                                     _%$%g1486915022%_)))))
                                          (_%$%g1486715018%_
                                           _%$%g1486915022%_))
                                      (_%$%g1486715018%_ _%$%g1486915022%_))))
                              (_%$%g1486715018%_ _%$%g1486915022%_))))
                      (_%$%g1486715018%_ _%$%g1486915022%_))))
               (_%$%g1486515129%_
                (lambda (_%$%g1486915102%_)
                  (if (gx#stx-pair? _%$%g1486915102%_)
                      (let ((_%$%e1487015105%_
                             (gx#syntax-e _%$%g1486915102%_)))
                        (let ((_%$%hd1487115109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1487015105%_)))
                              (_%$%tl1487215112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1487015105%_))))
                          (if (gx#stx-pair? _%$%tl1487215112%_)
                              (let ((_%$%e1487315115%_
                                     (gx#syntax-e _%$%tl1487215112%_)))
                                (let ((_%$%hd1487415119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1487315115%_)))
                                      (_%$%tl1487515122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1487315115%_))))
                                  (if (gx#stx-null? _%$%hd1487415119%_)
                                      (if (gx#stx-null? _%$%tl1487515122%_)
                                          ((lambda () '#t))
                                          (_%$%g1486615098%_
                                           _%$%g1486915102%_))
                                      (_%$%g1486615098%_ _%$%g1486915102%_))))
                              (_%$%g1486615098%_ _%$%g1486915102%_))))
                      (_%$%g1486615098%_ _%$%g1486915102%_)))))
          (_%$%g1486515129%_ _%$stx14862%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15135%_)
        (let* ((_%$%g1514615224%_
                (lambda (_%$%g1514715220%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1514715220%_)))
               (_%$%g1514515253%_
                (lambda (_%$%g1514715228%_)
                  (if (gx#stx-pair? _%$%g1514715228%_)
                      (let ((_%$%e1521615231%_
                             (gx#syntax-e _%$%g1514715228%_)))
                        (let ((_%$%hd1521715235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1521615231%_)))
                              (_%$%tl1521815238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1521615231%_))))
                          ((lambda (_%$%g1521515241%_) _%$%g1521515241%_)
                           _%$%tl1521815238%_)))
                      (_%$%g1514615224%_ _%$%g1514715228%_))))
               (_%$%g1514415297%_
                (lambda (_%$%g1514715257%_)
                  (if (gx#stx-pair? _%$%g1514715257%_)
                      (let ((_%$%e1520915260%_
                             (gx#syntax-e _%$%g1514715257%_)))
                        (let ((_%$%hd1521015264%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1520915260%_)))
                              (_%$%tl1521115267%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1520915260%_))))
                          (if (gx#stx-pair? _%$%tl1521115267%_)
                              (let ((_%$%e1521215270%_
                                     (gx#syntax-e _%$%tl1521115267%_)))
                                (let ((_%$%hd1521315274%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1521215270%_)))
                                      (_%$%tl1521415277%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1521215270%_))))
                                  ((lambda (_%$%g1520615280%_
                                            _%$%g1520715282%_
                                            _%$%g1520815283%_)
                                     (cons (gx#datum->syntax '#f 'cons)
                                           (cons _%$%g1520715282%_
                                                 (cons (cons _%$%g1520815283%_
                                                             _%$%g1520615280%_)
                                                       '()))))
                                   _%$%tl1521415277%_
                                   _%$%hd1521315274%_
                                   _%$%hd1521015264%_)))
                              (_%$%g1514515253%_ _%$%g1514715257%_))))
                      (_%$%g1514515253%_ _%$%g1514715257%_))))
               (_%$%g1514315355%_
                (lambda (_%$%g1514715301%_)
                  (if (gx#stx-pair? _%$%g1514715301%_)
                      (let ((_%$%e1519715304%_
                             (gx#syntax-e _%$%g1514715301%_)))
                        (let ((_%$%hd1519815308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1519715304%_)))
                              (_%$%tl1519915311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1519715304%_))))
                          (if (gx#stx-pair? _%$%tl1519915311%_)
                              (let ((_%$%e1520015314%_
                                     (gx#syntax-e _%$%tl1519915311%_)))
                                (let ((_%$%hd1520115318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1520015314%_)))
                                      (_%$%tl1520215321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1520015314%_))))
                                  (if (gx#stx-pair? _%$%tl1520215321%_)
                                      (let ((_%$%e1520315324%_
                                             (gx#syntax-e _%$%tl1520215321%_)))
                                        (let ((_%$%hd1520415328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1520315324%_)))
                                              (_%$%tl1520515331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1520315324%_))))
                                          ((lambda (_%$%g1519315334%_
                                                    _%$%g1519415336%_
                                                    _%$%g1519515337%_
                                                    _%$%g1519615338%_)
                                             (if (gx#ellipsis?
                                                  _%$%g1519415336%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'foldr)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons)
                                                             (cons (cons _%$%g1519615338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g1519315334%_)
                           (cons _%$%g1519515337%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g1514415297%_
                                                  _%$%g1514715301%_)))
                                           _%$%tl1520515331%_
                                           _%$%hd1520415328%_
                                           _%$%hd1520115318%_
                                           _%$%hd1519815308%_)))
                                      (_%$%g1514415297%_ _%$%g1514715301%_))))
                              (_%$%g1514415297%_ _%$%g1514715301%_))))
                      (_%$%g1514415297%_ _%$%g1514715301%_))))
               (_%$%g1514215409%_
                (lambda (_%$%g1514715359%_)
                  (if (gx#stx-pair? _%$%g1514715359%_)
                      (let ((_%$%e1518415362%_
                             (gx#syntax-e _%$%g1514715359%_)))
                        (let ((_%$%hd1518515366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1518415362%_)))
                              (_%$%tl1518615369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1518415362%_))))
                          (if (gx#stx-pair? _%$%tl1518615369%_)
                              (let ((_%$%e1518715372%_
                                     (gx#syntax-e _%$%tl1518615369%_)))
                                (let ((_%$%hd1518815376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1518715372%_)))
                                      (_%$%tl1518915379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1518715372%_))))
                                  (if (gx#stx-pair? _%$%tl1518915379%_)
                                      (let ((_%$%e1519015382%_
                                             (gx#syntax-e _%$%tl1518915379%_)))
                                        (let ((_%$%hd1519115386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1519015382%_)))
                                              (_%$%tl1519215389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1519015382%_))))
                                          (if (gx#stx-null? _%$%tl1519215389%_)
                                              ((lambda (_%$%g1518215392%_
                                                        _%$%g1518315394%_)
                                                 (if (gx#ellipsis?
                                                      _%$%g1518215392%_)
                                                     _%$%g1518315394%_
                                                     (_%$%g1514315355%_
                                                      _%$%g1514715359%_)))
                                               _%$%hd1519115386%_
                                               _%$%hd1518815376%_)
                                              (_%$%g1514315355%_
                                               _%$%g1514715359%_))))
                                      (_%$%g1514315355%_ _%$%g1514715359%_))))
                              (_%$%g1514315355%_ _%$%g1514715359%_))))
                      (_%$%g1514315355%_ _%$%g1514715359%_))))
               (_%$%g1514115466%_
                (lambda (_%$%g1514715413%_)
                  (if (gx#stx-pair? _%$%g1514715413%_)
                      (let ((_%$%e1517215416%_
                             (gx#syntax-e _%$%g1514715413%_)))
                        (let ((_%$%hd1517315420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1517215416%_)))
                              (_%$%tl1517415423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1517215416%_))))
                          (if (gx#stx-pair? _%$%tl1517415423%_)
                              (let ((_%$%e1517515426%_
                                     (gx#syntax-e _%$%tl1517415423%_)))
                                (let ((_%$%hd1517615430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1517515426%_)))
                                      (_%$%tl1517715433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1517515426%_))))
                                  (if (gx#stx-datum? _%$%hd1517615430%_)
                                      (let ((_%$%e1517815436%_
                                             (gx#stx-e _%$%hd1517615430%_)))
                                        (if (equal? _%$%e1517815436%_ '::)
                                            (if (gx#stx-pair?
                                                 _%$%tl1517715433%_)
                                                (let ((_%$%e1517915440%_
                                                       (gx#syntax-e
                                                        _%$%tl1517715433%_)))
                                                  (let ((_%$%hd1518015444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e1517915440%_)))
                                                        (_%$%tl1518115447%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e1517915440%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1518115447%_)
                                                        ((lambda (_%$%g1517115450%_)
                                                           _%$%g1517115450%_)
                                                         _%$%hd1518015444%_)
                                                        (_%$%g1514215409%_
                                                         _%$%g1514715413%_))))
                                                (_%$%g1514215409%_
                                                 _%$%g1514715413%_))
                                            (_%$%g1514215409%_
                                             _%$%g1514715413%_)))
                                      (_%$%g1514215409%_ _%$%g1514715413%_))))
                              (_%$%g1514215409%_ _%$%g1514715413%_))))
                      (_%$%g1514215409%_ _%$%g1514715413%_))))
               (_%$%g1514015518%_
                (lambda (_%$%g1514715470%_)
                  (if (gx#stx-pair? _%$%g1514715470%_)
                      (let ((_%$%e1516215473%_
                             (gx#syntax-e _%$%g1514715470%_)))
                        (let ((_%$%hd1516315477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1516215473%_)))
                              (_%$%tl1516415480%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1516215473%_))))
                          (if (gx#stx-pair? _%$%tl1516415480%_)
                              (let ((_%$%e1516515483%_
                                     (gx#syntax-e _%$%tl1516415480%_)))
                                (let ((_%$%hd1516615487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1516515483%_)))
                                      (_%$%tl1516715490%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1516515483%_))))
                                  (if (gx#identifier? _%$%hd1516615487%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g17922_|
                                           _%$%hd1516615487%_)
                                          (if (gx#stx-pair? _%$%tl1516715490%_)
                                              (let ((_%$%e1516815493%_
                                                     (gx#syntax-e
                                                      _%$%tl1516715490%_)))
                                                (let ((_%$%hd1516915497%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1516815493%_)))
                                                      (_%$%tl1517015500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1516815493%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl1517015500%_)
                                                      ((lambda (_%$%g1516115503%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'quasiquote)
                                                               (cons _%$%g1516115503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
               _%$%hd1516915497%_)
              (_%$%g1514115466%_ _%$%g1514715470%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1514115466%_
                                               _%$%g1514715470%_))
                                          (_%$%g1514115466%_
                                           _%$%g1514715470%_))
                                      (_%$%g1514115466%_ _%$%g1514715470%_))))
                              (_%$%g1514115466%_ _%$%g1514715470%_))))
                      (_%$%g1514115466%_ _%$%g1514715470%_))))
               (_%$%g1513915570%_
                (lambda (_%$%g1514715522%_)
                  (if (gx#stx-pair? _%$%g1514715522%_)
                      (let ((_%$%e1515215525%_
                             (gx#syntax-e _%$%g1514715522%_)))
                        (let ((_%$%hd1515315529%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1515215525%_)))
                              (_%$%tl1515415532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1515215525%_))))
                          (if (gx#stx-pair? _%$%tl1515415532%_)
                              (let ((_%$%e1515515535%_
                                     (gx#syntax-e _%$%tl1515415532%_)))
                                (let ((_%$%hd1515615539%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1515515535%_)))
                                      (_%$%tl1515715542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1515515535%_))))
                                  (if (gx#identifier? _%$%hd1515615539%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g17923_|
                                           _%$%hd1515615539%_)
                                          (if (gx#stx-pair? _%$%tl1515715542%_)
                                              (let ((_%$%e1515815545%_
                                                     (gx#syntax-e
                                                      _%$%tl1515715542%_)))
                                                (let ((_%$%hd1515915549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1515815545%_)))
                                                      (_%$%tl1516015552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1515815545%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl1516015552%_)
                                                      ((lambda (_%$%g1515115555%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%$%g1515115555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
               _%$%hd1515915549%_)
              (_%$%g1514015518%_ _%$%g1514715522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1514015518%_
                                               _%$%g1514715522%_))
                                          (_%$%g1514015518%_
                                           _%$%g1514715522%_))
                                      (_%$%g1514015518%_ _%$%g1514715522%_))))
                              (_%$%g1514015518%_ _%$%g1514715522%_))))
                      (_%$%g1514015518%_ _%$%g1514715522%_))))
               (_%$%g1513815591%_
                (lambda (_%$%g1514715574%_)
                  (if (gx#stx-pair? _%$%g1514715574%_)
                      (let ((_%$%e1514815577%_
                             (gx#syntax-e _%$%g1514715574%_)))
                        (let ((_%$%hd1514915581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1514815577%_)))
                              (_%$%tl1515015584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1514815577%_))))
                          (if (gx#stx-null? _%$%tl1515015584%_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons '() '()))))
                              (_%$%g1513915570%_ _%$%g1514715574%_))))
                      (_%$%g1513915570%_ _%$%g1514715574%_)))))
          (_%$%g1513815591%_ _%$stx15135%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx15595%_)
        (letrec ((_%simple-quote?15598%_
                  (lambda (_%e16288%_)
                    (let* ((_%$%g1629616333%_
                            (lambda (_%$%g1629716329%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g1629716329%_)))
                           (_%$%g1629516344%_
                            (lambda (_%$%g1629716337%_) ((lambda () '#t))))
                           (_%$%g1629416367%_
                            (lambda (_%$%g1629716348%_)
                              (if (gx#stx-box? _%$%g1629716348%_)
                                  (let ((_%$%e1632716351%_
                                         (unbox (gx#syntax-e
                                                 _%$%g1629716348%_))))
                                    ((lambda (_%$%g1632616355%_)
                                       (_%simple-quote?15598%_
                                        _%$%g1632616355%_))
                                     _%$%e1632716351%_))
                                  (_%$%g1629516344%_ _%$%g1629716348%_))))
                           (_%$%g1629316428%_
                            (lambda (_%$%g1629716371%_)
                              (if (gx#stx-vector? _%$%g1629716371%_)
                                  (let ((_%$%e1631616374%_
                                         (vector->list
                                          (gx#syntax-e _%$%g1629716371%_))))
                                    (if (gx#stx-pair/null? _%$%e1631616374%_)
                                        (let ((_g17924_
                                               (gx#syntax-split-splice
                                                _%$%e1631616374%_
                                                '0)))
                                          (begin
                                            (let ((_g17925_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g17924_)
                                                         (##values-length
                                                          _g17924_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g17925_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g17925_)))
                                            (let ((_%$%target1631716378%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g17924_
                                                      0)))
                                                  (_%$%tl1631916381%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g17924_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl1631916381%_)
                                                  (letrec ((_%$%loop1632016384%_
                                                            (lambda (_%$%hd1631816388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e1632416391%_)
                      (if (gx#stx-pair? _%$%hd1631816388%_)
                          (let ((_%$%e1632116393%_
                                 (gx#syntax-e _%$%hd1631816388%_)))
                            (let ((_%$%lp-hd1632216397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1632116393%_)))
                                  (_%$%lp-tl1632316400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1632116393%_))))
                              (_%$%loop1632016384%_
                               _%$%lp-tl1632316400%_
                               (cons _%$%lp-hd1632216397%_
                                     _%$%e1632416391%_))))
                          (let ((_%$%e1632516403%_
                                 (reverse _%$%e1632416391%_)))
                            ((lambda (_%$%g1631516406%_)
                               (_%simple-quote?15598%_
                                (foldr (lambda (_%$%g1641916422%_
                                                _%$%g1642016425%_)
                                         (cons _%$%g1641916422%_
                                               _%$%g1642016425%_))
                                       '()
                                       _%$%g1631516406%_)))
                             _%$%e1632516403%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop1632016384%_
                                                     _%$%target1631716378%_
                                                     '()))
                                                  (_%$%g1629416367%_
                                                   _%$%g1629716371%_)))))
                                        (_%$%g1629416367%_ _%$%g1629716371%_)))
                                  (_%$%g1629416367%_ _%$%g1629716371%_))))
                           (_%$%g1629216458%_
                            (lambda (_%$%g1629716432%_)
                              (if (gx#stx-pair? _%$%g1629716432%_)
                                  (let ((_%$%e1631216435%_
                                         (gx#syntax-e _%$%g1629716432%_)))
                                    (let ((_%$%hd1631316439%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1631216435%_)))
                                          (_%$%tl1631416442%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1631216435%_))))
                                      ((lambda (_%$%g1631016445%_
                                                _%$%g1631116447%_)
                                         (if (_%simple-quote?15598%_
                                              _%$%g1631116447%_)
                                             (_%simple-quote?15598%_
                                              _%$%g1631016445%_)
                                             '#f))
                                       _%$%tl1631416442%_
                                       _%$%hd1631316439%_)))
                                  (_%$%g1629316428%_ _%$%g1629716432%_))))
                           (_%$%g1629116489%_
                            (lambda (_%$%g1629716462%_)
                              (if (gx#stx-pair? _%$%g1629716462%_)
                                  (let ((_%$%e1630416465%_
                                         (gx#syntax-e _%$%g1629716462%_)))
                                    (let ((_%$%hd1630516469%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1630416465%_)))
                                          (_%$%tl1630616472%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1630416465%_))))
                                      (if (gx#identifier? _%$%hd1630516469%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g17926_|
                                               _%$%hd1630516469%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl1630616472%_)
                                                  (let ((_%$%e1630716475%_
                                                         (gx#syntax-e
                                                          _%$%tl1630616472%_)))
                                                    (let ((_%$%hd1630816479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1630716475%_)))
                                                          (_%$%tl1630916482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1630716475%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl1630916482%_)
                                                          ((lambda () '#f))
                                                          (_%$%g1629216458%_
                                                           _%$%g1629716462%_))))
                                                  (_%$%g1629216458%_
                                                   _%$%g1629716462%_))
                                              (_%$%g1629216458%_
                                               _%$%g1629716462%_))
                                          (_%$%g1629216458%_
                                           _%$%g1629716462%_))))
                                  (_%$%g1629216458%_ _%$%g1629716462%_))))
                           (_%$%g1629016520%_
                            (lambda (_%$%g1629716493%_)
                              (if (gx#stx-pair? _%$%g1629716493%_)
                                  (let ((_%$%e1629816496%_
                                         (gx#syntax-e _%$%g1629716493%_)))
                                    (let ((_%$%hd1629916500%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1629816496%_)))
                                          (_%$%tl1630016503%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1629816496%_))))
                                      (if (gx#identifier? _%$%hd1629916500%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g17927_|
                                               _%$%hd1629916500%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl1630016503%_)
                                                  (let ((_%$%e1630116506%_
                                                         (gx#syntax-e
                                                          _%$%tl1630016503%_)))
                                                    (let ((_%$%hd1630216510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1630116506%_)))
                                                          (_%$%tl1630316513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1630116506%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl1630316513%_)
                                                          ((lambda () '#f))
                                                          (_%$%g1629116489%_
                                                           _%$%g1629716493%_))))
                                                  (_%$%g1629116489%_
                                                   _%$%g1629716493%_))
                                              (_%$%g1629116489%_
                                               _%$%g1629716493%_))
                                          (_%$%g1629116489%_
                                           _%$%g1629716493%_))))
                                  (_%$%g1629116489%_ _%$%g1629716493%_)))))
                      (_%$%g1629016520%_ _%e16288%_))))
                 (_%generate15600%_
                  (lambda (_%e15662%_ _%d15664%_)
                    (let* ((_%$%g1567315731%_
                            (lambda (_%$%g1567415727%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g1567415727%_)))
                           (_%$%g1567215748%_
                            (lambda (_%$%g1567415735%_)
                              ((lambda (_%$%g1572515738%_)
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%g1572515738%_ '())))
                               _%$%g1567415735%_)))
                           (_%$%g1567115800%_
                            (lambda (_%$%g1567415752%_)
                              (if (gx#stx-box? _%$%g1567415752%_)
                                  (let ((_%$%e1572415755%_
                                         (unbox (gx#syntax-e
                                                 _%$%g1567415752%_))))
                                    ((lambda (_%$%g1572315759%_)
                                       (let* ((_%$%g1576915777%_
                                               (lambda (_%$%g1577015773%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g1577015773%_)))
                                              (_%$%g1576815796%_
                                               (lambda (_%$%g1577015781%_)
                                                 ((lambda (_%$%g1577115784%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'box)
                                                          (cons _%$%g1577115784%_
                                                                '())))
                                                  _%$%g1577015781%_))))
                                         (_%$%g1576815796%_
                                          (_%generate15600%_
                                           _%$%g1572315759%_
                                           _%d15664%_))))
                                     _%$%e1572415755%_))
                                  (_%$%g1567215748%_ _%$%g1567415752%_))))
                           (_%$%g1567015892%_
                            (lambda (_%$%g1567415804%_)
                              (if (gx#stx-vector? _%$%g1567415804%_)
                                  (let ((_%$%e1571315807%_
                                         (vector->list
                                          (gx#syntax-e _%$%g1567415804%_))))
                                    (if (gx#stx-pair/null? _%$%e1571315807%_)
                                        (let ((_g17928_
                                               (gx#syntax-split-splice
                                                _%$%e1571315807%_
                                                '0)))
                                          (begin
                                            (let ((_g17929_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g17928_)
                                                         (##values-length
                                                          _g17928_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g17929_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g17929_)))
                                            (let ((_%$%target1571415811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g17928_
                                                      0)))
                                                  (_%$%tl1571615814%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g17928_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl1571615814%_)
                                                  (letrec ((_%$%loop1571715817%_
                                                            (lambda (_%$%hd1571515821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%e1572115824%_)
                      (if (gx#stx-pair? _%$%hd1571515821%_)
                          (let ((_%$%e1571815826%_
                                 (gx#syntax-e _%$%hd1571515821%_)))
                            (let ((_%$%lp-hd1571915830%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1571815826%_)))
                                  (_%$%lp-tl1572015833%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1571815826%_))))
                              (_%$%loop1571715817%_
                               _%$%lp-tl1572015833%_
                               (cons _%$%lp-hd1571915830%_
                                     _%$%e1572115824%_))))
                          (let ((_%$%e1572215836%_
                                 (reverse _%$%e1572115824%_)))
                            ((lambda (_%$%g1571215839%_)
                               (let* ((_%$%g1585315861%_
                                       (lambda (_%$%g1585415857%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%$%g1585415857%_)))
                                      (_%$%g1585215880%_
                                       (lambda (_%$%g1585415865%_)
                                         ((lambda (_%$%g1585515868%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%$%g1585515868%_
                                                        '())))
                                          _%$%g1585415865%_))))
                                 (_%$%g1585215880%_
                                  (_%generate15600%_
                                   (foldr (lambda (_%$%g1588315886%_
                                                   _%$%g1588415889%_)
                                            (cons _%$%g1588315886%_
                                                  _%$%g1588415889%_))
                                          '()
                                          _%$%g1571215839%_)
                                   _%d15664%_))))
                             _%$%e1572215836%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop1571715817%_
                                                     _%$%target1571415811%_
                                                     '()))
                                                  (_%$%g1567115800%_
                                                   _%$%g1567415804%_)))))
                                        (_%$%g1567115800%_ _%$%g1567415804%_)))
                                  (_%$%g1567115800%_ _%$%g1567415804%_))))
                           (_%$%g1566915986%_
                            (lambda (_%$%g1567415896%_)
                              (if (gx#stx-pair? _%$%g1567415896%_)
                                  (let ((_%$%e1570915899%_
                                         (gx#syntax-e _%$%g1567415896%_)))
                                    (let ((_%$%hd1571015903%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1570915899%_)))
                                          (_%$%tl1571115906%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1570915899%_))))
                                      ((lambda (_%$%g1570715909%_
                                                _%$%g1570815911%_)
                                         (let* ((_%$%g1592215937%_
                                                 (lambda (_%$%g1592315933%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g1592315933%_)))
                                                (_%$%g1592115982%_
                                                 (lambda (_%$%g1592315941%_)
                                                   (if (gx#stx-pair?
                                                        _%$%g1592315941%_)
                                                       (let ((_%$%e1592615944%_
                                                              (gx#syntax-e
                                                               _%$%g1592315941%_)))
                                                         (let ((_%$%hd1592715948%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e1592615944%_)))
                       (_%$%tl1592815951%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e1592615944%_))))
                   (if (gx#stx-pair? _%$%tl1592815951%_)
                       (let ((_%$%e1592915954%_
                              (gx#syntax-e _%$%tl1592815951%_)))
                         (let ((_%$%hd1593015958%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e1592915954%_)))
                               (_%$%tl1593115961%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e1592915954%_))))
                           (if (gx#stx-null? _%$%tl1593115961%_)
                               ((lambda (_%$%g1592415964%_ _%$%g1592515966%_)
                                  (cons (gx#datum->syntax '#f 'cons)
                                        (cons _%$%g1592515966%_
                                              (cons _%$%g1592415964%_ '()))))
                                _%$%hd1593015958%_
                                _%$%hd1592715948%_)
                               (_%$%g1592215937%_ _%$%g1592315941%_))))
                       (_%$%g1592215937%_ _%$%g1592315941%_))))
               (_%$%g1592215937%_ _%$%g1592315941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g1592115982%_
                                            (list (_%generate15600%_
                                                   _%$%g1570815911%_
                                                   _%d15664%_)
                                                  (_%generate15600%_
                                                   _%$%g1570715909%_
                                                   _%d15664%_)))))
                                       _%$%tl1571115906%_
                                       _%$%hd1571015903%_)))
                                  (_%$%g1567015892%_ _%$%g1567415896%_))))
                           (_%$%g1566816071%_
                            (lambda (_%$%g1567415990%_)
                              (if (gx#stx-pair? _%$%g1567415990%_)
                                  (let ((_%$%e1569815993%_
                                         (gx#syntax-e _%$%g1567415990%_)))
                                    (let ((_%$%hd1569915997%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1569815993%_)))
                                          (_%$%tl1570016000%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1569815993%_))))
                                      (if (gx#stx-pair? _%$%hd1569915997%_)
                                          (let ((_%$%e1570116003%_
                                                 (gx#syntax-e
                                                  _%$%hd1569915997%_)))
                                            (let ((_%$%hd1570216007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e1570116003%_)))
                                                  (_%$%tl1570316010%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e1570116003%_))))
                                              (if (gx#identifier?
                                                   _%$%hd1570216007%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g17930_|
                                                       _%$%hd1570216007%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl1570316010%_)
                                                          (let ((_%$%e1570416013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl1570316010%_)))
                    (let ((_%$%hd1570516017%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1570416013%_)))
                          (_%$%tl1570616020%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1570416013%_))))
                      (if (gx#stx-null? _%$%tl1570616020%_)
                          ((lambda (_%$%g1569616023%_ _%$%g1569716025%_)
                             (if (fxzero? _%d15664%_)
                                 (let* ((_%$%g1604016048%_
                                         (lambda (_%$%g1604116044%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g1604116044%_)))
                                        (_%$%g1603916067%_
                                         (lambda (_%$%g1604116052%_)
                                           ((lambda (_%$%g1604216055%_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'foldr)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'cons)
                                                          (cons _%$%g1604216055%_
                                                                (cons _%$%g1569716025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%$%g1604116052%_))))
                                   (_%$%g1603916067%_
                                    (_%generate15600%_
                                     _%$%g1569616023%_
                                     _%d15664%_)))
                                 (_%$%g1566915986%_ _%$%g1567415990%_)))
                           _%$%tl1570016000%_
                           _%$%hd1570516017%_)
                          (_%$%g1566915986%_ _%$%g1567415990%_))))
                  (_%$%g1566915986%_ _%$%g1567415990%_))
              (_%$%g1566915986%_ _%$%g1567415990%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1566915986%_
                                                   _%$%g1567415990%_))))
                                          (_%$%g1566915986%_
                                           _%$%g1567415990%_))))
                                  (_%$%g1566915986%_ _%$%g1567415990%_))))
                           (_%$%g1566716142%_
                            (lambda (_%$%g1567416075%_)
                              (if (gx#stx-pair? _%$%g1567416075%_)
                                  (let ((_%$%e1569016078%_
                                         (gx#syntax-e _%$%g1567416075%_)))
                                    (let ((_%$%hd1569116082%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1569016078%_)))
                                          (_%$%tl1569216085%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1569016078%_))))
                                      (if (gx#identifier? _%$%hd1569116082%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g17931_|
                                               _%$%hd1569116082%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl1569216085%_)
                                                  (let ((_%$%e1569316088%_
                                                         (gx#syntax-e
                                                          _%$%tl1569216085%_)))
                                                    (let ((_%$%hd1569416092%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1569316088%_)))
                                                          (_%$%tl1569516095%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1569316088%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl1569516095%_)
                                                          ((lambda (_%$%g1568916098%_)
                                                             (if (fxzero? _%d15664%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'foldr)
                               (cons (gx#datum->syntax '#f 'cons)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons _%$%g1568916098%_ '()))))
                         (let* ((_%$%g1611116119%_
                                 (lambda (_%$%g1611216115%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g1611216115%_)))
                                (_%$%g1611016138%_
                                 (lambda (_%$%g1611216123%_)
                                   ((lambda (_%$%g1611316126%_)
                                      (cons (gx#datum->syntax '#f 'list)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'unquote-splicing)
                                                              '()))
                                                  (cons _%$%g1611316126%_
                                                        '()))))
                                    _%$%g1611216123%_))))
                           (_%$%g1611016138%_
                            (_%generate15600%_
                             _%$%g1568916098%_
                             (fx1- _%d15664%_))))))
                   _%$%hd1569416092%_)
                  (_%$%g1566816071%_ _%$%g1567416075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1566816071%_
                                                   _%$%g1567416075%_))
                                              (_%$%g1566816071%_
                                               _%$%g1567416075%_))
                                          (_%$%g1566816071%_
                                           _%$%g1567416075%_))))
                                  (_%$%g1566816071%_ _%$%g1567416075%_))))
                           (_%$%g1566616213%_
                            (lambda (_%$%g1567416146%_)
                              (if (gx#stx-pair? _%$%g1567416146%_)
                                  (let ((_%$%e1568316149%_
                                         (gx#syntax-e _%$%g1567416146%_)))
                                    (let ((_%$%hd1568416153%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1568316149%_)))
                                          (_%$%tl1568516156%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1568316149%_))))
                                      (if (gx#identifier? _%$%hd1568416153%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g17932_|
                                               _%$%hd1568416153%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl1568516156%_)
                                                  (let ((_%$%e1568616159%_
                                                         (gx#syntax-e
                                                          _%$%tl1568516156%_)))
                                                    (let ((_%$%hd1568716163%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1568616159%_)))
                                                          (_%$%tl1568816166%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1568616159%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl1568816166%_)
                                                          ((lambda (_%$%g1568216169%_)
                                                             (if (fxzero? _%d15664%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g1568216169%_
                         (let* ((_%$%g1618216190%_
                                 (lambda (_%$%g1618316186%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g1618316186%_)))
                                (_%$%g1618116209%_
                                 (lambda (_%$%g1618316194%_)
                                   ((lambda (_%$%g1618416197%_)
                                      (cons (gx#datum->syntax '#f 'list)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'unquote)
                                                              '()))
                                                  (cons _%$%g1618416197%_
                                                        '()))))
                                    _%$%g1618316194%_))))
                           (_%$%g1618116209%_
                            (_%generate15600%_
                             _%$%g1568216169%_
                             (fx1- _%d15664%_))))))
                   _%$%hd1568716163%_)
                  (_%$%g1566716142%_ _%$%g1567416146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1566716142%_
                                                   _%$%g1567416146%_))
                                              (_%$%g1566716142%_
                                               _%$%g1567416146%_))
                                          (_%$%g1566716142%_
                                           _%$%g1567416146%_))))
                                  (_%$%g1566716142%_ _%$%g1567416146%_))))
                           (_%$%g1566516284%_
                            (lambda (_%$%g1567416217%_)
                              (if (gx#stx-pair? _%$%g1567416217%_)
                                  (let ((_%$%e1567616220%_
                                         (gx#syntax-e _%$%g1567416217%_)))
                                    (let ((_%$%hd1567716224%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1567616220%_)))
                                          (_%$%tl1567816227%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1567616220%_))))
                                      (if (gx#identifier? _%$%hd1567716224%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g17933_|
                                               _%$%hd1567716224%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl1567816227%_)
                                                  (let ((_%$%e1567916230%_
                                                         (gx#syntax-e
                                                          _%$%tl1567816227%_)))
                                                    (let ((_%$%hd1568016234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1567916230%_)))
                                                          (_%$%tl1568116237%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1567916230%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl1568116237%_)
                                                          ((lambda (_%$%g1567516240%_)
                                                             (let* ((_%$%g1625316261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%g1625416257%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g1625416257%_)))
                            (_%$%g1625216280%_
                             (lambda (_%$%g1625416265%_)
                               ((lambda (_%$%g1625516268%_)
                                  (cons (gx#datum->syntax '#f 'list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quasiquote)
                                                          '()))
                                              (cons _%$%g1625516268%_ '()))))
                                _%$%g1625416265%_))))
                       (_%$%g1625216280%_
                        (_%generate15600%_
                         _%$%g1567516240%_
                         (fx1+ _%d15664%_)))))
                   _%$%hd1568016234%_)
                  (_%$%g1566616213%_ _%$%g1567416217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1566616213%_
                                                   _%$%g1567416217%_))
                                              (_%$%g1566616213%_
                                               _%$%g1567416217%_))
                                          (_%$%g1566616213%_
                                           _%$%g1567416217%_))))
                                  (_%$%g1566616213%_ _%$%g1567416217%_)))))
                      (_%$%g1566516284%_ _%e15662%_)))))
          (let* ((_%$%g1560215616%_
                  (lambda (_%$%g1560315612%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g1560315612%_)))
                 (_%$%g1560115658%_
                  (lambda (_%$%g1560315620%_)
                    (if (gx#stx-pair? _%$%g1560315620%_)
                        (let ((_%$%e1560515623%_
                               (gx#syntax-e _%$%g1560315620%_)))
                          (let ((_%$%hd1560615627%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1560515623%_)))
                                (_%$%tl1560715630%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1560515623%_))))
                            (if (gx#stx-pair? _%$%tl1560715630%_)
                                (let ((_%$%e1560815633%_
                                       (gx#syntax-e _%$%tl1560715630%_)))
                                  (let ((_%$%hd1560915637%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1560815633%_)))
                                        (_%$%tl1561015640%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1560815633%_))))
                                    (if (gx#stx-null? _%$%tl1561015640%_)
                                        ((lambda (_%$%g1560415643%_)
                                           (if (_%simple-quote?15598%_
                                                _%$%g1560415643%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%$%g1560415643%_
                                                           '()))
                                               (_%generate15600%_
                                                _%$%g1560415643%_
                                                '0)))
                                         _%$%hd1560915637%_)
                                        (_%$%g1560215616%_
                                         _%$%g1560315620%_))))
                                (_%$%g1560215616%_ _%$%g1560315620%_))))
                        (_%$%g1560215616%_ _%$%g1560315620%_)))))
            (_%$%g1560115658%_ _%stx15595%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx16526%_)
        (let* ((_%$%g1653216566%_
                (lambda (_%$%g1653316562%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1653316562%_)))
               (_%$%g1653116607%_
                (lambda (_%$%g1653316570%_)
                  (if (gx#stx-pair? _%$%g1653316570%_)
                      (let ((_%$%e1655516573%_
                             (gx#syntax-e _%$%g1653316570%_)))
                        (let ((_%$%hd1655616577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1655516573%_)))
                              (_%$%tl1655716580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1655516573%_))))
                          (if (gx#stx-pair? _%$%tl1655716580%_)
                              (let ((_%$%e1655816583%_
                                     (gx#syntax-e _%$%tl1655716580%_)))
                                (let ((_%$%hd1655916587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1655816583%_)))
                                      (_%$%tl1656016590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1655816583%_))))
                                  (if (gx#stx-null? _%$%tl1656016590%_)
                                      ((lambda (_%$%g1655416593%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-promise)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g1655416593%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%$%hd1655916587%_)
                                      (_%$%g1653216566%_ _%$%g1653316570%_))))
                              (_%$%g1653216566%_ _%$%g1653316570%_))))
                      (_%$%g1653216566%_ _%$%g1653316570%_))))
               (_%$%g1653016671%_
                (lambda (_%$%g1653316611%_)
                  (if (gx#stx-pair? _%$%g1653316611%_)
                      (let ((_%$%e1654216614%_
                             (gx#syntax-e _%$%g1653316611%_)))
                        (let ((_%$%hd1654316618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1654216614%_)))
                              (_%$%tl1654416621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1654216614%_))))
                          (if (gx#stx-pair? _%$%tl1654416621%_)
                              (let ((_%$%e1654516624%_
                                     (gx#syntax-e _%$%tl1654416621%_)))
                                (let ((_%$%hd1654616628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1654516624%_)))
                                      (_%$%tl1654716631%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1654516624%_))))
                                  (if (gx#stx-pair? _%$%hd1654616628%_)
                                      (let ((_%$%e1654816634%_
                                             (gx#syntax-e _%$%hd1654616628%_)))
                                        (let ((_%$%hd1654916638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1654816634%_)))
                                              (_%$%tl1655016641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1654816634%_))))
                                          (if (gx#identifier?
                                               _%$%hd1654916638%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g17934_|
                                                   _%$%hd1654916638%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl1655016641%_)
                                                      (let ((_%$%e1655116644%_
                                                             (gx#syntax-e
                                                              _%$%tl1655016641%_)))
                                                        (let ((_%$%hd1655216648%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e1655116644%_)))
                      (_%$%tl1655316651%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e1655116644%_))))
                  (if (gx#stx-null? _%$%tl1655316651%_)
                      (if (gx#stx-null? _%$%tl1654716631%_)
                          ((lambda (_%$%g1654116654%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%$%g1654116654%_ '())))
                           _%$%hd1655216648%_)
                          (_%$%g1653116607%_ _%$%g1653316611%_))
                      (_%$%g1653116607%_ _%$%g1653316611%_))))
              (_%$%g1653116607%_ _%$%g1653316611%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1653116607%_
                                                   _%$%g1653316611%_))
                                              (_%$%g1653116607%_
                                               _%$%g1653316611%_))))
                                      (_%$%g1653116607%_ _%$%g1653316611%_))))
                              (_%$%g1653116607%_ _%$%g1653316611%_))))
                      (_%$%g1653116607%_ _%$%g1653316611%_))))
               (_%$%g1652916711%_
                (lambda (_%$%g1653316675%_)
                  (if (gx#stx-pair? _%$%g1653316675%_)
                      (let ((_%$%e1653516678%_
                             (gx#syntax-e _%$%g1653316675%_)))
                        (let ((_%$%hd1653616682%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1653516678%_)))
                              (_%$%tl1653716685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1653516678%_))))
                          (if (gx#stx-pair? _%$%tl1653716685%_)
                              (let ((_%$%e1653816688%_
                                     (gx#syntax-e _%$%tl1653716685%_)))
                                (let ((_%$%hd1653916692%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1653816688%_)))
                                      (_%$%tl1654016695%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1653816688%_))))
                                  (if (gx#stx-null? _%$%tl1654016695%_)
                                      ((lambda (_%$%g1653416698%_)
                                         (if (gx#stx-datum? _%$%g1653416698%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%$%g1653416698%_
                                                         '()))
                                             (_%$%g1653016671%_
                                              _%$%g1653316675%_)))
                                       _%$%hd1653916692%_)
                                      (_%$%g1653016671%_ _%$%g1653316675%_))))
                              (_%$%g1653016671%_ _%$%g1653316675%_))))
                      (_%$%g1653016671%_ _%$%g1653316675%_)))))
          (_%$%g1652916711%_ _%$stx16526%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay-atomic|
      (lambda (_%$stx16715%_)
        (let* ((_%$%g1672116755%_
                (lambda (_%$%g1672216751%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1672216751%_)))
               (_%$%g1672016796%_
                (lambda (_%$%g1672216759%_)
                  (if (gx#stx-pair? _%$%g1672216759%_)
                      (let ((_%$%e1674416762%_
                             (gx#syntax-e _%$%g1672216759%_)))
                        (let ((_%$%hd1674516766%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1674416762%_)))
                              (_%$%tl1674616769%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1674416762%_))))
                          (if (gx#stx-pair? _%$%tl1674616769%_)
                              (let ((_%$%e1674716772%_
                                     (gx#syntax-e _%$%tl1674616769%_)))
                                (let ((_%$%hd1674816776%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1674716772%_)))
                                      (_%$%tl1674916779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1674716772%_))))
                                  (if (gx#stx-null? _%$%tl1674916779%_)
                                      ((lambda (_%$%g1674316782%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-atomic-promise)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g1674316782%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%$%hd1674816776%_)
                                      (_%$%g1672116755%_ _%$%g1672216759%_))))
                              (_%$%g1672116755%_ _%$%g1672216759%_))))
                      (_%$%g1672116755%_ _%$%g1672216759%_))))
               (_%$%g1671916860%_
                (lambda (_%$%g1672216800%_)
                  (if (gx#stx-pair? _%$%g1672216800%_)
                      (let ((_%$%e1673116803%_
                             (gx#syntax-e _%$%g1672216800%_)))
                        (let ((_%$%hd1673216807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1673116803%_)))
                              (_%$%tl1673316810%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1673116803%_))))
                          (if (gx#stx-pair? _%$%tl1673316810%_)
                              (let ((_%$%e1673416813%_
                                     (gx#syntax-e _%$%tl1673316810%_)))
                                (let ((_%$%hd1673516817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1673416813%_)))
                                      (_%$%tl1673616820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1673416813%_))))
                                  (if (gx#stx-pair? _%$%hd1673516817%_)
                                      (let ((_%$%e1673716823%_
                                             (gx#syntax-e _%$%hd1673516817%_)))
                                        (let ((_%$%hd1673816827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1673716823%_)))
                                              (_%$%tl1673916830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1673716823%_))))
                                          (if (gx#identifier?
                                               _%$%hd1673816827%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g17935_|
                                                   _%$%hd1673816827%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl1673916830%_)
                                                      (let ((_%$%e1674016833%_
                                                             (gx#syntax-e
                                                              _%$%tl1673916830%_)))
                                                        (let ((_%$%hd1674116837%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e1674016833%_)))
                      (_%$%tl1674216840%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e1674016833%_))))
                  (if (gx#stx-null? _%$%tl1674216840%_)
                      (if (gx#stx-null? _%$%tl1673616820%_)
                          ((lambda (_%$%g1673016843%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%$%g1673016843%_ '())))
                           _%$%hd1674116837%_)
                          (_%$%g1672016796%_ _%$%g1672216800%_))
                      (_%$%g1672016796%_ _%$%g1672216800%_))))
              (_%$%g1672016796%_ _%$%g1672216800%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1672016796%_
                                                   _%$%g1672216800%_))
                                              (_%$%g1672016796%_
                                               _%$%g1672216800%_))))
                                      (_%$%g1672016796%_ _%$%g1672216800%_))))
                              (_%$%g1672016796%_ _%$%g1672216800%_))))
                      (_%$%g1672016796%_ _%$%g1672216800%_))))
               (_%$%g1671816900%_
                (lambda (_%$%g1672216864%_)
                  (if (gx#stx-pair? _%$%g1672216864%_)
                      (let ((_%$%e1672416867%_
                             (gx#syntax-e _%$%g1672216864%_)))
                        (let ((_%$%hd1672516871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1672416867%_)))
                              (_%$%tl1672616874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1672416867%_))))
                          (if (gx#stx-pair? _%$%tl1672616874%_)
                              (let ((_%$%e1672716877%_
                                     (gx#syntax-e _%$%tl1672616874%_)))
                                (let ((_%$%hd1672816881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1672716877%_)))
                                      (_%$%tl1672916884%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1672716877%_))))
                                  (if (gx#stx-null? _%$%tl1672916884%_)
                                      ((lambda (_%$%g1672316887%_)
                                         (if (gx#stx-datum? _%$%g1672316887%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%$%g1672316887%_
                                                         '()))
                                             (_%$%g1671916860%_
                                              _%$%g1672216864%_)))
                                       _%$%hd1672816881%_)
                                      (_%$%g1671916860%_ _%$%g1672216864%_))))
                              (_%$%g1671916860%_ _%$%g1672216864%_))))
                      (_%$%g1671916860%_ _%$%g1672216864%_)))))
          (_%$%g1671816900%_ _%$stx16715%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx16904%_)
        (letrec ((_%generate16907%_
                  (lambda (_%rest17026%_)
                    (let _%lp17029%_ ((_%rest17032%_ _%rest17026%_)
                                      (_%hd17034%_ '())
                                      (_%body17035%_ '()))
                      (let* ((_%$%g1703817050%_
                              (lambda (_%$%g1703917046%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g1703917046%_)))
                             (_%$%g1703717061%_
                              (lambda (_%$%g1703917054%_)
                                ((lambda ()
                                   (values (reverse _%hd17034%_)
                                           (reverse _%body17035%_)
                                           '#f)))))
                             (_%$%g1703617147%_
                              (lambda (_%$%g1703917065%_)
                                (if (gx#stx-pair? _%$%g1703917065%_)
                                    (let ((_%$%e1704217068%_
                                           (gx#syntax-e _%$%g1703917065%_)))
                                      (let ((_%$%hd1704317072%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e1704217068%_)))
                                            (_%$%tl1704417075%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e1704217068%_))))
                                        ((lambda (_%$%g1704017078%_
                                                  _%$%g1704117080%_)
                                           (let* ((_%$%g1709717104%_
                                                   (lambda (_%$%g1709817100%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g1709817100%_)))
                                                  (_%$%g1709617115%_
                                                   (lambda (_%$%g1709817108%_)
                                                     ((lambda ()
                                                        (_%lp17029%_
                                                         _%$%g1704017078%_
                                                         _%hd17034%_
                                                         (cons _%$%g1704117080%_
                                                               _%body17035%_))))))
                                                  (_%$%g1709517129%_
                                                   (lambda (_%$%g1709817119%_)
                                                     (if (gx#identifier?
                                                          _%$%g1709817119%_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core/sugar~Sugar-2[1]#_g17936_|
                                                              _%$%g1709817119%_)
                                                             ((lambda ()
                                                                (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g1704017078%_)
                            (let ((_%tail17126%_ (gx#genident)))
                              (values (foldl cons _%tail17126%_ _%hd17034%_)
                                      (foldl cons
                                             (list _%tail17126%_)
                                             _%body17035%_)
                                      '#t))
                            (gx#raise-syntax-error
                             '#f
                             '"bad syntax; cut ellipsis <...> not in tail position"
                             _%stx16904%_
                             _%$%g1704117080%_))))
                     (_%$%g1709617115%_ _%$%g1709817119%_))
                 (_%$%g1709617115%_ _%$%g1709817119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1709417143%_
                                                   (lambda (_%$%g1709817133%_)
                                                     (if (gx#identifier?
                                                          _%$%g1709817133%_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core/sugar~Sugar-2[1]#_g17937_|
                                                              _%$%g1709817133%_)
                                                             ((lambda ()
                                                                (let ((_%arg17140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#genident)))
                          (_%lp17029%_
                           _%$%g1704017078%_
                           (cons _%arg17140%_ _%hd17034%_)
                           (cons _%arg17140%_ _%body17035%_)))))
                     (_%$%g1709517129%_ _%$%g1709817133%_))
                 (_%$%g1709517129%_ _%$%g1709817133%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g1709417143%_
                                              _%$%g1704117080%_)))
                                         _%$%tl1704417075%_
                                         _%$%hd1704317072%_)))
                                    (_%$%g1703717061%_ _%$%g1703917065%_)))))
                        (_%$%g1703617147%_ _%rest17032%_))))))
          (let* ((_%$%g1691016921%_
                  (lambda (_%$%g1691116917%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g1691116917%_)))
                 (_%$%g1690917022%_
                  (lambda (_%$%g1691116925%_)
                    (if (gx#stx-pair? _%$%g1691116925%_)
                        (let ((_%$%e1691316928%_
                               (gx#syntax-e _%$%g1691116925%_)))
                          (let ((_%$%hd1691416932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1691316928%_)))
                                (_%$%tl1691516935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1691316928%_))))
                            ((lambda (_%$%g1691216938%_)
                               (if (and (gx#stx-list? _%$%g1691216938%_)
                                        (not (gx#stx-null? _%$%g1691216938%_)))
                                   (let ((_g17938_
                                          (_%generate16907%_
                                           _%$%g1691216938%_)))
                                     (begin
                                       (let ((_g17939_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g17938_)
                                                    (##values-length _g17938_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g17939_ 3)))
                                             (error "Context expects 3 values"
                                                    _g17939_)))
                                       (let ((_%hd16951%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g17938_ 0)))
                                             (_%body16953%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g17938_ 1)))
                                             (_%tail?16954%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g17938_ 2))))
                                         (let* ((_%$%g1695616964%_
                                                 (lambda (_%$%g1695716960%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g1695716960%_)))
                                                (_%$%g1695517018%_
                                                 (lambda (_%$%g1695716968%_)
                                                   ((lambda (_%$%g1695816971%_)
                                                      (let* ((_%$%g1698416992%_
                                                              (lambda (_%$%g1698516988%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g1698516988%_)))
                     (_%$%g1698317014%_
                      (lambda (_%$%g1698516996%_)
                        ((lambda (_%$%g1698616999%_)
                           (if _%tail?16954%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%$%g1695816971%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%$%g1698616999%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%$%g1695816971%_
                                           (cons _%$%g1698616999%_ '())))))
                         _%$%g1698516996%_))))
                (_%$%g1698317014%_ _%body16953%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%g1695716968%_))))
                                           (_%$%g1695517018%_ _%hd16951%_)))))
                                   (_%$%g1691016921%_ _%$%g1691116925%_)))
                             _%$%tl1691516935%_)))
                        (_%$%g1691016921%_ _%$%g1691116925%_)))))
            (_%$%g1690917022%_ _%stx16904%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17152%_)
        (let ((_%$%g1715517162%_
               (lambda (_%$%g1715617158%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g1715617158%_))))
          (_%$%g1715517162%_ _%$stx17152%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17166%_)
        (let ((_%$%g1716917176%_
               (lambda (_%$%g1717017172%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g1717017172%_))))
          (_%$%g1716917176%_ _%$stx17166%_))))))
