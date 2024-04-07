(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202747_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202761_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202763_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202765_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202767_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202780_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202782_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202784_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202786_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx196303%_)
        (let* ((_%g196307196325%_
                (lambda (_%g196308196321%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196308196321%_))))
               (_%g196306196380%_
                (lambda (_%g196308196329%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196308196329%_))
                      (let ((_%e196313196332%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196308196329%_))))
                        (let ((_%hd196312196336%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196313196332%_)))
                              (_%tl196311196339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196313196332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196311196339%_))
                              (let ((_%e196316196342%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196311196339%_))))
                                (let ((_%hd196315196346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196316196342%_)))
                                      (_%tl196314196349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196316196342%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196314196349%_))
                                      (let ((_%e196319196352%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196314196349%_))))
                                        (let ((_%hd196318196356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196319196352%_)))
                                              (_%tl196317196359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196319196352%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196317196359%_))
                                              ((lambda (_%L196362%_
                                                        _%L196364%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196364%_))
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
                               (cons _%L196364%_ '()))
                         (cons _%L196362%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196307196325%_
                                                      _%g196308196329%_)))
                                               _%hd196318196356%_
                                               _%hd196315196346%_)
                                              (_%g196307196325%_
                                               _%g196308196329%_))))
                                      (_%g196307196325%_ _%g196308196329%_))))
                              (_%g196307196325%_ _%g196308196329%_))))
                      (_%g196307196325%_ _%g196308196329%_)))))
          (_%g196306196380%_ _%$stx196303%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx196384%_)
        (let* ((_%g196388196406%_
                (lambda (_%g196389196402%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196389196402%_))))
               (_%g196387196461%_
                (lambda (_%g196389196410%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196389196410%_))
                      (let ((_%e196394196413%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196389196410%_))))
                        (let ((_%hd196393196417%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196394196413%_)))
                              (_%tl196392196420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196394196413%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196392196420%_))
                              (let ((_%e196397196423%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196392196420%_))))
                                (let ((_%hd196396196427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196397196423%_)))
                                      (_%tl196395196430%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196397196423%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196395196430%_))
                                      (let ((_%e196400196433%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196395196430%_))))
                                        (let ((_%hd196399196437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196400196433%_)))
                                              (_%tl196398196440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196400196433%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196398196440%_))
                                              ((lambda (_%L196443%_
                                                        _%L196445%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196445%_))
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
                               (cons _%L196445%_ '()))
                         (cons _%L196443%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196388196406%_
                                                      _%g196389196410%_)))
                                               _%hd196399196437%_
                                               _%hd196396196427%_)
                                              (_%g196388196406%_
                                               _%g196389196410%_))))
                                      (_%g196388196406%_ _%g196389196410%_))))
                              (_%g196388196406%_ _%g196389196410%_))))
                      (_%g196388196406%_ _%g196389196410%_)))))
          (_%g196387196461%_ _%$stx196384%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx196465%_)
        (let* ((_%g196469196498%_
                (lambda (_%g196470196494%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196470196494%_))))
               (_%g196468196598%_
                (lambda (_%g196470196502%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196470196502%_))
                      (let ((_%e196475196505%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196470196502%_))))
                        (let ((_%hd196474196509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196475196505%_)))
                              (_%tl196473196512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196475196505%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196473196512%_))
                              (let ((_g202725_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196473196512%_
                                        '0))))
                                (begin
                                  (let ((_g202726_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202725_)
                                               (##vector-length _g202725_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202726_ 2)))
                                        (error "Context expects 2 values"
                                               _g202726_)))
                                  (let ((_%target196476196515%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202725_ 0)))
                                        (_%tl196478196518%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202725_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196478196518%_))
                                        (letrec ((_%loop196479196521%_
                                                  (lambda (_%hd196477196525%_
                                                           _%type196483196528%_
                                                           _%symbol196484196530%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196477196525%_))
                                                        (let ((_%e196480196533%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196477196525%_))))
                  (let ((_%lp-hd196481196537%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196480196533%_)))
                        (_%lp-tl196482196540%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196480196533%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196481196537%_))
                        (let ((_%e196489196543%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196481196537%_))))
                          (let ((_%hd196488196547%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196489196543%_)))
                                (_%tl196487196550%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196489196543%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196487196550%_))
                                (let ((_%e196492196553%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196487196550%_))))
                                  (let ((_%hd196491196557%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196492196553%_)))
                                        (_%tl196490196560%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196492196553%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196490196560%_))
                                        (_%loop196479196521%_
                                         _%lp-tl196482196540%_
                                         (cons _%hd196491196557%_
                                               _%type196483196528%_)
                                         (cons _%hd196488196547%_
                                               _%symbol196484196530%_))
                                        (_%g196469196498%_
                                         _%g196470196502%_))))
                                (_%g196469196498%_ _%g196470196502%_))))
                        (_%g196469196498%_ _%g196470196502%_))))
                (let ((_%type196485196563%_ (reverse _%type196483196528%_))
                      (_%symbol196486196566%_
                       (reverse _%symbol196484196530%_)))
                  ((lambda (_%L196569%_ _%L196571%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196569%_
                                _%L196571%_))
                             (let ((__tmp202727
                                    (lambda (_%g196586196590%_
                                             _%g196587196593%_
                                             _%g196588196595%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g196587196593%_
                                                        (cons _%g196586196590%_
                                                              '())))
                                            _%g196588196595%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202727
                                '()
                                _%L196569%_
                                _%L196571%_)))))
                   _%type196485196563%_
                   _%symbol196486196566%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196479196521%_
                                           _%target196476196515%_
                                           '()
                                           '()))
                                        (_%g196469196498%_
                                         _%g196470196502%_)))))
                              (_%g196469196498%_ _%g196470196502%_))))
                      (_%g196469196498%_ _%g196470196502%_)))))
          (_%g196468196598%_ _%$stx196465%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx196603%_)
        (let* ((_%__stx202036202037%_ _%$stx196603%_)
               (_%g196608196650%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202036202037%_)))))
          (let ((_%__kont202039202040%_
                 (lambda (_%L196778%_ _%L196780%_ _%L196781%_ _%L196782%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196782%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196781%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196780%_ '()))
                                           (cons _%L196778%_ '())))))))
                (_%__kont202041202042%_
                 (lambda (_%L196697%_ _%L196699%_ _%L196700%_ _%L196701%_)
                   (cons _%L196701%_
                         (cons _%L196700%_
                               (cons _%L196699%_
                                     (cons _%L196697%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match202075202076%_
                   (lambda (_%e196616196728%_
                            _%hd196615196732%_
                            _%tl196614196735%_
                            _%e196619196738%_
                            _%hd196618196742%_
                            _%tl196617196745%_
                            _%e196622196748%_
                            _%hd196621196752%_
                            _%tl196620196755%_
                            _%e196625196758%_
                            _%hd196624196762%_
                            _%tl196623196765%_
                            _%e196628196768%_
                            _%hd196627196772%_
                            _%tl196626196775%_)
                     (let ((_%L196778%_ _%hd196627196772%_)
                           (_%L196780%_ _%hd196624196762%_)
                           (_%L196781%_ _%hd196621196752%_)
                           (_%L196782%_ _%hd196618196742%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196782%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196781%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196780%_)))
                           (_%__kont202039202040%_
                            _%L196778%_
                            _%L196780%_
                            _%L196781%_
                            _%L196782%_)
                           (let ()
                             (declare (not safe))
                             (_%g196608196650%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202036202037%_))
                  (let ((_%e196616196728%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202036202037%_))))
                    (let ((_%tl196614196735%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196616196728%_)))
                          (_%hd196615196732%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196616196728%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196614196735%_))
                          (let ((_%e196619196738%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl196614196735%_))))
                            (let ((_%tl196617196745%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196619196738%_)))
                                  (_%hd196618196742%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196619196738%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196617196745%_))
                                  (let ((_%e196622196748%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl196617196745%_))))
                                    (let ((_%tl196620196755%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196622196748%_)))
                                          (_%hd196621196752%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196622196748%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196620196755%_))
                                          (let ((_%e196625196758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl196620196755%_))))
                                            (let ((_%tl196623196765%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196625196758%_)))
                                                  (_%hd196624196762%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196625196758%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196623196765%_))
                                                  (let ((_%e196628196768%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl196623196765%_))))
                                                    (let ((_%tl196626196775%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196628196768%_)))
                                                          (_%hd196627196772%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196628196768%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196626196775%_))
                                                          (_%__match202075202076%_
                                                           _%e196616196728%_
                                                           _%hd196615196732%_
                                                           _%tl196614196735%_
                                                           _%e196619196738%_
                                                           _%hd196618196742%_
                                                           _%tl196617196745%_
                                                           _%e196622196748%_
                                                           _%hd196621196752%_
                                                           _%tl196620196755%_
                                                           _%e196625196758%_
                                                           _%hd196624196762%_
                                                           _%tl196623196765%_
                                                           _%e196628196768%_
                                                           _%hd196627196772%_
                                                           _%tl196626196775%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196608196650%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196623196765%_))
                                                      (_%__kont202041202042%_
                                                       _%hd196624196762%_
                                                       _%hd196621196752%_
                                                       _%hd196618196742%_
                                                       _%hd196615196732%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196608196650%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g196608196650%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196608196650%_)))))
                          (let () (declare (not safe)) (_%g196608196650%_)))))
                  (let () (declare (not safe)) (_%g196608196650%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx196807%_)
        (let* ((_%g196811196846%_
                (lambda (_%g196812196842%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196812196842%_))))
               (_%g196810196965%_
                (lambda (_%g196812196850%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196812196850%_))
                      (let ((_%e196818196853%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196812196850%_))))
                        (let ((_%hd196817196857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196818196853%_)))
                              (_%tl196816196860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196818196853%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196816196860%_))
                              (let ((_g202728_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196816196860%_
                                        '0))))
                                (begin
                                  (let ((_g202729_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202728_)
                                               (##vector-length _g202728_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202729_ 2)))
                                        (error "Context expects 2 values"
                                               _g202729_)))
                                  (let ((_%target196819196863%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202728_ 0)))
                                        (_%tl196821196866%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202728_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196821196866%_))
                                        (letrec ((_%loop196822196869%_
                                                  (lambda (_%hd196820196873%_
                                                           _%symbol196826196876%_
                                                           _%method196827196878%_
                                                           _%type-t196828196880%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196820196873%_))
                                                        (let ((_%e196823196883%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196820196873%_))))
                  (let ((_%lp-hd196824196887%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196823196883%_)))
                        (_%lp-tl196825196890%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196823196883%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196824196887%_))
                        (let ((_%e196834196893%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196824196887%_))))
                          (let ((_%hd196833196897%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196834196893%_)))
                                (_%tl196832196900%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196834196893%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196832196900%_))
                                (let ((_%e196837196903%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196832196900%_))))
                                  (let ((_%hd196836196907%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196837196903%_)))
                                        (_%tl196835196910%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196837196903%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196835196910%_))
                                        (let ((_%e196840196913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196835196910%_))))
                                          (let ((_%hd196839196917%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196840196913%_)))
                                                (_%tl196838196920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196840196913%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196838196920%_))
                                                (_%loop196822196869%_
                                                 _%lp-tl196825196890%_
                                                 (cons _%hd196839196917%_
                                                       _%symbol196826196876%_)
                                                 (cons _%hd196836196907%_
                                                       _%method196827196878%_)
                                                 (cons _%hd196833196897%_
                                                       _%type-t196828196880%_))
                                                (_%g196811196846%_
                                                 _%g196812196850%_))))
                                        (_%g196811196846%_
                                         _%g196812196850%_))))
                                (_%g196811196846%_ _%g196812196850%_))))
                        (_%g196811196846%_ _%g196812196850%_))))
                (let ((_%symbol196829196923%_ (reverse _%symbol196826196876%_))
                      (_%method196830196926%_ (reverse _%method196827196878%_))
                      (_%type-t196831196928%_
                       (reverse _%type-t196828196880%_)))
                  ((lambda (_%L196931%_ _%L196933%_ _%L196934%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196931%_
                                _%L196933%_
                                _%L196934%_))
                             (let ((__tmp202730
                                    (lambda (_%g196950196955%_
                                             _%g196951196958%_
                                             _%g196952196960%_
                                             _%g196953196962%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196952196960%_
                                                        (cons _%g196951196958%_
                                                              (cons _%g196950196955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196953196962%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp202730
                                '()
                                _%L196931%_
                                _%L196933%_
                                _%L196934%_)))))
                   _%symbol196829196923%_
                   _%method196830196926%_
                   _%type-t196831196928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196822196869%_
                                           _%target196819196863%_
                                           '()
                                           '()
                                           '()))
                                        (_%g196811196846%_
                                         _%g196812196850%_)))))
                              (_%g196811196846%_ _%g196812196850%_))))
                      (_%g196811196846%_ _%g196812196850%_)))))
          (_%g196810196965%_ _%$stx196807%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196970%_)
        (let* ((_%g196974197007%_
                (lambda (_%g196975197003%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196975197003%_))))
               (_%g196973197121%_
                (lambda (_%g196975197011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196975197011%_))
                      (let ((_%e196981197014%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196975197011%_))))
                        (let ((_%hd196980197018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196981197014%_)))
                              (_%tl196979197021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196981197014%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196979197021%_))
                              (let ((_%e196984197024%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196979197021%_))))
                                (let ((_%hd196983197028%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196984197024%_)))
                                      (_%tl196982197031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196984197024%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196982197031%_))
                                      (let ((_g202731_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196982197031%_
                                                '0))))
                                        (begin
                                          (let ((_g202732_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202731_)
                                                       (##vector-length
                                                        _g202731_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202732_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202732_)))
                                          (let ((_%target196985197034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202731_ 0)))
                                                (_%tl196987197037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202731_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196987197037%_))
                                                (letrec ((_%loop196988197040%_
                                                          (lambda (_%hd196986197044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196992197047%_
                           _%method196993197049%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196986197044%_))
                        (let ((_%e196989197052%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196986197044%_))))
                          (let ((_%lp-hd196990197056%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196989197052%_)))
                                (_%lp-tl196991197059%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196989197052%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196990197056%_))
                                (let ((_%e196998197062%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196990197056%_))))
                                  (let ((_%hd196997197066%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196998197062%_)))
                                        (_%tl196996197069%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196998197062%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196996197069%_))
                                        (let ((_%e197001197072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196996197069%_))))
                                          (let ((_%hd197000197076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197001197072%_)))
                                                (_%tl196999197079%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197001197072%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196999197079%_))
                                                (_%loop196988197040%_
                                                 _%lp-tl196991197059%_
                                                 (cons _%hd197000197076%_
                                                       _%symbol196992197047%_)
                                                 (cons _%hd196997197066%_
                                                       _%method196993197049%_))
                                                (_%g196974197007%_
                                                 _%g196975197011%_))))
                                        (_%g196974197007%_
                                         _%g196975197011%_))))
                                (_%g196974197007%_ _%g196975197011%_))))
                        (let ((_%symbol196994197082%_
                               (reverse _%symbol196992197047%_))
                              (_%method196995197085%_
                               (reverse _%method196993197049%_)))
                          ((lambda (_%L197088%_ _%L197090%_ _%L197091%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L197088%_
                                        _%L197090%_))
                                     (let ((__tmp202733
                                            (lambda (_%g197109197113%_
                                                     _%g197110197116%_
                                                     _%g197111197118%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L197091%_
                                                                (cons _%g197110197116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g197109197113%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g197111197118%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp202733
                                        '()
                                        _%L197088%_
                                        _%L197090%_)))))
                           _%symbol196994197082%_
                           _%method196995197085%_
                           _%hd196983197028%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196988197040%_
                                                   _%target196985197034%_
                                                   '()
                                                   '()))
                                                (_%g196974197007%_
                                                 _%g196975197011%_)))))
                                      (_%g196974197007%_ _%g196975197011%_))))
                              (_%g196974197007%_ _%g196975197011%_))))
                      (_%g196974197007%_ _%g196975197011%_)))))
          (_%g196973197121%_ _%$stx196970%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx197126%_)
        (let* ((_%g197130197144%_
                (lambda (_%g197131197140%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197131197140%_))))
               (_%g197129197185%_
                (lambda (_%g197131197148%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197131197148%_))
                      (let ((_%e197135197151%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197131197148%_))))
                        (let ((_%hd197134197155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197135197151%_)))
                              (_%tl197133197158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197135197151%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197133197158%_))
                              (let ((_%e197138197161%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197133197158%_))))
                                (let ((_%hd197137197165%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197138197161%_)))
                                      (_%tl197136197168%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197138197161%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197136197168%_))
                                      ((lambda (_%L197171%_)
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
                                                           (cons _%L197171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197137197165%_)
                                      (_%g197130197144%_ _%g197131197148%_))))
                              (_%g197130197144%_ _%g197131197148%_))))
                      (_%g197130197144%_ _%g197131197148%_)))))
          (_%g197129197185%_ _%$stx197126%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx197189%_)
        (let* ((_%g197193197247%_
                (lambda (_%g197194197243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197194197243%_))))
               (_%g197192197428%_
                (lambda (_%g197194197251%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197194197251%_))
                      (let ((_%e197208197254%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197194197251%_))))
                        (let ((_%hd197207197258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197208197254%_)))
                              (_%tl197206197261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197208197254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197206197261%_))
                              (let ((_%e197211197264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197206197261%_))))
                                (let ((_%hd197210197268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197211197264%_)))
                                      (_%tl197209197271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197211197264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197209197271%_))
                                      (let ((_%e197214197274%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197209197271%_))))
                                        (let ((_%hd197213197278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197214197274%_)))
                                              (_%tl197212197281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197214197274%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197212197281%_))
                                              (let ((_%e197217197284%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197212197281%_))))
                                                (let ((_%hd197216197288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197217197284%_)))
                                                      (_%tl197215197291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197217197284%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197215197291%_))
                                                      (let ((_%e197220197294%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197215197291%_))))
                (let ((_%hd197219197298%_
                       (let () (declare (not safe)) (##car _%e197220197294%_)))
                      (_%tl197218197301%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197220197294%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197218197301%_))
                      (let ((_%e197223197304%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197218197301%_))))
                        (let ((_%hd197222197308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197223197304%_)))
                              (_%tl197221197311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197223197304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197221197311%_))
                              (let ((_%e197226197314%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197221197311%_))))
                                (let ((_%hd197225197318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197226197314%_)))
                                      (_%tl197224197321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197226197314%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197224197321%_))
                                      (let ((_%e197229197324%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197224197321%_))))
                                        (let ((_%hd197228197328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197229197324%_)))
                                              (_%tl197227197331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197229197324%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197227197331%_))
                                              (let ((_%e197232197334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197227197331%_))))
                                                (let ((_%hd197231197338%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197232197334%_)))
                                                      (_%tl197230197341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197232197334%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197230197341%_))
                                                      (let ((_%e197235197344%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197230197341%_))))
                (let ((_%hd197234197348%_
                       (let () (declare (not safe)) (##car _%e197235197344%_)))
                      (_%tl197233197351%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197235197344%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197233197351%_))
                      (let ((_%e197238197354%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197233197351%_))))
                        (let ((_%hd197237197358%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197238197354%_)))
                              (_%tl197236197361%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197238197354%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197236197361%_))
                              (let ((_%e197241197364%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197236197361%_))))
                                (let ((_%hd197240197368%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197241197364%_)))
                                      (_%tl197239197371%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197241197364%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197239197371%_))
                                      ((lambda (_%L197374%_
                                                _%L197376%_
                                                _%L197377%_
                                                _%L197378%_
                                                _%L197379%_
                                                _%L197380%_
                                                _%L197381%_
                                                _%L197382%_
                                                _%L197383%_
                                                _%L197384%_
                                                _%L197385%_)
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
                                                           (cons _%L197385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L197384%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197383%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197382%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197381%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197380%_ '()))
                                           (cons _%L197379%_
                                                 (cons _%L197378%_
                                                       (cons _%L197377%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197376%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L197374%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd197240197368%_
                                       _%hd197237197358%_
                                       _%hd197234197348%_
                                       _%hd197231197338%_
                                       _%hd197228197328%_
                                       _%hd197225197318%_
                                       _%hd197222197308%_
                                       _%hd197219197298%_
                                       _%hd197216197288%_
                                       _%hd197213197278%_
                                       _%hd197210197268%_)
                                      (_%g197193197247%_ _%g197194197251%_))))
                              (_%g197193197247%_ _%g197194197251%_))))
                      (_%g197193197247%_ _%g197194197251%_))))
              (_%g197193197247%_ _%g197194197251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197193197247%_
                                               _%g197194197251%_))))
                                      (_%g197193197247%_ _%g197194197251%_))))
                              (_%g197193197247%_ _%g197194197251%_))))
                      (_%g197193197247%_ _%g197194197251%_))))
              (_%g197193197247%_ _%g197194197251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197193197247%_
                                               _%g197194197251%_))))
                                      (_%g197193197247%_ _%g197194197251%_))))
                              (_%g197193197247%_ _%g197194197251%_))))
                      (_%g197193197247%_ _%g197194197251%_)))))
          (_%g197192197428%_ _%$stx197189%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx197432%_)
        (let* ((_%g197436197450%_
                (lambda (_%g197437197446%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197437197446%_))))
               (_%g197435197491%_
                (lambda (_%g197437197454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197437197454%_))
                      (let ((_%e197441197457%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197437197454%_))))
                        (let ((_%hd197440197461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197441197457%_)))
                              (_%tl197439197464%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197441197457%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197439197464%_))
                              (let ((_%e197444197467%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197439197464%_))))
                                (let ((_%hd197443197471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197444197467%_)))
                                      (_%tl197442197474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197444197467%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197442197474%_))
                                      ((lambda (_%L197477%_)
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
                                                           (cons _%L197477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197443197471%_)
                                      (_%g197436197450%_ _%g197437197454%_))))
                              (_%g197436197450%_ _%g197437197454%_))))
                      (_%g197436197450%_ _%g197437197454%_)))))
          (_%g197435197491%_ _%$stx197432%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx197495%_)
        (let* ((_%g197499197513%_
                (lambda (_%g197500197509%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197500197509%_))))
               (_%g197498197554%_
                (lambda (_%g197500197517%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197500197517%_))
                      (let ((_%e197504197520%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197500197517%_))))
                        (let ((_%hd197503197524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197504197520%_)))
                              (_%tl197502197527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197504197520%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197502197527%_))
                              (let ((_%e197507197530%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197502197527%_))))
                                (let ((_%hd197506197534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197507197530%_)))
                                      (_%tl197505197537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197507197530%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197505197537%_))
                                      ((lambda (_%L197540%_)
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
                                                           (cons _%L197540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197506197534%_)
                                      (_%g197499197513%_ _%g197500197517%_))))
                              (_%g197499197513%_ _%g197500197517%_))))
                      (_%g197499197513%_ _%g197500197517%_)))))
          (_%g197498197554%_ _%$stx197495%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx197558%_)
        (let* ((_%g197562197584%_
                (lambda (_%g197563197580%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197563197580%_))))
               (_%g197561197653%_
                (lambda (_%g197563197588%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197563197588%_))
                      (let ((_%e197569197591%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197563197588%_))))
                        (let ((_%hd197568197595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197569197591%_)))
                              (_%tl197567197598%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197569197591%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197567197598%_))
                              (let ((_%e197572197601%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197567197598%_))))
                                (let ((_%hd197571197605%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197572197601%_)))
                                      (_%tl197570197608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197572197601%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197570197608%_))
                                      (let ((_%e197575197611%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197570197608%_))))
                                        (let ((_%hd197574197615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197575197611%_)))
                                              (_%tl197573197618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197575197611%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197573197618%_))
                                              (let ((_%e197578197621%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197573197618%_))))
                                                (let ((_%hd197577197625%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197578197621%_)))
                                                      (_%tl197576197628%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197578197621%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197576197628%_))
                                                      ((lambda (_%L197631%_
                                                                _%L197633%_
                                                                _%L197634%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197634%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197633%_ '()))
                                   (cons _%L197631%_ '())))))
               _%hd197577197625%_
               _%hd197574197615%_
               _%hd197571197605%_)
              (_%g197562197584%_ _%g197563197588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197562197584%_
                                               _%g197563197588%_))))
                                      (_%g197562197584%_ _%g197563197588%_))))
                              (_%g197562197584%_ _%g197563197588%_))))
                      (_%g197562197584%_ _%g197563197588%_)))))
          (_%g197561197653%_ _%$stx197558%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx197657%_)
        (let* ((_%g197661197683%_
                (lambda (_%g197662197679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197662197679%_))))
               (_%g197660197752%_
                (lambda (_%g197662197687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197662197687%_))
                      (let ((_%e197668197690%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197662197687%_))))
                        (let ((_%hd197667197694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197668197690%_)))
                              (_%tl197666197697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197668197690%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197666197697%_))
                              (let ((_%e197671197700%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197666197697%_))))
                                (let ((_%hd197670197704%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197671197700%_)))
                                      (_%tl197669197707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197671197700%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197669197707%_))
                                      (let ((_%e197674197710%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197669197707%_))))
                                        (let ((_%hd197673197714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197674197710%_)))
                                              (_%tl197672197717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197674197710%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197672197717%_))
                                              (let ((_%e197677197720%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197672197717%_))))
                                                (let ((_%hd197676197724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197677197720%_)))
                                                      (_%tl197675197727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197677197720%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197675197727%_))
                                                      ((lambda (_%L197730%_
                                                                _%L197732%_
                                                                _%L197733%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197733%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197732%_ '()))
                                   (cons _%L197730%_ '())))))
               _%hd197676197724%_
               _%hd197673197714%_
               _%hd197670197704%_)
              (_%g197661197683%_ _%g197662197687%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197661197683%_
                                               _%g197662197687%_))))
                                      (_%g197661197683%_ _%g197662197687%_))))
                              (_%g197661197683%_ _%g197662197687%_))))
                      (_%g197661197683%_ _%g197662197687%_)))))
          (_%g197660197752%_ _%$stx197657%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx197756%_)
        (let* ((_%g197760197774%_
                (lambda (_%g197761197770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197761197770%_))))
               (_%g197759197815%_
                (lambda (_%g197761197778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197761197778%_))
                      (let ((_%e197765197781%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197761197778%_))))
                        (let ((_%hd197764197785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197765197781%_)))
                              (_%tl197763197788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197765197781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197763197788%_))
                              (let ((_%e197768197791%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197763197788%_))))
                                (let ((_%hd197767197795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197768197791%_)))
                                      (_%tl197766197798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197768197791%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197766197798%_))
                                      ((lambda (_%L197801%_)
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
                                                           (cons _%L197801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197767197795%_)
                                      (_%g197760197774%_ _%g197761197778%_))))
                              (_%g197760197774%_ _%g197761197778%_))))
                      (_%g197760197774%_ _%g197761197778%_)))))
          (_%g197759197815%_ _%$stx197756%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx197819%_)
        (let* ((_%g197823197841%_
                (lambda (_%g197824197837%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197824197837%_))))
               (_%g197822197896%_
                (lambda (_%g197824197845%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197824197845%_))
                      (let ((_%e197829197848%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197824197845%_))))
                        (let ((_%hd197828197852%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197829197848%_)))
                              (_%tl197827197855%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197829197848%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197827197855%_))
                              (let ((_%e197832197858%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197827197855%_))))
                                (let ((_%hd197831197862%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197832197858%_)))
                                      (_%tl197830197865%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197832197858%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197830197865%_))
                                      (let ((_%e197835197868%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197830197865%_))))
                                        (let ((_%hd197834197872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197835197868%_)))
                                              (_%tl197833197875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197835197868%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197833197875%_))
                                              ((lambda (_%L197878%_
                                                        _%L197880%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197880%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197878%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197834197872%_
                                               _%hd197831197862%_)
                                              (_%g197823197841%_
                                               _%g197824197845%_))))
                                      (_%g197823197841%_ _%g197824197845%_))))
                              (_%g197823197841%_ _%g197824197845%_))))
                      (_%g197823197841%_ _%g197824197845%_)))))
          (_%g197822197896%_ _%$stx197819%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197900%_)
        (let* ((_%__stx202104202105%_ _%$stx197900%_)
               (_%g197907197968%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202104202105%_)))))
          (let ((_%__kont202107202108%_
                 (lambda (_%L198206%_ _%L198208%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198208%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198206%_ '()))
                                     '())))))
                (_%__kont202109202110%_
                 (lambda (_%L198145%_ _%L198147%_ _%L198148%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198148%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198147%_ '()))
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
                                 (cons _%L198145%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont202111202112%_
                 (lambda (_%L198069%_ _%L198071%_)
                   (cons _%L198071%_ (cons _%L198069%_ (cons '#f '())))))
                (_%__kont202113202114%_
                 (lambda (_%L198019%_ _%L198021%_ _%L198022%_)
                   (cons _%L198022%_
                         (cons _%L198021%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L198019%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202104202105%_))
                (let ((_%e197913198176%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202104202105%_))))
                  (let ((_%tl197911198183%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197913198176%_)))
                        (_%hd197912198180%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197913198176%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197911198183%_))
                        (let ((_%e197916198186%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197911198183%_))))
                          (let ((_%tl197914198193%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197916198186%_)))
                                (_%hd197915198190%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197916198186%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197914198193%_))
                                (let ((_%e197919198196%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197914198193%_))))
                                  (let ((_%tl197917198203%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197919198196%_)))
                                        (_%hd197918198200%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197919198196%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197917198203%_))
                                        (_%__kont202107202108%_
                                         _%hd197918198200%_
                                         _%hd197915198190%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197917198203%_))
                                            (let ((_%e197934198121%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197917198203%_))))
                                              (let ((_%tl197932198128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197934198121%_)))
                                                    (_%hd197933198125%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197934198121%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197933198125%_))
                                                    (let ((_%e197935198131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197933198125%_))))
                                                      (if (equal? _%e197935198131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197932198128%_))
                      (let ((_%e197938198135%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197932198128%_))))
                        (let ((_%tl197936198142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197938198135%_)))
                              (_%hd197937198139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197938198135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197936198142%_))
                              (_%__kont202109202110%_
                               _%hd197937198139%_
                               _%hd197918198200%_
                               _%hd197915198190%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197918198200%_))
                                  (let ((_%e197959198005%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197918198200%_))))
                                    (declare (not safe))
                                    (_%g197907197968%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197907197968%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197918198200%_))
                          (let ((_%e197959198005%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197918198200%_))))
                            (if (equal? _%e197959198005%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197932198128%_))
                                    (_%__kont202113202114%_
                                     _%hd197933198125%_
                                     _%hd197915198190%_
                                     _%hd197912198180%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197907197968%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197907197968%_))))
                          (let () (declare (not safe)) (_%g197907197968%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197918198200%_))
                      (let ((_%e197959198005%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197918198200%_))))
                        (if (equal? _%e197959198005%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197932198128%_))
                                (_%__kont202113202114%_
                                 _%hd197933198125%_
                                 _%hd197915198190%_
                                 _%hd197912198180%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197907197968%_)))
                            (let () (declare (not safe)) (_%g197907197968%_))))
                      (let () (declare (not safe)) (_%g197907197968%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197918198200%_))
                                                        (let ((_%e197959198005%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197918198200%_))))
                  (if (equal? _%e197959198005%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197932198128%_))
                          (_%__kont202113202114%_
                           _%hd197933198125%_
                           _%hd197915198190%_
                           _%hd197912198180%_)
                          (let () (declare (not safe)) (_%g197907197968%_)))
                      (let () (declare (not safe)) (_%g197907197968%_))))
                (let () (declare (not safe)) (_%g197907197968%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197918198200%_))
                                                (let ((_%e197959198005%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197918198200%_))))
                                                  (declare (not safe))
                                                  (_%g197907197968%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197907197968%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197914198193%_))
                                    (_%__kont202111202112%_
                                     _%hd197915198190%_
                                     _%hd197912198180%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197907197968%_))))))
                        (let () (declare (not safe)) (_%g197907197968%_)))))
                (let () (declare (not safe)) (_%g197907197968%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx198227%_)
        (let* ((_%g198231198260%_
                (lambda (_%g198232198256%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198232198256%_))))
               (_%g198230198369%_
                (lambda (_%g198232198264%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198232198264%_))
                      (let ((_%e198236198267%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198232198264%_))))
                        (let ((_%hd198235198271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198236198267%_)))
                              (_%tl198234198274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198236198267%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198234198274%_))
                              (let ((_g202734_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198234198274%_
                                        '0))))
                                (begin
                                  (let ((_g202735_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202734_)
                                               (##vector-length _g202734_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202735_ 2)))
                                        (error "Context expects 2 values"
                                               _g202735_)))
                                  (let ((_%target198237198277%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202734_ 0)))
                                        (_%tl198239198280%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202734_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198239198280%_))
                                        (letrec ((_%loop198240198283%_
                                                  (lambda (_%hd198238198287%_
                                                           _%clause198244198290%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198238198287%_))
                                                        (let ((_%e198241198293%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198238198287%_))))
                  (let ((_%lp-hd198242198297%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198241198293%_)))
                        (_%lp-tl198243198300%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198241198293%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd198242198297%_))
                        (let ((_g202736_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd198242198297%_
                                  '0))))
                          (begin
                            (let ((_g202737_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g202736_)
                                         (##vector-length _g202736_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g202737_ 2)))
                                  (error "Context expects 2 values"
                                         _g202737_)))
                            (let ((_%target198246198303%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202736_ 0)))
                                  (_%tl198248198306%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202736_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198248198306%_))
                                  (letrec ((_%loop198249198309%_
                                            (lambda (_%hd198247198313%_
                                                     _%clause198253198316%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198247198313%_))
                                                  (let ((_%e198250198319%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd198247198313%_))))
                                                    (let ((_%lp-hd198251198323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198250198319%_)))
                                                          (_%lp-tl198252198326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198250198319%_))))
                                                      (_%loop198249198309%_
                                                       _%lp-tl198252198326%_
                                                       (cons _%lp-hd198251198323%_
                                                             _%clause198253198316%_))))
                                                  (let ((_%clause198254198329%_
                                                         (reverse _%clause198253198316%_)))
                                                    (_%loop198240198283%_
                                                     _%lp-tl198243198300%_
                                                     (cons _%clause198254198329%_
                                                           _%clause198244198290%_)))))))
                                    (_%loop198249198309%_
                                     _%target198246198303%_
                                     '()))
                                  (_%g198231198260%_ _%g198232198264%_)))))
                        (_%g198231198260%_ _%g198232198264%_))))
                (let ((_%clause198245198333%_
                       (reverse _%clause198244198290%_)))
                  ((lambda (_%L198337%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp202738
                                              (lambda (_%g198352198357%_
                                                       _%g198353198360%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp202739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g198354198363%_ _%g198355198366%_)
                             (cons _%g198354198363%_ _%g198355198366%_))))
                      (declare (not safe))
                      (__foldr1 __tmp202739 '() _%g198352198357%_)))
              _%g198353198360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp202738
                                          '()
                                          _%L198337%_)))
                                 '())))
                   _%clause198245198333%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198240198283%_
                                           _%target198237198277%_
                                           '()))
                                        (_%g198231198260%_
                                         _%g198232198264%_)))))
                              (_%g198231198260%_ _%g198232198264%_))))
                      (_%g198231198260%_ _%g198232198264%_)))))
          (_%g198230198369%_ _%$stx198227%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx198375%_)
        (let* ((_%g198379198397%_
                (lambda (_%g198380198393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198380198393%_))))
               (_%g198378198452%_
                (lambda (_%g198380198401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198380198401%_))
                      (let ((_%e198385198404%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198380198401%_))))
                        (let ((_%hd198384198408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198385198404%_)))
                              (_%tl198383198411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198385198404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198383198411%_))
                              (let ((_%e198388198414%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198383198411%_))))
                                (let ((_%hd198387198418%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198388198414%_)))
                                      (_%tl198386198421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198388198414%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198386198421%_))
                                      (let ((_%e198391198424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198386198421%_))))
                                        (let ((_%hd198390198428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198391198424%_)))
                                              (_%tl198389198431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198391198424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198389198431%_))
                                              ((lambda (_%L198434%_
                                                        _%L198436%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198436%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198434%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198390198428%_
                                               _%hd198387198418%_)
                                              (_%g198379198397%_
                                               _%g198380198401%_))))
                                      (_%g198379198397%_ _%g198380198401%_))))
                              (_%g198379198397%_ _%g198380198401%_))))
                      (_%g198379198397%_ _%g198380198401%_)))))
          (_%g198378198452%_ _%$stx198375%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx198456%_)
        (let* ((_%g198460198478%_
                (lambda (_%g198461198474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198461198474%_))))
               (_%g198459198533%_
                (lambda (_%g198461198482%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198461198482%_))
                      (let ((_%e198466198485%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198461198482%_))))
                        (let ((_%hd198465198489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198466198485%_)))
                              (_%tl198464198492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198466198485%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198464198492%_))
                              (let ((_%e198469198495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198464198492%_))))
                                (let ((_%hd198468198499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198469198495%_)))
                                      (_%tl198467198502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198469198495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198467198502%_))
                                      (let ((_%e198472198505%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198467198502%_))))
                                        (let ((_%hd198471198509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198472198505%_)))
                                              (_%tl198470198512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198472198505%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198470198512%_))
                                              ((lambda (_%L198515%_
                                                        _%L198517%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198517%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198515%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198471198509%_
                                               _%hd198468198499%_)
                                              (_%g198460198478%_
                                               _%g198461198482%_))))
                                      (_%g198460198478%_ _%g198461198482%_))))
                              (_%g198460198478%_ _%g198461198482%_))))
                      (_%g198460198478%_ _%g198461198482%_)))))
          (_%g198459198533%_ _%$stx198456%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx198537%_)
        (let* ((_%g198541198570%_
                (lambda (_%g198542198566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198542198566%_))))
               (_%g198540198670%_
                (lambda (_%g198542198574%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198542198574%_))
                      (let ((_%e198547198577%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198542198574%_))))
                        (let ((_%hd198546198581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198547198577%_)))
                              (_%tl198545198584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198547198577%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198545198584%_))
                              (let ((_g202740_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198545198584%_
                                        '0))))
                                (begin
                                  (let ((_g202741_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202740_)
                                               (##vector-length _g202740_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202741_ 2)))
                                        (error "Context expects 2 values"
                                               _g202741_)))
                                  (let ((_%target198548198587%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202740_ 0)))
                                        (_%tl198550198590%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202740_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198550198590%_))
                                        (letrec ((_%loop198551198593%_
                                                  (lambda (_%hd198549198597%_
                                                           _%rule198555198600%_
                                                           _%proc198556198602%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198549198597%_))
                                                        (let ((_%e198552198605%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198549198597%_))))
                  (let ((_%lp-hd198553198609%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198552198605%_)))
                        (_%lp-tl198554198612%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198552198605%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd198553198609%_))
                        (let ((_%e198561198615%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd198553198609%_))))
                          (let ((_%hd198560198619%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198561198615%_)))
                                (_%tl198559198622%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198561198615%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198559198622%_))
                                (let ((_%e198564198625%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198559198622%_))))
                                  (let ((_%hd198563198629%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198564198625%_)))
                                        (_%tl198562198632%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198564198625%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198562198632%_))
                                        (_%loop198551198593%_
                                         _%lp-tl198554198612%_
                                         (cons _%hd198563198629%_
                                               _%rule198555198600%_)
                                         (cons _%hd198560198619%_
                                               _%proc198556198602%_))
                                        (_%g198541198570%_
                                         _%g198542198574%_))))
                                (_%g198541198570%_ _%g198542198574%_))))
                        (_%g198541198570%_ _%g198542198574%_))))
                (let ((_%rule198557198635%_ (reverse _%rule198555198600%_))
                      (_%proc198558198638%_ (reverse _%proc198556198602%_)))
                  ((lambda (_%L198641%_ _%L198643%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L198641%_
                                _%L198643%_))
                             (let ((__tmp202742
                                    (lambda (_%g198658198662%_
                                             _%g198659198665%_
                                             _%g198660198667%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g198659198665%_
                                                        (cons _%g198658198662%_
                                                              '())))
                                            _%g198660198667%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202742
                                '()
                                _%L198641%_
                                _%L198643%_)))))
                   _%rule198557198635%_
                   _%proc198558198638%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198551198593%_
                                           _%target198548198587%_
                                           '()
                                           '()))
                                        (_%g198541198570%_
                                         _%g198542198574%_)))))
                              (_%g198541198570%_ _%g198542198574%_))))
                      (_%g198541198570%_ _%g198542198574%_)))))
          (_%g198540198670%_ _%$stx198537%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx198675%_)
        (let* ((_%g198679198697%_
                (lambda (_%g198680198693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198680198693%_))))
               (_%g198678198752%_
                (lambda (_%g198680198701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198680198701%_))
                      (let ((_%e198685198704%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198680198701%_))))
                        (let ((_%hd198684198708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198685198704%_)))
                              (_%tl198683198711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198685198704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198683198711%_))
                              (let ((_%e198688198714%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198683198711%_))))
                                (let ((_%hd198687198718%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198688198714%_)))
                                      (_%tl198686198721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198688198714%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198686198721%_))
                                      (let ((_%e198691198724%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198686198721%_))))
                                        (let ((_%hd198690198728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198691198724%_)))
                                              (_%tl198689198731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198691198724%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198689198731%_))
                                              ((lambda (_%L198734%_
                                                        _%L198736%_)
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
                                                   (cons _%L198736%_ '()))
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
                 (cons _%L198734%_ '())))
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
                                   (cons _%L198736%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198690198728%_
                                               _%hd198687198718%_)
                                              (_%g198679198697%_
                                               _%g198680198701%_))))
                                      (_%g198679198697%_ _%g198680198701%_))))
                              (_%g198679198697%_ _%g198680198701%_))))
                      (_%g198679198697%_ _%g198680198701%_)))))
          (_%g198678198752%_ _%$stx198675%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx198756%_)
        (let* ((_%__stx202222202223%_ _%$stx198756%_)
               (_%g198761198786%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202222202223%_)))))
          (let ((_%__kont202225202226%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202227202228%_
                 (lambda (_%L198833%_ _%L198835%_ _%L198836%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L198836%_ (cons _%L198835%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L198833%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202222202223%_))
                (let ((_%e198765198862%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202222202223%_))))
                  (let ((_%tl198763198869%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198765198862%_)))
                        (_%hd198764198866%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198765198862%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198763198869%_))
                        (_%__kont202225202226%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198763198869%_))
                            (let ((_%e198774198803%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198763198869%_))))
                              (let ((_%tl198772198810%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198774198803%_)))
                                    (_%hd198773198807%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198774198803%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198773198807%_))
                                    (let ((_%e198777198813%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd198773198807%_))))
                                      (let ((_%tl198775198820%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198777198813%_)))
                                            (_%hd198776198817%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198777198813%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198775198820%_))
                                            (let ((_%e198780198823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198775198820%_))))
                                              (let ((_%tl198778198830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198780198823%_)))
                                                    (_%hd198779198827%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198780198823%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198778198830%_))
                                                    (_%__kont202227202228%_
                                                     _%tl198772198810%_
                                                     _%hd198779198827%_
                                                     _%hd198776198817%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198761198786%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198761198786%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198761198786%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198761198786%_))))))
                (let () (declare (not safe)) (_%g198761198786%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx198880%_)
        (let* ((_%__stx202266202267%_ _%$stx198880%_)
               (_%g198885198916%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202266202267%_)))))
          (let ((_%__kont202269202270%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202271202272%_
                 (lambda (_%L198983%_ _%L198985%_ _%L198986%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198986%_
                                           (let ((__tmp202743
                                                  (lambda (_%g199006199009%_
                                                           _%g199007199012%_)
                                                    (cons _%g199006199009%_
                                                          _%g199007199012%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202743
                                              '()
                                              _%L198985%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198983%_)
                                     '()))))))
            (let ((_%__match202309202310%_
                   (lambda (_%e198895198923%_
                            _%hd198894198927%_
                            _%tl198893198930%_
                            _%e198898198933%_
                            _%hd198897198937%_
                            _%tl198896198940%_
                            _%e198901198943%_
                            _%hd198900198947%_
                            _%tl198899198950%_
                            _%__splice202273202274%_
                            _%target198902198953%_
                            _%tl198904198956%_)
                     (letrec ((_%loop198905198959%_
                               (lambda (_%hd198903198963%_ _%sig198909198966%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198903198963%_))
                                     (let ((_%e198906198969%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198903198963%_))))
                                       (let ((_%lp-tl198908198976%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198906198969%_)))
                                             (_%lp-hd198907198973%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198906198969%_))))
                                         (_%loop198905198959%_
                                          _%lp-tl198908198976%_
                                          (cons _%lp-hd198907198973%_
                                                _%sig198909198966%_))))
                                     (let ((_%sig198910198979%_
                                            (reverse _%sig198909198966%_)))
                                       (_%__kont202271202272%_
                                        _%tl198896198940%_
                                        _%sig198910198979%_
                                        _%hd198900198947%_))))))
                       (_%loop198905198959%_ _%target198902198953%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202266202267%_))
                  (let ((_%e198889199022%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202266202267%_))))
                    (let ((_%tl198887199029%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198889199022%_)))
                          (_%hd198888199026%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198889199022%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198887199029%_))
                          (_%__kont202269202270%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198887199029%_))
                              (let ((_%e198898198933%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198887199029%_))))
                                (let ((_%tl198896198940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198898198933%_)))
                                      (_%hd198897198937%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198898198933%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198897198937%_))
                                      (let ((_%e198901198943%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198897198937%_))))
                                        (let ((_%tl198899198950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198901198943%_)))
                                              (_%hd198900198947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198901198943%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198899198950%_))
                                              (let ((_%__splice202273202274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198899198950%_
                                                        '0))))
                                                (let ((_%tl198904198956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202273202274%_
                                                          '1)))
                                                      (_%target198902198953%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202273202274%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198904198956%_))
                                                      (_%__match202309202310%_
                                                       _%e198889199022%_
                                                       _%hd198888199026%_
                                                       _%tl198887199029%_
                                                       _%e198898198933%_
                                                       _%hd198897198937%_
                                                       _%tl198896198940%_
                                                       _%e198901198943%_
                                                       _%hd198900198947%_
                                                       _%tl198899198950%_
                                                       _%__splice202273202274%_
                                                       _%target198902198953%_
                                                       _%tl198904198956%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198885198916%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198885198916%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198885198916%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198885198916%_))))))
                  (let () (declare (not safe)) (_%g198885198916%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx199041%_)
        (let* ((_%__stx202312202313%_ _%$stx199041%_)
               (_%g199046199093%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202312202313%_)))))
          (let ((_%__kont202315202316%_
                 (lambda (_%L199255%_ _%L199257%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L199257%_
                               (let ((__tmp202744
                                      (lambda (_%g199277199280%_
                                               _%g199278199283%_)
                                        (cons _%g199277199280%_
                                              _%g199278199283%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202744 '() _%L199255%_))))))
                (_%__kont202319202320%_
                 (lambda (_%L199150%_ _%L199152%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L199152%_
                               (let ((__tmp202745
                                      (lambda (_%g199169199172%_
                                               _%g199170199175%_)
                                        (cons _%g199169199172%_
                                              _%g199170199175%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202745 '() _%L199150%_)))))))
            (let* ((_%__match202379202380%_
                    (lambda (_%e199075199100%_
                             _%hd199074199104%_
                             _%tl199073199107%_
                             _%e199078199110%_
                             _%hd199077199114%_
                             _%tl199076199117%_
                             _%__splice202321202322%_
                             _%target199079199120%_
                             _%tl199081199123%_)
                      (letrec ((_%loop199082199126%_
                                (lambda (_%hd199080199130%_
                                         _%sig199086199133%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199080199130%_))
                                      (let ((_%e199083199136%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199080199130%_))))
                                        (let ((_%lp-tl199085199143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199083199136%_)))
                                              (_%lp-hd199084199140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199083199136%_))))
                                          (_%loop199082199126%_
                                           _%lp-tl199085199143%_
                                           (cons _%lp-hd199084199140%_
                                                 _%sig199086199133%_))))
                                      (let ((_%sig199087199146%_
                                             (reverse _%sig199086199133%_)))
                                        (_%__kont202319202320%_
                                         _%sig199087199146%_
                                         _%hd199077199114%_))))))
                        (_%loop199082199126%_ _%target199079199120%_ '()))))
                   (_%__match202371202372%_
                    (lambda (_%e199075199100%_
                             _%hd199074199104%_
                             _%tl199073199107%_
                             _%e199078199110%_
                             _%hd199077199114%_
                             _%tl199076199117%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl199076199117%_))
                          (let ((_%__splice202321202322%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl199076199117%_
                                    '0))))
                            (let ((_%tl199081199123%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202321202322%_
                                      '1)))
                                  (_%target199079199120%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202321202322%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199081199123%_))
                                  (_%__match202379202380%_
                                   _%e199075199100%_
                                   _%hd199074199104%_
                                   _%tl199073199107%_
                                   _%e199078199110%_
                                   _%hd199077199114%_
                                   _%tl199076199117%_
                                   _%__splice202321202322%_
                                   _%target199079199120%_
                                   _%tl199081199123%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g199046199093%_)))))
                          (let () (declare (not safe)) (_%g199046199093%_)))))
                   (_%__match202359202360%_
                    (lambda (_%e199052199185%_
                             _%hd199051199189%_
                             _%tl199050199192%_
                             _%e199055199195%_
                             _%hd199054199199%_
                             _%tl199053199202%_
                             _%e199058199205%_
                             _%hd199057199209%_
                             _%tl199056199212%_
                             _%e199061199215%_
                             _%hd199060199219%_
                             _%tl199059199222%_
                             _%__splice202317202318%_
                             _%target199062199225%_
                             _%tl199064199228%_)
                      (letrec ((_%loop199065199231%_
                                (lambda (_%hd199063199235%_
                                         _%sig199069199238%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199063199235%_))
                                      (let ((_%e199066199241%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199063199235%_))))
                                        (let ((_%lp-tl199068199248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199066199241%_)))
                                              (_%lp-hd199067199245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199066199241%_))))
                                          (_%loop199065199231%_
                                           _%lp-tl199068199248%_
                                           (cons _%lp-hd199067199245%_
                                                 _%sig199069199238%_))))
                                      (let ((_%sig199070199251%_
                                             (reverse _%sig199069199238%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199056199212%_))
                                            (_%__kont202315202316%_
                                             _%sig199070199251%_
                                             _%hd199054199199%_)
                                            (_%__match202371202372%_
                                             _%e199052199185%_
                                             _%hd199051199189%_
                                             _%tl199050199192%_
                                             _%e199055199195%_
                                             _%hd199054199199%_
                                             _%tl199053199202%_)))))))
                        (_%loop199065199231%_ _%target199062199225%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202312202313%_))
                  (let ((_%e199052199185%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202312202313%_))))
                    (let ((_%tl199050199192%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199052199185%_)))
                          (_%hd199051199189%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199052199185%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199050199192%_))
                          (let ((_%e199055199195%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199050199192%_))))
                            (let ((_%tl199053199202%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199055199195%_)))
                                  (_%hd199054199199%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199055199195%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199053199202%_))
                                  (let ((_%e199058199205%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199053199202%_))))
                                    (let ((_%tl199056199212%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199058199205%_)))
                                          (_%hd199057199209%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199058199205%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd199057199209%_))
                                          (let ((_%e199061199215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd199057199209%_))))
                                            (let ((_%tl199059199222%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199061199215%_)))
                                                  (_%hd199060199219%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199061199215%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd199060199219%_))
                                                  (if (let ((__tmp202746
                                                             |gxc[1]#_g202747_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp202746
                                                         _%hd199060199219%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl199059199222%_))
                                                          (let ((_%__splice202317202318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199059199222%_ '0))))
                    (let ((_%tl199064199228%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202317202318%_ '1)))
                          (_%target199062199225%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202317202318%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199064199228%_))
                          (_%__match202359202360%_
                           _%e199052199185%_
                           _%hd199051199189%_
                           _%tl199050199192%_
                           _%e199055199195%_
                           _%hd199054199199%_
                           _%tl199053199202%_
                           _%e199058199205%_
                           _%hd199057199209%_
                           _%tl199056199212%_
                           _%e199061199215%_
                           _%hd199060199219%_
                           _%tl199059199222%_
                           _%__splice202317202318%_
                           _%target199062199225%_
                           _%tl199064199228%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199053199202%_))
                              (let ((_%__splice202321202322%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199053199202%_
                                        '0))))
                                (let ((_%tl199081199123%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202321202322%_
                                          '1)))
                                      (_%target199079199120%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202321202322%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199081199123%_))
                                      (_%__match202379202380%_
                                       _%e199052199185%_
                                       _%hd199051199189%_
                                       _%tl199050199192%_
                                       _%e199055199195%_
                                       _%hd199054199199%_
                                       _%tl199053199202%_
                                       _%__splice202321202322%_
                                       _%target199079199120%_
                                       _%tl199081199123%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g199046199093%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199046199093%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl199053199202%_))
                      (let ((_%__splice202321202322%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl199053199202%_
                                '0))))
                        (let ((_%tl199081199123%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202321202322%_ '1)))
                              (_%target199079199120%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202321202322%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199081199123%_))
                              (_%__match202379202380%_
                               _%e199052199185%_
                               _%hd199051199189%_
                               _%tl199050199192%_
                               _%e199055199195%_
                               _%hd199054199199%_
                               _%tl199053199202%_
                               _%__splice202321202322%_
                               _%target199079199120%_
                               _%tl199081199123%_)
                              (let ()
                                (declare (not safe))
                                (_%g199046199093%_)))))
                      (let () (declare (not safe)) (_%g199046199093%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl199053199202%_))
                  (let ((_%__splice202321202322%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199053199202%_ '0))))
                    (let ((_%tl199081199123%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202321202322%_ '1)))
                          (_%target199079199120%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202321202322%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199081199123%_))
                          (_%__match202379202380%_
                           _%e199052199185%_
                           _%hd199051199189%_
                           _%tl199050199192%_
                           _%e199055199195%_
                           _%hd199054199199%_
                           _%tl199053199202%_
                           _%__splice202321202322%_
                           _%target199079199120%_
                           _%tl199081199123%_)
                          (let () (declare (not safe)) (_%g199046199093%_)))))
                  (let () (declare (not safe)) (_%g199046199093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl199053199202%_))
                                                      (let ((_%__splice202321202322%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl199053199202%_ '0))))
                (let ((_%tl199081199123%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202321202322%_ '1)))
                      (_%target199079199120%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202321202322%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199081199123%_))
                      (_%__match202379202380%_
                       _%e199052199185%_
                       _%hd199051199189%_
                       _%tl199050199192%_
                       _%e199055199195%_
                       _%hd199054199199%_
                       _%tl199053199202%_
                       _%__splice202321202322%_
                       _%target199079199120%_
                       _%tl199081199123%_)
                      (let () (declare (not safe)) (_%g199046199093%_)))))
              (let () (declare (not safe)) (_%g199046199093%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl199053199202%_))
                                              (let ((_%__splice202321202322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl199053199202%_
                                                        '0))))
                                                (let ((_%tl199081199123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202321202322%_
                                                          '1)))
                                                      (_%target199079199120%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202321202322%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199081199123%_))
                                                      (_%__match202379202380%_
                                                       _%e199052199185%_
                                                       _%hd199051199189%_
                                                       _%tl199050199192%_
                                                       _%e199055199195%_
                                                       _%hd199054199199%_
                                                       _%tl199053199202%_
                                                       _%__splice202321202322%_
                                                       _%target199079199120%_
                                                       _%tl199081199123%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199046199093%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199046199093%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199053199202%_))
                                      (let ((_%__splice202321202322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199053199202%_
                                                '0))))
                                        (let ((_%tl199081199123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202321202322%_
                                                  '1)))
                                              (_%target199079199120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202321202322%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199081199123%_))
                                              (_%__match202379202380%_
                                               _%e199052199185%_
                                               _%hd199051199189%_
                                               _%tl199050199192%_
                                               _%e199055199195%_
                                               _%hd199054199199%_
                                               _%tl199053199202%_
                                               _%__splice202321202322%_
                                               _%target199079199120%_
                                               _%tl199081199123%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199046199093%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199046199093%_))))))
                          (let () (declare (not safe)) (_%g199046199093%_)))))
                  (let () (declare (not safe)) (_%g199046199093%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx200371%_ _%id200373%_)
        (let ((_%proc200377%_
               (let ((__tmp202748
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200373%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202748))))
          (if (let () (declare (not safe)) (procedure? _%proc200377%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx200371%_
                 _%id200373%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx200362%_ _%id200364%_)
        (let ((_%klass200368%_
               (let ((__tmp202749
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200364%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202749))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass200368%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx200362%_
                 _%id200364%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx199612%_ _%proc199614%_ _%sig199615%_)
        (letrec ((_%signature-arity199617%_
                  (lambda (_%args200294%_)
                    (let _%loop200297%_ ((_%rest200300%_ _%args200294%_)
                                         (_%count200302%_ '0))
                      (let* ((_%rest200303200314%_ _%rest200300%_)
                             (_%E200307200320%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest200303200314%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K200310200351%_
                               (lambda (_%rest200348%_)
                                 (let ((__tmp202750
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count200302%_ '1))))
                                   (declare (not safe))
                                   (_%loop200297%_
                                    _%rest200348%_
                                    __tmp202750))))
                              (_%K200309200340%_ (lambda () _%count200302%_))
                              (_%K200308200328%_
                               (lambda () (cons _%count200302%_ '()))))
                          (let ((_%try-match200305200344%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest200303200314%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200309200340%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200308200328%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest200303200314%_))
                                (let* ((_%tl200312200355%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200303200314%_)))
                                       (_%rest200359%_ _%tl200312200355%_))
                                  (declare (not safe))
                                  (_%K200310200351%_ _%rest200359%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match200305200344%_)))))))))
                 (_%make-signature199619%_
                  (lambda (_%args200176%_
                           _%return200178%_
                           _%effect200179%_
                           _%unchecked200180%_)
                    (let ((__tmp202751
                           (lambda (_%g200181200183%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx199612%_
                                _%g200181200183%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp202751 _%args200176%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx199612%_ _%return200178%_))
                    (if _%unchecked200180%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx199612%_
                           _%unchecked200180%_))
                        '#!void)
                    (let ((_%arity200187%_
                           (let ((__tmp202752
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args200176%_))))
                             (declare (not safe))
                             (_%signature-arity199617%_ __tmp202752))))
                      (if _%effect200179%_
                          (let ((_%effect200190%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect200179%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect200190%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect200190%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx199612%_
                                   _%proc199614%_
                                   _%effect200190%_))))
                          '#!void)
                      (cons _%arity200187%_
                            (cons (let* ((_%g200193200216%_
                                          (lambda (_%g200194200212%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g200194200212%_))))
                                         (_%g200192200290%_
                                          (lambda (_%g200194200220%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g200194200220%_))
                                                (let ((_%e200201200223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g200194200220%_))))
                                                  (let ((_%hd200200200227%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200201200223%_)))
                                                        (_%tl200199200230%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200201200223%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200199200230%_))
                                                        (let ((_%e200204200233%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200199200230%_))))
                  (let ((_%hd200203200237%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200204200233%_)))
                        (_%tl200202200240%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200204200233%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200202200240%_))
                        (let ((_%e200207200243%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200202200240%_))))
                          (let ((_%hd200206200247%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200207200243%_)))
                                (_%tl200205200250%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200207200243%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200205200250%_))
                                (let ((_%e200210200253%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200205200250%_))))
                                  (let ((_%hd200209200257%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200210200253%_)))
                                        (_%tl200208200260%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200210200253%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200208200260%_))
                                        ((lambda (_%L200263%_
                                                  _%L200265%_
                                                  _%L200266%_
                                                  _%L200267%_)
                                           (let ()
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
                             (cons _%L200267%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200266%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L200265%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L200263%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200209200257%_
                                         _%hd200206200247%_
                                         _%hd200203200237%_
                                         _%hd200200200227%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200193200216%_
                                           _%g200194200220%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200193200216%_ _%g200194200220%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g200193200216%_ _%g200194200220%_)))))
                (let ()
                  (declare (not safe))
                  (_%g200193200216%_ _%g200194200220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200193200216%_
                                                   _%g200194200220%_)))))
                                         (__tmp202753
                                          (list _%args200176%_
                                                _%return200178%_
                                                _%effect200179%_
                                                _%unchecked200180%_)))
                                    (declare (not safe))
                                    (_%g200192200290%_ __tmp202753))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx199612%_ _%proc199614%_))
          (let* ((_%__stx202390202391%_ _%sig199615%_)
                 (_%g199626199729%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx202390202391%_)))))
            (let ((_%__kont202393202394%_
                   (lambda (_%L200157%_ _%L200159%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199619%_
                        _%L200159%_
                        _%L200157%_
                        '#f
                        '#f))))
                  (_%__kont202395202396%_
                   (lambda (_%L200108%_ _%L200110%_ _%L200111%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199619%_
                        _%L200111%_
                        _%L200110%_
                        _%L200108%_
                        '#f))))
                  (_%__kont202397202398%_
                   (lambda (_%L200032%_ _%L200034%_ _%L200035%_)
                     (let ((__tmp202754
                            (let ((__tmp202755
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199614%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202755))))
                       (declare (not safe))
                       (_%make-signature199619%_
                        _%L200035%_
                        _%L200034%_
                        _%L200032%_
                        __tmp202754))))
                  (_%__kont202399202400%_
                   (lambda (_%L199938%_ _%L199940%_ _%L199941%_ _%L199942%_)
                     (let ((__tmp202756
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199938%_))))
                       (declare (not safe))
                       (_%make-signature199619%_
                        _%L199942%_
                        _%L199941%_
                        '#f
                        __tmp202756))))
                  (_%__kont202401202402%_
                   (lambda (_%L199845%_ _%L199847%_)
                     (let ((__tmp202757
                            (let ((__tmp202758
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199614%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202758))))
                       (declare (not safe))
                       (_%make-signature199619%_
                        _%L199847%_
                        _%L199845%_
                        '#f
                        __tmp202757))))
                  (_%__kont202403202404%_
                   (lambda (_%L199780%_ _%L199782%_ _%L199783%_)
                     (let ((__tmp202759
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199780%_))))
                       (declare (not safe))
                       (_%make-signature199619%_
                        _%L199783%_
                        _%L199782%_
                        '#f
                        __tmp202759)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202390202391%_))
                  (let ((_%e199632200137%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202390202391%_))))
                    (let ((_%tl199630200144%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199632200137%_)))
                          (_%hd199631200141%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199632200137%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199630200144%_))
                          (let ((_%e199635200147%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199630200144%_))))
                            (let ((_%tl199633200154%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199635200147%_)))
                                  (_%hd199634200151%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199635200147%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199633200154%_))
                                  (_%__kont202393202394%_
                                   _%hd199634200151%_
                                   _%hd199631200141%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199633200154%_))
                                      (let ((_%e199647200084%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199633200154%_))))
                                        (let ((_%tl199645200091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199647200084%_)))
                                              (_%hd199646200088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199647200084%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd199646200088%_))
                                              (let ((_%e199648200094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199646200088%_))))
                                                (if (equal? _%e199648200094%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199645200091%_))
                                                        (let ((_%e199651200098%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199645200091%_))))
                  (let ((_%tl199649200105%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199651200098%_)))
                        (_%hd199650200102%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199651200098%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199649200105%_))
                        (_%__kont202395202396%_
                         _%hd199650200102%_
                         _%hd199634200151%_
                         _%hd199631200141%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199649200105%_))
                            (let ((_%e199670200018%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199649200105%_))))
                              (let ((_%tl199668200025%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199670200018%_)))
                                    (_%hd199669200022%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199670200018%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd199669200022%_))
                                    (let ((_%e199671200028%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199669200022%_))))
                                      (if (equal? _%e199671200028%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199668200025%_))
                                              (_%__kont202397202398%_
                                               _%hd199650200102%_
                                               _%hd199634200151%_
                                               _%hd199631200141%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199668200025%_))
                                                  (let ((_%e199695199928%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199668200025%_))))
                                                    (let ((_%tl199693199935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199695199928%_)))
                                                          (_%hd199694199932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199695199928%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199693199935%_))
                                                          (_%__kont202399202400%_
                                                           _%hd199694199932%_
                                                           _%hd199650200102%_
                                                           _%hd199634200151%_
                                                           _%hd199631200141%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199626199729%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199626199729%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199626199729%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199626199729%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g199626199729%_))))))
                (let () (declare (not safe)) (_%g199626199729%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e199648200094%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl199645200091%_))
                                                            (_%__kont202401202402%_
                                                             _%hd199634200151%_
                                                             _%hd199631200141%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199645200091%_))
                        (let ((_%e199723199770%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199645200091%_))))
                          (let ((_%tl199721199777%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199723199770%_)))
                                (_%hd199722199774%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199723199770%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199721199777%_))
                                (_%__kont202403202404%_
                                 _%hd199722199774%_
                                 _%hd199634200151%_
                                 _%hd199631200141%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199626199729%_)))))
                        (let () (declare (not safe)) (_%g199626199729%_))))
                (let () (declare (not safe)) (_%g199626199729%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199626199729%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199626199729%_))))))
                          (let () (declare (not safe)) (_%g199626199729%_)))))
                  (let () (declare (not safe)) (_%g199626199729%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig199292%_)
        (let* ((_%g199295199361%_
                (lambda (_%g199296199357%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199296199357%_))))
               (_%g199294199608%_
                (lambda (_%g199296199365%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199296199365%_))
                      (let ((_%e199303199368%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199296199365%_))))
                        (let ((_%hd199302199372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199303199368%_)))
                              (_%tl199301199375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199303199368%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199301199375%_))
                              (let ((_%e199306199378%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199301199375%_))))
                                (let ((_%hd199305199382%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199306199378%_)))
                                      (_%tl199304199385%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199306199378%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd199305199382%_))
                                      (let ((_%e199307199388%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd199305199382%_))))
                                        (if (equal? _%e199307199388%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199304199385%_))
                                                (let ((_%e199310199392%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199304199385%_))))
                                                  (let ((_%hd199309199396%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199310199392%_)))
                                                        (_%tl199308199399%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199310199392%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199309199396%_))
                                                        (let ((_%e199313199402%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199309199396%_))))
                  (let ((_%hd199312199406%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199313199402%_)))
                        (_%tl199311199409%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199313199402%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd199312199406%_))
                        (if (let ((__tmp202760 |gxc[1]#_g202761_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp202760
                               _%hd199312199406%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199311199409%_))
                                (let ((_%e199316199412%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199311199409%_))))
                                  (let ((_%hd199315199416%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199316199412%_)))
                                        (_%tl199314199419%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199316199412%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199314199419%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199308199399%_))
                                            (let ((_%e199319199422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199308199399%_))))
                                              (let ((_%hd199318199426%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199319199422%_)))
                                                    (_%tl199317199429%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199319199422%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199318199426%_))
                                                    (let ((_%e199320199432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199318199426%_))))
                                                      (if (equal? _%e199320199432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199317199429%_))
                      (let ((_%e199323199436%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199317199429%_))))
                        (let ((_%hd199322199440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199323199436%_)))
                              (_%tl199321199443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199323199436%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199322199440%_))
                              (let ((_%e199326199446%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd199322199440%_))))
                                (let ((_%hd199325199450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199326199446%_)))
                                      (_%tl199324199453%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199326199446%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199325199450%_))
                                      (if (let ((__tmp202762
                                                 |gxc[1]#_g202763_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp202762
                                             _%hd199325199450%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199324199453%_))
                                              (let ((_%e199329199456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199324199453%_))))
                                                (let ((_%hd199328199460%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199329199456%_)))
                                                      (_%tl199327199463%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199329199456%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199327199463%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199321199443%_))
                                                          (let ((_%e199332199466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl199321199443%_))))
                    (let ((_%hd199331199470%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199332199466%_)))
                          (_%tl199330199473%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199332199466%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199331199470%_))
                          (let ((_%e199333199476%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199331199470%_))))
                            (if (equal? _%e199333199476%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199330199473%_))
                                    (let ((_%e199336199480%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl199330199473%_))))
                                      (let ((_%hd199335199484%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199336199480%_)))
                                            (_%tl199334199487%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199336199480%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199335199484%_))
                                            (let ((_%e199339199490%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199335199484%_))))
                                              (let ((_%hd199338199494%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199339199490%_)))
                                                    (_%tl199337199497%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199339199490%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199338199494%_))
                                                    (if (let ((__tmp202764
                                                               |gxc[1]#_g202765_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp202764
                                                           _%hd199338199494%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199337199497%_))
                                                            (let ((_%e199342199500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl199337199497%_))))
                      (let ((_%hd199341199504%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199342199500%_)))
                            (_%tl199340199507%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199342199500%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199340199507%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199334199487%_))
                                (let ((_%e199345199510%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199334199487%_))))
                                  (let ((_%hd199344199514%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199345199510%_)))
                                        (_%tl199343199517%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199345199510%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd199344199514%_))
                                        (let ((_%e199346199520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199344199514%_))))
                                          (if (equal? _%e199346199520%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199343199517%_))
                                                  (let ((_%e199349199524%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199343199517%_))))
                                                    (let ((_%hd199348199528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199349199524%_)))
                                                          (_%tl199347199531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199349199524%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199348199528%_))
                                                          (let ((_%e199352199534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd199348199528%_))))
                    (let ((_%hd199351199538%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199352199534%_)))
                          (_%tl199350199541%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199352199534%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199351199538%_))
                          (if (let ((__tmp202766 |gxc[1]#_g202767_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp202766
                                 _%hd199351199538%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199350199541%_))
                                  (let ((_%e199355199544%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199350199541%_))))
                                    (let ((_%hd199354199548%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199355199544%_)))
                                          (_%tl199353199551%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199355199544%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199353199551%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199347199531%_))
                                              ((lambda (_%L199554%_
                                                        _%L199556%_
                                                        _%L199557%_
                                                        _%L199558%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L199554%_))
                                                     (cons _%L199554%_
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
                                                 (cons _%L199557%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd199354199548%_
                                               _%hd199341199504%_
                                               _%hd199328199460%_
                                               _%hd199315199416%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199295199361%_
                                                 _%g199296199365%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199295199361%_
                                             _%g199296199365%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199295199361%_ _%g199296199365%_)))
                              (let ()
                                (declare (not safe))
                                (_%g199295199361%_ _%g199296199365%_)))
                          (let ()
                            (declare (not safe))
                            (_%g199295199361%_ _%g199296199365%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199295199361%_ _%g199296199365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199295199361%_
                                                     _%g199296199365%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199295199361%_
                                                 _%g199296199365%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199295199361%_
                                           _%g199296199365%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199295199361%_ _%g199296199365%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199295199361%_ _%g199296199365%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g199295199361%_ _%g199296199365%_)))
                (let ()
                  (declare (not safe))
                  (_%g199295199361%_ _%g199296199365%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199295199361%_
                                                       _%g199296199365%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199295199361%_
                                               _%g199296199365%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199295199361%_ _%g199296199365%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199295199361%_ _%g199296199365%_))))
                          (let ()
                            (declare (not safe))
                            (_%g199295199361%_ _%g199296199365%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199295199361%_ _%g199296199365%_)))
              (let ()
                (declare (not safe))
                (_%g199295199361%_ _%g199296199365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199295199361%_
                                                 _%g199296199365%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199295199361%_
                                             _%g199296199365%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199295199361%_
                                         _%g199296199365%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199295199361%_ _%g199296199365%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199295199361%_ _%g199296199365%_)))
                  (let ()
                    (declare (not safe))
                    (_%g199295199361%_ _%g199296199365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199295199361%_
                                                       _%g199296199365%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199295199361%_
                                               _%g199296199365%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199295199361%_
                                           _%g199296199365%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199295199361%_ _%g199296199365%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199295199361%_ _%g199296199365%_)))
                        (let ()
                          (declare (not safe))
                          (_%g199295199361%_ _%g199296199365%_)))))
                (let ()
                  (declare (not safe))
                  (_%g199295199361%_ _%g199296199365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199295199361%_
                                                   _%g199296199365%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199295199361%_
                                               _%g199296199365%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199295199361%_
                                         _%g199296199365%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199295199361%_ _%g199296199365%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199295199361%_ _%g199296199365%_))))))
          (declare (not safe))
          (_%g199294199608%_ _%sig199292%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx200380%_)
        (let* ((_%g200383200401%_
                (lambda (_%g200384200397%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200384200397%_))))
               (_%g200382200456%_
                (lambda (_%g200384200405%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200384200405%_))
                      (let ((_%e200389200408%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200384200405%_))))
                        (let ((_%hd200388200412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200389200408%_)))
                              (_%tl200387200415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200389200408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200387200415%_))
                              (let ((_%e200392200418%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200387200415%_))))
                                (let ((_%hd200391200422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200392200418%_)))
                                      (_%tl200390200425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200392200418%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200390200425%_))
                                      (let ((_%e200395200428%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200390200425%_))))
                                        (let ((_%hd200394200432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200395200428%_)))
                                              (_%tl200393200435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200395200428%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200393200435%_))
                                              ((lambda (_%L200438%_
                                                        _%L200440%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200440%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200438%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx200380%_
                                                          _%L200440%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx200380%_
                                                          _%L200438%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200440%_
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
                                                   (cons _%L200438%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200383200401%_
                                                      _%g200384200405%_)))
                                               _%hd200394200432%_
                                               _%hd200391200422%_)
                                              (_%g200383200401%_
                                               _%g200384200405%_))))
                                      (_%g200383200401%_ _%g200384200405%_))))
                              (_%g200383200401%_ _%g200384200405%_))))
                      (_%g200383200401%_ _%g200384200405%_)))))
          (_%g200382200456%_ _%stx200380%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx200460%_)
        (let* ((_%g200463200487%_
                (lambda (_%g200464200483%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200464200483%_))))
               (_%g200462200770%_
                (lambda (_%g200464200491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200464200491%_))
                      (let ((_%e200469200494%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200464200491%_))))
                        (let ((_%hd200468200498%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200469200494%_)))
                              (_%tl200467200501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200469200494%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200467200501%_))
                              (let ((_%e200472200504%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200467200501%_))))
                                (let ((_%hd200471200508%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200472200504%_)))
                                      (_%tl200470200511%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200472200504%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200470200511%_))
                                      (let ((_g202768_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200470200511%_
                                                '0))))
                                        (begin
                                          (let ((_g202769_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202768_)
                                                       (##vector-length
                                                        _g202768_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202769_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202769_)))
                                          (let ((_%target200473200514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202768_ 0)))
                                                (_%tl200475200517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202768_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200475200517%_))
                                                (letrec ((_%loop200476200520%_
                                                          (lambda (_%hd200474200524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature200480200527%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200474200524%_))
                        (let ((_%e200477200530%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200474200524%_))))
                          (let ((_%lp-hd200478200534%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200477200530%_)))
                                (_%lp-tl200479200537%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200477200530%_))))
                            (_%loop200476200520%_
                             _%lp-tl200479200537%_
                             (cons _%lp-hd200478200534%_
                                   _%signature200480200527%_))))
                        (let ((_%signature200481200540%_
                               (reverse _%signature200480200527%_)))
                          ((lambda (_%L200544%_ _%L200546%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200546%_))
                                 (let* ((_%g200564200579%_
                                         (lambda (_%g200565200575%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200565200575%_))))
                                        (_%g200563200758%_
                                         (lambda (_%g200565200583%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200565200583%_))
                                               (let ((_%e200570200586%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200565200583%_))))
                                                 (let ((_%hd200569200590%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200570200586%_)))
                                                       (_%tl200568200593%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200570200586%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200568200593%_))
                                                       (let ((_%e200573200596%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200568200593%_))))
                 (let ((_%hd200572200600%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200573200596%_)))
                       (_%tl200571200603%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200573200596%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200571200603%_))
                       ((lambda (_%L200606%_ _%L200608%_)
                          (let ()
                            (let* ((_%g200624200632%_
                                    (lambda (_%g200625200628%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g200625200628%_))))
                                   (_%g200623200754%_
                                    (lambda (_%g200625200636%_)
                                      ((lambda (_%L200639%_)
                                         (let ()
                                           (let* ((_%unchecked200652%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L200606%_)))
                                                  (_%g200655200663%_
                                                   (lambda (_%g200656200659%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g200656200659%_))))
                                                  (_%g200654200686%_
                                                   (lambda (_%g200656200667%_)
                                                     ((lambda (_%L200670%_)
                                                        (let ()
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (cons _%L200639%_ (cons _%L200670%_ '())))))
              _%g200656200667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g200654200686%_
                                              (if _%unchecked200652%_
                                                  (let* ((_%g200690200705%_
                                                          (lambda (_%g200691200701%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g200691200701%_))))
                                                         (_%g200689200750%_
                                                          (lambda (_%g200691200709%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g200691200709%_))
                        (let ((_%e200696200712%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g200691200709%_))))
                          (let ((_%hd200695200716%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200696200712%_)))
                                (_%tl200694200719%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200696200712%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200694200719%_))
                                (let ((_%e200699200722%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200694200719%_))))
                                  (let ((_%hd200698200726%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200699200722%_)))
                                        (_%tl200697200729%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200699200722%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200697200729%_))
                                        ((lambda (_%L200732%_ _%L200734%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L200734%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200608%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L200732%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200698200726%_
                                         _%hd200695200716%_)
                                        (_%g200690200705%_
                                         _%g200691200709%_))))
                                (_%g200690200705%_ _%g200691200709%_))))
                        (_%g200690200705%_ _%g200691200709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g200689200750%_
                                                     _%unchecked200652%_))
                                                  '(begin))))))
                                       _%g200625200636%_))))
                              (_%g200623200754%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L200546%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200608%_ '()))
                     (cons '#f (cons 'signature: (cons _%L200606%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd200572200600%_
                        _%hd200569200590%_)
                       (_%g200564200579%_ _%g200565200583%_))))
               (_%g200564200579%_ _%g200565200583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200564200579%_
                                                _%g200565200583%_)))))
                                   (_%g200563200758%_
                                    (let ((__tmp202770
                                           (let ((__tmp202771
                                                  (lambda (_%g200761200764%_
                                                           _%g200762200767%_)
                                                    (cons _%g200761200764%_
                                                          _%g200762200767%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202771
                                              '()
                                              _%L200544%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx200460%_
                                       _%L200546%_
                                       __tmp202770))))
                                 (_%g200463200487%_ _%g200464200491%_)))
                           _%signature200481200540%_
                           _%hd200471200508%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200476200520%_
                                                   _%target200473200514%_
                                                   '()))
                                                (_%g200463200487%_
                                                 _%g200464200491%_)))))
                                      (_%g200463200487%_ _%g200464200491%_))))
                              (_%g200463200487%_ _%g200464200491%_))))
                      (_%g200463200487%_ _%g200464200491%_)))))
          (_%g200462200770%_ _%stx200460%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx200775%_)
        (let* ((_%g200778200802%_
                (lambda (_%g200779200798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200779200798%_))))
               (_%g200777201616%_
                (lambda (_%g200779200806%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200779200806%_))
                      (let ((_%e200784200809%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200779200806%_))))
                        (let ((_%hd200783200813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200784200809%_)))
                              (_%tl200782200816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200784200809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200782200816%_))
                              (let ((_%e200787200819%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200782200816%_))))
                                (let ((_%hd200786200823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200787200819%_)))
                                      (_%tl200785200826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200787200819%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200785200826%_))
                                      (let ((_g202772_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200785200826%_
                                                '0))))
                                        (begin
                                          (let ((_g202773_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202772_)
                                                       (##vector-length
                                                        _g202772_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202773_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202773_)))
                                          (let ((_%target200788200829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202772_ 0)))
                                                (_%tl200790200832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202772_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200790200832%_))
                                                (letrec ((_%loop200791200835%_
                                                          (lambda (_%hd200789200839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature200795200842%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200789200839%_))
                        (let ((_%e200792200845%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200789200839%_))))
                          (let ((_%lp-hd200793200849%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200792200845%_)))
                                (_%lp-tl200794200852%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200792200845%_))))
                            (_%loop200791200835%_
                             _%lp-tl200794200852%_
                             (cons _%lp-hd200793200849%_
                                   _%case-signature200795200842%_))))
                        (let ((_%case-signature200796200855%_
                               (reverse _%case-signature200795200842%_)))
                          ((lambda (_%L200859%_ _%L200861%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200861%_))
                                 (let* ((_%signatures200892%_
                                         (map (lambda (_%g200878200880%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx200775%_
                                                   _%L200861%_
                                                   _%g200878200880%_)))
                                              (let ((__tmp202774
                                                     (lambda (_%g200883200886%_
                                                              _%g200884200889%_)
                                                       (cons _%g200883200886%_
                                                             _%g200884200889%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp202774
                                                 '()
                                                 _%L200859%_))))
                                        (_%g200895200921%_
                                         (lambda (_%g200896200917%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200896200917%_))))
                                        (_%g200894201612%_
                                         (lambda (_%g200896200925%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200896200925%_))
                                               (let ((_g202775_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200896200925%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202776_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202775_)
                        (##vector-length _g202775_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202776_ 2)))
                 (error "Context expects 2 values" _g202776_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200899200928%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202775_
                                                             0)))
                                                         (_%tl200901200931%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202775_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200901200931%_))
                                                         (letrec ((_%loop200902200934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200900200938%_
                                    _%sig200906200941%_
                                    _%arity200907200943%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200900200938%_))
                                 (let ((_%e200903200946%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200900200938%_))))
                                   (let ((_%lp-hd200904200950%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200903200946%_)))
                                         (_%lp-tl200905200953%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200903200946%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200904200950%_))
                                         (let ((_%e200912200956%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200904200950%_))))
                                           (let ((_%hd200911200960%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200912200956%_)))
                                                 (_%tl200910200963%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200912200956%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200910200963%_))
                                                 (let ((_%e200915200966%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200910200963%_))))
                                                   (let ((_%hd200914200970%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200915200966%_)))
                                                         (_%tl200913200973%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200915200966%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200913200973%_))
                                                         (_%loop200902200934%_
                                                          _%lp-tl200905200953%_
                                                          (cons _%hd200914200970%_
                                                                _%sig200906200941%_)
                                                          (cons _%hd200911200960%_
                                                                _%arity200907200943%_))
                                                         (_%g200895200921%_
                                                          _%g200896200925%_))))
                                                 (_%g200895200921%_
                                                  _%g200896200925%_))))
                                         (_%g200895200921%_
                                          _%g200896200925%_))))
                                 (let ((_%sig200908200976%_
                                        (reverse _%sig200906200941%_))
                                       (_%arity200909200979%_
                                        (reverse _%arity200907200943%_)))
                                   ((lambda (_%L200982%_ _%L200984%_)
                                      (let ()
                                        (let* ((_%g201001201009%_
                                                (lambda (_%g201002201005%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g201002201005%_))))
                                               (_%g201000201597%_
                                                (lambda (_%g201002201013%_)
                                                  ((lambda (_%L201016%_)
                                                     (let ()
                                                       (let* ((_%g201029201037%_
                                                               (lambda (_%g201030201033%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g201030201033%_))))
                      (_%g201028201059%_
                       (lambda (_%g201030201041%_)
                         ((lambda (_%L201044%_)
                            (let ()
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'begin))
                                    (cons _%L201016%_
                                          (cons _%L201044%_ '())))))
                          _%g201030201041%_))))
                 (_%g201028201059%_
                  (let ((_g202777_
                         (let _%loop201063%_ ((_%rest201066%_
                                               _%signatures200892%_)
                                              (_%unchecked-proc201068%_ '#f)
                                              (_%unchecked-clauses201069%_
                                               '()))
                           (let* ((_%rest201070201078%_ _%rest201066%_)
                                  (_%else201072201090%_
                                   (lambda ()
                                     (values _%unchecked-proc201068%_
                                             (reverse!
                                              _%unchecked-clauses201069%_))))
                                  (_%K201074201462%_
                                   (lambda (_%rest201094%_ _%hd201096%_)
                                     (let* ((_%g201098201171%_
                                             (lambda (_%g201099201167%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g201099201167%_))))
                                            (_%g201097201458%_
                                             (lambda (_%g201099201175%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g201099201175%_))
                                                   (let ((_%e201107201178%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g201099201175%_))))
                                                     (let ((_%hd201106201182%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201107201178%_)))
                                                           (_%tl201105201185%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201107201178%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl201105201185%_))
                                                           (let ((_%e201110201188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl201105201185%_))))
                     (let ((_%hd201109201192%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201110201188%_)))
                           (_%tl201108201195%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201110201188%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd201109201192%_))
                           (let ((_%e201113201198%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd201109201192%_))))
                             (let ((_%hd201112201202%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201113201198%_)))
                                   (_%tl201111201205%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201113201198%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl201111201205%_))
                                   (let ((_%e201116201208%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl201111201205%_))))
                                     (let ((_%hd201115201212%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201116201208%_)))
                                           (_%tl201114201215%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201116201208%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd201115201212%_))
                                           (let ((_%e201117201218%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd201115201212%_))))
                                             (if (equal? _%e201117201218%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201114201215%_))
                                                     (let ((_%e201120201222%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl201114201215%_))))
                                                       (let ((_%hd201119201226%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e201120201222%_)))
                     (_%tl201118201229%_
                      (let () (declare (not safe)) (##cdr _%e201120201222%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd201119201226%_))
                     (let ((_%e201123201232%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd201119201226%_))))
                       (let ((_%hd201122201236%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201123201232%_)))
                             (_%tl201121201239%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201123201232%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd201122201236%_))
                             (if (let ((__tmp202779 |gxc[1]#_g202780_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp202779
                                    _%hd201122201236%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201121201239%_))
                                     (let ((_%e201126201242%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201121201239%_))))
                                       (let ((_%hd201125201246%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201126201242%_)))
                                             (_%tl201124201249%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201126201242%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl201124201249%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201118201229%_))
                                                 (let ((_%e201129201252%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201118201229%_))))
                                                   (let ((_%hd201128201256%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201129201252%_)))
                                                         (_%tl201127201259%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201129201252%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd201128201256%_))
                                                         (let ((_%e201130201262%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd201128201256%_))))
                   (if (equal? _%e201130201262%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl201127201259%_))
                           (let ((_%e201133201266%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl201127201259%_))))
                             (let ((_%hd201132201270%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201133201266%_)))
                                   (_%tl201131201273%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201133201266%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd201132201270%_))
                                   (let ((_%e201136201276%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd201132201270%_))))
                                     (let ((_%hd201135201280%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201136201276%_)))
                                           (_%tl201134201283%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201136201276%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd201135201280%_))
                                           (if (let ((__tmp202781
                                                      |gxc[1]#_g202782_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp202781
                                                  _%hd201135201280%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl201134201283%_))
                                                   (let ((_%e201139201286%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl201134201283%_))))
                                                     (let ((_%hd201138201290%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201139201286%_)))
                                                           (_%tl201137201293%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201139201286%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl201137201293%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl201131201273%_))
                       (let ((_%e201142201296%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl201131201273%_))))
                         (let ((_%hd201141201300%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201142201296%_)))
                               (_%tl201140201303%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201142201296%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd201141201300%_))
                               (let ((_%e201143201306%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd201141201300%_))))
                                 (if (equal? _%e201143201306%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl201140201303%_))
                                         (let ((_%e201146201310%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl201140201303%_))))
                                           (let ((_%hd201145201314%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201146201310%_)))
                                                 (_%tl201144201317%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201146201310%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201145201314%_))
                                                 (let ((_%e201149201320%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd201145201314%_))))
                                                   (let ((_%hd201148201324%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201149201320%_)))
                                                         (_%tl201147201327%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201149201320%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd201148201324%_))
                                                         (if (let ((__tmp202783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g202784_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp202783 _%hd201148201324%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl201147201327%_))
                         (let ((_%e201152201330%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl201147201327%_))))
                           (let ((_%hd201151201334%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201152201330%_)))
                                 (_%tl201150201337%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201152201330%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl201150201337%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201144201317%_))
                                     (let ((_%e201155201340%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201144201317%_))))
                                       (let ((_%hd201154201344%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201155201340%_)))
                                             (_%tl201153201347%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201155201340%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd201154201344%_))
                                             (let ((_%e201156201350%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd201154201344%_))))
                                               (if (equal? _%e201156201350%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201153201347%_))
                                                       (let ((_%e201159201354%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201153201347%_))))
                 (let ((_%hd201158201358%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201159201354%_)))
                       (_%tl201157201361%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201159201354%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd201158201358%_))
                       (let ((_%e201162201364%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd201158201358%_))))
                         (let ((_%hd201161201368%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201162201364%_)))
                               (_%tl201160201371%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201162201364%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd201161201368%_))
                               (if (let ((__tmp202785 |gxc[1]#_g202786_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp202785
                                      _%hd201161201368%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl201160201371%_))
                                       (let ((_%e201165201374%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl201160201371%_))))
                                         (let ((_%hd201164201378%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201165201374%_)))
                                               (_%tl201163201381%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201165201374%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl201163201381%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201157201361%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl201108201195%_))
                                                       ((lambda (_%L201384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L201386%_
                         _%L201387%_
                         _%L201388%_
                         _%L201389%_)
                  (let ((_%clause201450%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201389%_ '()))
                                     (cons '#f
                                           (cons 'signature:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L201387%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked201452%_
                         (let () (declare (not safe)) (gx#stx-e _%L201384%_))))
                    (_%loop201063%_
                     _%rest201094%_
                     (let ((_%$e201454%_ _%unchecked201452%_))
                       (if _%$e201454%_ _%$e201454%_ _%unchecked-proc201068%_))
                     (cons _%clause201450%_ _%unchecked-clauses201069%_))))
                _%hd201164201378%_
                _%hd201151201334%_
                _%hd201138201290%_
                _%hd201125201246%_
                _%hd201106201182%_)
               (_%g201098201171%_ _%g201099201175%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201098201171%_
                                                    _%g201099201175%_))
                                               (_%g201098201171%_
                                                _%g201099201175%_))))
                                       (_%g201098201171%_ _%g201099201175%_))
                                   (_%g201098201171%_ _%g201099201175%_))
                               (_%g201098201171%_ _%g201099201175%_))))
                       (_%g201098201171%_ _%g201099201175%_))))
               (_%g201098201171%_ _%g201099201175%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201098201171%_
                                                    _%g201099201175%_)))
                                             (_%g201098201171%_
                                              _%g201099201175%_))))
                                     (_%g201098201171%_ _%g201099201175%_))
                                 (_%g201098201171%_ _%g201099201175%_))))
                         (_%g201098201171%_ _%g201099201175%_))
                     (_%g201098201171%_ _%g201099201175%_))
                 (_%g201098201171%_ _%g201099201175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201098201171%_
                                                  _%g201099201175%_))))
                                         (_%g201098201171%_ _%g201099201175%_))
                                     (_%g201098201171%_ _%g201099201175%_)))
                               (_%g201098201171%_ _%g201099201175%_))))
                       (_%g201098201171%_ _%g201099201175%_))
                   (_%g201098201171%_ _%g201099201175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201098201171%_
                                                    _%g201099201175%_))
                                               (_%g201098201171%_
                                                _%g201099201175%_))
                                           (_%g201098201171%_
                                            _%g201099201175%_))))
                                   (_%g201098201171%_ _%g201099201175%_))))
                           (_%g201098201171%_ _%g201099201175%_))
                       (_%g201098201171%_ _%g201099201175%_)))
                 (_%g201098201171%_ _%g201099201175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201098201171%_
                                                  _%g201099201175%_))
                                             (_%g201098201171%_
                                              _%g201099201175%_))))
                                     (_%g201098201171%_ _%g201099201175%_))
                                 (_%g201098201171%_ _%g201099201175%_))
                             (_%g201098201171%_ _%g201099201175%_))))
                     (_%g201098201171%_ _%g201099201175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201098201171%_
                                                      _%g201099201175%_))
                                                 (_%g201098201171%_
                                                  _%g201099201175%_)))
                                           (_%g201098201171%_
                                            _%g201099201175%_))))
                                   (_%g201098201171%_ _%g201099201175%_))))
                           (_%g201098201171%_ _%g201099201175%_))))
                   (_%g201098201171%_ _%g201099201175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201098201171%_
                                                    _%g201099201175%_)))))
                                       (_%g201097201458%_ _%hd201096%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest201070201078%_))
                                 (let ((_%hd201075201466%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest201070201078%_)))
                                       (_%tl201076201469%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest201070201078%_))))
                                   (let* ((_%hd201472%_ _%hd201075201466%_)
                                          (_%rest201475%_ _%tl201076201469%_))
                                     (_%K201074201462%_
                                      _%rest201475%_
                                      _%hd201472%_)))
                                 (_%else201072201090%_))))))
                    (begin
                      (let ((_g202778_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202777_)
                                   (##vector-length _g202777_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202778_ 2)))
                            (error "Context expects 2 values" _g202778_)))
                      (let ((_%unchecked-proc201478%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202777_ 0)))
                            (_%unchecked-clauses201480%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202777_ 1))))
                        (if _%unchecked-proc201478%_
                            (let* ((_%g201482201506%_
                                    (lambda (_%g201483201502%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g201483201502%_))))
                                   (_%g201481201593%_
                                    (lambda (_%g201483201510%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g201483201510%_))
                                          (let ((_%e201488201513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g201483201510%_))))
                                            (let ((_%hd201487201517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201488201513%_)))
                                                  (_%tl201486201520%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201488201513%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201486201520%_))
                                                  (let ((_%e201491201523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201486201520%_))))
                                                    (let ((_%hd201490201527%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201491201523%_)))
                                                          (_%tl201489201530%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201491201523%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd201490201527%_))
                                                          (let ((_g202787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd201490201527%_ '0))))
                    (begin
                      (let ((_g202788_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202787_)
                                   (##vector-length _g202787_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202788_ 2)))
                            (error "Context expects 2 values" _g202788_)))
                      (let ((_%target201492201533%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202787_ 0)))
                            (_%tl201494201536%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202787_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201494201536%_))
                            (letrec ((_%loop201495201539%_
                                      (lambda (_%hd201493201543%_
                                               _%clause201499201546%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd201493201543%_))
                                            (let ((_%e201496201549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd201493201543%_))))
                                              (let ((_%lp-hd201497201553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201496201549%_)))
                                                    (_%lp-tl201498201556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201496201549%_))))
                                                (_%loop201495201539%_
                                                 _%lp-tl201498201556%_
                                                 (cons _%lp-hd201497201553%_
                                                       _%clause201499201546%_))))
                                            (let ((_%clause201500201559%_
                                                   (reverse _%clause201499201546%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201489201530%_))
                                                  ((lambda (_%L201563%_
                                                            _%L201565%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L201565%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-case-lambda))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '@list))
                                                   (let ((__tmp202789
                                                          (lambda (_%g201584201587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g201585201590%_)
                    (cons _%g201584201587%_ _%g201585201590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp202789
                                                      '()
                                                      _%L201563%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause201500201559%_
                                                   _%hd201487201517%_)
                                                  (_%g201482201506%_
                                                   _%g201483201510%_)))))))
                              (_%loop201495201539%_
                               _%target201492201533%_
                               '()))
                            (_%g201482201506%_ _%g201483201510%_)))))
                  (_%g201482201506%_ _%g201483201510%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g201482201506%_
                                                   _%g201483201510%_))))
                                          (_%g201482201506%_
                                           _%g201483201510%_)))))
                              (_%g201481201593%_
                               (list _%unchecked-proc201478%_
                                     _%unchecked-clauses201480%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g201002201013%_))))
                                          (_%g201000201597%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L200861%_
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
                                            _%L200982%_
                                            _%L200984%_))
                                         (let ((__tmp202790
                                                (lambda (_%g201600201604%_
                                                         _%g201601201607%_
                                                         _%g201602201609%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g201601201607%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g201600201604%_ '())))))
                _%g201602201609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp202790
                                            '()
                                            _%L200982%_
                                            _%L200984%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200908200976%_
                                    _%arity200909200979%_))))))
                   (_%loop200902200934%_ _%target200899200928%_ '() '()))
                 (_%g200895200921%_ _%g200896200925%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200895200921%_
                                                _%g200896200925%_)))))
                                   (_%g200894201612%_ _%signatures200892%_))
                                 (_%g200778200802%_ _%g200779200806%_)))
                           _%case-signature200796200855%_
                           _%hd200786200823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200791200835%_
                                                   _%target200788200829%_
                                                   '()))
                                                (_%g200778200802%_
                                                 _%g200779200806%_)))))
                                      (_%g200778200802%_ _%g200779200806%_))))
                              (_%g200778200802%_ _%g200779200806%_))))
                      (_%g200778200802%_ _%g200779200806%_)))))
          (_%g200777201616%_ _%stx200775%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx201624%_)
        (let* ((_%__stx202606202607%_ _%$stx201624%_)
               (_%g201630201690%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202606202607%_)))))
          (let ((_%__kont202609202610%_
                 (lambda (_%L201912%_ _%L201914%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201914%_ '()))
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
                                                       (cons _%L201914%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201912%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202611202612%_
                 (lambda (_%L201837%_ _%L201839%_ _%L201840%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201840%_ '()))
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
                                                       (cons _%L201840%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201839%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201837%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202613202614%_
                 (lambda (_%L201751%_ _%L201753%_ _%L201754%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201754%_ '()))
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
                                                       (cons _%L201754%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201753%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201751%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202606202607%_))
                (let ((_%e201636201868%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202606202607%_))))
                  (let ((_%tl201634201875%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201636201868%_)))
                        (_%hd201635201872%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201636201868%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201634201875%_))
                        (let ((_%e201639201878%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201634201875%_))))
                          (let ((_%tl201637201885%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201639201878%_)))
                                (_%hd201638201882%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201639201878%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd201638201882%_))
                                (let ((_%e201640201888%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd201638201882%_))))
                                  (if (equal? _%e201640201888%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201637201885%_))
                                          (let ((_%e201643201892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201637201885%_))))
                                            (let ((_%tl201641201899%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201643201892%_)))
                                                  (_%hd201642201896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201643201892%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201641201899%_))
                                                  (let ((_%e201646201902%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201641201899%_))))
                                                    (let ((_%tl201644201909%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201646201902%_)))
                                                          (_%hd201645201906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201646201902%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201644201909%_))
                                                          (_%__kont202609202610%_
                                                           _%hd201645201906%_
                                                           _%hd201642201896%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201630201690%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201630201690%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201630201690%_)))
                                      (if (equal? _%e201640201888%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201637201885%_))
                                              (let ((_%e201659201807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201637201885%_))))
                                                (let ((_%tl201657201814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201659201807%_)))
                                                      (_%hd201658201811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201659201807%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201657201814%_))
                                                      (let ((_%e201662201817%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201657201814%_))))
                (let ((_%tl201660201824%_
                       (let () (declare (not safe)) (##cdr _%e201662201817%_)))
                      (_%hd201661201821%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201662201817%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201660201824%_))
                      (let ((_%e201665201827%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201660201824%_))))
                        (let ((_%tl201663201834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201665201827%_)))
                              (_%hd201664201831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201665201827%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201663201834%_))
                              (_%__kont202611202612%_
                               _%hd201664201831%_
                               _%hd201661201821%_
                               _%hd201658201811%_)
                              (let ()
                                (declare (not safe))
                                (_%g201630201690%_)))))
                      (let () (declare (not safe)) (_%g201630201690%_)))))
              (let () (declare (not safe)) (_%g201630201690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201630201690%_)))
                                          (if (equal? _%e201640201888%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201637201885%_))
                                                  (let ((_%e201678201721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201637201885%_))))
                                                    (let ((_%tl201676201728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201678201721%_)))
                                                          (_%hd201677201725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201678201721%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201676201728%_))
                                                          (let ((_%e201681201731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl201676201728%_))))
                    (let ((_%tl201679201738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201681201731%_)))
                          (_%hd201680201735%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201681201731%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201679201738%_))
                          (let ((_%e201684201741%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201679201738%_))))
                            (let ((_%tl201682201748%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201684201741%_)))
                                  (_%hd201683201745%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201684201741%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201682201748%_))
                                  (_%__kont202613202614%_
                                   _%hd201683201745%_
                                   _%hd201680201735%_
                                   _%hd201677201725%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g201630201690%_)))))
                          (let () (declare (not safe)) (_%g201630201690%_)))))
                  (let () (declare (not safe)) (_%g201630201690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201630201690%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201630201690%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g201630201690%_)))))
                        (let () (declare (not safe)) (_%g201630201690%_)))))
                (let () (declare (not safe)) (_%g201630201690%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201936%_)
        (let* ((_%g201940201960%_
                (lambda (_%g201941201956%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201941201956%_))))
               (_%g201939202031%_
                (lambda (_%g201941201964%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201941201964%_))
                      (let ((_%e201945201967%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201941201964%_))))
                        (let ((_%hd201944201971%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201945201967%_)))
                              (_%tl201943201974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201945201967%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201943201974%_))
                              (let ((_g202791_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201943201974%_
                                        '0))))
                                (begin
                                  (let ((_g202792_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202791_)
                                               (##vector-length _g202791_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202792_ 2)))
                                        (error "Context expects 2 values"
                                               _g202792_)))
                                  (let ((_%target201946201977%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202791_ 0)))
                                        (_%tl201948201980%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202791_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201948201980%_))
                                        (letrec ((_%loop201949201983%_
                                                  (lambda (_%hd201947201987%_
                                                           _%decl201953201990%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201947201987%_))
                                                        (let ((_%e201950201993%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201947201987%_))))
                  (let ((_%lp-hd201951201997%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201950201993%_)))
                        (_%lp-tl201952202000%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201950201993%_))))
                    (_%loop201949201983%_
                     _%lp-tl201952202000%_
                     (cons _%lp-hd201951201997%_ _%decl201953201990%_))))
                (let ((_%decl201954202003%_ (reverse _%decl201953201990%_)))
                  ((lambda (_%L202007%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp202793
                                  (lambda (_%g202022202025%_ _%g202023202028%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g202022202025%_)
                                          _%g202023202028%_))))
                             (declare (not safe))
                             (__foldr1 __tmp202793 '() _%L202007%_))))
                   _%decl201954202003%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201949201983%_
                                           _%target201946201977%_
                                           '()))
                                        (_%g201940201960%_
                                         _%g201941201964%_)))))
                              (_%g201940201960%_ _%g201941201964%_))))
                      (_%g201940201960%_ _%g201941201964%_)))))
          (_%g201939202031%_ _%$stx201936%_))))))
