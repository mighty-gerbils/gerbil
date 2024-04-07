(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202745_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202759_|
    (##structure
     gx#syntax-quote::t
     'quote
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
  (define |gxc[1]#_g202778_|
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
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx196301%_)
        (let* ((_%g196305196323%_
                (lambda (_%g196306196319%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196306196319%_))))
               (_%g196304196378%_
                (lambda (_%g196306196327%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196306196327%_))
                      (let ((_%e196311196330%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196306196327%_))))
                        (let ((_%hd196310196334%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196311196330%_)))
                              (_%tl196309196337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196311196330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196309196337%_))
                              (let ((_%e196314196340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196309196337%_))))
                                (let ((_%hd196313196344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196314196340%_)))
                                      (_%tl196312196347%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196314196340%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196312196347%_))
                                      (let ((_%e196317196350%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196312196347%_))))
                                        (let ((_%hd196316196354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196317196350%_)))
                                              (_%tl196315196357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196317196350%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196315196357%_))
                                              ((lambda (_%L196360%_
                                                        _%L196362%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196362%_))
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
                               (cons _%L196362%_ '()))
                         (cons _%L196360%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196305196323%_
                                                      _%g196306196327%_)))
                                               _%hd196316196354%_
                                               _%hd196313196344%_)
                                              (_%g196305196323%_
                                               _%g196306196327%_))))
                                      (_%g196305196323%_ _%g196306196327%_))))
                              (_%g196305196323%_ _%g196306196327%_))))
                      (_%g196305196323%_ _%g196306196327%_)))))
          (_%g196304196378%_ _%$stx196301%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx196382%_)
        (let* ((_%g196386196404%_
                (lambda (_%g196387196400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196387196400%_))))
               (_%g196385196459%_
                (lambda (_%g196387196408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196387196408%_))
                      (let ((_%e196392196411%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196387196408%_))))
                        (let ((_%hd196391196415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196392196411%_)))
                              (_%tl196390196418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196392196411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196390196418%_))
                              (let ((_%e196395196421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196390196418%_))))
                                (let ((_%hd196394196425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196395196421%_)))
                                      (_%tl196393196428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196395196421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196393196428%_))
                                      (let ((_%e196398196431%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196393196428%_))))
                                        (let ((_%hd196397196435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196398196431%_)))
                                              (_%tl196396196438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196398196431%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196396196438%_))
                                              ((lambda (_%L196441%_
                                                        _%L196443%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196443%_))
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
                               (cons _%L196443%_ '()))
                         (cons _%L196441%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196386196404%_
                                                      _%g196387196408%_)))
                                               _%hd196397196435%_
                                               _%hd196394196425%_)
                                              (_%g196386196404%_
                                               _%g196387196408%_))))
                                      (_%g196386196404%_ _%g196387196408%_))))
                              (_%g196386196404%_ _%g196387196408%_))))
                      (_%g196386196404%_ _%g196387196408%_)))))
          (_%g196385196459%_ _%$stx196382%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx196463%_)
        (let* ((_%g196467196496%_
                (lambda (_%g196468196492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196468196492%_))))
               (_%g196466196596%_
                (lambda (_%g196468196500%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196468196500%_))
                      (let ((_%e196473196503%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196468196500%_))))
                        (let ((_%hd196472196507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196473196503%_)))
                              (_%tl196471196510%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196473196503%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196471196510%_))
                              (let ((_g202723_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196471196510%_
                                        '0))))
                                (begin
                                  (let ((_g202724_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202723_)
                                               (##vector-length _g202723_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202724_ 2)))
                                        (error "Context expects 2 values"
                                               _g202724_)))
                                  (let ((_%target196474196513%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202723_ 0)))
                                        (_%tl196476196516%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202723_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196476196516%_))
                                        (letrec ((_%loop196477196519%_
                                                  (lambda (_%hd196475196523%_
                                                           _%type196481196526%_
                                                           _%symbol196482196528%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196475196523%_))
                                                        (let ((_%e196478196531%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196475196523%_))))
                  (let ((_%lp-hd196479196535%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196478196531%_)))
                        (_%lp-tl196480196538%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196478196531%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196479196535%_))
                        (let ((_%e196487196541%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196479196535%_))))
                          (let ((_%hd196486196545%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196487196541%_)))
                                (_%tl196485196548%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196487196541%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196485196548%_))
                                (let ((_%e196490196551%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196485196548%_))))
                                  (let ((_%hd196489196555%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196490196551%_)))
                                        (_%tl196488196558%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196490196551%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196488196558%_))
                                        (_%loop196477196519%_
                                         _%lp-tl196480196538%_
                                         (cons _%hd196489196555%_
                                               _%type196481196526%_)
                                         (cons _%hd196486196545%_
                                               _%symbol196482196528%_))
                                        (_%g196467196496%_
                                         _%g196468196500%_))))
                                (_%g196467196496%_ _%g196468196500%_))))
                        (_%g196467196496%_ _%g196468196500%_))))
                (let ((_%type196483196561%_ (reverse _%type196481196526%_))
                      (_%symbol196484196564%_
                       (reverse _%symbol196482196528%_)))
                  ((lambda (_%L196567%_ _%L196569%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196567%_
                                _%L196569%_))
                             (let ((__tmp202725
                                    (lambda (_%g196584196588%_
                                             _%g196585196591%_
                                             _%g196586196593%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g196585196591%_
                                                        (cons _%g196584196588%_
                                                              '())))
                                            _%g196586196593%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202725
                                '()
                                _%L196567%_
                                _%L196569%_)))))
                   _%type196483196561%_
                   _%symbol196484196564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196477196519%_
                                           _%target196474196513%_
                                           '()
                                           '()))
                                        (_%g196467196496%_
                                         _%g196468196500%_)))))
                              (_%g196467196496%_ _%g196468196500%_))))
                      (_%g196467196496%_ _%g196468196500%_)))))
          (_%g196466196596%_ _%$stx196463%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx196601%_)
        (let* ((_%__stx202034202035%_ _%$stx196601%_)
               (_%g196606196648%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202034202035%_)))))
          (let ((_%__kont202037202038%_
                 (lambda (_%L196776%_ _%L196778%_ _%L196779%_ _%L196780%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196780%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196779%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196778%_ '()))
                                           (cons _%L196776%_ '())))))))
                (_%__kont202039202040%_
                 (lambda (_%L196695%_ _%L196697%_ _%L196698%_ _%L196699%_)
                   (cons _%L196699%_
                         (cons _%L196698%_
                               (cons _%L196697%_
                                     (cons _%L196695%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match202073202074%_
                   (lambda (_%e196614196726%_
                            _%hd196613196730%_
                            _%tl196612196733%_
                            _%e196617196736%_
                            _%hd196616196740%_
                            _%tl196615196743%_
                            _%e196620196746%_
                            _%hd196619196750%_
                            _%tl196618196753%_
                            _%e196623196756%_
                            _%hd196622196760%_
                            _%tl196621196763%_
                            _%e196626196766%_
                            _%hd196625196770%_
                            _%tl196624196773%_)
                     (let ((_%L196776%_ _%hd196625196770%_)
                           (_%L196778%_ _%hd196622196760%_)
                           (_%L196779%_ _%hd196619196750%_)
                           (_%L196780%_ _%hd196616196740%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196780%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196779%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196778%_)))
                           (_%__kont202037202038%_
                            _%L196776%_
                            _%L196778%_
                            _%L196779%_
                            _%L196780%_)
                           (let ()
                             (declare (not safe))
                             (_%g196606196648%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202034202035%_))
                  (let ((_%e196614196726%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202034202035%_))))
                    (let ((_%tl196612196733%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196614196726%_)))
                          (_%hd196613196730%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196614196726%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196612196733%_))
                          (let ((_%e196617196736%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl196612196733%_))))
                            (let ((_%tl196615196743%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196617196736%_)))
                                  (_%hd196616196740%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196617196736%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196615196743%_))
                                  (let ((_%e196620196746%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl196615196743%_))))
                                    (let ((_%tl196618196753%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196620196746%_)))
                                          (_%hd196619196750%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196620196746%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196618196753%_))
                                          (let ((_%e196623196756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl196618196753%_))))
                                            (let ((_%tl196621196763%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196623196756%_)))
                                                  (_%hd196622196760%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196623196756%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196621196763%_))
                                                  (let ((_%e196626196766%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl196621196763%_))))
                                                    (let ((_%tl196624196773%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196626196766%_)))
                                                          (_%hd196625196770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196626196766%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196624196773%_))
                                                          (_%__match202073202074%_
                                                           _%e196614196726%_
                                                           _%hd196613196730%_
                                                           _%tl196612196733%_
                                                           _%e196617196736%_
                                                           _%hd196616196740%_
                                                           _%tl196615196743%_
                                                           _%e196620196746%_
                                                           _%hd196619196750%_
                                                           _%tl196618196753%_
                                                           _%e196623196756%_
                                                           _%hd196622196760%_
                                                           _%tl196621196763%_
                                                           _%e196626196766%_
                                                           _%hd196625196770%_
                                                           _%tl196624196773%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196606196648%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196621196763%_))
                                                      (_%__kont202039202040%_
                                                       _%hd196622196760%_
                                                       _%hd196619196750%_
                                                       _%hd196616196740%_
                                                       _%hd196613196730%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196606196648%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g196606196648%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196606196648%_)))))
                          (let () (declare (not safe)) (_%g196606196648%_)))))
                  (let () (declare (not safe)) (_%g196606196648%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx196805%_)
        (let* ((_%g196809196844%_
                (lambda (_%g196810196840%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196810196840%_))))
               (_%g196808196963%_
                (lambda (_%g196810196848%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196810196848%_))
                      (let ((_%e196816196851%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196810196848%_))))
                        (let ((_%hd196815196855%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196816196851%_)))
                              (_%tl196814196858%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196816196851%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196814196858%_))
                              (let ((_g202726_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196814196858%_
                                        '0))))
                                (begin
                                  (let ((_g202727_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202726_)
                                               (##vector-length _g202726_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202727_ 2)))
                                        (error "Context expects 2 values"
                                               _g202727_)))
                                  (let ((_%target196817196861%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202726_ 0)))
                                        (_%tl196819196864%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202726_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196819196864%_))
                                        (letrec ((_%loop196820196867%_
                                                  (lambda (_%hd196818196871%_
                                                           _%symbol196824196874%_
                                                           _%method196825196876%_
                                                           _%type-t196826196878%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196818196871%_))
                                                        (let ((_%e196821196881%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196818196871%_))))
                  (let ((_%lp-hd196822196885%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196821196881%_)))
                        (_%lp-tl196823196888%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196821196881%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196822196885%_))
                        (let ((_%e196832196891%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196822196885%_))))
                          (let ((_%hd196831196895%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196832196891%_)))
                                (_%tl196830196898%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196832196891%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196830196898%_))
                                (let ((_%e196835196901%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196830196898%_))))
                                  (let ((_%hd196834196905%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196835196901%_)))
                                        (_%tl196833196908%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196835196901%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196833196908%_))
                                        (let ((_%e196838196911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196833196908%_))))
                                          (let ((_%hd196837196915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196838196911%_)))
                                                (_%tl196836196918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196838196911%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196836196918%_))
                                                (_%loop196820196867%_
                                                 _%lp-tl196823196888%_
                                                 (cons _%hd196837196915%_
                                                       _%symbol196824196874%_)
                                                 (cons _%hd196834196905%_
                                                       _%method196825196876%_)
                                                 (cons _%hd196831196895%_
                                                       _%type-t196826196878%_))
                                                (_%g196809196844%_
                                                 _%g196810196848%_))))
                                        (_%g196809196844%_
                                         _%g196810196848%_))))
                                (_%g196809196844%_ _%g196810196848%_))))
                        (_%g196809196844%_ _%g196810196848%_))))
                (let ((_%symbol196827196921%_ (reverse _%symbol196824196874%_))
                      (_%method196828196924%_ (reverse _%method196825196876%_))
                      (_%type-t196829196926%_
                       (reverse _%type-t196826196878%_)))
                  ((lambda (_%L196929%_ _%L196931%_ _%L196932%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196929%_
                                _%L196931%_
                                _%L196932%_))
                             (let ((__tmp202728
                                    (lambda (_%g196948196953%_
                                             _%g196949196956%_
                                             _%g196950196958%_
                                             _%g196951196960%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196950196958%_
                                                        (cons _%g196949196956%_
                                                              (cons _%g196948196953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196951196960%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp202728
                                '()
                                _%L196929%_
                                _%L196931%_
                                _%L196932%_)))))
                   _%symbol196827196921%_
                   _%method196828196924%_
                   _%type-t196829196926%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196820196867%_
                                           _%target196817196861%_
                                           '()
                                           '()
                                           '()))
                                        (_%g196809196844%_
                                         _%g196810196848%_)))))
                              (_%g196809196844%_ _%g196810196848%_))))
                      (_%g196809196844%_ _%g196810196848%_)))))
          (_%g196808196963%_ _%$stx196805%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196968%_)
        (let* ((_%g196972197005%_
                (lambda (_%g196973197001%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196973197001%_))))
               (_%g196971197119%_
                (lambda (_%g196973197009%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196973197009%_))
                      (let ((_%e196979197012%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196973197009%_))))
                        (let ((_%hd196978197016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196979197012%_)))
                              (_%tl196977197019%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196979197012%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196977197019%_))
                              (let ((_%e196982197022%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196977197019%_))))
                                (let ((_%hd196981197026%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196982197022%_)))
                                      (_%tl196980197029%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196982197022%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196980197029%_))
                                      (let ((_g202729_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196980197029%_
                                                '0))))
                                        (begin
                                          (let ((_g202730_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202729_)
                                                       (##vector-length
                                                        _g202729_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202730_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202730_)))
                                          (let ((_%target196983197032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202729_ 0)))
                                                (_%tl196985197035%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202729_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196985197035%_))
                                                (letrec ((_%loop196986197038%_
                                                          (lambda (_%hd196984197042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196990197045%_
                           _%method196991197047%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196984197042%_))
                        (let ((_%e196987197050%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196984197042%_))))
                          (let ((_%lp-hd196988197054%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196987197050%_)))
                                (_%lp-tl196989197057%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196987197050%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196988197054%_))
                                (let ((_%e196996197060%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196988197054%_))))
                                  (let ((_%hd196995197064%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196996197060%_)))
                                        (_%tl196994197067%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196996197060%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196994197067%_))
                                        (let ((_%e196999197070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196994197067%_))))
                                          (let ((_%hd196998197074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196999197070%_)))
                                                (_%tl196997197077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196999197070%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196997197077%_))
                                                (_%loop196986197038%_
                                                 _%lp-tl196989197057%_
                                                 (cons _%hd196998197074%_
                                                       _%symbol196990197045%_)
                                                 (cons _%hd196995197064%_
                                                       _%method196991197047%_))
                                                (_%g196972197005%_
                                                 _%g196973197009%_))))
                                        (_%g196972197005%_
                                         _%g196973197009%_))))
                                (_%g196972197005%_ _%g196973197009%_))))
                        (let ((_%symbol196992197080%_
                               (reverse _%symbol196990197045%_))
                              (_%method196993197083%_
                               (reverse _%method196991197047%_)))
                          ((lambda (_%L197086%_ _%L197088%_ _%L197089%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L197086%_
                                        _%L197088%_))
                                     (let ((__tmp202731
                                            (lambda (_%g197107197111%_
                                                     _%g197108197114%_
                                                     _%g197109197116%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L197089%_
                                                                (cons _%g197108197114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g197107197111%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g197109197116%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp202731
                                        '()
                                        _%L197086%_
                                        _%L197088%_)))))
                           _%symbol196992197080%_
                           _%method196993197083%_
                           _%hd196981197026%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196986197038%_
                                                   _%target196983197032%_
                                                   '()
                                                   '()))
                                                (_%g196972197005%_
                                                 _%g196973197009%_)))))
                                      (_%g196972197005%_ _%g196973197009%_))))
                              (_%g196972197005%_ _%g196973197009%_))))
                      (_%g196972197005%_ _%g196973197009%_)))))
          (_%g196971197119%_ _%$stx196968%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx197124%_)
        (let* ((_%g197128197142%_
                (lambda (_%g197129197138%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197129197138%_))))
               (_%g197127197183%_
                (lambda (_%g197129197146%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197129197146%_))
                      (let ((_%e197133197149%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197129197146%_))))
                        (let ((_%hd197132197153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197133197149%_)))
                              (_%tl197131197156%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197133197149%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197131197156%_))
                              (let ((_%e197136197159%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197131197156%_))))
                                (let ((_%hd197135197163%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197136197159%_)))
                                      (_%tl197134197166%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197136197159%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197134197166%_))
                                      ((lambda (_%L197169%_)
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
                                                           (cons _%L197169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197135197163%_)
                                      (_%g197128197142%_ _%g197129197146%_))))
                              (_%g197128197142%_ _%g197129197146%_))))
                      (_%g197128197142%_ _%g197129197146%_)))))
          (_%g197127197183%_ _%$stx197124%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx197187%_)
        (let* ((_%g197191197245%_
                (lambda (_%g197192197241%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197192197241%_))))
               (_%g197190197426%_
                (lambda (_%g197192197249%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197192197249%_))
                      (let ((_%e197206197252%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197192197249%_))))
                        (let ((_%hd197205197256%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197206197252%_)))
                              (_%tl197204197259%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197206197252%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197204197259%_))
                              (let ((_%e197209197262%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197204197259%_))))
                                (let ((_%hd197208197266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197209197262%_)))
                                      (_%tl197207197269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197209197262%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197207197269%_))
                                      (let ((_%e197212197272%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197207197269%_))))
                                        (let ((_%hd197211197276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197212197272%_)))
                                              (_%tl197210197279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197212197272%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197210197279%_))
                                              (let ((_%e197215197282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197210197279%_))))
                                                (let ((_%hd197214197286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197215197282%_)))
                                                      (_%tl197213197289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197215197282%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197213197289%_))
                                                      (let ((_%e197218197292%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197213197289%_))))
                (let ((_%hd197217197296%_
                       (let () (declare (not safe)) (##car _%e197218197292%_)))
                      (_%tl197216197299%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197218197292%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197216197299%_))
                      (let ((_%e197221197302%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197216197299%_))))
                        (let ((_%hd197220197306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197221197302%_)))
                              (_%tl197219197309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197221197302%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197219197309%_))
                              (let ((_%e197224197312%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197219197309%_))))
                                (let ((_%hd197223197316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197224197312%_)))
                                      (_%tl197222197319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197224197312%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197222197319%_))
                                      (let ((_%e197227197322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197222197319%_))))
                                        (let ((_%hd197226197326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197227197322%_)))
                                              (_%tl197225197329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197227197322%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197225197329%_))
                                              (let ((_%e197230197332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197225197329%_))))
                                                (let ((_%hd197229197336%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197230197332%_)))
                                                      (_%tl197228197339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197230197332%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197228197339%_))
                                                      (let ((_%e197233197342%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197228197339%_))))
                (let ((_%hd197232197346%_
                       (let () (declare (not safe)) (##car _%e197233197342%_)))
                      (_%tl197231197349%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197233197342%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197231197349%_))
                      (let ((_%e197236197352%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197231197349%_))))
                        (let ((_%hd197235197356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197236197352%_)))
                              (_%tl197234197359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197236197352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197234197359%_))
                              (let ((_%e197239197362%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197234197359%_))))
                                (let ((_%hd197238197366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197239197362%_)))
                                      (_%tl197237197369%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197239197362%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197237197369%_))
                                      ((lambda (_%L197372%_
                                                _%L197374%_
                                                _%L197375%_
                                                _%L197376%_
                                                _%L197377%_
                                                _%L197378%_
                                                _%L197379%_
                                                _%L197380%_
                                                _%L197381%_
                                                _%L197382%_
                                                _%L197383%_)
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
                                                           (cons _%L197383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L197382%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197381%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197380%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197379%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197378%_ '()))
                                           (cons _%L197377%_
                                                 (cons _%L197376%_
                                                       (cons _%L197375%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197374%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L197372%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd197238197366%_
                                       _%hd197235197356%_
                                       _%hd197232197346%_
                                       _%hd197229197336%_
                                       _%hd197226197326%_
                                       _%hd197223197316%_
                                       _%hd197220197306%_
                                       _%hd197217197296%_
                                       _%hd197214197286%_
                                       _%hd197211197276%_
                                       _%hd197208197266%_)
                                      (_%g197191197245%_ _%g197192197249%_))))
                              (_%g197191197245%_ _%g197192197249%_))))
                      (_%g197191197245%_ _%g197192197249%_))))
              (_%g197191197245%_ _%g197192197249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197191197245%_
                                               _%g197192197249%_))))
                                      (_%g197191197245%_ _%g197192197249%_))))
                              (_%g197191197245%_ _%g197192197249%_))))
                      (_%g197191197245%_ _%g197192197249%_))))
              (_%g197191197245%_ _%g197192197249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197191197245%_
                                               _%g197192197249%_))))
                                      (_%g197191197245%_ _%g197192197249%_))))
                              (_%g197191197245%_ _%g197192197249%_))))
                      (_%g197191197245%_ _%g197192197249%_)))))
          (_%g197190197426%_ _%$stx197187%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx197430%_)
        (let* ((_%g197434197448%_
                (lambda (_%g197435197444%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197435197444%_))))
               (_%g197433197489%_
                (lambda (_%g197435197452%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197435197452%_))
                      (let ((_%e197439197455%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197435197452%_))))
                        (let ((_%hd197438197459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197439197455%_)))
                              (_%tl197437197462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197439197455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197437197462%_))
                              (let ((_%e197442197465%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197437197462%_))))
                                (let ((_%hd197441197469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197442197465%_)))
                                      (_%tl197440197472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197442197465%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197440197472%_))
                                      ((lambda (_%L197475%_)
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
                                                           (cons _%L197475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197441197469%_)
                                      (_%g197434197448%_ _%g197435197452%_))))
                              (_%g197434197448%_ _%g197435197452%_))))
                      (_%g197434197448%_ _%g197435197452%_)))))
          (_%g197433197489%_ _%$stx197430%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx197493%_)
        (let* ((_%g197497197511%_
                (lambda (_%g197498197507%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197498197507%_))))
               (_%g197496197552%_
                (lambda (_%g197498197515%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197498197515%_))
                      (let ((_%e197502197518%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197498197515%_))))
                        (let ((_%hd197501197522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197502197518%_)))
                              (_%tl197500197525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197502197518%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197500197525%_))
                              (let ((_%e197505197528%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197500197525%_))))
                                (let ((_%hd197504197532%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197505197528%_)))
                                      (_%tl197503197535%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197505197528%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197503197535%_))
                                      ((lambda (_%L197538%_)
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
                                                           (cons _%L197538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197504197532%_)
                                      (_%g197497197511%_ _%g197498197515%_))))
                              (_%g197497197511%_ _%g197498197515%_))))
                      (_%g197497197511%_ _%g197498197515%_)))))
          (_%g197496197552%_ _%$stx197493%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx197556%_)
        (let* ((_%g197560197582%_
                (lambda (_%g197561197578%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197561197578%_))))
               (_%g197559197651%_
                (lambda (_%g197561197586%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197561197586%_))
                      (let ((_%e197567197589%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197561197586%_))))
                        (let ((_%hd197566197593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197567197589%_)))
                              (_%tl197565197596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197567197589%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197565197596%_))
                              (let ((_%e197570197599%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197565197596%_))))
                                (let ((_%hd197569197603%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197570197599%_)))
                                      (_%tl197568197606%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197570197599%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197568197606%_))
                                      (let ((_%e197573197609%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197568197606%_))))
                                        (let ((_%hd197572197613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197573197609%_)))
                                              (_%tl197571197616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197573197609%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197571197616%_))
                                              (let ((_%e197576197619%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197571197616%_))))
                                                (let ((_%hd197575197623%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197576197619%_)))
                                                      (_%tl197574197626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197576197619%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197574197626%_))
                                                      ((lambda (_%L197629%_
                                                                _%L197631%_
                                                                _%L197632%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197632%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197631%_ '()))
                                   (cons _%L197629%_ '())))))
               _%hd197575197623%_
               _%hd197572197613%_
               _%hd197569197603%_)
              (_%g197560197582%_ _%g197561197586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197560197582%_
                                               _%g197561197586%_))))
                                      (_%g197560197582%_ _%g197561197586%_))))
                              (_%g197560197582%_ _%g197561197586%_))))
                      (_%g197560197582%_ _%g197561197586%_)))))
          (_%g197559197651%_ _%$stx197556%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx197655%_)
        (let* ((_%g197659197681%_
                (lambda (_%g197660197677%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197660197677%_))))
               (_%g197658197750%_
                (lambda (_%g197660197685%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197660197685%_))
                      (let ((_%e197666197688%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197660197685%_))))
                        (let ((_%hd197665197692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197666197688%_)))
                              (_%tl197664197695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197666197688%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197664197695%_))
                              (let ((_%e197669197698%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197664197695%_))))
                                (let ((_%hd197668197702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197669197698%_)))
                                      (_%tl197667197705%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197669197698%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197667197705%_))
                                      (let ((_%e197672197708%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197667197705%_))))
                                        (let ((_%hd197671197712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197672197708%_)))
                                              (_%tl197670197715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197672197708%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197670197715%_))
                                              (let ((_%e197675197718%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197670197715%_))))
                                                (let ((_%hd197674197722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197675197718%_)))
                                                      (_%tl197673197725%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197675197718%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197673197725%_))
                                                      ((lambda (_%L197728%_
                                                                _%L197730%_
                                                                _%L197731%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197731%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197730%_ '()))
                                   (cons _%L197728%_ '())))))
               _%hd197674197722%_
               _%hd197671197712%_
               _%hd197668197702%_)
              (_%g197659197681%_ _%g197660197685%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197659197681%_
                                               _%g197660197685%_))))
                                      (_%g197659197681%_ _%g197660197685%_))))
                              (_%g197659197681%_ _%g197660197685%_))))
                      (_%g197659197681%_ _%g197660197685%_)))))
          (_%g197658197750%_ _%$stx197655%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx197754%_)
        (let* ((_%g197758197772%_
                (lambda (_%g197759197768%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197759197768%_))))
               (_%g197757197813%_
                (lambda (_%g197759197776%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197759197776%_))
                      (let ((_%e197763197779%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197759197776%_))))
                        (let ((_%hd197762197783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197763197779%_)))
                              (_%tl197761197786%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197763197779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197761197786%_))
                              (let ((_%e197766197789%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197761197786%_))))
                                (let ((_%hd197765197793%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197766197789%_)))
                                      (_%tl197764197796%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197766197789%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197764197796%_))
                                      ((lambda (_%L197799%_)
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
                                                           (cons _%L197799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197765197793%_)
                                      (_%g197758197772%_ _%g197759197776%_))))
                              (_%g197758197772%_ _%g197759197776%_))))
                      (_%g197758197772%_ _%g197759197776%_)))))
          (_%g197757197813%_ _%$stx197754%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx197817%_)
        (let* ((_%g197821197839%_
                (lambda (_%g197822197835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197822197835%_))))
               (_%g197820197894%_
                (lambda (_%g197822197843%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197822197843%_))
                      (let ((_%e197827197846%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197822197843%_))))
                        (let ((_%hd197826197850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197827197846%_)))
                              (_%tl197825197853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197827197846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197825197853%_))
                              (let ((_%e197830197856%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197825197853%_))))
                                (let ((_%hd197829197860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197830197856%_)))
                                      (_%tl197828197863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197830197856%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197828197863%_))
                                      (let ((_%e197833197866%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197828197863%_))))
                                        (let ((_%hd197832197870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197833197866%_)))
                                              (_%tl197831197873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197833197866%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197831197873%_))
                                              ((lambda (_%L197876%_
                                                        _%L197878%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197878%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197876%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197832197870%_
                                               _%hd197829197860%_)
                                              (_%g197821197839%_
                                               _%g197822197843%_))))
                                      (_%g197821197839%_ _%g197822197843%_))))
                              (_%g197821197839%_ _%g197822197843%_))))
                      (_%g197821197839%_ _%g197822197843%_)))))
          (_%g197820197894%_ _%$stx197817%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197898%_)
        (let* ((_%__stx202102202103%_ _%$stx197898%_)
               (_%g197905197966%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202102202103%_)))))
          (let ((_%__kont202105202106%_
                 (lambda (_%L198204%_ _%L198206%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198206%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198204%_ '()))
                                     '())))))
                (_%__kont202107202108%_
                 (lambda (_%L198143%_ _%L198145%_ _%L198146%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198146%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198145%_ '()))
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
                                 (cons _%L198143%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont202109202110%_
                 (lambda (_%L198067%_ _%L198069%_)
                   (cons _%L198069%_ (cons _%L198067%_ (cons '#f '())))))
                (_%__kont202111202112%_
                 (lambda (_%L198017%_ _%L198019%_ _%L198020%_)
                   (cons _%L198020%_
                         (cons _%L198019%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L198017%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202102202103%_))
                (let ((_%e197911198174%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202102202103%_))))
                  (let ((_%tl197909198181%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197911198174%_)))
                        (_%hd197910198178%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197911198174%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197909198181%_))
                        (let ((_%e197914198184%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197909198181%_))))
                          (let ((_%tl197912198191%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197914198184%_)))
                                (_%hd197913198188%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197914198184%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197912198191%_))
                                (let ((_%e197917198194%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197912198191%_))))
                                  (let ((_%tl197915198201%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197917198194%_)))
                                        (_%hd197916198198%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197917198194%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197915198201%_))
                                        (_%__kont202105202106%_
                                         _%hd197916198198%_
                                         _%hd197913198188%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197915198201%_))
                                            (let ((_%e197932198119%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197915198201%_))))
                                              (let ((_%tl197930198126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197932198119%_)))
                                                    (_%hd197931198123%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197932198119%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197931198123%_))
                                                    (let ((_%e197933198129%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197931198123%_))))
                                                      (if (equal? _%e197933198129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197930198126%_))
                      (let ((_%e197936198133%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197930198126%_))))
                        (let ((_%tl197934198140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197936198133%_)))
                              (_%hd197935198137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197936198133%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197934198140%_))
                              (_%__kont202107202108%_
                               _%hd197935198137%_
                               _%hd197916198198%_
                               _%hd197913198188%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197916198198%_))
                                  (let ((_%e197957198003%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197916198198%_))))
                                    (declare (not safe))
                                    (_%g197905197966%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197905197966%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197916198198%_))
                          (let ((_%e197957198003%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197916198198%_))))
                            (if (equal? _%e197957198003%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197930198126%_))
                                    (_%__kont202111202112%_
                                     _%hd197931198123%_
                                     _%hd197913198188%_
                                     _%hd197910198178%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197905197966%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197905197966%_))))
                          (let () (declare (not safe)) (_%g197905197966%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197916198198%_))
                      (let ((_%e197957198003%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197916198198%_))))
                        (if (equal? _%e197957198003%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197930198126%_))
                                (_%__kont202111202112%_
                                 _%hd197931198123%_
                                 _%hd197913198188%_
                                 _%hd197910198178%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197905197966%_)))
                            (let () (declare (not safe)) (_%g197905197966%_))))
                      (let () (declare (not safe)) (_%g197905197966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197916198198%_))
                                                        (let ((_%e197957198003%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197916198198%_))))
                  (if (equal? _%e197957198003%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197930198126%_))
                          (_%__kont202111202112%_
                           _%hd197931198123%_
                           _%hd197913198188%_
                           _%hd197910198178%_)
                          (let () (declare (not safe)) (_%g197905197966%_)))
                      (let () (declare (not safe)) (_%g197905197966%_))))
                (let () (declare (not safe)) (_%g197905197966%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197916198198%_))
                                                (let ((_%e197957198003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197916198198%_))))
                                                  (declare (not safe))
                                                  (_%g197905197966%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197905197966%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197912198191%_))
                                    (_%__kont202109202110%_
                                     _%hd197913198188%_
                                     _%hd197910198178%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197905197966%_))))))
                        (let () (declare (not safe)) (_%g197905197966%_)))))
                (let () (declare (not safe)) (_%g197905197966%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx198225%_)
        (let* ((_%g198229198258%_
                (lambda (_%g198230198254%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198230198254%_))))
               (_%g198228198367%_
                (lambda (_%g198230198262%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198230198262%_))
                      (let ((_%e198234198265%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198230198262%_))))
                        (let ((_%hd198233198269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198234198265%_)))
                              (_%tl198232198272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198234198265%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198232198272%_))
                              (let ((_g202732_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198232198272%_
                                        '0))))
                                (begin
                                  (let ((_g202733_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202732_)
                                               (##vector-length _g202732_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202733_ 2)))
                                        (error "Context expects 2 values"
                                               _g202733_)))
                                  (let ((_%target198235198275%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202732_ 0)))
                                        (_%tl198237198278%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202732_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198237198278%_))
                                        (letrec ((_%loop198238198281%_
                                                  (lambda (_%hd198236198285%_
                                                           _%clause198242198288%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198236198285%_))
                                                        (let ((_%e198239198291%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198236198285%_))))
                  (let ((_%lp-hd198240198295%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198239198291%_)))
                        (_%lp-tl198241198298%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198239198291%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd198240198295%_))
                        (let ((_g202734_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd198240198295%_
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
                            (let ((_%target198244198301%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202734_ 0)))
                                  (_%tl198246198304%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g202734_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198246198304%_))
                                  (letrec ((_%loop198247198307%_
                                            (lambda (_%hd198245198311%_
                                                     _%clause198251198314%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198245198311%_))
                                                  (let ((_%e198248198317%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd198245198311%_))))
                                                    (let ((_%lp-hd198249198321%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198248198317%_)))
                                                          (_%lp-tl198250198324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198248198317%_))))
                                                      (_%loop198247198307%_
                                                       _%lp-tl198250198324%_
                                                       (cons _%lp-hd198249198321%_
                                                             _%clause198251198314%_))))
                                                  (let ((_%clause198252198327%_
                                                         (reverse _%clause198251198314%_)))
                                                    (_%loop198238198281%_
                                                     _%lp-tl198241198298%_
                                                     (cons _%clause198252198327%_
                                                           _%clause198242198288%_)))))))
                                    (_%loop198247198307%_
                                     _%target198244198301%_
                                     '()))
                                  (_%g198229198258%_ _%g198230198262%_)))))
                        (_%g198229198258%_ _%g198230198262%_))))
                (let ((_%clause198243198331%_
                       (reverse _%clause198242198288%_)))
                  ((lambda (_%L198335%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp202736
                                              (lambda (_%g198350198355%_
                                                       _%g198351198358%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp202737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g198352198361%_ _%g198353198364%_)
                             (cons _%g198352198361%_ _%g198353198364%_))))
                      (declare (not safe))
                      (__foldr1 __tmp202737 '() _%g198350198355%_)))
              _%g198351198358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp202736
                                          '()
                                          _%L198335%_)))
                                 '())))
                   _%clause198243198331%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198238198281%_
                                           _%target198235198275%_
                                           '()))
                                        (_%g198229198258%_
                                         _%g198230198262%_)))))
                              (_%g198229198258%_ _%g198230198262%_))))
                      (_%g198229198258%_ _%g198230198262%_)))))
          (_%g198228198367%_ _%$stx198225%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx198373%_)
        (let* ((_%g198377198395%_
                (lambda (_%g198378198391%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198378198391%_))))
               (_%g198376198450%_
                (lambda (_%g198378198399%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198378198399%_))
                      (let ((_%e198383198402%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198378198399%_))))
                        (let ((_%hd198382198406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198383198402%_)))
                              (_%tl198381198409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198383198402%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198381198409%_))
                              (let ((_%e198386198412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198381198409%_))))
                                (let ((_%hd198385198416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198386198412%_)))
                                      (_%tl198384198419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198386198412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198384198419%_))
                                      (let ((_%e198389198422%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198384198419%_))))
                                        (let ((_%hd198388198426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198389198422%_)))
                                              (_%tl198387198429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198389198422%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198387198429%_))
                                              ((lambda (_%L198432%_
                                                        _%L198434%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198434%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198432%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198388198426%_
                                               _%hd198385198416%_)
                                              (_%g198377198395%_
                                               _%g198378198399%_))))
                                      (_%g198377198395%_ _%g198378198399%_))))
                              (_%g198377198395%_ _%g198378198399%_))))
                      (_%g198377198395%_ _%g198378198399%_)))))
          (_%g198376198450%_ _%$stx198373%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx198454%_)
        (let* ((_%g198458198476%_
                (lambda (_%g198459198472%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198459198472%_))))
               (_%g198457198531%_
                (lambda (_%g198459198480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198459198480%_))
                      (let ((_%e198464198483%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198459198480%_))))
                        (let ((_%hd198463198487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198464198483%_)))
                              (_%tl198462198490%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198464198483%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198462198490%_))
                              (let ((_%e198467198493%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198462198490%_))))
                                (let ((_%hd198466198497%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198467198493%_)))
                                      (_%tl198465198500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198467198493%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198465198500%_))
                                      (let ((_%e198470198503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198465198500%_))))
                                        (let ((_%hd198469198507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198470198503%_)))
                                              (_%tl198468198510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198470198503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198468198510%_))
                                              ((lambda (_%L198513%_
                                                        _%L198515%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198515%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198513%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198469198507%_
                                               _%hd198466198497%_)
                                              (_%g198458198476%_
                                               _%g198459198480%_))))
                                      (_%g198458198476%_ _%g198459198480%_))))
                              (_%g198458198476%_ _%g198459198480%_))))
                      (_%g198458198476%_ _%g198459198480%_)))))
          (_%g198457198531%_ _%$stx198454%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx198535%_)
        (let* ((_%g198539198568%_
                (lambda (_%g198540198564%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198540198564%_))))
               (_%g198538198668%_
                (lambda (_%g198540198572%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198540198572%_))
                      (let ((_%e198545198575%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198540198572%_))))
                        (let ((_%hd198544198579%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198545198575%_)))
                              (_%tl198543198582%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198545198575%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198543198582%_))
                              (let ((_g202738_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198543198582%_
                                        '0))))
                                (begin
                                  (let ((_g202739_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202738_)
                                               (##vector-length _g202738_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202739_ 2)))
                                        (error "Context expects 2 values"
                                               _g202739_)))
                                  (let ((_%target198546198585%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202738_ 0)))
                                        (_%tl198548198588%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202738_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198548198588%_))
                                        (letrec ((_%loop198549198591%_
                                                  (lambda (_%hd198547198595%_
                                                           _%rule198553198598%_
                                                           _%proc198554198600%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198547198595%_))
                                                        (let ((_%e198550198603%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198547198595%_))))
                  (let ((_%lp-hd198551198607%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198550198603%_)))
                        (_%lp-tl198552198610%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198550198603%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd198551198607%_))
                        (let ((_%e198559198613%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd198551198607%_))))
                          (let ((_%hd198558198617%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198559198613%_)))
                                (_%tl198557198620%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198559198613%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198557198620%_))
                                (let ((_%e198562198623%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198557198620%_))))
                                  (let ((_%hd198561198627%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198562198623%_)))
                                        (_%tl198560198630%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198562198623%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198560198630%_))
                                        (_%loop198549198591%_
                                         _%lp-tl198552198610%_
                                         (cons _%hd198561198627%_
                                               _%rule198553198598%_)
                                         (cons _%hd198558198617%_
                                               _%proc198554198600%_))
                                        (_%g198539198568%_
                                         _%g198540198572%_))))
                                (_%g198539198568%_ _%g198540198572%_))))
                        (_%g198539198568%_ _%g198540198572%_))))
                (let ((_%rule198555198633%_ (reverse _%rule198553198598%_))
                      (_%proc198556198636%_ (reverse _%proc198554198600%_)))
                  ((lambda (_%L198639%_ _%L198641%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L198639%_
                                _%L198641%_))
                             (let ((__tmp202740
                                    (lambda (_%g198656198660%_
                                             _%g198657198663%_
                                             _%g198658198665%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g198657198663%_
                                                        (cons _%g198656198660%_
                                                              '())))
                                            _%g198658198665%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202740
                                '()
                                _%L198639%_
                                _%L198641%_)))))
                   _%rule198555198633%_
                   _%proc198556198636%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198549198591%_
                                           _%target198546198585%_
                                           '()
                                           '()))
                                        (_%g198539198568%_
                                         _%g198540198572%_)))))
                              (_%g198539198568%_ _%g198540198572%_))))
                      (_%g198539198568%_ _%g198540198572%_)))))
          (_%g198538198668%_ _%$stx198535%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx198673%_)
        (let* ((_%g198677198695%_
                (lambda (_%g198678198691%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198678198691%_))))
               (_%g198676198750%_
                (lambda (_%g198678198699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198678198699%_))
                      (let ((_%e198683198702%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198678198699%_))))
                        (let ((_%hd198682198706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198683198702%_)))
                              (_%tl198681198709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198683198702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198681198709%_))
                              (let ((_%e198686198712%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198681198709%_))))
                                (let ((_%hd198685198716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198686198712%_)))
                                      (_%tl198684198719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198686198712%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198684198719%_))
                                      (let ((_%e198689198722%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198684198719%_))))
                                        (let ((_%hd198688198726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198689198722%_)))
                                              (_%tl198687198729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198689198722%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198687198729%_))
                                              ((lambda (_%L198732%_
                                                        _%L198734%_)
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
                                                   (cons _%L198734%_ '()))
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
                 (cons _%L198732%_ '())))
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
                                   (cons _%L198734%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198688198726%_
                                               _%hd198685198716%_)
                                              (_%g198677198695%_
                                               _%g198678198699%_))))
                                      (_%g198677198695%_ _%g198678198699%_))))
                              (_%g198677198695%_ _%g198678198699%_))))
                      (_%g198677198695%_ _%g198678198699%_)))))
          (_%g198676198750%_ _%$stx198673%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx198754%_)
        (let* ((_%__stx202220202221%_ _%$stx198754%_)
               (_%g198759198784%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202220202221%_)))))
          (let ((_%__kont202223202224%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202225202226%_
                 (lambda (_%L198831%_ _%L198833%_ _%L198834%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L198834%_ (cons _%L198833%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L198831%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202220202221%_))
                (let ((_%e198763198860%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202220202221%_))))
                  (let ((_%tl198761198867%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198763198860%_)))
                        (_%hd198762198864%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198763198860%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198761198867%_))
                        (_%__kont202223202224%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198761198867%_))
                            (let ((_%e198772198801%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198761198867%_))))
                              (let ((_%tl198770198808%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198772198801%_)))
                                    (_%hd198771198805%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198772198801%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198771198805%_))
                                    (let ((_%e198775198811%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd198771198805%_))))
                                      (let ((_%tl198773198818%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198775198811%_)))
                                            (_%hd198774198815%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198775198811%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198773198818%_))
                                            (let ((_%e198778198821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198773198818%_))))
                                              (let ((_%tl198776198828%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198778198821%_)))
                                                    (_%hd198777198825%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198778198821%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198776198828%_))
                                                    (_%__kont202225202226%_
                                                     _%tl198770198808%_
                                                     _%hd198777198825%_
                                                     _%hd198774198815%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198759198784%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198759198784%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198759198784%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198759198784%_))))))
                (let () (declare (not safe)) (_%g198759198784%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx198878%_)
        (let* ((_%__stx202264202265%_ _%$stx198878%_)
               (_%g198883198914%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202264202265%_)))))
          (let ((_%__kont202267202268%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202269202270%_
                 (lambda (_%L198981%_ _%L198983%_ _%L198984%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198984%_
                                           (let ((__tmp202741
                                                  (lambda (_%g199004199007%_
                                                           _%g199005199010%_)
                                                    (cons _%g199004199007%_
                                                          _%g199005199010%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202741
                                              '()
                                              _%L198983%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198981%_)
                                     '()))))))
            (let ((_%__match202307202308%_
                   (lambda (_%e198893198921%_
                            _%hd198892198925%_
                            _%tl198891198928%_
                            _%e198896198931%_
                            _%hd198895198935%_
                            _%tl198894198938%_
                            _%e198899198941%_
                            _%hd198898198945%_
                            _%tl198897198948%_
                            _%__splice202271202272%_
                            _%target198900198951%_
                            _%tl198902198954%_)
                     (letrec ((_%loop198903198957%_
                               (lambda (_%hd198901198961%_ _%sig198907198964%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198901198961%_))
                                     (let ((_%e198904198967%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198901198961%_))))
                                       (let ((_%lp-tl198906198974%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198904198967%_)))
                                             (_%lp-hd198905198971%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198904198967%_))))
                                         (_%loop198903198957%_
                                          _%lp-tl198906198974%_
                                          (cons _%lp-hd198905198971%_
                                                _%sig198907198964%_))))
                                     (let ((_%sig198908198977%_
                                            (reverse _%sig198907198964%_)))
                                       (_%__kont202269202270%_
                                        _%tl198894198938%_
                                        _%sig198908198977%_
                                        _%hd198898198945%_))))))
                       (_%loop198903198957%_ _%target198900198951%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202264202265%_))
                  (let ((_%e198887199020%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202264202265%_))))
                    (let ((_%tl198885199027%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198887199020%_)))
                          (_%hd198886199024%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198887199020%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198885199027%_))
                          (_%__kont202267202268%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198885199027%_))
                              (let ((_%e198896198931%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198885199027%_))))
                                (let ((_%tl198894198938%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198896198931%_)))
                                      (_%hd198895198935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198896198931%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198895198935%_))
                                      (let ((_%e198899198941%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198895198935%_))))
                                        (let ((_%tl198897198948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198899198941%_)))
                                              (_%hd198898198945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198899198941%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198897198948%_))
                                              (let ((_%__splice202271202272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198897198948%_
                                                        '0))))
                                                (let ((_%tl198902198954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202271202272%_
                                                          '1)))
                                                      (_%target198900198951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202271202272%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198902198954%_))
                                                      (_%__match202307202308%_
                                                       _%e198887199020%_
                                                       _%hd198886199024%_
                                                       _%tl198885199027%_
                                                       _%e198896198931%_
                                                       _%hd198895198935%_
                                                       _%tl198894198938%_
                                                       _%e198899198941%_
                                                       _%hd198898198945%_
                                                       _%tl198897198948%_
                                                       _%__splice202271202272%_
                                                       _%target198900198951%_
                                                       _%tl198902198954%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198883198914%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198883198914%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198883198914%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198883198914%_))))))
                  (let () (declare (not safe)) (_%g198883198914%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx199039%_)
        (let* ((_%__stx202310202311%_ _%$stx199039%_)
               (_%g199044199091%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202310202311%_)))))
          (let ((_%__kont202313202314%_
                 (lambda (_%L199253%_ _%L199255%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L199255%_
                               (let ((__tmp202742
                                      (lambda (_%g199275199278%_
                                               _%g199276199281%_)
                                        (cons _%g199275199278%_
                                              _%g199276199281%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202742 '() _%L199253%_))))))
                (_%__kont202317202318%_
                 (lambda (_%L199148%_ _%L199150%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L199150%_
                               (let ((__tmp202743
                                      (lambda (_%g199167199170%_
                                               _%g199168199173%_)
                                        (cons _%g199167199170%_
                                              _%g199168199173%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp202743 '() _%L199148%_)))))))
            (let* ((_%__match202377202378%_
                    (lambda (_%e199073199098%_
                             _%hd199072199102%_
                             _%tl199071199105%_
                             _%e199076199108%_
                             _%hd199075199112%_
                             _%tl199074199115%_
                             _%__splice202319202320%_
                             _%target199077199118%_
                             _%tl199079199121%_)
                      (letrec ((_%loop199080199124%_
                                (lambda (_%hd199078199128%_
                                         _%sig199084199131%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199078199128%_))
                                      (let ((_%e199081199134%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199078199128%_))))
                                        (let ((_%lp-tl199083199141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199081199134%_)))
                                              (_%lp-hd199082199138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199081199134%_))))
                                          (_%loop199080199124%_
                                           _%lp-tl199083199141%_
                                           (cons _%lp-hd199082199138%_
                                                 _%sig199084199131%_))))
                                      (let ((_%sig199085199144%_
                                             (reverse _%sig199084199131%_)))
                                        (_%__kont202317202318%_
                                         _%sig199085199144%_
                                         _%hd199075199112%_))))))
                        (_%loop199080199124%_ _%target199077199118%_ '()))))
                   (_%__match202369202370%_
                    (lambda (_%e199073199098%_
                             _%hd199072199102%_
                             _%tl199071199105%_
                             _%e199076199108%_
                             _%hd199075199112%_
                             _%tl199074199115%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl199074199115%_))
                          (let ((_%__splice202319202320%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl199074199115%_
                                    '0))))
                            (let ((_%tl199079199121%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202319202320%_
                                      '1)))
                                  (_%target199077199118%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202319202320%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199079199121%_))
                                  (_%__match202377202378%_
                                   _%e199073199098%_
                                   _%hd199072199102%_
                                   _%tl199071199105%_
                                   _%e199076199108%_
                                   _%hd199075199112%_
                                   _%tl199074199115%_
                                   _%__splice202319202320%_
                                   _%target199077199118%_
                                   _%tl199079199121%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g199044199091%_)))))
                          (let () (declare (not safe)) (_%g199044199091%_)))))
                   (_%__match202357202358%_
                    (lambda (_%e199050199183%_
                             _%hd199049199187%_
                             _%tl199048199190%_
                             _%e199053199193%_
                             _%hd199052199197%_
                             _%tl199051199200%_
                             _%e199056199203%_
                             _%hd199055199207%_
                             _%tl199054199210%_
                             _%e199059199213%_
                             _%hd199058199217%_
                             _%tl199057199220%_
                             _%__splice202315202316%_
                             _%target199060199223%_
                             _%tl199062199226%_)
                      (letrec ((_%loop199063199229%_
                                (lambda (_%hd199061199233%_
                                         _%sig199067199236%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199061199233%_))
                                      (let ((_%e199064199239%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199061199233%_))))
                                        (let ((_%lp-tl199066199246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199064199239%_)))
                                              (_%lp-hd199065199243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199064199239%_))))
                                          (_%loop199063199229%_
                                           _%lp-tl199066199246%_
                                           (cons _%lp-hd199065199243%_
                                                 _%sig199067199236%_))))
                                      (let ((_%sig199068199249%_
                                             (reverse _%sig199067199236%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199054199210%_))
                                            (_%__kont202313202314%_
                                             _%sig199068199249%_
                                             _%hd199052199197%_)
                                            (_%__match202369202370%_
                                             _%e199050199183%_
                                             _%hd199049199187%_
                                             _%tl199048199190%_
                                             _%e199053199193%_
                                             _%hd199052199197%_
                                             _%tl199051199200%_)))))))
                        (_%loop199063199229%_ _%target199060199223%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202310202311%_))
                  (let ((_%e199050199183%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202310202311%_))))
                    (let ((_%tl199048199190%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199050199183%_)))
                          (_%hd199049199187%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199050199183%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199048199190%_))
                          (let ((_%e199053199193%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199048199190%_))))
                            (let ((_%tl199051199200%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199053199193%_)))
                                  (_%hd199052199197%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199053199193%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199051199200%_))
                                  (let ((_%e199056199203%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199051199200%_))))
                                    (let ((_%tl199054199210%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199056199203%_)))
                                          (_%hd199055199207%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199056199203%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd199055199207%_))
                                          (let ((_%e199059199213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd199055199207%_))))
                                            (let ((_%tl199057199220%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199059199213%_)))
                                                  (_%hd199058199217%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199059199213%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd199058199217%_))
                                                  (if (let ((__tmp202744
                                                             |gxc[1]#_g202745_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp202744
                                                         _%hd199058199217%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl199057199220%_))
                                                          (let ((_%__splice202315202316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199057199220%_ '0))))
                    (let ((_%tl199062199226%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202315202316%_ '1)))
                          (_%target199060199223%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202315202316%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199062199226%_))
                          (_%__match202357202358%_
                           _%e199050199183%_
                           _%hd199049199187%_
                           _%tl199048199190%_
                           _%e199053199193%_
                           _%hd199052199197%_
                           _%tl199051199200%_
                           _%e199056199203%_
                           _%hd199055199207%_
                           _%tl199054199210%_
                           _%e199059199213%_
                           _%hd199058199217%_
                           _%tl199057199220%_
                           _%__splice202315202316%_
                           _%target199060199223%_
                           _%tl199062199226%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199051199200%_))
                              (let ((_%__splice202319202320%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199051199200%_
                                        '0))))
                                (let ((_%tl199079199121%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202319202320%_
                                          '1)))
                                      (_%target199077199118%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202319202320%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199079199121%_))
                                      (_%__match202377202378%_
                                       _%e199050199183%_
                                       _%hd199049199187%_
                                       _%tl199048199190%_
                                       _%e199053199193%_
                                       _%hd199052199197%_
                                       _%tl199051199200%_
                                       _%__splice202319202320%_
                                       _%target199077199118%_
                                       _%tl199079199121%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g199044199091%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199044199091%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl199051199200%_))
                      (let ((_%__splice202319202320%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl199051199200%_
                                '0))))
                        (let ((_%tl199079199121%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202319202320%_ '1)))
                              (_%target199077199118%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202319202320%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199079199121%_))
                              (_%__match202377202378%_
                               _%e199050199183%_
                               _%hd199049199187%_
                               _%tl199048199190%_
                               _%e199053199193%_
                               _%hd199052199197%_
                               _%tl199051199200%_
                               _%__splice202319202320%_
                               _%target199077199118%_
                               _%tl199079199121%_)
                              (let ()
                                (declare (not safe))
                                (_%g199044199091%_)))))
                      (let () (declare (not safe)) (_%g199044199091%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl199051199200%_))
                  (let ((_%__splice202319202320%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199051199200%_ '0))))
                    (let ((_%tl199079199121%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202319202320%_ '1)))
                          (_%target199077199118%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202319202320%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199079199121%_))
                          (_%__match202377202378%_
                           _%e199050199183%_
                           _%hd199049199187%_
                           _%tl199048199190%_
                           _%e199053199193%_
                           _%hd199052199197%_
                           _%tl199051199200%_
                           _%__splice202319202320%_
                           _%target199077199118%_
                           _%tl199079199121%_)
                          (let () (declare (not safe)) (_%g199044199091%_)))))
                  (let () (declare (not safe)) (_%g199044199091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl199051199200%_))
                                                      (let ((_%__splice202319202320%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl199051199200%_ '0))))
                (let ((_%tl199079199121%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202319202320%_ '1)))
                      (_%target199077199118%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202319202320%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199079199121%_))
                      (_%__match202377202378%_
                       _%e199050199183%_
                       _%hd199049199187%_
                       _%tl199048199190%_
                       _%e199053199193%_
                       _%hd199052199197%_
                       _%tl199051199200%_
                       _%__splice202319202320%_
                       _%target199077199118%_
                       _%tl199079199121%_)
                      (let () (declare (not safe)) (_%g199044199091%_)))))
              (let () (declare (not safe)) (_%g199044199091%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl199051199200%_))
                                              (let ((_%__splice202319202320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl199051199200%_
                                                        '0))))
                                                (let ((_%tl199079199121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202319202320%_
                                                          '1)))
                                                      (_%target199077199118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202319202320%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199079199121%_))
                                                      (_%__match202377202378%_
                                                       _%e199050199183%_
                                                       _%hd199049199187%_
                                                       _%tl199048199190%_
                                                       _%e199053199193%_
                                                       _%hd199052199197%_
                                                       _%tl199051199200%_
                                                       _%__splice202319202320%_
                                                       _%target199077199118%_
                                                       _%tl199079199121%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199044199091%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199044199091%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199051199200%_))
                                      (let ((_%__splice202319202320%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199051199200%_
                                                '0))))
                                        (let ((_%tl199079199121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202319202320%_
                                                  '1)))
                                              (_%target199077199118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202319202320%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199079199121%_))
                                              (_%__match202377202378%_
                                               _%e199050199183%_
                                               _%hd199049199187%_
                                               _%tl199048199190%_
                                               _%e199053199193%_
                                               _%hd199052199197%_
                                               _%tl199051199200%_
                                               _%__splice202319202320%_
                                               _%target199077199118%_
                                               _%tl199079199121%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199044199091%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199044199091%_))))))
                          (let () (declare (not safe)) (_%g199044199091%_)))))
                  (let () (declare (not safe)) (_%g199044199091%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx200369%_ _%id200371%_)
        (let ((_%proc200375%_
               (let ((__tmp202746
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200371%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202746))))
          (if (let () (declare (not safe)) (procedure? _%proc200375%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx200369%_
                 _%id200371%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx200360%_ _%id200362%_)
        (let ((_%klass200366%_
               (let ((__tmp202747
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200362%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp202747))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass200366%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx200360%_
                 _%id200362%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx199610%_ _%proc199612%_ _%sig199613%_)
        (letrec ((_%signature-arity199615%_
                  (lambda (_%args200292%_)
                    (let _%loop200295%_ ((_%rest200298%_ _%args200292%_)
                                         (_%count200300%_ '0))
                      (let* ((_%rest200301200312%_ _%rest200298%_)
                             (_%E200305200318%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest200301200312%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K200308200349%_
                               (lambda (_%rest200346%_)
                                 (let ((__tmp202748
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count200300%_ '1))))
                                   (declare (not safe))
                                   (_%loop200295%_
                                    _%rest200346%_
                                    __tmp202748))))
                              (_%K200307200338%_ (lambda () _%count200300%_))
                              (_%K200306200326%_
                               (lambda () (cons _%count200300%_ '()))))
                          (let ((_%try-match200303200342%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest200301200312%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200307200338%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K200306200326%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest200301200312%_))
                                (let* ((_%tl200310200353%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200301200312%_)))
                                       (_%rest200357%_ _%tl200310200353%_))
                                  (declare (not safe))
                                  (_%K200308200349%_ _%rest200357%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match200303200342%_)))))))))
                 (_%make-signature199617%_
                  (lambda (_%args200174%_
                           _%return200176%_
                           _%effect200177%_
                           _%unchecked200178%_)
                    (let ((__tmp202749
                           (lambda (_%g200179200181%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx199610%_
                                _%g200179200181%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp202749 _%args200174%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx199610%_ _%return200176%_))
                    (if _%unchecked200178%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx199610%_
                           _%unchecked200178%_))
                        '#!void)
                    (let ((_%arity200185%_
                           (let ((__tmp202750
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args200174%_))))
                             (declare (not safe))
                             (_%signature-arity199615%_ __tmp202750))))
                      (if _%effect200177%_
                          (let ((_%effect200188%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect200177%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect200188%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect200188%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx199610%_
                                   _%proc199612%_
                                   _%effect200188%_))))
                          '#!void)
                      (cons _%arity200185%_
                            (cons (let* ((_%g200191200214%_
                                          (lambda (_%g200192200210%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g200192200210%_))))
                                         (_%g200190200288%_
                                          (lambda (_%g200192200218%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g200192200218%_))
                                                (let ((_%e200199200221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g200192200218%_))))
                                                  (let ((_%hd200198200225%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200199200221%_)))
                                                        (_%tl200197200228%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200199200221%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200197200228%_))
                                                        (let ((_%e200202200231%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200197200228%_))))
                  (let ((_%hd200201200235%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200202200231%_)))
                        (_%tl200200200238%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200202200231%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200200200238%_))
                        (let ((_%e200205200241%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200200200238%_))))
                          (let ((_%hd200204200245%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200205200241%_)))
                                (_%tl200203200248%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200205200241%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200203200248%_))
                                (let ((_%e200208200251%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200203200248%_))))
                                  (let ((_%hd200207200255%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200208200251%_)))
                                        (_%tl200206200258%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200208200251%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200206200258%_))
                                        ((lambda (_%L200261%_
                                                  _%L200263%_
                                                  _%L200264%_
                                                  _%L200265%_)
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
                             (cons _%L200265%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200264%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L200263%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L200261%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200207200255%_
                                         _%hd200204200245%_
                                         _%hd200201200235%_
                                         _%hd200198200225%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200191200214%_
                                           _%g200192200218%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200191200214%_ _%g200192200218%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g200191200214%_ _%g200192200218%_)))))
                (let ()
                  (declare (not safe))
                  (_%g200191200214%_ _%g200192200218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200191200214%_
                                                   _%g200192200218%_)))))
                                         (__tmp202751
                                          (list _%args200174%_
                                                _%return200176%_
                                                _%effect200177%_
                                                _%unchecked200178%_)))
                                    (declare (not safe))
                                    (_%g200190200288%_ __tmp202751))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx199610%_ _%proc199612%_))
          (let* ((_%__stx202388202389%_ _%sig199613%_)
                 (_%g199624199727%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx202388202389%_)))))
            (let ((_%__kont202391202392%_
                   (lambda (_%L200155%_ _%L200157%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199617%_
                        _%L200157%_
                        _%L200155%_
                        '#f
                        '#f))))
                  (_%__kont202393202394%_
                   (lambda (_%L200106%_ _%L200108%_ _%L200109%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature199617%_
                        _%L200109%_
                        _%L200108%_
                        _%L200106%_
                        '#f))))
                  (_%__kont202395202396%_
                   (lambda (_%L200030%_ _%L200032%_ _%L200033%_)
                     (let ((__tmp202752
                            (let ((__tmp202753
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199612%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202753))))
                       (declare (not safe))
                       (_%make-signature199617%_
                        _%L200033%_
                        _%L200032%_
                        _%L200030%_
                        __tmp202752))))
                  (_%__kont202397202398%_
                   (lambda (_%L199936%_ _%L199938%_ _%L199939%_ _%L199940%_)
                     (let ((__tmp202754
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199936%_))))
                       (declare (not safe))
                       (_%make-signature199617%_
                        _%L199940%_
                        _%L199939%_
                        '#f
                        __tmp202754))))
                  (_%__kont202399202400%_
                   (lambda (_%L199843%_ _%L199845%_)
                     (let ((__tmp202755
                            (let ((__tmp202756
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc199612%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp202756))))
                       (declare (not safe))
                       (_%make-signature199617%_
                        _%L199845%_
                        _%L199843%_
                        '#f
                        __tmp202755))))
                  (_%__kont202401202402%_
                   (lambda (_%L199778%_ _%L199780%_ _%L199781%_)
                     (let ((__tmp202757
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L199778%_))))
                       (declare (not safe))
                       (_%make-signature199617%_
                        _%L199781%_
                        _%L199780%_
                        '#f
                        __tmp202757)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202388202389%_))
                  (let ((_%e199630200135%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202388202389%_))))
                    (let ((_%tl199628200142%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199630200135%_)))
                          (_%hd199629200139%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199630200135%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199628200142%_))
                          (let ((_%e199633200145%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199628200142%_))))
                            (let ((_%tl199631200152%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199633200145%_)))
                                  (_%hd199632200149%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199633200145%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199631200152%_))
                                  (_%__kont202391202392%_
                                   _%hd199632200149%_
                                   _%hd199629200139%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199631200152%_))
                                      (let ((_%e199645200082%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199631200152%_))))
                                        (let ((_%tl199643200089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199645200082%_)))
                                              (_%hd199644200086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199645200082%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd199644200086%_))
                                              (let ((_%e199646200092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199644200086%_))))
                                                (if (equal? _%e199646200092%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199643200089%_))
                                                        (let ((_%e199649200096%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199643200089%_))))
                  (let ((_%tl199647200103%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199649200096%_)))
                        (_%hd199648200100%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199649200096%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199647200103%_))
                        (_%__kont202393202394%_
                         _%hd199648200100%_
                         _%hd199632200149%_
                         _%hd199629200139%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199647200103%_))
                            (let ((_%e199668200016%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199647200103%_))))
                              (let ((_%tl199666200023%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199668200016%_)))
                                    (_%hd199667200020%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199668200016%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd199667200020%_))
                                    (let ((_%e199669200026%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199667200020%_))))
                                      (if (equal? _%e199669200026%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199666200023%_))
                                              (_%__kont202395202396%_
                                               _%hd199648200100%_
                                               _%hd199632200149%_
                                               _%hd199629200139%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199666200023%_))
                                                  (let ((_%e199693199926%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199666200023%_))))
                                                    (let ((_%tl199691199933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199693199926%_)))
                                                          (_%hd199692199930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199693199926%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199691199933%_))
                                                          (_%__kont202397202398%_
                                                           _%hd199692199930%_
                                                           _%hd199648200100%_
                                                           _%hd199632200149%_
                                                           _%hd199629200139%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199624199727%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199624199727%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199624199727%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199624199727%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g199624199727%_))))))
                (let () (declare (not safe)) (_%g199624199727%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e199646200092%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl199643200089%_))
                                                            (_%__kont202399202400%_
                                                             _%hd199632200149%_
                                                             _%hd199629200139%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199643200089%_))
                        (let ((_%e199721199768%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199643200089%_))))
                          (let ((_%tl199719199775%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199721199768%_)))
                                (_%hd199720199772%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199721199768%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199719199775%_))
                                (_%__kont202401202402%_
                                 _%hd199720199772%_
                                 _%hd199632200149%_
                                 _%hd199629200139%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199624199727%_)))))
                        (let () (declare (not safe)) (_%g199624199727%_))))
                (let () (declare (not safe)) (_%g199624199727%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199624199727%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199624199727%_))))))
                          (let () (declare (not safe)) (_%g199624199727%_)))))
                  (let () (declare (not safe)) (_%g199624199727%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig199290%_)
        (let* ((_%g199293199359%_
                (lambda (_%g199294199355%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199294199355%_))))
               (_%g199292199606%_
                (lambda (_%g199294199363%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199294199363%_))
                      (let ((_%e199301199366%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199294199363%_))))
                        (let ((_%hd199300199370%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199301199366%_)))
                              (_%tl199299199373%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199301199366%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199299199373%_))
                              (let ((_%e199304199376%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199299199373%_))))
                                (let ((_%hd199303199380%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199304199376%_)))
                                      (_%tl199302199383%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199304199376%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd199303199380%_))
                                      (let ((_%e199305199386%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd199303199380%_))))
                                        (if (equal? _%e199305199386%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199302199383%_))
                                                (let ((_%e199308199390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199302199383%_))))
                                                  (let ((_%hd199307199394%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199308199390%_)))
                                                        (_%tl199306199397%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199308199390%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199307199394%_))
                                                        (let ((_%e199311199400%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199307199394%_))))
                  (let ((_%hd199310199404%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199311199400%_)))
                        (_%tl199309199407%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199311199400%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd199310199404%_))
                        (if (let ((__tmp202758 |gxc[1]#_g202759_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp202758
                               _%hd199310199404%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199309199407%_))
                                (let ((_%e199314199410%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199309199407%_))))
                                  (let ((_%hd199313199414%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199314199410%_)))
                                        (_%tl199312199417%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199314199410%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199312199417%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199306199397%_))
                                            (let ((_%e199317199420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199306199397%_))))
                                              (let ((_%hd199316199424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199317199420%_)))
                                                    (_%tl199315199427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199317199420%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199316199424%_))
                                                    (let ((_%e199318199430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199316199424%_))))
                                                      (if (equal? _%e199318199430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199315199427%_))
                      (let ((_%e199321199434%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199315199427%_))))
                        (let ((_%hd199320199438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199321199434%_)))
                              (_%tl199319199441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199321199434%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199320199438%_))
                              (let ((_%e199324199444%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd199320199438%_))))
                                (let ((_%hd199323199448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199324199444%_)))
                                      (_%tl199322199451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199324199444%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199323199448%_))
                                      (if (let ((__tmp202760
                                                 |gxc[1]#_g202761_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp202760
                                             _%hd199323199448%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199322199451%_))
                                              (let ((_%e199327199454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199322199451%_))))
                                                (let ((_%hd199326199458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199327199454%_)))
                                                      (_%tl199325199461%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199327199454%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199325199461%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199319199441%_))
                                                          (let ((_%e199330199464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl199319199441%_))))
                    (let ((_%hd199329199468%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199330199464%_)))
                          (_%tl199328199471%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199330199464%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199329199468%_))
                          (let ((_%e199331199474%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199329199468%_))))
                            (if (equal? _%e199331199474%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199328199471%_))
                                    (let ((_%e199334199478%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl199328199471%_))))
                                      (let ((_%hd199333199482%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199334199478%_)))
                                            (_%tl199332199485%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199334199478%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199333199482%_))
                                            (let ((_%e199337199488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199333199482%_))))
                                              (let ((_%hd199336199492%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199337199488%_)))
                                                    (_%tl199335199495%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199337199488%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199336199492%_))
                                                    (if (let ((__tmp202762
                                                               |gxc[1]#_g202763_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp202762
                                                           _%hd199336199492%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199335199495%_))
                                                            (let ((_%e199340199498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl199335199495%_))))
                      (let ((_%hd199339199502%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199340199498%_)))
                            (_%tl199338199505%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199340199498%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199338199505%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199332199485%_))
                                (let ((_%e199343199508%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199332199485%_))))
                                  (let ((_%hd199342199512%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199343199508%_)))
                                        (_%tl199341199515%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199343199508%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd199342199512%_))
                                        (let ((_%e199344199518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199342199512%_))))
                                          (if (equal? _%e199344199518%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199341199515%_))
                                                  (let ((_%e199347199522%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199341199515%_))))
                                                    (let ((_%hd199346199526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199347199522%_)))
                                                          (_%tl199345199529%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199347199522%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199346199526%_))
                                                          (let ((_%e199350199532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd199346199526%_))))
                    (let ((_%hd199349199536%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199350199532%_)))
                          (_%tl199348199539%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199350199532%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199349199536%_))
                          (if (let ((__tmp202764 |gxc[1]#_g202765_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp202764
                                 _%hd199349199536%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199348199539%_))
                                  (let ((_%e199353199542%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199348199539%_))))
                                    (let ((_%hd199352199546%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199353199542%_)))
                                          (_%tl199351199549%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199353199542%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199351199549%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199345199529%_))
                                              ((lambda (_%L199552%_
                                                        _%L199554%_
                                                        _%L199555%_
                                                        _%L199556%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L199552%_))
                                                     (cons _%L199552%_
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
                                                 (cons _%L199555%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd199352199546%_
                                               _%hd199339199502%_
                                               _%hd199326199458%_
                                               _%hd199313199414%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199293199359%_
                                                 _%g199294199363%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199293199359%_
                                             _%g199294199363%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199293199359%_ _%g199294199363%_)))
                              (let ()
                                (declare (not safe))
                                (_%g199293199359%_ _%g199294199363%_)))
                          (let ()
                            (declare (not safe))
                            (_%g199293199359%_ _%g199294199363%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199293199359%_ _%g199294199363%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199293199359%_
                                                     _%g199294199363%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199293199359%_
                                                 _%g199294199363%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199293199359%_
                                           _%g199294199363%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199293199359%_ _%g199294199363%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199293199359%_ _%g199294199363%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g199293199359%_ _%g199294199363%_)))
                (let ()
                  (declare (not safe))
                  (_%g199293199359%_ _%g199294199363%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199293199359%_
                                                       _%g199294199363%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199293199359%_
                                               _%g199294199363%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199293199359%_ _%g199294199363%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199293199359%_ _%g199294199363%_))))
                          (let ()
                            (declare (not safe))
                            (_%g199293199359%_ _%g199294199363%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g199293199359%_ _%g199294199363%_)))
              (let ()
                (declare (not safe))
                (_%g199293199359%_ _%g199294199363%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199293199359%_
                                                 _%g199294199363%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199293199359%_
                                             _%g199294199363%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199293199359%_
                                         _%g199294199363%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199293199359%_ _%g199294199363%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199293199359%_ _%g199294199363%_)))
                  (let ()
                    (declare (not safe))
                    (_%g199293199359%_ _%g199294199363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199293199359%_
                                                       _%g199294199363%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199293199359%_
                                               _%g199294199363%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199293199359%_
                                           _%g199294199363%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199293199359%_ _%g199294199363%_)))
                            (let ()
                              (declare (not safe))
                              (_%g199293199359%_ _%g199294199363%_)))
                        (let ()
                          (declare (not safe))
                          (_%g199293199359%_ _%g199294199363%_)))))
                (let ()
                  (declare (not safe))
                  (_%g199293199359%_ _%g199294199363%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199293199359%_
                                                   _%g199294199363%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199293199359%_
                                               _%g199294199363%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199293199359%_
                                         _%g199294199363%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199293199359%_ _%g199294199363%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g199293199359%_ _%g199294199363%_))))))
          (declare (not safe))
          (_%g199292199606%_ _%sig199290%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx200378%_)
        (let* ((_%g200381200399%_
                (lambda (_%g200382200395%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200382200395%_))))
               (_%g200380200454%_
                (lambda (_%g200382200403%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200382200403%_))
                      (let ((_%e200387200406%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200382200403%_))))
                        (let ((_%hd200386200410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200387200406%_)))
                              (_%tl200385200413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200387200406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200385200413%_))
                              (let ((_%e200390200416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200385200413%_))))
                                (let ((_%hd200389200420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200390200416%_)))
                                      (_%tl200388200423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200390200416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200388200423%_))
                                      (let ((_%e200393200426%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200388200423%_))))
                                        (let ((_%hd200392200430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200393200426%_)))
                                              (_%tl200391200433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200393200426%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200391200433%_))
                                              ((lambda (_%L200436%_
                                                        _%L200438%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200438%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200436%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx200378%_
                                                          _%L200438%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx200378%_
                                                          _%L200436%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200438%_
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
                                                   (cons _%L200436%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200381200399%_
                                                      _%g200382200403%_)))
                                               _%hd200392200430%_
                                               _%hd200389200420%_)
                                              (_%g200381200399%_
                                               _%g200382200403%_))))
                                      (_%g200381200399%_ _%g200382200403%_))))
                              (_%g200381200399%_ _%g200382200403%_))))
                      (_%g200381200399%_ _%g200382200403%_)))))
          (_%g200380200454%_ _%stx200378%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx200458%_)
        (let* ((_%g200461200485%_
                (lambda (_%g200462200481%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200462200481%_))))
               (_%g200460200768%_
                (lambda (_%g200462200489%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200462200489%_))
                      (let ((_%e200467200492%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200462200489%_))))
                        (let ((_%hd200466200496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200467200492%_)))
                              (_%tl200465200499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200467200492%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200465200499%_))
                              (let ((_%e200470200502%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200465200499%_))))
                                (let ((_%hd200469200506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200470200502%_)))
                                      (_%tl200468200509%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200470200502%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200468200509%_))
                                      (let ((_g202766_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200468200509%_
                                                '0))))
                                        (begin
                                          (let ((_g202767_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202766_)
                                                       (##vector-length
                                                        _g202766_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202767_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202767_)))
                                          (let ((_%target200471200512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202766_ 0)))
                                                (_%tl200473200515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202766_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200473200515%_))
                                                (letrec ((_%loop200474200518%_
                                                          (lambda (_%hd200472200522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature200478200525%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200472200522%_))
                        (let ((_%e200475200528%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200472200522%_))))
                          (let ((_%lp-hd200476200532%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200475200528%_)))
                                (_%lp-tl200477200535%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200475200528%_))))
                            (_%loop200474200518%_
                             _%lp-tl200477200535%_
                             (cons _%lp-hd200476200532%_
                                   _%signature200478200525%_))))
                        (let ((_%signature200479200538%_
                               (reverse _%signature200478200525%_)))
                          ((lambda (_%L200542%_ _%L200544%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200544%_))
                                 (let* ((_%g200562200577%_
                                         (lambda (_%g200563200573%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200563200573%_))))
                                        (_%g200561200756%_
                                         (lambda (_%g200563200581%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200563200581%_))
                                               (let ((_%e200568200584%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200563200581%_))))
                                                 (let ((_%hd200567200588%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200568200584%_)))
                                                       (_%tl200566200591%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200568200584%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200566200591%_))
                                                       (let ((_%e200571200594%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200566200591%_))))
                 (let ((_%hd200570200598%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200571200594%_)))
                       (_%tl200569200601%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200571200594%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200569200601%_))
                       ((lambda (_%L200604%_ _%L200606%_)
                          (let ()
                            (let* ((_%g200622200630%_
                                    (lambda (_%g200623200626%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g200623200626%_))))
                                   (_%g200621200752%_
                                    (lambda (_%g200623200634%_)
                                      ((lambda (_%L200637%_)
                                         (let ()
                                           (let* ((_%unchecked200650%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L200604%_)))
                                                  (_%g200653200661%_
                                                   (lambda (_%g200654200657%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g200654200657%_))))
                                                  (_%g200652200684%_
                                                   (lambda (_%g200654200665%_)
                                                     ((lambda (_%L200668%_)
                                                        (let ()
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (cons _%L200637%_ (cons _%L200668%_ '())))))
              _%g200654200665%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g200652200684%_
                                              (if _%unchecked200650%_
                                                  (let* ((_%g200688200703%_
                                                          (lambda (_%g200689200699%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g200689200699%_))))
                                                         (_%g200687200748%_
                                                          (lambda (_%g200689200707%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g200689200707%_))
                        (let ((_%e200694200710%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g200689200707%_))))
                          (let ((_%hd200693200714%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200694200710%_)))
                                (_%tl200692200717%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200694200710%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200692200717%_))
                                (let ((_%e200697200720%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200692200717%_))))
                                  (let ((_%hd200696200724%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200697200720%_)))
                                        (_%tl200695200727%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200697200720%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200695200727%_))
                                        ((lambda (_%L200730%_ _%L200732%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L200732%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L200606%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L200730%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd200696200724%_
                                         _%hd200693200714%_)
                                        (_%g200688200703%_
                                         _%g200689200707%_))))
                                (_%g200688200703%_ _%g200689200707%_))))
                        (_%g200688200703%_ _%g200689200707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g200687200748%_
                                                     _%unchecked200650%_))
                                                  '(begin))))))
                                       _%g200623200634%_))))
                              (_%g200621200752%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L200544%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200606%_ '()))
                     (cons '#f (cons 'signature: (cons _%L200604%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd200570200598%_
                        _%hd200567200588%_)
                       (_%g200562200577%_ _%g200563200581%_))))
               (_%g200562200577%_ _%g200563200581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200562200577%_
                                                _%g200563200581%_)))))
                                   (_%g200561200756%_
                                    (let ((__tmp202768
                                           (let ((__tmp202769
                                                  (lambda (_%g200759200762%_
                                                           _%g200760200765%_)
                                                    (cons _%g200759200762%_
                                                          _%g200760200765%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp202769
                                              '()
                                              _%L200542%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx200458%_
                                       _%L200544%_
                                       __tmp202768))))
                                 (_%g200461200485%_ _%g200462200489%_)))
                           _%signature200479200538%_
                           _%hd200469200506%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200474200518%_
                                                   _%target200471200512%_
                                                   '()))
                                                (_%g200461200485%_
                                                 _%g200462200489%_)))))
                                      (_%g200461200485%_ _%g200462200489%_))))
                              (_%g200461200485%_ _%g200462200489%_))))
                      (_%g200461200485%_ _%g200462200489%_)))))
          (_%g200460200768%_ _%stx200458%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx200773%_)
        (let* ((_%g200776200800%_
                (lambda (_%g200777200796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200777200796%_))))
               (_%g200775201614%_
                (lambda (_%g200777200804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200777200804%_))
                      (let ((_%e200782200807%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200777200804%_))))
                        (let ((_%hd200781200811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200782200807%_)))
                              (_%tl200780200814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200782200807%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200780200814%_))
                              (let ((_%e200785200817%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200780200814%_))))
                                (let ((_%hd200784200821%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200785200817%_)))
                                      (_%tl200783200824%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200785200817%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200783200824%_))
                                      (let ((_g202770_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200783200824%_
                                                '0))))
                                        (begin
                                          (let ((_g202771_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202770_)
                                                       (##vector-length
                                                        _g202770_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202771_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202771_)))
                                          (let ((_%target200786200827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202770_ 0)))
                                                (_%tl200788200830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202770_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200788200830%_))
                                                (letrec ((_%loop200789200833%_
                                                          (lambda (_%hd200787200837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature200793200840%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200787200837%_))
                        (let ((_%e200790200843%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200787200837%_))))
                          (let ((_%lp-hd200791200847%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200790200843%_)))
                                (_%lp-tl200792200850%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200790200843%_))))
                            (_%loop200789200833%_
                             _%lp-tl200792200850%_
                             (cons _%lp-hd200791200847%_
                                   _%case-signature200793200840%_))))
                        (let ((_%case-signature200794200853%_
                               (reverse _%case-signature200793200840%_)))
                          ((lambda (_%L200857%_ _%L200859%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200859%_))
                                 (let* ((_%signatures200890%_
                                         (map (lambda (_%g200876200878%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx200773%_
                                                   _%L200859%_
                                                   _%g200876200878%_)))
                                              (let ((__tmp202772
                                                     (lambda (_%g200881200884%_
                                                              _%g200882200887%_)
                                                       (cons _%g200881200884%_
                                                             _%g200882200887%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp202772
                                                 '()
                                                 _%L200857%_))))
                                        (_%g200893200919%_
                                         (lambda (_%g200894200915%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200894200915%_))))
                                        (_%g200892201610%_
                                         (lambda (_%g200894200923%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200894200923%_))
                                               (let ((_g202773_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200894200923%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202774_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202773_)
                        (##vector-length _g202773_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202774_ 2)))
                 (error "Context expects 2 values" _g202774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200897200926%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202773_
                                                             0)))
                                                         (_%tl200899200929%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202773_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200899200929%_))
                                                         (letrec ((_%loop200900200932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200898200936%_
                                    _%sig200904200939%_
                                    _%arity200905200941%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200898200936%_))
                                 (let ((_%e200901200944%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200898200936%_))))
                                   (let ((_%lp-hd200902200948%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200901200944%_)))
                                         (_%lp-tl200903200951%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200901200944%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200902200948%_))
                                         (let ((_%e200910200954%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200902200948%_))))
                                           (let ((_%hd200909200958%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200910200954%_)))
                                                 (_%tl200908200961%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200910200954%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200908200961%_))
                                                 (let ((_%e200913200964%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200908200961%_))))
                                                   (let ((_%hd200912200968%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200913200964%_)))
                                                         (_%tl200911200971%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200913200964%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200911200971%_))
                                                         (_%loop200900200932%_
                                                          _%lp-tl200903200951%_
                                                          (cons _%hd200912200968%_
                                                                _%sig200904200939%_)
                                                          (cons _%hd200909200958%_
                                                                _%arity200905200941%_))
                                                         (_%g200893200919%_
                                                          _%g200894200923%_))))
                                                 (_%g200893200919%_
                                                  _%g200894200923%_))))
                                         (_%g200893200919%_
                                          _%g200894200923%_))))
                                 (let ((_%sig200906200974%_
                                        (reverse _%sig200904200939%_))
                                       (_%arity200907200977%_
                                        (reverse _%arity200905200941%_)))
                                   ((lambda (_%L200980%_ _%L200982%_)
                                      (let ()
                                        (let* ((_%g200999201007%_
                                                (lambda (_%g201000201003%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g201000201003%_))))
                                               (_%g200998201595%_
                                                (lambda (_%g201000201011%_)
                                                  ((lambda (_%L201014%_)
                                                     (let ()
                                                       (let* ((_%g201027201035%_
                                                               (lambda (_%g201028201031%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g201028201031%_))))
                      (_%g201026201057%_
                       (lambda (_%g201028201039%_)
                         ((lambda (_%L201042%_)
                            (let ()
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'begin))
                                    (cons _%L201014%_
                                          (cons _%L201042%_ '())))))
                          _%g201028201039%_))))
                 (_%g201026201057%_
                  (let ((_g202775_
                         (let _%loop201061%_ ((_%rest201064%_
                                               _%signatures200890%_)
                                              (_%unchecked-proc201066%_ '#f)
                                              (_%unchecked-clauses201067%_
                                               '()))
                           (let* ((_%rest201068201076%_ _%rest201064%_)
                                  (_%else201070201088%_
                                   (lambda ()
                                     (values _%unchecked-proc201066%_
                                             (reverse!
                                              _%unchecked-clauses201067%_))))
                                  (_%K201072201460%_
                                   (lambda (_%rest201092%_ _%hd201094%_)
                                     (let* ((_%g201096201169%_
                                             (lambda (_%g201097201165%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g201097201165%_))))
                                            (_%g201095201456%_
                                             (lambda (_%g201097201173%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g201097201173%_))
                                                   (let ((_%e201105201176%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g201097201173%_))))
                                                     (let ((_%hd201104201180%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201105201176%_)))
                                                           (_%tl201103201183%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201105201176%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl201103201183%_))
                                                           (let ((_%e201108201186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl201103201183%_))))
                     (let ((_%hd201107201190%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201108201186%_)))
                           (_%tl201106201193%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201108201186%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd201107201190%_))
                           (let ((_%e201111201196%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd201107201190%_))))
                             (let ((_%hd201110201200%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201111201196%_)))
                                   (_%tl201109201203%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201111201196%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl201109201203%_))
                                   (let ((_%e201114201206%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl201109201203%_))))
                                     (let ((_%hd201113201210%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201114201206%_)))
                                           (_%tl201112201213%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201114201206%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd201113201210%_))
                                           (let ((_%e201115201216%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd201113201210%_))))
                                             (if (equal? _%e201115201216%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201112201213%_))
                                                     (let ((_%e201118201220%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl201112201213%_))))
                                                       (let ((_%hd201117201224%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e201118201220%_)))
                     (_%tl201116201227%_
                      (let () (declare (not safe)) (##cdr _%e201118201220%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd201117201224%_))
                     (let ((_%e201121201230%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd201117201224%_))))
                       (let ((_%hd201120201234%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201121201230%_)))
                             (_%tl201119201237%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201121201230%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd201120201234%_))
                             (if (let ((__tmp202777 |gxc[1]#_g202778_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp202777
                                    _%hd201120201234%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201119201237%_))
                                     (let ((_%e201124201240%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201119201237%_))))
                                       (let ((_%hd201123201244%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201124201240%_)))
                                             (_%tl201122201247%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201124201240%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl201122201247%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201116201227%_))
                                                 (let ((_%e201127201250%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201116201227%_))))
                                                   (let ((_%hd201126201254%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201127201250%_)))
                                                         (_%tl201125201257%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201127201250%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd201126201254%_))
                                                         (let ((_%e201128201260%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd201126201254%_))))
                   (if (equal? _%e201128201260%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl201125201257%_))
                           (let ((_%e201131201264%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl201125201257%_))))
                             (let ((_%hd201130201268%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e201131201264%_)))
                                   (_%tl201129201271%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e201131201264%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd201130201268%_))
                                   (let ((_%e201134201274%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd201130201268%_))))
                                     (let ((_%hd201133201278%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201134201274%_)))
                                           (_%tl201132201281%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201134201274%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd201133201278%_))
                                           (if (let ((__tmp202779
                                                      |gxc[1]#_g202780_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp202779
                                                  _%hd201133201278%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl201132201281%_))
                                                   (let ((_%e201137201284%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl201132201281%_))))
                                                     (let ((_%hd201136201288%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201137201284%_)))
                                                           (_%tl201135201291%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201137201284%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl201135201291%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl201129201271%_))
                       (let ((_%e201140201294%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl201129201271%_))))
                         (let ((_%hd201139201298%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201140201294%_)))
                               (_%tl201138201301%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201140201294%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd201139201298%_))
                               (let ((_%e201141201304%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd201139201298%_))))
                                 (if (equal? _%e201141201304%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl201138201301%_))
                                         (let ((_%e201144201308%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl201138201301%_))))
                                           (let ((_%hd201143201312%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201144201308%_)))
                                                 (_%tl201142201315%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201144201308%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201143201312%_))
                                                 (let ((_%e201147201318%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd201143201312%_))))
                                                   (let ((_%hd201146201322%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201147201318%_)))
                                                         (_%tl201145201325%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201147201318%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd201146201322%_))
                                                         (if (let ((__tmp202781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g202782_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp202781 _%hd201146201322%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl201145201325%_))
                         (let ((_%e201150201328%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl201145201325%_))))
                           (let ((_%hd201149201332%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201150201328%_)))
                                 (_%tl201148201335%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201150201328%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl201148201335%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201142201315%_))
                                     (let ((_%e201153201338%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201142201315%_))))
                                       (let ((_%hd201152201342%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201153201338%_)))
                                             (_%tl201151201345%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201153201338%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd201152201342%_))
                                             (let ((_%e201154201348%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd201152201342%_))))
                                               (if (equal? _%e201154201348%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201151201345%_))
                                                       (let ((_%e201157201352%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201151201345%_))))
                 (let ((_%hd201156201356%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201157201352%_)))
                       (_%tl201155201359%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201157201352%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd201156201356%_))
                       (let ((_%e201160201362%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd201156201356%_))))
                         (let ((_%hd201159201366%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201160201362%_)))
                               (_%tl201158201369%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201160201362%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd201159201366%_))
                               (if (let ((__tmp202783 |gxc[1]#_g202784_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp202783
                                      _%hd201159201366%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl201158201369%_))
                                       (let ((_%e201163201372%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl201158201369%_))))
                                         (let ((_%hd201162201376%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201163201372%_)))
                                               (_%tl201161201379%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201163201372%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl201161201379%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl201155201359%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl201106201193%_))
                                                       ((lambda (_%L201382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L201384%_
                         _%L201385%_
                         _%L201386%_
                         _%L201387%_)
                  (let ((_%clause201448%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201387%_ '()))
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
                                       (cons _%L201385%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked201450%_
                         (let () (declare (not safe)) (gx#stx-e _%L201382%_))))
                    (_%loop201061%_
                     _%rest201092%_
                     (let ((_%$e201452%_ _%unchecked201450%_))
                       (if _%$e201452%_ _%$e201452%_ _%unchecked-proc201066%_))
                     (cons _%clause201448%_ _%unchecked-clauses201067%_))))
                _%hd201162201376%_
                _%hd201149201332%_
                _%hd201136201288%_
                _%hd201123201244%_
                _%hd201104201180%_)
               (_%g201096201169%_ _%g201097201173%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201096201169%_
                                                    _%g201097201173%_))
                                               (_%g201096201169%_
                                                _%g201097201173%_))))
                                       (_%g201096201169%_ _%g201097201173%_))
                                   (_%g201096201169%_ _%g201097201173%_))
                               (_%g201096201169%_ _%g201097201173%_))))
                       (_%g201096201169%_ _%g201097201173%_))))
               (_%g201096201169%_ _%g201097201173%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201096201169%_
                                                    _%g201097201173%_)))
                                             (_%g201096201169%_
                                              _%g201097201173%_))))
                                     (_%g201096201169%_ _%g201097201173%_))
                                 (_%g201096201169%_ _%g201097201173%_))))
                         (_%g201096201169%_ _%g201097201173%_))
                     (_%g201096201169%_ _%g201097201173%_))
                 (_%g201096201169%_ _%g201097201173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201096201169%_
                                                  _%g201097201173%_))))
                                         (_%g201096201169%_ _%g201097201173%_))
                                     (_%g201096201169%_ _%g201097201173%_)))
                               (_%g201096201169%_ _%g201097201173%_))))
                       (_%g201096201169%_ _%g201097201173%_))
                   (_%g201096201169%_ _%g201097201173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201096201169%_
                                                    _%g201097201173%_))
                                               (_%g201096201169%_
                                                _%g201097201173%_))
                                           (_%g201096201169%_
                                            _%g201097201173%_))))
                                   (_%g201096201169%_ _%g201097201173%_))))
                           (_%g201096201169%_ _%g201097201173%_))
                       (_%g201096201169%_ _%g201097201173%_)))
                 (_%g201096201169%_ _%g201097201173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201096201169%_
                                                  _%g201097201173%_))
                                             (_%g201096201169%_
                                              _%g201097201173%_))))
                                     (_%g201096201169%_ _%g201097201173%_))
                                 (_%g201096201169%_ _%g201097201173%_))
                             (_%g201096201169%_ _%g201097201173%_))))
                     (_%g201096201169%_ _%g201097201173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201096201169%_
                                                      _%g201097201173%_))
                                                 (_%g201096201169%_
                                                  _%g201097201173%_)))
                                           (_%g201096201169%_
                                            _%g201097201173%_))))
                                   (_%g201096201169%_ _%g201097201173%_))))
                           (_%g201096201169%_ _%g201097201173%_))))
                   (_%g201096201169%_ _%g201097201173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201096201169%_
                                                    _%g201097201173%_)))))
                                       (_%g201095201456%_ _%hd201094%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest201068201076%_))
                                 (let ((_%hd201073201464%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest201068201076%_)))
                                       (_%tl201074201467%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest201068201076%_))))
                                   (let* ((_%hd201470%_ _%hd201073201464%_)
                                          (_%rest201473%_ _%tl201074201467%_))
                                     (_%K201072201460%_
                                      _%rest201473%_
                                      _%hd201470%_)))
                                 (_%else201070201088%_))))))
                    (begin
                      (let ((_g202776_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202775_)
                                   (##vector-length _g202775_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202776_ 2)))
                            (error "Context expects 2 values" _g202776_)))
                      (let ((_%unchecked-proc201476%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202775_ 0)))
                            (_%unchecked-clauses201478%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202775_ 1))))
                        (if _%unchecked-proc201476%_
                            (let* ((_%g201480201504%_
                                    (lambda (_%g201481201500%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g201481201500%_))))
                                   (_%g201479201591%_
                                    (lambda (_%g201481201508%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g201481201508%_))
                                          (let ((_%e201486201511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g201481201508%_))))
                                            (let ((_%hd201485201515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201486201511%_)))
                                                  (_%tl201484201518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201486201511%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201484201518%_))
                                                  (let ((_%e201489201521%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201484201518%_))))
                                                    (let ((_%hd201488201525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201489201521%_)))
                                                          (_%tl201487201528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201489201521%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd201488201525%_))
                                                          (let ((_g202785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd201488201525%_ '0))))
                    (begin
                      (let ((_g202786_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g202785_)
                                   (##vector-length _g202785_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g202786_ 2)))
                            (error "Context expects 2 values" _g202786_)))
                      (let ((_%target201490201531%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202785_ 0)))
                            (_%tl201492201534%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g202785_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201492201534%_))
                            (letrec ((_%loop201493201537%_
                                      (lambda (_%hd201491201541%_
                                               _%clause201497201544%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd201491201541%_))
                                            (let ((_%e201494201547%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd201491201541%_))))
                                              (let ((_%lp-hd201495201551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201494201547%_)))
                                                    (_%lp-tl201496201554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201494201547%_))))
                                                (_%loop201493201537%_
                                                 _%lp-tl201496201554%_
                                                 (cons _%lp-hd201495201551%_
                                                       _%clause201497201544%_))))
                                            (let ((_%clause201498201557%_
                                                   (reverse _%clause201497201544%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201487201528%_))
                                                  ((lambda (_%L201561%_
                                                            _%L201563%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L201563%_
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
                                                   (let ((__tmp202787
                                                          (lambda (_%g201582201585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g201583201588%_)
                    (cons _%g201582201585%_ _%g201583201588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp202787
                                                      '()
                                                      _%L201561%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause201498201557%_
                                                   _%hd201485201515%_)
                                                  (_%g201480201504%_
                                                   _%g201481201508%_)))))))
                              (_%loop201493201537%_
                               _%target201490201531%_
                               '()))
                            (_%g201480201504%_ _%g201481201508%_)))))
                  (_%g201480201504%_ _%g201481201508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g201480201504%_
                                                   _%g201481201508%_))))
                                          (_%g201480201504%_
                                           _%g201481201508%_)))))
                              (_%g201479201591%_
                               (list _%unchecked-proc201476%_
                                     _%unchecked-clauses201478%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g201000201011%_))))
                                          (_%g200998201595%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L200859%_
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
                                            _%L200980%_
                                            _%L200982%_))
                                         (let ((__tmp202788
                                                (lambda (_%g201598201602%_
                                                         _%g201599201605%_
                                                         _%g201600201607%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g201599201605%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g201598201602%_ '())))))
                _%g201600201607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp202788
                                            '()
                                            _%L200980%_
                                            _%L200982%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200906200974%_
                                    _%arity200907200977%_))))))
                   (_%loop200900200932%_ _%target200897200926%_ '() '()))
                 (_%g200893200919%_ _%g200894200923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200893200919%_
                                                _%g200894200923%_)))))
                                   (_%g200892201610%_ _%signatures200890%_))
                                 (_%g200776200800%_ _%g200777200804%_)))
                           _%case-signature200794200853%_
                           _%hd200784200821%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200789200833%_
                                                   _%target200786200827%_
                                                   '()))
                                                (_%g200776200800%_
                                                 _%g200777200804%_)))))
                                      (_%g200776200800%_ _%g200777200804%_))))
                              (_%g200776200800%_ _%g200777200804%_))))
                      (_%g200776200800%_ _%g200777200804%_)))))
          (_%g200775201614%_ _%stx200773%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx201622%_)
        (let* ((_%__stx202604202605%_ _%$stx201622%_)
               (_%g201628201688%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202604202605%_)))))
          (let ((_%__kont202607202608%_
                 (lambda (_%L201910%_ _%L201912%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201912%_ '()))
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
                                                       (cons _%L201912%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201910%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202609202610%_
                 (lambda (_%L201835%_ _%L201837%_ _%L201838%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201838%_ '()))
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
                                                       (cons _%L201838%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201837%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201835%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202611202612%_
                 (lambda (_%L201749%_ _%L201751%_ _%L201752%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201752%_ '()))
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
                                                       (cons _%L201752%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201751%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201749%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202604202605%_))
                (let ((_%e201634201866%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202604202605%_))))
                  (let ((_%tl201632201873%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201634201866%_)))
                        (_%hd201633201870%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201634201866%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201632201873%_))
                        (let ((_%e201637201876%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201632201873%_))))
                          (let ((_%tl201635201883%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201637201876%_)))
                                (_%hd201636201880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201637201876%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd201636201880%_))
                                (let ((_%e201638201886%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd201636201880%_))))
                                  (if (equal? _%e201638201886%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201635201883%_))
                                          (let ((_%e201641201890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201635201883%_))))
                                            (let ((_%tl201639201897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201641201890%_)))
                                                  (_%hd201640201894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201641201890%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201639201897%_))
                                                  (let ((_%e201644201900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201639201897%_))))
                                                    (let ((_%tl201642201907%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201644201900%_)))
                                                          (_%hd201643201904%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201644201900%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201642201907%_))
                                                          (_%__kont202607202608%_
                                                           _%hd201643201904%_
                                                           _%hd201640201894%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201628201688%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201628201688%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201628201688%_)))
                                      (if (equal? _%e201638201886%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201635201883%_))
                                              (let ((_%e201657201805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201635201883%_))))
                                                (let ((_%tl201655201812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201657201805%_)))
                                                      (_%hd201656201809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201657201805%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201655201812%_))
                                                      (let ((_%e201660201815%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201655201812%_))))
                (let ((_%tl201658201822%_
                       (let () (declare (not safe)) (##cdr _%e201660201815%_)))
                      (_%hd201659201819%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201660201815%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201658201822%_))
                      (let ((_%e201663201825%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201658201822%_))))
                        (let ((_%tl201661201832%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201663201825%_)))
                              (_%hd201662201829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201663201825%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201661201832%_))
                              (_%__kont202609202610%_
                               _%hd201662201829%_
                               _%hd201659201819%_
                               _%hd201656201809%_)
                              (let ()
                                (declare (not safe))
                                (_%g201628201688%_)))))
                      (let () (declare (not safe)) (_%g201628201688%_)))))
              (let () (declare (not safe)) (_%g201628201688%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201628201688%_)))
                                          (if (equal? _%e201638201886%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201635201883%_))
                                                  (let ((_%e201676201719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201635201883%_))))
                                                    (let ((_%tl201674201726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201676201719%_)))
                                                          (_%hd201675201723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201676201719%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201674201726%_))
                                                          (let ((_%e201679201729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl201674201726%_))))
                    (let ((_%tl201677201736%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201679201729%_)))
                          (_%hd201678201733%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201679201729%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201677201736%_))
                          (let ((_%e201682201739%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201677201736%_))))
                            (let ((_%tl201680201746%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201682201739%_)))
                                  (_%hd201681201743%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201682201739%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201680201746%_))
                                  (_%__kont202611202612%_
                                   _%hd201681201743%_
                                   _%hd201678201733%_
                                   _%hd201675201723%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g201628201688%_)))))
                          (let () (declare (not safe)) (_%g201628201688%_)))))
                  (let () (declare (not safe)) (_%g201628201688%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201628201688%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201628201688%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g201628201688%_)))))
                        (let () (declare (not safe)) (_%g201628201688%_)))))
                (let () (declare (not safe)) (_%g201628201688%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201934%_)
        (let* ((_%g201938201958%_
                (lambda (_%g201939201954%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201939201954%_))))
               (_%g201937202029%_
                (lambda (_%g201939201962%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201939201962%_))
                      (let ((_%e201943201965%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201939201962%_))))
                        (let ((_%hd201942201969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201943201965%_)))
                              (_%tl201941201972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201943201965%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201941201972%_))
                              (let ((_g202789_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201941201972%_
                                        '0))))
                                (begin
                                  (let ((_g202790_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202789_)
                                               (##vector-length _g202789_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202790_ 2)))
                                        (error "Context expects 2 values"
                                               _g202790_)))
                                  (let ((_%target201944201975%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202789_ 0)))
                                        (_%tl201946201978%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202789_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201946201978%_))
                                        (letrec ((_%loop201947201981%_
                                                  (lambda (_%hd201945201985%_
                                                           _%decl201951201988%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201945201985%_))
                                                        (let ((_%e201948201991%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201945201985%_))))
                  (let ((_%lp-hd201949201995%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201948201991%_)))
                        (_%lp-tl201950201998%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201948201991%_))))
                    (_%loop201947201981%_
                     _%lp-tl201950201998%_
                     (cons _%lp-hd201949201995%_ _%decl201951201988%_))))
                (let ((_%decl201952202001%_ (reverse _%decl201951201988%_)))
                  ((lambda (_%L202005%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp202791
                                  (lambda (_%g202020202023%_ _%g202021202026%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g202020202023%_)
                                          _%g202021202026%_))))
                             (declare (not safe))
                             (__foldr1 __tmp202791 '() _%L202005%_))))
                   _%decl201952202001%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201947201981%_
                                           _%target201944201975%_
                                           '()))
                                        (_%g201938201958%_
                                         _%g201939201962%_)))))
                              (_%g201938201958%_ _%g201939201962%_))))
                      (_%g201938201958%_ _%g201939201962%_)))))
          (_%g201937202029%_ _%$stx201934%_))))))
