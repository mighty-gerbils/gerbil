(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g275496_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g275503_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g275505_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g275507_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g275509_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g275511_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g275523_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g275525_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g275527_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g275529_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g275531_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx268954%_)
        (let* ((_%g268958268976%_
                (lambda (_%g268959268972%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g268959268972%_))))
               (_%g268957269031%_
                (lambda (_%g268959268980%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g268959268980%_))
                      (let ((_%e268962268983%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g268959268980%_))))
                        (let ((_%hd268963268987%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e268962268983%_)))
                              (_%tl268964268990%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e268962268983%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl268964268990%_))
                              (let ((_%e268965268993%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl268964268990%_))))
                                (let ((_%hd268966268997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e268965268993%_)))
                                      (_%tl268967269000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e268965268993%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl268967269000%_))
                                      (let ((_%e268968269003%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl268967269000%_))))
                                        (let ((_%hd268969269007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e268968269003%_)))
                                              (_%tl268970269010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e268968269003%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl268970269010%_))
                                              ((lambda (_%g268960269013%_
                                                        _%g268961269015%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g268961269015%_))
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
                               (cons _%g268961269015%_ '()))
                         (cons _%g268960269013%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g268958268976%_
                                                      _%g268959268980%_)))
                                               _%hd268969269007%_
                                               _%hd268966268997%_)
                                              (_%g268958268976%_
                                               _%g268959268980%_))))
                                      (_%g268958268976%_ _%g268959268980%_))))
                              (_%g268958268976%_ _%g268959268980%_))))
                      (_%g268958268976%_ _%g268959268980%_)))))
          (_%g268957269031%_ _%$stx268954%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx269035%_)
        (let* ((_%g269039269057%_
                (lambda (_%g269040269053%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g269040269053%_))))
               (_%g269038269112%_
                (lambda (_%g269040269061%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g269040269061%_))
                      (let ((_%e269043269064%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g269040269061%_))))
                        (let ((_%hd269044269068%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e269043269064%_)))
                              (_%tl269045269071%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e269043269064%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl269045269071%_))
                              (let ((_%e269046269074%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl269045269071%_))))
                                (let ((_%hd269047269078%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e269046269074%_)))
                                      (_%tl269048269081%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e269046269074%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl269048269081%_))
                                      (let ((_%e269049269084%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl269048269081%_))))
                                        (let ((_%hd269050269088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e269049269084%_)))
                                              (_%tl269051269091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e269049269084%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl269051269091%_))
                                              ((lambda (_%g269041269094%_
                                                        _%g269042269096%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g269042269096%_))
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
                               (cons _%g269042269096%_ '()))
                         (cons _%g269041269094%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g269039269057%_
                                                      _%g269040269061%_)))
                                               _%hd269050269088%_
                                               _%hd269047269078%_)
                                              (_%g269039269057%_
                                               _%g269040269061%_))))
                                      (_%g269039269057%_ _%g269040269061%_))))
                              (_%g269039269057%_ _%g269040269061%_))))
                      (_%g269039269057%_ _%g269040269061%_)))))
          (_%g269038269112%_ _%$stx269035%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx269116%_)
        (let* ((_%g269120269149%_
                (lambda (_%g269121269145%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g269121269145%_))))
               (_%g269119269245%_
                (lambda (_%g269121269153%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g269121269153%_))
                      (let ((_%e269124269156%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g269121269153%_))))
                        (let ((_%hd269125269160%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e269124269156%_)))
                              (_%tl269126269163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e269124269156%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl269126269163%_))
                              (let ((_g275474_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl269126269163%_
                                        '0))))
                                (begin
                                  (let ((_g275475_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g275474_)
                                               (##values-length _g275474_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g275475_ 2)))
                                        (error "Context expects 2 values"
                                               _g275475_)))
                                  (let ((_%target269127269166%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g275474_ 0)))
                                        (_%tl269129269169%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g275474_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl269129269169%_))
                                        (letrec ((_%loop269130269172%_
                                                  (lambda (_%hd269128269176%_
                                                           _%type269134269179%_
                                                           _%symbol269135269180%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd269128269176%_))
                                                        (let ((_%e269131269182%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd269128269176%_))))
                  (let ((_%lp-hd269132269186%_
                         (let ()
                           (declare (not safe))
                           (##car _%e269131269182%_)))
                        (_%lp-tl269133269189%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e269131269182%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd269132269186%_))
                        (let ((_%e269138269192%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd269132269186%_))))
                          (let ((_%hd269139269196%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e269138269192%_)))
                                (_%tl269140269199%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e269138269192%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl269140269199%_))
                                (let ((_%e269141269202%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl269140269199%_))))
                                  (let ((_%hd269142269206%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e269141269202%_)))
                                        (_%tl269143269209%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e269141269202%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl269143269209%_))
                                        (_%loop269130269172%_
                                         _%lp-tl269133269189%_
                                         (cons _%hd269142269206%_
                                               _%type269134269179%_)
                                         (cons _%hd269139269196%_
                                               _%symbol269135269180%_))
                                        (_%g269120269149%_
                                         _%g269121269153%_))))
                                (_%g269120269149%_ _%g269121269153%_))))
                        (_%g269120269149%_ _%g269121269153%_))))
                (let ((_%type269136269212%_ (reverse _%type269134269179%_))
                      (_%symbol269137269214%_
                       (reverse _%symbol269135269180%_)))
                  ((lambda (_%g269122269216%_ _%g269123269218%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g269122269216%_
                                _%g269123269218%_))
                             (let ((__tmp275476
                                    (lambda (_%g269233269237%_
                                             _%g269234269240%_
                                             _%g269235269242%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g269234269240%_
                                                        (cons _%g269233269237%_
                                                              '())))
                                            _%g269235269242%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp275476
                                '()
                                _%g269122269216%_
                                _%g269123269218%_)))))
                   _%type269136269212%_
                   _%symbol269137269214%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop269130269172%_
                                           _%target269127269166%_
                                           '()
                                           '()))
                                        (_%g269120269149%_
                                         _%g269121269153%_)))))
                              (_%g269120269149%_ _%g269121269153%_))))
                      (_%g269120269149%_ _%g269121269153%_)))))
          (_%g269119269245%_ _%$stx269116%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx269250%_)
        (let* ((_%__stx274785274786%_ _%$stx269250%_)
               (_%g269255269297%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx274785274786%_)))))
          (let ((_%__kont274788274789%_
                 (lambda (_%g269257269425%_
                          _%g269258269427%_
                          _%g269259269428%_
                          _%g269260269429%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g269260269429%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g269259269428%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g269258269427%_ '()))
                                           (cons _%g269257269425%_ '())))))))
                (_%__kont274790274791%_
                 (lambda (_%g269276269344%_
                          _%g269277269346%_
                          _%g269278269347%_
                          _%g269279269348%_)
                   (cons _%g269279269348%_
                         (cons _%g269278269347%_
                               (cons _%g269277269346%_
                                     (cons _%g269276269344%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match274824274825%_
                   (lambda (_%e269261269375%_
                            _%hd269262269379%_
                            _%tl269263269382%_
                            _%e269264269385%_
                            _%hd269265269389%_
                            _%tl269266269392%_
                            _%e269267269395%_
                            _%hd269268269399%_
                            _%tl269269269402%_
                            _%e269270269405%_
                            _%hd269271269409%_
                            _%tl269272269412%_
                            _%e269273269415%_
                            _%hd269274269419%_
                            _%tl269275269422%_)
                     (let ((_%g269257269425%_ _%hd269274269419%_)
                           (_%g269258269427%_ _%hd269271269409%_)
                           (_%g269259269428%_ _%hd269268269399%_)
                           (_%g269260269429%_ _%hd269265269389%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g269260269429%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g269259269428%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g269258269427%_)))
                           (_%__kont274788274789%_
                            _%g269257269425%_
                            _%g269258269427%_
                            _%g269259269428%_
                            _%g269260269429%_)
                           (let ()
                             (declare (not safe))
                             (_%g269255269297%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx274785274786%_))
                  (let ((_%e269261269375%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx274785274786%_))))
                    (let ((_%tl269263269382%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e269261269375%_)))
                          (_%hd269262269379%_
                           (let ()
                             (declare (not safe))
                             (##car _%e269261269375%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl269263269382%_))
                          (let ((_%e269264269385%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl269263269382%_))))
                            (let ((_%tl269266269392%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e269264269385%_)))
                                  (_%hd269265269389%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e269264269385%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl269266269392%_))
                                  (let ((_%e269267269395%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl269266269392%_))))
                                    (let ((_%tl269269269402%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e269267269395%_)))
                                          (_%hd269268269399%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e269267269395%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl269269269402%_))
                                          (let ((_%e269270269405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl269269269402%_))))
                                            (let ((_%tl269272269412%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e269270269405%_)))
                                                  (_%hd269271269409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e269270269405%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl269272269412%_))
                                                  (let ((_%e269273269415%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl269272269412%_))))
                                                    (let ((_%tl269275269422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e269273269415%_)))
                                                          (_%hd269274269419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e269273269415%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl269275269422%_))
                                                          (_%__match274824274825%_
                                                           _%e269261269375%_
                                                           _%hd269262269379%_
                                                           _%tl269263269382%_
                                                           _%e269264269385%_
                                                           _%hd269265269389%_
                                                           _%tl269266269392%_
                                                           _%e269267269395%_
                                                           _%hd269268269399%_
                                                           _%tl269269269402%_
                                                           _%e269270269405%_
                                                           _%hd269271269409%_
                                                           _%tl269272269412%_
                                                           _%e269273269415%_
                                                           _%hd269274269419%_
                                                           _%tl269275269422%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g269255269297%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl269272269412%_))
                                                      (_%__kont274790274791%_
                                                       _%hd269271269409%_
                                                       _%hd269268269399%_
                                                       _%hd269265269389%_
                                                       _%hd269262269379%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g269255269297%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g269255269297%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g269255269297%_)))))
                          (let () (declare (not safe)) (_%g269255269297%_)))))
                  (let () (declare (not safe)) (_%g269255269297%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx269454%_)
        (let* ((_%g269458269493%_
                (lambda (_%g269459269489%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g269459269489%_))))
               (_%g269457269606%_
                (lambda (_%g269459269497%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g269459269497%_))
                      (let ((_%e269463269500%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g269459269497%_))))
                        (let ((_%hd269464269504%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e269463269500%_)))
                              (_%tl269465269507%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e269463269500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl269465269507%_))
                              (let ((_g275477_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl269465269507%_
                                        '0))))
                                (begin
                                  (let ((_g275478_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g275477_)
                                               (##values-length _g275477_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g275478_ 2)))
                                        (error "Context expects 2 values"
                                               _g275478_)))
                                  (let ((_%target269466269510%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g275477_ 0)))
                                        (_%tl269468269513%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g275477_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl269468269513%_))
                                        (letrec ((_%loop269469269516%_
                                                  (lambda (_%hd269467269520%_
                                                           _%symbol269473269523%_
                                                           _%method269474269524%_
                                                           _%type-t269475269525%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd269467269520%_))
                                                        (let ((_%e269470269527%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd269467269520%_))))
                  (let ((_%lp-hd269471269531%_
                         (let ()
                           (declare (not safe))
                           (##car _%e269470269527%_)))
                        (_%lp-tl269472269534%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e269470269527%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd269471269531%_))
                        (let ((_%e269479269537%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd269471269531%_))))
                          (let ((_%hd269480269541%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e269479269537%_)))
                                (_%tl269481269544%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e269479269537%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl269481269544%_))
                                (let ((_%e269482269547%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl269481269544%_))))
                                  (let ((_%hd269483269551%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e269482269547%_)))
                                        (_%tl269484269554%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e269482269547%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl269484269554%_))
                                        (let ((_%e269485269557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl269484269554%_))))
                                          (let ((_%hd269486269561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e269485269557%_)))
                                                (_%tl269487269564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e269485269557%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl269487269564%_))
                                                (_%loop269469269516%_
                                                 _%lp-tl269472269534%_
                                                 (cons _%hd269486269561%_
                                                       _%symbol269473269523%_)
                                                 (cons _%hd269483269551%_
                                                       _%method269474269524%_)
                                                 (cons _%hd269480269541%_
                                                       _%type-t269475269525%_))
                                                (_%g269458269493%_
                                                 _%g269459269497%_))))
                                        (_%g269458269493%_
                                         _%g269459269497%_))))
                                (_%g269458269493%_ _%g269459269497%_))))
                        (_%g269458269493%_ _%g269459269497%_))))
                (let ((_%symbol269476269567%_ (reverse _%symbol269473269523%_))
                      (_%method269477269569%_ (reverse _%method269474269524%_))
                      (_%type-t269478269570%_
                       (reverse _%type-t269475269525%_)))
                  ((lambda (_%g269460269572%_
                            _%g269461269574%_
                            _%g269462269575%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g269460269572%_
                                _%g269461269574%_
                                _%g269462269575%_))
                             (let ((__tmp275479
                                    (lambda (_%g269591269596%_
                                             _%g269592269599%_
                                             _%g269593269601%_
                                             _%g269594269603%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g269593269601%_
                                                        (cons _%g269592269599%_
                                                              (cons _%g269591269596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g269594269603%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp275479
                                '()
                                _%g269460269572%_
                                _%g269461269574%_
                                _%g269462269575%_)))))
                   _%symbol269476269567%_
                   _%method269477269569%_
                   _%type-t269478269570%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop269469269516%_
                                           _%target269466269510%_
                                           '()
                                           '()
                                           '()))
                                        (_%g269458269493%_
                                         _%g269459269497%_)))))
                              (_%g269458269493%_ _%g269459269497%_))))
                      (_%g269458269493%_ _%g269459269497%_)))))
          (_%g269457269606%_ _%$stx269454%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx269611%_)
        (let* ((_%g269615269648%_
                (lambda (_%g269616269644%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g269616269644%_))))
               (_%g269614269758%_
                (lambda (_%g269616269652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g269616269652%_))
                      (let ((_%e269620269655%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g269616269652%_))))
                        (let ((_%hd269621269659%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e269620269655%_)))
                              (_%tl269622269662%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e269620269655%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl269622269662%_))
                              (let ((_%e269623269665%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl269622269662%_))))
                                (let ((_%hd269624269669%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e269623269665%_)))
                                      (_%tl269625269672%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e269623269665%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl269625269672%_))
                                      (let ((_g275480_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl269625269672%_
                                                '0))))
                                        (begin
                                          (let ((_g275481_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g275480_)
                                                       (##values-length
                                                        _g275480_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g275481_ 2)))
                                                (error "Context expects 2 values"
                                                       _g275481_)))
                                          (let ((_%target269626269675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g275480_ 0)))
                                                (_%tl269628269678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g275480_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl269628269678%_))
                                                (letrec ((_%loop269629269681%_
                                                          (lambda (_%hd269627269685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol269633269688%_
                           _%method269634269689%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd269627269685%_))
                        (let ((_%e269630269691%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd269627269685%_))))
                          (let ((_%lp-hd269631269695%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e269630269691%_)))
                                (_%lp-tl269632269698%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e269630269691%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd269631269695%_))
                                (let ((_%e269637269701%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd269631269695%_))))
                                  (let ((_%hd269638269705%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e269637269701%_)))
                                        (_%tl269639269708%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e269637269701%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl269639269708%_))
                                        (let ((_%e269640269711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl269639269708%_))))
                                          (let ((_%hd269641269715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e269640269711%_)))
                                                (_%tl269642269718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e269640269711%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl269642269718%_))
                                                (_%loop269629269681%_
                                                 _%lp-tl269632269698%_
                                                 (cons _%hd269641269715%_
                                                       _%symbol269633269688%_)
                                                 (cons _%hd269638269705%_
                                                       _%method269634269689%_))
                                                (_%g269615269648%_
                                                 _%g269616269652%_))))
                                        (_%g269615269648%_
                                         _%g269616269652%_))))
                                (_%g269615269648%_ _%g269616269652%_))))
                        (let ((_%symbol269635269721%_
                               (reverse _%symbol269633269688%_))
                              (_%method269636269723%_
                               (reverse _%method269634269689%_)))
                          ((lambda (_%g269617269725%_
                                    _%g269618269727%_
                                    _%g269619269728%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g269617269725%_
                                        _%g269618269727%_))
                                     (let ((__tmp275482
                                            (lambda (_%g269746269750%_
                                                     _%g269747269753%_
                                                     _%g269748269755%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g269619269728%_
                                                                (cons _%g269747269753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g269746269750%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g269748269755%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp275482
                                        '()
                                        _%g269617269725%_
                                        _%g269618269727%_)))))
                           _%symbol269635269721%_
                           _%method269636269723%_
                           _%hd269624269669%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop269629269681%_
                                                   _%target269626269675%_
                                                   '()
                                                   '()))
                                                (_%g269615269648%_
                                                 _%g269616269652%_)))))
                                      (_%g269615269648%_ _%g269616269652%_))))
                              (_%g269615269648%_ _%g269616269652%_))))
                      (_%g269615269648%_ _%g269616269652%_)))))
          (_%g269614269758%_ _%$stx269611%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx269763%_)
        (let* ((_%g269767269781%_
                (lambda (_%g269768269777%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g269768269777%_))))
               (_%g269766269822%_
                (lambda (_%g269768269785%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g269768269785%_))
                      (let ((_%e269770269788%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g269768269785%_))))
                        (let ((_%hd269771269792%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e269770269788%_)))
                              (_%tl269772269795%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e269770269788%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl269772269795%_))
                              (let ((_%e269773269798%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl269772269795%_))))
                                (let ((_%hd269774269802%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e269773269798%_)))
                                      (_%tl269775269805%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e269773269798%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl269775269805%_))
                                      ((lambda (_%g269769269808%_)
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
                                                           (cons _%g269769269808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd269774269802%_)
                                      (_%g269767269781%_ _%g269768269785%_))))
                              (_%g269767269781%_ _%g269768269785%_))))
                      (_%g269767269781%_ _%g269768269785%_)))))
          (_%g269766269822%_ _%$stx269763%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx269826%_)
        (let* ((_%g269830269884%_
                (lambda (_%g269831269880%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g269831269880%_))))
               (_%g269829270065%_
                (lambda (_%g269831269888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g269831269888%_))
                      (let ((_%e269843269891%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g269831269888%_))))
                        (let ((_%hd269844269895%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e269843269891%_)))
                              (_%tl269845269898%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e269843269891%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl269845269898%_))
                              (let ((_%e269846269901%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl269845269898%_))))
                                (let ((_%hd269847269905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e269846269901%_)))
                                      (_%tl269848269908%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e269846269901%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl269848269908%_))
                                      (let ((_%e269849269911%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl269848269908%_))))
                                        (let ((_%hd269850269915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e269849269911%_)))
                                              (_%tl269851269918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e269849269911%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl269851269918%_))
                                              (let ((_%e269852269921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl269851269918%_))))
                                                (let ((_%hd269853269925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e269852269921%_)))
                                                      (_%tl269854269928%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e269852269921%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl269854269928%_))
                                                      (let ((_%e269855269931%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl269854269928%_))))
                (let ((_%hd269856269935%_
                       (let () (declare (not safe)) (##car _%e269855269931%_)))
                      (_%tl269857269938%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e269855269931%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl269857269938%_))
                      (let ((_%e269858269941%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl269857269938%_))))
                        (let ((_%hd269859269945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e269858269941%_)))
                              (_%tl269860269948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e269858269941%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl269860269948%_))
                              (let ((_%e269861269951%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl269860269948%_))))
                                (let ((_%hd269862269955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e269861269951%_)))
                                      (_%tl269863269958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e269861269951%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl269863269958%_))
                                      (let ((_%e269864269961%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl269863269958%_))))
                                        (let ((_%hd269865269965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e269864269961%_)))
                                              (_%tl269866269968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e269864269961%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl269866269968%_))
                                              (let ((_%e269867269971%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl269866269968%_))))
                                                (let ((_%hd269868269975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e269867269971%_)))
                                                      (_%tl269869269978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e269867269971%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl269869269978%_))
                                                      (let ((_%e269870269981%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl269869269978%_))))
                (let ((_%hd269871269985%_
                       (let () (declare (not safe)) (##car _%e269870269981%_)))
                      (_%tl269872269988%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e269870269981%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl269872269988%_))
                      (let ((_%e269873269991%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl269872269988%_))))
                        (let ((_%hd269874269995%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e269873269991%_)))
                              (_%tl269875269998%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e269873269991%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl269875269998%_))
                              (let ((_%e269876270001%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl269875269998%_))))
                                (let ((_%hd269877270005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e269876270001%_)))
                                      (_%tl269878270008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e269876270001%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl269878270008%_))
                                      ((lambda (_%g269832270011%_
                                                _%g269833270013%_
                                                _%g269834270014%_
                                                _%g269835270015%_
                                                _%g269836270016%_
                                                _%g269837270017%_
                                                _%g269838270018%_
                                                _%g269839270019%_
                                                _%g269840270020%_
                                                _%g269841270021%_
                                                _%g269842270022%_)
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
                                                           (cons _%g269842270022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g269841270021%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g269840270020%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g269839270019%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g269838270018%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g269837270017%_ '()))
                                           (cons _%g269836270016%_
                                                 (cons _%g269835270015%_
                                                       (cons _%g269834270014%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g269833270013%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g269832270011%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd269877270005%_
                                       _%hd269874269995%_
                                       _%hd269871269985%_
                                       _%hd269868269975%_
                                       _%hd269865269965%_
                                       _%hd269862269955%_
                                       _%hd269859269945%_
                                       _%hd269856269935%_
                                       _%hd269853269925%_
                                       _%hd269850269915%_
                                       _%hd269847269905%_)
                                      (_%g269830269884%_ _%g269831269888%_))))
                              (_%g269830269884%_ _%g269831269888%_))))
                      (_%g269830269884%_ _%g269831269888%_))))
              (_%g269830269884%_ _%g269831269888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g269830269884%_
                                               _%g269831269888%_))))
                                      (_%g269830269884%_ _%g269831269888%_))))
                              (_%g269830269884%_ _%g269831269888%_))))
                      (_%g269830269884%_ _%g269831269888%_))))
              (_%g269830269884%_ _%g269831269888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g269830269884%_
                                               _%g269831269888%_))))
                                      (_%g269830269884%_ _%g269831269888%_))))
                              (_%g269830269884%_ _%g269831269888%_))))
                      (_%g269830269884%_ _%g269831269888%_)))))
          (_%g269829270065%_ _%$stx269826%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx270069%_)
        (let* ((_%g270073270087%_
                (lambda (_%g270074270083%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g270074270083%_))))
               (_%g270072270128%_
                (lambda (_%g270074270091%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g270074270091%_))
                      (let ((_%e270076270094%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g270074270091%_))))
                        (let ((_%hd270077270098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e270076270094%_)))
                              (_%tl270078270101%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e270076270094%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl270078270101%_))
                              (let ((_%e270079270104%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl270078270101%_))))
                                (let ((_%hd270080270108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e270079270104%_)))
                                      (_%tl270081270111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e270079270104%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl270081270111%_))
                                      ((lambda (_%g270075270114%_)
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
                                                           (cons _%g270075270114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd270080270108%_)
                                      (_%g270073270087%_ _%g270074270091%_))))
                              (_%g270073270087%_ _%g270074270091%_))))
                      (_%g270073270087%_ _%g270074270091%_)))))
          (_%g270072270128%_ _%$stx270069%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx270132%_)
        (let* ((_%g270136270150%_
                (lambda (_%g270137270146%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g270137270146%_))))
               (_%g270135270191%_
                (lambda (_%g270137270154%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g270137270154%_))
                      (let ((_%e270139270157%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g270137270154%_))))
                        (let ((_%hd270140270161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e270139270157%_)))
                              (_%tl270141270164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e270139270157%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl270141270164%_))
                              (let ((_%e270142270167%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl270141270164%_))))
                                (let ((_%hd270143270171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e270142270167%_)))
                                      (_%tl270144270174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e270142270167%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl270144270174%_))
                                      ((lambda (_%g270138270177%_)
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
                                                           (cons _%g270138270177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd270143270171%_)
                                      (_%g270136270150%_ _%g270137270154%_))))
                              (_%g270136270150%_ _%g270137270154%_))))
                      (_%g270136270150%_ _%g270137270154%_)))))
          (_%g270135270191%_ _%$stx270132%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx270195%_)
        (let* ((_%g270199270221%_
                (lambda (_%g270200270217%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g270200270217%_))))
               (_%g270198270290%_
                (lambda (_%g270200270225%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g270200270225%_))
                      (let ((_%e270204270228%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g270200270225%_))))
                        (let ((_%hd270205270232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e270204270228%_)))
                              (_%tl270206270235%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e270204270228%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl270206270235%_))
                              (let ((_%e270207270238%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl270206270235%_))))
                                (let ((_%hd270208270242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e270207270238%_)))
                                      (_%tl270209270245%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e270207270238%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl270209270245%_))
                                      (let ((_%e270210270248%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl270209270245%_))))
                                        (let ((_%hd270211270252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e270210270248%_)))
                                              (_%tl270212270255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e270210270248%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl270212270255%_))
                                              (let ((_%e270213270258%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl270212270255%_))))
                                                (let ((_%hd270214270262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e270213270258%_)))
                                                      (_%tl270215270265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e270213270258%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl270215270265%_))
                                                      ((lambda (_%g270201270268%_
                                                                _%g270202270270%_
                                                                _%g270203270271%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g270203270271%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g270202270270%_ '()))
                                   (cons _%g270201270268%_ '())))))
               _%hd270214270262%_
               _%hd270211270252%_
               _%hd270208270242%_)
              (_%g270199270221%_ _%g270200270225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g270199270221%_
                                               _%g270200270225%_))))
                                      (_%g270199270221%_ _%g270200270225%_))))
                              (_%g270199270221%_ _%g270200270225%_))))
                      (_%g270199270221%_ _%g270200270225%_)))))
          (_%g270198270290%_ _%$stx270195%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx270294%_)
        (let* ((_%g270298270320%_
                (lambda (_%g270299270316%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g270299270316%_))))
               (_%g270297270389%_
                (lambda (_%g270299270324%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g270299270324%_))
                      (let ((_%e270303270327%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g270299270324%_))))
                        (let ((_%hd270304270331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e270303270327%_)))
                              (_%tl270305270334%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e270303270327%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl270305270334%_))
                              (let ((_%e270306270337%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl270305270334%_))))
                                (let ((_%hd270307270341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e270306270337%_)))
                                      (_%tl270308270344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e270306270337%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl270308270344%_))
                                      (let ((_%e270309270347%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl270308270344%_))))
                                        (let ((_%hd270310270351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e270309270347%_)))
                                              (_%tl270311270354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e270309270347%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl270311270354%_))
                                              (let ((_%e270312270357%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl270311270354%_))))
                                                (let ((_%hd270313270361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e270312270357%_)))
                                                      (_%tl270314270364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e270312270357%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl270314270364%_))
                                                      ((lambda (_%g270300270367%_
                                                                _%g270301270369%_
                                                                _%g270302270370%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g270302270370%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g270301270369%_ '()))
                                   (cons _%g270300270367%_ '())))))
               _%hd270313270361%_
               _%hd270310270351%_
               _%hd270307270341%_)
              (_%g270298270320%_ _%g270299270324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g270298270320%_
                                               _%g270299270324%_))))
                                      (_%g270298270320%_ _%g270299270324%_))))
                              (_%g270298270320%_ _%g270299270324%_))))
                      (_%g270298270320%_ _%g270299270324%_)))))
          (_%g270297270389%_ _%$stx270294%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx270393%_)
        (let* ((_%g270397270411%_
                (lambda (_%g270398270407%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g270398270407%_))))
               (_%g270396270452%_
                (lambda (_%g270398270415%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g270398270415%_))
                      (let ((_%e270400270418%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g270398270415%_))))
                        (let ((_%hd270401270422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e270400270418%_)))
                              (_%tl270402270425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e270400270418%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl270402270425%_))
                              (let ((_%e270403270428%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl270402270425%_))))
                                (let ((_%hd270404270432%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e270403270428%_)))
                                      (_%tl270405270435%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e270403270428%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl270405270435%_))
                                      ((lambda (_%g270399270438%_)
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
                                                           (cons _%g270399270438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd270404270432%_)
                                      (_%g270397270411%_ _%g270398270415%_))))
                              (_%g270397270411%_ _%g270398270415%_))))
                      (_%g270397270411%_ _%g270398270415%_)))))
          (_%g270396270452%_ _%$stx270393%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx270456%_)
        (let* ((_%g270460270478%_
                (lambda (_%g270461270474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g270461270474%_))))
               (_%g270459270533%_
                (lambda (_%g270461270482%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g270461270482%_))
                      (let ((_%e270464270485%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g270461270482%_))))
                        (let ((_%hd270465270489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e270464270485%_)))
                              (_%tl270466270492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e270464270485%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl270466270492%_))
                              (let ((_%e270467270495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl270466270492%_))))
                                (let ((_%hd270468270499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e270467270495%_)))
                                      (_%tl270469270502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e270467270495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl270469270502%_))
                                      (let ((_%e270470270505%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl270469270502%_))))
                                        (let ((_%hd270471270509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e270470270505%_)))
                                              (_%tl270472270512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e270470270505%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl270472270512%_))
                                              ((lambda (_%g270462270515%_
                                                        _%g270463270517%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g270463270517%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g270462270515%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd270471270509%_
                                               _%hd270468270499%_)
                                              (_%g270460270478%_
                                               _%g270461270482%_))))
                                      (_%g270460270478%_ _%g270461270482%_))))
                              (_%g270460270478%_ _%g270461270482%_))))
                      (_%g270460270478%_ _%g270461270482%_)))))
          (_%g270459270533%_ _%$stx270456%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx270537%_)
        (let* ((_%__stx274853274854%_ _%$stx270537%_)
               (_%g270544270605%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx274853274854%_)))))
          (let ((_%__kont274856274857%_
                 (lambda (_%g270546270843%_ _%g270547270845%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g270547270845%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g270546270843%_ '()))
                                     '())))))
                (_%__kont274858274859%_
                 (lambda (_%g270557270782%_
                          _%g270558270784%_
                          _%g270559270785%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g270559270785%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g270558270784%_ '()))
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
                                 (cons _%g270557270782%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont274860274861%_
                 (lambda (_%g270576270706%_ _%g270577270708%_)
                   (cons _%g270577270708%_
                         (cons _%g270576270706%_ (cons '#f '())))))
                (_%__kont274862274863%_
                 (lambda (_%g270584270656%_
                          _%g270585270658%_
                          _%g270586270659%_)
                   (cons _%g270586270659%_
                         (cons _%g270585270658%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g270584270656%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx274853274854%_))
                (let ((_%e270548270813%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx274853274854%_))))
                  (let ((_%tl270550270820%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e270548270813%_)))
                        (_%hd270549270817%_
                         (let ()
                           (declare (not safe))
                           (##car _%e270548270813%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl270550270820%_))
                        (let ((_%e270551270823%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl270550270820%_))))
                          (let ((_%tl270553270830%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e270551270823%_)))
                                (_%hd270552270827%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e270551270823%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl270553270830%_))
                                (let ((_%e270554270833%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl270553270830%_))))
                                  (let ((_%tl270556270840%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e270554270833%_)))
                                        (_%hd270555270837%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e270554270833%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl270556270840%_))
                                        (_%__kont274856274857%_
                                         _%hd270555270837%_
                                         _%hd270552270827%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl270556270840%_))
                                            (let ((_%e270569270758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl270556270840%_))))
                                              (let ((_%tl270571270765%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e270569270758%_)))
                                                    (_%hd270570270762%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e270569270758%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd270570270762%_))
                                                    (let ((_%e270572270768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd270570270762%_))))
                                                      (if (equal? _%e270572270768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl270571270765%_))
                      (let ((_%e270573270772%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl270571270765%_))))
                        (let ((_%tl270575270779%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e270573270772%_)))
                              (_%hd270574270776%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e270573270772%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl270575270779%_))
                              (_%__kont274858274859%_
                               _%hd270574270776%_
                               _%hd270555270837%_
                               _%hd270552270827%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd270555270837%_))
                                  (let ((_%e270596270642%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd270555270837%_))))
                                    (declare (not safe))
                                    (_%g270544270605%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g270544270605%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd270555270837%_))
                          (let ((_%e270596270642%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd270555270837%_))))
                            (if (equal? _%e270596270642%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl270571270765%_))
                                    (_%__kont274862274863%_
                                     _%hd270570270762%_
                                     _%hd270552270827%_
                                     _%hd270549270817%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g270544270605%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g270544270605%_))))
                          (let () (declare (not safe)) (_%g270544270605%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd270555270837%_))
                      (let ((_%e270596270642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd270555270837%_))))
                        (if (equal? _%e270596270642%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl270571270765%_))
                                (_%__kont274862274863%_
                                 _%hd270570270762%_
                                 _%hd270552270827%_
                                 _%hd270549270817%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g270544270605%_)))
                            (let () (declare (not safe)) (_%g270544270605%_))))
                      (let () (declare (not safe)) (_%g270544270605%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd270555270837%_))
                                                        (let ((_%e270596270642%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd270555270837%_))))
                  (if (equal? _%e270596270642%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl270571270765%_))
                          (_%__kont274862274863%_
                           _%hd270570270762%_
                           _%hd270552270827%_
                           _%hd270549270817%_)
                          (let () (declare (not safe)) (_%g270544270605%_)))
                      (let () (declare (not safe)) (_%g270544270605%_))))
                (let () (declare (not safe)) (_%g270544270605%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd270555270837%_))
                                                (let ((_%e270596270642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd270555270837%_))))
                                                  (declare (not safe))
                                                  (_%g270544270605%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g270544270605%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl270553270830%_))
                                    (_%__kont274860274861%_
                                     _%hd270552270827%_
                                     _%hd270549270817%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g270544270605%_))))))
                        (let () (declare (not safe)) (_%g270544270605%_)))))
                (let () (declare (not safe)) (_%g270544270605%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx270864%_)
        (let* ((_%g270868270897%_
                (lambda (_%g270869270893%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g270869270893%_))))
               (_%g270867271002%_
                (lambda (_%g270869270901%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g270869270901%_))
                      (let ((_%e270871270904%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g270869270901%_))))
                        (let ((_%hd270872270908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e270871270904%_)))
                              (_%tl270873270911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e270871270904%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl270873270911%_))
                              (let ((_g275483_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl270873270911%_
                                        '0))))
                                (begin
                                  (let ((_g275484_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g275483_)
                                               (##values-length _g275483_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g275484_ 2)))
                                        (error "Context expects 2 values"
                                               _g275484_)))
                                  (let ((_%target270874270914%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g275483_ 0)))
                                        (_%tl270876270917%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g275483_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl270876270917%_))
                                        (letrec ((_%loop270877270920%_
                                                  (lambda (_%hd270875270924%_
                                                           _%clause270881270927%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd270875270924%_))
                                                        (let ((_%e270878270929%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd270875270924%_))))
                  (let ((_%lp-hd270879270933%_
                         (let ()
                           (declare (not safe))
                           (##car _%e270878270929%_)))
                        (_%lp-tl270880270936%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e270878270929%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd270879270933%_))
                        (let ((_g275485_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd270879270933%_
                                  '0))))
                          (begin
                            (let ((_g275486_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g275485_)
                                         (##values-length _g275485_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g275486_ 2)))
                                  (error "Context expects 2 values"
                                         _g275486_)))
                            (let ((_%target270883270939%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g275485_ 0)))
                                  (_%tl270885270942%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g275485_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl270885270942%_))
                                  (letrec ((_%loop270886270945%_
                                            (lambda (_%hd270884270949%_
                                                     _%clause270890270952%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd270884270949%_))
                                                  (let ((_%e270887270954%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd270884270949%_))))
                                                    (let ((_%lp-hd270888270958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e270887270954%_)))
                                                          (_%lp-tl270889270961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e270887270954%_))))
                                                      (_%loop270886270945%_
                                                       _%lp-tl270889270961%_
                                                       (cons _%lp-hd270888270958%_
                                                             _%clause270890270952%_))))
                                                  (let ((_%clause270891270964%_
                                                         (reverse _%clause270890270952%_)))
                                                    (_%loop270877270920%_
                                                     _%lp-tl270880270936%_
                                                     (cons _%clause270891270964%_
                                                           _%clause270881270927%_)))))))
                                    (_%loop270886270945%_
                                     _%target270883270939%_
                                     '()))
                                  (_%g270868270897%_ _%g270869270901%_)))))
                        (_%g270868270897%_ _%g270869270901%_))))
                (let ((_%clause270882270967%_
                       (reverse _%clause270881270927%_)))
                  ((lambda (_%g270870270970%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp275487
                                              (lambda (_%g270985270990%_
                                                       _%g270986270993%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp275488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g270987270996%_ _%g270988270999%_)
                             (cons _%g270987270996%_ _%g270988270999%_))))
                      (declare (not safe))
                      (foldr__0 __tmp275488 '() _%g270985270990%_)))
              _%g270986270993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp275487
                                          '()
                                          _%g270870270970%_)))
                                 '())))
                   _%clause270882270967%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop270877270920%_
                                           _%target270874270914%_
                                           '()))
                                        (_%g270868270897%_
                                         _%g270869270901%_)))))
                              (_%g270868270897%_ _%g270869270901%_))))
                      (_%g270868270897%_ _%g270869270901%_)))))
          (_%g270867271002%_ _%$stx270864%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx271008%_)
        (let* ((_%g271012271030%_
                (lambda (_%g271013271026%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g271013271026%_))))
               (_%g271011271085%_
                (lambda (_%g271013271034%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g271013271034%_))
                      (let ((_%e271016271037%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g271013271034%_))))
                        (let ((_%hd271017271041%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e271016271037%_)))
                              (_%tl271018271044%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e271016271037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl271018271044%_))
                              (let ((_%e271019271047%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl271018271044%_))))
                                (let ((_%hd271020271051%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e271019271047%_)))
                                      (_%tl271021271054%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e271019271047%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl271021271054%_))
                                      (let ((_%e271022271057%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl271021271054%_))))
                                        (let ((_%hd271023271061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e271022271057%_)))
                                              (_%tl271024271064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e271022271057%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl271024271064%_))
                                              ((lambda (_%g271014271067%_
                                                        _%g271015271069%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g271015271069%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g271014271067%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd271023271061%_
                                               _%hd271020271051%_)
                                              (_%g271012271030%_
                                               _%g271013271034%_))))
                                      (_%g271012271030%_ _%g271013271034%_))))
                              (_%g271012271030%_ _%g271013271034%_))))
                      (_%g271012271030%_ _%g271013271034%_)))))
          (_%g271011271085%_ _%$stx271008%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx271089%_)
        (let* ((_%g271093271111%_
                (lambda (_%g271094271107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g271094271107%_))))
               (_%g271092271166%_
                (lambda (_%g271094271115%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g271094271115%_))
                      (let ((_%e271097271118%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g271094271115%_))))
                        (let ((_%hd271098271122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e271097271118%_)))
                              (_%tl271099271125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e271097271118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl271099271125%_))
                              (let ((_%e271100271128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl271099271125%_))))
                                (let ((_%hd271101271132%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e271100271128%_)))
                                      (_%tl271102271135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e271100271128%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl271102271135%_))
                                      (let ((_%e271103271138%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl271102271135%_))))
                                        (let ((_%hd271104271142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e271103271138%_)))
                                              (_%tl271105271145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e271103271138%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl271105271145%_))
                                              ((lambda (_%g271095271148%_
                                                        _%g271096271150%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g271096271150%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g271095271148%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd271104271142%_
                                               _%hd271101271132%_)
                                              (_%g271093271111%_
                                               _%g271094271115%_))))
                                      (_%g271093271111%_ _%g271094271115%_))))
                              (_%g271093271111%_ _%g271094271115%_))))
                      (_%g271093271111%_ _%g271094271115%_)))))
          (_%g271092271166%_ _%$stx271089%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx271170%_)
        (let* ((_%g271174271203%_
                (lambda (_%g271175271199%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g271175271199%_))))
               (_%g271173271299%_
                (lambda (_%g271175271207%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g271175271207%_))
                      (let ((_%e271178271210%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g271175271207%_))))
                        (let ((_%hd271179271214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e271178271210%_)))
                              (_%tl271180271217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e271178271210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl271180271217%_))
                              (let ((_g275489_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl271180271217%_
                                        '0))))
                                (begin
                                  (let ((_g275490_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g275489_)
                                               (##values-length _g275489_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g275490_ 2)))
                                        (error "Context expects 2 values"
                                               _g275490_)))
                                  (let ((_%target271181271220%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g275489_ 0)))
                                        (_%tl271183271223%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g275489_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl271183271223%_))
                                        (letrec ((_%loop271184271226%_
                                                  (lambda (_%hd271182271230%_
                                                           _%rule271188271233%_
                                                           _%proc271189271234%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd271182271230%_))
                                                        (let ((_%e271185271236%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd271182271230%_))))
                  (let ((_%lp-hd271186271240%_
                         (let ()
                           (declare (not safe))
                           (##car _%e271185271236%_)))
                        (_%lp-tl271187271243%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e271185271236%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd271186271240%_))
                        (let ((_%e271192271246%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd271186271240%_))))
                          (let ((_%hd271193271250%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e271192271246%_)))
                                (_%tl271194271253%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e271192271246%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl271194271253%_))
                                (let ((_%e271195271256%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl271194271253%_))))
                                  (let ((_%hd271196271260%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e271195271256%_)))
                                        (_%tl271197271263%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e271195271256%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl271197271263%_))
                                        (_%loop271184271226%_
                                         _%lp-tl271187271243%_
                                         (cons _%hd271196271260%_
                                               _%rule271188271233%_)
                                         (cons _%hd271193271250%_
                                               _%proc271189271234%_))
                                        (_%g271174271203%_
                                         _%g271175271207%_))))
                                (_%g271174271203%_ _%g271175271207%_))))
                        (_%g271174271203%_ _%g271175271207%_))))
                (let ((_%rule271190271266%_ (reverse _%rule271188271233%_))
                      (_%proc271191271268%_ (reverse _%proc271189271234%_)))
                  ((lambda (_%g271176271270%_ _%g271177271272%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g271176271270%_
                                _%g271177271272%_))
                             (let ((__tmp275491
                                    (lambda (_%g271287271291%_
                                             _%g271288271294%_
                                             _%g271289271296%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g271288271294%_
                                                        (cons _%g271287271291%_
                                                              '())))
                                            _%g271289271296%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp275491
                                '()
                                _%g271176271270%_
                                _%g271177271272%_)))))
                   _%rule271190271266%_
                   _%proc271191271268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop271184271226%_
                                           _%target271181271220%_
                                           '()
                                           '()))
                                        (_%g271174271203%_
                                         _%g271175271207%_)))))
                              (_%g271174271203%_ _%g271175271207%_))))
                      (_%g271174271203%_ _%g271175271207%_)))))
          (_%g271173271299%_ _%$stx271170%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx271304%_)
        (let* ((_%g271308271326%_
                (lambda (_%g271309271322%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g271309271322%_))))
               (_%g271307271381%_
                (lambda (_%g271309271330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g271309271330%_))
                      (let ((_%e271312271333%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g271309271330%_))))
                        (let ((_%hd271313271337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e271312271333%_)))
                              (_%tl271314271340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e271312271333%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl271314271340%_))
                              (let ((_%e271315271343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl271314271340%_))))
                                (let ((_%hd271316271347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e271315271343%_)))
                                      (_%tl271317271350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e271315271343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl271317271350%_))
                                      (let ((_%e271318271353%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl271317271350%_))))
                                        (let ((_%hd271319271357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e271318271353%_)))
                                              (_%tl271320271360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e271318271353%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl271320271360%_))
                                              ((lambda (_%g271310271363%_
                                                        _%g271311271365%_)
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
                                                   (cons _%g271311271365%_
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
                 (cons _%g271310271363%_ '())))
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
                                   (cons _%g271311271365%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd271319271357%_
                                               _%hd271316271347%_)
                                              (_%g271308271326%_
                                               _%g271309271330%_))))
                                      (_%g271308271326%_ _%g271309271330%_))))
                              (_%g271308271326%_ _%g271309271330%_))))
                      (_%g271308271326%_ _%g271309271330%_)))))
          (_%g271307271381%_ _%$stx271304%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx271385%_)
        (let* ((_%__stx274971274972%_ _%$stx271385%_)
               (_%g271390271415%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx274971274972%_)))))
          (let ((_%__kont274974274975%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont274976274977%_
                 (lambda (_%g271395271462%_
                          _%g271396271464%_
                          _%g271397271465%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g271397271465%_
                                           (cons _%g271396271464%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g271395271462%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx274971274972%_))
                (let ((_%e271392271491%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx274971274972%_))))
                  (let ((_%tl271394271498%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e271392271491%_)))
                        (_%hd271393271495%_
                         (let ()
                           (declare (not safe))
                           (##car _%e271392271491%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl271394271498%_))
                        (_%__kont274974274975%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl271394271498%_))
                            (let ((_%e271401271432%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl271394271498%_))))
                              (let ((_%tl271403271439%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e271401271432%_)))
                                    (_%hd271402271436%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e271401271432%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd271402271436%_))
                                    (let ((_%e271404271442%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd271402271436%_))))
                                      (let ((_%tl271406271449%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e271404271442%_)))
                                            (_%hd271405271446%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e271404271442%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl271406271449%_))
                                            (let ((_%e271407271452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl271406271449%_))))
                                              (let ((_%tl271409271459%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e271407271452%_)))
                                                    (_%hd271408271456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e271407271452%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl271409271459%_))
                                                    (_%__kont274976274977%_
                                                     _%tl271403271439%_
                                                     _%hd271408271456%_
                                                     _%hd271405271446%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g271390271415%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g271390271415%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g271390271415%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g271390271415%_))))))
                (let () (declare (not safe)) (_%g271390271415%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx271509%_)
        (let* ((_%__stx275015275016%_ _%$stx271509%_)
               (_%g271514271545%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx275015275016%_)))))
          (let ((_%__kont275018275019%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont275020275021%_
                 (lambda (_%g271519271610%_
                          _%g271520271612%_
                          _%g271521271613%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g271521271613%_
                                           (let ((__tmp275492
                                                  (lambda (_%g271633271636%_
                                                           _%g271634271639%_)
                                                    (cons _%g271633271636%_
                                                          _%g271634271639%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp275492
                                              '()
                                              _%g271520271612%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g271519271610%_)
                                     '()))))))
            (let ((_%__match275058275059%_
                   (lambda (_%e271522271552%_
                            _%hd271523271556%_
                            _%tl271524271559%_
                            _%e271525271562%_
                            _%hd271526271566%_
                            _%tl271527271569%_
                            _%e271528271572%_
                            _%hd271529271576%_
                            _%tl271530271579%_
                            _%__splice275022275023%_
                            _%target271531271582%_
                            _%tl271533271585%_)
                     (letrec ((_%loop271534271588%_
                               (lambda (_%hd271532271592%_ _%sig271538271595%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd271532271592%_))
                                     (let ((_%e271535271597%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd271532271592%_))))
                                       (let ((_%lp-tl271537271604%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e271535271597%_)))
                                             (_%lp-hd271536271601%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e271535271597%_))))
                                         (_%loop271534271588%_
                                          _%lp-tl271537271604%_
                                          (cons _%lp-hd271536271601%_
                                                _%sig271538271595%_))))
                                     (let ((_%sig271539271607%_
                                            (reverse _%sig271538271595%_)))
                                       (_%__kont275020275021%_
                                        _%tl271527271569%_
                                        _%sig271539271607%_
                                        _%hd271529271576%_))))))
                       (_%loop271534271588%_ _%target271531271582%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx275015275016%_))
                  (let ((_%e271516271649%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx275015275016%_))))
                    (let ((_%tl271518271656%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e271516271649%_)))
                          (_%hd271517271653%_
                           (let ()
                             (declare (not safe))
                             (##car _%e271516271649%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl271518271656%_))
                          (_%__kont275018275019%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl271518271656%_))
                              (let ((_%e271525271562%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl271518271656%_))))
                                (let ((_%tl271527271569%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e271525271562%_)))
                                      (_%hd271526271566%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e271525271562%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd271526271566%_))
                                      (let ((_%e271528271572%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd271526271566%_))))
                                        (let ((_%tl271530271579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e271528271572%_)))
                                              (_%hd271529271576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e271528271572%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl271530271579%_))
                                              (let ((_%__splice275022275023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl271530271579%_
                                                        '0))))
                                                (let ((_%tl271533271585%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice275022275023%_
                                                          '1)))
                                                      (_%target271531271582%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice275022275023%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl271533271585%_))
                                                      (_%__match275058275059%_
                                                       _%e271516271649%_
                                                       _%hd271517271653%_
                                                       _%tl271518271656%_
                                                       _%e271525271562%_
                                                       _%hd271526271566%_
                                                       _%tl271527271569%_
                                                       _%e271528271572%_
                                                       _%hd271529271576%_
                                                       _%tl271530271579%_
                                                       _%__splice275022275023%_
                                                       _%target271531271582%_
                                                       _%tl271533271585%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g271514271545%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g271514271545%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g271514271545%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g271514271545%_))))))
                  (let () (declare (not safe)) (_%g271514271545%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx271668%_)
        (let* ((_%__stx275061275062%_ _%$stx271668%_)
               (_%g271673271720%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx275061275062%_)))))
          (let ((_%__kont275064275065%_
                 (lambda (_%g271675271878%_ _%g271676271880%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g271676271880%_
                               (let ((__tmp275493
                                      (lambda (_%g271900271903%_
                                               _%g271901271906%_)
                                        (cons _%g271900271903%_
                                              _%g271901271906%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp275493
                                  '()
                                  _%g271675271878%_))))))
                (_%__kont275068275069%_
                 (lambda (_%g271698271775%_ _%g271699271777%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g271699271777%_
                               (let ((__tmp275494
                                      (lambda (_%g271794271797%_
                                               _%g271795271800%_)
                                        (cons _%g271794271797%_
                                              _%g271795271800%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp275494
                                  '()
                                  _%g271698271775%_)))))))
            (let* ((_%__match275128275129%_
                    (lambda (_%e271700271727%_
                             _%hd271701271731%_
                             _%tl271702271734%_
                             _%e271703271737%_
                             _%hd271704271741%_
                             _%tl271705271744%_
                             _%__splice275070275071%_
                             _%target271706271747%_
                             _%tl271708271750%_)
                      (letrec ((_%loop271709271753%_
                                (lambda (_%hd271707271757%_
                                         _%sig271713271760%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd271707271757%_))
                                      (let ((_%e271710271762%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd271707271757%_))))
                                        (let ((_%lp-tl271712271769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e271710271762%_)))
                                              (_%lp-hd271711271766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e271710271762%_))))
                                          (_%loop271709271753%_
                                           _%lp-tl271712271769%_
                                           (cons _%lp-hd271711271766%_
                                                 _%sig271713271760%_))))
                                      (let ((_%sig271714271772%_
                                             (reverse _%sig271713271760%_)))
                                        (_%__kont275068275069%_
                                         _%sig271714271772%_
                                         _%hd271704271741%_))))))
                        (_%loop271709271753%_ _%target271706271747%_ '()))))
                   (_%__match275120275121%_
                    (lambda (_%e271700271727%_
                             _%hd271701271731%_
                             _%tl271702271734%_
                             _%e271703271737%_
                             _%hd271704271741%_
                             _%tl271705271744%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl271705271744%_))
                          (let ((_%__splice275070275071%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl271705271744%_
                                    '0))))
                            (let ((_%tl271708271750%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice275070275071%_
                                      '1)))
                                  (_%target271706271747%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice275070275071%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl271708271750%_))
                                  (_%__match275128275129%_
                                   _%e271700271727%_
                                   _%hd271701271731%_
                                   _%tl271702271734%_
                                   _%e271703271737%_
                                   _%hd271704271741%_
                                   _%tl271705271744%_
                                   _%__splice275070275071%_
                                   _%target271706271747%_
                                   _%tl271708271750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g271673271720%_)))))
                          (let () (declare (not safe)) (_%g271673271720%_)))))
                   (_%__match275108275109%_
                    (lambda (_%e271677271810%_
                             _%hd271678271814%_
                             _%tl271679271817%_
                             _%e271680271820%_
                             _%hd271681271824%_
                             _%tl271682271827%_
                             _%e271683271830%_
                             _%hd271684271834%_
                             _%tl271685271837%_
                             _%e271686271840%_
                             _%hd271687271844%_
                             _%tl271688271847%_
                             _%__splice275066275067%_
                             _%target271689271850%_
                             _%tl271691271853%_)
                      (letrec ((_%loop271692271856%_
                                (lambda (_%hd271690271860%_
                                         _%sig271696271863%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd271690271860%_))
                                      (let ((_%e271693271865%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd271690271860%_))))
                                        (let ((_%lp-tl271695271872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e271693271865%_)))
                                              (_%lp-hd271694271869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e271693271865%_))))
                                          (_%loop271692271856%_
                                           _%lp-tl271695271872%_
                                           (cons _%lp-hd271694271869%_
                                                 _%sig271696271863%_))))
                                      (let ((_%sig271697271875%_
                                             (reverse _%sig271696271863%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl271685271837%_))
                                            (_%__kont275064275065%_
                                             _%sig271697271875%_
                                             _%hd271681271824%_)
                                            (_%__match275120275121%_
                                             _%e271677271810%_
                                             _%hd271678271814%_
                                             _%tl271679271817%_
                                             _%e271680271820%_
                                             _%hd271681271824%_
                                             _%tl271682271827%_)))))))
                        (_%loop271692271856%_ _%target271689271850%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx275061275062%_))
                  (let ((_%e271677271810%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx275061275062%_))))
                    (let ((_%tl271679271817%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e271677271810%_)))
                          (_%hd271678271814%_
                           (let ()
                             (declare (not safe))
                             (##car _%e271677271810%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl271679271817%_))
                          (let ((_%e271680271820%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl271679271817%_))))
                            (let ((_%tl271682271827%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e271680271820%_)))
                                  (_%hd271681271824%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e271680271820%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl271682271827%_))
                                  (let ((_%e271683271830%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl271682271827%_))))
                                    (let ((_%tl271685271837%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e271683271830%_)))
                                          (_%hd271684271834%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e271683271830%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd271684271834%_))
                                          (let ((_%e271686271840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd271684271834%_))))
                                            (let ((_%tl271688271847%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e271686271840%_)))
                                                  (_%hd271687271844%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e271686271840%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd271687271844%_))
                                                  (if (let ((__tmp275495
                                                             |gxc[1]#_g275496_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp275495
                                                         _%hd271687271844%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl271688271847%_))
                                                          (let ((_%__splice275066275067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl271688271847%_
                            '0))))
                    (let ((_%tl271691271853%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice275066275067%_ '1)))
                          (_%target271689271850%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice275066275067%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl271691271853%_))
                          (_%__match275108275109%_
                           _%e271677271810%_
                           _%hd271678271814%_
                           _%tl271679271817%_
                           _%e271680271820%_
                           _%hd271681271824%_
                           _%tl271682271827%_
                           _%e271683271830%_
                           _%hd271684271834%_
                           _%tl271685271837%_
                           _%e271686271840%_
                           _%hd271687271844%_
                           _%tl271688271847%_
                           _%__splice275066275067%_
                           _%target271689271850%_
                           _%tl271691271853%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl271682271827%_))
                              (let ((_%__splice275070275071%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl271682271827%_
                                        '0))))
                                (let ((_%tl271708271750%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice275070275071%_
                                          '1)))
                                      (_%target271706271747%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice275070275071%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl271708271750%_))
                                      (_%__match275128275129%_
                                       _%e271677271810%_
                                       _%hd271678271814%_
                                       _%tl271679271817%_
                                       _%e271680271820%_
                                       _%hd271681271824%_
                                       _%tl271682271827%_
                                       _%__splice275070275071%_
                                       _%target271706271747%_
                                       _%tl271708271750%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g271673271720%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g271673271720%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl271682271827%_))
                      (let ((_%__splice275070275071%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl271682271827%_
                                '0))))
                        (let ((_%tl271708271750%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice275070275071%_ '1)))
                              (_%target271706271747%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice275070275071%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl271708271750%_))
                              (_%__match275128275129%_
                               _%e271677271810%_
                               _%hd271678271814%_
                               _%tl271679271817%_
                               _%e271680271820%_
                               _%hd271681271824%_
                               _%tl271682271827%_
                               _%__splice275070275071%_
                               _%target271706271747%_
                               _%tl271708271750%_)
                              (let ()
                                (declare (not safe))
                                (_%g271673271720%_)))))
                      (let () (declare (not safe)) (_%g271673271720%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl271682271827%_))
                  (let ((_%__splice275070275071%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl271682271827%_
                            '0))))
                    (let ((_%tl271708271750%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice275070275071%_ '1)))
                          (_%target271706271747%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice275070275071%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl271708271750%_))
                          (_%__match275128275129%_
                           _%e271677271810%_
                           _%hd271678271814%_
                           _%tl271679271817%_
                           _%e271680271820%_
                           _%hd271681271824%_
                           _%tl271682271827%_
                           _%__splice275070275071%_
                           _%target271706271747%_
                           _%tl271708271750%_)
                          (let () (declare (not safe)) (_%g271673271720%_)))))
                  (let () (declare (not safe)) (_%g271673271720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl271682271827%_))
                                                      (let ((_%__splice275070275071%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl271682271827%_
                        '0))))
                (let ((_%tl271708271750%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice275070275071%_ '1)))
                      (_%target271706271747%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice275070275071%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl271708271750%_))
                      (_%__match275128275129%_
                       _%e271677271810%_
                       _%hd271678271814%_
                       _%tl271679271817%_
                       _%e271680271820%_
                       _%hd271681271824%_
                       _%tl271682271827%_
                       _%__splice275070275071%_
                       _%target271706271747%_
                       _%tl271708271750%_)
                      (let () (declare (not safe)) (_%g271673271720%_)))))
              (let () (declare (not safe)) (_%g271673271720%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl271682271827%_))
                                              (let ((_%__splice275070275071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl271682271827%_
                                                        '0))))
                                                (let ((_%tl271708271750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice275070275071%_
                                                          '1)))
                                                      (_%target271706271747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice275070275071%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl271708271750%_))
                                                      (_%__match275128275129%_
                                                       _%e271677271810%_
                                                       _%hd271678271814%_
                                                       _%tl271679271817%_
                                                       _%e271680271820%_
                                                       _%hd271681271824%_
                                                       _%tl271682271827%_
                                                       _%__splice275070275071%_
                                                       _%target271706271747%_
                                                       _%tl271708271750%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g271673271720%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g271673271720%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl271682271827%_))
                                      (let ((_%__splice275070275071%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl271682271827%_
                                                '0))))
                                        (let ((_%tl271708271750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice275070275071%_
                                                  '1)))
                                              (_%target271706271747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice275070275071%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl271708271750%_))
                                              (_%__match275128275129%_
                                               _%e271677271810%_
                                               _%hd271678271814%_
                                               _%tl271679271817%_
                                               _%e271680271820%_
                                               _%hd271681271824%_
                                               _%tl271682271827%_
                                               _%__splice275070275071%_
                                               _%target271706271747%_
                                               _%tl271708271750%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g271673271720%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g271673271720%_))))))
                          (let () (declare (not safe)) (_%g271673271720%_)))))
                  (let () (declare (not safe)) (_%g271673271720%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx273063%_ _%id273065%_)
        (let ((_%proc273069%_
               (let ((__tmp275497
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id273065%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp275497))))
          (if (procedure? _%proc273069%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx273063%_
                 _%id273065%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx273054%_ _%id273056%_)
        (let ((_%klass273060%_
               (let ((__tmp275498
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id273056%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp275498))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass273060%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx273054%_
                 _%id273056%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx272304%_ _%proc272306%_ _%sig272307%_)
        (letrec ((_%signature-arity272309%_
                  (lambda (_%args272986%_)
                    (let _%loop272989%_ ((_%rest272992%_ _%args272986%_)
                                         (_%count272994%_ '0))
                      (let* ((_%rest272995273006%_ _%rest272992%_)
                             (_%E272999273012%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest272995273006%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K273002273043%_
                               (lambda (_%rest273040%_)
                                 (_%loop272989%_
                                  _%rest273040%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count272994%_ '1)))))
                              (_%K273001273032%_ (lambda () _%count272994%_))
                              (_%K273000273020%_
                               (lambda () (cons _%count272994%_ '()))))
                          (let ((_%try-match272997273036%_
                                 (lambda ()
                                   (if (null? _%rest272995273006%_)
                                       (_%K273001273032%_)
                                       (_%K273000273020%_)))))
                            (if (pair? _%rest272995273006%_)
                                (let* ((_%tl273004273047%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest272995273006%_)))
                                       (_%rest273051%_ _%tl273004273047%_))
                                  (_%K273002273043%_ _%rest273051%_))
                                (_%try-match272997273036%_))))))))
                 (_%make-signature272311%_
                  (lambda (_%args272868%_
                           _%return272870%_
                           _%effect272871%_
                           _%unchecked272872%_)
                    (let ((__tmp275499
                           (lambda (_%g272873272875%_)
                             (|gxc[1]#verify-class!|
                              _%ctx272304%_
                              _%g272873272875%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp275499 _%args272868%_))
                    (|gxc[1]#verify-class!| _%ctx272304%_ _%return272870%_)
                    (if _%unchecked272872%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx272304%_
                         _%unchecked272872%_)
                        '#!void)
                    (let ((_%arity272879%_
                           (_%signature-arity272309%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args272868%_)))))
                      (if _%effect272871%_
                          (let ((_%effect272882%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect272871%_))))
                            (if (and (list? _%effect272882%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect272882%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx272304%_
                                   _%proc272306%_
                                   _%effect272882%_))))
                          '#!void)
                      (cons _%arity272879%_
                            (cons (let* ((_%g272885272908%_
                                          (lambda (_%g272886272904%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g272886272904%_))))
                                         (_%g272884272982%_
                                          (lambda (_%g272886272912%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g272886272912%_))
                                                (let ((_%e272891272915%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g272886272912%_))))
                                                  (let ((_%hd272892272919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e272891272915%_)))
                                                        (_%tl272893272922%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e272891272915%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl272893272922%_))
                                                        (let ((_%e272894272925%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl272893272922%_))))
                  (let ((_%hd272895272929%_
                         (let ()
                           (declare (not safe))
                           (##car _%e272894272925%_)))
                        (_%tl272896272932%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e272894272925%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl272896272932%_))
                        (let ((_%e272897272935%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl272896272932%_))))
                          (let ((_%hd272898272939%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e272897272935%_)))
                                (_%tl272899272942%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e272897272935%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl272899272942%_))
                                (let ((_%e272900272945%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl272899272942%_))))
                                  (let ((_%hd272901272949%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e272900272945%_)))
                                        (_%tl272902272952%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e272900272945%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl272902272952%_))
                                        ((lambda (_%g272887272955%_
                                                  _%g272888272957%_
                                                  _%g272889272958%_
                                                  _%g272890272959%_)
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
                           (cons _%g272890272959%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g272889272958%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g272888272957%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g272887272955%_ '()))
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
                                         _%hd272901272949%_
                                         _%hd272898272939%_
                                         _%hd272895272929%_
                                         _%hd272892272919%_)
                                        (_%g272885272908%_
                                         _%g272886272912%_))))
                                (_%g272885272908%_ _%g272886272912%_))))
                        (_%g272885272908%_ _%g272886272912%_))))
                (_%g272885272908%_ _%g272886272912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g272885272908%_
                                                 _%g272886272912%_)))))
                                    (_%g272884272982%_
                                     (list _%args272868%_
                                           _%return272870%_
                                           _%effect272871%_
                                           _%unchecked272872%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx272304%_ _%proc272306%_)
          (let* ((_%__stx275139275140%_ _%sig272307%_)
                 (_%g272318272421%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx275139275140%_)))))
            (let ((_%__kont275142275143%_
                   (lambda (_%g272320272849%_ _%g272321272851%_)
                     (_%make-signature272311%_
                      _%g272321272851%_
                      _%g272320272849%_
                      '#f
                      '#f)))
                  (_%__kont275144275145%_
                   (lambda (_%g272328272800%_
                            _%g272329272802%_
                            _%g272330272803%_)
                     (_%make-signature272311%_
                      _%g272330272803%_
                      _%g272329272802%_
                      _%g272328272800%_
                      '#f)))
                  (_%__kont275146275147%_
                   (lambda (_%g272344272724%_
                            _%g272345272726%_
                            _%g272346272727%_)
                     (_%make-signature272311%_
                      _%g272346272727%_
                      _%g272345272726%_
                      _%g272344272724%_
                      (let ((__tmp275500
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc272306%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp275500)))))
                  (_%__kont275148275149%_
                   (lambda (_%g272364272630%_
                            _%g272365272632%_
                            _%g272366272633%_
                            _%g272367272634%_)
                     (_%make-signature272311%_
                      _%g272367272634%_
                      _%g272366272633%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g272364272630%_)))))
                  (_%__kont275150275151%_
                   (lambda (_%g272388272537%_ _%g272389272539%_)
                     (_%make-signature272311%_
                      _%g272389272539%_
                      _%g272388272537%_
                      '#f
                      (let ((__tmp275501
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc272306%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp275501)))))
                  (_%__kont275152275153%_
                   (lambda (_%g272400272472%_
                            _%g272401272474%_
                            _%g272402272475%_)
                     (_%make-signature272311%_
                      _%g272402272475%_
                      _%g272401272474%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g272400272472%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx275139275140%_))
                  (let ((_%e272322272829%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx275139275140%_))))
                    (let ((_%tl272324272836%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e272322272829%_)))
                          (_%hd272323272833%_
                           (let ()
                             (declare (not safe))
                             (##car _%e272322272829%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl272324272836%_))
                          (let ((_%e272325272839%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl272324272836%_))))
                            (let ((_%tl272327272846%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e272325272839%_)))
                                  (_%hd272326272843%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e272325272839%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl272327272846%_))
                                  (_%__kont275142275143%_
                                   _%hd272326272843%_
                                   _%hd272323272833%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl272327272846%_))
                                      (let ((_%e272337272776%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl272327272846%_))))
                                        (let ((_%tl272339272783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e272337272776%_)))
                                              (_%hd272338272780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e272337272776%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd272338272780%_))
                                              (let ((_%e272340272786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd272338272780%_))))
                                                (if (equal? _%e272340272786%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl272339272783%_))
                                                        (let ((_%e272341272790%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl272339272783%_))))
                  (let ((_%tl272343272797%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e272341272790%_)))
                        (_%hd272342272794%_
                         (let ()
                           (declare (not safe))
                           (##car _%e272341272790%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl272343272797%_))
                        (_%__kont275144275145%_
                         _%hd272342272794%_
                         _%hd272326272843%_
                         _%hd272323272833%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl272343272797%_))
                            (let ((_%e272360272710%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl272343272797%_))))
                              (let ((_%tl272362272717%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e272360272710%_)))
                                    (_%hd272361272714%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e272360272710%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd272361272714%_))
                                    (let ((_%e272363272720%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd272361272714%_))))
                                      (if (equal? _%e272363272720%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl272362272717%_))
                                              (_%__kont275146275147%_
                                               _%hd272342272794%_
                                               _%hd272326272843%_
                                               _%hd272323272833%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl272362272717%_))
                                                  (let ((_%e272385272620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl272362272717%_))))
                                                    (let ((_%tl272387272627%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e272385272620%_)))
                                                          (_%hd272386272624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e272385272620%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl272387272627%_))
                                                          (_%__kont275148275149%_
                                                           _%hd272386272624%_
                                                           _%hd272342272794%_
                                                           _%hd272326272843%_
                                                           _%hd272323272833%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g272318272421%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g272318272421%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g272318272421%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g272318272421%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g272318272421%_))))))
                (let () (declare (not safe)) (_%g272318272421%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e272340272786%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl272339272783%_))
                                                            (_%__kont275150275151%_
                                                             _%hd272326272843%_
                                                             _%hd272323272833%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl272339272783%_))
                        (let ((_%e272413272462%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl272339272783%_))))
                          (let ((_%tl272415272469%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e272413272462%_)))
                                (_%hd272414272466%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e272413272462%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl272415272469%_))
                                (_%__kont275152275153%_
                                 _%hd272414272466%_
                                 _%hd272326272843%_
                                 _%hd272323272833%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g272318272421%_)))))
                        (let () (declare (not safe)) (_%g272318272421%_))))
                (let () (declare (not safe)) (_%g272318272421%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g272318272421%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g272318272421%_))))))
                          (let () (declare (not safe)) (_%g272318272421%_)))))
                  (let () (declare (not safe)) (_%g272318272421%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig271915%_)
        (let* ((_%g271918271998%_
                (lambda (_%g271919271994%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g271919271994%_))))
               (_%g271917272300%_
                (lambda (_%g271919272002%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g271919272002%_))
                      (let ((_%e271925272005%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g271919272002%_))))
                        (let ((_%hd271926272009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e271925272005%_)))
                              (_%tl271927272012%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e271925272005%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl271927272012%_))
                              (let ((_%e271928272015%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl271927272012%_))))
                                (let ((_%hd271929272019%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e271928272015%_)))
                                      (_%tl271930272022%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e271928272015%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd271929272019%_))
                                      (let ((_%e271931272025%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd271929272019%_))))
                                        (if (equal? _%e271931272025%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl271930272022%_))
                                                (let ((_%e271932272029%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl271930272022%_))))
                                                  (let ((_%hd271933272033%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e271932272029%_)))
                                                        (_%tl271934272036%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e271932272029%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd271933272033%_))
                                                        (let ((_%e271935272039%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd271933272033%_))))
                  (let ((_%hd271936272043%_
                         (let ()
                           (declare (not safe))
                           (##car _%e271935272039%_)))
                        (_%tl271937272046%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e271935272039%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd271936272043%_))
                        (if (let ((__tmp275502 |gxc[1]#_g275503_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp275502
                               _%hd271936272043%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl271937272046%_))
                                (let ((_%e271938272049%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl271937272046%_))))
                                  (let ((_%hd271939272053%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e271938272049%_)))
                                        (_%tl271940272056%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e271938272049%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl271940272056%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl271934272036%_))
                                            (let ((_%e271941272059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl271934272036%_))))
                                              (let ((_%hd271942272063%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e271941272059%_)))
                                                    (_%tl271943272066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e271941272059%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd271942272063%_))
                                                    (let ((_%e271944272069%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd271942272063%_))))
                                                      (if (equal? _%e271944272069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl271943272066%_))
                      (let ((_%e271945272073%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl271943272066%_))))
                        (let ((_%hd271946272077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e271945272073%_)))
                              (_%tl271947272080%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e271945272073%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd271946272077%_))
                              (let ((_%e271948272083%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd271946272077%_))))
                                (let ((_%hd271949272087%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e271948272083%_)))
                                      (_%tl271950272090%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e271948272083%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd271949272087%_))
                                      (if (let ((__tmp275504
                                                 |gxc[1]#_g275505_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp275504
                                             _%hd271949272087%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl271950272090%_))
                                              (let ((_%e271951272093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl271950272090%_))))
                                                (let ((_%hd271952272097%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e271951272093%_)))
                                                      (_%tl271953272100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e271951272093%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl271953272100%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl271947272080%_))
                                                          (let ((_%e271954272103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl271947272080%_))))
                    (let ((_%hd271955272107%_
                           (let ()
                             (declare (not safe))
                             (##car _%e271954272103%_)))
                          (_%tl271956272110%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e271954272103%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd271955272107%_))
                          (let ((_%e271957272113%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd271955272107%_))))
                            (if (equal? _%e271957272113%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl271956272110%_))
                                    (let ((_%e271958272117%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl271956272110%_))))
                                      (let ((_%hd271959272121%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e271958272117%_)))
                                            (_%tl271960272124%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e271958272117%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd271959272121%_))
                                            (let ((_%e271961272127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd271959272121%_))))
                                              (let ((_%hd271962272131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e271961272127%_)))
                                                    (_%tl271963272134%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e271961272127%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd271962272131%_))
                                                    (if (let ((__tmp275506
                                                               |gxc[1]#_g275507_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp275506
                                                           _%hd271962272131%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl271963272134%_))
                                                            (let ((_%e271964272137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl271963272134%_))))
                      (let ((_%hd271965272141%_
                             (let ()
                               (declare (not safe))
                               (##car _%e271964272137%_)))
                            (_%tl271966272144%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e271964272137%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl271966272144%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl271960272124%_))
                                (let ((_%e271967272147%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl271960272124%_))))
                                  (let ((_%hd271968272151%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e271967272147%_)))
                                        (_%tl271969272154%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e271967272147%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd271968272151%_))
                                        (let ((_%e271970272157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd271968272151%_))))
                                          (if (equal? _%e271970272157%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl271969272154%_))
                                                  (let ((_%e271971272161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl271969272154%_))))
                                                    (let ((_%hd271972272165%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e271971272161%_)))
                                                          (_%tl271973272168%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e271971272161%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd271972272165%_))
                                                          (let ((_%e271974272171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd271972272165%_))))
                    (let ((_%hd271975272175%_
                           (let ()
                             (declare (not safe))
                             (##car _%e271974272171%_)))
                          (_%tl271976272178%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e271974272171%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd271975272175%_))
                          (if (let ((__tmp275508 |gxc[1]#_g275509_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp275508
                                 _%hd271975272175%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl271976272178%_))
                                  (let ((_%e271977272181%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl271976272178%_))))
                                    (let ((_%hd271978272185%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e271977272181%_)))
                                          (_%tl271979272188%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e271977272181%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl271979272188%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl271973272168%_))
                                              (let ((_%e271980272191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl271973272168%_))))
                                                (let ((_%hd271981272195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e271980272191%_)))
                                                      (_%tl271982272198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e271980272191%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd271981272195%_))
                                                      (let ((_%e271983272201%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd271981272195%_))))
                (if (equal? _%e271983272201%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl271982272198%_))
                        (let ((_%e271984272205%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl271982272198%_))))
                          (let ((_%hd271985272209%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e271984272205%_)))
                                (_%tl271986272212%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e271984272205%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd271985272209%_))
                                (let ((_%e271987272215%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd271985272209%_))))
                                  (let ((_%hd271988272219%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e271987272215%_)))
                                        (_%tl271989272222%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e271987272215%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd271988272219%_))
                                        (if (let ((__tmp275510
                                                   |gxc[1]#_g275511_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp275510
                                               _%hd271988272219%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl271989272222%_))
                                                (let ((_%e271990272225%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl271989272222%_))))
                                                  (let ((_%hd271991272229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e271990272225%_)))
                                                        (_%tl271992272232%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e271990272225%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl271992272232%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl271986272212%_))
                                                            ((lambda (_%g271920272235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g271921272237%_
                              _%g271922272238%_
                              _%g271923272239%_
                              _%g271924272240%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g271921272237%_))
                           (cons _%g271921272237%_
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
                       (cons _%g271923272239%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g271920272235%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd271991272229%_
                     _%hd271978272185%_
                     _%hd271965272141%_
                     _%hd271952272097%_
                     _%hd271939272053%_)
                    (_%g271918271998%_ _%g271919272002%_))
                (_%g271918271998%_ _%g271919272002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g271918271998%_
                                                 _%g271919272002%_))
                                            (_%g271918271998%_
                                             _%g271919272002%_))
                                        (_%g271918271998%_
                                         _%g271919272002%_))))
                                (_%g271918271998%_ _%g271919272002%_))))
                        (_%g271918271998%_ _%g271919272002%_))
                    (_%g271918271998%_ _%g271919272002%_)))
              (_%g271918271998%_ _%g271919272002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g271918271998%_
                                               _%g271919272002%_))
                                          (_%g271918271998%_
                                           _%g271919272002%_))))
                                  (_%g271918271998%_ _%g271919272002%_))
                              (_%g271918271998%_ _%g271919272002%_))
                          (_%g271918271998%_ _%g271919272002%_))))
                  (_%g271918271998%_ _%g271919272002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g271918271998%_
                                                   _%g271919272002%_))
                                              (_%g271918271998%_
                                               _%g271919272002%_)))
                                        (_%g271918271998%_
                                         _%g271919272002%_))))
                                (_%g271918271998%_ _%g271919272002%_))
                            (_%g271918271998%_ _%g271919272002%_))))
                    (_%g271918271998%_ _%g271919272002%_))
                (_%g271918271998%_ _%g271919272002%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g271918271998%_
                                                     _%g271919272002%_))))
                                            (_%g271918271998%_
                                             _%g271919272002%_))))
                                    (_%g271918271998%_ _%g271919272002%_))
                                (_%g271918271998%_ _%g271919272002%_)))
                          (_%g271918271998%_ _%g271919272002%_))))
                  (_%g271918271998%_ _%g271919272002%_))
              (_%g271918271998%_ _%g271919272002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g271918271998%_
                                               _%g271919272002%_))
                                          (_%g271918271998%_
                                           _%g271919272002%_))
                                      (_%g271918271998%_ _%g271919272002%_))))
                              (_%g271918271998%_ _%g271919272002%_))))
                      (_%g271918271998%_ _%g271919272002%_))
                  (_%g271918271998%_ _%g271919272002%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g271918271998%_
                                                     _%g271919272002%_))))
                                            (_%g271918271998%_
                                             _%g271919272002%_))
                                        (_%g271918271998%_
                                         _%g271919272002%_))))
                                (_%g271918271998%_ _%g271919272002%_))
                            (_%g271918271998%_ _%g271919272002%_))
                        (_%g271918271998%_ _%g271919272002%_))))
                (_%g271918271998%_ _%g271919272002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g271918271998%_
                                                 _%g271919272002%_))
                                            (_%g271918271998%_
                                             _%g271919272002%_)))
                                      (_%g271918271998%_ _%g271919272002%_))))
                              (_%g271918271998%_ _%g271919272002%_))))
                      (_%g271918271998%_ _%g271919272002%_)))))
          (_%g271917272300%_ _%sig271915%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx273072%_)
        (let* ((_%g273075273093%_
                (lambda (_%g273076273089%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g273076273089%_))))
               (_%g273074273148%_
                (lambda (_%g273076273097%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g273076273097%_))
                      (let ((_%e273079273100%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g273076273097%_))))
                        (let ((_%hd273080273104%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e273079273100%_)))
                              (_%tl273081273107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e273079273100%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl273081273107%_))
                              (let ((_%e273082273110%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl273081273107%_))))
                                (let ((_%hd273083273114%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e273082273110%_)))
                                      (_%tl273084273117%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e273082273110%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl273084273117%_))
                                      (let ((_%e273085273120%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl273084273117%_))))
                                        (let ((_%hd273086273124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e273085273120%_)))
                                              (_%tl273087273127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e273085273120%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl273087273127%_))
                                              ((lambda (_%g273077273130%_
                                                        _%g273078273132%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g273078273132%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g273077273130%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx273072%_
                                                        _%g273078273132%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx273072%_
                                                        _%g273077273130%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g273078273132%_
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
                                                   (cons _%g273077273130%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g273075273093%_
                                                      _%g273076273097%_)))
                                               _%hd273086273124%_
                                               _%hd273083273114%_)
                                              (_%g273075273093%_
                                               _%g273076273097%_))))
                                      (_%g273075273093%_ _%g273076273097%_))))
                              (_%g273075273093%_ _%g273076273097%_))))
                      (_%g273075273093%_ _%g273076273097%_)))))
          (_%g273074273148%_ _%stx273072%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx273152%_)
        (let* ((_%g273155273179%_
                (lambda (_%g273156273175%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g273156273175%_))))
               (_%g273154273460%_
                (lambda (_%g273156273183%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g273156273183%_))
                      (let ((_%e273159273186%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g273156273183%_))))
                        (let ((_%hd273160273190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e273159273186%_)))
                              (_%tl273161273193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e273159273186%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl273161273193%_))
                              (let ((_%e273162273196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl273161273193%_))))
                                (let ((_%hd273163273200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e273162273196%_)))
                                      (_%tl273164273203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e273162273196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl273164273203%_))
                                      (let ((_g275512_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl273164273203%_
                                                '0))))
                                        (begin
                                          (let ((_g275513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g275512_)
                                                       (##values-length
                                                        _g275512_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g275513_ 2)))
                                                (error "Context expects 2 values"
                                                       _g275513_)))
                                          (let ((_%target273165273206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g275512_ 0)))
                                                (_%tl273167273209%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g275512_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl273167273209%_))
                                                (letrec ((_%loop273168273212%_
                                                          (lambda (_%hd273166273216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature273172273219%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd273166273216%_))
                        (let ((_%e273169273221%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd273166273216%_))))
                          (let ((_%lp-hd273170273225%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e273169273221%_)))
                                (_%lp-tl273171273228%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e273169273221%_))))
                            (_%loop273168273212%_
                             _%lp-tl273171273228%_
                             (cons _%lp-hd273170273225%_
                                   _%signature273172273219%_))))
                        (let ((_%signature273173273231%_
                               (reverse _%signature273172273219%_)))
                          ((lambda (_%g273157273234%_ _%g273158273236%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g273158273236%_))
                                 (let* ((_%g273254273269%_
                                         (lambda (_%g273255273265%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g273255273265%_))))
                                        (_%g273253273448%_
                                         (lambda (_%g273255273273%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g273255273273%_))
                                               (let ((_%e273258273276%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g273255273273%_))))
                                                 (let ((_%hd273259273280%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e273258273276%_)))
                                                       (_%tl273260273283%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e273258273276%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl273260273283%_))
                                                       (let ((_%e273261273286%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl273260273283%_))))
                 (let ((_%hd273262273290%_
                        (let ()
                          (declare (not safe))
                          (##car _%e273261273286%_)))
                       (_%tl273263273293%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e273261273286%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl273263273293%_))
                       ((lambda (_%g273256273296%_ _%g273257273298%_)
                          (let* ((_%g273314273322%_
                                  (lambda (_%g273315273318%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g273315273318%_))))
                                 (_%g273313273444%_
                                  (lambda (_%g273315273326%_)
                                    ((lambda (_%g273316273329%_)
                                       (let* ((_%unchecked273342%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g273256273296%_))
                                              (_%g273345273353%_
                                               (lambda (_%g273346273349%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g273346273349%_))))
                                              (_%g273344273376%_
                                               (lambda (_%g273346273357%_)
                                                 ((lambda (_%g273347273360%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g273316273329%_
                                                                (cons _%g273347273360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g273346273357%_))))
                                         (_%g273344273376%_
                                          (if _%unchecked273342%_
                                              (let* ((_%g273380273395%_
                                                      (lambda (_%g273381273391%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g273381273391%_))))
                                                     (_%g273379273440%_
                                                      (lambda (_%g273381273399%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g273381273399%_))
                                                            (let ((_%e273384273402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g273381273399%_))))
                      (let ((_%hd273385273406%_
                             (let ()
                               (declare (not safe))
                               (##car _%e273384273402%_)))
                            (_%tl273386273409%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e273384273402%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl273386273409%_))
                            (let ((_%e273387273412%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl273386273409%_))))
                              (let ((_%hd273388273416%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e273387273412%_)))
                                    (_%tl273389273419%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e273387273412%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl273389273419%_))
                                    ((lambda (_%g273382273422%_
                                              _%g273383273424%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g273383273424%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g273257273298%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g273382273422%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd273388273416%_
                                     _%hd273385273406%_)
                                    (_%g273380273395%_ _%g273381273399%_))))
                            (_%g273380273395%_ _%g273381273399%_))))
                    (_%g273380273395%_ _%g273381273399%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g273379273440%_
                                                 _%unchecked273342%_))
                                              '(begin)))))
                                     _%g273315273326%_))))
                            (_%g273313273444%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g273158273236%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g273257273298%_ '()))
                   (cons '#f (cons 'signature: (cons _%g273256273296%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd273262273290%_
                        _%hd273259273280%_)
                       (_%g273254273269%_ _%g273255273273%_))))
               (_%g273254273269%_ _%g273255273273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g273254273269%_
                                                _%g273255273273%_)))))
                                   (_%g273253273448%_
                                    (|gxc[1]#parse-signature|
                                     _%stx273152%_
                                     _%g273158273236%_
                                     (let ((__tmp275514
                                            (lambda (_%g273451273454%_
                                                     _%g273452273457%_)
                                              (cons _%g273451273454%_
                                                    _%g273452273457%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp275514
                                        '()
                                        _%g273157273234%_)))))
                                 (_%g273155273179%_ _%g273156273183%_)))
                           _%signature273173273231%_
                           _%hd273163273200%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop273168273212%_
                                                   _%target273165273206%_
                                                   '()))
                                                (_%g273155273179%_
                                                 _%g273156273183%_)))))
                                      (_%g273155273179%_ _%g273156273183%_))))
                              (_%g273155273179%_ _%g273156273183%_))))
                      (_%g273155273179%_ _%g273156273183%_)))))
          (_%g273154273460%_ _%stx273152%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx273465%_)
        (let* ((_%g273468273492%_
                (lambda (_%g273469273488%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g273469273488%_))))
               (_%g273467274367%_
                (lambda (_%g273469273496%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g273469273496%_))
                      (let ((_%e273472273499%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g273469273496%_))))
                        (let ((_%hd273473273503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e273472273499%_)))
                              (_%tl273474273506%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e273472273499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl273474273506%_))
                              (let ((_%e273475273509%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl273474273506%_))))
                                (let ((_%hd273476273513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e273475273509%_)))
                                      (_%tl273477273516%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e273475273509%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl273477273516%_))
                                      (let ((_g275515_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl273477273516%_
                                                '0))))
                                        (begin
                                          (let ((_g275516_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g275515_)
                                                       (##values-length
                                                        _g275515_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g275516_ 2)))
                                                (error "Context expects 2 values"
                                                       _g275516_)))
                                          (let ((_%target273478273519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g275515_ 0)))
                                                (_%tl273480273522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g275515_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl273480273522%_))
                                                (letrec ((_%loop273481273525%_
                                                          (lambda (_%hd273479273529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature273485273532%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd273479273529%_))
                        (let ((_%e273482273534%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd273479273529%_))))
                          (let ((_%lp-hd273483273538%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e273482273534%_)))
                                (_%lp-tl273484273541%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e273482273534%_))))
                            (_%loop273481273525%_
                             _%lp-tl273484273541%_
                             (cons _%lp-hd273483273538%_
                                   _%case-signature273485273532%_))))
                        (let ((_%case-signature273486273544%_
                               (reverse _%case-signature273485273532%_)))
                          ((lambda (_%g273470273547%_ _%g273471273549%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g273471273549%_))
                                 (let* ((_%signatures273580%_
                                         (map (lambda (_%g273566273568%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx273465%_
                                                 _%g273471273549%_
                                                 _%g273566273568%_))
                                              (let ((__tmp275517
                                                     (lambda (_%g273571273574%_
                                                              _%g273572273577%_)
                                                       (cons _%g273571273574%_
                                                             _%g273572273577%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp275517
                                                 '()
                                                 _%g273470273547%_))))
                                        (_%g273583273609%_
                                         (lambda (_%g273584273605%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g273584273605%_))))
                                        (_%g273582274363%_
                                         (lambda (_%g273584273613%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g273584273613%_))
                                               (let ((_g275518_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g273584273613%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g275519_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g275518_)
                        (##values-length _g275518_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g275519_ 2)))
                 (error "Context expects 2 values" _g275519_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target273587273616%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g275518_
                                                             0)))
                                                         (_%tl273589273619%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g275518_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl273589273619%_))
                                                         (letrec ((_%loop273590273622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd273588273626%_
                                    _%sig273594273629%_
                                    _%arity273595273630%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd273588273626%_))
                                 (let ((_%e273591273632%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd273588273626%_))))
                                   (let ((_%lp-hd273592273636%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e273591273632%_)))
                                         (_%lp-tl273593273639%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e273591273632%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd273592273636%_))
                                         (let ((_%e273598273642%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd273592273636%_))))
                                           (let ((_%hd273599273646%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e273598273642%_)))
                                                 (_%tl273600273649%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e273598273642%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl273600273649%_))
                                                 (let ((_%e273601273652%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl273600273649%_))))
                                                   (let ((_%hd273602273656%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e273601273652%_)))
                                                         (_%tl273603273659%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e273601273652%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl273603273659%_))
                                                         (_%loop273590273622%_
                                                          _%lp-tl273593273639%_
                                                          (cons _%hd273602273656%_
                                                                _%sig273594273629%_)
                                                          (cons _%hd273599273646%_
                                                                _%arity273595273630%_))
                                                         (_%g273583273609%_
                                                          _%g273584273613%_))))
                                                 (_%g273583273609%_
                                                  _%g273584273613%_))))
                                         (_%g273583273609%_
                                          _%g273584273613%_))))
                                 (let ((_%sig273596273662%_
                                        (reverse _%sig273594273629%_))
                                       (_%arity273597273664%_
                                        (reverse _%arity273595273630%_)))
                                   ((lambda (_%g273585273666%_
                                             _%g273586273668%_)
                                      (let* ((_%g273685273693%_
                                              (lambda (_%g273686273689%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g273686273689%_))))
                                             (_%g273684274348%_
                                              (lambda (_%g273686273697%_)
                                                ((lambda (_%g273687273700%_)
                                                   (let* ((_%g273713273721%_
                                                           (lambda (_%g273714273717%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g273714273717%_))))
                  (_%g273712273743%_
                   (lambda (_%g273714273725%_)
                     ((lambda (_%g273715273728%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g273687273700%_
                                    (cons _%g273715273728%_ '()))))
                      _%g273714273725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g273712273743%_
                                                      (let ((_g275520_
                                                             (let _%loop273747%_ ((_%rest273750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures273580%_)
                                          (_%unchecked-proc273752%_ '#f)
                                          (_%unchecked-clauses273753%_ '()))
                       (let* ((_%rest273754273762%_ _%rest273750%_)
                              (_%else273756273774%_
                               (lambda ()
                                 (values _%unchecked-proc273752%_
                                         (reverse!
                                          _%unchecked-clauses273753%_))))
                              (_%K273758274215%_
                               (lambda (_%rest273778%_ _%hd273780%_)
                                 (let* ((_%g273782273869%_
                                         (lambda (_%g273783273865%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g273783273865%_))))
                                        (_%g273781274211%_
                                         (lambda (_%g273783273873%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g273783273873%_))
                                               (let ((_%e273790273876%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g273783273873%_))))
                                                 (let ((_%hd273791273880%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e273790273876%_)))
                                                       (_%tl273792273883%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e273790273876%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl273792273883%_))
                                                       (let ((_%e273793273886%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl273792273883%_))))
                 (let ((_%hd273794273890%_
                        (let ()
                          (declare (not safe))
                          (##car _%e273793273886%_)))
                       (_%tl273795273893%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e273793273886%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd273794273890%_))
                       (let ((_%e273796273896%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd273794273890%_))))
                         (let ((_%hd273797273900%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e273796273896%_)))
                               (_%tl273798273903%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e273796273896%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl273798273903%_))
                               (let ((_%e273799273906%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl273798273903%_))))
                                 (let ((_%hd273800273910%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e273799273906%_)))
                                       (_%tl273801273913%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e273799273906%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd273800273910%_))
                                       (let ((_%e273802273916%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd273800273910%_))))
                                         (if (equal? _%e273802273916%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl273801273913%_))
                                                 (let ((_%e273803273920%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl273801273913%_))))
                                                   (let ((_%hd273804273924%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e273803273920%_)))
                                                         (_%tl273805273927%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e273803273920%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd273804273924%_))
                                                         (let ((_%e273806273930%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd273804273924%_))))
                   (let ((_%hd273807273934%_
                          (let ()
                            (declare (not safe))
                            (##car _%e273806273930%_)))
                         (_%tl273808273937%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e273806273930%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd273807273934%_))
                         (if (let ((__tmp275522 |gxc[1]#_g275523_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp275522
                                _%hd273807273934%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl273808273937%_))
                                 (let ((_%e273809273940%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl273808273937%_))))
                                   (let ((_%hd273810273944%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e273809273940%_)))
                                         (_%tl273811273947%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e273809273940%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl273811273947%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl273805273927%_))
                                             (let ((_%e273812273950%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl273805273927%_))))
                                               (let ((_%hd273813273954%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e273812273950%_)))
                                                     (_%tl273814273957%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e273812273950%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd273813273954%_))
                                                     (let ((_%e273815273960%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd273813273954%_))))
                                                       (if (equal? _%e273815273960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl273814273957%_))
                       (let ((_%e273816273964%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl273814273957%_))))
                         (let ((_%hd273817273968%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e273816273964%_)))
                               (_%tl273818273971%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e273816273964%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd273817273968%_))
                               (let ((_%e273819273974%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd273817273968%_))))
                                 (let ((_%hd273820273978%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e273819273974%_)))
                                       (_%tl273821273981%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e273819273974%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd273820273978%_))
                                       (if (let ((__tmp275524
                                                  |gxc[1]#_g275525_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp275524
                                              _%hd273820273978%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl273821273981%_))
                                               (let ((_%e273822273984%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl273821273981%_))))
                                                 (let ((_%hd273823273988%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e273822273984%_)))
                                                       (_%tl273824273991%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e273822273984%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl273824273991%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl273818273971%_))
                                                           (let ((_%e273825273994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl273818273971%_))))
                     (let ((_%hd273826273998%_
                            (let ()
                              (declare (not safe))
                              (##car _%e273825273994%_)))
                           (_%tl273827274001%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e273825273994%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd273826273998%_))
                           (let ((_%e273828274004%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd273826273998%_))))
                             (if (equal? _%e273828274004%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl273827274001%_))
                                     (let ((_%e273829274008%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl273827274001%_))))
                                       (let ((_%hd273830274012%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e273829274008%_)))
                                             (_%tl273831274015%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e273829274008%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd273830274012%_))
                                             (let ((_%e273832274018%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd273830274012%_))))
                                               (let ((_%hd273833274022%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e273832274018%_)))
                                                     (_%tl273834274025%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e273832274018%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd273833274022%_))
                                                     (if (let ((__tmp275526
                                                                |gxc[1]#_g275527_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp275526
                                                            _%hd273833274022%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl273834274025%_))
                     (let ((_%e273835274028%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl273834274025%_))))
                       (let ((_%hd273836274032%_
                              (let ()
                                (declare (not safe))
                                (##car _%e273835274028%_)))
                             (_%tl273837274035%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e273835274028%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl273837274035%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl273831274015%_))
                                 (let ((_%e273838274038%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl273831274015%_))))
                                   (let ((_%hd273839274042%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e273838274038%_)))
                                         (_%tl273840274045%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e273838274038%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd273839274042%_))
                                         (let ((_%e273841274048%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd273839274042%_))))
                                           (if (equal? _%e273841274048%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl273840274045%_))
                                                   (let ((_%e273842274052%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl273840274045%_))))
                                                     (let ((_%hd273843274056%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e273842274052%_)))
                                                           (_%tl273844274059%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e273842274052%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd273843274056%_))
                                                           (let ((_%e273845274062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd273843274056%_))))
                     (let ((_%hd273846274066%_
                            (let ()
                              (declare (not safe))
                              (##car _%e273845274062%_)))
                           (_%tl273847274069%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e273845274062%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd273846274066%_))
                           (if (let ((__tmp275528 |gxc[1]#_g275529_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp275528
                                  _%hd273846274066%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl273847274069%_))
                                   (let ((_%e273848274072%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl273847274069%_))))
                                     (let ((_%hd273849274076%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e273848274072%_)))
                                           (_%tl273850274079%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e273848274072%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl273850274079%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl273844274059%_))
                                               (let ((_%e273851274082%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl273844274059%_))))
                                                 (let ((_%hd273852274086%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e273851274082%_)))
                                                       (_%tl273853274089%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e273851274082%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd273852274086%_))
                                                       (let ((_%e273854274092%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd273852274086%_))))
                 (if (equal? _%e273854274092%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl273853274089%_))
                         (let ((_%e273855274096%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl273853274089%_))))
                           (let ((_%hd273856274100%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e273855274096%_)))
                                 (_%tl273857274103%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e273855274096%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd273856274100%_))
                                 (let ((_%e273858274106%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd273856274100%_))))
                                   (let ((_%hd273859274110%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e273858274106%_)))
                                         (_%tl273860274113%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e273858274106%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd273859274110%_))
                                         (if (let ((__tmp275530
                                                    |gxc[1]#_g275531_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp275530
                                                _%hd273859274110%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl273860274113%_))
                                                 (let ((_%e273861274116%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl273860274113%_))))
                                                   (let ((_%hd273862274120%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e273861274116%_)))
                                                         (_%tl273863274123%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e273861274116%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl273863274123%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl273857274103%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl273795273893%_))
                         ((lambda (_%g273784274126%_
                                   _%g273785274128%_
                                   _%g273786274129%_
                                   _%g273787274130%_
                                   _%g273788274131%_
                                   _%g273789274132%_)
                            (let ((_%clause274203%_
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
                                                     (cons _%g273789274132%_
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
                                                 (cons _%g273787274130%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g273784274126%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked274205%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g273785274128%_))))
                              (_%loop273747%_
                               _%rest273778%_
                               (let ((_%$e274207%_ _%unchecked274205%_))
                                 (if _%$e274207%_
                                     _%$e274207%_
                                     _%unchecked-proc273752%_))
                               (cons _%clause274203%_
                                     _%unchecked-clauses273753%_))))
                          _%hd273862274120%_
                          _%hd273849274076%_
                          _%hd273836274032%_
                          _%hd273823273988%_
                          _%hd273810273944%_
                          _%hd273791273880%_)
                         (_%g273782273869%_ _%g273783273873%_))
                     (_%g273782273869%_ _%g273783273873%_))
                 (_%g273782273869%_ _%g273783273873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g273782273869%_
                                                  _%g273783273873%_))
                                             (_%g273782273869%_
                                              _%g273783273873%_))
                                         (_%g273782273869%_
                                          _%g273783273873%_))))
                                 (_%g273782273869%_ _%g273783273873%_))))
                         (_%g273782273869%_ _%g273783273873%_))
                     (_%g273782273869%_ _%g273783273873%_)))
               (_%g273782273869%_ _%g273783273873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g273782273869%_
                                                _%g273783273873%_))
                                           (_%g273782273869%_
                                            _%g273783273873%_))))
                                   (_%g273782273869%_ _%g273783273873%_))
                               (_%g273782273869%_ _%g273783273873%_))
                           (_%g273782273869%_ _%g273783273873%_))))
                   (_%g273782273869%_ _%g273783273873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g273782273869%_
                                                    _%g273783273873%_))
                                               (_%g273782273869%_
                                                _%g273783273873%_)))
                                         (_%g273782273869%_
                                          _%g273783273873%_))))
                                 (_%g273782273869%_ _%g273783273873%_))
                             (_%g273782273869%_ _%g273783273873%_))))
                     (_%g273782273869%_ _%g273783273873%_))
                 (_%g273782273869%_ _%g273783273873%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g273782273869%_
                                                      _%g273783273873%_))))
                                             (_%g273782273869%_
                                              _%g273783273873%_))))
                                     (_%g273782273869%_ _%g273783273873%_))
                                 (_%g273782273869%_ _%g273783273873%_)))
                           (_%g273782273869%_ _%g273783273873%_))))
                   (_%g273782273869%_ _%g273783273873%_))
               (_%g273782273869%_ _%g273783273873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g273782273869%_
                                                _%g273783273873%_))
                                           (_%g273782273869%_
                                            _%g273783273873%_))
                                       (_%g273782273869%_ _%g273783273873%_))))
                               (_%g273782273869%_ _%g273783273873%_))))
                       (_%g273782273869%_ _%g273783273873%_))
                   (_%g273782273869%_ _%g273783273873%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g273782273869%_
                                                      _%g273783273873%_))))
                                             (_%g273782273869%_
                                              _%g273783273873%_))
                                         (_%g273782273869%_
                                          _%g273783273873%_))))
                                 (_%g273782273869%_ _%g273783273873%_))
                             (_%g273782273869%_ _%g273783273873%_))
                         (_%g273782273869%_ _%g273783273873%_))))
                 (_%g273782273869%_ _%g273783273873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g273782273869%_
                                                  _%g273783273873%_))
                                             (_%g273782273869%_
                                              _%g273783273873%_)))
                                       (_%g273782273869%_ _%g273783273873%_))))
                               (_%g273782273869%_ _%g273783273873%_))))
                       (_%g273782273869%_ _%g273783273873%_))))
               (_%g273782273869%_ _%g273783273873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g273782273869%_
                                                _%g273783273873%_)))))
                                   (_%g273781274211%_ _%hd273780%_)))))
                         (if (pair? _%rest273754273762%_)
                             (let ((_%hd273759274219%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest273754273762%_)))
                                   (_%tl273760274222%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest273754273762%_))))
                               (let* ((_%hd274225%_ _%hd273759274219%_)
                                      (_%rest274228%_ _%tl273760274222%_))
                                 (_%K273758274215%_
                                  _%rest274228%_
                                  _%hd274225%_)))
                             (_%else273756273774%_))))))
                (begin
                  (let ((_g275521_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g275520_)
                               (##values-length _g275520_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g275521_ 2)))
                        (error "Context expects 2 values" _g275521_)))
                  (let ((_%unchecked-proc274231%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g275520_ 0)))
                        (_%unchecked-clauses274233%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g275520_ 1))))
                    (if _%unchecked-proc274231%_
                        (let* ((_%g274235274259%_
                                (lambda (_%g274236274255%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g274236274255%_))))
                               (_%g274234274344%_
                                (lambda (_%g274236274263%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g274236274263%_))
                                      (let ((_%e274239274266%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g274236274263%_))))
                                        (let ((_%hd274240274270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e274239274266%_)))
                                              (_%tl274241274273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e274239274266%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl274241274273%_))
                                              (let ((_%e274242274276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl274241274273%_))))
                                                (let ((_%hd274243274280%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e274242274276%_)))
                                                      (_%tl274244274283%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e274242274276%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd274243274280%_))
                                                      (let ((_g275532_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd274243274280%_ '0))))
                (begin
                  (let ((_g275533_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g275532_)
                               (##values-length _g275532_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g275533_ 2)))
                        (error "Context expects 2 values" _g275533_)))
                  (let ((_%target274245274286%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g275532_ 0)))
                        (_%tl274247274289%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g275532_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl274247274289%_))
                        (letrec ((_%loop274248274292%_
                                  (lambda (_%hd274246274296%_
                                           _%clause274252274299%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd274246274296%_))
                                        (let ((_%e274249274301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd274246274296%_))))
                                          (let ((_%lp-hd274250274305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e274249274301%_)))
                                                (_%lp-tl274251274308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e274249274301%_))))
                                            (_%loop274248274292%_
                                             _%lp-tl274251274308%_
                                             (cons _%lp-hd274250274305%_
                                                   _%clause274252274299%_))))
                                        (let ((_%clause274253274311%_
                                               (reverse _%clause274252274299%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl274244274283%_))
                                              ((lambda (_%g274237274314%_
                                                        _%g274238274316%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g274238274316%_
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
                                             (let ((__tmp275534
                                                    (lambda (_%g274335274338%_
                                                             _%g274336274341%_)
                                                      (cons _%g274335274338%_
                                                            _%g274336274341%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp275534
                                                '()
                                                _%g274237274314%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause274253274311%_
                                               _%hd274240274270%_)
                                              (_%g274235274259%_
                                               _%g274236274263%_)))))))
                          (_%loop274248274292%_ _%target274245274286%_ '()))
                        (_%g274235274259%_ _%g274236274263%_)))))
              (_%g274235274259%_ _%g274236274263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g274235274259%_
                                               _%g274236274263%_))))
                                      (_%g274235274259%_ _%g274236274263%_)))))
                          (_%g274234274344%_
                           (list _%unchecked-proc274231%_
                                 _%unchecked-clauses274233%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g273686273697%_))))
                                        (_%g273684274348%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g273471273549%_
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
                                          _%g273585273666%_
                                          _%g273586273668%_))
                                       (let ((__tmp275535
                                              (lambda (_%g274351274355%_
                                                       _%g274352274358%_
                                                       _%g274353274360%_)
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
                                (cons _%g274352274358%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g274351274355%_ '())))))
              _%g274353274360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp275535
                                          '()
                                          _%g273585273666%_
                                          _%g273586273668%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig273596273662%_
                                    _%arity273597273664%_))))))
                   (_%loop273590273622%_ _%target273587273616%_ '() '()))
                 (_%g273583273609%_ _%g273584273613%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g273583273609%_
                                                _%g273584273613%_)))))
                                   (_%g273582274363%_ _%signatures273580%_))
                                 (_%g273468273492%_ _%g273469273496%_)))
                           _%case-signature273486273544%_
                           _%hd273476273513%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop273481273525%_
                                                   _%target273478273519%_
                                                   '()))
                                                (_%g273468273492%_
                                                 _%g273469273496%_)))))
                                      (_%g273468273492%_ _%g273469273496%_))))
                              (_%g273468273492%_ _%g273469273496%_))))
                      (_%g273468273492%_ _%g273469273496%_)))))
          (_%g273467274367%_ _%stx273465%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx274375%_)
        (let* ((_%__stx275355275356%_ _%$stx274375%_)
               (_%g274381274441%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx275355275356%_)))))
          (let ((_%__kont275358275359%_
                 (lambda (_%g274383274663%_ _%g274384274665%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g274384274665%_ '()))
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
                                                       (cons _%g274384274665%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g274383274663%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont275360275361%_
                 (lambda (_%g274398274588%_
                          _%g274399274590%_
                          _%g274400274591%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g274400274591%_ '()))
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
                                                       (cons _%g274400274591%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g274399274590%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g274398274588%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont275362275363%_
                 (lambda (_%g274417274502%_
                          _%g274418274504%_
                          _%g274419274505%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g274419274505%_ '()))
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
                                                       (cons _%g274419274505%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g274418274504%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g274417274502%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx275355275356%_))
                (let ((_%e274385274619%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx275355275356%_))))
                  (let ((_%tl274387274626%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e274385274619%_)))
                        (_%hd274386274623%_
                         (let ()
                           (declare (not safe))
                           (##car _%e274385274619%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl274387274626%_))
                        (let ((_%e274388274629%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl274387274626%_))))
                          (let ((_%tl274390274636%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e274388274629%_)))
                                (_%hd274389274633%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e274388274629%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd274389274633%_))
                                (let ((_%e274391274639%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd274389274633%_))))
                                  (if (equal? _%e274391274639%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl274390274636%_))
                                          (let ((_%e274392274643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl274390274636%_))))
                                            (let ((_%tl274394274650%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e274392274643%_)))
                                                  (_%hd274393274647%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e274392274643%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl274394274650%_))
                                                  (let ((_%e274395274653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl274394274650%_))))
                                                    (let ((_%tl274397274660%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e274395274653%_)))
                                                          (_%hd274396274657%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e274395274653%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl274397274660%_))
                                                          (_%__kont275358275359%_
                                                           _%hd274396274657%_
                                                           _%hd274393274647%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g274381274441%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g274381274441%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g274381274441%_)))
                                      (if (equal? _%e274391274639%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl274390274636%_))
                                              (let ((_%e274408274558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl274390274636%_))))
                                                (let ((_%tl274410274565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e274408274558%_)))
                                                      (_%hd274409274562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e274408274558%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl274410274565%_))
                                                      (let ((_%e274411274568%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl274410274565%_))))
                (let ((_%tl274413274575%_
                       (let () (declare (not safe)) (##cdr _%e274411274568%_)))
                      (_%hd274412274572%_
                       (let ()
                         (declare (not safe))
                         (##car _%e274411274568%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl274413274575%_))
                      (let ((_%e274414274578%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl274413274575%_))))
                        (let ((_%tl274416274585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e274414274578%_)))
                              (_%hd274415274582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e274414274578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl274416274585%_))
                              (_%__kont275360275361%_
                               _%hd274415274582%_
                               _%hd274412274572%_
                               _%hd274409274562%_)
                              (let ()
                                (declare (not safe))
                                (_%g274381274441%_)))))
                      (let () (declare (not safe)) (_%g274381274441%_)))))
              (let () (declare (not safe)) (_%g274381274441%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g274381274441%_)))
                                          (if (equal? _%e274391274639%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl274390274636%_))
                                                  (let ((_%e274427274472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl274390274636%_))))
                                                    (let ((_%tl274429274479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e274427274472%_)))
                                                          (_%hd274428274476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e274427274472%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl274429274479%_))
                                                          (let ((_%e274430274482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl274429274479%_))))
                    (let ((_%tl274432274489%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e274430274482%_)))
                          (_%hd274431274486%_
                           (let ()
                             (declare (not safe))
                             (##car _%e274430274482%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl274432274489%_))
                          (let ((_%e274433274492%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl274432274489%_))))
                            (let ((_%tl274435274499%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e274433274492%_)))
                                  (_%hd274434274496%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e274433274492%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl274435274499%_))
                                  (_%__kont275362275363%_
                                   _%hd274434274496%_
                                   _%hd274431274486%_
                                   _%hd274428274476%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g274381274441%_)))))
                          (let () (declare (not safe)) (_%g274381274441%_)))))
                  (let () (declare (not safe)) (_%g274381274441%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g274381274441%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g274381274441%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g274381274441%_)))))
                        (let () (declare (not safe)) (_%g274381274441%_)))))
                (let () (declare (not safe)) (_%g274381274441%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx274687%_)
        (let* ((_%g274691274711%_
                (lambda (_%g274692274707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g274692274707%_))))
               (_%g274690274780%_
                (lambda (_%g274692274715%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g274692274715%_))
                      (let ((_%e274694274718%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g274692274715%_))))
                        (let ((_%hd274695274722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e274694274718%_)))
                              (_%tl274696274725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e274694274718%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl274696274725%_))
                              (let ((_g275536_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl274696274725%_
                                        '0))))
                                (begin
                                  (let ((_g275537_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g275536_)
                                               (##values-length _g275536_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g275537_ 2)))
                                        (error "Context expects 2 values"
                                               _g275537_)))
                                  (let ((_%target274697274728%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g275536_ 0)))
                                        (_%tl274699274731%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g275536_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl274699274731%_))
                                        (letrec ((_%loop274700274734%_
                                                  (lambda (_%hd274698274738%_
                                                           _%decl274704274741%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd274698274738%_))
                                                        (let ((_%e274701274743%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd274698274738%_))))
                  (let ((_%lp-hd274702274747%_
                         (let ()
                           (declare (not safe))
                           (##car _%e274701274743%_)))
                        (_%lp-tl274703274750%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e274701274743%_))))
                    (_%loop274700274734%_
                     _%lp-tl274703274750%_
                     (cons _%lp-hd274702274747%_ _%decl274704274741%_))))
                (let ((_%decl274705274753%_ (reverse _%decl274704274741%_)))
                  ((lambda (_%g274693274756%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp275538
                                  (lambda (_%g274771274774%_ _%g274772274777%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g274771274774%_)
                                          _%g274772274777%_))))
                             (declare (not safe))
                             (foldr__0 __tmp275538 '() _%g274693274756%_))))
                   _%decl274705274753%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop274700274734%_
                                           _%target274697274728%_
                                           '()))
                                        (_%g274691274711%_
                                         _%g274692274715%_)))))
                              (_%g274691274711%_ _%g274692274715%_))))
                      (_%g274691274711%_ _%g274692274715%_)))))
          (_%g274690274780%_ _%$stx274687%_))))))
