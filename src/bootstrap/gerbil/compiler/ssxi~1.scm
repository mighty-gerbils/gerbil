(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g232889_|
    (##structure
     gx#syntax-quote::t
     '@list
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
  (define |gxc[1]#_g232900_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232902_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232904_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232916_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232918_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232920_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232922_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g232924_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx226347%_)
        (let* ((_%g226351226369%_
                (lambda (_%g226352226365%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226352226365%_))))
               (_%g226350226424%_
                (lambda (_%g226352226373%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226352226373%_))
                      (let ((_%e226355226376%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226352226373%_))))
                        (let ((_%hd226356226380%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226355226376%_)))
                              (_%tl226357226383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226355226376%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226357226383%_))
                              (let ((_%e226358226386%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226357226383%_))))
                                (let ((_%hd226359226390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226358226386%_)))
                                      (_%tl226360226393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226358226386%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226360226393%_))
                                      (let ((_%e226361226396%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226360226393%_))))
                                        (let ((_%hd226362226400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226361226396%_)))
                                              (_%tl226363226403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226361226396%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226363226403%_))
                                              ((lambda (_%g226353226406%_
                                                        _%g226354226408%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226354226408%_))
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
                               (cons _%g226354226408%_ '()))
                         (cons _%g226353226406%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226351226369%_
                                                      _%g226352226373%_)))
                                               _%hd226362226400%_
                                               _%hd226359226390%_)
                                              (_%g226351226369%_
                                               _%g226352226373%_))))
                                      (_%g226351226369%_ _%g226352226373%_))))
                              (_%g226351226369%_ _%g226352226373%_))))
                      (_%g226351226369%_ _%g226352226373%_)))))
          (_%g226350226424%_ _%$stx226347%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx226428%_)
        (let* ((_%g226432226450%_
                (lambda (_%g226433226446%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226433226446%_))))
               (_%g226431226505%_
                (lambda (_%g226433226454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226433226454%_))
                      (let ((_%e226436226457%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226433226454%_))))
                        (let ((_%hd226437226461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226436226457%_)))
                              (_%tl226438226464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226436226457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl226438226464%_))
                              (let ((_%e226439226467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl226438226464%_))))
                                (let ((_%hd226440226471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e226439226467%_)))
                                      (_%tl226441226474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e226439226467%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl226441226474%_))
                                      (let ((_%e226442226477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl226441226474%_))))
                                        (let ((_%hd226443226481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e226442226477%_)))
                                              (_%tl226444226484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e226442226477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl226444226484%_))
                                              ((lambda (_%g226434226487%_
                                                        _%g226435226489%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g226435226489%_))
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
                               (cons _%g226435226489%_ '()))
                         (cons _%g226434226487%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g226432226450%_
                                                      _%g226433226454%_)))
                                               _%hd226443226481%_
                                               _%hd226440226471%_)
                                              (_%g226432226450%_
                                               _%g226433226454%_))))
                                      (_%g226432226450%_ _%g226433226454%_))))
                              (_%g226432226450%_ _%g226433226454%_))))
                      (_%g226432226450%_ _%g226433226454%_)))))
          (_%g226431226505%_ _%$stx226428%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx226509%_)
        (let* ((_%g226513226542%_
                (lambda (_%g226514226538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226514226538%_))))
               (_%g226512226638%_
                (lambda (_%g226514226546%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226514226546%_))
                      (let ((_%e226517226549%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226514226546%_))))
                        (let ((_%hd226518226553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226517226549%_)))
                              (_%tl226519226556%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226517226549%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226519226556%_))
                              (let ((_g232867_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226519226556%_
                                        '0))))
                                (begin
                                  (let ((_g232868_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232867_)
                                               (##values-length _g232867_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232868_ 2)))
                                        (error "Context expects 2 values"
                                               _g232868_)))
                                  (let ((_%target226520226559%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232867_ 0)))
                                        (_%tl226522226562%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232867_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226522226562%_))
                                        (letrec ((_%loop226523226565%_
                                                  (lambda (_%hd226521226569%_
                                                           _%type226527226572%_
                                                           _%symbol226528226573%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226521226569%_))
                                                        (let ((_%e226524226575%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226521226569%_))))
                  (let ((_%lp-hd226525226579%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226524226575%_)))
                        (_%lp-tl226526226582%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226524226575%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226525226579%_))
                        (let ((_%e226531226585%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226525226579%_))))
                          (let ((_%hd226532226589%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226531226585%_)))
                                (_%tl226533226592%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226531226585%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226533226592%_))
                                (let ((_%e226534226595%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226533226592%_))))
                                  (let ((_%hd226535226599%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226534226595%_)))
                                        (_%tl226536226602%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226534226595%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226536226602%_))
                                        (_%loop226523226565%_
                                         _%lp-tl226526226582%_
                                         (cons _%hd226535226599%_
                                               _%type226527226572%_)
                                         (cons _%hd226532226589%_
                                               _%symbol226528226573%_))
                                        (_%g226513226542%_
                                         _%g226514226546%_))))
                                (_%g226513226542%_ _%g226514226546%_))))
                        (_%g226513226542%_ _%g226514226546%_))))
                (let ((_%type226529226605%_ (reverse _%type226527226572%_))
                      (_%symbol226530226607%_
                       (reverse _%symbol226528226573%_)))
                  ((lambda (_%g226515226609%_ _%g226516226611%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226515226609%_
                                _%g226516226611%_))
                             (let ((__tmp232869
                                    (lambda (_%g226626226630%_
                                             _%g226627226633%_
                                             _%g226628226635%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g226627226633%_
                                                        (cons _%g226626226630%_
                                                              '())))
                                            _%g226628226635%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232869
                                '()
                                _%g226515226609%_
                                _%g226516226611%_)))))
                   _%type226529226605%_
                   _%symbol226530226607%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226523226565%_
                                           _%target226520226559%_
                                           '()
                                           '()))
                                        (_%g226513226542%_
                                         _%g226514226546%_)))))
                              (_%g226513226542%_ _%g226514226546%_))))
                      (_%g226513226542%_ _%g226514226546%_)))))
          (_%g226512226638%_ _%$stx226509%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx226643%_)
        (let* ((_%__stx232178232179%_ _%$stx226643%_)
               (_%g226648226690%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232178232179%_)))))
          (let ((_%__kont232181232182%_
                 (lambda (_%g226650226818%_
                          _%g226651226820%_
                          _%g226652226821%_
                          _%g226653226822%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g226653226822%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g226652226821%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g226651226820%_ '()))
                                           (cons _%g226650226818%_ '())))))))
                (_%__kont232183232184%_
                 (lambda (_%g226669226737%_
                          _%g226670226739%_
                          _%g226671226740%_
                          _%g226672226741%_)
                   (cons _%g226672226741%_
                         (cons _%g226671226740%_
                               (cons _%g226670226739%_
                                     (cons _%g226669226737%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match232217232218%_
                   (lambda (_%e226654226768%_
                            _%hd226655226772%_
                            _%tl226656226775%_
                            _%e226657226778%_
                            _%hd226658226782%_
                            _%tl226659226785%_
                            _%e226660226788%_
                            _%hd226661226792%_
                            _%tl226662226795%_
                            _%e226663226798%_
                            _%hd226664226802%_
                            _%tl226665226805%_
                            _%e226666226808%_
                            _%hd226667226812%_
                            _%tl226668226815%_)
                     (let ((_%g226650226818%_ _%hd226667226812%_)
                           (_%g226651226820%_ _%hd226664226802%_)
                           (_%g226652226821%_ _%hd226661226792%_)
                           (_%g226653226822%_ _%hd226658226782%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226653226822%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226652226821%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g226651226820%_)))
                           (_%__kont232181232182%_
                            _%g226650226818%_
                            _%g226651226820%_
                            _%g226652226821%_
                            _%g226653226822%_)
                           (let ()
                             (declare (not safe))
                             (_%g226648226690%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232178232179%_))
                  (let ((_%e226654226768%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232178232179%_))))
                    (let ((_%tl226656226775%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e226654226768%_)))
                          (_%hd226655226772%_
                           (let ()
                             (declare (not safe))
                             (##car _%e226654226768%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl226656226775%_))
                          (let ((_%e226657226778%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl226656226775%_))))
                            (let ((_%tl226659226785%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e226657226778%_)))
                                  (_%hd226658226782%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e226657226778%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl226659226785%_))
                                  (let ((_%e226660226788%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl226659226785%_))))
                                    (let ((_%tl226662226795%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e226660226788%_)))
                                          (_%hd226661226792%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e226660226788%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl226662226795%_))
                                          (let ((_%e226663226798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl226662226795%_))))
                                            (let ((_%tl226665226805%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e226663226798%_)))
                                                  (_%hd226664226802%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e226663226798%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl226665226805%_))
                                                  (let ((_%e226666226808%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl226665226805%_))))
                                                    (let ((_%tl226668226815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e226666226808%_)))
                                                          (_%hd226667226812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e226666226808%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl226668226815%_))
                                                          (_%__match232217232218%_
                                                           _%e226654226768%_
                                                           _%hd226655226772%_
                                                           _%tl226656226775%_
                                                           _%e226657226778%_
                                                           _%hd226658226782%_
                                                           _%tl226659226785%_
                                                           _%e226660226788%_
                                                           _%hd226661226792%_
                                                           _%tl226662226795%_
                                                           _%e226663226798%_
                                                           _%hd226664226802%_
                                                           _%tl226665226805%_
                                                           _%e226666226808%_
                                                           _%hd226667226812%_
                                                           _%tl226668226815%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g226648226690%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl226665226805%_))
                                                      (_%__kont232183232184%_
                                                       _%hd226664226802%_
                                                       _%hd226661226792%_
                                                       _%hd226658226782%_
                                                       _%hd226655226772%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g226648226690%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g226648226690%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g226648226690%_)))))
                          (let () (declare (not safe)) (_%g226648226690%_)))))
                  (let () (declare (not safe)) (_%g226648226690%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx226847%_)
        (let* ((_%g226851226886%_
                (lambda (_%g226852226882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g226852226882%_))))
               (_%g226850226999%_
                (lambda (_%g226852226890%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g226852226890%_))
                      (let ((_%e226856226893%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g226852226890%_))))
                        (let ((_%hd226857226897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e226856226893%_)))
                              (_%tl226858226900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e226856226893%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl226858226900%_))
                              (let ((_g232870_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl226858226900%_
                                        '0))))
                                (begin
                                  (let ((_g232871_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232870_)
                                               (##values-length _g232870_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232871_ 2)))
                                        (error "Context expects 2 values"
                                               _g232871_)))
                                  (let ((_%target226859226903%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232870_ 0)))
                                        (_%tl226861226906%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232870_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226861226906%_))
                                        (letrec ((_%loop226862226909%_
                                                  (lambda (_%hd226860226913%_
                                                           _%symbol226866226916%_
                                                           _%method226867226917%_
                                                           _%type-t226868226918%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd226860226913%_))
                                                        (let ((_%e226863226920%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd226860226913%_))))
                  (let ((_%lp-hd226864226924%_
                         (let ()
                           (declare (not safe))
                           (##car _%e226863226920%_)))
                        (_%lp-tl226865226927%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e226863226920%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd226864226924%_))
                        (let ((_%e226872226930%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd226864226924%_))))
                          (let ((_%hd226873226934%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226872226930%_)))
                                (_%tl226874226937%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226872226930%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226874226937%_))
                                (let ((_%e226875226940%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl226874226937%_))))
                                  (let ((_%hd226876226944%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226875226940%_)))
                                        (_%tl226877226947%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226875226940%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl226877226947%_))
                                        (let ((_%e226878226950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl226877226947%_))))
                                          (let ((_%hd226879226954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226878226950%_)))
                                                (_%tl226880226957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226878226950%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226880226957%_))
                                                (_%loop226862226909%_
                                                 _%lp-tl226865226927%_
                                                 (cons _%hd226879226954%_
                                                       _%symbol226866226916%_)
                                                 (cons _%hd226876226944%_
                                                       _%method226867226917%_)
                                                 (cons _%hd226873226934%_
                                                       _%type-t226868226918%_))
                                                (_%g226851226886%_
                                                 _%g226852226890%_))))
                                        (_%g226851226886%_
                                         _%g226852226890%_))))
                                (_%g226851226886%_ _%g226852226890%_))))
                        (_%g226851226886%_ _%g226852226890%_))))
                (let ((_%symbol226869226960%_ (reverse _%symbol226866226916%_))
                      (_%method226870226962%_ (reverse _%method226867226917%_))
                      (_%type-t226871226963%_
                       (reverse _%type-t226868226918%_)))
                  ((lambda (_%g226853226965%_
                            _%g226854226967%_
                            _%g226855226968%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g226853226965%_
                                _%g226854226967%_
                                _%g226855226968%_))
                             (let ((__tmp232872
                                    (lambda (_%g226984226989%_
                                             _%g226985226992%_
                                             _%g226986226994%_
                                             _%g226987226996%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g226986226994%_
                                                        (cons _%g226985226992%_
                                                              (cons _%g226984226989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g226987226996%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp232872
                                '()
                                _%g226853226965%_
                                _%g226854226967%_
                                _%g226855226968%_)))))
                   _%symbol226869226960%_
                   _%method226870226962%_
                   _%type-t226871226963%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop226862226909%_
                                           _%target226859226903%_
                                           '()
                                           '()
                                           '()))
                                        (_%g226851226886%_
                                         _%g226852226890%_)))))
                              (_%g226851226886%_ _%g226852226890%_))))
                      (_%g226851226886%_ _%g226852226890%_)))))
          (_%g226850226999%_ _%$stx226847%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx227004%_)
        (let* ((_%g227008227041%_
                (lambda (_%g227009227037%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227009227037%_))))
               (_%g227007227151%_
                (lambda (_%g227009227045%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227009227045%_))
                      (let ((_%e227013227048%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227009227045%_))))
                        (let ((_%hd227014227052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227013227048%_)))
                              (_%tl227015227055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227013227048%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227015227055%_))
                              (let ((_%e227016227058%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227015227055%_))))
                                (let ((_%hd227017227062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227016227058%_)))
                                      (_%tl227018227065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227016227058%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl227018227065%_))
                                      (let ((_g232873_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl227018227065%_
                                                '0))))
                                        (begin
                                          (let ((_g232874_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232873_)
                                                       (##values-length
                                                        _g232873_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232874_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232874_)))
                                          (let ((_%target227019227068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232873_ 0)))
                                                (_%tl227021227071%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232873_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl227021227071%_))
                                                (letrec ((_%loop227022227074%_
                                                          (lambda (_%hd227020227078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol227026227081%_
                           _%method227027227082%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd227020227078%_))
                        (let ((_%e227023227084%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd227020227078%_))))
                          (let ((_%lp-hd227024227088%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227023227084%_)))
                                (_%lp-tl227025227091%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227023227084%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd227024227088%_))
                                (let ((_%e227030227094%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd227024227088%_))))
                                  (let ((_%hd227031227098%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227030227094%_)))
                                        (_%tl227032227101%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227030227094%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl227032227101%_))
                                        (let ((_%e227033227104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl227032227101%_))))
                                          (let ((_%hd227034227108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e227033227104%_)))
                                                (_%tl227035227111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e227033227104%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl227035227111%_))
                                                (_%loop227022227074%_
                                                 _%lp-tl227025227091%_
                                                 (cons _%hd227034227108%_
                                                       _%symbol227026227081%_)
                                                 (cons _%hd227031227098%_
                                                       _%method227027227082%_))
                                                (_%g227008227041%_
                                                 _%g227009227045%_))))
                                        (_%g227008227041%_
                                         _%g227009227045%_))))
                                (_%g227008227041%_ _%g227009227045%_))))
                        (let ((_%symbol227028227114%_
                               (reverse _%symbol227026227081%_))
                              (_%method227029227116%_
                               (reverse _%method227027227082%_)))
                          ((lambda (_%g227010227118%_
                                    _%g227011227120%_
                                    _%g227012227121%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g227010227118%_
                                        _%g227011227120%_))
                                     (let ((__tmp232875
                                            (lambda (_%g227139227143%_
                                                     _%g227140227146%_
                                                     _%g227141227148%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g227012227121%_
                                                                (cons _%g227140227146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g227139227143%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g227141227148%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp232875
                                        '()
                                        _%g227010227118%_
                                        _%g227011227120%_)))))
                           _%symbol227028227114%_
                           _%method227029227116%_
                           _%hd227017227062%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop227022227074%_
                                                   _%target227019227068%_
                                                   '()
                                                   '()))
                                                (_%g227008227041%_
                                                 _%g227009227045%_)))))
                                      (_%g227008227041%_ _%g227009227045%_))))
                              (_%g227008227041%_ _%g227009227045%_))))
                      (_%g227008227041%_ _%g227009227045%_)))))
          (_%g227007227151%_ _%$stx227004%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx227156%_)
        (let* ((_%g227160227174%_
                (lambda (_%g227161227170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227161227170%_))))
               (_%g227159227215%_
                (lambda (_%g227161227178%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227161227178%_))
                      (let ((_%e227163227181%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227161227178%_))))
                        (let ((_%hd227164227185%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227163227181%_)))
                              (_%tl227165227188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227163227181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227165227188%_))
                              (let ((_%e227166227191%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227165227188%_))))
                                (let ((_%hd227167227195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227166227191%_)))
                                      (_%tl227168227198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227166227191%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227168227198%_))
                                      ((lambda (_%g227162227201%_)
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
                                                           (cons _%g227162227201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227167227195%_)
                                      (_%g227160227174%_ _%g227161227178%_))))
                              (_%g227160227174%_ _%g227161227178%_))))
                      (_%g227160227174%_ _%g227161227178%_)))))
          (_%g227159227215%_ _%$stx227156%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx227219%_)
        (let* ((_%g227223227277%_
                (lambda (_%g227224227273%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227224227273%_))))
               (_%g227222227458%_
                (lambda (_%g227224227281%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227224227281%_))
                      (let ((_%e227236227284%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227224227281%_))))
                        (let ((_%hd227237227288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227236227284%_)))
                              (_%tl227238227291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227236227284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227238227291%_))
                              (let ((_%e227239227294%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227238227291%_))))
                                (let ((_%hd227240227298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227239227294%_)))
                                      (_%tl227241227301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227239227294%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227241227301%_))
                                      (let ((_%e227242227304%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227241227301%_))))
                                        (let ((_%hd227243227308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227242227304%_)))
                                              (_%tl227244227311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227242227304%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227244227311%_))
                                              (let ((_%e227245227314%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227244227311%_))))
                                                (let ((_%hd227246227318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227245227314%_)))
                                                      (_%tl227247227321%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227245227314%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227247227321%_))
                                                      (let ((_%e227248227324%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227247227321%_))))
                (let ((_%hd227249227328%_
                       (let () (declare (not safe)) (##car _%e227248227324%_)))
                      (_%tl227250227331%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227248227324%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227250227331%_))
                      (let ((_%e227251227334%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227250227331%_))))
                        (let ((_%hd227252227338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227251227334%_)))
                              (_%tl227253227341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227251227334%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227253227341%_))
                              (let ((_%e227254227344%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227253227341%_))))
                                (let ((_%hd227255227348%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227254227344%_)))
                                      (_%tl227256227351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227254227344%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227256227351%_))
                                      (let ((_%e227257227354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227256227351%_))))
                                        (let ((_%hd227258227358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227257227354%_)))
                                              (_%tl227259227361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227257227354%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227259227361%_))
                                              (let ((_%e227260227364%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227259227361%_))))
                                                (let ((_%hd227261227368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227260227364%_)))
                                                      (_%tl227262227371%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227260227364%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl227262227371%_))
                                                      (let ((_%e227263227374%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl227262227371%_))))
                (let ((_%hd227264227378%_
                       (let () (declare (not safe)) (##car _%e227263227374%_)))
                      (_%tl227265227381%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e227263227374%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227265227381%_))
                      (let ((_%e227266227384%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227265227381%_))))
                        (let ((_%hd227267227388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227266227384%_)))
                              (_%tl227268227391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227266227384%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227268227391%_))
                              (let ((_%e227269227394%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227268227391%_))))
                                (let ((_%hd227270227398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227269227394%_)))
                                      (_%tl227271227401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227269227394%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227271227401%_))
                                      ((lambda (_%g227225227404%_
                                                _%g227226227406%_
                                                _%g227227227407%_
                                                _%g227228227408%_
                                                _%g227229227409%_
                                                _%g227230227410%_
                                                _%g227231227411%_
                                                _%g227232227412%_
                                                _%g227233227413%_
                                                _%g227234227414%_
                                                _%g227235227415%_)
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
                                                           (cons _%g227235227415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g227234227414%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g227233227413%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227232227412%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227231227411%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g227230227410%_ '()))
                                           (cons _%g227229227409%_
                                                 (cons _%g227228227408%_
                                                       (cons _%g227227227407%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227226227406%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g227225227404%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd227270227398%_
                                       _%hd227267227388%_
                                       _%hd227264227378%_
                                       _%hd227261227368%_
                                       _%hd227258227358%_
                                       _%hd227255227348%_
                                       _%hd227252227338%_
                                       _%hd227249227328%_
                                       _%hd227246227318%_
                                       _%hd227243227308%_
                                       _%hd227240227298%_)
                                      (_%g227223227277%_ _%g227224227281%_))))
                              (_%g227223227277%_ _%g227224227281%_))))
                      (_%g227223227277%_ _%g227224227281%_))))
              (_%g227223227277%_ _%g227224227281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227223227277%_
                                               _%g227224227281%_))))
                                      (_%g227223227277%_ _%g227224227281%_))))
                              (_%g227223227277%_ _%g227224227281%_))))
                      (_%g227223227277%_ _%g227224227281%_))))
              (_%g227223227277%_ _%g227224227281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227223227277%_
                                               _%g227224227281%_))))
                                      (_%g227223227277%_ _%g227224227281%_))))
                              (_%g227223227277%_ _%g227224227281%_))))
                      (_%g227223227277%_ _%g227224227281%_)))))
          (_%g227222227458%_ _%$stx227219%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx227462%_)
        (let* ((_%g227466227480%_
                (lambda (_%g227467227476%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227467227476%_))))
               (_%g227465227521%_
                (lambda (_%g227467227484%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227467227484%_))
                      (let ((_%e227469227487%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227467227484%_))))
                        (let ((_%hd227470227491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227469227487%_)))
                              (_%tl227471227494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227469227487%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227471227494%_))
                              (let ((_%e227472227497%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227471227494%_))))
                                (let ((_%hd227473227501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227472227497%_)))
                                      (_%tl227474227504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227472227497%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227474227504%_))
                                      ((lambda (_%g227468227507%_)
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
                                                           (cons _%g227468227507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227473227501%_)
                                      (_%g227466227480%_ _%g227467227484%_))))
                              (_%g227466227480%_ _%g227467227484%_))))
                      (_%g227466227480%_ _%g227467227484%_)))))
          (_%g227465227521%_ _%$stx227462%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx227525%_)
        (let* ((_%g227529227543%_
                (lambda (_%g227530227539%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227530227539%_))))
               (_%g227528227584%_
                (lambda (_%g227530227547%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227530227547%_))
                      (let ((_%e227532227550%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227530227547%_))))
                        (let ((_%hd227533227554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227532227550%_)))
                              (_%tl227534227557%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227532227550%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227534227557%_))
                              (let ((_%e227535227560%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227534227557%_))))
                                (let ((_%hd227536227564%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227535227560%_)))
                                      (_%tl227537227567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227535227560%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227537227567%_))
                                      ((lambda (_%g227531227570%_)
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
                                                           (cons _%g227531227570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227536227564%_)
                                      (_%g227529227543%_ _%g227530227547%_))))
                              (_%g227529227543%_ _%g227530227547%_))))
                      (_%g227529227543%_ _%g227530227547%_)))))
          (_%g227528227584%_ _%$stx227525%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx227588%_)
        (let* ((_%g227592227614%_
                (lambda (_%g227593227610%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227593227610%_))))
               (_%g227591227683%_
                (lambda (_%g227593227618%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227593227618%_))
                      (let ((_%e227597227621%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227593227618%_))))
                        (let ((_%hd227598227625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227597227621%_)))
                              (_%tl227599227628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227597227621%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227599227628%_))
                              (let ((_%e227600227631%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227599227628%_))))
                                (let ((_%hd227601227635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227600227631%_)))
                                      (_%tl227602227638%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227600227631%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227602227638%_))
                                      (let ((_%e227603227641%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227602227638%_))))
                                        (let ((_%hd227604227645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227603227641%_)))
                                              (_%tl227605227648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227603227641%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227605227648%_))
                                              (let ((_%e227606227651%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227605227648%_))))
                                                (let ((_%hd227607227655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227606227651%_)))
                                                      (_%tl227608227658%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227606227651%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227608227658%_))
                                                      ((lambda (_%g227594227661%_
                                                                _%g227595227663%_
                                                                _%g227596227664%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227596227664%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227595227663%_ '()))
                                   (cons _%g227594227661%_ '())))))
               _%hd227607227655%_
               _%hd227604227645%_
               _%hd227601227635%_)
              (_%g227592227614%_ _%g227593227618%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227592227614%_
                                               _%g227593227618%_))))
                                      (_%g227592227614%_ _%g227593227618%_))))
                              (_%g227592227614%_ _%g227593227618%_))))
                      (_%g227592227614%_ _%g227593227618%_)))))
          (_%g227591227683%_ _%$stx227588%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx227687%_)
        (let* ((_%g227691227713%_
                (lambda (_%g227692227709%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227692227709%_))))
               (_%g227690227782%_
                (lambda (_%g227692227717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227692227717%_))
                      (let ((_%e227696227720%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227692227717%_))))
                        (let ((_%hd227697227724%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227696227720%_)))
                              (_%tl227698227727%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227696227720%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227698227727%_))
                              (let ((_%e227699227730%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227698227727%_))))
                                (let ((_%hd227700227734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227699227730%_)))
                                      (_%tl227701227737%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227699227730%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227701227737%_))
                                      (let ((_%e227702227740%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227701227737%_))))
                                        (let ((_%hd227703227744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227702227740%_)))
                                              (_%tl227704227747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227702227740%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227704227747%_))
                                              (let ((_%e227705227750%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl227704227747%_))))
                                                (let ((_%hd227706227754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227705227750%_)))
                                                      (_%tl227707227757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227705227750%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227707227757%_))
                                                      ((lambda (_%g227693227760%_
                                                                _%g227694227762%_
                                                                _%g227695227763%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g227695227763%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g227694227762%_ '()))
                                   (cons _%g227693227760%_ '())))))
               _%hd227706227754%_
               _%hd227703227744%_
               _%hd227700227734%_)
              (_%g227691227713%_ _%g227692227717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g227691227713%_
                                               _%g227692227717%_))))
                                      (_%g227691227713%_ _%g227692227717%_))))
                              (_%g227691227713%_ _%g227692227717%_))))
                      (_%g227691227713%_ _%g227692227717%_)))))
          (_%g227690227782%_ _%$stx227687%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx227786%_)
        (let* ((_%g227790227804%_
                (lambda (_%g227791227800%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227791227800%_))))
               (_%g227789227845%_
                (lambda (_%g227791227808%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227791227808%_))
                      (let ((_%e227793227811%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227791227808%_))))
                        (let ((_%hd227794227815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227793227811%_)))
                              (_%tl227795227818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227793227811%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227795227818%_))
                              (let ((_%e227796227821%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227795227818%_))))
                                (let ((_%hd227797227825%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227796227821%_)))
                                      (_%tl227798227828%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227796227821%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227798227828%_))
                                      ((lambda (_%g227792227831%_)
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
                                                           (cons _%g227792227831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd227797227825%_)
                                      (_%g227790227804%_ _%g227791227808%_))))
                              (_%g227790227804%_ _%g227791227808%_))))
                      (_%g227790227804%_ _%g227791227808%_)))))
          (_%g227789227845%_ _%$stx227786%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx227849%_)
        (let* ((_%g227853227871%_
                (lambda (_%g227854227867%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g227854227867%_))))
               (_%g227852227926%_
                (lambda (_%g227854227875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g227854227875%_))
                      (let ((_%e227857227878%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g227854227875%_))))
                        (let ((_%hd227858227882%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227857227878%_)))
                              (_%tl227859227885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227857227878%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227859227885%_))
                              (let ((_%e227860227888%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl227859227885%_))))
                                (let ((_%hd227861227892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227860227888%_)))
                                      (_%tl227862227895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227860227888%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl227862227895%_))
                                      (let ((_%e227863227898%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl227862227895%_))))
                                        (let ((_%hd227864227902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227863227898%_)))
                                              (_%tl227865227905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227863227898%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl227865227905%_))
                                              ((lambda (_%g227855227908%_
                                                        _%g227856227910%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g227856227910%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g227855227908%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd227864227902%_
                                               _%hd227861227892%_)
                                              (_%g227853227871%_
                                               _%g227854227875%_))))
                                      (_%g227853227871%_ _%g227854227875%_))))
                              (_%g227853227871%_ _%g227854227875%_))))
                      (_%g227853227871%_ _%g227854227875%_)))))
          (_%g227852227926%_ _%$stx227849%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx227930%_)
        (let* ((_%__stx232246232247%_ _%$stx227930%_)
               (_%g227937227998%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232246232247%_)))))
          (let ((_%__kont232249232250%_
                 (lambda (_%g227939228236%_ _%g227940228238%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227940228238%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227939228236%_ '()))
                                     '())))))
                (_%__kont232251232252%_
                 (lambda (_%g227950228175%_
                          _%g227951228177%_
                          _%g227952228178%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g227952228178%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g227951228177%_ '()))
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
                                 (cons _%g227950228175%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont232253232254%_
                 (lambda (_%g227969228099%_ _%g227970228101%_)
                   (cons _%g227970228101%_
                         (cons _%g227969228099%_ (cons '#f '())))))
                (_%__kont232255232256%_
                 (lambda (_%g227977228049%_
                          _%g227978228051%_
                          _%g227979228052%_)
                   (cons _%g227979228052%_
                         (cons _%g227978228051%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g227977228049%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232246232247%_))
                (let ((_%e227941228206%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232246232247%_))))
                  (let ((_%tl227943228213%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e227941228206%_)))
                        (_%hd227942228210%_
                         (let ()
                           (declare (not safe))
                           (##car _%e227941228206%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl227943228213%_))
                        (let ((_%e227944228216%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl227943228213%_))))
                          (let ((_%tl227946228223%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e227944228216%_)))
                                (_%hd227945228220%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e227944228216%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl227946228223%_))
                                (let ((_%e227947228226%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl227946228223%_))))
                                  (let ((_%tl227949228233%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e227947228226%_)))
                                        (_%hd227948228230%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e227947228226%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl227949228233%_))
                                        (_%__kont232249232250%_
                                         _%hd227948228230%_
                                         _%hd227945228220%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl227949228233%_))
                                            (let ((_%e227962228151%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl227949228233%_))))
                                              (let ((_%tl227964228158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e227962228151%_)))
                                                    (_%hd227963228155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e227962228151%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd227963228155%_))
                                                    (let ((_%e227965228161%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd227963228155%_))))
                                                      (if (equal? _%e227965228161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl227964228158%_))
                      (let ((_%e227966228165%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl227964228158%_))))
                        (let ((_%tl227968228172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227966228165%_)))
                              (_%hd227967228169%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227966228165%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl227968228172%_))
                              (_%__kont232251232252%_
                               _%hd227967228169%_
                               _%hd227948228230%_
                               _%hd227945228220%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd227948228230%_))
                                  (let ((_%e227989228035%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd227948228230%_))))
                                    (declare (not safe))
                                    (_%g227937227998%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g227937227998%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd227948228230%_))
                          (let ((_%e227989228035%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd227948228230%_))))
                            (if (equal? _%e227989228035%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227964228158%_))
                                    (_%__kont232255232256%_
                                     _%hd227963228155%_
                                     _%hd227945228220%_
                                     _%hd227942228210%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227937227998%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g227937227998%_))))
                          (let () (declare (not safe)) (_%g227937227998%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd227948228230%_))
                      (let ((_%e227989228035%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd227948228230%_))))
                        (if (equal? _%e227989228035%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl227964228158%_))
                                (_%__kont232255232256%_
                                 _%hd227963228155%_
                                 _%hd227945228220%_
                                 _%hd227942228210%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g227937227998%_)))
                            (let () (declare (not safe)) (_%g227937227998%_))))
                      (let () (declare (not safe)) (_%g227937227998%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd227948228230%_))
                                                        (let ((_%e227989228035%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd227948228230%_))))
                  (if (equal? _%e227989228035%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl227964228158%_))
                          (_%__kont232255232256%_
                           _%hd227963228155%_
                           _%hd227945228220%_
                           _%hd227942228210%_)
                          (let () (declare (not safe)) (_%g227937227998%_)))
                      (let () (declare (not safe)) (_%g227937227998%_))))
                (let () (declare (not safe)) (_%g227937227998%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd227948228230%_))
                                                (let ((_%e227989228035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd227948228230%_))))
                                                  (declare (not safe))
                                                  (_%g227937227998%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g227937227998%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227946228223%_))
                                    (_%__kont232253232254%_
                                     _%hd227945228220%_
                                     _%hd227942228210%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g227937227998%_))))))
                        (let () (declare (not safe)) (_%g227937227998%_)))))
                (let () (declare (not safe)) (_%g227937227998%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx228257%_)
        (let* ((_%g228261228290%_
                (lambda (_%g228262228286%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228262228286%_))))
               (_%g228260228395%_
                (lambda (_%g228262228294%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228262228294%_))
                      (let ((_%e228264228297%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228262228294%_))))
                        (let ((_%hd228265228301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228264228297%_)))
                              (_%tl228266228304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228264228297%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228266228304%_))
                              (let ((_g232876_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228266228304%_
                                        '0))))
                                (begin
                                  (let ((_g232877_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232876_)
                                               (##values-length _g232876_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232877_ 2)))
                                        (error "Context expects 2 values"
                                               _g232877_)))
                                  (let ((_%target228267228307%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232876_ 0)))
                                        (_%tl228269228310%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232876_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228269228310%_))
                                        (letrec ((_%loop228270228313%_
                                                  (lambda (_%hd228268228317%_
                                                           _%clause228274228320%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228268228317%_))
                                                        (let ((_%e228271228322%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228268228317%_))))
                  (let ((_%lp-hd228272228326%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228271228322%_)))
                        (_%lp-tl228273228329%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228271228322%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd228272228326%_))
                        (let ((_g232878_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd228272228326%_
                                  '0))))
                          (begin
                            (let ((_g232879_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g232878_)
                                         (##values-length _g232878_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g232879_ 2)))
                                  (error "Context expects 2 values"
                                         _g232879_)))
                            (let ((_%target228276228332%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232878_ 0)))
                                  (_%tl228278228335%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g232878_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228278228335%_))
                                  (letrec ((_%loop228279228338%_
                                            (lambda (_%hd228277228342%_
                                                     _%clause228283228345%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd228277228342%_))
                                                  (let ((_%e228280228347%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd228277228342%_))))
                                                    (let ((_%lp-hd228281228351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e228280228347%_)))
                                                          (_%lp-tl228282228354%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e228280228347%_))))
                                                      (_%loop228279228338%_
                                                       _%lp-tl228282228354%_
                                                       (cons _%lp-hd228281228351%_
                                                             _%clause228283228345%_))))
                                                  (let ((_%clause228284228357%_
                                                         (reverse _%clause228283228345%_)))
                                                    (_%loop228270228313%_
                                                     _%lp-tl228273228329%_
                                                     (cons _%clause228284228357%_
                                                           _%clause228274228320%_)))))))
                                    (_%loop228279228338%_
                                     _%target228276228332%_
                                     '()))
                                  (_%g228261228290%_ _%g228262228294%_)))))
                        (_%g228261228290%_ _%g228262228294%_))))
                (let ((_%clause228275228360%_
                       (reverse _%clause228274228320%_)))
                  ((lambda (_%g228263228363%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp232880
                                              (lambda (_%g228378228383%_
                                                       _%g228379228386%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp232881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g228380228389%_ _%g228381228392%_)
                             (cons _%g228380228389%_ _%g228381228392%_))))
                      (declare (not safe))
                      (__foldr1 __tmp232881 '() _%g228378228383%_)))
              _%g228379228386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp232880
                                          '()
                                          _%g228263228363%_)))
                                 '())))
                   _%clause228275228360%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228270228313%_
                                           _%target228267228307%_
                                           '()))
                                        (_%g228261228290%_
                                         _%g228262228294%_)))))
                              (_%g228261228290%_ _%g228262228294%_))))
                      (_%g228261228290%_ _%g228262228294%_)))))
          (_%g228260228395%_ _%$stx228257%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx228401%_)
        (let* ((_%g228405228423%_
                (lambda (_%g228406228419%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228406228419%_))))
               (_%g228404228478%_
                (lambda (_%g228406228427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228406228427%_))
                      (let ((_%e228409228430%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228406228427%_))))
                        (let ((_%hd228410228434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228409228430%_)))
                              (_%tl228411228437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228409228430%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228411228437%_))
                              (let ((_%e228412228440%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228411228437%_))))
                                (let ((_%hd228413228444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228412228440%_)))
                                      (_%tl228414228447%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228412228440%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228414228447%_))
                                      (let ((_%e228415228450%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228414228447%_))))
                                        (let ((_%hd228416228454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228415228450%_)))
                                              (_%tl228417228457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228415228450%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228417228457%_))
                                              ((lambda (_%g228407228460%_
                                                        _%g228408228462%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228408228462%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228407228460%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228416228454%_
                                               _%hd228413228444%_)
                                              (_%g228405228423%_
                                               _%g228406228427%_))))
                                      (_%g228405228423%_ _%g228406228427%_))))
                              (_%g228405228423%_ _%g228406228427%_))))
                      (_%g228405228423%_ _%g228406228427%_)))))
          (_%g228404228478%_ _%$stx228401%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx228482%_)
        (let* ((_%g228486228504%_
                (lambda (_%g228487228500%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228487228500%_))))
               (_%g228485228559%_
                (lambda (_%g228487228508%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228487228508%_))
                      (let ((_%e228490228511%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228487228508%_))))
                        (let ((_%hd228491228515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228490228511%_)))
                              (_%tl228492228518%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228490228511%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228492228518%_))
                              (let ((_%e228493228521%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228492228518%_))))
                                (let ((_%hd228494228525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228493228521%_)))
                                      (_%tl228495228528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228493228521%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228495228528%_))
                                      (let ((_%e228496228531%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228495228528%_))))
                                        (let ((_%hd228497228535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228496228531%_)))
                                              (_%tl228498228538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228496228531%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228498228538%_))
                                              ((lambda (_%g228488228541%_
                                                        _%g228489228543%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g228489228543%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g228488228541%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228497228535%_
                                               _%hd228494228525%_)
                                              (_%g228486228504%_
                                               _%g228487228508%_))))
                                      (_%g228486228504%_ _%g228487228508%_))))
                              (_%g228486228504%_ _%g228487228508%_))))
                      (_%g228486228504%_ _%g228487228508%_)))))
          (_%g228485228559%_ _%$stx228482%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx228563%_)
        (let* ((_%g228567228596%_
                (lambda (_%g228568228592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228568228592%_))))
               (_%g228566228692%_
                (lambda (_%g228568228600%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228568228600%_))
                      (let ((_%e228571228603%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228568228600%_))))
                        (let ((_%hd228572228607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228571228603%_)))
                              (_%tl228573228610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228571228603%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl228573228610%_))
                              (let ((_g232882_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl228573228610%_
                                        '0))))
                                (begin
                                  (let ((_g232883_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232882_)
                                               (##values-length _g232882_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232883_ 2)))
                                        (error "Context expects 2 values"
                                               _g232883_)))
                                  (let ((_%target228574228613%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232882_ 0)))
                                        (_%tl228576228616%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232882_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228576228616%_))
                                        (letrec ((_%loop228577228619%_
                                                  (lambda (_%hd228575228623%_
                                                           _%rule228581228626%_
                                                           _%proc228582228627%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd228575228623%_))
                                                        (let ((_%e228578228629%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd228575228623%_))))
                  (let ((_%lp-hd228579228633%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228578228629%_)))
                        (_%lp-tl228580228636%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228578228629%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd228579228633%_))
                        (let ((_%e228585228639%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd228579228633%_))))
                          (let ((_%hd228586228643%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228585228639%_)))
                                (_%tl228587228646%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228585228639%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228587228646%_))
                                (let ((_%e228588228649%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl228587228646%_))))
                                  (let ((_%hd228589228653%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228588228649%_)))
                                        (_%tl228590228656%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228588228649%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228590228656%_))
                                        (_%loop228577228619%_
                                         _%lp-tl228580228636%_
                                         (cons _%hd228589228653%_
                                               _%rule228581228626%_)
                                         (cons _%hd228586228643%_
                                               _%proc228582228627%_))
                                        (_%g228567228596%_
                                         _%g228568228600%_))))
                                (_%g228567228596%_ _%g228568228600%_))))
                        (_%g228567228596%_ _%g228568228600%_))))
                (let ((_%rule228583228659%_ (reverse _%rule228581228626%_))
                      (_%proc228584228661%_ (reverse _%proc228582228627%_)))
                  ((lambda (_%g228569228663%_ _%g228570228665%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g228569228663%_
                                _%g228570228665%_))
                             (let ((__tmp232884
                                    (lambda (_%g228680228684%_
                                             _%g228681228687%_
                                             _%g228682228689%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g228681228687%_
                                                        (cons _%g228680228684%_
                                                              '())))
                                            _%g228682228689%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp232884
                                '()
                                _%g228569228663%_
                                _%g228570228665%_)))))
                   _%rule228583228659%_
                   _%proc228584228661%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228577228619%_
                                           _%target228574228613%_
                                           '()
                                           '()))
                                        (_%g228567228596%_
                                         _%g228568228600%_)))))
                              (_%g228567228596%_ _%g228568228600%_))))
                      (_%g228567228596%_ _%g228568228600%_)))))
          (_%g228566228692%_ _%$stx228563%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx228697%_)
        (let* ((_%g228701228719%_
                (lambda (_%g228702228715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228702228715%_))))
               (_%g228700228774%_
                (lambda (_%g228702228723%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228702228723%_))
                      (let ((_%e228705228726%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g228702228723%_))))
                        (let ((_%hd228706228730%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228705228726%_)))
                              (_%tl228707228733%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228705228726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228707228733%_))
                              (let ((_%e228708228736%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228707228733%_))))
                                (let ((_%hd228709228740%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228708228736%_)))
                                      (_%tl228710228743%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228708228736%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228710228743%_))
                                      (let ((_%e228711228746%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl228710228743%_))))
                                        (let ((_%hd228712228750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228711228746%_)))
                                              (_%tl228713228753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228711228746%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228713228753%_))
                                              ((lambda (_%g228703228756%_
                                                        _%g228704228758%_)
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
                                                   (cons _%g228704228758%_
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
                 (cons _%g228703228756%_ '())))
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
                                   (cons _%g228704228758%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd228712228750%_
                                               _%hd228709228740%_)
                                              (_%g228701228719%_
                                               _%g228702228723%_))))
                                      (_%g228701228719%_ _%g228702228723%_))))
                              (_%g228701228719%_ _%g228702228723%_))))
                      (_%g228701228719%_ _%g228702228723%_)))))
          (_%g228700228774%_ _%$stx228697%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx228778%_)
        (let* ((_%__stx232364232365%_ _%$stx228778%_)
               (_%g228783228808%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232364232365%_)))))
          (let ((_%__kont232367232368%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232369232370%_
                 (lambda (_%g228788228855%_
                          _%g228789228857%_
                          _%g228790228858%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g228790228858%_
                                           (cons _%g228789228857%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g228788228855%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232364232365%_))
                (let ((_%e228785228884%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232364232365%_))))
                  (let ((_%tl228787228891%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228785228884%_)))
                        (_%hd228786228888%_
                         (let ()
                           (declare (not safe))
                           (##car _%e228785228884%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl228787228891%_))
                        (_%__kont232367232368%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228787228891%_))
                            (let ((_%e228794228825%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl228787228891%_))))
                              (let ((_%tl228796228832%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228794228825%_)))
                                    (_%hd228795228829%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228794228825%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228795228829%_))
                                    (let ((_%e228797228835%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd228795228829%_))))
                                      (let ((_%tl228799228842%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228797228835%_)))
                                            (_%hd228798228839%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228797228835%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228799228842%_))
                                            (let ((_%e228800228845%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl228799228842%_))))
                                              (let ((_%tl228802228852%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228800228845%_)))
                                                    (_%hd228801228849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228800228845%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl228802228852%_))
                                                    (_%__kont232369232370%_
                                                     _%tl228796228832%_
                                                     _%hd228801228849%_
                                                     _%hd228798228839%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g228783228808%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g228783228808%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g228783228808%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g228783228808%_))))))
                (let () (declare (not safe)) (_%g228783228808%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx228902%_)
        (let* ((_%__stx232408232409%_ _%$stx228902%_)
               (_%g228907228938%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232408232409%_)))))
          (let ((_%__kont232411232412%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont232413232414%_
                 (lambda (_%g228912229003%_
                          _%g228913229005%_
                          _%g228914229006%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g228914229006%_
                                           (let ((__tmp232885
                                                  (lambda (_%g229026229029%_
                                                           _%g229027229032%_)
                                                    (cons _%g229026229029%_
                                                          _%g229027229032%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp232885
                                              '()
                                              _%g228913229005%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g228912229003%_)
                                     '()))))))
            (let ((_%__match232451232452%_
                   (lambda (_%e228915228945%_
                            _%hd228916228949%_
                            _%tl228917228952%_
                            _%e228918228955%_
                            _%hd228919228959%_
                            _%tl228920228962%_
                            _%e228921228965%_
                            _%hd228922228969%_
                            _%tl228923228972%_
                            _%__splice232415232416%_
                            _%target228924228975%_
                            _%tl228926228978%_)
                     (letrec ((_%loop228927228981%_
                               (lambda (_%hd228925228985%_ _%sig228931228988%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd228925228985%_))
                                     (let ((_%e228928228990%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd228925228985%_))))
                                       (let ((_%lp-tl228930228997%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e228928228990%_)))
                                             (_%lp-hd228929228994%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e228928228990%_))))
                                         (_%loop228927228981%_
                                          _%lp-tl228930228997%_
                                          (cons _%lp-hd228929228994%_
                                                _%sig228931228988%_))))
                                     (let ((_%sig228932229000%_
                                            (reverse _%sig228931228988%_)))
                                       (_%__kont232413232414%_
                                        _%tl228920228962%_
                                        _%sig228932229000%_
                                        _%hd228922228969%_))))))
                       (_%loop228927228981%_ _%target228924228975%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232408232409%_))
                  (let ((_%e228909229042%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232408232409%_))))
                    (let ((_%tl228911229049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e228909229042%_)))
                          (_%hd228910229046%_
                           (let ()
                             (declare (not safe))
                             (##car _%e228909229042%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228911229049%_))
                          (_%__kont232411232412%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228911229049%_))
                              (let ((_%e228918228955%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl228911229049%_))))
                                (let ((_%tl228920228962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228918228955%_)))
                                      (_%hd228919228959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228918228955%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd228919228959%_))
                                      (let ((_%e228921228965%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd228919228959%_))))
                                        (let ((_%tl228923228972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228921228965%_)))
                                              (_%hd228922228969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228921228965%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl228923228972%_))
                                              (let ((_%__splice232415232416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl228923228972%_
                                                        '0))))
                                                (let ((_%tl228926228978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232415232416%_
                                                          '1)))
                                                      (_%target228924228975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232415232416%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl228926228978%_))
                                                      (_%__match232451232452%_
                                                       _%e228909229042%_
                                                       _%hd228910229046%_
                                                       _%tl228911229049%_
                                                       _%e228918228955%_
                                                       _%hd228919228959%_
                                                       _%tl228920228962%_
                                                       _%e228921228965%_
                                                       _%hd228922228969%_
                                                       _%tl228923228972%_
                                                       _%__splice232415232416%_
                                                       _%target228924228975%_
                                                       _%tl228926228978%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g228907228938%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g228907228938%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g228907228938%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g228907228938%_))))))
                  (let () (declare (not safe)) (_%g228907228938%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx229061%_)
        (let* ((_%__stx232454232455%_ _%$stx229061%_)
               (_%g229066229113%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232454232455%_)))))
          (let ((_%__kont232457232458%_
                 (lambda (_%g229068229271%_ _%g229069229273%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g229069229273%_
                               (let ((__tmp232886
                                      (lambda (_%g229293229296%_
                                               _%g229294229299%_)
                                        (cons _%g229293229296%_
                                              _%g229294229299%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232886
                                  '()
                                  _%g229068229271%_))))))
                (_%__kont232461232462%_
                 (lambda (_%g229091229168%_ _%g229092229170%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g229092229170%_
                               (let ((__tmp232887
                                      (lambda (_%g229187229190%_
                                               _%g229188229193%_)
                                        (cons _%g229187229190%_
                                              _%g229188229193%_))))
                                 (declare (not safe))
                                 (__foldr1
                                  __tmp232887
                                  '()
                                  _%g229091229168%_)))))))
            (let* ((_%__match232521232522%_
                    (lambda (_%e229093229120%_
                             _%hd229094229124%_
                             _%tl229095229127%_
                             _%e229096229130%_
                             _%hd229097229134%_
                             _%tl229098229137%_
                             _%__splice232463232464%_
                             _%target229099229140%_
                             _%tl229101229143%_)
                      (letrec ((_%loop229102229146%_
                                (lambda (_%hd229100229150%_
                                         _%sig229106229153%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229100229150%_))
                                      (let ((_%e229103229155%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd229100229150%_))))
                                        (let ((_%lp-tl229105229162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229103229155%_)))
                                              (_%lp-hd229104229159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229103229155%_))))
                                          (_%loop229102229146%_
                                           _%lp-tl229105229162%_
                                           (cons _%lp-hd229104229159%_
                                                 _%sig229106229153%_))))
                                      (let ((_%sig229107229165%_
                                             (reverse _%sig229106229153%_)))
                                        (_%__kont232461232462%_
                                         _%sig229107229165%_
                                         _%hd229097229134%_))))))
                        (_%loop229102229146%_ _%target229099229140%_ '()))))
                   (_%__match232513232514%_
                    (lambda (_%e229093229120%_
                             _%hd229094229124%_
                             _%tl229095229127%_
                             _%e229096229130%_
                             _%hd229097229134%_
                             _%tl229098229137%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl229098229137%_))
                          (let ((_%__splice232463232464%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl229098229137%_
                                    '0))))
                            (let ((_%tl229101229143%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232463232464%_
                                      '1)))
                                  (_%target229099229140%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice232463232464%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229101229143%_))
                                  (_%__match232521232522%_
                                   _%e229093229120%_
                                   _%hd229094229124%_
                                   _%tl229095229127%_
                                   _%e229096229130%_
                                   _%hd229097229134%_
                                   _%tl229098229137%_
                                   _%__splice232463232464%_
                                   _%target229099229140%_
                                   _%tl229101229143%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g229066229113%_)))))
                          (let () (declare (not safe)) (_%g229066229113%_)))))
                   (_%__match232501232502%_
                    (lambda (_%e229070229203%_
                             _%hd229071229207%_
                             _%tl229072229210%_
                             _%e229073229213%_
                             _%hd229074229217%_
                             _%tl229075229220%_
                             _%e229076229223%_
                             _%hd229077229227%_
                             _%tl229078229230%_
                             _%e229079229233%_
                             _%hd229080229237%_
                             _%tl229081229240%_
                             _%__splice232459232460%_
                             _%target229082229243%_
                             _%tl229084229246%_)
                      (letrec ((_%loop229085229249%_
                                (lambda (_%hd229083229253%_
                                         _%sig229089229256%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229083229253%_))
                                      (let ((_%e229086229258%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd229083229253%_))))
                                        (let ((_%lp-tl229088229265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229086229258%_)))
                                              (_%lp-hd229087229262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229086229258%_))))
                                          (_%loop229085229249%_
                                           _%lp-tl229088229265%_
                                           (cons _%lp-hd229087229262%_
                                                 _%sig229089229256%_))))
                                      (let ((_%sig229090229268%_
                                             (reverse _%sig229089229256%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229078229230%_))
                                            (_%__kont232457232458%_
                                             _%sig229090229268%_
                                             _%hd229074229217%_)
                                            (_%__match232513232514%_
                                             _%e229070229203%_
                                             _%hd229071229207%_
                                             _%tl229072229210%_
                                             _%e229073229213%_
                                             _%hd229074229217%_
                                             _%tl229075229220%_)))))))
                        (_%loop229085229249%_ _%target229082229243%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232454232455%_))
                  (let ((_%e229070229203%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232454232455%_))))
                    (let ((_%tl229072229210%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229070229203%_)))
                          (_%hd229071229207%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229070229203%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229072229210%_))
                          (let ((_%e229073229213%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl229072229210%_))))
                            (let ((_%tl229075229220%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229073229213%_)))
                                  (_%hd229074229217%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229073229213%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl229075229220%_))
                                  (let ((_%e229076229223%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl229075229220%_))))
                                    (let ((_%tl229078229230%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229076229223%_)))
                                          (_%hd229077229227%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229076229223%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd229077229227%_))
                                          (let ((_%e229079229233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd229077229227%_))))
                                            (let ((_%tl229081229240%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e229079229233%_)))
                                                  (_%hd229080229237%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e229079229233%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd229080229237%_))
                                                  (if (let ((__tmp232888
                                                             |gxc[1]#_g232889_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp232888
                                                         _%hd229080229237%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl229081229240%_))
                                                          (let ((_%__splice232459232460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl229081229240%_
                            '0))))
                    (let ((_%tl229084229246%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232459232460%_ '1)))
                          (_%target229082229243%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232459232460%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229084229246%_))
                          (_%__match232501232502%_
                           _%e229070229203%_
                           _%hd229071229207%_
                           _%tl229072229210%_
                           _%e229073229213%_
                           _%hd229074229217%_
                           _%tl229075229220%_
                           _%e229076229223%_
                           _%hd229077229227%_
                           _%tl229078229230%_
                           _%e229079229233%_
                           _%hd229080229237%_
                           _%tl229081229240%_
                           _%__splice232459232460%_
                           _%target229082229243%_
                           _%tl229084229246%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl229075229220%_))
                              (let ((_%__splice232463232464%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl229075229220%_
                                        '0))))
                                (let ((_%tl229101229143%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232463232464%_
                                          '1)))
                                      (_%target229099229140%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice232463232464%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl229101229143%_))
                                      (_%__match232521232522%_
                                       _%e229070229203%_
                                       _%hd229071229207%_
                                       _%tl229072229210%_
                                       _%e229073229213%_
                                       _%hd229074229217%_
                                       _%tl229075229220%_
                                       _%__splice232463232464%_
                                       _%target229099229140%_
                                       _%tl229101229143%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g229066229113%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g229066229113%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl229075229220%_))
                      (let ((_%__splice232463232464%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl229075229220%_
                                '0))))
                        (let ((_%tl229101229143%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232463232464%_ '1)))
                              (_%target229099229140%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice232463232464%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl229101229143%_))
                              (_%__match232521232522%_
                               _%e229070229203%_
                               _%hd229071229207%_
                               _%tl229072229210%_
                               _%e229073229213%_
                               _%hd229074229217%_
                               _%tl229075229220%_
                               _%__splice232463232464%_
                               _%target229099229140%_
                               _%tl229101229143%_)
                              (let ()
                                (declare (not safe))
                                (_%g229066229113%_)))))
                      (let () (declare (not safe)) (_%g229066229113%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl229075229220%_))
                  (let ((_%__splice232463232464%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl229075229220%_
                            '0))))
                    (let ((_%tl229101229143%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232463232464%_ '1)))
                          (_%target229099229140%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice232463232464%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229101229143%_))
                          (_%__match232521232522%_
                           _%e229070229203%_
                           _%hd229071229207%_
                           _%tl229072229210%_
                           _%e229073229213%_
                           _%hd229074229217%_
                           _%tl229075229220%_
                           _%__splice232463232464%_
                           _%target229099229140%_
                           _%tl229101229143%_)
                          (let () (declare (not safe)) (_%g229066229113%_)))))
                  (let () (declare (not safe)) (_%g229066229113%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl229075229220%_))
                                                      (let ((_%__splice232463232464%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl229075229220%_
                        '0))))
                (let ((_%tl229101229143%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232463232464%_ '1)))
                      (_%target229099229140%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232463232464%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl229101229143%_))
                      (_%__match232521232522%_
                       _%e229070229203%_
                       _%hd229071229207%_
                       _%tl229072229210%_
                       _%e229073229213%_
                       _%hd229074229217%_
                       _%tl229075229220%_
                       _%__splice232463232464%_
                       _%target229099229140%_
                       _%tl229101229143%_)
                      (let () (declare (not safe)) (_%g229066229113%_)))))
              (let () (declare (not safe)) (_%g229066229113%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl229075229220%_))
                                              (let ((_%__splice232463232464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl229075229220%_
                                                        '0))))
                                                (let ((_%tl229101229143%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232463232464%_
                                                          '1)))
                                                      (_%target229099229140%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice232463232464%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229101229143%_))
                                                      (_%__match232521232522%_
                                                       _%e229070229203%_
                                                       _%hd229071229207%_
                                                       _%tl229072229210%_
                                                       _%e229073229213%_
                                                       _%hd229074229217%_
                                                       _%tl229075229220%_
                                                       _%__splice232463232464%_
                                                       _%target229099229140%_
                                                       _%tl229101229143%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g229066229113%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g229066229113%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl229075229220%_))
                                      (let ((_%__splice232463232464%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl229075229220%_
                                                '0))))
                                        (let ((_%tl229101229143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232463232464%_
                                                  '1)))
                                              (_%target229099229140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232463232464%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229101229143%_))
                                              (_%__match232521232522%_
                                               _%e229070229203%_
                                               _%hd229071229207%_
                                               _%tl229072229210%_
                                               _%e229073229213%_
                                               _%hd229074229217%_
                                               _%tl229075229220%_
                                               _%__splice232463232464%_
                                               _%target229099229140%_
                                               _%tl229101229143%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g229066229113%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229066229113%_))))))
                          (let () (declare (not safe)) (_%g229066229113%_)))))
                  (let () (declare (not safe)) (_%g229066229113%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx230456%_ _%id230458%_)
        (let ((_%proc230462%_
               (let ((__tmp232890
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230458%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232890))))
          (if (procedure? _%proc230462%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx230456%_
                 _%id230458%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx230447%_ _%id230449%_)
        (let ((_%klass230453%_
               (let ((__tmp232891
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id230449%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp232891))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass230453%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx230447%_
                 _%id230449%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx229697%_ _%proc229699%_ _%sig229700%_)
        (letrec ((_%signature-arity229702%_
                  (lambda (_%args230379%_)
                    (let _%loop230382%_ ((_%rest230385%_ _%args230379%_)
                                         (_%count230387%_ '0))
                      (let* ((_%rest230388230399%_ _%rest230385%_)
                             (_%E230392230405%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest230388230399%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K230395230436%_
                               (lambda (_%rest230433%_)
                                 (_%loop230382%_
                                  _%rest230433%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count230387%_ '1)))))
                              (_%K230394230425%_ (lambda () _%count230387%_))
                              (_%K230393230413%_
                               (lambda () (cons _%count230387%_ '()))))
                          (let ((_%try-match230390230429%_
                                 (lambda ()
                                   (if (null? _%rest230388230399%_)
                                       (_%K230394230425%_)
                                       (_%K230393230413%_)))))
                            (if (pair? _%rest230388230399%_)
                                (let* ((_%tl230397230440%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest230388230399%_)))
                                       (_%rest230444%_ _%tl230397230440%_))
                                  (_%K230395230436%_ _%rest230444%_))
                                (_%try-match230390230429%_))))))))
                 (_%make-signature229704%_
                  (lambda (_%args230261%_
                           _%return230263%_
                           _%effect230264%_
                           _%unchecked230265%_)
                    (let ((__tmp232892
                           (lambda (_%g230266230268%_)
                             (|gxc[1]#verify-class!|
                              _%ctx229697%_
                              _%g230266230268%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp232892 _%args230261%_))
                    (|gxc[1]#verify-class!| _%ctx229697%_ _%return230263%_)
                    (if _%unchecked230265%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx229697%_
                         _%unchecked230265%_)
                        '#!void)
                    (let ((_%arity230272%_
                           (_%signature-arity229702%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args230261%_)))))
                      (if _%effect230264%_
                          (let ((_%effect230275%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect230264%_))))
                            (if (and (list? _%effect230275%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect230275%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx229697%_
                                   _%proc229699%_
                                   _%effect230275%_))))
                          '#!void)
                      (cons _%arity230272%_
                            (cons (let* ((_%g230278230301%_
                                          (lambda (_%g230279230297%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g230279230297%_))))
                                         (_%g230277230375%_
                                          (lambda (_%g230279230305%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g230279230305%_))
                                                (let ((_%e230284230308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g230279230305%_))))
                                                  (let ((_%hd230285230312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230284230308%_)))
                                                        (_%tl230286230315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230284230308%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl230286230315%_))
                                                        (let ((_%e230287230318%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl230286230315%_))))
                  (let ((_%hd230288230322%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230287230318%_)))
                        (_%tl230289230325%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230287230318%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230289230325%_))
                        (let ((_%e230290230328%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl230289230325%_))))
                          (let ((_%hd230291230332%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230290230328%_)))
                                (_%tl230292230335%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230290230328%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl230292230335%_))
                                (let ((_%e230293230338%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl230292230335%_))))
                                  (let ((_%hd230294230342%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230293230338%_)))
                                        (_%tl230295230345%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230293230338%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl230295230345%_))
                                        ((lambda (_%g230280230348%_
                                                  _%g230281230350%_
                                                  _%g230282230351%_
                                                  _%g230283230352%_)
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
                           (cons _%g230283230352%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g230282230351%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g230281230350%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g230280230348%_ '()))
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
                                         _%hd230294230342%_
                                         _%hd230291230332%_
                                         _%hd230288230322%_
                                         _%hd230285230312%_)
                                        (_%g230278230301%_
                                         _%g230279230305%_))))
                                (_%g230278230301%_ _%g230279230305%_))))
                        (_%g230278230301%_ _%g230279230305%_))))
                (_%g230278230301%_ _%g230279230305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230278230301%_
                                                 _%g230279230305%_)))))
                                    (_%g230277230375%_
                                     (list _%args230261%_
                                           _%return230263%_
                                           _%effect230264%_
                                           _%unchecked230265%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx229697%_ _%proc229699%_)
          (let* ((_%__stx232532232533%_ _%sig229700%_)
                 (_%g229711229814%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx232532232533%_)))))
            (let ((_%__kont232535232536%_
                   (lambda (_%g229713230242%_ _%g229714230244%_)
                     (_%make-signature229704%_
                      _%g229714230244%_
                      _%g229713230242%_
                      '#f
                      '#f)))
                  (_%__kont232537232538%_
                   (lambda (_%g229721230193%_
                            _%g229722230195%_
                            _%g229723230196%_)
                     (_%make-signature229704%_
                      _%g229723230196%_
                      _%g229722230195%_
                      _%g229721230193%_
                      '#f)))
                  (_%__kont232539232540%_
                   (lambda (_%g229737230117%_
                            _%g229738230119%_
                            _%g229739230120%_)
                     (_%make-signature229704%_
                      _%g229739230120%_
                      _%g229738230119%_
                      _%g229737230117%_
                      (let ((__tmp232893
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229699%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232893)))))
                  (_%__kont232541232542%_
                   (lambda (_%g229757230023%_
                            _%g229758230025%_
                            _%g229759230026%_
                            _%g229760230027%_)
                     (_%make-signature229704%_
                      _%g229760230027%_
                      _%g229759230026%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229757230023%_)))))
                  (_%__kont232543232544%_
                   (lambda (_%g229781229930%_ _%g229782229932%_)
                     (_%make-signature229704%_
                      _%g229782229932%_
                      _%g229781229930%_
                      '#f
                      (let ((__tmp232894
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc229699%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp232894)))))
                  (_%__kont232545232546%_
                   (lambda (_%g229793229865%_
                            _%g229794229867%_
                            _%g229795229868%_)
                     (_%make-signature229704%_
                      _%g229795229868%_
                      _%g229794229867%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g229793229865%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232532232533%_))
                  (let ((_%e229715230222%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx232532232533%_))))
                    (let ((_%tl229717230229%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229715230222%_)))
                          (_%hd229716230226%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229715230222%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229717230229%_))
                          (let ((_%e229718230232%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl229717230229%_))))
                            (let ((_%tl229720230239%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229718230232%_)))
                                  (_%hd229719230236%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229718230232%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229720230239%_))
                                  (_%__kont232535232536%_
                                   _%hd229719230236%_
                                   _%hd229716230226%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl229720230239%_))
                                      (let ((_%e229730230169%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl229720230239%_))))
                                        (let ((_%tl229732230176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229730230169%_)))
                                              (_%hd229731230173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229730230169%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd229731230173%_))
                                              (let ((_%e229733230179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd229731230173%_))))
                                                (if (equal? _%e229733230179%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl229732230176%_))
                                                        (let ((_%e229734230183%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl229732230176%_))))
                  (let ((_%tl229736230190%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229734230183%_)))
                        (_%hd229735230187%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229734230183%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229736230190%_))
                        (_%__kont232537232538%_
                         _%hd229735230187%_
                         _%hd229719230236%_
                         _%hd229716230226%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229736230190%_))
                            (let ((_%e229753230103%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl229736230190%_))))
                              (let ((_%tl229755230110%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229753230103%_)))
                                    (_%hd229754230107%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229753230103%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd229754230107%_))
                                    (let ((_%e229756230113%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229754230107%_))))
                                      (if (equal? _%e229756230113%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229755230110%_))
                                              (_%__kont232539232540%_
                                               _%hd229735230187%_
                                               _%hd229719230236%_
                                               _%hd229716230226%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229755230110%_))
                                                  (let ((_%e229778230013%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229755230110%_))))
                                                    (let ((_%tl229780230020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229778230013%_)))
                                                          (_%hd229779230017%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229778230013%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl229780230020%_))
                                                          (_%__kont232541232542%_
                                                           _%hd229779230017%_
                                                           _%hd229735230187%_
                                                           _%hd229719230236%_
                                                           _%hd229716230226%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g229711229814%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g229711229814%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g229711229814%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g229711229814%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g229711229814%_))))))
                (let () (declare (not safe)) (_%g229711229814%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e229733230179%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229732230176%_))
                                                            (_%__kont232543232544%_
                                                             _%hd229719230236%_
                                                             _%hd229716230226%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl229732230176%_))
                        (let ((_%e229806229855%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229732230176%_))))
                          (let ((_%tl229808229862%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229806229855%_)))
                                (_%hd229807229859%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229806229855%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl229808229862%_))
                                (_%__kont232545232546%_
                                 _%hd229807229859%_
                                 _%hd229719230236%_
                                 _%hd229716230226%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g229711229814%_)))))
                        (let () (declare (not safe)) (_%g229711229814%_))))
                (let () (declare (not safe)) (_%g229711229814%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g229711229814%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g229711229814%_))))))
                          (let () (declare (not safe)) (_%g229711229814%_)))))
                  (let () (declare (not safe)) (_%g229711229814%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig229308%_)
        (let* ((_%g229311229391%_
                (lambda (_%g229312229387%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g229312229387%_))))
               (_%g229310229693%_
                (lambda (_%g229312229395%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g229312229395%_))
                      (let ((_%e229318229398%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g229312229395%_))))
                        (let ((_%hd229319229402%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229318229398%_)))
                              (_%tl229320229405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229318229398%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229320229405%_))
                              (let ((_%e229321229408%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl229320229405%_))))
                                (let ((_%hd229322229412%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229321229408%_)))
                                      (_%tl229323229415%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229321229408%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd229322229412%_))
                                      (let ((_%e229324229418%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229322229412%_))))
                                        (if (equal? _%e229324229418%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229323229415%_))
                                                (let ((_%e229325229422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229323229415%_))))
                                                  (let ((_%hd229326229426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229325229422%_)))
                                                        (_%tl229327229429%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229325229422%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd229326229426%_))
                                                        (let ((_%e229328229432%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd229326229426%_))))
                  (let ((_%hd229329229436%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229328229432%_)))
                        (_%tl229330229439%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229328229432%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd229329229436%_))
                        (if (let ((__tmp232895 |gxc[1]#_g232896_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp232895
                               _%hd229329229436%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229330229439%_))
                                (let ((_%e229331229442%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229330229439%_))))
                                  (let ((_%hd229332229446%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229331229442%_)))
                                        (_%tl229333229449%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229331229442%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229333229449%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229327229429%_))
                                            (let ((_%e229334229452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl229327229429%_))))
                                              (let ((_%hd229335229456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229334229452%_)))
                                                    (_%tl229336229459%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229334229452%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd229335229456%_))
                                                    (let ((_%e229337229462%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd229335229456%_))))
                                                      (if (equal? _%e229337229462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl229336229459%_))
                      (let ((_%e229338229466%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl229336229459%_))))
                        (let ((_%hd229339229470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229338229466%_)))
                              (_%tl229340229473%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229338229466%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd229339229470%_))
                              (let ((_%e229341229476%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd229339229470%_))))
                                (let ((_%hd229342229480%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229341229476%_)))
                                      (_%tl229343229483%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229341229476%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd229342229480%_))
                                      (if (let ((__tmp232897
                                                 |gxc[1]#_g232898_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp232897
                                             _%hd229342229480%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229343229483%_))
                                              (let ((_%e229344229486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229343229483%_))))
                                                (let ((_%hd229345229490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229344229486%_)))
                                                      (_%tl229346229493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229344229486%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229346229493%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl229340229473%_))
                                                          (let ((_%e229347229496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl229340229473%_))))
                    (let ((_%hd229348229500%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229347229496%_)))
                          (_%tl229349229503%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229347229496%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd229348229500%_))
                          (let ((_%e229350229506%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd229348229500%_))))
                            (if (equal? _%e229350229506%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229349229503%_))
                                    (let ((_%e229351229510%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl229349229503%_))))
                                      (let ((_%hd229352229514%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229351229510%_)))
                                            (_%tl229353229517%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229351229510%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd229352229514%_))
                                            (let ((_%e229354229520%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd229352229514%_))))
                                              (let ((_%hd229355229524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229354229520%_)))
                                                    (_%tl229356229527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229354229520%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd229355229524%_))
                                                    (if (let ((__tmp232899
                                                               |gxc[1]#_g232900_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp232899
                                                           _%hd229355229524%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229356229527%_))
                                                            (let ((_%e229357229530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl229356229527%_))))
                      (let ((_%hd229358229534%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229357229530%_)))
                            (_%tl229359229537%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229357229530%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229359229537%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229353229517%_))
                                (let ((_%e229360229540%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl229353229517%_))))
                                  (let ((_%hd229361229544%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229360229540%_)))
                                        (_%tl229362229547%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229360229540%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd229361229544%_))
                                        (let ((_%e229363229550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229361229544%_))))
                                          (if (equal? _%e229363229550%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229362229547%_))
                                                  (let ((_%e229364229554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl229362229547%_))))
                                                    (let ((_%hd229365229558%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229364229554%_)))
                                                          (_%tl229366229561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229364229554%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd229365229558%_))
                                                          (let ((_%e229367229564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd229365229558%_))))
                    (let ((_%hd229368229568%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229367229564%_)))
                          (_%tl229369229571%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229367229564%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd229368229568%_))
                          (if (let ((__tmp232901 |gxc[1]#_g232902_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp232901
                                 _%hd229368229568%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl229369229571%_))
                                  (let ((_%e229370229574%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl229369229571%_))))
                                    (let ((_%hd229371229578%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229370229574%_)))
                                          (_%tl229372229581%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229370229574%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl229372229581%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229366229561%_))
                                              (let ((_%e229373229584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl229366229561%_))))
                                                (let ((_%hd229374229588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229373229584%_)))
                                                      (_%tl229375229591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229373229584%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd229374229588%_))
                                                      (let ((_%e229376229594%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd229374229588%_))))
                (if (equal? _%e229376229594%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229375229591%_))
                        (let ((_%e229377229598%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl229375229591%_))))
                          (let ((_%hd229378229602%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229377229598%_)))
                                (_%tl229379229605%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229377229598%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229378229602%_))
                                (let ((_%e229380229608%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd229378229602%_))))
                                  (let ((_%hd229381229612%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229380229608%_)))
                                        (_%tl229382229615%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229380229608%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229381229612%_))
                                        (if (let ((__tmp232903
                                                   |gxc[1]#_g232904_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp232903
                                               _%hd229381229612%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229382229615%_))
                                                (let ((_%e229383229618%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl229382229615%_))))
                                                  (let ((_%hd229384229622%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229383229618%_)))
                                                        (_%tl229385229625%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229383229618%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229385229625%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl229379229605%_))
                                                            ((lambda (_%g229313229628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229314229630%_
                              _%g229315229631%_
                              _%g229316229632%_
                              _%g229317229633%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g229314229630%_))
                           (cons _%g229314229630%_
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
                       (cons _%g229316229632%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g229313229628%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd229384229622%_
                     _%hd229371229578%_
                     _%hd229358229534%_
                     _%hd229345229490%_
                     _%hd229332229446%_)
                    (_%g229311229391%_ _%g229312229395%_))
                (_%g229311229391%_ _%g229312229395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229311229391%_
                                                 _%g229312229395%_))
                                            (_%g229311229391%_
                                             _%g229312229395%_))
                                        (_%g229311229391%_
                                         _%g229312229395%_))))
                                (_%g229311229391%_ _%g229312229395%_))))
                        (_%g229311229391%_ _%g229312229395%_))
                    (_%g229311229391%_ _%g229312229395%_)))
              (_%g229311229391%_ _%g229312229395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229311229391%_
                                               _%g229312229395%_))
                                          (_%g229311229391%_
                                           _%g229312229395%_))))
                                  (_%g229311229391%_ _%g229312229395%_))
                              (_%g229311229391%_ _%g229312229395%_))
                          (_%g229311229391%_ _%g229312229395%_))))
                  (_%g229311229391%_ _%g229312229395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g229311229391%_
                                                   _%g229312229395%_))
                                              (_%g229311229391%_
                                               _%g229312229395%_)))
                                        (_%g229311229391%_
                                         _%g229312229395%_))))
                                (_%g229311229391%_ _%g229312229395%_))
                            (_%g229311229391%_ _%g229312229395%_))))
                    (_%g229311229391%_ _%g229312229395%_))
                (_%g229311229391%_ _%g229312229395%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229311229391%_
                                                     _%g229312229395%_))))
                                            (_%g229311229391%_
                                             _%g229312229395%_))))
                                    (_%g229311229391%_ _%g229312229395%_))
                                (_%g229311229391%_ _%g229312229395%_)))
                          (_%g229311229391%_ _%g229312229395%_))))
                  (_%g229311229391%_ _%g229312229395%_))
              (_%g229311229391%_ _%g229312229395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229311229391%_
                                               _%g229312229395%_))
                                          (_%g229311229391%_
                                           _%g229312229395%_))
                                      (_%g229311229391%_ _%g229312229395%_))))
                              (_%g229311229391%_ _%g229312229395%_))))
                      (_%g229311229391%_ _%g229312229395%_))
                  (_%g229311229391%_ _%g229312229395%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g229311229391%_
                                                     _%g229312229395%_))))
                                            (_%g229311229391%_
                                             _%g229312229395%_))
                                        (_%g229311229391%_
                                         _%g229312229395%_))))
                                (_%g229311229391%_ _%g229312229395%_))
                            (_%g229311229391%_ _%g229312229395%_))
                        (_%g229311229391%_ _%g229312229395%_))))
                (_%g229311229391%_ _%g229312229395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g229311229391%_
                                                 _%g229312229395%_))
                                            (_%g229311229391%_
                                             _%g229312229395%_)))
                                      (_%g229311229391%_ _%g229312229395%_))))
                              (_%g229311229391%_ _%g229312229395%_))))
                      (_%g229311229391%_ _%g229312229395%_)))))
          (_%g229310229693%_ _%sig229308%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx230465%_)
        (let* ((_%g230468230486%_
                (lambda (_%g230469230482%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230469230482%_))))
               (_%g230467230541%_
                (lambda (_%g230469230490%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230469230490%_))
                      (let ((_%e230472230493%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230469230490%_))))
                        (let ((_%hd230473230497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230472230493%_)))
                              (_%tl230474230500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230472230493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230474230500%_))
                              (let ((_%e230475230503%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230474230500%_))))
                                (let ((_%hd230476230507%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230475230503%_)))
                                      (_%tl230477230510%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230475230503%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl230477230510%_))
                                      (let ((_%e230478230513%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl230477230510%_))))
                                        (let ((_%hd230479230517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230478230513%_)))
                                              (_%tl230480230520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230478230513%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230480230520%_))
                                              ((lambda (_%g230470230523%_
                                                        _%g230471230525%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230471230525%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g230470230523%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx230465%_
                                                        _%g230471230525%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx230465%_
                                                        _%g230470230523%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g230471230525%_
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
                                                   (cons _%g230470230523%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g230468230486%_
                                                      _%g230469230490%_)))
                                               _%hd230479230517%_
                                               _%hd230476230507%_)
                                              (_%g230468230486%_
                                               _%g230469230490%_))))
                                      (_%g230468230486%_ _%g230469230490%_))))
                              (_%g230468230486%_ _%g230469230490%_))))
                      (_%g230468230486%_ _%g230469230490%_)))))
          (_%g230467230541%_ _%stx230465%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx230545%_)
        (let* ((_%g230548230572%_
                (lambda (_%g230549230568%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230549230568%_))))
               (_%g230547230853%_
                (lambda (_%g230549230576%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230549230576%_))
                      (let ((_%e230552230579%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230549230576%_))))
                        (let ((_%hd230553230583%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230552230579%_)))
                              (_%tl230554230586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230552230579%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230554230586%_))
                              (let ((_%e230555230589%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230554230586%_))))
                                (let ((_%hd230556230593%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230555230589%_)))
                                      (_%tl230557230596%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230555230589%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230557230596%_))
                                      (let ((_g232905_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230557230596%_
                                                '0))))
                                        (begin
                                          (let ((_g232906_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232905_)
                                                       (##values-length
                                                        _g232905_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232906_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232906_)))
                                          (let ((_%target230558230599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232905_ 0)))
                                                (_%tl230560230602%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232905_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230560230602%_))
                                                (letrec ((_%loop230561230605%_
                                                          (lambda (_%hd230559230609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature230565230612%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230559230609%_))
                        (let ((_%e230562230614%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230559230609%_))))
                          (let ((_%lp-hd230563230618%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230562230614%_)))
                                (_%lp-tl230564230621%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230562230614%_))))
                            (_%loop230561230605%_
                             _%lp-tl230564230621%_
                             (cons _%lp-hd230563230618%_
                                   _%signature230565230612%_))))
                        (let ((_%signature230566230624%_
                               (reverse _%signature230565230612%_)))
                          ((lambda (_%g230550230627%_ _%g230551230629%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230551230629%_))
                                 (let* ((_%g230647230662%_
                                         (lambda (_%g230648230658%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230648230658%_))))
                                        (_%g230646230841%_
                                         (lambda (_%g230648230666%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g230648230666%_))
                                               (let ((_%e230651230669%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g230648230666%_))))
                                                 (let ((_%hd230652230673%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230651230669%_)))
                                                       (_%tl230653230676%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230651230669%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl230653230676%_))
                                                       (let ((_%e230654230679%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl230653230676%_))))
                 (let ((_%hd230655230683%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230654230679%_)))
                       (_%tl230656230686%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230654230679%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl230656230686%_))
                       ((lambda (_%g230649230689%_ _%g230650230691%_)
                          (let* ((_%g230707230715%_
                                  (lambda (_%g230708230711%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g230708230711%_))))
                                 (_%g230706230837%_
                                  (lambda (_%g230708230719%_)
                                    ((lambda (_%g230709230722%_)
                                       (let* ((_%unchecked230735%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g230649230689%_))
                                              (_%g230738230746%_
                                               (lambda (_%g230739230742%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g230739230742%_))))
                                              (_%g230737230769%_
                                               (lambda (_%g230739230750%_)
                                                 ((lambda (_%g230740230753%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g230709230722%_
                                                                (cons _%g230740230753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g230739230750%_))))
                                         (_%g230737230769%_
                                          (if _%unchecked230735%_
                                              (let* ((_%g230773230788%_
                                                      (lambda (_%g230774230784%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g230774230784%_))))
                                                     (_%g230772230833%_
                                                      (lambda (_%g230774230792%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g230774230792%_))
                                                            (let ((_%e230777230795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g230774230792%_))))
                      (let ((_%hd230778230799%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230777230795%_)))
                            (_%tl230779230802%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230777230795%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230779230802%_))
                            (let ((_%e230780230805%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl230779230802%_))))
                              (let ((_%hd230781230809%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230780230805%_)))
                                    (_%tl230782230812%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230780230805%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230782230812%_))
                                    ((lambda (_%g230775230815%_
                                              _%g230776230817%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g230776230817%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g230650230691%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g230775230815%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd230781230809%_
                                     _%hd230778230799%_)
                                    (_%g230773230788%_ _%g230774230792%_))))
                            (_%g230773230788%_ _%g230774230792%_))))
                    (_%g230773230788%_ _%g230774230792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g230772230833%_
                                                 _%unchecked230735%_))
                                              '(begin)))))
                                     _%g230708230719%_))))
                            (_%g230706230837%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g230551230629%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g230650230691%_ '()))
                   (cons '#f (cons 'signature: (cons _%g230649230689%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd230655230683%_
                        _%hd230652230673%_)
                       (_%g230647230662%_ _%g230648230666%_))))
               (_%g230647230662%_ _%g230648230666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230647230662%_
                                                _%g230648230666%_)))))
                                   (_%g230646230841%_
                                    (|gxc[1]#parse-signature|
                                     _%stx230545%_
                                     _%g230551230629%_
                                     (let ((__tmp232907
                                            (lambda (_%g230844230847%_
                                                     _%g230845230850%_)
                                              (cons _%g230844230847%_
                                                    _%g230845230850%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp232907
                                        '()
                                        _%g230550230627%_)))))
                                 (_%g230548230572%_ _%g230549230576%_)))
                           _%signature230566230624%_
                           _%hd230556230593%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230561230605%_
                                                   _%target230558230599%_
                                                   '()))
                                                (_%g230548230572%_
                                                 _%g230549230576%_)))))
                                      (_%g230548230572%_ _%g230549230576%_))))
                              (_%g230548230572%_ _%g230549230576%_))))
                      (_%g230548230572%_ _%g230549230576%_)))))
          (_%g230547230853%_ _%stx230545%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx230858%_)
        (let* ((_%g230861230885%_
                (lambda (_%g230862230881%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230862230881%_))))
               (_%g230860231760%_
                (lambda (_%g230862230889%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230862230889%_))
                      (let ((_%e230865230892%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g230862230889%_))))
                        (let ((_%hd230866230896%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230865230892%_)))
                              (_%tl230867230899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230865230892%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230867230899%_))
                              (let ((_%e230868230902%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl230867230899%_))))
                                (let ((_%hd230869230906%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230868230902%_)))
                                      (_%tl230870230909%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230868230902%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230870230909%_))
                                      (let ((_g232908_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl230870230909%_
                                                '0))))
                                        (begin
                                          (let ((_g232909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g232908_)
                                                       (##values-length
                                                        _g232908_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g232909_ 2)))
                                                (error "Context expects 2 values"
                                                       _g232909_)))
                                          (let ((_%target230871230912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g232908_ 0)))
                                                (_%tl230873230915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g232908_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230873230915%_))
                                                (letrec ((_%loop230874230918%_
                                                          (lambda (_%hd230872230922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature230878230925%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd230872230922%_))
                        (let ((_%e230875230927%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd230872230922%_))))
                          (let ((_%lp-hd230876230931%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230875230927%_)))
                                (_%lp-tl230877230934%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230875230927%_))))
                            (_%loop230874230918%_
                             _%lp-tl230877230934%_
                             (cons _%lp-hd230876230931%_
                                   _%case-signature230878230925%_))))
                        (let ((_%case-signature230879230937%_
                               (reverse _%case-signature230878230925%_)))
                          ((lambda (_%g230863230940%_ _%g230864230942%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g230864230942%_))
                                 (let* ((_%signatures230973%_
                                         (map (lambda (_%g230959230961%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx230858%_
                                                 _%g230864230942%_
                                                 _%g230959230961%_))
                                              (let ((__tmp232910
                                                     (lambda (_%g230964230967%_
                                                              _%g230965230970%_)
                                                       (cons _%g230964230967%_
                                                             _%g230965230970%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp232910
                                                 '()
                                                 _%g230863230940%_))))
                                        (_%g230976231002%_
                                         (lambda (_%g230977230998%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g230977230998%_))))
                                        (_%g230975231756%_
                                         (lambda (_%g230977231006%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g230977231006%_))
                                               (let ((_g232911_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g230977231006%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g232912_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g232911_)
                        (##values-length _g232911_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g232912_ 2)))
                 (error "Context expects 2 values" _g232912_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target230980231009%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232911_
                                                             0)))
                                                         (_%tl230982231012%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g232911_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl230982231012%_))
                                                         (letrec ((_%loop230983231015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd230981231019%_
                                    _%sig230987231022%_
                                    _%arity230988231023%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd230981231019%_))
                                 (let ((_%e230984231025%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd230981231019%_))))
                                   (let ((_%lp-hd230985231029%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e230984231025%_)))
                                         (_%lp-tl230986231032%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e230984231025%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd230985231029%_))
                                         (let ((_%e230991231035%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd230985231029%_))))
                                           (let ((_%hd230992231039%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e230991231035%_)))
                                                 (_%tl230993231042%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e230991231035%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl230993231042%_))
                                                 (let ((_%e230994231045%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl230993231042%_))))
                                                   (let ((_%hd230995231049%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e230994231045%_)))
                                                         (_%tl230996231052%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e230994231045%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl230996231052%_))
                                                         (_%loop230983231015%_
                                                          _%lp-tl230986231032%_
                                                          (cons _%hd230995231049%_
                                                                _%sig230987231022%_)
                                                          (cons _%hd230992231039%_
                                                                _%arity230988231023%_))
                                                         (_%g230976231002%_
                                                          _%g230977231006%_))))
                                                 (_%g230976231002%_
                                                  _%g230977231006%_))))
                                         (_%g230976231002%_
                                          _%g230977231006%_))))
                                 (let ((_%sig230989231055%_
                                        (reverse _%sig230987231022%_))
                                       (_%arity230990231057%_
                                        (reverse _%arity230988231023%_)))
                                   ((lambda (_%g230978231059%_
                                             _%g230979231061%_)
                                      (let* ((_%g231078231086%_
                                              (lambda (_%g231079231082%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g231079231082%_))))
                                             (_%g231077231741%_
                                              (lambda (_%g231079231090%_)
                                                ((lambda (_%g231080231093%_)
                                                   (let* ((_%g231106231114%_
                                                           (lambda (_%g231107231110%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g231107231110%_))))
                  (_%g231105231136%_
                   (lambda (_%g231107231118%_)
                     ((lambda (_%g231108231121%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g231080231093%_
                                    (cons _%g231108231121%_ '()))))
                      _%g231107231118%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231105231136%_
                                                      (let ((_g232913_
                                                             (let _%loop231140%_ ((_%rest231143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures230973%_)
                                          (_%unchecked-proc231145%_ '#f)
                                          (_%unchecked-clauses231146%_ '()))
                       (let* ((_%rest231147231155%_ _%rest231143%_)
                              (_%else231149231167%_
                               (lambda ()
                                 (values _%unchecked-proc231145%_
                                         (reverse!
                                          _%unchecked-clauses231146%_))))
                              (_%K231151231608%_
                               (lambda (_%rest231171%_ _%hd231173%_)
                                 (let* ((_%g231175231262%_
                                         (lambda (_%g231176231258%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g231176231258%_))))
                                        (_%g231174231604%_
                                         (lambda (_%g231176231266%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g231176231266%_))
                                               (let ((_%e231183231269%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g231176231266%_))))
                                                 (let ((_%hd231184231273%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231183231269%_)))
                                                       (_%tl231185231276%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231183231269%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl231185231276%_))
                                                       (let ((_%e231186231279%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl231185231276%_))))
                 (let ((_%hd231187231283%_
                        (let ()
                          (declare (not safe))
                          (##car _%e231186231279%_)))
                       (_%tl231188231286%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e231186231279%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd231187231283%_))
                       (let ((_%e231189231289%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd231187231283%_))))
                         (let ((_%hd231190231293%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231189231289%_)))
                               (_%tl231191231296%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231189231289%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl231191231296%_))
                               (let ((_%e231192231299%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl231191231296%_))))
                                 (let ((_%hd231193231303%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231192231299%_)))
                                       (_%tl231194231306%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231192231299%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd231193231303%_))
                                       (let ((_%e231195231309%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd231193231303%_))))
                                         (if (equal? _%e231195231309%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231194231306%_))
                                                 (let ((_%e231196231313%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231194231306%_))))
                                                   (let ((_%hd231197231317%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231196231313%_)))
                                                         (_%tl231198231320%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231196231313%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd231197231317%_))
                                                         (let ((_%e231199231323%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd231197231317%_))))
                   (let ((_%hd231200231327%_
                          (let ()
                            (declare (not safe))
                            (##car _%e231199231323%_)))
                         (_%tl231201231330%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e231199231323%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd231200231327%_))
                         (if (let ((__tmp232915 |gxc[1]#_g232916_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp232915
                                _%hd231200231327%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231201231330%_))
                                 (let ((_%e231202231333%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231201231330%_))))
                                   (let ((_%hd231203231337%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231202231333%_)))
                                         (_%tl231204231340%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231202231333%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl231204231340%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl231198231320%_))
                                             (let ((_%e231205231343%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl231198231320%_))))
                                               (let ((_%hd231206231347%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231205231343%_)))
                                                     (_%tl231207231350%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231205231343%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd231206231347%_))
                                                     (let ((_%e231208231353%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd231206231347%_))))
                                                       (if (equal? _%e231208231353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl231207231350%_))
                       (let ((_%e231209231357%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl231207231350%_))))
                         (let ((_%hd231210231361%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231209231357%_)))
                               (_%tl231211231364%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231209231357%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd231210231361%_))
                               (let ((_%e231212231367%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd231210231361%_))))
                                 (let ((_%hd231213231371%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231212231367%_)))
                                       (_%tl231214231374%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231212231367%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd231213231371%_))
                                       (if (let ((__tmp232917
                                                  |gxc[1]#_g232918_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp232917
                                              _%hd231213231371%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231214231374%_))
                                               (let ((_%e231215231377%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231214231374%_))))
                                                 (let ((_%hd231216231381%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231215231377%_)))
                                                       (_%tl231217231384%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231215231377%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl231217231384%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl231211231364%_))
                                                           (let ((_%e231218231387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl231211231364%_))))
                     (let ((_%hd231219231391%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231218231387%_)))
                           (_%tl231220231394%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231218231387%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd231219231391%_))
                           (let ((_%e231221231397%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd231219231391%_))))
                             (if (equal? _%e231221231397%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl231220231394%_))
                                     (let ((_%e231222231401%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl231220231394%_))))
                                       (let ((_%hd231223231405%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e231222231401%_)))
                                             (_%tl231224231408%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e231222231401%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd231223231405%_))
                                             (let ((_%e231225231411%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd231223231405%_))))
                                               (let ((_%hd231226231415%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e231225231411%_)))
                                                     (_%tl231227231418%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e231225231411%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd231226231415%_))
                                                     (if (let ((__tmp232919
                                                                |gxc[1]#_g232920_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp232919
                                                            _%hd231226231415%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl231227231418%_))
                     (let ((_%e231228231421%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl231227231418%_))))
                       (let ((_%hd231229231425%_
                              (let ()
                                (declare (not safe))
                                (##car _%e231228231421%_)))
                             (_%tl231230231428%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e231228231421%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl231230231428%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl231224231408%_))
                                 (let ((_%e231231231431%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl231224231408%_))))
                                   (let ((_%hd231232231435%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231231231431%_)))
                                         (_%tl231233231438%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231231231431%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd231232231435%_))
                                         (let ((_%e231234231441%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231232231435%_))))
                                           (if (equal? _%e231234231441%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl231233231438%_))
                                                   (let ((_%e231235231445%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl231233231438%_))))
                                                     (let ((_%hd231236231449%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e231235231445%_)))
                                                           (_%tl231237231452%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e231235231445%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd231236231449%_))
                                                           (let ((_%e231238231455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd231236231449%_))))
                     (let ((_%hd231239231459%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231238231455%_)))
                           (_%tl231240231462%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231238231455%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd231239231459%_))
                           (if (let ((__tmp232921 |gxc[1]#_g232922_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp232921
                                  _%hd231239231459%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl231240231462%_))
                                   (let ((_%e231241231465%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl231240231462%_))))
                                     (let ((_%hd231242231469%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e231241231465%_)))
                                           (_%tl231243231472%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e231241231465%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl231243231472%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl231237231452%_))
                                               (let ((_%e231244231475%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl231237231452%_))))
                                                 (let ((_%hd231245231479%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231244231475%_)))
                                                       (_%tl231246231482%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231244231475%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd231245231479%_))
                                                       (let ((_%e231247231485%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd231245231479%_))))
                 (if (equal? _%e231247231485%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl231246231482%_))
                         (let ((_%e231248231489%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl231246231482%_))))
                           (let ((_%hd231249231493%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e231248231489%_)))
                                 (_%tl231250231496%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e231248231489%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd231249231493%_))
                                 (let ((_%e231251231499%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd231249231493%_))))
                                   (let ((_%hd231252231503%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231251231499%_)))
                                         (_%tl231253231506%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231251231499%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd231252231503%_))
                                         (if (let ((__tmp232923
                                                    |gxc[1]#_g232924_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp232923
                                                _%hd231252231503%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl231253231506%_))
                                                 (let ((_%e231254231509%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl231253231506%_))))
                                                   (let ((_%hd231255231513%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e231254231509%_)))
                                                         (_%tl231256231516%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e231254231509%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl231256231516%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl231250231496%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl231188231286%_))
                         ((lambda (_%g231177231519%_
                                   _%g231178231521%_
                                   _%g231179231522%_
                                   _%g231180231523%_
                                   _%g231181231524%_
                                   _%g231182231525%_)
                            (let ((_%clause231596%_
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
                                                     (cons _%g231182231525%_
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
                                                 (cons _%g231180231523%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231177231519%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked231598%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g231178231521%_))))
                              (_%loop231140%_
                               _%rest231171%_
                               (let ((_%$e231600%_ _%unchecked231598%_))
                                 (if _%$e231600%_
                                     _%$e231600%_
                                     _%unchecked-proc231145%_))
                               (cons _%clause231596%_
                                     _%unchecked-clauses231146%_))))
                          _%hd231255231513%_
                          _%hd231242231469%_
                          _%hd231229231425%_
                          _%hd231216231381%_
                          _%hd231203231337%_
                          _%hd231184231273%_)
                         (_%g231175231262%_ _%g231176231266%_))
                     (_%g231175231262%_ _%g231176231266%_))
                 (_%g231175231262%_ _%g231176231266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g231175231262%_
                                                  _%g231176231266%_))
                                             (_%g231175231262%_
                                              _%g231176231266%_))
                                         (_%g231175231262%_
                                          _%g231176231266%_))))
                                 (_%g231175231262%_ _%g231176231266%_))))
                         (_%g231175231262%_ _%g231176231266%_))
                     (_%g231175231262%_ _%g231176231266%_)))
               (_%g231175231262%_ _%g231176231266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231175231262%_
                                                _%g231176231266%_))
                                           (_%g231175231262%_
                                            _%g231176231266%_))))
                                   (_%g231175231262%_ _%g231176231266%_))
                               (_%g231175231262%_ _%g231176231266%_))
                           (_%g231175231262%_ _%g231176231266%_))))
                   (_%g231175231262%_ _%g231176231266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g231175231262%_
                                                    _%g231176231266%_))
                                               (_%g231175231262%_
                                                _%g231176231266%_)))
                                         (_%g231175231262%_
                                          _%g231176231266%_))))
                                 (_%g231175231262%_ _%g231176231266%_))
                             (_%g231175231262%_ _%g231176231266%_))))
                     (_%g231175231262%_ _%g231176231266%_))
                 (_%g231175231262%_ _%g231176231266%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231175231262%_
                                                      _%g231176231266%_))))
                                             (_%g231175231262%_
                                              _%g231176231266%_))))
                                     (_%g231175231262%_ _%g231176231266%_))
                                 (_%g231175231262%_ _%g231176231266%_)))
                           (_%g231175231262%_ _%g231176231266%_))))
                   (_%g231175231262%_ _%g231176231266%_))
               (_%g231175231262%_ _%g231176231266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231175231262%_
                                                _%g231176231266%_))
                                           (_%g231175231262%_
                                            _%g231176231266%_))
                                       (_%g231175231262%_ _%g231176231266%_))))
                               (_%g231175231262%_ _%g231176231266%_))))
                       (_%g231175231262%_ _%g231176231266%_))
                   (_%g231175231262%_ _%g231176231266%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g231175231262%_
                                                      _%g231176231266%_))))
                                             (_%g231175231262%_
                                              _%g231176231266%_))
                                         (_%g231175231262%_
                                          _%g231176231266%_))))
                                 (_%g231175231262%_ _%g231176231266%_))
                             (_%g231175231262%_ _%g231176231266%_))
                         (_%g231175231262%_ _%g231176231266%_))))
                 (_%g231175231262%_ _%g231176231266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g231175231262%_
                                                  _%g231176231266%_))
                                             (_%g231175231262%_
                                              _%g231176231266%_)))
                                       (_%g231175231262%_ _%g231176231266%_))))
                               (_%g231175231262%_ _%g231176231266%_))))
                       (_%g231175231262%_ _%g231176231266%_))))
               (_%g231175231262%_ _%g231176231266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231175231262%_
                                                _%g231176231266%_)))))
                                   (_%g231174231604%_ _%hd231173%_)))))
                         (if (pair? _%rest231147231155%_)
                             (let ((_%hd231152231612%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest231147231155%_)))
                                   (_%tl231153231615%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest231147231155%_))))
                               (let* ((_%hd231618%_ _%hd231152231612%_)
                                      (_%rest231621%_ _%tl231153231615%_))
                                 (_%K231151231608%_
                                  _%rest231621%_
                                  _%hd231618%_)))
                             (_%else231149231167%_))))))
                (begin
                  (let ((_g232914_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232913_)
                               (##values-length _g232913_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232914_ 2)))
                        (error "Context expects 2 values" _g232914_)))
                  (let ((_%unchecked-proc231624%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232913_ 0)))
                        (_%unchecked-clauses231626%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232913_ 1))))
                    (if _%unchecked-proc231624%_
                        (let* ((_%g231628231652%_
                                (lambda (_%g231629231648%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g231629231648%_))))
                               (_%g231627231737%_
                                (lambda (_%g231629231656%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g231629231656%_))
                                      (let ((_%e231632231659%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g231629231656%_))))
                                        (let ((_%hd231633231663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231632231659%_)))
                                              (_%tl231634231666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231632231659%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231634231666%_))
                                              (let ((_%e231635231669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231634231666%_))))
                                                (let ((_%hd231636231673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231635231669%_)))
                                                      (_%tl231637231676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231635231669%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd231636231673%_))
                                                      (let ((_g232925_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd231636231673%_ '0))))
                (begin
                  (let ((_g232926_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g232925_)
                               (##values-length _g232925_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g232926_ 2)))
                        (error "Context expects 2 values" _g232926_)))
                  (let ((_%target231638231679%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232925_ 0)))
                        (_%tl231640231682%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g232925_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl231640231682%_))
                        (letrec ((_%loop231641231685%_
                                  (lambda (_%hd231639231689%_
                                           _%clause231645231692%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd231639231689%_))
                                        (let ((_%e231642231694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd231639231689%_))))
                                          (let ((_%lp-hd231643231698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231642231694%_)))
                                                (_%lp-tl231644231701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231642231694%_))))
                                            (_%loop231641231685%_
                                             _%lp-tl231644231701%_
                                             (cons _%lp-hd231643231698%_
                                                   _%clause231645231692%_))))
                                        (let ((_%clause231646231704%_
                                               (reverse _%clause231645231692%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl231637231676%_))
                                              ((lambda (_%g231630231707%_
                                                        _%g231631231709%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g231631231709%_
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
                                             (let ((__tmp232927
                                                    (lambda (_%g231728231731%_
                                                             _%g231729231734%_)
                                                      (cons _%g231728231731%_
                                                            _%g231729231734%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp232927
                                                '()
                                                _%g231630231707%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause231646231704%_
                                               _%hd231633231663%_)
                                              (_%g231628231652%_
                                               _%g231629231656%_)))))))
                          (_%loop231641231685%_ _%target231638231679%_ '()))
                        (_%g231628231652%_ _%g231629231656%_)))))
              (_%g231628231652%_ _%g231629231656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g231628231652%_
                                               _%g231629231656%_))))
                                      (_%g231628231652%_ _%g231629231656%_)))))
                          (_%g231627231737%_
                           (list _%unchecked-proc231624%_
                                 _%unchecked-clauses231626%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g231079231090%_))))
                                        (_%g231077231741%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g230864230942%_
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
                                          _%g230978231059%_
                                          _%g230979231061%_))
                                       (let ((__tmp232928
                                              (lambda (_%g231744231748%_
                                                       _%g231745231751%_
                                                       _%g231746231753%_)
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
                                (cons _%g231745231751%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g231744231748%_ '())))))
              _%g231746231753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp232928
                                          '()
                                          _%g230978231059%_
                                          _%g230979231061%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig230989231055%_
                                    _%arity230990231057%_))))))
                   (_%loop230983231015%_ _%target230980231009%_ '() '()))
                 (_%g230976231002%_ _%g230977231006%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230976231002%_
                                                _%g230977231006%_)))))
                                   (_%g230975231756%_ _%signatures230973%_))
                                 (_%g230861230885%_ _%g230862230889%_)))
                           _%case-signature230879230937%_
                           _%hd230869230906%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop230874230918%_
                                                   _%target230871230912%_
                                                   '()))
                                                (_%g230861230885%_
                                                 _%g230862230889%_)))))
                                      (_%g230861230885%_ _%g230862230889%_))))
                              (_%g230861230885%_ _%g230862230889%_))))
                      (_%g230861230885%_ _%g230862230889%_)))))
          (_%g230860231760%_ _%stx230858%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx231768%_)
        (let* ((_%__stx232748232749%_ _%$stx231768%_)
               (_%g231774231834%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232748232749%_)))))
          (let ((_%__kont232751232752%_
                 (lambda (_%g231776232056%_ _%g231777232058%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231777232058%_ '()))
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
                                                       (cons _%g231777232058%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231776232056%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232753232754%_
                 (lambda (_%g231791231981%_
                          _%g231792231983%_
                          _%g231793231984%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231793231984%_ '()))
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
                                                       (cons _%g231793231984%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231792231983%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231791231981%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont232755232756%_
                 (lambda (_%g231810231895%_
                          _%g231811231897%_
                          _%g231812231898%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g231812231898%_ '()))
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
                                                       (cons _%g231812231898%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g231811231897%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g231810231895%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232748232749%_))
                (let ((_%e231778232012%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx232748232749%_))))
                  (let ((_%tl231780232019%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231778232012%_)))
                        (_%hd231779232016%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231778232012%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231780232019%_))
                        (let ((_%e231781232022%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl231780232019%_))))
                          (let ((_%tl231783232029%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231781232022%_)))
                                (_%hd231782232026%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231781232022%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd231782232026%_))
                                (let ((_%e231784232032%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231782232026%_))))
                                  (if (equal? _%e231784232032%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl231783232029%_))
                                          (let ((_%e231785232036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl231783232029%_))))
                                            (let ((_%tl231787232043%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e231785232036%_)))
                                                  (_%hd231786232040%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e231785232036%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231787232043%_))
                                                  (let ((_%e231788232046%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231787232043%_))))
                                                    (let ((_%tl231790232053%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231788232046%_)))
                                                          (_%hd231789232050%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231788232046%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl231790232053%_))
                                                          (_%__kont232751232752%_
                                                           _%hd231789232050%_
                                                           _%hd231786232040%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g231774231834%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231774231834%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g231774231834%_)))
                                      (if (equal? _%e231784232032%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231783232029%_))
                                              (let ((_%e231801231951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl231783232029%_))))
                                                (let ((_%tl231803231958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231801231951%_)))
                                                      (_%hd231802231955%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231801231951%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl231803231958%_))
                                                      (let ((_%e231804231961%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl231803231958%_))))
                (let ((_%tl231806231968%_
                       (let () (declare (not safe)) (##cdr _%e231804231961%_)))
                      (_%hd231805231965%_
                       (let ()
                         (declare (not safe))
                         (##car _%e231804231961%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl231806231968%_))
                      (let ((_%e231807231971%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl231806231968%_))))
                        (let ((_%tl231809231978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231807231971%_)))
                              (_%hd231808231975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231807231971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl231809231978%_))
                              (_%__kont232753232754%_
                               _%hd231808231975%_
                               _%hd231805231965%_
                               _%hd231802231955%_)
                              (let ()
                                (declare (not safe))
                                (_%g231774231834%_)))))
                      (let () (declare (not safe)) (_%g231774231834%_)))))
              (let () (declare (not safe)) (_%g231774231834%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g231774231834%_)))
                                          (if (equal? _%e231784232032%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231783232029%_))
                                                  (let ((_%e231820231865%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl231783232029%_))))
                                                    (let ((_%tl231822231872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231820231865%_)))
                                                          (_%hd231821231869%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231820231865%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl231822231872%_))
                                                          (let ((_%e231823231875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl231822231872%_))))
                    (let ((_%tl231825231882%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e231823231875%_)))
                          (_%hd231824231879%_
                           (let ()
                             (declare (not safe))
                             (##car _%e231823231875%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231825231882%_))
                          (let ((_%e231826231885%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl231825231882%_))))
                            (let ((_%tl231828231892%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231826231885%_)))
                                  (_%hd231827231889%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231826231885%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231828231892%_))
                                  (_%__kont232755232756%_
                                   _%hd231827231889%_
                                   _%hd231824231879%_
                                   _%hd231821231869%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g231774231834%_)))))
                          (let () (declare (not safe)) (_%g231774231834%_)))))
                  (let () (declare (not safe)) (_%g231774231834%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g231774231834%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g231774231834%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g231774231834%_)))))
                        (let () (declare (not safe)) (_%g231774231834%_)))))
                (let () (declare (not safe)) (_%g231774231834%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx232080%_)
        (let* ((_%g232084232104%_
                (lambda (_%g232085232100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g232085232100%_))))
               (_%g232083232173%_
                (lambda (_%g232085232108%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g232085232108%_))
                      (let ((_%e232087232111%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g232085232108%_))))
                        (let ((_%hd232088232115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232087232111%_)))
                              (_%tl232089232118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232087232111%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl232089232118%_))
                              (let ((_g232929_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl232089232118%_
                                        '0))))
                                (begin
                                  (let ((_g232930_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g232929_)
                                               (##values-length _g232929_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g232930_ 2)))
                                        (error "Context expects 2 values"
                                               _g232930_)))
                                  (let ((_%target232090232121%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232929_ 0)))
                                        (_%tl232092232124%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g232929_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl232092232124%_))
                                        (letrec ((_%loop232093232127%_
                                                  (lambda (_%hd232091232131%_
                                                           _%decl232097232134%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd232091232131%_))
                                                        (let ((_%e232094232136%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd232091232131%_))))
                  (let ((_%lp-hd232095232140%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232094232136%_)))
                        (_%lp-tl232096232143%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232094232136%_))))
                    (_%loop232093232127%_
                     _%lp-tl232096232143%_
                     (cons _%lp-hd232095232140%_ _%decl232097232134%_))))
                (let ((_%decl232098232146%_ (reverse _%decl232097232134%_)))
                  ((lambda (_%g232086232149%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp232931
                                  (lambda (_%g232164232167%_ _%g232165232170%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g232164232167%_)
                                          _%g232165232170%_))))
                             (declare (not safe))
                             (__foldr1 __tmp232931 '() _%g232086232149%_))))
                   _%decl232098232146%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop232093232127%_
                                           _%target232090232121%_
                                           '()))
                                        (_%g232084232104%_
                                         _%g232085232108%_)))))
                              (_%g232084232104%_ _%g232085232108%_))))
                      (_%g232084232104%_ _%g232085232108%_)))))
          (_%g232083232173%_ _%$stx232080%_))))))
