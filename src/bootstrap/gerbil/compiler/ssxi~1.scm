(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g232863_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232870_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232872_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232874_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232876_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232878_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232890_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232892_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232894_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232896_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232898_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx226321%_)
        (let* ((_%g226325226343%_
                (lambda (_%g226326226339%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226326226339%_))))
               (_%g226324226398%_
                (lambda (_%g226326226347%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226326226347%_))
                      (let ((_%e226329226350%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226326226347%_))))
                        (let ((_%hd226330226354%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226329226350%_)))
                              (_%tl226331226357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226329226350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226331226357%_))
                              (let ((_%e226332226360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226331226357%_))))
                                (let ((_%hd226333226364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226332226360%_)))
                                      (_%tl226334226367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226332226360%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226334226367%_))
                                      (let ((_%e226335226370%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226334226367%_))))
                                        (let ((_%hd226336226374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226335226370%_)))
                                              (_%tl226337226377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226335226370%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226337226377%_))
                                              ((lambda (_%g226327226380%_
                                                        _%g226328226382%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226328226382%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g226328226382%_ '()))
                         (cons _%g226327226380%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226325226343%_
                                                      _%g226326226347%_)))
                                               _%hd226336226374%_
                                               _%hd226333226364%_)
                                              (_%g226325226343%_
                                               _%g226326226347%_))))
                                      (_%g226325226343%_ _%g226326226347%_))))
                              (_%g226325226343%_ _%g226326226347%_))))
                      (_%g226325226343%_ _%g226326226347%_)))))
          (_%g226324226398%_ _%$stx226321%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx226402%_)
        (let* ((_%g226406226424%_
                (lambda (_%g226407226420%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226407226420%_))))
               (_%g226405226479%_
                (lambda (_%g226407226428%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226407226428%_))
                      (let ((_%e226410226431%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226407226428%_))))
                        (let ((_%hd226411226435%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226410226431%_)))
                              (_%tl226412226438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226410226431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226412226438%_))
                              (let ((_%e226413226441%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226412226438%_))))
                                (let ((_%hd226414226445%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226413226441%_)))
                                      (_%tl226415226448%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226413226441%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226415226448%_))
                                      (let ((_%e226416226451%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226415226448%_))))
                                        (let ((_%hd226417226455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226416226451%_)))
                                              (_%tl226418226458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226416226451%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226418226458%_))
                                              ((lambda (_%g226408226461%_
                                                        _%g226409226463%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226409226463%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g226409226463%_ '()))
                         (cons _%g226408226461%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226406226424%_
                                                      _%g226407226428%_)))
                                               _%hd226417226455%_
                                               _%hd226414226445%_)
                                              (_%g226406226424%_
                                               _%g226407226428%_))))
                                      (_%g226406226424%_ _%g226407226428%_))))
                              (_%g226406226424%_ _%g226407226428%_))))
                      (_%g226406226424%_ _%g226407226428%_)))))
          (_%g226405226479%_ _%$stx226402%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx226483%_)
        (let* ((_%g226487226516%_
                (lambda (_%g226488226512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226488226512%_))))
               (_%g226486226612%_
                (lambda (_%g226488226520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226488226520%_))
                      (let ((_%e226491226523%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226488226520%_))))
                        (let ((_%hd226492226527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226491226523%_)))
                              (_%tl226493226530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226491226523%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226493226530%_))
                              (let ((_g232841_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226493226530%_
                                        '0))))
                                (begin
                                  (let ((_g232842_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232841_)
                                               (##values-length _g232841_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232842_ 2)))
                                        (error "Context expects 2 values"
                                               _g232842_)))
                                  (let ((_%target226494226533%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232841_ 0)))
                                        (_%tl226496226536%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232841_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226496226536%_))
                                        (letrec ((_%loop226497226539%_
                                                  (lambda (_%hd226495226543%_
                                                           _%type226501226546%_
                                                           _%symbol226502226547%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226495226543%_))
                                                        (let ((_%e226498226549%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226495226543%_))))
                  (let ((_%lp-hd226499226553%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226498226549%_)))
                        (_%lp-tl226500226556%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226498226549%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226499226553%_))
                        (let ((_%e226505226559%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226499226553%_))))
                          (let ((_%hd226506226563%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226505226559%_)))
                                (_%tl226507226566%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226505226559%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226507226566%_))
                                (let ((_%e226508226569%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226507226566%_))))
                                  (let ((_%hd226509226573%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226508226569%_)))
                                        (_%tl226510226576%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226508226569%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226510226576%_))
                                        (_%loop226497226539%_
                                         _%lp-tl226500226556%_
                                         (cons _%hd226509226573%_
                                               _%type226501226546%_)
                                         (cons _%hd226506226563%_
                                               _%symbol226502226547%_))
                                        (_%g226487226516%_
                                         _%g226488226520%_))))
                                (_%g226487226516%_ _%g226488226520%_))))
                        (_%g226487226516%_ _%g226488226520%_))))
                (let ((_%type226503226579%_ (reverse _%type226501226546%_))
                      (_%symbol226504226581%_
                       (reverse _%symbol226502226547%_)))
                  ((lambda (_%g226489226583%_ _%g226490226585%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226489226583%_
                                _%g226490226585%_))
                             (let ((__tmp232843
                                    (lambda (_%g226600226604%_
                                             _%g226601226607%_
                                             _%g226602226609%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g226601226607%_
                                                        (cons _%g226600226604%_
                                                              '())))
                                            _%g226602226609%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232843
                                '()
                                _%g226489226583%_
                                _%g226490226585%_)))))
                   _%type226503226579%_
                   _%symbol226504226581%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226497226539%_
                                           _%target226494226533%_
                                           '()
                                           '()))
                                        (_%g226487226516%_
                                         _%g226488226520%_)))))
                              (_%g226487226516%_ _%g226488226520%_))))
                      (_%g226487226516%_ _%g226488226520%_)))))
          (_%g226486226612%_ _%$stx226483%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx226617%_)
        (let* ((_%__stx232152232153%_ _%$stx226617%_)
               (_%g226622226664%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232152232153%_)))))
          (let ((_%__kont232155232156%_
                 (lambda (_%g226624226792%_
                          _%g226625226794%_
                          _%g226626226795%_
                          _%g226627226796%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g226627226796%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g226626226795%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g226625226794%_ '()))
                                           (cons _%g226624226792%_ '())))))))
                (_%__kont232157232158%_
                 (lambda (_%g226643226711%_
                          _%g226644226713%_
                          _%g226645226714%_
                          _%g226646226715%_)
                   (cons _%g226646226715%_
                         (cons _%g226645226714%_
                               (cons _%g226644226713%_
                                     (cons _%g226643226711%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match232191232192%_
                   (lambda (_%e226628226742%_
                            _%hd226629226746%_
                            _%tl226630226749%_
                            _%e226631226752%_
                            _%hd226632226756%_
                            _%tl226633226759%_
                            _%e226634226762%_
                            _%hd226635226766%_
                            _%tl226636226769%_
                            _%e226637226772%_
                            _%hd226638226776%_
                            _%tl226639226779%_
                            _%e226640226782%_
                            _%hd226641226786%_
                            _%tl226642226789%_)
                     (let ((_%g226624226792%_ _%hd226641226786%_)
                           (_%g226625226794%_ _%hd226638226776%_)
                           (_%g226626226795%_ _%hd226635226766%_)
                           (_%g226627226796%_ _%hd226632226756%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226627226796%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226626226795%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226625226794%_)))
                           (_%__kont232155232156%_
                            _%g226624226792%_
                            _%g226625226794%_
                            _%g226626226795%_
                            _%g226627226796%_)
                           (let ()
                             (declare (not safe))
                             (_%g226622226664%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232152232153%_))
                  (let ((_%e226628226742%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232152232153%_))))
                    (let ((_%tl226630226749%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226628226742%_)))
                          (_%hd226629226746%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226628226742%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226630226749%_))
                          (let ((_%e226631226752%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl226630226749%_))))
                            (let ((_%tl226633226759%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226631226752%_)))
                                  (_%hd226632226756%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226631226752%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl226633226759%_))
                                  (let ((_%e226634226762%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl226633226759%_))))
                                    (let ((_%tl226636226769%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e226634226762%_)))
                                          (_%hd226635226766%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e226634226762%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226636226769%_))
                                          (let ((_%e226637226772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl226636226769%_))))
                                            (let ((_%tl226639226779%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226637226772%_)))
                                                  (_%hd226638226776%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226637226772%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl226639226779%_))
                                                  (let ((_%e226640226782%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl226639226779%_))))
                                                    (let ((_%tl226642226789%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226640226782%_)))
                                                          (_%hd226641226786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226640226782%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl226642226789%_))
                                                          (_%__match232191232192%_
                                                           _%e226628226742%_
                                                           _%hd226629226746%_
                                                           _%tl226630226749%_
                                                           _%e226631226752%_
                                                           _%hd226632226756%_
                                                           _%tl226633226759%_
                                                           _%e226634226762%_
                                                           _%hd226635226766%_
                                                           _%tl226636226769%_
                                                           _%e226637226772%_
                                                           _%hd226638226776%_
                                                           _%tl226639226779%_
                                                           _%e226640226782%_
                                                           _%hd226641226786%_
                                                           _%tl226642226789%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g226622226664%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl226639226779%_))
                                                      (_%__kont232157232158%_
                                                       _%hd226638226776%_
                                                       _%hd226635226766%_
                                                       _%hd226632226756%_
                                                       _%hd226629226746%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g226622226664%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g226622226664%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g226622226664%_)))))
                          (let () (declare (not safe)) (_%g226622226664%_)))))
                  (let () (declare (not safe)) (_%g226622226664%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx226821%_)
        (let* ((_%g226825226860%_
                (lambda (_%g226826226856%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226826226856%_))))
               (_%g226824226973%_
                (lambda (_%g226826226864%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226826226864%_))
                      (let ((_%e226830226867%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226826226864%_))))
                        (let ((_%hd226831226871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226830226867%_)))
                              (_%tl226832226874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226830226867%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226832226874%_))
                              (let ((_g232844_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226832226874%_
                                        '0))))
                                (begin
                                  (let ((_g232845_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232844_)
                                               (##values-length _g232844_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232845_ 2)))
                                        (error "Context expects 2 values"
                                               _g232845_)))
                                  (let ((_%target226833226877%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232844_ 0)))
                                        (_%tl226835226880%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232844_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226835226880%_))
                                        (letrec ((_%loop226836226883%_
                                                  (lambda (_%hd226834226887%_
                                                           _%symbol226840226890%_
                                                           _%method226841226891%_
                                                           _%type-t226842226892%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226834226887%_))
                                                        (let ((_%e226837226894%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226834226887%_))))
                  (let ((_%lp-hd226838226898%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226837226894%_)))
                        (_%lp-tl226839226901%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226837226894%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226838226898%_))
                        (let ((_%e226846226904%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226838226898%_))))
                          (let ((_%hd226847226908%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226846226904%_)))
                                (_%tl226848226911%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226846226904%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226848226911%_))
                                (let ((_%e226849226914%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226848226911%_))))
                                  (let ((_%hd226850226918%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226849226914%_)))
                                        (_%tl226851226921%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226849226914%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl226851226921%_))
                                        (let ((_%e226852226924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl226851226921%_))))
                                          (let ((_%hd226853226928%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226852226924%_)))
                                                (_%tl226854226931%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226852226924%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226854226931%_))
                                                (_%loop226836226883%_
                                                 _%lp-tl226839226901%_
                                                 (cons _%hd226853226928%_
                                                       _%symbol226840226890%_)
                                                 (cons _%hd226850226918%_
                                                       _%method226841226891%_)
                                                 (cons _%hd226847226908%_
                                                       _%type-t226842226892%_))
                                                (_%g226825226860%_
                                                 _%g226826226864%_))))
                                        (_%g226825226860%_
                                         _%g226826226864%_))))
                                (_%g226825226860%_ _%g226826226864%_))))
                        (_%g226825226860%_ _%g226826226864%_))))
                (let ((_%symbol226843226934%_ (reverse _%symbol226840226890%_))
                      (_%method226844226936%_ (reverse _%method226841226891%_))
                      (_%type-t226845226937%_
                       (reverse _%type-t226842226892%_)))
                  ((lambda (_%g226827226939%_
                            _%g226828226941%_
                            _%g226829226942%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226827226939%_
                                _%g226828226941%_
                                _%g226829226942%_))
                             (let ((__tmp232846
                                    (lambda (_%g226958226963%_
                                             _%g226959226966%_
                                             _%g226960226968%_
                                             _%g226961226970%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g226960226968%_
                                                        (cons _%g226959226966%_
                                                              (cons _%g226958226963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g226961226970%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp232846
                                '()
                                _%g226827226939%_
                                _%g226828226941%_
                                _%g226829226942%_)))))
                   _%symbol226843226934%_
                   _%method226844226936%_
                   _%type-t226845226937%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226836226883%_
                                           _%target226833226877%_
                                           '()
                                           '()
                                           '()))
                                        (_%g226825226860%_
                                         _%g226826226864%_)))))
                              (_%g226825226860%_ _%g226826226864%_))))
                      (_%g226825226860%_ _%g226826226864%_)))))
          (_%g226824226973%_ _%$stx226821%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx226978%_)
        (let* ((_%g226982227015%_
                (lambda (_%g226983227011%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226983227011%_))))
               (_%g226981227125%_
                (lambda (_%g226983227019%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226983227019%_))
                      (let ((_%e226987227022%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226983227019%_))))
                        (let ((_%hd226988227026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226987227022%_)))
                              (_%tl226989227029%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226987227022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226989227029%_))
                              (let ((_%e226990227032%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226989227029%_))))
                                (let ((_%hd226991227036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226990227032%_)))
                                      (_%tl226992227039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226990227032%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl226992227039%_))
                                      (let ((_g232847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl226992227039%_
                                                '0))))
                                        (begin
                                          (let ((_g232848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232847_)
                                                       (##values-length
                                                        _g232847_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232848_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232848_)))
                                          (let ((_%target226993227042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232847_ 0)))
                                                (_%tl226995227045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232847_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226995227045%_))
                                                (letrec ((_%loop226996227048%_
                                                          (lambda (_%hd226994227052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol227000227055%_
                           _%method227001227056%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd226994227052%_))
                        (let ((_%e226997227058%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd226994227052%_))))
                          (let ((_%lp-hd226998227062%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226997227058%_)))
                                (_%lp-tl226999227065%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226997227058%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd226998227062%_))
                                (let ((_%e227004227068%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd226998227062%_))))
                                  (let ((_%hd227005227072%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227004227068%_)))
                                        (_%tl227006227075%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227004227068%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl227006227075%_))
                                        (let ((_%e227007227078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl227006227075%_))))
                                          (let ((_%hd227008227082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e227007227078%_)))
                                                (_%tl227009227085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e227007227078%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl227009227085%_))
                                                (_%loop226996227048%_
                                                 _%lp-tl226999227065%_
                                                 (cons _%hd227008227082%_
                                                       _%symbol227000227055%_)
                                                 (cons _%hd227005227072%_
                                                       _%method227001227056%_))
                                                (_%g226982227015%_
                                                 _%g226983227019%_))))
                                        (_%g226982227015%_
                                         _%g226983227019%_))))
                                (_%g226982227015%_ _%g226983227019%_))))
                        (let ((_%symbol227002227088%_
                               (reverse _%symbol227000227055%_))
                              (_%method227003227090%_
                               (reverse _%method227001227056%_)))
                          ((lambda (_%g226984227092%_
                                    _%g226985227094%_
                                    _%g226986227095%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g226984227092%_
                                        _%g226985227094%_))
                                     (let ((__tmp232849
                                            (lambda (_%g227113227117%_
                                                     _%g227114227120%_
                                                     _%g227115227122%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g226986227095%_
                                                                (cons _%g227114227120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g227113227117%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g227115227122%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp232849
                                        '()
                                        _%g226984227092%_
                                        _%g226985227094%_)))))
                           _%symbol227002227088%_
                           _%method227003227090%_
                           _%hd226991227036%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop226996227048%_
                                                   _%target226993227042%_
                                                   '()
                                                   '()))
                                                (_%g226982227015%_
                                                 _%g226983227019%_)))))
                                      (_%g226982227015%_ _%g226983227019%_))))
                              (_%g226982227015%_ _%g226983227019%_))))
                      (_%g226982227015%_ _%g226983227019%_)))))
          (_%g226981227125%_ _%$stx226978%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx227130%_)
        (let* ((_%g227134227148%_
                (lambda (_%g227135227144%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227135227144%_))))
               (_%g227133227189%_
                (lambda (_%g227135227152%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227135227152%_))
                      (let ((_%e227137227155%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227135227152%_))))
                        (let ((_%hd227138227159%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227137227155%_)))
                              (_%tl227139227162%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227137227155%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227139227162%_))
                              (let ((_%e227140227165%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227139227162%_))))
                                (let ((_%hd227141227169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227140227165%_)))
                                      (_%tl227142227172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227140227165%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227142227172%_))
                                      ((lambda (_%g227136227175%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g227136227175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227141227169%_)
                                      (_%g227134227148%_ _%g227135227152%_))))
                              (_%g227134227148%_ _%g227135227152%_))))
                      (_%g227134227148%_ _%g227135227152%_)))))
          (_%g227133227189%_ _%$stx227130%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx227193%_)
        (let* ((_%g227197227251%_
                (lambda (_%g227198227247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227198227247%_))))
               (_%g227196227432%_
                (lambda (_%g227198227255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227198227255%_))
                      (let ((_%e227210227258%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227198227255%_))))
                        (let ((_%hd227211227262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227210227258%_)))
                              (_%tl227212227265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227210227258%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227212227265%_))
                              (let ((_%e227213227268%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227212227265%_))))
                                (let ((_%hd227214227272%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227213227268%_)))
                                      (_%tl227215227275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227213227268%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227215227275%_))
                                      (let ((_%e227216227278%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227215227275%_))))
                                        (let ((_%hd227217227282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227216227278%_)))
                                              (_%tl227218227285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227216227278%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227218227285%_))
                                              (let ((_%e227219227288%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227218227285%_))))
                                                (let ((_%hd227220227292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227219227288%_)))
                                                      (_%tl227221227295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227219227288%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227221227295%_))
                                                      (let ((_%e227222227298%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227221227295%_))))
                (let ((_%hd227223227302%_
                       (let () (declare (not safe)) (##car _%e227222227298%_)))
                      (_%tl227224227305%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227222227298%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227224227305%_))
                      (let ((_%e227225227308%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227224227305%_))))
                        (let ((_%hd227226227312%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227225227308%_)))
                              (_%tl227227227315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227225227308%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227227227315%_))
                              (let ((_%e227228227318%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227227227315%_))))
                                (let ((_%hd227229227322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227228227318%_)))
                                      (_%tl227230227325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227228227318%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227230227325%_))
                                      (let ((_%e227231227328%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227230227325%_))))
                                        (let ((_%hd227232227332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227231227328%_)))
                                              (_%tl227233227335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227231227328%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227233227335%_))
                                              (let ((_%e227234227338%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227233227335%_))))
                                                (let ((_%hd227235227342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227234227338%_)))
                                                      (_%tl227236227345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227234227338%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227236227345%_))
                                                      (let ((_%e227237227348%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227236227345%_))))
                (let ((_%hd227238227352%_
                       (let () (declare (not safe)) (##car _%e227237227348%_)))
                      (_%tl227239227355%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227237227348%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227239227355%_))
                      (let ((_%e227240227358%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227239227355%_))))
                        (let ((_%hd227241227362%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227240227358%_)))
                              (_%tl227242227365%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227240227358%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227242227365%_))
                              (let ((_%e227243227368%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227242227365%_))))
                                (let ((_%hd227244227372%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227243227368%_)))
                                      (_%tl227245227375%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227243227368%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227245227375%_))
                                      ((lambda (_%g227199227378%_
                                                _%g227200227380%_
                                                _%g227201227381%_
                                                _%g227202227382%_
                                                _%g227203227383%_
                                                _%g227204227384%_
                                                _%g227205227385%_
                                                _%g227206227386%_
                                                _%g227207227387%_
                                                _%g227208227388%_
                                                _%g227209227389%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g227209227389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g227208227388%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g227207227387%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227206227386%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227205227385%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g227204227384%_ '()))
                                           (cons _%g227203227383%_
                                                 (cons _%g227202227382%_
                                                       (cons _%g227201227381%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227200227380%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g227199227378%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd227244227372%_
                                       _%hd227241227362%_
                                       _%hd227238227352%_
                                       _%hd227235227342%_
                                       _%hd227232227332%_
                                       _%hd227229227322%_
                                       _%hd227226227312%_
                                       _%hd227223227302%_
                                       _%hd227220227292%_
                                       _%hd227217227282%_
                                       _%hd227214227272%_)
                                      (_%g227197227251%_ _%g227198227255%_))))
                              (_%g227197227251%_ _%g227198227255%_))))
                      (_%g227197227251%_ _%g227198227255%_))))
              (_%g227197227251%_ _%g227198227255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227197227251%_
                                               _%g227198227255%_))))
                                      (_%g227197227251%_ _%g227198227255%_))))
                              (_%g227197227251%_ _%g227198227255%_))))
                      (_%g227197227251%_ _%g227198227255%_))))
              (_%g227197227251%_ _%g227198227255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227197227251%_
                                               _%g227198227255%_))))
                                      (_%g227197227251%_ _%g227198227255%_))))
                              (_%g227197227251%_ _%g227198227255%_))))
                      (_%g227197227251%_ _%g227198227255%_)))))
          (_%g227196227432%_ _%$stx227193%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx227436%_)
        (let* ((_%g227440227454%_
                (lambda (_%g227441227450%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227441227450%_))))
               (_%g227439227495%_
                (lambda (_%g227441227458%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227441227458%_))
                      (let ((_%e227443227461%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227441227458%_))))
                        (let ((_%hd227444227465%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227443227461%_)))
                              (_%tl227445227468%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227443227461%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227445227468%_))
                              (let ((_%e227446227471%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227445227468%_))))
                                (let ((_%hd227447227475%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227446227471%_)))
                                      (_%tl227448227478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227446227471%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227448227478%_))
                                      ((lambda (_%g227442227481%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g227442227481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227447227475%_)
                                      (_%g227440227454%_ _%g227441227458%_))))
                              (_%g227440227454%_ _%g227441227458%_))))
                      (_%g227440227454%_ _%g227441227458%_)))))
          (_%g227439227495%_ _%$stx227436%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx227499%_)
        (let* ((_%g227503227517%_
                (lambda (_%g227504227513%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227504227513%_))))
               (_%g227502227558%_
                (lambda (_%g227504227521%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227504227521%_))
                      (let ((_%e227506227524%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227504227521%_))))
                        (let ((_%hd227507227528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227506227524%_)))
                              (_%tl227508227531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227506227524%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227508227531%_))
                              (let ((_%e227509227534%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227508227531%_))))
                                (let ((_%hd227510227538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227509227534%_)))
                                      (_%tl227511227541%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227509227534%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227511227541%_))
                                      ((lambda (_%g227505227544%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g227505227544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227510227538%_)
                                      (_%g227503227517%_ _%g227504227521%_))))
                              (_%g227503227517%_ _%g227504227521%_))))
                      (_%g227503227517%_ _%g227504227521%_)))))
          (_%g227502227558%_ _%$stx227499%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx227562%_)
        (let* ((_%g227566227588%_
                (lambda (_%g227567227584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227567227584%_))))
               (_%g227565227657%_
                (lambda (_%g227567227592%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227567227592%_))
                      (let ((_%e227571227595%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227567227592%_))))
                        (let ((_%hd227572227599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227571227595%_)))
                              (_%tl227573227602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227571227595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227573227602%_))
                              (let ((_%e227574227605%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227573227602%_))))
                                (let ((_%hd227575227609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227574227605%_)))
                                      (_%tl227576227612%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227574227605%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227576227612%_))
                                      (let ((_%e227577227615%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227576227612%_))))
                                        (let ((_%hd227578227619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227577227615%_)))
                                              (_%tl227579227622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227577227615%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227579227622%_))
                                              (let ((_%e227580227625%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227579227622%_))))
                                                (let ((_%hd227581227629%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227580227625%_)))
                                                      (_%tl227582227632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227580227625%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227582227632%_))
                                                      ((lambda (_%g227568227635%_
                                                                _%g227569227637%_
                                                                _%g227570227638%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227570227638%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227569227637%_ '()))
                                   (cons _%g227568227635%_ '())))))
               _%hd227581227629%_
               _%hd227578227619%_
               _%hd227575227609%_)
              (_%g227566227588%_ _%g227567227592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227566227588%_
                                               _%g227567227592%_))))
                                      (_%g227566227588%_ _%g227567227592%_))))
                              (_%g227566227588%_ _%g227567227592%_))))
                      (_%g227566227588%_ _%g227567227592%_)))))
          (_%g227565227657%_ _%$stx227562%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx227661%_)
        (let* ((_%g227665227687%_
                (lambda (_%g227666227683%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227666227683%_))))
               (_%g227664227756%_
                (lambda (_%g227666227691%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227666227691%_))
                      (let ((_%e227670227694%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227666227691%_))))
                        (let ((_%hd227671227698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227670227694%_)))
                              (_%tl227672227701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227670227694%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227672227701%_))
                              (let ((_%e227673227704%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227672227701%_))))
                                (let ((_%hd227674227708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227673227704%_)))
                                      (_%tl227675227711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227673227704%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227675227711%_))
                                      (let ((_%e227676227714%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227675227711%_))))
                                        (let ((_%hd227677227718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227676227714%_)))
                                              (_%tl227678227721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227676227714%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227678227721%_))
                                              (let ((_%e227679227724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227678227721%_))))
                                                (let ((_%hd227680227728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227679227724%_)))
                                                      (_%tl227681227731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227679227724%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227681227731%_))
                                                      ((lambda (_%g227667227734%_
                                                                _%g227668227736%_
                                                                _%g227669227737%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227669227737%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227668227736%_ '()))
                                   (cons _%g227667227734%_ '())))))
               _%hd227680227728%_
               _%hd227677227718%_
               _%hd227674227708%_)
              (_%g227665227687%_ _%g227666227691%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227665227687%_
                                               _%g227666227691%_))))
                                      (_%g227665227687%_ _%g227666227691%_))))
                              (_%g227665227687%_ _%g227666227691%_))))
                      (_%g227665227687%_ _%g227666227691%_)))))
          (_%g227664227756%_ _%$stx227661%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx227760%_)
        (let* ((_%g227764227778%_
                (lambda (_%g227765227774%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227765227774%_))))
               (_%g227763227819%_
                (lambda (_%g227765227782%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227765227782%_))
                      (let ((_%e227767227785%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227765227782%_))))
                        (let ((_%hd227768227789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227767227785%_)))
                              (_%tl227769227792%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227767227785%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227769227792%_))
                              (let ((_%e227770227795%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227769227792%_))))
                                (let ((_%hd227771227799%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227770227795%_)))
                                      (_%tl227772227802%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227770227795%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227772227802%_))
                                      ((lambda (_%g227766227805%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g227766227805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227771227799%_)
                                      (_%g227764227778%_ _%g227765227782%_))))
                              (_%g227764227778%_ _%g227765227782%_))))
                      (_%g227764227778%_ _%g227765227782%_)))))
          (_%g227763227819%_ _%$stx227760%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx227823%_)
        (let* ((_%g227827227845%_
                (lambda (_%g227828227841%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227828227841%_))))
               (_%g227826227900%_
                (lambda (_%g227828227849%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227828227849%_))
                      (let ((_%e227831227852%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227828227849%_))))
                        (let ((_%hd227832227856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227831227852%_)))
                              (_%tl227833227859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227831227852%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227833227859%_))
                              (let ((_%e227834227862%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227833227859%_))))
                                (let ((_%hd227835227866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227834227862%_)))
                                      (_%tl227836227869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227834227862%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227836227869%_))
                                      (let ((_%e227837227872%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227836227869%_))))
                                        (let ((_%hd227838227876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227837227872%_)))
                                              (_%tl227839227879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227837227872%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl227839227879%_))
                                              ((lambda (_%g227829227882%_
                                                        _%g227830227884%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g227830227884%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227829227882%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd227838227876%_
                                               _%hd227835227866%_)
                                              (_%g227827227845%_
                                               _%g227828227849%_))))
                                      (_%g227827227845%_ _%g227828227849%_))))
                              (_%g227827227845%_ _%g227828227849%_))))
                      (_%g227827227845%_ _%g227828227849%_)))))
          (_%g227826227900%_ _%$stx227823%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx227904%_)
        (let* ((_%__stx232220232221%_ _%$stx227904%_)
               (_%g227911227972%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232220232221%_)))))
          (let ((_%__kont232223232224%_
                 (lambda (_%g227913228210%_ _%g227914228212%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227914228212%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227913228210%_ '()))
                                     '())))))
                (_%__kont232225232226%_
                 (lambda (_%g227924228149%_
                          _%g227925228151%_
                          _%g227926228152%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227926228152%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227925228151%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227924228149%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont232227232228%_
                 (lambda (_%g227943228073%_ _%g227944228075%_)
                   (cons _%g227944228075%_
                         (cons _%g227943228073%_ (cons '#f '())))))
                (_%__kont232229232230%_
                 (lambda (_%g227951228023%_
                          _%g227952228025%_
                          _%g227953228026%_)
                   (cons _%g227953228026%_
                         (cons _%g227952228025%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g227951228023%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232220232221%_))
                (let ((_%e227915228180%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232220232221%_))))
                  (let ((_%tl227917228187%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227915228180%_)))
                        (_%hd227916228184%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227915228180%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl227917228187%_))
                        (let ((_%e227918228190%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl227917228187%_))))
                          (let ((_%tl227920228197%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227918228190%_)))
                                (_%hd227919228194%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227918228190%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl227920228197%_))
                                (let ((_%e227921228200%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl227920228197%_))))
                                  (let ((_%tl227923228207%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227921228200%_)))
                                        (_%hd227922228204%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227921228200%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl227923228207%_))
                                        (_%__kont232223232224%_
                                         _%hd227922228204%_
                                         _%hd227919228194%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl227923228207%_))
                                            (let ((_%e227936228125%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl227923228207%_))))
                                              (let ((_%tl227938228132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227936228125%_)))
                                                    (_%hd227937228129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227936228125%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd227937228129%_))
                                                    (let ((_%e227939228135%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd227937228129%_))))
                                                      (if (equal? _%e227939228135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227938228132%_))
                      (let ((_%e227940228139%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227938228132%_))))
                        (let ((_%tl227942228146%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227940228139%_)))
                              (_%hd227941228143%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227940228139%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl227942228146%_))
                              (_%__kont232225232226%_
                               _%hd227941228143%_
                               _%hd227922228204%_
                               _%hd227919228194%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd227922228204%_))
                                  (let ((_%e227963228009%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd227922228204%_))))
                                    (declare (not safe))
                                    (_%g227911227972%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g227911227972%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd227922228204%_))
                          (let ((_%e227963228009%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd227922228204%_))))
                            (if (equal? _%e227963228009%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227938228132%_))
                                    (_%__kont232229232230%_
                                     _%hd227937228129%_
                                     _%hd227919228194%_
                                     _%hd227916228184%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227911227972%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g227911227972%_))))
                          (let () (declare (not safe)) (_%g227911227972%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd227922228204%_))
                      (let ((_%e227963228009%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd227922228204%_))))
                        (if (equal? _%e227963228009%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl227938228132%_))
                                (_%__kont232229232230%_
                                 _%hd227937228129%_
                                 _%hd227919228194%_
                                 _%hd227916228184%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g227911227972%_)))
                            (let () (declare (not safe)) (_%g227911227972%_))))
                      (let () (declare (not safe)) (_%g227911227972%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd227922228204%_))
                                                        (let ((_%e227963228009%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd227922228204%_))))
                  (if (equal? _%e227963228009%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl227938228132%_))
                          (_%__kont232229232230%_
                           _%hd227937228129%_
                           _%hd227919228194%_
                           _%hd227916228184%_)
                          (let () (declare (not safe)) (_%g227911227972%_)))
                      (let () (declare (not safe)) (_%g227911227972%_))))
                (let () (declare (not safe)) (_%g227911227972%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd227922228204%_))
                                                (let ((_%e227963228009%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd227922228204%_))))
                                                  (declare (not safe))
                                                  (_%g227911227972%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g227911227972%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227920228197%_))
                                    (_%__kont232227232228%_
                                     _%hd227919228194%_
                                     _%hd227916228184%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227911227972%_))))))
                        (let () (declare (not safe)) (_%g227911227972%_)))))
                (let () (declare (not safe)) (_%g227911227972%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx228231%_)
        (let* ((_%g228235228264%_
                (lambda (_%g228236228260%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228236228260%_))))
               (_%g228234228369%_
                (lambda (_%g228236228268%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228236228268%_))
                      (let ((_%e228238228271%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228236228268%_))))
                        (let ((_%hd228239228275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228238228271%_)))
                              (_%tl228240228278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228238228271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228240228278%_))
                              (let ((_g232850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228240228278%_
                                        '0))))
                                (begin
                                  (let ((_g232851_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232850_)
                                               (##values-length _g232850_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232851_ 2)))
                                        (error "Context expects 2 values"
                                               _g232851_)))
                                  (let ((_%target228241228281%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232850_ 0)))
                                        (_%tl228243228284%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232850_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228243228284%_))
                                        (letrec ((_%loop228244228287%_
                                                  (lambda (_%hd228242228291%_
                                                           _%clause228248228294%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228242228291%_))
                                                        (let ((_%e228245228296%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228242228291%_))))
                  (let ((_%lp-hd228246228300%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228245228296%_)))
                        (_%lp-tl228247228303%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228245228296%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd228246228300%_))
                        (let ((_g232852_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd228246228300%_
                                  '0))))
                          (begin
                            (let ((_g232853_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g232852_)
                                         (##values-length _g232852_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g232853_ 2)))
                                  (error "Context expects 2 values"
                                         _g232853_)))
                            (let ((_%target228250228306%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232852_ 0)))
                                  (_%tl228252228309%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232852_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228252228309%_))
                                  (letrec ((_%loop228253228312%_
                                            (lambda (_%hd228251228316%_
                                                     _%clause228257228319%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd228251228316%_))
                                                  (let ((_%e228254228321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd228251228316%_))))
                                                    (let ((_%lp-hd228255228325%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e228254228321%_)))
                                                          (_%lp-tl228256228328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e228254228321%_))))
                                                      (_%loop228253228312%_
                                                       _%lp-tl228256228328%_
                                                       (cons _%lp-hd228255228325%_
                                                             _%clause228257228319%_))))
                                                  (let ((_%clause228258228331%_
                                                         (reverse _%clause228257228319%_)))
                                                    (_%loop228244228287%_
                                                     _%lp-tl228247228303%_
                                                     (cons _%clause228258228331%_
                                                           _%clause228248228294%_)))))))
                                    (_%loop228253228312%_
                                     _%target228250228306%_
                                     '()))
                                  (_%g228235228264%_ _%g228236228268%_)))))
                        (_%g228235228264%_ _%g228236228268%_))))
                (let ((_%clause228249228334%_
                       (reverse _%clause228248228294%_)))
                  ((lambda (_%g228237228337%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp232854
                                              (lambda (_%g228352228357%_
                                                       _%g228353228360%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp232855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g228354228363%_ _%g228355228366%_)
                             (cons _%g228354228363%_ _%g228355228366%_))))
                      (declare (not safe))
                      (__foldr1 __tmp232855 '() _%g228352228357%_)))
              _%g228353228360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp232854
                                          '()
                                          _%g228237228337%_)))
                                 '())))
                   _%clause228249228334%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228244228287%_
                                           _%target228241228281%_
                                           '()))
                                        (_%g228235228264%_
                                         _%g228236228268%_)))))
                              (_%g228235228264%_ _%g228236228268%_))))
                      (_%g228235228264%_ _%g228236228268%_)))))
          (_%g228234228369%_ _%$stx228231%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx228375%_)
        (let* ((_%g228379228397%_
                (lambda (_%g228380228393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228380228393%_))))
               (_%g228378228452%_
                (lambda (_%g228380228401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228380228401%_))
                      (let ((_%e228383228404%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228380228401%_))))
                        (let ((_%hd228384228408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228383228404%_)))
                              (_%tl228385228411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228383228404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228385228411%_))
                              (let ((_%e228386228414%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228385228411%_))))
                                (let ((_%hd228387228418%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228386228414%_)))
                                      (_%tl228388228421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228386228414%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228388228421%_))
                                      (let ((_%e228389228424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228388228421%_))))
                                        (let ((_%hd228390228428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228389228424%_)))
                                              (_%tl228391228431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228389228424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228391228431%_))
                                              ((lambda (_%g228381228434%_
                                                        _%g228382228436%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228382228436%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228381228434%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228390228428%_
                                               _%hd228387228418%_)
                                              (_%g228379228397%_
                                               _%g228380228401%_))))
                                      (_%g228379228397%_ _%g228380228401%_))))
                              (_%g228379228397%_ _%g228380228401%_))))
                      (_%g228379228397%_ _%g228380228401%_)))))
          (_%g228378228452%_ _%$stx228375%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx228456%_)
        (let* ((_%g228460228478%_
                (lambda (_%g228461228474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228461228474%_))))
               (_%g228459228533%_
                (lambda (_%g228461228482%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228461228482%_))
                      (let ((_%e228464228485%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228461228482%_))))
                        (let ((_%hd228465228489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228464228485%_)))
                              (_%tl228466228492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228464228485%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228466228492%_))
                              (let ((_%e228467228495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228466228492%_))))
                                (let ((_%hd228468228499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228467228495%_)))
                                      (_%tl228469228502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228467228495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228469228502%_))
                                      (let ((_%e228470228505%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228469228502%_))))
                                        (let ((_%hd228471228509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228470228505%_)))
                                              (_%tl228472228512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228470228505%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228472228512%_))
                                              ((lambda (_%g228462228515%_
                                                        _%g228463228517%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228463228517%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228462228515%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228471228509%_
                                               _%hd228468228499%_)
                                              (_%g228460228478%_
                                               _%g228461228482%_))))
                                      (_%g228460228478%_ _%g228461228482%_))))
                              (_%g228460228478%_ _%g228461228482%_))))
                      (_%g228460228478%_ _%g228461228482%_)))))
          (_%g228459228533%_ _%$stx228456%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx228537%_)
        (let* ((_%g228541228570%_
                (lambda (_%g228542228566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228542228566%_))))
               (_%g228540228666%_
                (lambda (_%g228542228574%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228542228574%_))
                      (let ((_%e228545228577%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228542228574%_))))
                        (let ((_%hd228546228581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228545228577%_)))
                              (_%tl228547228584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228545228577%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228547228584%_))
                              (let ((_g232856_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228547228584%_
                                        '0))))
                                (begin
                                  (let ((_g232857_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232856_)
                                               (##values-length _g232856_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232857_ 2)))
                                        (error "Context expects 2 values"
                                               _g232857_)))
                                  (let ((_%target228548228587%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232856_ 0)))
                                        (_%tl228550228590%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232856_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228550228590%_))
                                        (letrec ((_%loop228551228593%_
                                                  (lambda (_%hd228549228597%_
                                                           _%rule228555228600%_
                                                           _%proc228556228601%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228549228597%_))
                                                        (let ((_%e228552228603%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228549228597%_))))
                  (let ((_%lp-hd228553228607%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228552228603%_)))
                        (_%lp-tl228554228610%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228552228603%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd228553228607%_))
                        (let ((_%e228559228613%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd228553228607%_))))
                          (let ((_%hd228560228617%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228559228613%_)))
                                (_%tl228561228620%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228559228613%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228561228620%_))
                                (let ((_%e228562228623%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl228561228620%_))))
                                  (let ((_%hd228563228627%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228562228623%_)))
                                        (_%tl228564228630%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228562228623%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228564228630%_))
                                        (_%loop228551228593%_
                                         _%lp-tl228554228610%_
                                         (cons _%hd228563228627%_
                                               _%rule228555228600%_)
                                         (cons _%hd228560228617%_
                                               _%proc228556228601%_))
                                        (_%g228541228570%_
                                         _%g228542228574%_))))
                                (_%g228541228570%_ _%g228542228574%_))))
                        (_%g228541228570%_ _%g228542228574%_))))
                (let ((_%rule228557228633%_ (reverse _%rule228555228600%_))
                      (_%proc228558228635%_ (reverse _%proc228556228601%_)))
                  ((lambda (_%g228543228637%_ _%g228544228639%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g228543228637%_
                                _%g228544228639%_))
                             (let ((__tmp232858
                                    (lambda (_%g228654228658%_
                                             _%g228655228661%_
                                             _%g228656228663%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g228655228661%_
                                                        (cons _%g228654228658%_
                                                              '())))
                                            _%g228656228663%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232858
                                '()
                                _%g228543228637%_
                                _%g228544228639%_)))))
                   _%rule228557228633%_
                   _%proc228558228635%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228551228593%_
                                           _%target228548228587%_
                                           '()
                                           '()))
                                        (_%g228541228570%_
                                         _%g228542228574%_)))))
                              (_%g228541228570%_ _%g228542228574%_))))
                      (_%g228541228570%_ _%g228542228574%_)))))
          (_%g228540228666%_ _%$stx228537%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx228671%_)
        (let* ((_%g228675228693%_
                (lambda (_%g228676228689%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228676228689%_))))
               (_%g228674228748%_
                (lambda (_%g228676228697%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228676228697%_))
                      (let ((_%e228679228700%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228676228697%_))))
                        (let ((_%hd228680228704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228679228700%_)))
                              (_%tl228681228707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228679228700%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228681228707%_))
                              (let ((_%e228682228710%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228681228707%_))))
                                (let ((_%hd228683228714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228682228710%_)))
                                      (_%tl228684228717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228682228710%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228684228717%_))
                                      (let ((_%e228685228720%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228684228717%_))))
                                        (let ((_%hd228686228724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228685228720%_)))
                                              (_%tl228687228727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228685228720%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228687228727%_))
                                              ((lambda (_%g228677228730%_
                                                        _%g228678228732%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g228678228732%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%g228677228730%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g228678228732%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228686228724%_
                                               _%hd228683228714%_)
                                              (_%g228675228693%_
                                               _%g228676228697%_))))
                                      (_%g228675228693%_ _%g228676228697%_))))
                              (_%g228675228693%_ _%g228676228697%_))))
                      (_%g228675228693%_ _%g228676228697%_)))))
          (_%g228674228748%_ _%$stx228671%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx228752%_)
        (let* ((_%__stx232338232339%_ _%$stx228752%_)
               (_%g228757228782%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232338232339%_)))))
          (let ((_%__kont232341232342%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232343232344%_
                 (lambda (_%g228762228829%_
                          _%g228763228831%_
                          _%g228764228832%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g228764228832%_
                                           (cons _%g228763228831%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g228762228829%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232338232339%_))
                (let ((_%e228759228858%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232338232339%_))))
                  (let ((_%tl228761228865%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228759228858%_)))
                        (_%hd228760228862%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228759228858%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl228761228865%_))
                        (_%__kont232341232342%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228761228865%_))
                            (let ((_%e228768228799%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl228761228865%_))))
                              (let ((_%tl228770228806%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228768228799%_)))
                                    (_%hd228769228803%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228768228799%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228769228803%_))
                                    (let ((_%e228771228809%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd228769228803%_))))
                                      (let ((_%tl228773228816%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228771228809%_)))
                                            (_%hd228772228813%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228771228809%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228773228816%_))
                                            (let ((_%e228774228819%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl228773228816%_))))
                                              (let ((_%tl228776228826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228774228819%_)))
                                                    (_%hd228775228823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228774228819%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl228776228826%_))
                                                    (_%__kont232343232344%_
                                                     _%tl228770228806%_
                                                     _%hd228775228823%_
                                                     _%hd228772228813%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g228757228782%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g228757228782%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g228757228782%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g228757228782%_))))))
                (let () (declare (not safe)) (_%g228757228782%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx228876%_)
        (let* ((_%__stx232382232383%_ _%$stx228876%_)
               (_%g228881228912%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232382232383%_)))))
          (let ((_%__kont232385232386%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232387232388%_
                 (lambda (_%g228886228977%_
                          _%g228887228979%_
                          _%g228888228980%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g228888228980%_
                                           (let ((__tmp232859
                                                  (lambda (_%g229000229003%_
                                                           _%g229001229006%_)
                                                    (cons _%g229000229003%_
                                                          _%g229001229006%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp232859
                                              '()
                                              _%g228887228979%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g228886228977%_)
                                     '()))))))
            (let ((_%__match232425232426%_
                   (lambda (_%e228889228919%_
                            _%hd228890228923%_
                            _%tl228891228926%_
                            _%e228892228929%_
                            _%hd228893228933%_
                            _%tl228894228936%_
                            _%e228895228939%_
                            _%hd228896228943%_
                            _%tl228897228946%_
                            _%__splice232389232390%_
                            _%target228898228949%_
                            _%tl228900228952%_)
                     (letrec ((_%loop228901228955%_
                               (lambda (_%hd228899228959%_ _%sig228905228962%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd228899228959%_))
                                     (let ((_%e228902228964%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd228899228959%_))))
                                       (let ((_%lp-tl228904228971%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e228902228964%_)))
                                             (_%lp-hd228903228968%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e228902228964%_))))
                                         (_%loop228901228955%_
                                          _%lp-tl228904228971%_
                                          (cons _%lp-hd228903228968%_
                                                _%sig228905228962%_))))
                                     (let ((_%sig228906228974%_
                                            (reverse _%sig228905228962%_)))
                                       (_%__kont232387232388%_
                                        _%tl228894228936%_
                                        _%sig228906228974%_
                                        _%hd228896228943%_))))))
                       (_%loop228901228955%_ _%target228898228949%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232382232383%_))
                  (let ((_%e228883229016%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232382232383%_))))
                    (let ((_%tl228885229023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e228883229016%_)))
                          (_%hd228884229020%_
                           (let ()
                             (declare (not safe))
                             (##car _%e228883229016%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228885229023%_))
                          (_%__kont232385232386%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228885229023%_))
                              (let ((_%e228892228929%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228885229023%_))))
                                (let ((_%tl228894228936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228892228929%_)))
                                      (_%hd228893228933%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228892228929%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd228893228933%_))
                                      (let ((_%e228895228939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd228893228933%_))))
                                        (let ((_%tl228897228946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228895228939%_)))
                                              (_%hd228896228943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228895228939%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl228897228946%_))
                                              (let ((_%__splice232389232390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl228897228946%_
                                                        '0))))
                                                (let ((_%tl228900228952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232389232390%_
                                                          '1)))
                                                      (_%target228898228949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232389232390%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl228900228952%_))
                                                      (_%__match232425232426%_
                                                       _%e228883229016%_
                                                       _%hd228884229020%_
                                                       _%tl228885229023%_
                                                       _%e228892228929%_
                                                       _%hd228893228933%_
                                                       _%tl228894228936%_
                                                       _%e228895228939%_
                                                       _%hd228896228943%_
                                                       _%tl228897228946%_
                                                       _%__splice232389232390%_
                                                       _%target228898228949%_
                                                       _%tl228900228952%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g228881228912%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g228881228912%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g228881228912%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g228881228912%_))))))
                  (let () (declare (not safe)) (_%g228881228912%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx229035%_)
        (let* ((_%__stx232428232429%_ _%$stx229035%_)
               (_%g229040229087%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232428232429%_)))))
          (let ((_%__kont232431232432%_
                 (lambda (_%g229042229245%_ _%g229043229247%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g229043229247%_
                               (let ((__tmp232860
                                      (lambda (_%g229267229270%_
                                               _%g229268229273%_)
                                        (cons _%g229267229270%_
                                              _%g229268229273%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232860
                                  '()
                                  _%g229042229245%_))))))
                (_%__kont232435232436%_
                 (lambda (_%g229065229142%_ _%g229066229144%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g229066229144%_
                               (let ((__tmp232861
                                      (lambda (_%g229161229164%_
                                               _%g229162229167%_)
                                        (cons _%g229161229164%_
                                              _%g229162229167%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232861
                                  '()
                                  _%g229065229142%_)))))))
            (let* ((_%__match232495232496%_
                    (lambda (_%e229067229094%_
                             _%hd229068229098%_
                             _%tl229069229101%_
                             _%e229070229104%_
                             _%hd229071229108%_
                             _%tl229072229111%_
                             _%__splice232437232438%_
                             _%target229073229114%_
                             _%tl229075229117%_)
                      (letrec ((_%loop229076229120%_
                                (lambda (_%hd229074229124%_
                                         _%sig229080229127%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229074229124%_))
                                      (let ((_%e229077229129%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd229074229124%_))))
                                        (let ((_%lp-tl229079229136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229077229129%_)))
                                              (_%lp-hd229078229133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229077229129%_))))
                                          (_%loop229076229120%_
                                           _%lp-tl229079229136%_
                                           (cons _%lp-hd229078229133%_
                                                 _%sig229080229127%_))))
                                      (let ((_%sig229081229139%_
                                             (reverse _%sig229080229127%_)))
                                        (_%__kont232435232436%_
                                         _%sig229081229139%_
                                         _%hd229071229108%_))))))
                        (_%loop229076229120%_ _%target229073229114%_ '()))))
                   (_%__match232487232488%_
                    (lambda (_%e229067229094%_
                             _%hd229068229098%_
                             _%tl229069229101%_
                             _%e229070229104%_
                             _%hd229071229108%_
                             _%tl229072229111%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl229072229111%_))
                          (let ((_%__splice232437232438%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl229072229111%_
                                    '0))))
                            (let ((_%tl229075229117%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232437232438%_
                                      '1)))
                                  (_%target229073229114%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232437232438%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229075229117%_))
                                  (_%__match232495232496%_
                                   _%e229067229094%_
                                   _%hd229068229098%_
                                   _%tl229069229101%_
                                   _%e229070229104%_
                                   _%hd229071229108%_
                                   _%tl229072229111%_
                                   _%__splice232437232438%_
                                   _%target229073229114%_
                                   _%tl229075229117%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g229040229087%_)))))
                          (let () (declare (not safe)) (_%g229040229087%_)))))
                   (_%__match232475232476%_
                    (lambda (_%e229044229177%_
                             _%hd229045229181%_
                             _%tl229046229184%_
                             _%e229047229187%_
                             _%hd229048229191%_
                             _%tl229049229194%_
                             _%e229050229197%_
                             _%hd229051229201%_
                             _%tl229052229204%_
                             _%e229053229207%_
                             _%hd229054229211%_
                             _%tl229055229214%_
                             _%__splice232433232434%_
                             _%target229056229217%_
                             _%tl229058229220%_)
                      (letrec ((_%loop229059229223%_
                                (lambda (_%hd229057229227%_
                                         _%sig229063229230%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229057229227%_))
                                      (let ((_%e229060229232%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd229057229227%_))))
                                        (let ((_%lp-tl229062229239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229060229232%_)))
                                              (_%lp-hd229061229236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229060229232%_))))
                                          (_%loop229059229223%_
                                           _%lp-tl229062229239%_
                                           (cons _%lp-hd229061229236%_
                                                 _%sig229063229230%_))))
                                      (let ((_%sig229064229242%_
                                             (reverse _%sig229063229230%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229052229204%_))
                                            (_%__kont232431232432%_
                                             _%sig229064229242%_
                                             _%hd229048229191%_)
                                            (_%__match232487232488%_
                                             _%e229044229177%_
                                             _%hd229045229181%_
                                             _%tl229046229184%_
                                             _%e229047229187%_
                                             _%hd229048229191%_
                                             _%tl229049229194%_)))))))
                        (_%loop229059229223%_ _%target229056229217%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232428232429%_))
                  (let ((_%e229044229177%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232428232429%_))))
                    (let ((_%tl229046229184%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229044229177%_)))
                          (_%hd229045229181%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229044229177%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229046229184%_))
                          (let ((_%e229047229187%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl229046229184%_))))
                            (let ((_%tl229049229194%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229047229187%_)))
                                  (_%hd229048229191%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229047229187%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl229049229194%_))
                                  (let ((_%e229050229197%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl229049229194%_))))
                                    (let ((_%tl229052229204%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229050229197%_)))
                                          (_%hd229051229201%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229050229197%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd229051229201%_))
                                          (let ((_%e229053229207%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd229051229201%_))))
                                            (let ((_%tl229055229214%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e229053229207%_)))
                                                  (_%hd229054229211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e229053229207%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd229054229211%_))
                                                  (if (let ((__tmp232862
                                                             |gxc[1]#_g232863_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp232862
                                                         _%hd229054229211%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl229055229214%_))
                                                          (let ((_%__splice232433232434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl229055229214%_
                            '0))))
                    (let ((_%tl229058229220%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232433232434%_ '1)))
                          (_%target229056229217%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232433232434%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229058229220%_))
                          (_%__match232475232476%_
                           _%e229044229177%_
                           _%hd229045229181%_
                           _%tl229046229184%_
                           _%e229047229187%_
                           _%hd229048229191%_
                           _%tl229049229194%_
                           _%e229050229197%_
                           _%hd229051229201%_
                           _%tl229052229204%_
                           _%e229053229207%_
                           _%hd229054229211%_
                           _%tl229055229214%_
                           _%__splice232433232434%_
                           _%target229056229217%_
                           _%tl229058229220%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl229049229194%_))
                              (let ((_%__splice232437232438%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl229049229194%_
                                        '0))))
                                (let ((_%tl229075229117%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232437232438%_
                                          '1)))
                                      (_%target229073229114%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232437232438%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl229075229117%_))
                                      (_%__match232495232496%_
                                       _%e229044229177%_
                                       _%hd229045229181%_
                                       _%tl229046229184%_
                                       _%e229047229187%_
                                       _%hd229048229191%_
                                       _%tl229049229194%_
                                       _%__splice232437232438%_
                                       _%target229073229114%_
                                       _%tl229075229117%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g229040229087%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g229040229087%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl229049229194%_))
                      (let ((_%__splice232437232438%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl229049229194%_
                                '0))))
                        (let ((_%tl229075229117%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232437232438%_ '1)))
                              (_%target229073229114%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232437232438%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl229075229117%_))
                              (_%__match232495232496%_
                               _%e229044229177%_
                               _%hd229045229181%_
                               _%tl229046229184%_
                               _%e229047229187%_
                               _%hd229048229191%_
                               _%tl229049229194%_
                               _%__splice232437232438%_
                               _%target229073229114%_
                               _%tl229075229117%_)
                              (let ()
                                (declare (not safe))
                                (_%g229040229087%_)))))
                      (let () (declare (not safe)) (_%g229040229087%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl229049229194%_))
                  (let ((_%__splice232437232438%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl229049229194%_
                            '0))))
                    (let ((_%tl229075229117%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232437232438%_ '1)))
                          (_%target229073229114%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232437232438%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229075229117%_))
                          (_%__match232495232496%_
                           _%e229044229177%_
                           _%hd229045229181%_
                           _%tl229046229184%_
                           _%e229047229187%_
                           _%hd229048229191%_
                           _%tl229049229194%_
                           _%__splice232437232438%_
                           _%target229073229114%_
                           _%tl229075229117%_)
                          (let () (declare (not safe)) (_%g229040229087%_)))))
                  (let () (declare (not safe)) (_%g229040229087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl229049229194%_))
                                                      (let ((_%__splice232437232438%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl229049229194%_
                        '0))))
                (let ((_%tl229075229117%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232437232438%_ '1)))
                      (_%target229073229114%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232437232438%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl229075229117%_))
                      (_%__match232495232496%_
                       _%e229044229177%_
                       _%hd229045229181%_
                       _%tl229046229184%_
                       _%e229047229187%_
                       _%hd229048229191%_
                       _%tl229049229194%_
                       _%__splice232437232438%_
                       _%target229073229114%_
                       _%tl229075229117%_)
                      (let () (declare (not safe)) (_%g229040229087%_)))))
              (let () (declare (not safe)) (_%g229040229087%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl229049229194%_))
                                              (let ((_%__splice232437232438%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl229049229194%_
                                                        '0))))
                                                (let ((_%tl229075229117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232437232438%_
                                                          '1)))
                                                      (_%target229073229114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232437232438%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229075229117%_))
                                                      (_%__match232495232496%_
                                                       _%e229044229177%_
                                                       _%hd229045229181%_
                                                       _%tl229046229184%_
                                                       _%e229047229187%_
                                                       _%hd229048229191%_
                                                       _%tl229049229194%_
                                                       _%__splice232437232438%_
                                                       _%target229073229114%_
                                                       _%tl229075229117%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g229040229087%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g229040229087%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl229049229194%_))
                                      (let ((_%__splice232437232438%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl229049229194%_
                                                '0))))
                                        (let ((_%tl229075229117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232437232438%_
                                                  '1)))
                                              (_%target229073229114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232437232438%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229075229117%_))
                                              (_%__match232495232496%_
                                               _%e229044229177%_
                                               _%hd229045229181%_
                                               _%tl229046229184%_
                                               _%e229047229187%_
                                               _%hd229048229191%_
                                               _%tl229049229194%_
                                               _%__splice232437232438%_
                                               _%target229073229114%_
                                               _%tl229075229117%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g229040229087%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229040229087%_))))))
                          (let () (declare (not safe)) (_%g229040229087%_)))))
                  (let () (declare (not safe)) (_%g229040229087%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx230430%_ _%id230432%_)
        (let ((_%proc230436%_
               (let ((__tmp232864
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230432%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232864))))
          (if (procedure? _%proc230436%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx230430%_
                 _%id230432%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx230421%_ _%id230423%_)
        (let ((_%klass230427%_
               (let ((__tmp232865
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230423%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232865))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass230427%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx230421%_
                 _%id230423%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx229671%_ _%proc229673%_ _%sig229674%_)
        (letrec ((_%signature-arity229676%_
                  (lambda (_%args230353%_)
                    (let _%loop230356%_ ((_%rest230359%_ _%args230353%_)
                                         (_%count230361%_ '0))
                      (let* ((_%rest230362230373%_ _%rest230359%_)
                             (_%E230366230379%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest230362230373%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K230369230410%_
                               (lambda (_%rest230407%_)
                                 (_%loop230356%_
                                  _%rest230407%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count230361%_ '1)))))
                              (_%K230368230399%_ (lambda () _%count230361%_))
                              (_%K230367230387%_
                               (lambda () (cons _%count230361%_ '()))))
                          (let ((_%try-match230364230403%_
                                 (lambda ()
                                   (if (null? _%rest230362230373%_)
                                       (_%K230368230399%_)
                                       (_%K230367230387%_)))))
                            (if (pair? _%rest230362230373%_)
                                (let* ((_%tl230371230414%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest230362230373%_)))
                                       (_%rest230418%_ _%tl230371230414%_))
                                  (_%K230369230410%_ _%rest230418%_))
                                (_%try-match230364230403%_))))))))
                 (_%make-signature229678%_
                  (lambda (_%args230235%_
                           _%return230237%_
                           _%effect230238%_
                           _%unchecked230239%_)
                    (let ((__tmp232866
                           (lambda (_%g230240230242%_)
                             (|gxc[1]#verify-class!|
                              _%ctx229671%_
                              _%g230240230242%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp232866 _%args230235%_))
                    (|gxc[1]#verify-class!| _%ctx229671%_ _%return230237%_)
                    (if _%unchecked230239%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx229671%_
                         _%unchecked230239%_)
                        '#!void)
                    (let ((_%arity230246%_
                           (_%signature-arity229676%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args230235%_)))))
                      (if _%effect230238%_
                          (let ((_%effect230249%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect230238%_))))
                            (if (and (list? _%effect230249%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect230249%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx229671%_
                                   _%proc229673%_
                                   _%effect230249%_))))
                          '#!void)
                      (cons _%arity230246%_
                            (cons (let* ((_%g230252230275%_
                                          (lambda (_%g230253230271%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g230253230271%_))))
                                         (_%g230251230349%_
                                          (lambda (_%g230253230279%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g230253230279%_))
                                                (let ((_%e230258230282%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g230253230279%_))))
                                                  (let ((_%hd230259230286%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230258230282%_)))
                                                        (_%tl230260230289%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230258230282%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl230260230289%_))
                                                        (let ((_%e230261230292%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl230260230289%_))))
                  (let ((_%hd230262230296%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230261230292%_)))
                        (_%tl230263230299%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230261230292%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230263230299%_))
                        (let ((_%e230264230302%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl230263230299%_))))
                          (let ((_%hd230265230306%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230264230302%_)))
                                (_%tl230266230309%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230264230302%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl230266230309%_))
                                (let ((_%e230267230312%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl230266230309%_))))
                                  (let ((_%hd230268230316%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230267230312%_)))
                                        (_%tl230269230319%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230267230312%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl230269230319%_))
                                        ((lambda (_%g230254230322%_
                                                  _%g230255230324%_
                                                  _%g230256230325%_
                                                  _%g230257230326%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g230257230326%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g230256230325%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g230255230324%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g230254230322%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd230268230316%_
                                         _%hd230265230306%_
                                         _%hd230262230296%_
                                         _%hd230259230286%_)
                                        (_%g230252230275%_
                                         _%g230253230279%_))))
                                (_%g230252230275%_ _%g230253230279%_))))
                        (_%g230252230275%_ _%g230253230279%_))))
                (_%g230252230275%_ _%g230253230279%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230252230275%_
                                                 _%g230253230279%_)))))
                                    (_%g230251230349%_
                                     (list _%args230235%_
                                           _%return230237%_
                                           _%effect230238%_
                                           _%unchecked230239%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx229671%_ _%proc229673%_)
          (let* ((_%__stx232506232507%_ _%sig229674%_)
                 (_%g229685229788%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx232506232507%_)))))
            (let ((_%__kont232509232510%_
                   (lambda (_%g229687230216%_ _%g229688230218%_)
                     (_%make-signature229678%_
                      _%g229688230218%_
                      _%g229687230216%_
                      '#f
                      '#f)))
                  (_%__kont232511232512%_
                   (lambda (_%g229695230167%_
                            _%g229696230169%_
                            _%g229697230170%_)
                     (_%make-signature229678%_
                      _%g229697230170%_
                      _%g229696230169%_
                      _%g229695230167%_
                      '#f)))
                  (_%__kont232513232514%_
                   (lambda (_%g229711230091%_
                            _%g229712230093%_
                            _%g229713230094%_)
                     (_%make-signature229678%_
                      _%g229713230094%_
                      _%g229712230093%_
                      _%g229711230091%_
                      (let ((__tmp232867
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229673%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232867)))))
                  (_%__kont232515232516%_
                   (lambda (_%g229731229997%_
                            _%g229732229999%_
                            _%g229733230000%_
                            _%g229734230001%_)
                     (_%make-signature229678%_
                      _%g229734230001%_
                      _%g229733230000%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229731229997%_)))))
                  (_%__kont232517232518%_
                   (lambda (_%g229755229904%_ _%g229756229906%_)
                     (_%make-signature229678%_
                      _%g229756229906%_
                      _%g229755229904%_
                      '#f
                      (let ((__tmp232868
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229673%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232868)))))
                  (_%__kont232519232520%_
                   (lambda (_%g229767229839%_
                            _%g229768229841%_
                            _%g229769229842%_)
                     (_%make-signature229678%_
                      _%g229769229842%_
                      _%g229768229841%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229767229839%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232506232507%_))
                  (let ((_%e229689230196%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232506232507%_))))
                    (let ((_%tl229691230203%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229689230196%_)))
                          (_%hd229690230200%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229689230196%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229691230203%_))
                          (let ((_%e229692230206%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl229691230203%_))))
                            (let ((_%tl229694230213%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229692230206%_)))
                                  (_%hd229693230210%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229692230206%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229694230213%_))
                                  (_%__kont232509232510%_
                                   _%hd229693230210%_
                                   _%hd229690230200%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl229694230213%_))
                                      (let ((_%e229704230143%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl229694230213%_))))
                                        (let ((_%tl229706230150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229704230143%_)))
                                              (_%hd229705230147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229704230143%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd229705230147%_))
                                              (let ((_%e229707230153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd229705230147%_))))
                                                (if (equal? _%e229707230153%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl229706230150%_))
                                                        (let ((_%e229708230157%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl229706230150%_))))
                  (let ((_%tl229710230164%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229708230157%_)))
                        (_%hd229709230161%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229708230157%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229710230164%_))
                        (_%__kont232511232512%_
                         _%hd229709230161%_
                         _%hd229693230210%_
                         _%hd229690230200%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229710230164%_))
                            (let ((_%e229727230077%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl229710230164%_))))
                              (let ((_%tl229729230084%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229727230077%_)))
                                    (_%hd229728230081%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229727230077%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd229728230081%_))
                                    (let ((_%e229730230087%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229728230081%_))))
                                      (if (equal? _%e229730230087%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229729230084%_))
                                              (_%__kont232513232514%_
                                               _%hd229709230161%_
                                               _%hd229693230210%_
                                               _%hd229690230200%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229729230084%_))
                                                  (let ((_%e229752229987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229729230084%_))))
                                                    (let ((_%tl229754229994%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229752229987%_)))
                                                          (_%hd229753229991%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229752229987%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl229754229994%_))
                                                          (_%__kont232515232516%_
                                                           _%hd229753229991%_
                                                           _%hd229709230161%_
                                                           _%hd229693230210%_
                                                           _%hd229690230200%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g229685229788%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g229685229788%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g229685229788%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g229685229788%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g229685229788%_))))))
                (let () (declare (not safe)) (_%g229685229788%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e229707230153%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229706230150%_))
                                                            (_%__kont232517232518%_
                                                             _%hd229693230210%_
                                                             _%hd229690230200%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl229706230150%_))
                        (let ((_%e229780229829%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229706230150%_))))
                          (let ((_%tl229782229836%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229780229829%_)))
                                (_%hd229781229833%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229780229829%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl229782229836%_))
                                (_%__kont232519232520%_
                                 _%hd229781229833%_
                                 _%hd229693230210%_
                                 _%hd229690230200%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g229685229788%_)))))
                        (let () (declare (not safe)) (_%g229685229788%_))))
                (let () (declare (not safe)) (_%g229685229788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g229685229788%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229685229788%_))))))
                          (let () (declare (not safe)) (_%g229685229788%_)))))
                  (let () (declare (not safe)) (_%g229685229788%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig229282%_)
        (let* ((_%g229285229365%_
                (lambda (_%g229286229361%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g229286229361%_))))
               (_%g229284229667%_
                (lambda (_%g229286229369%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g229286229369%_))
                      (let ((_%e229292229372%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g229286229369%_))))
                        (let ((_%hd229293229376%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229292229372%_)))
                              (_%tl229294229379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229292229372%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229294229379%_))
                              (let ((_%e229295229382%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl229294229379%_))))
                                (let ((_%hd229296229386%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229295229382%_)))
                                      (_%tl229297229389%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229295229382%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd229296229386%_))
                                      (let ((_%e229298229392%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229296229386%_))))
                                        (if (equal? _%e229298229392%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229297229389%_))
                                                (let ((_%e229299229396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229297229389%_))))
                                                  (let ((_%hd229300229400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229299229396%_)))
                                                        (_%tl229301229403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229299229396%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd229300229400%_))
                                                        (let ((_%e229302229406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd229300229400%_))))
                  (let ((_%hd229303229410%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229302229406%_)))
                        (_%tl229304229413%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229302229406%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd229303229410%_))
                        (if (let ((__tmp232869 |gxc[1]#_g232870_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp232869
                               _%hd229303229410%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229304229413%_))
                                (let ((_%e229305229416%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229304229413%_))))
                                  (let ((_%hd229306229420%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229305229416%_)))
                                        (_%tl229307229423%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229305229416%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229307229423%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229301229403%_))
                                            (let ((_%e229308229426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl229301229403%_))))
                                              (let ((_%hd229309229430%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229308229426%_)))
                                                    (_%tl229310229433%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229308229426%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd229309229430%_))
                                                    (let ((_%e229311229436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd229309229430%_))))
                                                      (if (equal? _%e229311229436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl229310229433%_))
                      (let ((_%e229312229440%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl229310229433%_))))
                        (let ((_%hd229313229444%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229312229440%_)))
                              (_%tl229314229447%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229312229440%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd229313229444%_))
                              (let ((_%e229315229450%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd229313229444%_))))
                                (let ((_%hd229316229454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229315229450%_)))
                                      (_%tl229317229457%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229315229450%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd229316229454%_))
                                      (if (let ((__tmp232871
                                                 |gxc[1]#_g232872_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp232871
                                             _%hd229316229454%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229317229457%_))
                                              (let ((_%e229318229460%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229317229457%_))))
                                                (let ((_%hd229319229464%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229318229460%_)))
                                                      (_%tl229320229467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229318229460%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229320229467%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl229314229447%_))
                                                          (let ((_%e229321229470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl229314229447%_))))
                    (let ((_%hd229322229474%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229321229470%_)))
                          (_%tl229323229477%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229321229470%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd229322229474%_))
                          (let ((_%e229324229480%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd229322229474%_))))
                            (if (equal? _%e229324229480%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229323229477%_))
                                    (let ((_%e229325229484%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl229323229477%_))))
                                      (let ((_%hd229326229488%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229325229484%_)))
                                            (_%tl229327229491%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229325229484%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229326229488%_))
                                            (let ((_%e229328229494%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd229326229488%_))))
                                              (let ((_%hd229329229498%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229328229494%_)))
                                                    (_%tl229330229501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229328229494%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd229329229498%_))
                                                    (if (let ((__tmp232873
                                                               |gxc[1]#_g232874_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp232873
                                                           _%hd229329229498%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229330229501%_))
                                                            (let ((_%e229331229504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl229330229501%_))))
                      (let ((_%hd229332229508%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229331229504%_)))
                            (_%tl229333229511%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229331229504%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229333229511%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229327229491%_))
                                (let ((_%e229334229514%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229327229491%_))))
                                  (let ((_%hd229335229518%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229334229514%_)))
                                        (_%tl229336229521%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229334229514%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd229335229518%_))
                                        (let ((_%e229337229524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229335229518%_))))
                                          (if (equal? _%e229337229524%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229336229521%_))
                                                  (let ((_%e229338229528%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229336229521%_))))
                                                    (let ((_%hd229339229532%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229338229528%_)))
                                                          (_%tl229340229535%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229338229528%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd229339229532%_))
                                                          (let ((_%e229341229538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd229339229532%_))))
                    (let ((_%hd229342229542%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229341229538%_)))
                          (_%tl229343229545%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229341229538%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd229342229542%_))
                          (if (let ((__tmp232875 |gxc[1]#_g232876_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp232875
                                 _%hd229342229542%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl229343229545%_))
                                  (let ((_%e229344229548%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl229343229545%_))))
                                    (let ((_%hd229345229552%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229344229548%_)))
                                          (_%tl229346229555%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229344229548%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl229346229555%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229340229535%_))
                                              (let ((_%e229347229558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229340229535%_))))
                                                (let ((_%hd229348229562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229347229558%_)))
                                                      (_%tl229349229565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229347229558%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd229348229562%_))
                                                      (let ((_%e229350229568%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd229348229562%_))))
                (if (equal? _%e229350229568%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229349229565%_))
                        (let ((_%e229351229572%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229349229565%_))))
                          (let ((_%hd229352229576%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229351229572%_)))
                                (_%tl229353229579%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229351229572%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229352229576%_))
                                (let ((_%e229354229582%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd229352229576%_))))
                                  (let ((_%hd229355229586%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229354229582%_)))
                                        (_%tl229356229589%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229354229582%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229355229586%_))
                                        (if (let ((__tmp232877
                                                   |gxc[1]#_g232878_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp232877
                                               _%hd229355229586%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229356229589%_))
                                                (let ((_%e229357229592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229356229589%_))))
                                                  (let ((_%hd229358229596%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229357229592%_)))
                                                        (_%tl229359229599%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229357229592%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229359229599%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229353229579%_))
                                                            ((lambda (_%g229287229602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229288229604%_
                              _%g229289229605%_
                              _%g229290229606%_
                              _%g229291229607%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g229288229604%_))
                           (cons _%g229288229604%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g229290229606%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g229287229602%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd229358229596%_
                     _%hd229345229552%_
                     _%hd229332229508%_
                     _%hd229319229464%_
                     _%hd229306229420%_)
                    (_%g229285229365%_ _%g229286229369%_))
                (_%g229285229365%_ _%g229286229369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229285229365%_
                                                 _%g229286229369%_))
                                            (_%g229285229365%_
                                             _%g229286229369%_))
                                        (_%g229285229365%_
                                         _%g229286229369%_))))
                                (_%g229285229365%_ _%g229286229369%_))))
                        (_%g229285229365%_ _%g229286229369%_))
                    (_%g229285229365%_ _%g229286229369%_)))
              (_%g229285229365%_ _%g229286229369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229285229365%_
                                               _%g229286229369%_))
                                          (_%g229285229365%_
                                           _%g229286229369%_))))
                                  (_%g229285229365%_ _%g229286229369%_))
                              (_%g229285229365%_ _%g229286229369%_))
                          (_%g229285229365%_ _%g229286229369%_))))
                  (_%g229285229365%_ _%g229286229369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g229285229365%_
                                                   _%g229286229369%_))
                                              (_%g229285229365%_
                                               _%g229286229369%_)))
                                        (_%g229285229365%_
                                         _%g229286229369%_))))
                                (_%g229285229365%_ _%g229286229369%_))
                            (_%g229285229365%_ _%g229286229369%_))))
                    (_%g229285229365%_ _%g229286229369%_))
                (_%g229285229365%_ _%g229286229369%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229285229365%_
                                                     _%g229286229369%_))))
                                            (_%g229285229365%_
                                             _%g229286229369%_))))
                                    (_%g229285229365%_ _%g229286229369%_))
                                (_%g229285229365%_ _%g229286229369%_)))
                          (_%g229285229365%_ _%g229286229369%_))))
                  (_%g229285229365%_ _%g229286229369%_))
              (_%g229285229365%_ _%g229286229369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229285229365%_
                                               _%g229286229369%_))
                                          (_%g229285229365%_
                                           _%g229286229369%_))
                                      (_%g229285229365%_ _%g229286229369%_))))
                              (_%g229285229365%_ _%g229286229369%_))))
                      (_%g229285229365%_ _%g229286229369%_))
                  (_%g229285229365%_ _%g229286229369%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229285229365%_
                                                     _%g229286229369%_))))
                                            (_%g229285229365%_
                                             _%g229286229369%_))
                                        (_%g229285229365%_
                                         _%g229286229369%_))))
                                (_%g229285229365%_ _%g229286229369%_))
                            (_%g229285229365%_ _%g229286229369%_))
                        (_%g229285229365%_ _%g229286229369%_))))
                (_%g229285229365%_ _%g229286229369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229285229365%_
                                                 _%g229286229369%_))
                                            (_%g229285229365%_
                                             _%g229286229369%_)))
                                      (_%g229285229365%_ _%g229286229369%_))))
                              (_%g229285229365%_ _%g229286229369%_))))
                      (_%g229285229365%_ _%g229286229369%_)))))
          (_%g229284229667%_ _%sig229282%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx230439%_)
        (let* ((_%g230442230460%_
                (lambda (_%g230443230456%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230443230456%_))))
               (_%g230441230515%_
                (lambda (_%g230443230464%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230443230464%_))
                      (let ((_%e230446230467%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230443230464%_))))
                        (let ((_%hd230447230471%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230446230467%_)))
                              (_%tl230448230474%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230446230467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230448230474%_))
                              (let ((_%e230449230477%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230448230474%_))))
                                (let ((_%hd230450230481%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230449230477%_)))
                                      (_%tl230451230484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230449230477%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl230451230484%_))
                                      (let ((_%e230452230487%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl230451230484%_))))
                                        (let ((_%hd230453230491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230452230487%_)))
                                              (_%tl230454230494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230452230487%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230454230494%_))
                                              ((lambda (_%g230444230497%_
                                                        _%g230445230499%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230445230499%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230444230497%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx230439%_
                                                        _%g230445230499%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx230439%_
                                                        _%g230444230497%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g230445230499%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g230444230497%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g230442230460%_
                                                      _%g230443230464%_)))
                                               _%hd230453230491%_
                                               _%hd230450230481%_)
                                              (_%g230442230460%_
                                               _%g230443230464%_))))
                                      (_%g230442230460%_ _%g230443230464%_))))
                              (_%g230442230460%_ _%g230443230464%_))))
                      (_%g230442230460%_ _%g230443230464%_)))))
          (_%g230441230515%_ _%stx230439%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx230519%_)
        (let* ((_%g230522230546%_
                (lambda (_%g230523230542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230523230542%_))))
               (_%g230521230827%_
                (lambda (_%g230523230550%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230523230550%_))
                      (let ((_%e230526230553%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230523230550%_))))
                        (let ((_%hd230527230557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230526230553%_)))
                              (_%tl230528230560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230526230553%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230528230560%_))
                              (let ((_%e230529230563%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230528230560%_))))
                                (let ((_%hd230530230567%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230529230563%_)))
                                      (_%tl230531230570%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230529230563%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230531230570%_))
                                      (let ((_g232879_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230531230570%_
                                                '0))))
                                        (begin
                                          (let ((_g232880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232879_)
                                                       (##values-length
                                                        _g232879_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232880_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232880_)))
                                          (let ((_%target230532230573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232879_ 0)))
                                                (_%tl230534230576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232879_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230534230576%_))
                                                (letrec ((_%loop230535230579%_
                                                          (lambda (_%hd230533230583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature230539230586%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230533230583%_))
                        (let ((_%e230536230588%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230533230583%_))))
                          (let ((_%lp-hd230537230592%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230536230588%_)))
                                (_%lp-tl230538230595%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230536230588%_))))
                            (_%loop230535230579%_
                             _%lp-tl230538230595%_
                             (cons _%lp-hd230537230592%_
                                   _%signature230539230586%_))))
                        (let ((_%signature230540230598%_
                               (reverse _%signature230539230586%_)))
                          ((lambda (_%g230524230601%_ _%g230525230603%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230525230603%_))
                                 (let* ((_%g230621230636%_
                                         (lambda (_%g230622230632%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230622230632%_))))
                                        (_%g230620230815%_
                                         (lambda (_%g230622230640%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g230622230640%_))
                                               (let ((_%e230625230643%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g230622230640%_))))
                                                 (let ((_%hd230626230647%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230625230643%_)))
                                                       (_%tl230627230650%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230625230643%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl230627230650%_))
                                                       (let ((_%e230628230653%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl230627230650%_))))
                 (let ((_%hd230629230657%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230628230653%_)))
                       (_%tl230630230660%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230628230653%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl230630230660%_))
                       ((lambda (_%g230623230663%_ _%g230624230665%_)
                          (let* ((_%g230681230689%_
                                  (lambda (_%g230682230685%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g230682230685%_))))
                                 (_%g230680230811%_
                                  (lambda (_%g230682230693%_)
                                    ((lambda (_%g230683230696%_)
                                       (let* ((_%unchecked230709%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g230623230663%_))
                                              (_%g230712230720%_
                                               (lambda (_%g230713230716%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g230713230716%_))))
                                              (_%g230711230743%_
                                               (lambda (_%g230713230724%_)
                                                 ((lambda (_%g230714230727%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g230683230696%_
                                                                (cons _%g230714230727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g230713230724%_))))
                                         (_%g230711230743%_
                                          (if _%unchecked230709%_
                                              (let* ((_%g230747230762%_
                                                      (lambda (_%g230748230758%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230748230758%_))))
                                                     (_%g230746230807%_
                                                      (lambda (_%g230748230766%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230748230766%_))
                                                            (let ((_%e230751230769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g230748230766%_))))
                      (let ((_%hd230752230773%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230751230769%_)))
                            (_%tl230753230776%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230751230769%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230753230776%_))
                            (let ((_%e230754230779%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl230753230776%_))))
                              (let ((_%hd230755230783%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230754230779%_)))
                                    (_%tl230756230786%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230754230779%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230756230786%_))
                                    ((lambda (_%g230749230789%_
                                              _%g230750230791%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g230750230791%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g230624230665%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g230749230789%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd230755230783%_
                                     _%hd230752230773%_)
                                    (_%g230747230762%_ _%g230748230766%_))))
                            (_%g230747230762%_ _%g230748230766%_))))
                    (_%g230747230762%_ _%g230748230766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230746230807%_
                                                 _%unchecked230709%_))
                                              '(begin)))))
                                     _%g230682230693%_))))
                            (_%g230680230811%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g230525230603%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g230624230665%_ '()))
                   (cons '#f (cons 'signature: (cons _%g230623230663%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd230629230657%_
                        _%hd230626230647%_)
                       (_%g230621230636%_ _%g230622230640%_))))
               (_%g230621230636%_ _%g230622230640%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230621230636%_
                                                _%g230622230640%_)))))
                                   (_%g230620230815%_
                                    (|gxc[1]#parse-signature|
                                     _%stx230519%_
                                     _%g230525230603%_
                                     (let ((__tmp232881
                                            (lambda (_%g230818230821%_
                                                     _%g230819230824%_)
                                              (cons _%g230818230821%_
                                                    _%g230819230824%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp232881
                                        '()
                                        _%g230524230601%_)))))
                                 (_%g230522230546%_ _%g230523230550%_)))
                           _%signature230540230598%_
                           _%hd230530230567%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230535230579%_
                                                   _%target230532230573%_
                                                   '()))
                                                (_%g230522230546%_
                                                 _%g230523230550%_)))))
                                      (_%g230522230546%_ _%g230523230550%_))))
                              (_%g230522230546%_ _%g230523230550%_))))
                      (_%g230522230546%_ _%g230523230550%_)))))
          (_%g230521230827%_ _%stx230519%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx230832%_)
        (let* ((_%g230835230859%_
                (lambda (_%g230836230855%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230836230855%_))))
               (_%g230834231734%_
                (lambda (_%g230836230863%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230836230863%_))
                      (let ((_%e230839230866%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230836230863%_))))
                        (let ((_%hd230840230870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230839230866%_)))
                              (_%tl230841230873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230839230866%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230841230873%_))
                              (let ((_%e230842230876%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230841230873%_))))
                                (let ((_%hd230843230880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230842230876%_)))
                                      (_%tl230844230883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230842230876%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230844230883%_))
                                      (let ((_g232882_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230844230883%_
                                                '0))))
                                        (begin
                                          (let ((_g232883_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232882_)
                                                       (##values-length
                                                        _g232882_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232883_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232883_)))
                                          (let ((_%target230845230886%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232882_ 0)))
                                                (_%tl230847230889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232882_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230847230889%_))
                                                (letrec ((_%loop230848230892%_
                                                          (lambda (_%hd230846230896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature230852230899%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230846230896%_))
                        (let ((_%e230849230901%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230846230896%_))))
                          (let ((_%lp-hd230850230905%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230849230901%_)))
                                (_%lp-tl230851230908%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230849230901%_))))
                            (_%loop230848230892%_
                             _%lp-tl230851230908%_
                             (cons _%lp-hd230850230905%_
                                   _%case-signature230852230899%_))))
                        (let ((_%case-signature230853230911%_
                               (reverse _%case-signature230852230899%_)))
                          ((lambda (_%g230837230914%_ _%g230838230916%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230838230916%_))
                                 (let* ((_%signatures230947%_
                                         (map (lambda (_%g230933230935%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx230832%_
                                                 _%g230838230916%_
                                                 _%g230933230935%_))
                                              (let ((__tmp232884
                                                     (lambda (_%g230938230941%_
                                                              _%g230939230944%_)
                                                       (cons _%g230938230941%_
                                                             _%g230939230944%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp232884
                                                 '()
                                                 _%g230837230914%_))))
                                        (_%g230950230976%_
                                         (lambda (_%g230951230972%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230951230972%_))))
                                        (_%g230949231730%_
                                         (lambda (_%g230951230980%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g230951230980%_))
                                               (let ((_g232885_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g230951230980%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g232886_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g232885_)
                        (##values-length _g232885_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g232886_ 2)))
                 (error "Context expects 2 values" _g232886_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target230954230983%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232885_
                                                             0)))
                                                         (_%tl230956230986%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232885_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl230956230986%_))
                                                         (letrec ((_%loop230957230989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd230955230993%_
                                    _%sig230961230996%_
                                    _%arity230962230997%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd230955230993%_))
                                 (let ((_%e230958230999%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd230955230993%_))))
                                   (let ((_%lp-hd230959231003%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e230958230999%_)))
                                         (_%lp-tl230960231006%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e230958230999%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd230959231003%_))
                                         (let ((_%e230965231009%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd230959231003%_))))
                                           (let ((_%hd230966231013%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e230965231009%_)))
                                                 (_%tl230967231016%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e230965231009%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl230967231016%_))
                                                 (let ((_%e230968231019%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl230967231016%_))))
                                                   (let ((_%hd230969231023%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e230968231019%_)))
                                                         (_%tl230970231026%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e230968231019%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl230970231026%_))
                                                         (_%loop230957230989%_
                                                          _%lp-tl230960231006%_
                                                          (cons _%hd230969231023%_
                                                                _%sig230961230996%_)
                                                          (cons _%hd230966231013%_
                                                                _%arity230962230997%_))
                                                         (_%g230950230976%_
                                                          _%g230951230980%_))))
                                                 (_%g230950230976%_
                                                  _%g230951230980%_))))
                                         (_%g230950230976%_
                                          _%g230951230980%_))))
                                 (let ((_%sig230963231029%_
                                        (reverse _%sig230961230996%_))
                                       (_%arity230964231031%_
                                        (reverse _%arity230962230997%_)))
                                   ((lambda (_%g230952231033%_
                                             _%g230953231035%_)
                                      (let* ((_%g231052231060%_
                                              (lambda (_%g231053231056%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g231053231056%_))))
                                             (_%g231051231715%_
                                              (lambda (_%g231053231064%_)
                                                ((lambda (_%g231054231067%_)
                                                   (let* ((_%g231080231088%_
                                                           (lambda (_%g231081231084%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g231081231084%_))))
                  (_%g231079231110%_
                   (lambda (_%g231081231092%_)
                     ((lambda (_%g231082231095%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g231054231067%_
                                    (cons _%g231082231095%_ '()))))
                      _%g231081231092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231079231110%_
                                                      (let ((_g232887_
                                                             (let _%loop231114%_ ((_%rest231117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures230947%_)
                                          (_%unchecked-proc231119%_ '#f)
                                          (_%unchecked-clauses231120%_ '()))
                       (let* ((_%rest231121231129%_ _%rest231117%_)
                              (_%else231123231141%_
                               (lambda ()
                                 (values _%unchecked-proc231119%_
                                         (reverse!
                                          _%unchecked-clauses231120%_))))
                              (_%K231125231582%_
                               (lambda (_%rest231145%_ _%hd231147%_)
                                 (let* ((_%g231149231236%_
                                         (lambda (_%g231150231232%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g231150231232%_))))
                                        (_%g231148231578%_
                                         (lambda (_%g231150231240%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g231150231240%_))
                                               (let ((_%e231157231243%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g231150231240%_))))
                                                 (let ((_%hd231158231247%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231157231243%_)))
                                                       (_%tl231159231250%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231157231243%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl231159231250%_))
                                                       (let ((_%e231160231253%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl231159231250%_))))
                 (let ((_%hd231161231257%_
                        (let ()
                          (declare (not safe))
                          (##car _%e231160231253%_)))
                       (_%tl231162231260%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e231160231253%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd231161231257%_))
                       (let ((_%e231163231263%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd231161231257%_))))
                         (let ((_%hd231164231267%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231163231263%_)))
                               (_%tl231165231270%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231163231263%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl231165231270%_))
                               (let ((_%e231166231273%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl231165231270%_))))
                                 (let ((_%hd231167231277%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231166231273%_)))
                                       (_%tl231168231280%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231166231273%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd231167231277%_))
                                       (let ((_%e231169231283%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd231167231277%_))))
                                         (if (equal? _%e231169231283%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231168231280%_))
                                                 (let ((_%e231170231287%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231168231280%_))))
                                                   (let ((_%hd231171231291%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231170231287%_)))
                                                         (_%tl231172231294%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231170231287%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd231171231291%_))
                                                         (let ((_%e231173231297%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd231171231291%_))))
                   (let ((_%hd231174231301%_
                          (let ()
                            (declare (not safe))
                            (##car _%e231173231297%_)))
                         (_%tl231175231304%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e231173231297%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd231174231301%_))
                         (if (let ((__tmp232889 |gxc[1]#_g232890_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp232889
                                _%hd231174231301%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231175231304%_))
                                 (let ((_%e231176231307%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231175231304%_))))
                                   (let ((_%hd231177231311%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231176231307%_)))
                                         (_%tl231178231314%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231176231307%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl231178231314%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl231172231294%_))
                                             (let ((_%e231179231317%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl231172231294%_))))
                                               (let ((_%hd231180231321%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231179231317%_)))
                                                     (_%tl231181231324%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231179231317%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd231180231321%_))
                                                     (let ((_%e231182231327%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd231180231321%_))))
                                                       (if (equal? _%e231182231327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl231181231324%_))
                       (let ((_%e231183231331%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl231181231324%_))))
                         (let ((_%hd231184231335%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231183231331%_)))
                               (_%tl231185231338%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231183231331%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd231184231335%_))
                               (let ((_%e231186231341%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd231184231335%_))))
                                 (let ((_%hd231187231345%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231186231341%_)))
                                       (_%tl231188231348%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231186231341%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd231187231345%_))
                                       (if (let ((__tmp232891
                                                  |gxc[1]#_g232892_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp232891
                                              _%hd231187231345%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231188231348%_))
                                               (let ((_%e231189231351%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231188231348%_))))
                                                 (let ((_%hd231190231355%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231189231351%_)))
                                                       (_%tl231191231358%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231189231351%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl231191231358%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl231185231338%_))
                                                           (let ((_%e231192231361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl231185231338%_))))
                     (let ((_%hd231193231365%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231192231361%_)))
                           (_%tl231194231368%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231192231361%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd231193231365%_))
                           (let ((_%e231195231371%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd231193231365%_))))
                             (if (equal? _%e231195231371%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl231194231368%_))
                                     (let ((_%e231196231375%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl231194231368%_))))
                                       (let ((_%hd231197231379%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e231196231375%_)))
                                             (_%tl231198231382%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e231196231375%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd231197231379%_))
                                             (let ((_%e231199231385%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd231197231379%_))))
                                               (let ((_%hd231200231389%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231199231385%_)))
                                                     (_%tl231201231392%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231199231385%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd231200231389%_))
                                                     (if (let ((__tmp232893
                                                                |gxc[1]#_g232894_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp232893
                                                            _%hd231200231389%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl231201231392%_))
                     (let ((_%e231202231395%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl231201231392%_))))
                       (let ((_%hd231203231399%_
                              (let ()
                                (declare (not safe))
                                (##car _%e231202231395%_)))
                             (_%tl231204231402%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e231202231395%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl231204231402%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231198231382%_))
                                 (let ((_%e231205231405%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231198231382%_))))
                                   (let ((_%hd231206231409%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231205231405%_)))
                                         (_%tl231207231412%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231205231405%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd231206231409%_))
                                         (let ((_%e231208231415%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231206231409%_))))
                                           (if (equal? _%e231208231415%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl231207231412%_))
                                                   (let ((_%e231209231419%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl231207231412%_))))
                                                     (let ((_%hd231210231423%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e231209231419%_)))
                                                           (_%tl231211231426%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e231209231419%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd231210231423%_))
                                                           (let ((_%e231212231429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd231210231423%_))))
                     (let ((_%hd231213231433%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231212231429%_)))
                           (_%tl231214231436%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231212231429%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd231213231433%_))
                           (if (let ((__tmp232895 |gxc[1]#_g232896_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp232895
                                  _%hd231213231433%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl231214231436%_))
                                   (let ((_%e231215231439%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl231214231436%_))))
                                     (let ((_%hd231216231443%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e231215231439%_)))
                                           (_%tl231217231446%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e231215231439%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl231217231446%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231211231426%_))
                                               (let ((_%e231218231449%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231211231426%_))))
                                                 (let ((_%hd231219231453%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231218231449%_)))
                                                       (_%tl231220231456%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231218231449%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd231219231453%_))
                                                       (let ((_%e231221231459%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd231219231453%_))))
                 (if (equal? _%e231221231459%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl231220231456%_))
                         (let ((_%e231222231463%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl231220231456%_))))
                           (let ((_%hd231223231467%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e231222231463%_)))
                                 (_%tl231224231470%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e231222231463%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd231223231467%_))
                                 (let ((_%e231225231473%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd231223231467%_))))
                                   (let ((_%hd231226231477%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231225231473%_)))
                                         (_%tl231227231480%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231225231473%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd231226231477%_))
                                         (if (let ((__tmp232897
                                                    |gxc[1]#_g232898_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp232897
                                                _%hd231226231477%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231227231480%_))
                                                 (let ((_%e231228231483%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231227231480%_))))
                                                   (let ((_%hd231229231487%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231228231483%_)))
                                                         (_%tl231230231490%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231228231483%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl231230231490%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl231224231470%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl231162231260%_))
                         ((lambda (_%g231151231493%_
                                   _%g231152231495%_
                                   _%g231153231496%_
                                   _%g231154231497%_
                                   _%g231155231498%_
                                   _%g231156231499%_)
                            (let ((_%clause231570%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%g231156231499%_
                                                           '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g231154231497%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231151231493%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked231572%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g231152231495%_))))
                              (_%loop231114%_
                               _%rest231145%_
                               (let ((_%$e231574%_ _%unchecked231572%_))
                                 (if _%$e231574%_
                                     _%$e231574%_
                                     _%unchecked-proc231119%_))
                               (cons _%clause231570%_
                                     _%unchecked-clauses231120%_))))
                          _%hd231229231487%_
                          _%hd231216231443%_
                          _%hd231203231399%_
                          _%hd231190231355%_
                          _%hd231177231311%_
                          _%hd231158231247%_)
                         (_%g231149231236%_ _%g231150231240%_))
                     (_%g231149231236%_ _%g231150231240%_))
                 (_%g231149231236%_ _%g231150231240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g231149231236%_
                                                  _%g231150231240%_))
                                             (_%g231149231236%_
                                              _%g231150231240%_))
                                         (_%g231149231236%_
                                          _%g231150231240%_))))
                                 (_%g231149231236%_ _%g231150231240%_))))
                         (_%g231149231236%_ _%g231150231240%_))
                     (_%g231149231236%_ _%g231150231240%_)))
               (_%g231149231236%_ _%g231150231240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231149231236%_
                                                _%g231150231240%_))
                                           (_%g231149231236%_
                                            _%g231150231240%_))))
                                   (_%g231149231236%_ _%g231150231240%_))
                               (_%g231149231236%_ _%g231150231240%_))
                           (_%g231149231236%_ _%g231150231240%_))))
                   (_%g231149231236%_ _%g231150231240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g231149231236%_
                                                    _%g231150231240%_))
                                               (_%g231149231236%_
                                                _%g231150231240%_)))
                                         (_%g231149231236%_
                                          _%g231150231240%_))))
                                 (_%g231149231236%_ _%g231150231240%_))
                             (_%g231149231236%_ _%g231150231240%_))))
                     (_%g231149231236%_ _%g231150231240%_))
                 (_%g231149231236%_ _%g231150231240%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231149231236%_
                                                      _%g231150231240%_))))
                                             (_%g231149231236%_
                                              _%g231150231240%_))))
                                     (_%g231149231236%_ _%g231150231240%_))
                                 (_%g231149231236%_ _%g231150231240%_)))
                           (_%g231149231236%_ _%g231150231240%_))))
                   (_%g231149231236%_ _%g231150231240%_))
               (_%g231149231236%_ _%g231150231240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231149231236%_
                                                _%g231150231240%_))
                                           (_%g231149231236%_
                                            _%g231150231240%_))
                                       (_%g231149231236%_ _%g231150231240%_))))
                               (_%g231149231236%_ _%g231150231240%_))))
                       (_%g231149231236%_ _%g231150231240%_))
                   (_%g231149231236%_ _%g231150231240%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231149231236%_
                                                      _%g231150231240%_))))
                                             (_%g231149231236%_
                                              _%g231150231240%_))
                                         (_%g231149231236%_
                                          _%g231150231240%_))))
                                 (_%g231149231236%_ _%g231150231240%_))
                             (_%g231149231236%_ _%g231150231240%_))
                         (_%g231149231236%_ _%g231150231240%_))))
                 (_%g231149231236%_ _%g231150231240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g231149231236%_
                                                  _%g231150231240%_))
                                             (_%g231149231236%_
                                              _%g231150231240%_)))
                                       (_%g231149231236%_ _%g231150231240%_))))
                               (_%g231149231236%_ _%g231150231240%_))))
                       (_%g231149231236%_ _%g231150231240%_))))
               (_%g231149231236%_ _%g231150231240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231149231236%_
                                                _%g231150231240%_)))))
                                   (_%g231148231578%_ _%hd231147%_)))))
                         (if (pair? _%rest231121231129%_)
                             (let ((_%hd231126231586%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest231121231129%_)))
                                   (_%tl231127231589%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest231121231129%_))))
                               (let* ((_%hd231592%_ _%hd231126231586%_)
                                      (_%rest231595%_ _%tl231127231589%_))
                                 (_%K231125231582%_
                                  _%rest231595%_
                                  _%hd231592%_)))
                             (_%else231123231141%_))))))
                (begin
                  (let ((_g232888_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232887_)
                               (##values-length _g232887_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232888_ 2)))
                        (error "Context expects 2 values" _g232888_)))
                  (let ((_%unchecked-proc231598%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232887_ 0)))
                        (_%unchecked-clauses231600%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232887_ 1))))
                    (if _%unchecked-proc231598%_
                        (let* ((_%g231602231626%_
                                (lambda (_%g231603231622%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g231603231622%_))))
                               (_%g231601231711%_
                                (lambda (_%g231603231630%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g231603231630%_))
                                      (let ((_%e231606231633%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g231603231630%_))))
                                        (let ((_%hd231607231637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231606231633%_)))
                                              (_%tl231608231640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231606231633%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231608231640%_))
                                              (let ((_%e231609231643%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231608231640%_))))
                                                (let ((_%hd231610231647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231609231643%_)))
                                                      (_%tl231611231650%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231609231643%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd231610231647%_))
                                                      (let ((_g232899_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd231610231647%_ '0))))
                (begin
                  (let ((_g232900_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232899_)
                               (##values-length _g232899_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232900_ 2)))
                        (error "Context expects 2 values" _g232900_)))
                  (let ((_%target231612231653%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232899_ 0)))
                        (_%tl231614231656%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232899_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl231614231656%_))
                        (letrec ((_%loop231615231659%_
                                  (lambda (_%hd231613231663%_
                                           _%clause231619231666%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd231613231663%_))
                                        (let ((_%e231616231668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd231613231663%_))))
                                          (let ((_%lp-hd231617231672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231616231668%_)))
                                                (_%lp-tl231618231675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231616231668%_))))
                                            (_%loop231615231659%_
                                             _%lp-tl231618231675%_
                                             (cons _%lp-hd231617231672%_
                                                   _%clause231619231666%_))))
                                        (let ((_%clause231620231678%_
                                               (reverse _%clause231619231666%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl231611231650%_))
                                              ((lambda (_%g231604231681%_
                                                        _%g231605231683%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g231605231683%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp232901
                                                    (lambda (_%g231702231705%_
                                                             _%g231703231708%_)
                                                      (cons _%g231702231705%_
                                                            _%g231703231708%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp232901
                                                '()
                                                _%g231604231681%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause231620231678%_
                                               _%hd231607231637%_)
                                              (_%g231602231626%_
                                               _%g231603231630%_)))))))
                          (_%loop231615231659%_ _%target231612231653%_ '()))
                        (_%g231602231626%_ _%g231603231630%_)))))
              (_%g231602231626%_ _%g231603231630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g231602231626%_
                                               _%g231603231630%_))))
                                      (_%g231602231626%_ _%g231603231630%_)))))
                          (_%g231601231711%_
                           (list _%unchecked-proc231598%_
                                 _%unchecked-clauses231600%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g231053231064%_))))
                                        (_%g231051231715%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g230838230916%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%g230952231033%_
                                          _%g230953231035%_))
                                       (let ((__tmp232902
                                              (lambda (_%g231718231722%_
                                                       _%g231719231725%_
                                                       _%g231720231727%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g231719231725%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g231718231722%_ '())))))
              _%g231720231727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp232902
                                          '()
                                          _%g230952231033%_
                                          _%g230953231035%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig230963231029%_
                                    _%arity230964231031%_))))))
                   (_%loop230957230989%_ _%target230954230983%_ '() '()))
                 (_%g230950230976%_ _%g230951230980%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230950230976%_
                                                _%g230951230980%_)))))
                                   (_%g230949231730%_ _%signatures230947%_))
                                 (_%g230835230859%_ _%g230836230863%_)))
                           _%case-signature230853230911%_
                           _%hd230843230880%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230848230892%_
                                                   _%target230845230886%_
                                                   '()))
                                                (_%g230835230859%_
                                                 _%g230836230863%_)))))
                                      (_%g230835230859%_ _%g230836230863%_))))
                              (_%g230835230859%_ _%g230836230863%_))))
                      (_%g230835230859%_ _%g230836230863%_)))))
          (_%g230834231734%_ _%stx230832%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx231742%_)
        (let* ((_%__stx232722232723%_ _%$stx231742%_)
               (_%g231748231808%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232722232723%_)))))
          (let ((_%__kont232725232726%_
                 (lambda (_%g231750232030%_ _%g231751232032%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231751232032%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g231751232032%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231750232030%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232727232728%_
                 (lambda (_%g231765231955%_
                          _%g231766231957%_
                          _%g231767231958%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231767231958%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g231767231958%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231766231957%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231765231955%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232729232730%_
                 (lambda (_%g231784231869%_
                          _%g231785231871%_
                          _%g231786231872%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231786231872%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g231786231872%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231785231871%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231784231869%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232722232723%_))
                (let ((_%e231752231986%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232722232723%_))))
                  (let ((_%tl231754231993%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231752231986%_)))
                        (_%hd231753231990%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231752231986%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231754231993%_))
                        (let ((_%e231755231996%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl231754231993%_))))
                          (let ((_%tl231757232003%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231755231996%_)))
                                (_%hd231756232000%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231755231996%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd231756232000%_))
                                (let ((_%e231758232006%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231756232000%_))))
                                  (if (equal? _%e231758232006%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl231757232003%_))
                                          (let ((_%e231759232010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl231757232003%_))))
                                            (let ((_%tl231761232017%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e231759232010%_)))
                                                  (_%hd231760232014%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e231759232010%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231761232017%_))
                                                  (let ((_%e231762232020%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231761232017%_))))
                                                    (let ((_%tl231764232027%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231762232020%_)))
                                                          (_%hd231763232024%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231762232020%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl231764232027%_))
                                                          (_%__kont232725232726%_
                                                           _%hd231763232024%_
                                                           _%hd231760232014%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g231748231808%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231748231808%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g231748231808%_)))
                                      (if (equal? _%e231758232006%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231757232003%_))
                                              (let ((_%e231775231925%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231757232003%_))))
                                                (let ((_%tl231777231932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231775231925%_)))
                                                      (_%hd231776231929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231775231925%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl231777231932%_))
                                                      (let ((_%e231778231935%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl231777231932%_))))
                (let ((_%tl231780231942%_
                       (let () (declare (not safe)) (##cdr _%e231778231935%_)))
                      (_%hd231779231939%_
                       (let ()
                         (declare (not safe))
                         (##car _%e231778231935%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl231780231942%_))
                      (let ((_%e231781231945%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl231780231942%_))))
                        (let ((_%tl231783231952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231781231945%_)))
                              (_%hd231782231949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231781231945%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl231783231952%_))
                              (_%__kont232727232728%_
                               _%hd231782231949%_
                               _%hd231779231939%_
                               _%hd231776231929%_)
                              (let ()
                                (declare (not safe))
                                (_%g231748231808%_)))))
                      (let () (declare (not safe)) (_%g231748231808%_)))))
              (let () (declare (not safe)) (_%g231748231808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g231748231808%_)))
                                          (if (equal? _%e231758232006%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231757232003%_))
                                                  (let ((_%e231794231839%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231757232003%_))))
                                                    (let ((_%tl231796231846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231794231839%_)))
                                                          (_%hd231795231843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231794231839%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl231796231846%_))
                                                          (let ((_%e231797231849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl231796231846%_))))
                    (let ((_%tl231799231856%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e231797231849%_)))
                          (_%hd231798231853%_
                           (let ()
                             (declare (not safe))
                             (##car _%e231797231849%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231799231856%_))
                          (let ((_%e231800231859%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl231799231856%_))))
                            (let ((_%tl231802231866%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231800231859%_)))
                                  (_%hd231801231863%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231800231859%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231802231866%_))
                                  (_%__kont232729232730%_
                                   _%hd231801231863%_
                                   _%hd231798231853%_
                                   _%hd231795231843%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g231748231808%_)))))
                          (let () (declare (not safe)) (_%g231748231808%_)))))
                  (let () (declare (not safe)) (_%g231748231808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231748231808%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g231748231808%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g231748231808%_)))))
                        (let () (declare (not safe)) (_%g231748231808%_)))))
                (let () (declare (not safe)) (_%g231748231808%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx232054%_)
        (let* ((_%g232058232078%_
                (lambda (_%g232059232074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g232059232074%_))))
               (_%g232057232147%_
                (lambda (_%g232059232082%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g232059232082%_))
                      (let ((_%e232061232085%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g232059232082%_))))
                        (let ((_%hd232062232089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232061232085%_)))
                              (_%tl232063232092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232061232085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl232063232092%_))
                              (let ((_g232903_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl232063232092%_
                                        '0))))
                                (begin
                                  (let ((_g232904_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232903_)
                                               (##values-length _g232903_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232904_ 2)))
                                        (error "Context expects 2 values"
                                               _g232904_)))
                                  (let ((_%target232064232095%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232903_ 0)))
                                        (_%tl232066232098%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232903_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl232066232098%_))
                                        (letrec ((_%loop232067232101%_
                                                  (lambda (_%hd232065232105%_
                                                           _%decl232071232108%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd232065232105%_))
                                                        (let ((_%e232068232110%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd232065232105%_))))
                  (let ((_%lp-hd232069232114%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232068232110%_)))
                        (_%lp-tl232070232117%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232068232110%_))))
                    (_%loop232067232101%_
                     _%lp-tl232070232117%_
                     (cons _%lp-hd232069232114%_ _%decl232071232108%_))))
                (let ((_%decl232072232120%_ (reverse _%decl232071232108%_)))
                  ((lambda (_%g232060232123%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp232905
                                  (lambda (_%g232138232141%_ _%g232139232144%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g232138232141%_)
                                          _%g232139232144%_))))
                             (declare (not safe))
                             (__foldr1 __tmp232905 '() _%g232060232123%_))))
                   _%decl232072232120%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop232067232101%_
                                           _%target232064232095%_
                                           '()))
                                        (_%g232058232078%_
                                         _%g232059232082%_)))))
                              (_%g232058232078%_ _%g232059232082%_))))
                      (_%g232058232078%_ _%g232059232082%_)))))
          (_%g232057232147%_ _%$stx232054%_))))))
