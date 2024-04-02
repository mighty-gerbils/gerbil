(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g201224_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201238_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201240_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201242_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201244_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201257_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201259_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201261_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201263_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx194780%_)
        (let* ((_%g194784194802%_
                (lambda (_%g194785194798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194785194798%_))))
               (_%g194783194857%_
                (lambda (_%g194785194806%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194785194806%_))
                      (let ((_%e194790194809%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194785194806%_))))
                        (let ((_%hd194789194813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194790194809%_)))
                              (_%tl194788194816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194790194809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194788194816%_))
                              (let ((_%e194793194819%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl194788194816%_))))
                                (let ((_%hd194792194823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194793194819%_)))
                                      (_%tl194791194826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194793194819%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194791194826%_))
                                      (let ((_%e194796194829%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl194791194826%_))))
                                        (let ((_%hd194795194833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194796194829%_)))
                                              (_%tl194794194836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194796194829%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194794194836%_))
                                              ((lambda (_%L194839%_
                                                        _%L194841%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L194841%_))
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
                               (cons _%L194841%_ '()))
                         (cons _%L194839%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194784194802%_
                                                      _%g194785194806%_)))
                                               _%hd194795194833%_
                                               _%hd194792194823%_)
                                              (_%g194784194802%_
                                               _%g194785194806%_))))
                                      (_%g194784194802%_ _%g194785194806%_))))
                              (_%g194784194802%_ _%g194785194806%_))))
                      (_%g194784194802%_ _%g194785194806%_)))))
          (_%g194783194857%_ _%$stx194780%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx194861%_)
        (let* ((_%g194865194883%_
                (lambda (_%g194866194879%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194866194879%_))))
               (_%g194864194938%_
                (lambda (_%g194866194887%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194866194887%_))
                      (let ((_%e194871194890%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194866194887%_))))
                        (let ((_%hd194870194894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194871194890%_)))
                              (_%tl194869194897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194871194890%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194869194897%_))
                              (let ((_%e194874194900%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl194869194897%_))))
                                (let ((_%hd194873194904%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194874194900%_)))
                                      (_%tl194872194907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194874194900%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194872194907%_))
                                      (let ((_%e194877194910%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl194872194907%_))))
                                        (let ((_%hd194876194914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194877194910%_)))
                                              (_%tl194875194917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194877194910%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194875194917%_))
                                              ((lambda (_%L194920%_
                                                        _%L194922%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L194922%_))
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
                               (cons _%L194922%_ '()))
                         (cons _%L194920%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194865194883%_
                                                      _%g194866194887%_)))
                                               _%hd194876194914%_
                                               _%hd194873194904%_)
                                              (_%g194865194883%_
                                               _%g194866194887%_))))
                                      (_%g194865194883%_ _%g194866194887%_))))
                              (_%g194865194883%_ _%g194866194887%_))))
                      (_%g194865194883%_ _%g194866194887%_)))))
          (_%g194864194938%_ _%$stx194861%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx194942%_)
        (let* ((_%g194946194975%_
                (lambda (_%g194947194971%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194947194971%_))))
               (_%g194945195075%_
                (lambda (_%g194947194979%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194947194979%_))
                      (let ((_%e194952194982%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194947194979%_))))
                        (let ((_%hd194951194986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194952194982%_)))
                              (_%tl194950194989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194952194982%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194950194989%_))
                              (let ((_g201202_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194950194989%_
                                        '0))))
                                (begin
                                  (let ((_g201203_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201202_)
                                               (##vector-length _g201202_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201203_ 2)))
                                        (error "Context expects 2 values"
                                               _g201203_)))
                                  (let ((_%target194953194992%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201202_ 0)))
                                        (_%tl194955194995%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201202_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194955194995%_))
                                        (letrec ((_%loop194956194998%_
                                                  (lambda (_%hd194954195002%_
                                                           _%type194960195005%_
                                                           _%symbol194961195007%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194954195002%_))
                                                        (let ((_%e194957195010%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd194954195002%_))))
                  (let ((_%lp-hd194958195014%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194957195010%_)))
                        (_%lp-tl194959195017%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194957195010%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd194958195014%_))
                        (let ((_%e194966195020%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd194958195014%_))))
                          (let ((_%hd194965195024%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194966195020%_)))
                                (_%tl194964195027%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194966195020%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194964195027%_))
                                (let ((_%e194969195030%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl194964195027%_))))
                                  (let ((_%hd194968195034%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194969195030%_)))
                                        (_%tl194967195037%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194969195030%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194967195037%_))
                                        (_%loop194956194998%_
                                         _%lp-tl194959195017%_
                                         (cons _%hd194968195034%_
                                               _%type194960195005%_)
                                         (cons _%hd194965195024%_
                                               _%symbol194961195007%_))
                                        (_%g194946194975%_
                                         _%g194947194979%_))))
                                (_%g194946194975%_ _%g194947194979%_))))
                        (_%g194946194975%_ _%g194947194979%_))))
                (let ((_%type194962195040%_ (reverse _%type194960195005%_))
                      (_%symbol194963195043%_
                       (reverse _%symbol194961195007%_)))
                  ((lambda (_%L195046%_ _%L195048%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195046%_
                                _%L195048%_))
                             (let ((__tmp201204
                                    (lambda (_%g195063195067%_
                                             _%g195064195070%_
                                             _%g195065195072%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g195064195070%_
                                                        (cons _%g195063195067%_
                                                              '())))
                                            _%g195065195072%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201204
                                '()
                                _%L195046%_
                                _%L195048%_)))))
                   _%type194962195040%_
                   _%symbol194963195043%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194956194998%_
                                           _%target194953194992%_
                                           '()
                                           '()))
                                        (_%g194946194975%_
                                         _%g194947194979%_)))))
                              (_%g194946194975%_ _%g194947194979%_))))
                      (_%g194946194975%_ _%g194947194979%_)))))
          (_%g194945195075%_ _%$stx194942%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx195080%_)
        (let* ((_%__stx200513200514%_ _%$stx195080%_)
               (_%g195085195127%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200513200514%_)))))
          (let ((_%__kont200516200517%_
                 (lambda (_%L195255%_ _%L195257%_ _%L195258%_ _%L195259%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195259%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195258%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195257%_ '()))
                                           (cons _%L195255%_ '())))))))
                (_%__kont200518200519%_
                 (lambda (_%L195174%_ _%L195176%_ _%L195177%_ _%L195178%_)
                   (cons _%L195178%_
                         (cons _%L195177%_
                               (cons _%L195176%_
                                     (cons _%L195174%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match200552200553%_
                   (lambda (_%e195093195205%_
                            _%hd195092195209%_
                            _%tl195091195212%_
                            _%e195096195215%_
                            _%hd195095195219%_
                            _%tl195094195222%_
                            _%e195099195225%_
                            _%hd195098195229%_
                            _%tl195097195232%_
                            _%e195102195235%_
                            _%hd195101195239%_
                            _%tl195100195242%_
                            _%e195105195245%_
                            _%hd195104195249%_
                            _%tl195103195252%_)
                     (let ((_%L195255%_ _%hd195104195249%_)
                           (_%L195257%_ _%hd195101195239%_)
                           (_%L195258%_ _%hd195098195229%_)
                           (_%L195259%_ _%hd195095195219%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195259%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195258%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195257%_)))
                           (_%__kont200516200517%_
                            _%L195255%_
                            _%L195257%_
                            _%L195258%_
                            _%L195259%_)
                           (let ()
                             (declare (not safe))
                             (_%g195085195127%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200513200514%_))
                  (let ((_%e195093195205%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200513200514%_))))
                    (let ((_%tl195091195212%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195093195205%_)))
                          (_%hd195092195209%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195093195205%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195091195212%_))
                          (let ((_%e195096195215%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195091195212%_))))
                            (let ((_%tl195094195222%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195096195215%_)))
                                  (_%hd195095195219%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195096195215%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195094195222%_))
                                  (let ((_%e195099195225%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl195094195222%_))))
                                    (let ((_%tl195097195232%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195099195225%_)))
                                          (_%hd195098195229%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195099195225%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195097195232%_))
                                          (let ((_%e195102195235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl195097195232%_))))
                                            (let ((_%tl195100195242%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195102195235%_)))
                                                  (_%hd195101195239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195102195235%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195100195242%_))
                                                  (let ((_%e195105195245%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl195100195242%_))))
                                                    (let ((_%tl195103195252%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195105195245%_)))
                                                          (_%hd195104195249%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195105195245%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195103195252%_))
                                                          (_%__match200552200553%_
                                                           _%e195093195205%_
                                                           _%hd195092195209%_
                                                           _%tl195091195212%_
                                                           _%e195096195215%_
                                                           _%hd195095195219%_
                                                           _%tl195094195222%_
                                                           _%e195099195225%_
                                                           _%hd195098195229%_
                                                           _%tl195097195232%_
                                                           _%e195102195235%_
                                                           _%hd195101195239%_
                                                           _%tl195100195242%_
                                                           _%e195105195245%_
                                                           _%hd195104195249%_
                                                           _%tl195103195252%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g195085195127%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195100195242%_))
                                                      (_%__kont200518200519%_
                                                       _%hd195101195239%_
                                                       _%hd195098195229%_
                                                       _%hd195095195219%_
                                                       _%hd195092195209%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g195085195127%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g195085195127%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g195085195127%_)))))
                          (let () (declare (not safe)) (_%g195085195127%_)))))
                  (let () (declare (not safe)) (_%g195085195127%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195284%_)
        (let* ((_%g195288195323%_
                (lambda (_%g195289195319%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195289195319%_))))
               (_%g195287195442%_
                (lambda (_%g195289195327%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195289195327%_))
                      (let ((_%e195295195330%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195289195327%_))))
                        (let ((_%hd195294195334%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195295195330%_)))
                              (_%tl195293195337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195295195330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195293195337%_))
                              (let ((_g201205_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195293195337%_
                                        '0))))
                                (begin
                                  (let ((_g201206_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201205_)
                                               (##vector-length _g201205_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201206_ 2)))
                                        (error "Context expects 2 values"
                                               _g201206_)))
                                  (let ((_%target195296195340%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201205_ 0)))
                                        (_%tl195298195343%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201205_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195298195343%_))
                                        (letrec ((_%loop195299195346%_
                                                  (lambda (_%hd195297195350%_
                                                           _%symbol195303195353%_
                                                           _%method195304195355%_
                                                           _%type-t195305195357%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195297195350%_))
                                                        (let ((_%e195300195360%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195297195350%_))))
                  (let ((_%lp-hd195301195364%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195300195360%_)))
                        (_%lp-tl195302195367%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195300195360%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195301195364%_))
                        (let ((_%e195311195370%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195301195364%_))))
                          (let ((_%hd195310195374%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195311195370%_)))
                                (_%tl195309195377%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195311195370%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195309195377%_))
                                (let ((_%e195314195380%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195309195377%_))))
                                  (let ((_%hd195313195384%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195314195380%_)))
                                        (_%tl195312195387%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195314195380%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195312195387%_))
                                        (let ((_%e195317195390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195312195387%_))))
                                          (let ((_%hd195316195394%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195317195390%_)))
                                                (_%tl195315195397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195317195390%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195315195397%_))
                                                (_%loop195299195346%_
                                                 _%lp-tl195302195367%_
                                                 (cons _%hd195316195394%_
                                                       _%symbol195303195353%_)
                                                 (cons _%hd195313195384%_
                                                       _%method195304195355%_)
                                                 (cons _%hd195310195374%_
                                                       _%type-t195305195357%_))
                                                (_%g195288195323%_
                                                 _%g195289195327%_))))
                                        (_%g195288195323%_
                                         _%g195289195327%_))))
                                (_%g195288195323%_ _%g195289195327%_))))
                        (_%g195288195323%_ _%g195289195327%_))))
                (let ((_%symbol195306195400%_ (reverse _%symbol195303195353%_))
                      (_%method195307195403%_ (reverse _%method195304195355%_))
                      (_%type-t195308195405%_
                       (reverse _%type-t195305195357%_)))
                  ((lambda (_%L195408%_ _%L195410%_ _%L195411%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195408%_
                                _%L195410%_
                                _%L195411%_))
                             (let ((__tmp201207
                                    (lambda (_%g195427195432%_
                                             _%g195428195435%_
                                             _%g195429195437%_
                                             _%g195430195439%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g195429195437%_
                                                        (cons _%g195428195435%_
                                                              (cons _%g195427195432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g195430195439%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp201207
                                '()
                                _%L195408%_
                                _%L195410%_
                                _%L195411%_)))))
                   _%symbol195306195400%_
                   _%method195307195403%_
                   _%type-t195308195405%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195299195346%_
                                           _%target195296195340%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195288195323%_
                                         _%g195289195327%_)))))
                              (_%g195288195323%_ _%g195289195327%_))))
                      (_%g195288195323%_ _%g195289195327%_)))))
          (_%g195287195442%_ _%$stx195284%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx195447%_)
        (let* ((_%g195451195484%_
                (lambda (_%g195452195480%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195452195480%_))))
               (_%g195450195598%_
                (lambda (_%g195452195488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195452195488%_))
                      (let ((_%e195458195491%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195452195488%_))))
                        (let ((_%hd195457195495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195458195491%_)))
                              (_%tl195456195498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195458195491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195456195498%_))
                              (let ((_%e195461195501%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195456195498%_))))
                                (let ((_%hd195460195505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195461195501%_)))
                                      (_%tl195459195508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195461195501%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195459195508%_))
                                      (let ((_g201208_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195459195508%_
                                                '0))))
                                        (begin
                                          (let ((_g201209_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201208_)
                                                       (##vector-length
                                                        _g201208_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201209_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201209_)))
                                          (let ((_%target195462195511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201208_ 0)))
                                                (_%tl195464195514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201208_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195464195514%_))
                                                (letrec ((_%loop195465195517%_
                                                          (lambda (_%hd195463195521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol195469195524%_
                           _%method195470195526%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd195463195521%_))
                        (let ((_%e195466195529%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd195463195521%_))))
                          (let ((_%lp-hd195467195533%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195466195529%_)))
                                (_%lp-tl195468195536%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195466195529%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd195467195533%_))
                                (let ((_%e195475195539%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd195467195533%_))))
                                  (let ((_%hd195474195543%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195475195539%_)))
                                        (_%tl195473195546%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195475195539%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195473195546%_))
                                        (let ((_%e195478195549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195473195546%_))))
                                          (let ((_%hd195477195553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195478195549%_)))
                                                (_%tl195476195556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195478195549%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195476195556%_))
                                                (_%loop195465195517%_
                                                 _%lp-tl195468195536%_
                                                 (cons _%hd195477195553%_
                                                       _%symbol195469195524%_)
                                                 (cons _%hd195474195543%_
                                                       _%method195470195526%_))
                                                (_%g195451195484%_
                                                 _%g195452195488%_))))
                                        (_%g195451195484%_
                                         _%g195452195488%_))))
                                (_%g195451195484%_ _%g195452195488%_))))
                        (let ((_%symbol195471195559%_
                               (reverse _%symbol195469195524%_))
                              (_%method195472195562%_
                               (reverse _%method195470195526%_)))
                          ((lambda (_%L195565%_ _%L195567%_ _%L195568%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L195565%_
                                        _%L195567%_))
                                     (let ((__tmp201210
                                            (lambda (_%g195586195590%_
                                                     _%g195587195593%_
                                                     _%g195588195595%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L195568%_
                                                                (cons _%g195587195593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g195586195590%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g195588195595%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp201210
                                        '()
                                        _%L195565%_
                                        _%L195567%_)))))
                           _%symbol195471195559%_
                           _%method195472195562%_
                           _%hd195460195505%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop195465195517%_
                                                   _%target195462195511%_
                                                   '()
                                                   '()))
                                                (_%g195451195484%_
                                                 _%g195452195488%_)))))
                                      (_%g195451195484%_ _%g195452195488%_))))
                              (_%g195451195484%_ _%g195452195488%_))))
                      (_%g195451195484%_ _%g195452195488%_)))))
          (_%g195450195598%_ _%$stx195447%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx195603%_)
        (let* ((_%g195607195621%_
                (lambda (_%g195608195617%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195608195617%_))))
               (_%g195606195662%_
                (lambda (_%g195608195625%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195608195625%_))
                      (let ((_%e195612195628%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195608195625%_))))
                        (let ((_%hd195611195632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195612195628%_)))
                              (_%tl195610195635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195612195628%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195610195635%_))
                              (let ((_%e195615195638%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195610195635%_))))
                                (let ((_%hd195614195642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195615195638%_)))
                                      (_%tl195613195645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195615195638%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195613195645%_))
                                      ((lambda (_%L195648%_)
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
                                                           (cons _%L195648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195614195642%_)
                                      (_%g195607195621%_ _%g195608195625%_))))
                              (_%g195607195621%_ _%g195608195625%_))))
                      (_%g195607195621%_ _%g195608195625%_)))))
          (_%g195606195662%_ _%$stx195603%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx195666%_)
        (let* ((_%g195670195724%_
                (lambda (_%g195671195720%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195671195720%_))))
               (_%g195669195905%_
                (lambda (_%g195671195728%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195671195728%_))
                      (let ((_%e195685195731%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195671195728%_))))
                        (let ((_%hd195684195735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195685195731%_)))
                              (_%tl195683195738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195685195731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195683195738%_))
                              (let ((_%e195688195741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195683195738%_))))
                                (let ((_%hd195687195745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195688195741%_)))
                                      (_%tl195686195748%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195688195741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195686195748%_))
                                      (let ((_%e195691195751%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195686195748%_))))
                                        (let ((_%hd195690195755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195691195751%_)))
                                              (_%tl195689195758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195691195751%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195689195758%_))
                                              (let ((_%e195694195761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195689195758%_))))
                                                (let ((_%hd195693195765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195694195761%_)))
                                                      (_%tl195692195768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195694195761%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195692195768%_))
                                                      (let ((_%e195697195771%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl195692195768%_))))
                (let ((_%hd195696195775%_
                       (let () (declare (not safe)) (##car _%e195697195771%_)))
                      (_%tl195695195778%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195697195771%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl195695195778%_))
                      (let ((_%e195700195781%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl195695195778%_))))
                        (let ((_%hd195699195785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195700195781%_)))
                              (_%tl195698195788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195700195781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195698195788%_))
                              (let ((_%e195703195791%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195698195788%_))))
                                (let ((_%hd195702195795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195703195791%_)))
                                      (_%tl195701195798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195703195791%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195701195798%_))
                                      (let ((_%e195706195801%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195701195798%_))))
                                        (let ((_%hd195705195805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195706195801%_)))
                                              (_%tl195704195808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195706195801%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195704195808%_))
                                              (let ((_%e195709195811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195704195808%_))))
                                                (let ((_%hd195708195815%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195709195811%_)))
                                                      (_%tl195707195818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195709195811%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195707195818%_))
                                                      (let ((_%e195712195821%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl195707195818%_))))
                (let ((_%hd195711195825%_
                       (let () (declare (not safe)) (##car _%e195712195821%_)))
                      (_%tl195710195828%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195712195821%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl195710195828%_))
                      (let ((_%e195715195831%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl195710195828%_))))
                        (let ((_%hd195714195835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195715195831%_)))
                              (_%tl195713195838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195715195831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195713195838%_))
                              (let ((_%e195718195841%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195713195838%_))))
                                (let ((_%hd195717195845%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195718195841%_)))
                                      (_%tl195716195848%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195718195841%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195716195848%_))
                                      ((lambda (_%L195851%_
                                                _%L195853%_
                                                _%L195854%_
                                                _%L195855%_
                                                _%L195856%_
                                                _%L195857%_
                                                _%L195858%_
                                                _%L195859%_
                                                _%L195860%_
                                                _%L195861%_
                                                _%L195862%_)
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
                                                           (cons _%L195862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L195861%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L195860%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195859%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195858%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195857%_ '()))
                                           (cons _%L195856%_
                                                 (cons _%L195855%_
                                                       (cons _%L195854%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L195853%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L195851%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd195717195845%_
                                       _%hd195714195835%_
                                       _%hd195711195825%_
                                       _%hd195708195815%_
                                       _%hd195705195805%_
                                       _%hd195702195795%_
                                       _%hd195699195785%_
                                       _%hd195696195775%_
                                       _%hd195693195765%_
                                       _%hd195690195755%_
                                       _%hd195687195745%_)
                                      (_%g195670195724%_ _%g195671195728%_))))
                              (_%g195670195724%_ _%g195671195728%_))))
                      (_%g195670195724%_ _%g195671195728%_))))
              (_%g195670195724%_ _%g195671195728%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195670195724%_
                                               _%g195671195728%_))))
                                      (_%g195670195724%_ _%g195671195728%_))))
                              (_%g195670195724%_ _%g195671195728%_))))
                      (_%g195670195724%_ _%g195671195728%_))))
              (_%g195670195724%_ _%g195671195728%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195670195724%_
                                               _%g195671195728%_))))
                                      (_%g195670195724%_ _%g195671195728%_))))
                              (_%g195670195724%_ _%g195671195728%_))))
                      (_%g195670195724%_ _%g195671195728%_)))))
          (_%g195669195905%_ _%$stx195666%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx195909%_)
        (let* ((_%g195913195927%_
                (lambda (_%g195914195923%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195914195923%_))))
               (_%g195912195968%_
                (lambda (_%g195914195931%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195914195931%_))
                      (let ((_%e195918195934%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195914195931%_))))
                        (let ((_%hd195917195938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195918195934%_)))
                              (_%tl195916195941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195918195934%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195916195941%_))
                              (let ((_%e195921195944%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195916195941%_))))
                                (let ((_%hd195920195948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195921195944%_)))
                                      (_%tl195919195951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195921195944%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195919195951%_))
                                      ((lambda (_%L195954%_)
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
                                                           (cons _%L195954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195920195948%_)
                                      (_%g195913195927%_ _%g195914195931%_))))
                              (_%g195913195927%_ _%g195914195931%_))))
                      (_%g195913195927%_ _%g195914195931%_)))))
          (_%g195912195968%_ _%$stx195909%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx195972%_)
        (let* ((_%g195976195990%_
                (lambda (_%g195977195986%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195977195986%_))))
               (_%g195975196031%_
                (lambda (_%g195977195994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195977195994%_))
                      (let ((_%e195981195997%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195977195994%_))))
                        (let ((_%hd195980196001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195981195997%_)))
                              (_%tl195979196004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195981195997%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195979196004%_))
                              (let ((_%e195984196007%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195979196004%_))))
                                (let ((_%hd195983196011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195984196007%_)))
                                      (_%tl195982196014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195984196007%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195982196014%_))
                                      ((lambda (_%L196017%_)
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
                                                           (cons _%L196017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195983196011%_)
                                      (_%g195976195990%_ _%g195977195994%_))))
                              (_%g195976195990%_ _%g195977195994%_))))
                      (_%g195976195990%_ _%g195977195994%_)))))
          (_%g195975196031%_ _%$stx195972%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx196035%_)
        (let* ((_%g196039196061%_
                (lambda (_%g196040196057%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196040196057%_))))
               (_%g196038196130%_
                (lambda (_%g196040196065%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196040196065%_))
                      (let ((_%e196046196068%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196040196065%_))))
                        (let ((_%hd196045196072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196046196068%_)))
                              (_%tl196044196075%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196046196068%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196044196075%_))
                              (let ((_%e196049196078%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196044196075%_))))
                                (let ((_%hd196048196082%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196049196078%_)))
                                      (_%tl196047196085%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196049196078%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196047196085%_))
                                      (let ((_%e196052196088%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196047196085%_))))
                                        (let ((_%hd196051196092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196052196088%_)))
                                              (_%tl196050196095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196052196088%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196050196095%_))
                                              (let ((_%e196055196098%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196050196095%_))))
                                                (let ((_%hd196054196102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196055196098%_)))
                                                      (_%tl196053196105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196055196098%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196053196105%_))
                                                      ((lambda (_%L196108%_
                                                                _%L196110%_
                                                                _%L196111%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196111%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196110%_ '()))
                                   (cons _%L196108%_ '())))))
               _%hd196054196102%_
               _%hd196051196092%_
               _%hd196048196082%_)
              (_%g196039196061%_ _%g196040196065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196039196061%_
                                               _%g196040196065%_))))
                                      (_%g196039196061%_ _%g196040196065%_))))
                              (_%g196039196061%_ _%g196040196065%_))))
                      (_%g196039196061%_ _%g196040196065%_)))))
          (_%g196038196130%_ _%$stx196035%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx196134%_)
        (let* ((_%g196138196160%_
                (lambda (_%g196139196156%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196139196156%_))))
               (_%g196137196229%_
                (lambda (_%g196139196164%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196139196164%_))
                      (let ((_%e196145196167%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196139196164%_))))
                        (let ((_%hd196144196171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196145196167%_)))
                              (_%tl196143196174%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196145196167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196143196174%_))
                              (let ((_%e196148196177%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196143196174%_))))
                                (let ((_%hd196147196181%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196148196177%_)))
                                      (_%tl196146196184%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196148196177%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196146196184%_))
                                      (let ((_%e196151196187%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196146196184%_))))
                                        (let ((_%hd196150196191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196151196187%_)))
                                              (_%tl196149196194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196151196187%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196149196194%_))
                                              (let ((_%e196154196197%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196149196194%_))))
                                                (let ((_%hd196153196201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196154196197%_)))
                                                      (_%tl196152196204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196154196197%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196152196204%_))
                                                      ((lambda (_%L196207%_
                                                                _%L196209%_
                                                                _%L196210%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196210%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196209%_ '()))
                                   (cons _%L196207%_ '())))))
               _%hd196153196201%_
               _%hd196150196191%_
               _%hd196147196181%_)
              (_%g196138196160%_ _%g196139196164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196138196160%_
                                               _%g196139196164%_))))
                                      (_%g196138196160%_ _%g196139196164%_))))
                              (_%g196138196160%_ _%g196139196164%_))))
                      (_%g196138196160%_ _%g196139196164%_)))))
          (_%g196137196229%_ _%$stx196134%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196233%_)
        (let* ((_%g196237196251%_
                (lambda (_%g196238196247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196238196247%_))))
               (_%g196236196292%_
                (lambda (_%g196238196255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196238196255%_))
                      (let ((_%e196242196258%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196238196255%_))))
                        (let ((_%hd196241196262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196242196258%_)))
                              (_%tl196240196265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196242196258%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196240196265%_))
                              (let ((_%e196245196268%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196240196265%_))))
                                (let ((_%hd196244196272%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196245196268%_)))
                                      (_%tl196243196275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196245196268%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196243196275%_))
                                      ((lambda (_%L196278%_)
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
                                                           (cons _%L196278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196244196272%_)
                                      (_%g196237196251%_ _%g196238196255%_))))
                              (_%g196237196251%_ _%g196238196255%_))))
                      (_%g196237196251%_ _%g196238196255%_)))))
          (_%g196236196292%_ _%$stx196233%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196296%_)
        (let* ((_%g196300196318%_
                (lambda (_%g196301196314%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196301196314%_))))
               (_%g196299196373%_
                (lambda (_%g196301196322%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196301196322%_))
                      (let ((_%e196306196325%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196301196322%_))))
                        (let ((_%hd196305196329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196306196325%_)))
                              (_%tl196304196332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196306196325%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196304196332%_))
                              (let ((_%e196309196335%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196304196332%_))))
                                (let ((_%hd196308196339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196309196335%_)))
                                      (_%tl196307196342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196309196335%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196307196342%_))
                                      (let ((_%e196312196345%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196307196342%_))))
                                        (let ((_%hd196311196349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196312196345%_)))
                                              (_%tl196310196352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196312196345%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196310196352%_))
                                              ((lambda (_%L196355%_
                                                        _%L196357%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196357%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196355%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196311196349%_
                                               _%hd196308196339%_)
                                              (_%g196300196318%_
                                               _%g196301196322%_))))
                                      (_%g196300196318%_ _%g196301196322%_))))
                              (_%g196300196318%_ _%g196301196322%_))))
                      (_%g196300196318%_ _%g196301196322%_)))))
          (_%g196299196373%_ _%$stx196296%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx196377%_)
        (let* ((_%__stx200581200582%_ _%$stx196377%_)
               (_%g196384196445%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200581200582%_)))))
          (let ((_%__kont200584200585%_
                 (lambda (_%L196683%_ _%L196685%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196685%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196683%_ '()))
                                     '())))))
                (_%__kont200586200587%_
                 (lambda (_%L196622%_ _%L196624%_ _%L196625%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196625%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196624%_ '()))
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
                                 (cons _%L196622%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont200588200589%_
                 (lambda (_%L196546%_ _%L196548%_)
                   (cons _%L196548%_ (cons _%L196546%_ (cons '#f '())))))
                (_%__kont200590200591%_
                 (lambda (_%L196496%_ _%L196498%_ _%L196499%_)
                   (cons _%L196499%_
                         (cons _%L196498%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L196496%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200581200582%_))
                (let ((_%e196390196653%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200581200582%_))))
                  (let ((_%tl196388196660%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196390196653%_)))
                        (_%hd196389196657%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196390196653%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl196388196660%_))
                        (let ((_%e196393196663%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl196388196660%_))))
                          (let ((_%tl196391196670%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196393196663%_)))
                                (_%hd196392196667%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196393196663%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196391196670%_))
                                (let ((_%e196396196673%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196391196670%_))))
                                  (let ((_%tl196394196680%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196396196673%_)))
                                        (_%hd196395196677%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196396196673%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196394196680%_))
                                        (_%__kont200584200585%_
                                         _%hd196395196677%_
                                         _%hd196392196667%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196394196680%_))
                                            (let ((_%e196411196598%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl196394196680%_))))
                                              (let ((_%tl196409196605%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196411196598%_)))
                                                    (_%hd196410196602%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196411196598%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd196410196602%_))
                                                    (let ((_%e196412196608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd196410196602%_))))
                                                      (if (equal? _%e196412196608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196409196605%_))
                      (let ((_%e196415196612%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196409196605%_))))
                        (let ((_%tl196413196619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196415196612%_)))
                              (_%hd196414196616%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196415196612%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196413196619%_))
                              (_%__kont200586200587%_
                               _%hd196414196616%_
                               _%hd196395196677%_
                               _%hd196392196667%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd196395196677%_))
                                  (let ((_%e196436196482%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196395196677%_))))
                                    (declare (not safe))
                                    (_%g196384196445%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196384196445%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd196395196677%_))
                          (let ((_%e196436196482%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196395196677%_))))
                            (if (equal? _%e196436196482%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196409196605%_))
                                    (_%__kont200590200591%_
                                     _%hd196410196602%_
                                     _%hd196392196667%_
                                     _%hd196389196657%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196384196445%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g196384196445%_))))
                          (let () (declare (not safe)) (_%g196384196445%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd196395196677%_))
                      (let ((_%e196436196482%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd196395196677%_))))
                        (if (equal? _%e196436196482%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196409196605%_))
                                (_%__kont200590200591%_
                                 _%hd196410196602%_
                                 _%hd196392196667%_
                                 _%hd196389196657%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g196384196445%_)))
                            (let () (declare (not safe)) (_%g196384196445%_))))
                      (let () (declare (not safe)) (_%g196384196445%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd196395196677%_))
                                                        (let ((_%e196436196482%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd196395196677%_))))
                  (if (equal? _%e196436196482%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196409196605%_))
                          (_%__kont200590200591%_
                           _%hd196410196602%_
                           _%hd196392196667%_
                           _%hd196389196657%_)
                          (let () (declare (not safe)) (_%g196384196445%_)))
                      (let () (declare (not safe)) (_%g196384196445%_))))
                (let () (declare (not safe)) (_%g196384196445%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd196395196677%_))
                                                (let ((_%e196436196482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd196395196677%_))))
                                                  (declare (not safe))
                                                  (_%g196384196445%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196384196445%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196391196670%_))
                                    (_%__kont200588200589%_
                                     _%hd196392196667%_
                                     _%hd196389196657%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196384196445%_))))))
                        (let () (declare (not safe)) (_%g196384196445%_)))))
                (let () (declare (not safe)) (_%g196384196445%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx196704%_)
        (let* ((_%g196708196737%_
                (lambda (_%g196709196733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196709196733%_))))
               (_%g196707196846%_
                (lambda (_%g196709196741%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196709196741%_))
                      (let ((_%e196713196744%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196709196741%_))))
                        (let ((_%hd196712196748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196713196744%_)))
                              (_%tl196711196751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196713196744%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196711196751%_))
                              (let ((_g201211_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196711196751%_
                                        '0))))
                                (begin
                                  (let ((_g201212_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201211_)
                                               (##vector-length _g201211_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201212_ 2)))
                                        (error "Context expects 2 values"
                                               _g201212_)))
                                  (let ((_%target196714196754%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201211_ 0)))
                                        (_%tl196716196757%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201211_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196716196757%_))
                                        (letrec ((_%loop196717196760%_
                                                  (lambda (_%hd196715196764%_
                                                           _%clause196721196767%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196715196764%_))
                                                        (let ((_%e196718196770%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196715196764%_))))
                  (let ((_%lp-hd196719196774%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196718196770%_)))
                        (_%lp-tl196720196777%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196718196770%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd196719196774%_))
                        (let ((_g201213_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd196719196774%_
                                  '0))))
                          (begin
                            (let ((_g201214_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201213_)
                                         (##vector-length _g201213_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201214_ 2)))
                                  (error "Context expects 2 values"
                                         _g201214_)))
                            (let ((_%target196723196780%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201213_ 0)))
                                  (_%tl196725196783%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201213_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196725196783%_))
                                  (letrec ((_%loop196726196786%_
                                            (lambda (_%hd196724196790%_
                                                     _%clause196730196793%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196724196790%_))
                                                  (let ((_%e196727196796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd196724196790%_))))
                                                    (let ((_%lp-hd196728196800%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196727196796%_)))
                                                          (_%lp-tl196729196803%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196727196796%_))))
                                                      (_%loop196726196786%_
                                                       _%lp-tl196729196803%_
                                                       (cons _%lp-hd196728196800%_
                                                             _%clause196730196793%_))))
                                                  (let ((_%clause196731196806%_
                                                         (reverse _%clause196730196793%_)))
                                                    (_%loop196717196760%_
                                                     _%lp-tl196720196777%_
                                                     (cons _%clause196731196806%_
                                                           _%clause196721196767%_)))))))
                                    (_%loop196726196786%_
                                     _%target196723196780%_
                                     '()))
                                  (_%g196708196737%_ _%g196709196741%_)))))
                        (_%g196708196737%_ _%g196709196741%_))))
                (let ((_%clause196722196810%_
                       (reverse _%clause196721196767%_)))
                  ((lambda (_%L196814%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp201215
                                              (lambda (_%g196829196834%_
                                                       _%g196830196837%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp201216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g196831196840%_ _%g196832196843%_)
                             (cons _%g196831196840%_ _%g196832196843%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201216 '() _%g196829196834%_)))
              _%g196830196837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp201215
                                          '()
                                          _%L196814%_)))
                                 '())))
                   _%clause196722196810%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196717196760%_
                                           _%target196714196754%_
                                           '()))
                                        (_%g196708196737%_
                                         _%g196709196741%_)))))
                              (_%g196708196737%_ _%g196709196741%_))))
                      (_%g196708196737%_ _%g196709196741%_)))))
          (_%g196707196846%_ _%$stx196704%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx196852%_)
        (let* ((_%g196856196874%_
                (lambda (_%g196857196870%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196857196870%_))))
               (_%g196855196929%_
                (lambda (_%g196857196878%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196857196878%_))
                      (let ((_%e196862196881%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196857196878%_))))
                        (let ((_%hd196861196885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196862196881%_)))
                              (_%tl196860196888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196862196881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196860196888%_))
                              (let ((_%e196865196891%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196860196888%_))))
                                (let ((_%hd196864196895%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196865196891%_)))
                                      (_%tl196863196898%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196865196891%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196863196898%_))
                                      (let ((_%e196868196901%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196863196898%_))))
                                        (let ((_%hd196867196905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196868196901%_)))
                                              (_%tl196866196908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196868196901%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196866196908%_))
                                              ((lambda (_%L196911%_
                                                        _%L196913%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196913%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196911%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196867196905%_
                                               _%hd196864196895%_)
                                              (_%g196856196874%_
                                               _%g196857196878%_))))
                                      (_%g196856196874%_ _%g196857196878%_))))
                              (_%g196856196874%_ _%g196857196878%_))))
                      (_%g196856196874%_ _%g196857196878%_)))))
          (_%g196855196929%_ _%$stx196852%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx196933%_)
        (let* ((_%g196937196955%_
                (lambda (_%g196938196951%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196938196951%_))))
               (_%g196936197010%_
                (lambda (_%g196938196959%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196938196959%_))
                      (let ((_%e196943196962%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196938196959%_))))
                        (let ((_%hd196942196966%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196943196962%_)))
                              (_%tl196941196969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196943196962%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196941196969%_))
                              (let ((_%e196946196972%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196941196969%_))))
                                (let ((_%hd196945196976%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196946196972%_)))
                                      (_%tl196944196979%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196946196972%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196944196979%_))
                                      (let ((_%e196949196982%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196944196979%_))))
                                        (let ((_%hd196948196986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196949196982%_)))
                                              (_%tl196947196989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196949196982%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196947196989%_))
                                              ((lambda (_%L196992%_
                                                        _%L196994%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196994%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196992%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196948196986%_
                                               _%hd196945196976%_)
                                              (_%g196937196955%_
                                               _%g196938196959%_))))
                                      (_%g196937196955%_ _%g196938196959%_))))
                              (_%g196937196955%_ _%g196938196959%_))))
                      (_%g196937196955%_ _%g196938196959%_)))))
          (_%g196936197010%_ _%$stx196933%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx197014%_)
        (let* ((_%g197018197047%_
                (lambda (_%g197019197043%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197019197043%_))))
               (_%g197017197147%_
                (lambda (_%g197019197051%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197019197051%_))
                      (let ((_%e197024197054%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197019197051%_))))
                        (let ((_%hd197023197058%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197024197054%_)))
                              (_%tl197022197061%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197024197054%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197022197061%_))
                              (let ((_g201217_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197022197061%_
                                        '0))))
                                (begin
                                  (let ((_g201218_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201217_)
                                               (##vector-length _g201217_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201218_ 2)))
                                        (error "Context expects 2 values"
                                               _g201218_)))
                                  (let ((_%target197025197064%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201217_ 0)))
                                        (_%tl197027197067%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201217_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197027197067%_))
                                        (letrec ((_%loop197028197070%_
                                                  (lambda (_%hd197026197074%_
                                                           _%rule197032197077%_
                                                           _%proc197033197079%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197026197074%_))
                                                        (let ((_%e197029197082%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197026197074%_))))
                  (let ((_%lp-hd197030197086%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197029197082%_)))
                        (_%lp-tl197031197089%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197029197082%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197030197086%_))
                        (let ((_%e197038197092%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197030197086%_))))
                          (let ((_%hd197037197096%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197038197092%_)))
                                (_%tl197036197099%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197038197092%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197036197099%_))
                                (let ((_%e197041197102%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197036197099%_))))
                                  (let ((_%hd197040197106%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197041197102%_)))
                                        (_%tl197039197109%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197041197102%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197039197109%_))
                                        (_%loop197028197070%_
                                         _%lp-tl197031197089%_
                                         (cons _%hd197040197106%_
                                               _%rule197032197077%_)
                                         (cons _%hd197037197096%_
                                               _%proc197033197079%_))
                                        (_%g197018197047%_
                                         _%g197019197051%_))))
                                (_%g197018197047%_ _%g197019197051%_))))
                        (_%g197018197047%_ _%g197019197051%_))))
                (let ((_%rule197034197112%_ (reverse _%rule197032197077%_))
                      (_%proc197035197115%_ (reverse _%proc197033197079%_)))
                  ((lambda (_%L197118%_ _%L197120%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197118%_
                                _%L197120%_))
                             (let ((__tmp201219
                                    (lambda (_%g197135197139%_
                                             _%g197136197142%_
                                             _%g197137197144%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g197136197142%_
                                                        (cons _%g197135197139%_
                                                              '())))
                                            _%g197137197144%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201219
                                '()
                                _%L197118%_
                                _%L197120%_)))))
                   _%rule197034197112%_
                   _%proc197035197115%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197028197070%_
                                           _%target197025197064%_
                                           '()
                                           '()))
                                        (_%g197018197047%_
                                         _%g197019197051%_)))))
                              (_%g197018197047%_ _%g197019197051%_))))
                      (_%g197018197047%_ _%g197019197051%_)))))
          (_%g197017197147%_ _%$stx197014%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx197152%_)
        (let* ((_%g197156197174%_
                (lambda (_%g197157197170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197157197170%_))))
               (_%g197155197229%_
                (lambda (_%g197157197178%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197157197178%_))
                      (let ((_%e197162197181%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197157197178%_))))
                        (let ((_%hd197161197185%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197162197181%_)))
                              (_%tl197160197188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197162197181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197160197188%_))
                              (let ((_%e197165197191%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197160197188%_))))
                                (let ((_%hd197164197195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197165197191%_)))
                                      (_%tl197163197198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197165197191%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197163197198%_))
                                      (let ((_%e197168197201%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197163197198%_))))
                                        (let ((_%hd197167197205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197168197201%_)))
                                              (_%tl197166197208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197168197201%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197166197208%_))
                                              ((lambda (_%L197211%_
                                                        _%L197213%_)
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
                                                   (cons _%L197213%_ '()))
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
                 (cons _%L197211%_ '())))
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
                                   (cons _%L197213%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197167197205%_
                                               _%hd197164197195%_)
                                              (_%g197156197174%_
                                               _%g197157197178%_))))
                                      (_%g197156197174%_ _%g197157197178%_))))
                              (_%g197156197174%_ _%g197157197178%_))))
                      (_%g197156197174%_ _%g197157197178%_)))))
          (_%g197155197229%_ _%$stx197152%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197233%_)
        (let* ((_%__stx200699200700%_ _%$stx197233%_)
               (_%g197238197263%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200699200700%_)))))
          (let ((_%__kont200702200703%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont200704200705%_
                 (lambda (_%L197310%_ _%L197312%_ _%L197313%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L197313%_ (cons _%L197312%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L197310%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200699200700%_))
                (let ((_%e197242197339%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200699200700%_))))
                  (let ((_%tl197240197346%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197242197339%_)))
                        (_%hd197241197343%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197242197339%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197240197346%_))
                        (_%__kont200702200703%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197240197346%_))
                            (let ((_%e197251197280%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197240197346%_))))
                              (let ((_%tl197249197287%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197251197280%_)))
                                    (_%hd197250197284%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197251197280%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197250197284%_))
                                    (let ((_%e197254197290%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197250197284%_))))
                                      (let ((_%tl197252197297%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197254197290%_)))
                                            (_%hd197253197294%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197254197290%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197252197297%_))
                                            (let ((_%e197257197300%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197252197297%_))))
                                              (let ((_%tl197255197307%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197257197300%_)))
                                                    (_%hd197256197304%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197257197300%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197255197307%_))
                                                    (_%__kont200704200705%_
                                                     _%tl197249197287%_
                                                     _%hd197256197304%_
                                                     _%hd197253197294%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197238197263%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197238197263%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197238197263%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197238197263%_))))))
                (let () (declare (not safe)) (_%g197238197263%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx197357%_)
        (let* ((_%__stx200743200744%_ _%$stx197357%_)
               (_%g197362197393%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200743200744%_)))))
          (let ((_%__kont200746200747%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont200748200749%_
                 (lambda (_%L197460%_ _%L197462%_ _%L197463%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L197463%_
                                           (let ((__tmp201220
                                                  (lambda (_%g197483197486%_
                                                           _%g197484197489%_)
                                                    (cons _%g197483197486%_
                                                          _%g197484197489%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201220
                                              '()
                                              _%L197462%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L197460%_)
                                     '()))))))
            (let ((_%__match200786200787%_
                   (lambda (_%e197372197400%_
                            _%hd197371197404%_
                            _%tl197370197407%_
                            _%e197375197410%_
                            _%hd197374197414%_
                            _%tl197373197417%_
                            _%e197378197420%_
                            _%hd197377197424%_
                            _%tl197376197427%_
                            _%__splice200750200751%_
                            _%target197379197430%_
                            _%tl197381197433%_)
                     (letrec ((_%loop197382197436%_
                               (lambda (_%hd197380197440%_ _%sig197386197443%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197380197440%_))
                                     (let ((_%e197383197446%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd197380197440%_))))
                                       (let ((_%lp-tl197385197453%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197383197446%_)))
                                             (_%lp-hd197384197450%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197383197446%_))))
                                         (_%loop197382197436%_
                                          _%lp-tl197385197453%_
                                          (cons _%lp-hd197384197450%_
                                                _%sig197386197443%_))))
                                     (let ((_%sig197387197456%_
                                            (reverse _%sig197386197443%_)))
                                       (_%__kont200748200749%_
                                        _%tl197373197417%_
                                        _%sig197387197456%_
                                        _%hd197377197424%_))))))
                       (_%loop197382197436%_ _%target197379197430%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200743200744%_))
                  (let ((_%e197366197499%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200743200744%_))))
                    (let ((_%tl197364197506%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197366197499%_)))
                          (_%hd197365197503%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197366197499%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197364197506%_))
                          (_%__kont200746200747%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197364197506%_))
                              (let ((_%e197375197410%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197364197506%_))))
                                (let ((_%tl197373197417%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197375197410%_)))
                                      (_%hd197374197414%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197375197410%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197374197414%_))
                                      (let ((_%e197378197420%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197374197414%_))))
                                        (let ((_%tl197376197427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197378197420%_)))
                                              (_%hd197377197424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197378197420%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197376197427%_))
                                              (let ((_%__splice200750200751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197376197427%_
                                                        '0))))
                                                (let ((_%tl197381197433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200750200751%_
                                                          '1)))
                                                      (_%target197379197430%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200750200751%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197381197433%_))
                                                      (_%__match200786200787%_
                                                       _%e197366197499%_
                                                       _%hd197365197503%_
                                                       _%tl197364197506%_
                                                       _%e197375197410%_
                                                       _%hd197374197414%_
                                                       _%tl197373197417%_
                                                       _%e197378197420%_
                                                       _%hd197377197424%_
                                                       _%tl197376197427%_
                                                       _%__splice200750200751%_
                                                       _%target197379197430%_
                                                       _%tl197381197433%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197362197393%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197362197393%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197362197393%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197362197393%_))))))
                  (let () (declare (not safe)) (_%g197362197393%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx197518%_)
        (let* ((_%__stx200789200790%_ _%$stx197518%_)
               (_%g197523197570%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200789200790%_)))))
          (let ((_%__kont200792200793%_
                 (lambda (_%L197732%_ _%L197734%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L197734%_
                               (let ((__tmp201221
                                      (lambda (_%g197754197757%_
                                               _%g197755197760%_)
                                        (cons _%g197754197757%_
                                              _%g197755197760%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201221 '() _%L197732%_))))))
                (_%__kont200796200797%_
                 (lambda (_%L197627%_ _%L197629%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L197629%_
                               (let ((__tmp201222
                                      (lambda (_%g197646197649%_
                                               _%g197647197652%_)
                                        (cons _%g197646197649%_
                                              _%g197647197652%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201222 '() _%L197627%_)))))))
            (let* ((_%__match200856200857%_
                    (lambda (_%e197552197577%_
                             _%hd197551197581%_
                             _%tl197550197584%_
                             _%e197555197587%_
                             _%hd197554197591%_
                             _%tl197553197594%_
                             _%__splice200798200799%_
                             _%target197556197597%_
                             _%tl197558197600%_)
                      (letrec ((_%loop197559197603%_
                                (lambda (_%hd197557197607%_
                                         _%sig197563197610%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197557197607%_))
                                      (let ((_%e197560197613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197557197607%_))))
                                        (let ((_%lp-tl197562197620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197560197613%_)))
                                              (_%lp-hd197561197617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197560197613%_))))
                                          (_%loop197559197603%_
                                           _%lp-tl197562197620%_
                                           (cons _%lp-hd197561197617%_
                                                 _%sig197563197610%_))))
                                      (let ((_%sig197564197623%_
                                             (reverse _%sig197563197610%_)))
                                        (_%__kont200796200797%_
                                         _%sig197564197623%_
                                         _%hd197554197591%_))))))
                        (_%loop197559197603%_ _%target197556197597%_ '()))))
                   (_%__match200848200849%_
                    (lambda (_%e197552197577%_
                             _%hd197551197581%_
                             _%tl197550197584%_
                             _%e197555197587%_
                             _%hd197554197591%_
                             _%tl197553197594%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl197553197594%_))
                          (let ((_%__splice200798200799%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl197553197594%_
                                    '0))))
                            (let ((_%tl197558197600%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice200798200799%_
                                      '1)))
                                  (_%target197556197597%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice200798200799%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197558197600%_))
                                  (_%__match200856200857%_
                                   _%e197552197577%_
                                   _%hd197551197581%_
                                   _%tl197550197584%_
                                   _%e197555197587%_
                                   _%hd197554197591%_
                                   _%tl197553197594%_
                                   _%__splice200798200799%_
                                   _%target197556197597%_
                                   _%tl197558197600%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g197523197570%_)))))
                          (let () (declare (not safe)) (_%g197523197570%_)))))
                   (_%__match200836200837%_
                    (lambda (_%e197529197662%_
                             _%hd197528197666%_
                             _%tl197527197669%_
                             _%e197532197672%_
                             _%hd197531197676%_
                             _%tl197530197679%_
                             _%e197535197682%_
                             _%hd197534197686%_
                             _%tl197533197689%_
                             _%e197538197692%_
                             _%hd197537197696%_
                             _%tl197536197699%_
                             _%__splice200794200795%_
                             _%target197539197702%_
                             _%tl197541197705%_)
                      (letrec ((_%loop197542197708%_
                                (lambda (_%hd197540197712%_
                                         _%sig197546197715%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197540197712%_))
                                      (let ((_%e197543197718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197540197712%_))))
                                        (let ((_%lp-tl197545197725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197543197718%_)))
                                              (_%lp-hd197544197722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197543197718%_))))
                                          (_%loop197542197708%_
                                           _%lp-tl197545197725%_
                                           (cons _%lp-hd197544197722%_
                                                 _%sig197546197715%_))))
                                      (let ((_%sig197547197728%_
                                             (reverse _%sig197546197715%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197533197689%_))
                                            (_%__kont200792200793%_
                                             _%sig197547197728%_
                                             _%hd197531197676%_)
                                            (_%__match200848200849%_
                                             _%e197529197662%_
                                             _%hd197528197666%_
                                             _%tl197527197669%_
                                             _%e197532197672%_
                                             _%hd197531197676%_
                                             _%tl197530197679%_)))))))
                        (_%loop197542197708%_ _%target197539197702%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200789200790%_))
                  (let ((_%e197529197662%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200789200790%_))))
                    (let ((_%tl197527197669%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197529197662%_)))
                          (_%hd197528197666%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197529197662%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197527197669%_))
                          (let ((_%e197532197672%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197527197669%_))))
                            (let ((_%tl197530197679%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197532197672%_)))
                                  (_%hd197531197676%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197532197672%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197530197679%_))
                                  (let ((_%e197535197682%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197530197679%_))))
                                    (let ((_%tl197533197689%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197535197682%_)))
                                          (_%hd197534197686%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197535197682%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd197534197686%_))
                                          (let ((_%e197538197692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd197534197686%_))))
                                            (let ((_%tl197536197699%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197538197692%_)))
                                                  (_%hd197537197696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197538197692%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd197537197696%_))
                                                  (if (let ((__tmp201223
                                                             |gxc[1]#_g201224_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp201223
                                                         _%hd197537197696%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl197536197699%_))
                                                          (let ((_%__splice200794200795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197536197699%_ '0))))
                    (let ((_%tl197541197705%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200794200795%_ '1)))
                          (_%target197539197702%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200794200795%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197541197705%_))
                          (_%__match200836200837%_
                           _%e197529197662%_
                           _%hd197528197666%_
                           _%tl197527197669%_
                           _%e197532197672%_
                           _%hd197531197676%_
                           _%tl197530197679%_
                           _%e197535197682%_
                           _%hd197534197686%_
                           _%tl197533197689%_
                           _%e197538197692%_
                           _%hd197537197696%_
                           _%tl197536197699%_
                           _%__splice200794200795%_
                           _%target197539197702%_
                           _%tl197541197705%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197530197679%_))
                              (let ((_%__splice200798200799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197530197679%_
                                        '0))))
                                (let ((_%tl197558197600%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice200798200799%_
                                          '1)))
                                      (_%target197556197597%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice200798200799%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197558197600%_))
                                      (_%__match200856200857%_
                                       _%e197529197662%_
                                       _%hd197528197666%_
                                       _%tl197527197669%_
                                       _%e197532197672%_
                                       _%hd197531197676%_
                                       _%tl197530197679%_
                                       _%__splice200798200799%_
                                       _%target197556197597%_
                                       _%tl197558197600%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g197523197570%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197523197570%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197530197679%_))
                      (let ((_%__splice200798200799%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197530197679%_
                                '0))))
                        (let ((_%tl197558197600%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice200798200799%_ '1)))
                              (_%target197556197597%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice200798200799%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197558197600%_))
                              (_%__match200856200857%_
                               _%e197529197662%_
                               _%hd197528197666%_
                               _%tl197527197669%_
                               _%e197532197672%_
                               _%hd197531197676%_
                               _%tl197530197679%_
                               _%__splice200798200799%_
                               _%target197556197597%_
                               _%tl197558197600%_)
                              (let ()
                                (declare (not safe))
                                (_%g197523197570%_)))))
                      (let () (declare (not safe)) (_%g197523197570%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl197530197679%_))
                  (let ((_%__splice200798200799%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197530197679%_ '0))))
                    (let ((_%tl197558197600%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200798200799%_ '1)))
                          (_%target197556197597%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200798200799%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197558197600%_))
                          (_%__match200856200857%_
                           _%e197529197662%_
                           _%hd197528197666%_
                           _%tl197527197669%_
                           _%e197532197672%_
                           _%hd197531197676%_
                           _%tl197530197679%_
                           _%__splice200798200799%_
                           _%target197556197597%_
                           _%tl197558197600%_)
                          (let () (declare (not safe)) (_%g197523197570%_)))))
                  (let () (declare (not safe)) (_%g197523197570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197530197679%_))
                                                      (let ((_%__splice200798200799%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl197530197679%_ '0))))
                (let ((_%tl197558197600%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200798200799%_ '1)))
                      (_%target197556197597%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200798200799%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197558197600%_))
                      (_%__match200856200857%_
                       _%e197529197662%_
                       _%hd197528197666%_
                       _%tl197527197669%_
                       _%e197532197672%_
                       _%hd197531197676%_
                       _%tl197530197679%_
                       _%__splice200798200799%_
                       _%target197556197597%_
                       _%tl197558197600%_)
                      (let () (declare (not safe)) (_%g197523197570%_)))))
              (let () (declare (not safe)) (_%g197523197570%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197530197679%_))
                                              (let ((_%__splice200798200799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197530197679%_
                                                        '0))))
                                                (let ((_%tl197558197600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200798200799%_
                                                          '1)))
                                                      (_%target197556197597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200798200799%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197558197600%_))
                                                      (_%__match200856200857%_
                                                       _%e197529197662%_
                                                       _%hd197528197666%_
                                                       _%tl197527197669%_
                                                       _%e197532197672%_
                                                       _%hd197531197676%_
                                                       _%tl197530197679%_
                                                       _%__splice200798200799%_
                                                       _%target197556197597%_
                                                       _%tl197558197600%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197523197570%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197523197570%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197530197679%_))
                                      (let ((_%__splice200798200799%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197530197679%_
                                                '0))))
                                        (let ((_%tl197558197600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200798200799%_
                                                  '1)))
                                              (_%target197556197597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200798200799%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197558197600%_))
                                              (_%__match200856200857%_
                                               _%e197529197662%_
                                               _%hd197528197666%_
                                               _%tl197527197669%_
                                               _%e197532197672%_
                                               _%hd197531197676%_
                                               _%tl197530197679%_
                                               _%__splice200798200799%_
                                               _%target197556197597%_
                                               _%tl197558197600%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197523197570%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197523197570%_))))))
                          (let () (declare (not safe)) (_%g197523197570%_)))))
                  (let () (declare (not safe)) (_%g197523197570%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx198848%_ _%id198850%_)
        (let ((_%proc198854%_
               (let ((__tmp201225
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id198850%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201225))))
          (if (let () (declare (not safe)) (procedure? _%proc198854%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx198848%_
                 _%id198850%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx198839%_ _%id198841%_)
        (let ((_%klass198845%_
               (let ((__tmp201226
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id198841%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201226))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass198845%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx198839%_
                 _%id198841%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx198089%_ _%proc198091%_ _%sig198092%_)
        (letrec ((_%signature-arity198094%_
                  (lambda (_%args198771%_)
                    (let _%loop198774%_ ((_%rest198777%_ _%args198771%_)
                                         (_%count198779%_ '0))
                      (let* ((_%rest198780198791%_ _%rest198777%_)
                             (_%E198784198797%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest198780198791%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K198787198828%_
                               (lambda (_%rest198825%_)
                                 (let ((__tmp201227
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count198779%_ '1))))
                                   (declare (not safe))
                                   (_%loop198774%_
                                    _%rest198825%_
                                    __tmp201227))))
                              (_%K198786198817%_ (lambda () _%count198779%_))
                              (_%K198785198805%_
                               (lambda () (cons _%count198779%_ '()))))
                          (let ((_%try-match198782198821%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest198780198791%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K198786198817%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K198785198805%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest198780198791%_))
                                (let* ((_%tl198789198832%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest198780198791%_)))
                                       (_%rest198836%_ _%tl198789198832%_))
                                  (declare (not safe))
                                  (_%K198787198828%_ _%rest198836%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match198782198821%_)))))))))
                 (_%make-signature198096%_
                  (lambda (_%args198653%_
                           _%return198655%_
                           _%effect198656%_
                           _%unchecked198657%_)
                    (let ((__tmp201228
                           (lambda (_%g198658198660%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx198089%_
                                _%g198658198660%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp201228 _%args198653%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx198089%_ _%return198655%_))
                    (if _%unchecked198657%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx198089%_
                           _%unchecked198657%_))
                        '#!void)
                    (let ((_%arity198664%_
                           (let ((__tmp201229
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args198653%_))))
                             (declare (not safe))
                             (_%signature-arity198094%_ __tmp201229))))
                      (if _%effect198656%_
                          (let ((_%effect198667%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect198656%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect198667%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect198667%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx198089%_
                                   _%proc198091%_
                                   _%effect198667%_))))
                          '#!void)
                      (cons _%arity198664%_
                            (cons (let* ((_%g198670198693%_
                                          (lambda (_%g198671198689%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g198671198689%_))))
                                         (_%g198669198767%_
                                          (lambda (_%g198671198697%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g198671198697%_))
                                                (let ((_%e198678198700%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g198671198697%_))))
                                                  (let ((_%hd198677198704%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198678198700%_)))
                                                        (_%tl198676198707%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198678198700%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198676198707%_))
                                                        (let ((_%e198681198710%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198676198707%_))))
                  (let ((_%hd198680198714%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198681198710%_)))
                        (_%tl198679198717%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198681198710%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198679198717%_))
                        (let ((_%e198684198720%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198679198717%_))))
                          (let ((_%hd198683198724%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198684198720%_)))
                                (_%tl198682198727%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198684198720%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198682198727%_))
                                (let ((_%e198687198730%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198682198727%_))))
                                  (let ((_%hd198686198734%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198687198730%_)))
                                        (_%tl198685198737%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198687198730%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198685198737%_))
                                        ((lambda (_%L198740%_
                                                  _%L198742%_
                                                  _%L198743%_
                                                  _%L198744%_)
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
                             (cons _%L198744%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198743%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L198742%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L198740%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd198686198734%_
                                         _%hd198683198724%_
                                         _%hd198680198714%_
                                         _%hd198677198704%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g198670198693%_
                                           _%g198671198697%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g198670198693%_ _%g198671198697%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g198670198693%_ _%g198671198697%_)))))
                (let ()
                  (declare (not safe))
                  (_%g198670198693%_ _%g198671198697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198670198693%_
                                                   _%g198671198697%_)))))
                                         (__tmp201230
                                          (list _%args198653%_
                                                _%return198655%_
                                                _%effect198656%_
                                                _%unchecked198657%_)))
                                    (declare (not safe))
                                    (_%g198669198767%_ __tmp201230))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx198089%_ _%proc198091%_))
          (let* ((_%__stx200867200868%_ _%sig198092%_)
                 (_%g198103198206%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200867200868%_)))))
            (let ((_%__kont200870200871%_
                   (lambda (_%L198634%_ _%L198636%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature198096%_
                        _%L198636%_
                        _%L198634%_
                        '#f
                        '#f))))
                  (_%__kont200872200873%_
                   (lambda (_%L198585%_ _%L198587%_ _%L198588%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature198096%_
                        _%L198588%_
                        _%L198587%_
                        _%L198585%_
                        '#f))))
                  (_%__kont200874200875%_
                   (lambda (_%L198509%_ _%L198511%_ _%L198512%_)
                     (let ((__tmp201231
                            (let ((__tmp201232
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc198091%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201232))))
                       (declare (not safe))
                       (_%make-signature198096%_
                        _%L198512%_
                        _%L198511%_
                        _%L198509%_
                        __tmp201231))))
                  (_%__kont200876200877%_
                   (lambda (_%L198415%_ _%L198417%_ _%L198418%_ _%L198419%_)
                     (let ((__tmp201233
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198415%_))))
                       (declare (not safe))
                       (_%make-signature198096%_
                        _%L198419%_
                        _%L198418%_
                        '#f
                        __tmp201233))))
                  (_%__kont200878200879%_
                   (lambda (_%L198322%_ _%L198324%_)
                     (let ((__tmp201234
                            (let ((__tmp201235
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc198091%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201235))))
                       (declare (not safe))
                       (_%make-signature198096%_
                        _%L198324%_
                        _%L198322%_
                        '#f
                        __tmp201234))))
                  (_%__kont200880200881%_
                   (lambda (_%L198257%_ _%L198259%_ _%L198260%_)
                     (let ((__tmp201236
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198257%_))))
                       (declare (not safe))
                       (_%make-signature198096%_
                        _%L198260%_
                        _%L198259%_
                        '#f
                        __tmp201236)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200867200868%_))
                  (let ((_%e198109198614%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200867200868%_))))
                    (let ((_%tl198107198621%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198109198614%_)))
                          (_%hd198108198618%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198109198614%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198107198621%_))
                          (let ((_%e198112198624%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198107198621%_))))
                            (let ((_%tl198110198631%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198112198624%_)))
                                  (_%hd198111198628%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198112198624%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198110198631%_))
                                  (_%__kont200870200871%_
                                   _%hd198111198628%_
                                   _%hd198108198618%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198110198631%_))
                                      (let ((_%e198124198561%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198110198631%_))))
                                        (let ((_%tl198122198568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198124198561%_)))
                                              (_%hd198123198565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198124198561%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd198123198565%_))
                                              (let ((_%e198125198571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd198123198565%_))))
                                                (if (equal? _%e198125198571%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198122198568%_))
                                                        (let ((_%e198128198575%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198122198568%_))))
                  (let ((_%tl198126198582%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198128198575%_)))
                        (_%hd198127198579%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198128198575%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198126198582%_))
                        (_%__kont200872200873%_
                         _%hd198127198579%_
                         _%hd198111198628%_
                         _%hd198108198618%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198126198582%_))
                            (let ((_%e198147198495%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198126198582%_))))
                              (let ((_%tl198145198502%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198147198495%_)))
                                    (_%hd198146198499%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198147198495%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd198146198499%_))
                                    (let ((_%e198148198505%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198146198499%_))))
                                      (if (equal? _%e198148198505%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198145198502%_))
                                              (_%__kont200874200875%_
                                               _%hd198127198579%_
                                               _%hd198111198628%_
                                               _%hd198108198618%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198145198502%_))
                                                  (let ((_%e198172198405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198145198502%_))))
                                                    (let ((_%tl198170198412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198172198405%_)))
                                                          (_%hd198171198409%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198172198405%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198170198412%_))
                                                          (_%__kont200876200877%_
                                                           _%hd198171198409%_
                                                           _%hd198127198579%_
                                                           _%hd198111198628%_
                                                           _%hd198108198618%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g198103198206%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198103198206%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198103198206%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198103198206%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198103198206%_))))))
                (let () (declare (not safe)) (_%g198103198206%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e198125198571%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198122198568%_))
                                                            (_%__kont200878200879%_
                                                             _%hd198111198628%_
                                                             _%hd198108198618%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198122198568%_))
                        (let ((_%e198200198247%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198122198568%_))))
                          (let ((_%tl198198198254%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198200198247%_)))
                                (_%hd198199198251%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198200198247%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198198198254%_))
                                (_%__kont200880200881%_
                                 _%hd198199198251%_
                                 _%hd198111198628%_
                                 _%hd198108198618%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198103198206%_)))))
                        (let () (declare (not safe)) (_%g198103198206%_))))
                (let () (declare (not safe)) (_%g198103198206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198103198206%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198103198206%_))))))
                          (let () (declare (not safe)) (_%g198103198206%_)))))
                  (let () (declare (not safe)) (_%g198103198206%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig197769%_)
        (let* ((_%g197772197838%_
                (lambda (_%g197773197834%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197773197834%_))))
               (_%g197771198085%_
                (lambda (_%g197773197842%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197773197842%_))
                      (let ((_%e197780197845%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197773197842%_))))
                        (let ((_%hd197779197849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197780197845%_)))
                              (_%tl197778197852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197780197845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197778197852%_))
                              (let ((_%e197783197855%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197778197852%_))))
                                (let ((_%hd197782197859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197783197855%_)))
                                      (_%tl197781197862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197783197855%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd197782197859%_))
                                      (let ((_%e197784197865%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197782197859%_))))
                                        (if (equal? _%e197784197865%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197781197862%_))
                                                (let ((_%e197787197869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl197781197862%_))))
                                                  (let ((_%hd197786197873%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197787197869%_)))
                                                        (_%tl197785197876%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197787197869%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197786197873%_))
                                                        (let ((_%e197790197879%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197786197873%_))))
                  (let ((_%hd197789197883%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197790197879%_)))
                        (_%tl197788197886%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197790197879%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd197789197883%_))
                        (if (let ((__tmp201237 |gxc[1]#_g201238_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp201237
                               _%hd197789197883%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197788197886%_))
                                (let ((_%e197793197889%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197788197886%_))))
                                  (let ((_%hd197792197893%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197793197889%_)))
                                        (_%tl197791197896%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197793197889%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197791197896%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197785197876%_))
                                            (let ((_%e197796197899%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197785197876%_))))
                                              (let ((_%hd197795197903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197796197899%_)))
                                                    (_%tl197794197906%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197796197899%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197795197903%_))
                                                    (let ((_%e197797197909%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197795197903%_))))
                                                      (if (equal? _%e197797197909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197794197906%_))
                      (let ((_%e197800197913%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197794197906%_))))
                        (let ((_%hd197799197917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197800197913%_)))
                              (_%tl197798197920%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197800197913%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd197799197917%_))
                              (let ((_%e197803197923%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd197799197917%_))))
                                (let ((_%hd197802197927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197803197923%_)))
                                      (_%tl197801197930%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197803197923%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd197802197927%_))
                                      (if (let ((__tmp201239
                                                 |gxc[1]#_g201240_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp201239
                                             _%hd197802197927%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197801197930%_))
                                              (let ((_%e197806197933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197801197930%_))))
                                                (let ((_%hd197805197937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197806197933%_)))
                                                      (_%tl197804197940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197806197933%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197804197940%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197798197920%_))
                                                          (let ((_%e197809197943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl197798197920%_))))
                    (let ((_%hd197808197947%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197809197943%_)))
                          (_%tl197807197950%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197809197943%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197808197947%_))
                          (let ((_%e197810197953%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197808197947%_))))
                            (if (equal? _%e197810197953%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197807197950%_))
                                    (let ((_%e197813197957%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl197807197950%_))))
                                      (let ((_%hd197812197961%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197813197957%_)))
                                            (_%tl197811197964%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197813197957%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd197812197961%_))
                                            (let ((_%e197816197967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd197812197961%_))))
                                              (let ((_%hd197815197971%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197816197967%_)))
                                                    (_%tl197814197974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197816197967%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd197815197971%_))
                                                    (if (let ((__tmp201241
                                                               |gxc[1]#_g201242_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp201241
                                                           _%hd197815197971%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197814197974%_))
                                                            (let ((_%e197819197977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl197814197974%_))))
                      (let ((_%hd197818197981%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197819197977%_)))
                            (_%tl197817197984%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197819197977%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197817197984%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197811197964%_))
                                (let ((_%e197822197987%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197811197964%_))))
                                  (let ((_%hd197821197991%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197822197987%_)))
                                        (_%tl197820197994%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197822197987%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd197821197991%_))
                                        (let ((_%e197823197997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd197821197991%_))))
                                          (if (equal? _%e197823197997%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197820197994%_))
                                                  (let ((_%e197826198001%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl197820197994%_))))
                                                    (let ((_%hd197825198005%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197826198001%_)))
                                                          (_%tl197824198008%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197826198001%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197825198005%_))
                                                          (let ((_%e197829198011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd197825198005%_))))
                    (let ((_%hd197828198015%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197829198011%_)))
                          (_%tl197827198018%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197829198011%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd197828198015%_))
                          (if (let ((__tmp201243 |gxc[1]#_g201244_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp201243
                                 _%hd197828198015%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197827198018%_))
                                  (let ((_%e197832198021%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197827198018%_))))
                                    (let ((_%hd197831198025%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197832198021%_)))
                                          (_%tl197830198028%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197832198021%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197830198028%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197824198008%_))
                                              ((lambda (_%L198031%_
                                                        _%L198033%_
                                                        _%L198034%_
                                                        _%L198035%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L198031%_))
                                                     (cons _%L198031%_
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
                                                 (cons _%L198034%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd197831198025%_
                                               _%hd197818197981%_
                                               _%hd197805197937%_
                                               _%hd197792197893%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197772197838%_
                                                 _%g197773197842%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197772197838%_
                                             _%g197773197842%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197772197838%_ _%g197773197842%_)))
                              (let ()
                                (declare (not safe))
                                (_%g197772197838%_ _%g197773197842%_)))
                          (let ()
                            (declare (not safe))
                            (_%g197772197838%_ _%g197773197842%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g197772197838%_ _%g197773197842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197772197838%_
                                                     _%g197773197842%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197772197838%_
                                                 _%g197773197842%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197772197838%_
                                           _%g197773197842%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g197772197838%_ _%g197773197842%_)))
                            (let ()
                              (declare (not safe))
                              (_%g197772197838%_ _%g197773197842%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g197772197838%_ _%g197773197842%_)))
                (let ()
                  (declare (not safe))
                  (_%g197772197838%_ _%g197773197842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197772197838%_
                                                       _%g197773197842%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197772197838%_
                                               _%g197773197842%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197772197838%_ _%g197773197842%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197772197838%_ _%g197773197842%_))))
                          (let ()
                            (declare (not safe))
                            (_%g197772197838%_ _%g197773197842%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g197772197838%_ _%g197773197842%_)))
              (let ()
                (declare (not safe))
                (_%g197772197838%_ _%g197773197842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g197772197838%_
                                                 _%g197773197842%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197772197838%_
                                             _%g197773197842%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197772197838%_
                                         _%g197773197842%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197772197838%_ _%g197773197842%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g197772197838%_ _%g197773197842%_)))
                  (let ()
                    (declare (not safe))
                    (_%g197772197838%_ _%g197773197842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197772197838%_
                                                       _%g197773197842%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197772197838%_
                                               _%g197773197842%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197772197838%_
                                           _%g197773197842%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g197772197838%_ _%g197773197842%_)))
                            (let ()
                              (declare (not safe))
                              (_%g197772197838%_ _%g197773197842%_)))
                        (let ()
                          (declare (not safe))
                          (_%g197772197838%_ _%g197773197842%_)))))
                (let ()
                  (declare (not safe))
                  (_%g197772197838%_ _%g197773197842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197772197838%_
                                                   _%g197773197842%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197772197838%_
                                               _%g197773197842%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197772197838%_
                                         _%g197773197842%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197772197838%_ _%g197773197842%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g197772197838%_ _%g197773197842%_))))))
          (declare (not safe))
          (_%g197771198085%_ _%sig197769%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx198857%_)
        (let* ((_%g198860198878%_
                (lambda (_%g198861198874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198861198874%_))))
               (_%g198859198933%_
                (lambda (_%g198861198882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198861198882%_))
                      (let ((_%e198866198885%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198861198882%_))))
                        (let ((_%hd198865198889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198866198885%_)))
                              (_%tl198864198892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198866198885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198864198892%_))
                              (let ((_%e198869198895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198864198892%_))))
                                (let ((_%hd198868198899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198869198895%_)))
                                      (_%tl198867198902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198869198895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198867198902%_))
                                      (let ((_%e198872198905%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198867198902%_))))
                                        (let ((_%hd198871198909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198872198905%_)))
                                              (_%tl198870198912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198872198905%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198870198912%_))
                                              ((lambda (_%L198915%_
                                                        _%L198917%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L198917%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L198915%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx198857%_
                                                          _%L198917%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx198857%_
                                                          _%L198915%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L198917%_
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
                                                   (cons _%L198915%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g198860198878%_
                                                      _%g198861198882%_)))
                                               _%hd198871198909%_
                                               _%hd198868198899%_)
                                              (_%g198860198878%_
                                               _%g198861198882%_))))
                                      (_%g198860198878%_ _%g198861198882%_))))
                              (_%g198860198878%_ _%g198861198882%_))))
                      (_%g198860198878%_ _%g198861198882%_)))))
          (_%g198859198933%_ _%stx198857%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx198937%_)
        (let* ((_%g198940198964%_
                (lambda (_%g198941198960%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198941198960%_))))
               (_%g198939199247%_
                (lambda (_%g198941198968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198941198968%_))
                      (let ((_%e198946198971%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198941198968%_))))
                        (let ((_%hd198945198975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198946198971%_)))
                              (_%tl198944198978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198946198971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198944198978%_))
                              (let ((_%e198949198981%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198944198978%_))))
                                (let ((_%hd198948198985%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198949198981%_)))
                                      (_%tl198947198988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198949198981%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198947198988%_))
                                      (let ((_g201245_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198947198988%_
                                                '0))))
                                        (begin
                                          (let ((_g201246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201245_)
                                                       (##vector-length
                                                        _g201245_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201246_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201246_)))
                                          (let ((_%target198950198991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201245_ 0)))
                                                (_%tl198952198994%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201245_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198952198994%_))
                                                (letrec ((_%loop198953198997%_
                                                          (lambda (_%hd198951199001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature198957199004%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198951199001%_))
                        (let ((_%e198954199007%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd198951199001%_))))
                          (let ((_%lp-hd198955199011%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198954199007%_)))
                                (_%lp-tl198956199014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198954199007%_))))
                            (_%loop198953198997%_
                             _%lp-tl198956199014%_
                             (cons _%lp-hd198955199011%_
                                   _%signature198957199004%_))))
                        (let ((_%signature198958199017%_
                               (reverse _%signature198957199004%_)))
                          ((lambda (_%L199021%_ _%L199023%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199023%_))
                                 (let* ((_%g199041199056%_
                                         (lambda (_%g199042199052%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199042199052%_))))
                                        (_%g199040199235%_
                                         (lambda (_%g199042199060%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g199042199060%_))
                                               (let ((_%e199047199063%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g199042199060%_))))
                                                 (let ((_%hd199046199067%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199047199063%_)))
                                                       (_%tl199045199070%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199047199063%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199045199070%_))
                                                       (let ((_%e199050199073%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199045199070%_))))
                 (let ((_%hd199049199077%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199050199073%_)))
                       (_%tl199048199080%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199050199073%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199048199080%_))
                       ((lambda (_%L199083%_ _%L199085%_)
                          (let ()
                            (let* ((_%g199101199109%_
                                    (lambda (_%g199102199105%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g199102199105%_))))
                                   (_%g199100199231%_
                                    (lambda (_%g199102199113%_)
                                      ((lambda (_%L199116%_)
                                         (let ()
                                           (let* ((_%unchecked199129%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L199083%_)))
                                                  (_%g199132199140%_
                                                   (lambda (_%g199133199136%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g199133199136%_))))
                                                  (_%g199131199163%_
                                                   (lambda (_%g199133199144%_)
                                                     ((lambda (_%L199147%_)
                                                        (let ()
                                                          (let ()
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin))
                          (cons _%L199116%_ (cons _%L199147%_ '()))))))
              _%g199133199144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g199131199163%_
                                              (if _%unchecked199129%_
                                                  (let* ((_%g199167199182%_
                                                          (lambda (_%g199168199178%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g199168199178%_))))
                                                         (_%g199166199227%_
                                                          (lambda (_%g199168199186%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g199168199186%_))
                        (let ((_%e199173199189%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g199168199186%_))))
                          (let ((_%hd199172199193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199173199189%_)))
                                (_%tl199171199196%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199173199189%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199171199196%_))
                                (let ((_%e199176199199%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199171199196%_))))
                                  (let ((_%hd199175199203%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199176199199%_)))
                                        (_%tl199174199206%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199176199199%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199174199206%_))
                                        ((lambda (_%L199209%_ _%L199211%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L199211%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L199085%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L199209%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd199175199203%_
                                         _%hd199172199193%_)
                                        (_%g199167199182%_
                                         _%g199168199186%_))))
                                (_%g199167199182%_ _%g199168199186%_))))
                        (_%g199167199182%_ _%g199168199186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199166199227%_
                                                     _%unchecked199129%_))
                                                  '(begin))))))
                                       _%g199102199113%_))))
                              (_%g199100199231%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L199023%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L199085%_ '()))
                     (cons '#f (cons 'signature: (cons _%L199083%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd199049199077%_
                        _%hd199046199067%_)
                       (_%g199041199056%_ _%g199042199060%_))))
               (_%g199041199056%_ _%g199042199060%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199041199056%_
                                                _%g199042199060%_)))))
                                   (_%g199040199235%_
                                    (let ((__tmp201247
                                           (let ((__tmp201248
                                                  (lambda (_%g199238199241%_
                                                           _%g199239199244%_)
                                                    (cons _%g199238199241%_
                                                          _%g199239199244%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201248
                                              '()
                                              _%L199021%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx198937%_
                                       _%L199023%_
                                       __tmp201247))))
                                 (_%g198940198964%_ _%g198941198968%_)))
                           _%signature198958199017%_
                           _%hd198948198985%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop198953198997%_
                                                   _%target198950198991%_
                                                   '()))
                                                (_%g198940198964%_
                                                 _%g198941198968%_)))))
                                      (_%g198940198964%_ _%g198941198968%_))))
                              (_%g198940198964%_ _%g198941198968%_))))
                      (_%g198940198964%_ _%g198941198968%_)))))
          (_%g198939199247%_ _%stx198937%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx199252%_)
        (let* ((_%g199255199279%_
                (lambda (_%g199256199275%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199256199275%_))))
               (_%g199254200093%_
                (lambda (_%g199256199283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199256199283%_))
                      (let ((_%e199261199286%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199256199283%_))))
                        (let ((_%hd199260199290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199261199286%_)))
                              (_%tl199259199293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199261199286%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199259199293%_))
                              (let ((_%e199264199296%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199259199293%_))))
                                (let ((_%hd199263199300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199264199296%_)))
                                      (_%tl199262199303%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199264199296%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199262199303%_))
                                      (let ((_g201249_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199262199303%_
                                                '0))))
                                        (begin
                                          (let ((_g201250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201249_)
                                                       (##vector-length
                                                        _g201249_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201250_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201250_)))
                                          (let ((_%target199265199306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201249_ 0)))
                                                (_%tl199267199309%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201249_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199267199309%_))
                                                (letrec ((_%loop199268199312%_
                                                          (lambda (_%hd199266199316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature199272199319%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199266199316%_))
                        (let ((_%e199269199322%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199266199316%_))))
                          (let ((_%lp-hd199270199326%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199269199322%_)))
                                (_%lp-tl199271199329%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199269199322%_))))
                            (_%loop199268199312%_
                             _%lp-tl199271199329%_
                             (cons _%lp-hd199270199326%_
                                   _%case-signature199272199319%_))))
                        (let ((_%case-signature199273199332%_
                               (reverse _%case-signature199272199319%_)))
                          ((lambda (_%L199336%_ _%L199338%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199338%_))
                                 (let* ((_%signatures199369%_
                                         (map (lambda (_%g199355199357%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx199252%_
                                                   _%L199338%_
                                                   _%g199355199357%_)))
                                              (let ((__tmp201251
                                                     (lambda (_%g199360199363%_
                                                              _%g199361199366%_)
                                                       (cons _%g199360199363%_
                                                             _%g199361199366%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp201251
                                                 '()
                                                 _%L199336%_))))
                                        (_%g199372199398%_
                                         (lambda (_%g199373199394%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199373199394%_))))
                                        (_%g199371200089%_
                                         (lambda (_%g199373199402%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g199373199402%_))
                                               (let ((_g201252_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g199373199402%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g201253_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g201252_)
                        (##vector-length _g201252_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g201253_ 2)))
                 (error "Context expects 2 values" _g201253_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target199376199405%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201252_
                                                             0)))
                                                         (_%tl199378199408%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201252_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199378199408%_))
                                                         (letrec ((_%loop199379199411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd199377199415%_
                                    _%sig199383199418%_
                                    _%arity199384199420%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd199377199415%_))
                                 (let ((_%e199380199423%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd199377199415%_))))
                                   (let ((_%lp-hd199381199427%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199380199423%_)))
                                         (_%lp-tl199382199430%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199380199423%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd199381199427%_))
                                         (let ((_%e199389199433%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd199381199427%_))))
                                           (let ((_%hd199388199437%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199389199433%_)))
                                                 (_%tl199387199440%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199389199433%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199387199440%_))
                                                 (let ((_%e199392199443%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199387199440%_))))
                                                   (let ((_%hd199391199447%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199392199443%_)))
                                                         (_%tl199390199450%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199392199443%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199390199450%_))
                                                         (_%loop199379199411%_
                                                          _%lp-tl199382199430%_
                                                          (cons _%hd199391199447%_
                                                                _%sig199383199418%_)
                                                          (cons _%hd199388199437%_
                                                                _%arity199384199420%_))
                                                         (_%g199372199398%_
                                                          _%g199373199402%_))))
                                                 (_%g199372199398%_
                                                  _%g199373199402%_))))
                                         (_%g199372199398%_
                                          _%g199373199402%_))))
                                 (let ((_%sig199385199453%_
                                        (reverse _%sig199383199418%_))
                                       (_%arity199386199456%_
                                        (reverse _%arity199384199420%_)))
                                   ((lambda (_%L199459%_ _%L199461%_)
                                      (let ()
                                        (let* ((_%g199478199486%_
                                                (lambda (_%g199479199482%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g199479199482%_))))
                                               (_%g199477200074%_
                                                (lambda (_%g199479199490%_)
                                                  ((lambda (_%L199493%_)
                                                     (let ()
                                                       (let* ((_%g199506199514%_
                                                               (lambda (_%g199507199510%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g199507199510%_))))
                      (_%g199505199536%_
                       (lambda (_%g199507199518%_)
                         ((lambda (_%L199521%_)
                            (let ()
                              (let ()
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'begin))
                                      (cons _%L199493%_
                                            (cons _%L199521%_ '()))))))
                          _%g199507199518%_))))
                 (_%g199505199536%_
                  (let ((_g201254_
                         (let _%loop199540%_ ((_%rest199543%_
                                               _%signatures199369%_)
                                              (_%unchecked-proc199545%_ '#f)
                                              (_%unchecked-clauses199546%_
                                               '()))
                           (let* ((_%rest199547199555%_ _%rest199543%_)
                                  (_%else199549199567%_
                                   (lambda ()
                                     (values _%unchecked-proc199545%_
                                             (reverse!
                                              _%unchecked-clauses199546%_))))
                                  (_%K199551199939%_
                                   (lambda (_%rest199571%_ _%hd199573%_)
                                     (let* ((_%g199575199648%_
                                             (lambda (_%g199576199644%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199576199644%_))))
                                            (_%g199574199935%_
                                             (lambda (_%g199576199652%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199576199652%_))
                                                   (let ((_%e199584199655%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g199576199652%_))))
                                                     (let ((_%hd199583199659%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199584199655%_)))
                                                           (_%tl199582199662%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199584199655%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199582199662%_))
                                                           (let ((_%e199587199665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl199582199662%_))))
                     (let ((_%hd199586199669%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199587199665%_)))
                           (_%tl199585199672%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199587199665%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199586199669%_))
                           (let ((_%e199590199675%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd199586199669%_))))
                             (let ((_%hd199589199679%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199590199675%_)))
                                   (_%tl199588199682%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199590199675%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199588199682%_))
                                   (let ((_%e199593199685%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl199588199682%_))))
                                     (let ((_%hd199592199689%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199593199685%_)))
                                           (_%tl199591199692%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199593199685%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd199592199689%_))
                                           (let ((_%e199594199695%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd199592199689%_))))
                                             (if (equal? _%e199594199695%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199591199692%_))
                                                     (let ((_%e199597199699%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl199591199692%_))))
                                                       (let ((_%hd199596199703%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e199597199699%_)))
                     (_%tl199595199706%_
                      (let () (declare (not safe)) (##cdr _%e199597199699%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd199596199703%_))
                     (let ((_%e199600199709%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd199596199703%_))))
                       (let ((_%hd199599199713%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199600199709%_)))
                             (_%tl199598199716%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199600199709%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd199599199713%_))
                             (if (let ((__tmp201256 |gxc[1]#_g201257_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp201256
                                    _%hd199599199713%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl199598199716%_))
                                     (let ((_%e199603199719%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl199598199716%_))))
                                       (let ((_%hd199602199723%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199603199719%_)))
                                             (_%tl199601199726%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199603199719%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl199601199726%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199595199706%_))
                                                 (let ((_%e199606199729%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199595199706%_))))
                                                   (let ((_%hd199605199733%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199606199729%_)))
                                                         (_%tl199604199736%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199606199729%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd199605199733%_))
                                                         (let ((_%e199607199739%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd199605199733%_))))
                   (if (equal? _%e199607199739%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl199604199736%_))
                           (let ((_%e199610199743%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl199604199736%_))))
                             (let ((_%hd199609199747%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199610199743%_)))
                                   (_%tl199608199750%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199610199743%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199609199747%_))
                                   (let ((_%e199613199753%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd199609199747%_))))
                                     (let ((_%hd199612199757%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199613199753%_)))
                                           (_%tl199611199760%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199613199753%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd199612199757%_))
                                           (if (let ((__tmp201258
                                                      |gxc[1]#_g201259_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp201258
                                                  _%hd199612199757%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl199611199760%_))
                                                   (let ((_%e199616199763%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl199611199760%_))))
                                                     (let ((_%hd199615199767%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199616199763%_)))
                                                           (_%tl199614199770%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199616199763%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl199614199770%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl199608199750%_))
                       (let ((_%e199619199773%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl199608199750%_))))
                         (let ((_%hd199618199777%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199619199773%_)))
                               (_%tl199617199780%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199619199773%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd199618199777%_))
                               (let ((_%e199620199783%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd199618199777%_))))
                                 (if (equal? _%e199620199783%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl199617199780%_))
                                         (let ((_%e199623199787%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl199617199780%_))))
                                           (let ((_%hd199622199791%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199623199787%_)))
                                                 (_%tl199621199794%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199623199787%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd199622199791%_))
                                                 (let ((_%e199626199797%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd199622199791%_))))
                                                   (let ((_%hd199625199801%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199626199797%_)))
                                                         (_%tl199624199804%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199626199797%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd199625199801%_))
                                                         (if (let ((__tmp201260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g201261_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp201260 _%hd199625199801%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl199624199804%_))
                         (let ((_%e199629199807%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl199624199804%_))))
                           (let ((_%hd199628199811%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e199629199807%_)))
                                 (_%tl199627199814%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e199629199807%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl199627199814%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl199621199794%_))
                                     (let ((_%e199632199817%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl199621199794%_))))
                                       (let ((_%hd199631199821%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199632199817%_)))
                                             (_%tl199630199824%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199632199817%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd199631199821%_))
                                             (let ((_%e199633199827%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd199631199821%_))))
                                               (if (equal? _%e199633199827%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199630199824%_))
                                                       (let ((_%e199636199831%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199630199824%_))))
                 (let ((_%hd199635199835%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199636199831%_)))
                       (_%tl199634199838%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199636199831%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd199635199835%_))
                       (let ((_%e199639199841%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd199635199835%_))))
                         (let ((_%hd199638199845%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199639199841%_)))
                               (_%tl199637199848%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199639199841%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd199638199845%_))
                               (if (let ((__tmp201262 |gxc[1]#_g201263_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp201262
                                      _%hd199638199845%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl199637199848%_))
                                       (let ((_%e199642199851%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl199637199848%_))))
                                         (let ((_%hd199641199855%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199642199851%_)))
                                               (_%tl199640199858%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199642199851%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl199640199858%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199634199838%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199585199672%_))
                                                       ((lambda (_%L199861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L199863%_
                         _%L199864%_
                         _%L199865%_
                         _%L199866%_)
                  (let ((_%clause199927%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L199866%_ '()))
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
                                       (cons _%L199864%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked199929%_
                         (let () (declare (not safe)) (gx#stx-e _%L199861%_))))
                    (_%loop199540%_
                     _%rest199571%_
                     (let ((_%$e199931%_ _%unchecked199929%_))
                       (if _%$e199931%_ _%$e199931%_ _%unchecked-proc199545%_))
                     (cons _%clause199927%_ _%unchecked-clauses199546%_))))
                _%hd199641199855%_
                _%hd199628199811%_
                _%hd199615199767%_
                _%hd199602199723%_
                _%hd199583199659%_)
               (_%g199575199648%_ _%g199576199652%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199575199648%_
                                                    _%g199576199652%_))
                                               (_%g199575199648%_
                                                _%g199576199652%_))))
                                       (_%g199575199648%_ _%g199576199652%_))
                                   (_%g199575199648%_ _%g199576199652%_))
                               (_%g199575199648%_ _%g199576199652%_))))
                       (_%g199575199648%_ _%g199576199652%_))))
               (_%g199575199648%_ _%g199576199652%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199575199648%_
                                                    _%g199576199652%_)))
                                             (_%g199575199648%_
                                              _%g199576199652%_))))
                                     (_%g199575199648%_ _%g199576199652%_))
                                 (_%g199575199648%_ _%g199576199652%_))))
                         (_%g199575199648%_ _%g199576199652%_))
                     (_%g199575199648%_ _%g199576199652%_))
                 (_%g199575199648%_ _%g199576199652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199575199648%_
                                                  _%g199576199652%_))))
                                         (_%g199575199648%_ _%g199576199652%_))
                                     (_%g199575199648%_ _%g199576199652%_)))
                               (_%g199575199648%_ _%g199576199652%_))))
                       (_%g199575199648%_ _%g199576199652%_))
                   (_%g199575199648%_ _%g199576199652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199575199648%_
                                                    _%g199576199652%_))
                                               (_%g199575199648%_
                                                _%g199576199652%_))
                                           (_%g199575199648%_
                                            _%g199576199652%_))))
                                   (_%g199575199648%_ _%g199576199652%_))))
                           (_%g199575199648%_ _%g199576199652%_))
                       (_%g199575199648%_ _%g199576199652%_)))
                 (_%g199575199648%_ _%g199576199652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199575199648%_
                                                  _%g199576199652%_))
                                             (_%g199575199648%_
                                              _%g199576199652%_))))
                                     (_%g199575199648%_ _%g199576199652%_))
                                 (_%g199575199648%_ _%g199576199652%_))
                             (_%g199575199648%_ _%g199576199652%_))))
                     (_%g199575199648%_ _%g199576199652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199575199648%_
                                                      _%g199576199652%_))
                                                 (_%g199575199648%_
                                                  _%g199576199652%_)))
                                           (_%g199575199648%_
                                            _%g199576199652%_))))
                                   (_%g199575199648%_ _%g199576199652%_))))
                           (_%g199575199648%_ _%g199576199652%_))))
                   (_%g199575199648%_ _%g199576199652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199575199648%_
                                                    _%g199576199652%_)))))
                                       (_%g199574199935%_ _%hd199573%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest199547199555%_))
                                 (let ((_%hd199552199943%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest199547199555%_)))
                                       (_%tl199553199946%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199547199555%_))))
                                   (let* ((_%hd199949%_ _%hd199552199943%_)
                                          (_%rest199952%_ _%tl199553199946%_))
                                     (_%K199551199939%_
                                      _%rest199952%_
                                      _%hd199949%_)))
                                 (_%else199549199567%_))))))
                    (begin
                      (let ((_g201255_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201254_)
                                   (##vector-length _g201254_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201255_ 2)))
                            (error "Context expects 2 values" _g201255_)))
                      (let ((_%unchecked-proc199955%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201254_ 0)))
                            (_%unchecked-clauses199957%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201254_ 1))))
                        (if _%unchecked-proc199955%_
                            (let* ((_%g199959199983%_
                                    (lambda (_%g199960199979%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g199960199979%_))))
                                   (_%g199958200070%_
                                    (lambda (_%g199960199987%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g199960199987%_))
                                          (let ((_%e199965199990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g199960199987%_))))
                                            (let ((_%hd199964199994%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199965199990%_)))
                                                  (_%tl199963199997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199965199990%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199963199997%_))
                                                  (let ((_%e199968200000%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199963199997%_))))
                                                    (let ((_%hd199967200004%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199968200000%_)))
                                                          (_%tl199966200007%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199968200000%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd199967200004%_))
                                                          (let ((_g201264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd199967200004%_ '0))))
                    (begin
                      (let ((_g201265_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201264_)
                                   (##vector-length _g201264_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201265_ 2)))
                            (error "Context expects 2 values" _g201265_)))
                      (let ((_%target199969200010%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201264_ 0)))
                            (_%tl199971200013%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201264_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199971200013%_))
                            (letrec ((_%loop199972200016%_
                                      (lambda (_%hd199970200020%_
                                               _%clause199976200023%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199970200020%_))
                                            (let ((_%e199973200026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199970200020%_))))
                                              (let ((_%lp-hd199974200030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199973200026%_)))
                                                    (_%lp-tl199975200033%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199973200026%_))))
                                                (_%loop199972200016%_
                                                 _%lp-tl199975200033%_
                                                 (cons _%lp-hd199974200030%_
                                                       _%clause199976200023%_))))
                                            (let ((_%clause199977200036%_
                                                   (reverse _%clause199976200023%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199966200007%_))
                                                  ((lambda (_%L200040%_
                                                            _%L200042%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200042%_
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
                                                   (let ((__tmp201266
                                                          (lambda (_%g200061200064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g200062200067%_)
                    (cons _%g200061200064%_ _%g200062200067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp201266
                                                      '()
                                                      _%L200040%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause199977200036%_
                                                   _%hd199964199994%_)
                                                  (_%g199959199983%_
                                                   _%g199960199987%_)))))))
                              (_%loop199972200016%_
                               _%target199969200010%_
                               '()))
                            (_%g199959199983%_ _%g199960199987%_)))))
                  (_%g199959199983%_ _%g199960199987%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g199959199983%_
                                                   _%g199960199987%_))))
                                          (_%g199959199983%_
                                           _%g199960199987%_)))))
                              (_%g199958200070%_
                               (list _%unchecked-proc199955%_
                                     _%unchecked-clauses199957%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g199479199490%_))))
                                          (_%g199477200074%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L199338%_
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
                                            _%L199459%_
                                            _%L199461%_))
                                         (let ((__tmp201267
                                                (lambda (_%g200077200081%_
                                                         _%g200078200084%_
                                                         _%g200079200086%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g200078200084%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g200077200081%_ '())))))
                _%g200079200086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp201267
                                            '()
                                            _%L199459%_
                                            _%L199461%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig199385199453%_
                                    _%arity199386199456%_))))))
                   (_%loop199379199411%_ _%target199376199405%_ '() '()))
                 (_%g199372199398%_ _%g199373199402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199372199398%_
                                                _%g199373199402%_)))))
                                   (_%g199371200089%_ _%signatures199369%_))
                                 (_%g199255199279%_ _%g199256199283%_)))
                           _%case-signature199273199332%_
                           _%hd199263199300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199268199312%_
                                                   _%target199265199306%_
                                                   '()))
                                                (_%g199255199279%_
                                                 _%g199256199283%_)))))
                                      (_%g199255199279%_ _%g199256199283%_))))
                              (_%g199255199279%_ _%g199256199283%_))))
                      (_%g199255199279%_ _%g199256199283%_)))))
          (_%g199254200093%_ _%stx199252%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx200101%_)
        (let* ((_%__stx201083201084%_ _%$stx200101%_)
               (_%g200107200167%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201083201084%_)))))
          (let ((_%__kont201086201087%_
                 (lambda (_%L200389%_ _%L200391%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200391%_ '()))
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
                                                       (cons _%L200391%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200389%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201088201089%_
                 (lambda (_%L200314%_ _%L200316%_ _%L200317%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200317%_ '()))
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
                                                       (cons _%L200317%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200316%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200314%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201090201091%_
                 (lambda (_%L200228%_ _%L200230%_ _%L200231%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200231%_ '()))
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
                                                       (cons _%L200231%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200230%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200228%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201083201084%_))
                (let ((_%e200113200345%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201083201084%_))))
                  (let ((_%tl200111200352%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200113200345%_)))
                        (_%hd200112200349%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200113200345%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200111200352%_))
                        (let ((_%e200116200355%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200111200352%_))))
                          (let ((_%tl200114200362%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200116200355%_)))
                                (_%hd200115200359%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200116200355%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd200115200359%_))
                                (let ((_%e200117200365%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200115200359%_))))
                                  (if (equal? _%e200117200365%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200114200362%_))
                                          (let ((_%e200120200369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200114200362%_))))
                                            (let ((_%tl200118200376%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200120200369%_)))
                                                  (_%hd200119200373%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200120200369%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200118200376%_))
                                                  (let ((_%e200123200379%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200118200376%_))))
                                                    (let ((_%tl200121200386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200123200379%_)))
                                                          (_%hd200122200383%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200123200379%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200121200386%_))
                                                          (_%__kont201086201087%_
                                                           _%hd200122200383%_
                                                           _%hd200119200373%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200107200167%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200107200167%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200107200167%_)))
                                      (if (equal? _%e200117200365%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200114200362%_))
                                              (let ((_%e200136200284%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200114200362%_))))
                                                (let ((_%tl200134200291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200136200284%_)))
                                                      (_%hd200135200288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200136200284%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200134200291%_))
                                                      (let ((_%e200139200294%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200134200291%_))))
                (let ((_%tl200137200301%_
                       (let () (declare (not safe)) (##cdr _%e200139200294%_)))
                      (_%hd200138200298%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200139200294%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200137200301%_))
                      (let ((_%e200142200304%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200137200301%_))))
                        (let ((_%tl200140200311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200142200304%_)))
                              (_%hd200141200308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200142200304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200140200311%_))
                              (_%__kont201088201089%_
                               _%hd200141200308%_
                               _%hd200138200298%_
                               _%hd200135200288%_)
                              (let ()
                                (declare (not safe))
                                (_%g200107200167%_)))))
                      (let () (declare (not safe)) (_%g200107200167%_)))))
              (let () (declare (not safe)) (_%g200107200167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200107200167%_)))
                                          (if (equal? _%e200117200365%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200114200362%_))
                                                  (let ((_%e200155200198%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200114200362%_))))
                                                    (let ((_%tl200153200205%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200155200198%_)))
                                                          (_%hd200154200202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200155200198%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200153200205%_))
                                                          (let ((_%e200158200208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200153200205%_))))
                    (let ((_%tl200156200215%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200158200208%_)))
                          (_%hd200157200212%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200158200208%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200156200215%_))
                          (let ((_%e200161200218%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200156200215%_))))
                            (let ((_%tl200159200225%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200161200218%_)))
                                  (_%hd200160200222%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200161200218%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200159200225%_))
                                  (_%__kont201090201091%_
                                   _%hd200160200222%_
                                   _%hd200157200212%_
                                   _%hd200154200202%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200107200167%_)))))
                          (let () (declare (not safe)) (_%g200107200167%_)))))
                  (let () (declare (not safe)) (_%g200107200167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200107200167%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200107200167%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200107200167%_)))))
                        (let () (declare (not safe)) (_%g200107200167%_)))))
                (let () (declare (not safe)) (_%g200107200167%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx200413%_)
        (let* ((_%g200417200437%_
                (lambda (_%g200418200433%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200418200433%_))))
               (_%g200416200508%_
                (lambda (_%g200418200441%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200418200441%_))
                      (let ((_%e200422200444%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200418200441%_))))
                        (let ((_%hd200421200448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200422200444%_)))
                              (_%tl200420200451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200422200444%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200420200451%_))
                              (let ((_g201268_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200420200451%_
                                        '0))))
                                (begin
                                  (let ((_g201269_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201268_)
                                               (##vector-length _g201268_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201269_ 2)))
                                        (error "Context expects 2 values"
                                               _g201269_)))
                                  (let ((_%target200423200454%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201268_ 0)))
                                        (_%tl200425200457%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201268_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200425200457%_))
                                        (letrec ((_%loop200426200460%_
                                                  (lambda (_%hd200424200464%_
                                                           _%decl200430200467%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200424200464%_))
                                                        (let ((_%e200427200470%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200424200464%_))))
                  (let ((_%lp-hd200428200474%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200427200470%_)))
                        (_%lp-tl200429200477%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200427200470%_))))
                    (_%loop200426200460%_
                     _%lp-tl200429200477%_
                     (cons _%lp-hd200428200474%_ _%decl200430200467%_))))
                (let ((_%decl200431200480%_ (reverse _%decl200430200467%_)))
                  ((lambda (_%L200484%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp201270
                                  (lambda (_%g200499200502%_ _%g200500200505%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g200499200502%_)
                                          _%g200500200505%_))))
                             (declare (not safe))
                             (__foldr1 __tmp201270 '() _%L200484%_))))
                   _%decl200431200480%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200426200460%_
                                           _%target200423200454%_
                                           '()))
                                        (_%g200417200437%_
                                         _%g200418200441%_)))))
                              (_%g200417200437%_ _%g200418200441%_))))
                      (_%g200417200437%_ _%g200418200441%_)))))
          (_%g200416200508%_ _%$stx200413%_))))))
