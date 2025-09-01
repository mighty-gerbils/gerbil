(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1756715353)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx133825%_)
        (letrec ((_%expand-special133827%_
                  (lambda (_%hd133829%_ _%K133830%_ _%rest133831%_ _%r133832%_)
                    (_%K133830%_
                     _%rest133831%_
                     (cons (gx#core-expand-top _%hd133829%_) _%r133832%_)))))
          (gx#core-expand-block__0 _%stx133825%_ _%expand-special133827%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx133578%_)
        (letrec ((_%expand-special133580%_
                  (lambda (_%hd133700%_ _%K133701%_ _%rest133702%_ _%r133703%_)
                    (let* ((_%K133707%_
                            (lambda (_%e133705%_)
                              (_%K133701%_
                               _%rest133702%_
                               (cons _%e133705%_ _%r133703%_))))
                           (_%e133708133737%_ _%hd133700%_)
                           (_%E133732133741%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e133708133737%_)))
                           (_%E133728133753%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133708133737%_)
                                  (let ((_%e133733133745%_
                                         (gx#syntax-e _%e133708133737%_)))
                                    (let ((_%hd133734133748%_
                                           (##car _%e133733133745%_))
                                          (_%tl133735133750%_
                                           (##cdr _%e133733133745%_)))
                                      (if (and (gx#identifier?
                                                _%hd133734133748%_)
                                               (gx#core-identifier=?
                                                _%hd133734133748%_
                                                '%#define-runtime))
                                          (_%K133707%_
                                           (gx#core-expand-define-runtime%
                                            _%hd133700%_))
                                          (_%E133732133741%_))))
                                  (_%E133732133741%_))))
                           (_%E133724133765%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133708133737%_)
                                  (let ((_%e133729133757%_
                                         (gx#syntax-e _%e133708133737%_)))
                                    (let ((_%hd133730133760%_
                                           (##car _%e133729133757%_))
                                          (_%tl133731133762%_
                                           (##cdr _%e133729133757%_)))
                                      (if (and (gx#identifier?
                                                _%hd133730133760%_)
                                               (gx#core-identifier=?
                                                _%hd133730133760%_
                                                '%#define-alias))
                                          (_%K133707%_
                                           (gx#core-expand-define-alias%
                                            _%hd133700%_))
                                          (_%E133728133753%_))))
                                  (_%E133728133753%_))))
                           (_%E133714133777%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133708133737%_)
                                  (let ((_%e133725133769%_
                                         (gx#syntax-e _%e133708133737%_)))
                                    (let ((_%hd133726133772%_
                                           (##car _%e133725133769%_))
                                          (_%tl133727133774%_
                                           (##cdr _%e133725133769%_)))
                                      (if (and (gx#identifier?
                                                _%hd133726133772%_)
                                               (gx#core-identifier=?
                                                _%hd133726133772%_
                                                '%#define-syntax))
                                          (_%K133707%_
                                           (gx#core-expand-define-syntax%
                                            _%hd133700%_))
                                          (_%E133724133765%_))))
                                  (_%E133724133765%_))))
                           (_%E133710133809%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133708133737%_)
                                  (let ((_%e133715133781%_
                                         (gx#syntax-e _%e133708133737%_)))
                                    (let ((_%hd133716133784%_
                                           (##car _%e133715133781%_))
                                          (_%tl133717133786%_
                                           (##cdr _%e133715133781%_)))
                                      (if (and (gx#identifier?
                                                _%hd133716133784%_)
                                               (gx#core-identifier=?
                                                _%hd133716133784%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl133717133786%_)
                                              (let ((_%e133718133789%_
                                                     (gx#syntax-e
                                                      _%tl133717133786%_)))
                                                (let ((_%hd133719133792%_
                                                       (##car _%e133718133789%_))
                                                      (_%tl133720133794%_
                                                       (##cdr _%e133718133789%_)))
                                                  (let ((_%hd-bind133797%_
                                                         _%hd133719133792%_))
                                                    (if (gx#stx-pair?
                                                         _%tl133720133794%_)
                                                        (let ((_%e133721133799%_
                                                               (gx#syntax-e
                                                                _%tl133720133794%_)))
                                                          (let ((_%hd133722133802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e133721133799%_))
                        (_%tl133723133804%_ (##cdr _%e133721133799%_)))
                    (let ((_%expr133807%_ _%hd133722133802%_))
                      (if (gx#stx-null? _%tl133723133804%_)
                          (if (gx#core-bind-values? _%hd-bind133797%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind133797%_)
                                (_%K133707%_ _%hd133700%_))
                              (_%E133714133777%_))
                          (_%E133714133777%_)))))
                (_%E133714133777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133714133777%_))
                                          (_%E133714133777%_))))
                                  (_%E133714133777%_))))
                           (_%E133709133821%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133708133737%_)
                                  (let ((_%e133711133813%_
                                         (gx#syntax-e _%e133708133737%_)))
                                    (let ((_%hd133712133816%_
                                           (##car _%e133711133813%_))
                                          (_%tl133713133818%_
                                           (##cdr _%e133711133813%_)))
                                      (if (and (gx#identifier?
                                                _%hd133712133816%_)
                                               (gx#core-identifier=?
                                                _%hd133712133816%_
                                                '%#begin-syntax))
                                          (_%K133707%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd133700%_))
                                          (_%E133710133809%_))))
                                  (_%E133710133809%_)))))
                      (_%E133709133821%_))))
                 (_%eval-body133581%_
                  (lambda (_%rbody133589%_)
                    (let _%lp133591%_ ((_%rest133593%_ _%rbody133589%_)
                                       (_%body133594%_ '())
                                       (_%ebody133595%_ '()))
                      (let* ((_%rest133596133604%_ _%rest133593%_)
                             (_%else133598133612%_
                              (lambda ()
                                (values _%body133594%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody133595%_)
                                          (gx#stx-source _%stx133578%_))))))
                             (_%K133600133688%_
                              (lambda (_%rest133615%_ _%hd133616%_)
                                (let* ((_%e133617133634%_ _%hd133616%_)
                                       (_%E133629133638%_
                                        (lambda ()
                                          (_%lp133591%_
                                           _%rest133615%_
                                           (cons _%hd133616%_ _%body133594%_)
                                           (cons _%hd133616%_
                                                 _%ebody133595%_))))
                                       (_%E133619133650%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e133617133634%_)
                                              (let ((_%e133630133642%_
                                                     (gx#syntax-e
                                                      _%e133617133634%_)))
                                                (let ((_%hd133631133645%_
                                                       (##car _%e133630133642%_))
                                                      (_%tl133632133647%_
                                                       (##cdr _%e133630133642%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd133631133645%_)
                                                           (gx#core-identifier=?
                                                            _%hd133631133645%_
                                                            '%#begin-syntax))
                                                      (_%lp133591%_
                                                       _%rest133615%_
                                                       (cons _%hd133616%_
                                                             _%body133594%_)
                                                       _%ebody133595%_)
                                                      (_%E133629133638%_))))
                                              (_%E133629133638%_))))
                                       (_%E133618133684%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e133617133634%_)
                                              (let ((_%e133620133654%_
                                                     (gx#syntax-e
                                                      _%e133617133634%_)))
                                                (let ((_%hd133621133657%_
                                                       (##car _%e133620133654%_))
                                                      (_%tl133622133659%_
                                                       (##cdr _%e133620133654%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd133621133657%_)
                                                           (gx#core-identifier=?
                                                            _%hd133621133657%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl133622133659%_)
                                                          (let ((_%e133623133662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl133622133659%_)))
                    (let ((_%hd133624133665%_ (##car _%e133623133662%_))
                          (_%tl133625133667%_ (##cdr _%e133623133662%_)))
                      (let ((_%hd-bind133670%_ _%hd133624133665%_))
                        (if (gx#stx-pair? _%tl133625133667%_)
                            (let ((_%e133626133672%_
                                   (gx#syntax-e _%tl133625133667%_)))
                              (let ((_%hd133627133675%_
                                     (##car _%e133626133672%_))
                                    (_%tl133628133677%_
                                     (##cdr _%e133626133672%_)))
                                (let ((_%expr133680%_ _%hd133627133675%_))
                                  (if (gx#stx-null? _%tl133628133677%_)
                                      (let ((_%ehd133682%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind133670%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr133680%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd133616%_))))
                                        (_%lp133591%_
                                         _%rest133615%_
                                         (cons _%ehd133682%_ _%body133594%_)
                                         (cons _%ehd133682%_ _%ebody133595%_)))
                                      (_%E133619133650%_)))))
                            (_%E133619133650%_)))))
                  (_%E133619133650%_))
              (_%E133619133650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133619133650%_)))))
                                  (_%E133618133684%_)))))
                        (if (pair? _%rest133596133604%_)
                            (let ((_%hd133601133691%_
                                   (##car _%rest133596133604%_))
                                  (_%tl133602133693%_
                                   (##cdr _%rest133596133604%_)))
                              (let* ((_%hd133696%_ _%hd133601133691%_)
                                     (_%rest133698%_ _%tl133602133693%_))
                                (_%K133600133688%_
                                 _%rest133698%_
                                 _%hd133696%_)))
                            (_%else133598133612%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody133584%_
                     (gx#core-expand-block__1
                      _%stx133578%_
                      _%expand-special133580%_
                      '#f))
                    (_g133848_ (_%eval-body133581%_ _%rbody133584%_)))
               (begin
                 (let ((_g133849_
                        (if (##values? _g133848_)
                            (##values-length _g133848_)
                            1)))
                   (if (not (##fx= _g133849_ 2))
                       (error "Context expects 2 values" _g133849_)))
                 (let ((_%expanded-body133586%_ (##values-ref _g133848_ 0))
                       (_%value133587%_ (##values-ref _g133848_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body133586%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value133587%_ '())))
                    (gx#stx-source _%stx133578%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx133548%_)
        (let* ((_%e133549133556%_ _%stx133548%_)
               (_%E133551133560%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133549133556%_)))
               (_%E133550133574%_
                (lambda ()
                  (if (gx#stx-pair? _%e133549133556%_)
                      (let ((_%e133552133564%_
                             (gx#syntax-e _%e133549133556%_)))
                        (let ((_%hd133553133567%_ (##car _%e133552133564%_))
                              (_%tl133554133569%_ (##cdr _%e133552133564%_)))
                          (let ((_%body133572%_ _%tl133554133569%_))
                            (if (gx#stx-list? _%body133572%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body133572%_)
                                 (gx#stx-source _%stx133548%_))
                                (_%E133551133560%_)))))
                      (_%E133551133560%_)))))
          (_%E133550133574%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx133546%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx133546%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx133492%_)
        (let* ((_%e133493133506%_ _%stx133492%_)
               (_%E133495133510%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133493133506%_)))
               (_%E133494133542%_
                (lambda ()
                  (if (gx#stx-pair? _%e133493133506%_)
                      (let ((_%e133496133514%_
                             (gx#syntax-e _%e133493133506%_)))
                        (let ((_%hd133497133517%_ (##car _%e133496133514%_))
                              (_%tl133498133519%_ (##cdr _%e133496133514%_)))
                          (if (gx#stx-pair? _%tl133498133519%_)
                              (let ((_%e133499133522%_
                                     (gx#syntax-e _%tl133498133519%_)))
                                (let ((_%hd133500133525%_
                                       (##car _%e133499133522%_))
                                      (_%tl133501133527%_
                                       (##cdr _%e133499133522%_)))
                                  (let ((_%ann133530%_ _%hd133500133525%_))
                                    (if (gx#stx-pair? _%tl133501133527%_)
                                        (let ((_%e133502133532%_
                                               (gx#syntax-e
                                                _%tl133501133527%_)))
                                          (let ((_%hd133503133535%_
                                                 (##car _%e133502133532%_))
                                                (_%tl133504133537%_
                                                 (##cdr _%e133502133532%_)))
                                            (let ((_%expr133540%_
                                                   _%hd133503133535%_))
                                              (if (gx#stx-null?
                                                   _%tl133504133537%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann133530%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr133540%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx133492%_))
                                                  (_%E133495133510%_)))))
                                        (_%E133495133510%_)))))
                              (_%E133495133510%_))))
                      (_%E133495133510%_)))))
          (_%E133494133542%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx133216%_ _%body133217%_)
        (letrec ((_%expand-special133219%_
                  (lambda (_%hd133487%_ _%K133488%_ _%rest133489%_ _%r133490%_)
                    (_%K133488%_
                     '()
                     (cons (_%expand-internal133220%_
                            _%hd133487%_
                            _%rest133489%_)
                           _%r133490%_))))
                 (_%expand-internal133220%_
                  (lambda (_%hd133483%_ _%rest133484%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal133222%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd133483%_ _%rest133484%_))
                          (gx#stx-source _%stx133216%_))
                         _%expand-internal-special133221%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj133842
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj133842)
                       __obj133842))))
                 (_%expand-internal-special133221%_
                  (lambda (_%hd133378%_ _%K133379%_ _%rest133380%_ _%r133381%_)
                    (let* ((_%e133382133407%_ _%hd133378%_)
                           (_%E133402133411%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e133382133407%_)))
                           (_%E133398133423%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133382133407%_)
                                  (let ((_%e133403133415%_
                                         (gx#syntax-e _%e133382133407%_)))
                                    (let ((_%hd133404133418%_
                                           (##car _%e133403133415%_))
                                          (_%tl133405133420%_
                                           (##cdr _%e133403133415%_)))
                                      (if (and (gx#identifier?
                                                _%hd133404133418%_)
                                               (gx#core-identifier=?
                                                _%hd133404133418%_
                                                '%#declare))
                                          (_%K133379%_
                                           _%rest133380%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd133378%_)
                                                 _%r133381%_))
                                          (_%E133402133411%_))))
                                  (_%E133402133411%_))))
                           (_%E133394133435%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133382133407%_)
                                  (let ((_%e133399133427%_
                                         (gx#syntax-e _%e133382133407%_)))
                                    (let ((_%hd133400133430%_
                                           (##car _%e133399133427%_))
                                          (_%tl133401133432%_
                                           (##cdr _%e133399133427%_)))
                                      (if (and (gx#identifier?
                                                _%hd133400133430%_)
                                               (gx#core-identifier=?
                                                _%hd133400133430%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd133378%_)
                                            (_%K133379%_
                                             _%rest133380%_
                                             _%r133381%_))
                                          (_%E133398133423%_))))
                                  (_%E133398133423%_))))
                           (_%E133384133447%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133382133407%_)
                                  (let ((_%e133395133439%_
                                         (gx#syntax-e _%e133382133407%_)))
                                    (let ((_%hd133396133442%_
                                           (##car _%e133395133439%_))
                                          (_%tl133397133444%_
                                           (##cdr _%e133395133439%_)))
                                      (if (and (gx#identifier?
                                                _%hd133396133442%_)
                                               (gx#core-identifier=?
                                                _%hd133396133442%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd133378%_)
                                            (_%K133379%_
                                             _%rest133380%_
                                             _%r133381%_))
                                          (_%E133394133435%_))))
                                  (_%E133394133435%_))))
                           (_%E133383133479%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133382133407%_)
                                  (let ((_%e133385133451%_
                                         (gx#syntax-e _%e133382133407%_)))
                                    (let ((_%hd133386133454%_
                                           (##car _%e133385133451%_))
                                          (_%tl133387133456%_
                                           (##cdr _%e133385133451%_)))
                                      (if (and (gx#identifier?
                                                _%hd133386133454%_)
                                               (gx#core-identifier=?
                                                _%hd133386133454%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl133387133456%_)
                                              (let ((_%e133388133459%_
                                                     (gx#syntax-e
                                                      _%tl133387133456%_)))
                                                (let ((_%hd133389133462%_
                                                       (##car _%e133388133459%_))
                                                      (_%tl133390133464%_
                                                       (##cdr _%e133388133459%_)))
                                                  (let ((_%hd-bind133467%_
                                                         _%hd133389133462%_))
                                                    (if (gx#stx-pair?
                                                         _%tl133390133464%_)
                                                        (let ((_%e133391133469%_
                                                               (gx#syntax-e
                                                                _%tl133390133464%_)))
                                                          (let ((_%hd133392133472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e133391133469%_))
                        (_%tl133393133474%_ (##cdr _%e133391133469%_)))
                    (let ((_%expr133477%_ _%hd133392133472%_))
                      (if (gx#stx-null? _%tl133393133474%_)
                          (if (gx#core-bind-values? _%hd-bind133467%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind133467%_)
                                (_%K133379%_
                                 _%rest133380%_
                                 (cons _%hd133378%_ _%r133381%_)))
                              (_%E133384133447%_))
                          (_%E133384133447%_)))))
                (_%E133384133447%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133384133447%_))
                                          (_%E133384133447%_))))
                                  (_%E133384133447%_)))))
                      (_%E133383133479%_))))
                 (_%wrap-internal133222%_
                  (lambda (_%rbody133224%_)
                    (let _%lp133226%_ ((_%rest133228%_ _%rbody133224%_)
                                       (_%decls133229%_ '())
                                       (_%bind133230%_ '())
                                       (_%body133231%_ '()))
                      (let* ((_%e133232133239%_ _%rest133228%_)
                             (_%E133234133288%_
                              (lambda ()
                                (let* ((_%body133283%_
                                        (let* ((_%body133242133252%_
                                                _%body133231%_)
                                               (_%else133245133260%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body133231%_)
                                                   (gx#stx-source
                                                    _%stx133216%_)))))
                                          (let ((_%K133250133280%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx133216%_)))
                                                (_%K133247133266%_
                                                 (lambda (_%expr133264%_)
                                                   _%expr133264%_)))
                                            (let ((_%try-match133244133276%_
                                                   (lambda ()
                                                     (if (pair? _%body133242133252%_)
                                                         (let ((_%tl133249133271%_
                                                                (##cdr _%body133242133252%_))
                                                               (_%hd133248133269%_
                                                                (##car _%body133242133252%_)))
                                                           (if (null? _%tl133249133271%_)
                                                               (let ((_%expr133274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd133248133269%_))
                         (_%K133247133266%_ _%expr133274%_))
                       (_%else133245133260%_)))
                 (_%else133245133260%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body133242133252%_)
                                                  (_%K133250133280%_)
                                                  (_%try-match133244133276%_))))))
                                       (_%body133285%_
                                        (if (null? _%bind133230%_)
                                            _%body133283%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind133230%_
                                                         (cons _%body133283%_
                                                               '())))
                                             (gx#stx-source _%stx133216%_)))))
                                  (if (null? _%decls133229%_)
                                      _%body133285%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls133229%_
                                                   (cons _%body133285%_ '())))
                                       (gx#stx-source _%stx133216%_))))))
                             (_%E133233133374%_
                              (lambda ()
                                (if (gx#stx-pair? _%e133232133239%_)
                                    (let ((_%e133235133292%_
                                           (gx#syntax-e _%e133232133239%_)))
                                      (let ((_%hd133236133295%_
                                             (##car _%e133235133292%_))
                                            (_%tl133237133297%_
                                             (##cdr _%e133235133292%_)))
                                        (let* ((_%hd133300%_
                                                _%hd133236133295%_)
                                               (_%rest133302%_
                                                _%tl133237133297%_)
                                               (_%e133303133320%_ _%hd133300%_)
                                               (_%E133315133324%_
                                                (lambda ()
                                                  (if (null? _%bind133230%_)
                                                      (_%lp133226%_
                                                       _%rest133302%_
                                                       _%decls133229%_
                                                       _%bind133230%_
                                                       (cons _%hd133300%_
                                                             _%body133231%_))
                                                      (_%lp133226%_
                                                       _%rest133302%_
                                                       _%decls133229%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd133300%_ '()))
                     _%bind133230%_)
               _%body133231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E133305133338%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e133303133320%_)
                                                      (let ((_%e133316133328%_
                                                             (gx#syntax-e
                                                              _%e133303133320%_)))
                                                        (let ((_%hd133317133331%_
                                                               (##car _%e133316133328%_))
                                                              (_%tl133318133333%_
                                                               (##cdr _%e133316133328%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd133317133331%_)
                           (gx#core-identifier=?
                            _%hd133317133331%_
                            '%#declare))
                      (let ((_%xdecls133336%_ _%tl133318133333%_))
                        (_%lp133226%_
                         _%rest133302%_
                         (gx#stx-foldr cons _%decls133229%_ _%xdecls133336%_)
                         _%bind133230%_
                         _%body133231%_))
                      (_%E133315133324%_))))
              (_%E133315133324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E133304133370%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e133303133320%_)
                                                      (let ((_%e133306133342%_
                                                             (gx#syntax-e
                                                              _%e133303133320%_)))
                                                        (let ((_%hd133307133345%_
                                                               (##car _%e133306133342%_))
                                                              (_%tl133308133347%_
                                                               (##cdr _%e133306133342%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd133307133345%_)
                           (gx#core-identifier=?
                            _%hd133307133345%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl133308133347%_)
                          (let ((_%e133309133350%_
                                 (gx#syntax-e _%tl133308133347%_)))
                            (let ((_%hd133310133353%_
                                   (##car _%e133309133350%_))
                                  (_%tl133311133355%_
                                   (##cdr _%e133309133350%_)))
                              (let ((_%hd-bind133358%_ _%hd133310133353%_))
                                (if (gx#stx-pair? _%tl133311133355%_)
                                    (let ((_%e133312133360%_
                                           (gx#syntax-e _%tl133311133355%_)))
                                      (let ((_%hd133313133363%_
                                             (##car _%e133312133360%_))
                                            (_%tl133314133365%_
                                             (##cdr _%e133312133360%_)))
                                        (let ((_%expr133368%_
                                               _%hd133313133363%_))
                                          (if (gx#stx-null? _%tl133314133365%_)
                                              (_%lp133226%_
                                               _%rest133302%_
                                               _%decls133229%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind133358%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr133368%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind133230%_)
                                               _%body133231%_)
                                              (_%E133305133338%_)))))
                                    (_%E133305133338%_)))))
                          (_%E133305133338%_))
                      (_%E133305133338%_))))
              (_%E133305133338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E133304133370%_))))
                                    (_%E133234133288%_)))))
                        (_%E133233133374%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body133217%_)
            (gx#stx-source _%stx133216%_))
           _%expand-special133219%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx133154%_)
        (let* ((_%e133155133162%_ _%stx133154%_)
               (_%E133157133166%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133155133162%_)))
               (_%E133156133212%_
                (lambda ()
                  (if (gx#stx-pair? _%e133155133162%_)
                      (let ((_%e133158133170%_
                             (gx#syntax-e _%e133155133162%_)))
                        (let ((_%hd133159133173%_ (##car _%e133158133170%_))
                              (_%tl133160133175%_ (##cdr _%e133158133170%_)))
                          (let ((_%body133178%_ _%tl133160133175%_))
                            (if (gx#stx-list? _%body133178%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl133180%_)
                                     (let* ((_%e133181133188%_ _%decl133180%_)
                                            (_%E133183133192%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e133181133188%_)))
                                            (_%E133182133208%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e133181133188%_)
                                                   (let ((_%e133184133196%_
                                                          (gx#syntax-e
                                                           _%e133181133188%_)))
                                                     (let ((_%hd133185133199%_
                                                            (##car _%e133184133196%_))
                                                           (_%tl133186133201%_
                                                            (##cdr _%e133184133196%_)))
                                                       (let* ((_%head133204%_
                                                               _%hd133185133199%_)
                                                              (_%args133206%_
                                                               _%tl133186133201%_))
                                                         (if (gx#stx-list?
                                                              _%args133206%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl133180%_)
                                                             (_%E133183133192%_)))))
                                                   (_%E133183133192%_)))))
                                       (_%E133182133208%_)))
                                   _%body133178%_))
                                 (gx#stx-source _%stx133154%_))
                                (_%E133157133166%_)))))
                      (_%E133157133166%_)))))
          (_%E133156133212%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx133058%_)
        (let* ((_%e133059133066%_ _%stx133058%_)
               (_%E133061133070%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133059133066%_)))
               (_%E133060133150%_
                (lambda ()
                  (if (gx#stx-pair? _%e133059133066%_)
                      (let ((_%e133062133074%_
                             (gx#syntax-e _%e133059133066%_)))
                        (let ((_%hd133063133077%_ (##car _%e133062133074%_))
                              (_%tl133064133079%_ (##cdr _%e133062133074%_)))
                          (let ((_%body133082%_ _%tl133064133079%_))
                            (let _%lp133084%_ ((_%rest133086%_ _%body133082%_)
                                               (_%r133087%_ '()))
                              (let* ((_%e133088133102%_ _%rest133086%_)
                                     (_%E133100133106%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx133058%_)))
                                     (_%E133090133110%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e133088133102%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r133087%_))
                                             (gx#stx-source _%stx133058%_))
                                            (_%E133100133106%_))))
                                     (_%E133089133146%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e133088133102%_)
                                            (let ((_%e133091133114%_
                                                   (gx#syntax-e
                                                    _%e133088133102%_)))
                                              (let ((_%hd133092133117%_
                                                     (##car _%e133091133114%_))
                                                    (_%tl133093133119%_
                                                     (##cdr _%e133091133114%_)))
                                                (if (gx#stx-pair?
                                                     _%hd133092133117%_)
                                                    (let ((_%e133094133122%_
                                                           (gx#syntax-e
                                                            _%hd133092133117%_)))
                                                      (let ((_%hd133095133125%_
                                                             (##car _%e133094133122%_))
                                                            (_%tl133096133127%_
                                                             (##cdr _%e133094133122%_)))
                                                        (let ((_%id133130%_
                                                               _%hd133095133125%_))
                                                          (if (gx#stx-pair?
                                                               _%tl133096133127%_)
                                                              (let ((_%e133097133132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl133096133127%_)))
                        (let ((_%hd133098133135%_ (##car _%e133097133132%_))
                              (_%tl133099133137%_ (##cdr _%e133097133132%_)))
                          (let ((_%eid133140%_ _%hd133098133135%_))
                            (if (gx#stx-null? _%tl133099133137%_)
                                (let ((_%rest133142%_ _%tl133093133119%_))
                                  (if (and (gx#identifier? _%id133130%_)
                                           (gx#identifier? _%eid133140%_))
                                      (let ((_%eid133144%_
                                             (gx#stx-e _%eid133140%_)))
                                        (gx#core-bind-extern!__0
                                         _%id133130%_
                                         _%eid133144%_)
                                        (_%lp133084%_
                                         _%rest133142%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id133130%_)
                                                     (cons _%eid133144%_ '()))
                                               _%r133087%_)))
                                      (_%E133090133110%_)))
                                (_%E133090133110%_)))))
                      (_%E133090133110%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E133090133110%_))))
                                            (_%E133090133110%_)))))
                                (_%E133089133146%_))))))
                      (_%E133061133070%_)))))
          (_%E133060133150%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx133004%_)
        (let* ((_%e133005133018%_ _%stx133004%_)
               (_%E133007133022%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133005133018%_)))
               (_%E133006133054%_
                (lambda ()
                  (if (gx#stx-pair? _%e133005133018%_)
                      (let ((_%e133008133026%_
                             (gx#syntax-e _%e133005133018%_)))
                        (let ((_%hd133009133029%_ (##car _%e133008133026%_))
                              (_%tl133010133031%_ (##cdr _%e133008133026%_)))
                          (if (gx#stx-pair? _%tl133010133031%_)
                              (let ((_%e133011133034%_
                                     (gx#syntax-e _%tl133010133031%_)))
                                (let ((_%hd133012133037%_
                                       (##car _%e133011133034%_))
                                      (_%tl133013133039%_
                                       (##cdr _%e133011133034%_)))
                                  (let ((_%hd133042%_ _%hd133012133037%_))
                                    (if (gx#stx-pair? _%tl133013133039%_)
                                        (let ((_%e133014133044%_
                                               (gx#syntax-e
                                                _%tl133013133039%_)))
                                          (let ((_%hd133015133047%_
                                                 (##car _%e133014133044%_))
                                                (_%tl133016133049%_
                                                 (##cdr _%e133014133044%_)))
                                            (let ((_%expr133052%_
                                                   _%hd133015133047%_))
                                              (if (gx#stx-null?
                                                   _%tl133016133049%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd133042%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd133042%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd133042%_)
                             (cons (gx#core-expand-expression _%expr133052%_)
                                   '())))
                 (gx#stx-source _%stx133004%_)))
              (_%E133007133022%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E133007133022%_)))))
                                        (_%E133007133022%_)))))
                              (_%E133007133022%_))))
                      (_%E133007133022%_)))))
          (_%E133006133054%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx132948%_)
        (let* ((_%e132949132962%_ _%stx132948%_)
               (_%E132951132966%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132949132962%_)))
               (_%E132950133000%_
                (lambda ()
                  (if (gx#stx-pair? _%e132949132962%_)
                      (let ((_%e132952132970%_
                             (gx#syntax-e _%e132949132962%_)))
                        (let ((_%hd132953132973%_ (##car _%e132952132970%_))
                              (_%tl132954132975%_ (##cdr _%e132952132970%_)))
                          (if (gx#stx-pair? _%tl132954132975%_)
                              (let ((_%e132955132978%_
                                     (gx#syntax-e _%tl132954132975%_)))
                                (let ((_%hd132956132981%_
                                       (##car _%e132955132978%_))
                                      (_%tl132957132983%_
                                       (##cdr _%e132955132978%_)))
                                  (let ((_%id132986%_ _%hd132956132981%_))
                                    (if (gx#stx-pair? _%tl132957132983%_)
                                        (let ((_%e132958132988%_
                                               (gx#syntax-e
                                                _%tl132957132983%_)))
                                          (let ((_%hd132959132991%_
                                                 (##car _%e132958132988%_))
                                                (_%tl132960132993%_
                                                 (##cdr _%e132958132988%_)))
                                            (let ((_%binding-id132996%_
                                                   _%hd132959132991%_))
                                              (if (gx#stx-null?
                                                   _%tl132960132993%_)
                                                  (if (and (gx#identifier?
                                                            _%id132986%_)
                                                           (gx#identifier?
                                                            _%binding-id132996%_))
                                                      (let ((_%eid132998%_
                                                             (gx#stx-e
                                                              _%binding-id132996%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id132986%_
                                                         _%eid132998%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id132986%_)
                             (cons _%eid132998%_ '())))))
              (_%E132951132966%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132951132966%_)))))
                                        (_%E132951132966%_)))))
                              (_%E132951132966%_))))
                      (_%E132951132966%_)))))
          (_%E132950133000%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx132891%_)
        (let* ((_%e132892132905%_ _%stx132891%_)
               (_%E132894132909%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132892132905%_)))
               (_%E132893132944%_
                (lambda ()
                  (if (gx#stx-pair? _%e132892132905%_)
                      (let ((_%e132895132913%_
                             (gx#syntax-e _%e132892132905%_)))
                        (let ((_%hd132896132916%_ (##car _%e132895132913%_))
                              (_%tl132897132918%_ (##cdr _%e132895132913%_)))
                          (if (gx#stx-pair? _%tl132897132918%_)
                              (let ((_%e132898132921%_
                                     (gx#syntax-e _%tl132897132918%_)))
                                (let ((_%hd132899132924%_
                                       (##car _%e132898132921%_))
                                      (_%tl132900132926%_
                                       (##cdr _%e132898132921%_)))
                                  (let ((_%id132929%_ _%hd132899132924%_))
                                    (if (gx#stx-pair? _%tl132900132926%_)
                                        (let ((_%e132901132931%_
                                               (gx#syntax-e
                                                _%tl132900132926%_)))
                                          (let ((_%hd132902132934%_
                                                 (##car _%e132901132931%_))
                                                (_%tl132903132936%_
                                                 (##cdr _%e132901132931%_)))
                                            (let ((_%expr132939%_
                                                   _%hd132902132934%_))
                                              (if (gx#stx-null?
                                                   _%tl132903132936%_)
                                                  (if (gx#identifier?
                                                       _%id132929%_)
                                                      (let ((_g133850_
                                                             (gx#core-expand-expression+1
                                                              _%expr132939%_)))
                                                        (begin
                                                          (let ((_g133851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g133850_)
                             (##values-length _g133850_)
                             1)))
                    (if (not (##fx= _g133851_ 2))
                        (error "Context expects 2 values" _g133851_)))
                  (let ((_%e-stx132941%_ (##values-ref _g133850_ 0))
                        (_%e132942%_ (##values-ref _g133850_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id132929%_ _%e132942%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id132929%_)
                                   (cons _%e-stx132941%_ '())))
                       (gx#stx-source _%stx132891%_))))))
              (_%E132894132909%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132894132909%_)))))
                                        (_%E132894132909%_)))))
                              (_%E132894132909%_))))
                      (_%E132894132909%_)))))
          (_%E132893132944%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx132835%_)
        (let* ((_%e132836132849%_ _%stx132835%_)
               (_%E132838132853%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132836132849%_)))
               (_%E132837132887%_
                (lambda ()
                  (if (gx#stx-pair? _%e132836132849%_)
                      (let ((_%e132839132857%_
                             (gx#syntax-e _%e132836132849%_)))
                        (let ((_%hd132840132860%_ (##car _%e132839132857%_))
                              (_%tl132841132862%_ (##cdr _%e132839132857%_)))
                          (if (gx#stx-pair? _%tl132841132862%_)
                              (let ((_%e132842132865%_
                                     (gx#syntax-e _%tl132841132862%_)))
                                (let ((_%hd132843132868%_
                                       (##car _%e132842132865%_))
                                      (_%tl132844132870%_
                                       (##cdr _%e132842132865%_)))
                                  (let ((_%id132873%_ _%hd132843132868%_))
                                    (if (gx#stx-pair? _%tl132844132870%_)
                                        (let ((_%e132845132875%_
                                               (gx#syntax-e
                                                _%tl132844132870%_)))
                                          (let ((_%hd132846132878%_
                                                 (##car _%e132845132875%_))
                                                (_%tl132847132880%_
                                                 (##cdr _%e132845132875%_)))
                                            (let ((_%alias-id132883%_
                                                   _%hd132846132878%_))
                                              (if (gx#stx-null?
                                                   _%tl132847132880%_)
                                                  (if (and (gx#identifier?
                                                            _%id132873%_)
                                                           (gx#identifier?
                                                            _%alias-id132883%_))
                                                      (let ((_%alias-id132885%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id132883%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id132873%_
                                                         _%alias-id132885%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id132873%_)
                             (cons _%alias-id132885%_ '())))))
              (_%E132838132853%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132838132853%_)))))
                                        (_%E132838132853%_)))))
                              (_%E132838132853%_))))
                      (_%E132838132853%_)))))
          (_%E132837132887%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx132778%_ _%wrap?132779%_)
        (let* ((_%e132780132790%_ _%stx132778%_)
               (_%E132782132794%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132780132790%_)))
               (_%E132781132821%_
                (lambda ()
                  (if (gx#stx-pair? _%e132780132790%_)
                      (let ((_%e132783132798%_
                             (gx#syntax-e _%e132780132790%_)))
                        (let ((_%hd132784132801%_ (##car _%e132783132798%_))
                              (_%tl132785132803%_ (##cdr _%e132783132798%_)))
                          (if (gx#stx-pair? _%tl132785132803%_)
                              (let ((_%e132786132806%_
                                     (gx#syntax-e _%tl132785132803%_)))
                                (let ((_%hd132787132809%_
                                       (##car _%e132786132806%_))
                                      (_%tl132788132811%_
                                       (##cdr _%e132786132806%_)))
                                  (let* ((_%hd132814%_ _%hd132787132809%_)
                                         (_%body132816%_ _%tl132788132811%_))
                                    (if (gx#core-bind-values? _%hd132814%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd132814%_)
                                           (let ((_%body132819%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd132814%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx132778%_
                                                               _%body132816%_)
                                                              '()))))
                                             (if _%wrap?132779%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body132819%_)
                                                  (gx#stx-source
                                                   _%stx132778%_))
                                                 _%body132819%_)))
                                         gx#current-expander-context
                                         (let ((__obj133843
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj133843)
                                           __obj133843))
                                        (_%E132782132794%_)))))
                              (_%E132782132794%_))))
                      (_%E132782132794%_)))))
          (_%E132781132821%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx132828%_)
        (let ((_%wrap?132830%_ '#t))
          (gx#core-expand-lambda%__% _%stx132828%_ _%wrap?132830%_))))
    (define gx#core-expand-lambda%
      (lambda _g133852_
        (let ((_g133853_ (##length _g133852_)))
          (cond ((##fx= _g133853_ 1)
                 (apply gx#core-expand-lambda%__0 _g133852_))
                ((##fx= _g133853_ 2)
                 (apply gx#core-expand-lambda%__% _g133852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g133852_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx132742%_)
        (let* ((_%e132743132750%_ _%stx132742%_)
               (_%E132745132754%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132743132750%_)))
               (_%E132744132773%_
                (lambda ()
                  (if (gx#stx-pair? _%e132743132750%_)
                      (let ((_%e132746132758%_
                             (gx#syntax-e _%e132743132750%_)))
                        (let ((_%hd132747132761%_ (##car _%e132746132758%_))
                              (_%tl132748132763%_ (##cdr _%e132746132758%_)))
                          (let ((_%clauses132766%_ _%tl132748132763%_))
                            (if (gx#stx-list? _%clauses132766%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause132768%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause132768%_)
                                       (let ((_%$e132770%_
                                              (gx#stx-source
                                               _%clause132768%_)))
                                         (if _%$e132770%_
                                             _%$e132770%_
                                             (gx#stx-source _%stx132742%_))))
                                      '#f))
                                   _%clauses132766%_))
                                 (gx#stx-source _%stx132742%_))
                                (_%E132745132754%_)))))
                      (_%E132745132754%_)))))
          (_%E132744132773%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx132696%_)
        (let* ((_%e132697132707%_ _%stx132696%_)
               (_%E132699132711%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132697132707%_)))
               (_%E132698132738%_
                (lambda ()
                  (if (gx#stx-pair? _%e132697132707%_)
                      (let ((_%e132700132715%_
                             (gx#syntax-e _%e132697132707%_)))
                        (let ((_%hd132701132718%_ (##car _%e132700132715%_))
                              (_%tl132702132720%_ (##cdr _%e132700132715%_)))
                          (if (gx#stx-pair? _%tl132702132720%_)
                              (let ((_%e132703132723%_
                                     (gx#syntax-e _%tl132702132720%_)))
                                (let ((_%hd132704132726%_
                                       (##car _%e132703132723%_))
                                      (_%tl132705132728%_
                                       (##cdr _%e132703132723%_)))
                                  (let* ((_%hd132731%_ _%hd132704132726%_)
                                         (_%body132733%_ _%tl132705132728%_))
                                    (if (gx#core-expand-let-bind? _%hd132731%_)
                                        (let ((_%expressions132735%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd132731%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd132731%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd132731%_
                                                           _%expressions132735%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx132696%_
                         _%body132733%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx132696%_)))
                                           gx#current-expander-context
                                           (let ((__obj133844
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj133844)
                                             __obj133844)))
                                        (_%E132699132711%_)))))
                              (_%E132699132711%_))))
                      (_%E132699132711%_)))))
          (_%E132698132738%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx132641%_ _%form132642%_)
        (let* ((_%e132643132653%_ _%stx132641%_)
               (_%E132645132657%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132643132653%_)))
               (_%E132644132682%_
                (lambda ()
                  (if (gx#stx-pair? _%e132643132653%_)
                      (let ((_%e132646132661%_
                             (gx#syntax-e _%e132643132653%_)))
                        (let ((_%hd132647132664%_ (##car _%e132646132661%_))
                              (_%tl132648132666%_ (##cdr _%e132646132661%_)))
                          (if (gx#stx-pair? _%tl132648132666%_)
                              (let ((_%e132649132669%_
                                     (gx#syntax-e _%tl132648132666%_)))
                                (let ((_%hd132650132672%_
                                       (##car _%e132649132669%_))
                                      (_%tl132651132674%_
                                       (##cdr _%e132649132669%_)))
                                  (let* ((_%hd132677%_ _%hd132650132672%_)
                                         (_%body132679%_ _%tl132651132674%_))
                                    (if (gx#core-expand-let-bind? _%hd132677%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd132677%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form132642%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd132677%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd132677%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx132641%_
                                                               _%body132679%_)
                                                              '())))
                                            (gx#stx-source _%stx132641%_)))
                                         gx#current-expander-context
                                         (let ((__obj133845
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj133845)
                                           __obj133845))
                                        (_%E132645132657%_)))))
                              (_%E132645132657%_))))
                      (_%E132645132657%_)))))
          (_%E132644132682%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx132689%_)
        (let ((_%form132691%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx132689%_ _%form132691%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g133854_
        (let ((_g133855_ (##length _g133854_)))
          (cond ((##fx= _g133855_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g133854_))
                ((##fx= _g133855_ 2)
                 (apply gx#core-expand-letrec-values%__% _g133854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g133854_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx132638%_)
        (gx#core-expand-letrec-values%__% _%stx132638%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx132595%_)
        (if (gx#stx-list? _%stx132595%_)
            (gx#stx-andmap
             (lambda (_%bind132597%_)
               (let* ((_%e132598132608%_ _%bind132597%_)
                      (_%E132600132612%_ (lambda () '#f))
                      (_%E132599132634%_
                       (lambda ()
                         (if (gx#stx-pair? _%e132598132608%_)
                             (let ((_%e132601132616%_
                                    (gx#syntax-e _%e132598132608%_)))
                               (let ((_%hd132602132619%_
                                      (##car _%e132601132616%_))
                                     (_%tl132603132621%_
                                      (##cdr _%e132601132616%_)))
                                 (let ((_%hd132624%_ _%hd132602132619%_))
                                   (if (gx#stx-pair? _%tl132603132621%_)
                                       (let ((_%e132604132626%_
                                              (gx#syntax-e
                                               _%tl132603132621%_)))
                                         (let ((_%hd132605132629%_
                                                (##car _%e132604132626%_))
                                               (_%tl132606132631%_
                                                (##cdr _%e132604132626%_)))
                                           (if (gx#stx-null?
                                                _%tl132606132631%_)
                                               (gx#core-bind-values?
                                                _%hd132624%_)
                                               (_%E132600132612%_))))
                                       (_%E132600132612%_)))))
                             (_%E132600132612%_)))))
                 (_%E132599132634%_)))
             _%stx132595%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind132554%_)
        (let* ((_%e132555132565%_ _%bind132554%_)
               (_%E132557132569%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132555132565%_)))
               (_%E132556132591%_
                (lambda ()
                  (if (gx#stx-pair? _%e132555132565%_)
                      (let ((_%e132558132573%_
                             (gx#syntax-e _%e132555132565%_)))
                        (let ((_%hd132559132576%_ (##car _%e132558132573%_))
                              (_%tl132560132578%_ (##cdr _%e132558132573%_)))
                          (if (gx#stx-pair? _%tl132560132578%_)
                              (let ((_%e132561132581%_
                                     (gx#syntax-e _%tl132560132578%_)))
                                (let ((_%hd132562132584%_
                                       (##car _%e132561132581%_))
                                      (_%tl132563132586%_
                                       (##cdr _%e132561132581%_)))
                                  (let ((_%expr132589%_ _%hd132562132584%_))
                                    (if (gx#stx-null? _%tl132563132586%_)
                                        (gx#core-expand-expression
                                         _%expr132589%_)
                                        (_%E132557132569%_)))))
                              (_%E132557132569%_))))
                      (_%E132557132569%_)))))
          (_%E132556132591%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind132513%_)
        (let* ((_%e132514132524%_ _%bind132513%_)
               (_%E132516132528%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132514132524%_)))
               (_%E132515132550%_
                (lambda ()
                  (if (gx#stx-pair? _%e132514132524%_)
                      (let ((_%e132517132532%_
                             (gx#syntax-e _%e132514132524%_)))
                        (let ((_%hd132518132535%_ (##car _%e132517132532%_))
                              (_%tl132519132537%_ (##cdr _%e132517132532%_)))
                          (let ((_%hd132540%_ _%hd132518132535%_))
                            (if (gx#stx-pair? _%tl132519132537%_)
                                (let ((_%e132520132542%_
                                       (gx#syntax-e _%tl132519132537%_)))
                                  (let ((_%hd132521132545%_
                                         (##car _%e132520132542%_))
                                        (_%tl132522132547%_
                                         (##cdr _%e132520132542%_)))
                                    (if (gx#stx-null? _%tl132522132547%_)
                                        (gx#core-bind-values!__0 _%hd132540%_)
                                        (_%E132516132528%_))))
                                (_%E132516132528%_)))))
                      (_%E132516132528%_)))))
          (_%E132515132550%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind132471%_ _%expr132472%_)
        (let* ((_%e132473132483%_ _%bind132471%_)
               (_%E132475132487%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132473132483%_)))
               (_%E132474132509%_
                (lambda ()
                  (if (gx#stx-pair? _%e132473132483%_)
                      (let ((_%e132476132491%_
                             (gx#syntax-e _%e132473132483%_)))
                        (let ((_%hd132477132494%_ (##car _%e132476132491%_))
                              (_%tl132478132496%_ (##cdr _%e132476132491%_)))
                          (let ((_%hd132499%_ _%hd132477132494%_))
                            (if (gx#stx-pair? _%tl132478132496%_)
                                (let ((_%e132479132501%_
                                       (gx#syntax-e _%tl132478132496%_)))
                                  (let ((_%hd132480132504%_
                                         (##car _%e132479132501%_))
                                        (_%tl132481132506%_
                                         (##cdr _%e132479132501%_)))
                                    (if (gx#stx-null? _%tl132481132506%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd132499%_)
                                              (cons _%expr132472%_ '()))
                                        (_%E132475132487%_))))
                                (_%E132475132487%_)))))
                      (_%E132475132487%_)))))
          (_%E132474132509%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx132425%_)
        (let* ((_%e132426132436%_ _%stx132425%_)
               (_%E132428132440%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132426132436%_)))
               (_%E132427132467%_
                (lambda ()
                  (if (gx#stx-pair? _%e132426132436%_)
                      (let ((_%e132429132444%_
                             (gx#syntax-e _%e132426132436%_)))
                        (let ((_%hd132430132447%_ (##car _%e132429132444%_))
                              (_%tl132431132449%_ (##cdr _%e132429132444%_)))
                          (if (gx#stx-pair? _%tl132431132449%_)
                              (let ((_%e132432132452%_
                                     (gx#syntax-e _%tl132431132449%_)))
                                (let ((_%hd132433132455%_
                                       (##car _%e132432132452%_))
                                      (_%tl132434132457%_
                                       (##cdr _%e132432132452%_)))
                                  (let* ((_%hd132460%_ _%hd132433132455%_)
                                         (_%body132462%_ _%tl132434132457%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd132460%_)
                                        (let ((_%expanders132464%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd132460%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd132460%_
                                              _%expanders132464%_)
                                             (gx#core-expand-local-block
                                              _%stx132425%_
                                              _%body132462%_))
                                           gx#current-expander-context
                                           (let ((__obj133846
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj133846)
                                             __obj133846)))
                                        (_%E132428132440%_)))))
                              (_%E132428132440%_))))
                      (_%E132428132440%_)))))
          (_%E132427132467%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx132374%_)
        (let* ((_%e132375132385%_ _%stx132374%_)
               (_%E132377132389%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132375132385%_)))
               (_%E132376132421%_
                (lambda ()
                  (if (gx#stx-pair? _%e132375132385%_)
                      (let ((_%e132378132393%_
                             (gx#syntax-e _%e132375132385%_)))
                        (let ((_%hd132379132396%_ (##car _%e132378132393%_))
                              (_%tl132380132398%_ (##cdr _%e132378132393%_)))
                          (if (gx#stx-pair? _%tl132380132398%_)
                              (let ((_%e132381132401%_
                                     (gx#syntax-e _%tl132380132398%_)))
                                (let ((_%hd132382132404%_
                                       (##car _%e132381132401%_))
                                      (_%tl132383132406%_
                                       (##cdr _%e132381132401%_)))
                                  (let* ((_%hd132409%_ _%hd132382132404%_)
                                         (_%body132411%_ _%tl132383132406%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd132409%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd132409%_
                                            (make-list
                                             (gx#stx-length _%hd132409%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g132413132416%_
                                                     _%g132414132418%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g132413132416%_
                                               _%g132414132418%_
                                               '#t))
                                            _%hd132409%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd132409%_))
                                           (gx#core-expand-local-block
                                            _%stx132374%_
                                            _%body132411%_))
                                         gx#current-expander-context
                                         (let ((__obj133847
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj133847)
                                           __obj133847))
                                        (_%E132377132389%_)))))
                              (_%E132377132389%_))))
                      (_%E132377132389%_)))))
          (_%E132376132421%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx132331%_)
        (if (gx#stx-list? _%stx132331%_)
            (gx#stx-andmap
             (lambda (_%bind132333%_)
               (let* ((_%e132334132344%_ _%bind132333%_)
                      (_%E132336132348%_ (lambda () '#f))
                      (_%E132335132370%_
                       (lambda ()
                         (if (gx#stx-pair? _%e132334132344%_)
                             (let ((_%e132337132352%_
                                    (gx#syntax-e _%e132334132344%_)))
                               (let ((_%hd132338132355%_
                                      (##car _%e132337132352%_))
                                     (_%tl132339132357%_
                                      (##cdr _%e132337132352%_)))
                                 (let ((_%hd132360%_ _%hd132338132355%_))
                                   (if (gx#stx-pair? _%tl132339132357%_)
                                       (let ((_%e132340132362%_
                                              (gx#syntax-e
                                               _%tl132339132357%_)))
                                         (let ((_%hd132341132365%_
                                                (##car _%e132340132362%_))
                                               (_%tl132342132367%_
                                                (##cdr _%e132340132362%_)))
                                           (if (gx#stx-null?
                                                _%tl132342132367%_)
                                               (gx#identifier? _%hd132360%_)
                                               (_%E132336132348%_))))
                                       (_%E132336132348%_)))))
                             (_%E132336132348%_)))))
                 (_%E132335132370%_)))
             _%stx132331%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind132287%_)
        (let* ((_%e132288132298%_ _%bind132287%_)
               (_%E132290132302%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132288132298%_)))
               (_%E132289132327%_
                (lambda ()
                  (if (gx#stx-pair? _%e132288132298%_)
                      (let ((_%e132291132306%_
                             (gx#syntax-e _%e132288132298%_)))
                        (let ((_%hd132292132309%_ (##car _%e132291132306%_))
                              (_%tl132293132311%_ (##cdr _%e132291132306%_)))
                          (if (gx#stx-pair? _%tl132293132311%_)
                              (let ((_%e132294132314%_
                                     (gx#syntax-e _%tl132293132311%_)))
                                (let ((_%hd132295132317%_
                                       (##car _%e132294132314%_))
                                      (_%tl132296132319%_
                                       (##cdr _%e132294132314%_)))
                                  (let ((_%expr132322%_ _%hd132295132317%_))
                                    (if (gx#stx-null? _%tl132296132319%_)
                                        (let ((_g133856_
                                               (gx#core-expand-expression+1
                                                _%expr132322%_)))
                                          (begin
                                            (let ((_g133857_
                                                   (if (##values? _g133856_)
                                                       (##values-length
                                                        _g133856_)
                                                       1)))
                                              (if (not (##fx= _g133857_ 2))
                                                  (error "Context expects 2 values"
                                                         _g133857_)))
                                            (let ((_%_132324%_
                                                   (##values-ref _g133856_ 0))
                                                  (_%e132325%_
                                                   (##values-ref _g133856_ 1)))
                                              _%e132325%_)))
                                        (_%E132290132302%_)))))
                              (_%E132290132302%_))))
                      (_%E132290132302%_)))))
          (_%E132289132327%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind132232%_ _%e132233%_ _%rebind?132234%_)
        (let* ((_%e132235132245%_ _%bind132232%_)
               (_%E132237132249%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132235132245%_)))
               (_%E132236132271%_
                (lambda ()
                  (if (gx#stx-pair? _%e132235132245%_)
                      (let ((_%e132238132253%_
                             (gx#syntax-e _%e132235132245%_)))
                        (let ((_%hd132239132256%_ (##car _%e132238132253%_))
                              (_%tl132240132258%_ (##cdr _%e132238132253%_)))
                          (let ((_%id132261%_ _%hd132239132256%_))
                            (if (gx#stx-pair? _%tl132240132258%_)
                                (let ((_%e132241132263%_
                                       (gx#syntax-e _%tl132240132258%_)))
                                  (let ((_%hd132242132266%_
                                         (##car _%e132241132263%_))
                                        (_%tl132243132268%_
                                         (##cdr _%e132241132263%_)))
                                    (if (gx#stx-null? _%tl132243132268%_)
                                        (gx#core-bind-syntax!__1
                                         _%id132261%_
                                         _%e132233%_
                                         _%rebind?132234%_)
                                        (_%E132237132249%_))))
                                (_%E132237132249%_)))))
                      (_%E132237132249%_)))))
          (_%E132236132271%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind132278%_ _%e132279%_)
        (let ((_%rebind?132281%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind132278%_
           _%e132279%_
           _%rebind?132281%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g133858_
        (let ((_g133859_ (##length _g133858_)))
          (cond ((##fx= _g133859_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g133858_))
                ((##fx= _g133859_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g133858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g133858_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx132190%_)
        (let* ((_%e132191132201%_ _%stx132190%_)
               (_%E132193132205%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132191132201%_)))
               (_%E132192132227%_
                (lambda ()
                  (if (gx#stx-pair? _%e132191132201%_)
                      (let ((_%e132194132209%_
                             (gx#syntax-e _%e132191132201%_)))
                        (let ((_%hd132195132212%_ (##car _%e132194132209%_))
                              (_%tl132196132214%_ (##cdr _%e132194132209%_)))
                          (if (gx#stx-pair? _%tl132196132214%_)
                              (let ((_%e132197132217%_
                                     (gx#syntax-e _%tl132196132214%_)))
                                (let ((_%hd132198132220%_
                                       (##car _%e132197132217%_))
                                      (_%tl132199132222%_
                                       (##cdr _%e132197132217%_)))
                                  (let ((_%expr132225%_ _%hd132198132220%_))
                                    (if (gx#stx-null? _%tl132199132222%_)
                                        (gx#core-expand-expression
                                         _%expr132225%_)
                                        (_%E132193132205%_)))))
                              (_%E132193132205%_))))
                      (_%E132193132205%_)))))
          (_%E132192132227%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx132149%_)
        (let* ((_%e132150132160%_ _%stx132149%_)
               (_%E132152132164%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132150132160%_)))
               (_%E132151132186%_
                (lambda ()
                  (if (gx#stx-pair? _%e132150132160%_)
                      (let ((_%e132153132168%_
                             (gx#syntax-e _%e132150132160%_)))
                        (let ((_%hd132154132171%_ (##car _%e132153132168%_))
                              (_%tl132155132173%_ (##cdr _%e132153132168%_)))
                          (if (gx#stx-pair? _%tl132155132173%_)
                              (let ((_%e132156132176%_
                                     (gx#syntax-e _%tl132155132173%_)))
                                (let ((_%hd132157132179%_
                                       (##car _%e132156132176%_))
                                      (_%tl132158132181%_
                                       (##cdr _%e132156132176%_)))
                                  (let ((_%e132184%_ _%hd132157132179%_))
                                    (if (gx#stx-null? _%tl132158132181%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e132184%_)
                                                     '()))
                                         (gx#stx-source _%stx132149%_))
                                        (_%E132152132164%_)))))
                              (_%E132152132164%_))))
                      (_%E132152132164%_)))))
          (_%E132151132186%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx132108%_)
        (let* ((_%e132109132119%_ _%stx132108%_)
               (_%E132111132123%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132109132119%_)))
               (_%E132110132145%_
                (lambda ()
                  (if (gx#stx-pair? _%e132109132119%_)
                      (let ((_%e132112132127%_
                             (gx#syntax-e _%e132109132119%_)))
                        (let ((_%hd132113132130%_ (##car _%e132112132127%_))
                              (_%tl132114132132%_ (##cdr _%e132112132127%_)))
                          (if (gx#stx-pair? _%tl132114132132%_)
                              (let ((_%e132115132135%_
                                     (gx#syntax-e _%tl132114132132%_)))
                                (let ((_%hd132116132138%_
                                       (##car _%e132115132135%_))
                                      (_%tl132117132140%_
                                       (##cdr _%e132115132135%_)))
                                  (let ((_%e132143%_ _%hd132116132138%_))
                                    (if (gx#stx-null? _%tl132117132140%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e132143%_)
                                                     '()))
                                         (gx#stx-source _%stx132108%_))
                                        (_%E132111132123%_)))))
                              (_%E132111132123%_))))
                      (_%E132111132123%_)))))
          (_%E132110132145%_))))
    (define gx#core-expand-call%
      (lambda (_%stx132065%_)
        (let* ((_%e132066132076%_ _%stx132065%_)
               (_%E132068132080%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132066132076%_)))
               (_%E132067132104%_
                (lambda ()
                  (if (gx#stx-pair? _%e132066132076%_)
                      (let ((_%e132069132084%_
                             (gx#syntax-e _%e132066132076%_)))
                        (let ((_%hd132070132087%_ (##car _%e132069132084%_))
                              (_%tl132071132089%_ (##cdr _%e132069132084%_)))
                          (if (gx#stx-pair? _%tl132071132089%_)
                              (let ((_%e132072132092%_
                                     (gx#syntax-e _%tl132071132089%_)))
                                (let ((_%hd132073132095%_
                                       (##car _%e132072132092%_))
                                      (_%tl132074132097%_
                                       (##cdr _%e132072132092%_)))
                                  (let* ((_%rator132100%_ _%hd132073132095%_)
                                         (_%args132102%_ _%tl132074132097%_))
                                    (if (gx#stx-list? _%args132102%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator132100%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args132102%_))
                                         (gx#stx-source _%stx132065%_))
                                        (_%E132068132080%_)))))
                              (_%E132068132080%_))))
                      (_%E132068132080%_)))))
          (_%E132067132104%_))))
    (define gx#core-expand-if%
      (lambda (_%stx131998%_)
        (let* ((_%e131999132015%_ _%stx131998%_)
               (_%E132001132019%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131999132015%_)))
               (_%E132000132061%_
                (lambda ()
                  (if (gx#stx-pair? _%e131999132015%_)
                      (let ((_%e132002132023%_
                             (gx#syntax-e _%e131999132015%_)))
                        (let ((_%hd132003132026%_ (##car _%e132002132023%_))
                              (_%tl132004132028%_ (##cdr _%e132002132023%_)))
                          (if (gx#stx-pair? _%tl132004132028%_)
                              (let ((_%e132005132031%_
                                     (gx#syntax-e _%tl132004132028%_)))
                                (let ((_%hd132006132034%_
                                       (##car _%e132005132031%_))
                                      (_%tl132007132036%_
                                       (##cdr _%e132005132031%_)))
                                  (let ((_%test132039%_ _%hd132006132034%_))
                                    (if (gx#stx-pair? _%tl132007132036%_)
                                        (let ((_%e132008132041%_
                                               (gx#syntax-e
                                                _%tl132007132036%_)))
                                          (let ((_%hd132009132044%_
                                                 (##car _%e132008132041%_))
                                                (_%tl132010132046%_
                                                 (##cdr _%e132008132041%_)))
                                            (let ((_%K132049%_
                                                   _%hd132009132044%_))
                                              (if (gx#stx-pair?
                                                   _%tl132010132046%_)
                                                  (let ((_%e132011132051%_
                                                         (gx#syntax-e
                                                          _%tl132010132046%_)))
                                                    (let ((_%hd132012132054%_
                                                           (##car _%e132011132051%_))
                                                          (_%tl132013132056%_
                                                           (##cdr _%e132011132051%_)))
                                                      (let ((_%E132059%_
                                                             _%hd132012132054%_))
                                                        (if (gx#stx-null?
                                                             _%tl132013132056%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test132039%_)
                                 (cons (gx#core-expand-expression _%K132049%_)
                                       (cons (gx#core-expand-expression
                                              _%E132059%_)
                                             '()))))
                     (gx#stx-source _%stx131998%_))
                    (_%E132001132019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132001132019%_)))))
                                        (_%E132001132019%_)))))
                              (_%E132001132019%_))))
                      (_%E132001132019%_)))))
          (_%E132000132061%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx131957%_)
        (let* ((_%e131958131968%_ _%stx131957%_)
               (_%E131960131972%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131958131968%_)))
               (_%E131959131994%_
                (lambda ()
                  (if (gx#stx-pair? _%e131958131968%_)
                      (let ((_%e131961131976%_
                             (gx#syntax-e _%e131958131968%_)))
                        (let ((_%hd131962131979%_ (##car _%e131961131976%_))
                              (_%tl131963131981%_ (##cdr _%e131961131976%_)))
                          (if (gx#stx-pair? _%tl131963131981%_)
                              (let ((_%e131964131984%_
                                     (gx#syntax-e _%tl131963131981%_)))
                                (let ((_%hd131965131987%_
                                       (##car _%e131964131984%_))
                                      (_%tl131966131989%_
                                       (##cdr _%e131964131984%_)))
                                  (let ((_%id131992%_ _%hd131965131987%_))
                                    (if (gx#stx-null? _%tl131966131989%_)
                                        (if (gx#identifier? _%id131992%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id131992%_
                                                          _%stx131957%_)
                                                         '()))
                                             (gx#stx-source _%stx131957%_))
                                            (_%E131960131972%_))
                                        (_%E131960131972%_)))))
                              (_%E131960131972%_))))
                      (_%E131960131972%_)))))
          (_%E131959131994%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx131903%_)
        (let* ((_%e131904131917%_ _%stx131903%_)
               (_%E131906131921%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131904131917%_)))
               (_%E131905131953%_
                (lambda ()
                  (if (gx#stx-pair? _%e131904131917%_)
                      (let ((_%e131907131925%_
                             (gx#syntax-e _%e131904131917%_)))
                        (let ((_%hd131908131928%_ (##car _%e131907131925%_))
                              (_%tl131909131930%_ (##cdr _%e131907131925%_)))
                          (if (gx#stx-pair? _%tl131909131930%_)
                              (let ((_%e131910131933%_
                                     (gx#syntax-e _%tl131909131930%_)))
                                (let ((_%hd131911131936%_
                                       (##car _%e131910131933%_))
                                      (_%tl131912131938%_
                                       (##cdr _%e131910131933%_)))
                                  (let ((_%id131941%_ _%hd131911131936%_))
                                    (if (gx#stx-pair? _%tl131912131938%_)
                                        (let ((_%e131913131943%_
                                               (gx#syntax-e
                                                _%tl131912131938%_)))
                                          (let ((_%hd131914131946%_
                                                 (##car _%e131913131943%_))
                                                (_%tl131915131948%_
                                                 (##cdr _%e131913131943%_)))
                                            (let ((_%expr131951%_
                                                   _%hd131914131946%_))
                                              (if (gx#stx-null?
                                                   _%tl131915131948%_)
                                                  (if (gx#identifier?
                                                       _%id131941%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id131941%_
                            _%stx131903%_)
                           (cons (gx#core-expand-expression _%expr131951%_)
                                 '())))
               (gx#stx-source _%stx131903%_))
              (_%E131906131921%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131906131921%_)))))
                                        (_%E131906131921%_)))))
                              (_%E131906131921%_))))
                      (_%E131906131921%_)))))
          (_%E131905131953%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx131748%_)
        (letrec ((_%generate131750%_
                  (lambda (_%body131780%_)
                    (let _%lp131782%_ ((_%rest131784%_ _%body131780%_)
                                       (_%ns131785%_
                                        (gx#core-context-namespace__0))
                                       (_%r131786%_ '()))
                      (let* ((_%e131787131802%_ _%rest131784%_)
                             (_%E131800131806%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e131787131802%_)))
                             (_%E131796131810%_
                              (lambda ()
                                (if (gx#stx-null? _%e131787131802%_)
                                    (reverse _%r131786%_)
                                    (_%E131800131806%_))))
                             (_%E131789131867%_
                              (lambda ()
                                (if (gx#stx-pair? _%e131787131802%_)
                                    (let ((_%e131797131814%_
                                           (gx#syntax-e _%e131787131802%_)))
                                      (let ((_%hd131798131817%_
                                             (##car _%e131797131814%_))
                                            (_%tl131799131819%_
                                             (##cdr _%e131797131814%_)))
                                        (let* ((_%hd131822%_
                                                _%hd131798131817%_)
                                               (_%rest131824%_
                                                _%tl131799131819%_))
                                          (if (gx#identifier? _%hd131822%_)
                                              (_%lp131782%_
                                               _%rest131824%_
                                               _%ns131785%_
                                               (cons (cons _%hd131822%_
                                                           (cons (if _%ns131785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd131822%_
                              _%ns131785%_
                              '"#"
                              _%hd131822%_)
                             _%hd131822%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r131786%_))
                                              (let* ((_%e131825131835%_
                                                      _%hd131822%_)
                                                     (_%E131827131839%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e131825131835%_)))
                                                     (_%E131826131863%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e131825131835%_)
                                                            (let ((_%e131828131843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e131825131835%_)))
                      (let ((_%hd131829131846%_ (##car _%e131828131843%_))
                            (_%tl131830131848%_ (##cdr _%e131828131843%_)))
                        (let ((_%id131851%_ _%hd131829131846%_))
                          (if (gx#stx-pair? _%tl131830131848%_)
                              (let ((_%e131831131853%_
                                     (gx#syntax-e _%tl131830131848%_)))
                                (let ((_%hd131832131856%_
                                       (##car _%e131831131853%_))
                                      (_%tl131833131858%_
                                       (##cdr _%e131831131853%_)))
                                  (let ((_%eid131861%_ _%hd131832131856%_))
                                    (if (gx#stx-null? _%tl131833131858%_)
                                        (if (and (gx#identifier? _%id131851%_)
                                                 (gx#identifier?
                                                  _%eid131861%_))
                                            (_%lp131782%_
                                             _%rest131824%_
                                             _%ns131785%_
                                             (cons (cons _%id131851%_
                                                         (cons _%eid131861%_
                                                               '()))
                                                   _%r131786%_))
                                            (_%E131827131839%_))
                                        (_%E131827131839%_)))))
                              (_%E131827131839%_)))))
                    (_%E131827131839%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E131826131863%_))))))
                                    (_%E131796131810%_))))
                             (_%E131788131899%_
                              (lambda ()
                                (if (gx#stx-pair? _%e131787131802%_)
                                    (let ((_%e131790131871%_
                                           (gx#syntax-e _%e131787131802%_)))
                                      (let ((_%hd131791131874%_
                                             (##car _%e131790131871%_))
                                            (_%tl131792131876%_
                                             (##cdr _%e131790131871%_)))
                                        (if (eq? (gx#stx-e _%hd131791131874%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl131792131876%_)
                                                (let ((_%e131793131879%_
                                                       (gx#syntax-e
                                                        _%tl131792131876%_)))
                                                  (let ((_%hd131794131882%_
                                                         (##car _%e131793131879%_))
                                                        (_%tl131795131884%_
                                                         (##cdr _%e131793131879%_)))
                                                    (let* ((_%ns131887%_
                                                            _%hd131794131882%_)
                                                           (_%rest131889%_
                                                            _%tl131795131884%_)
                                                           (_%ns131897%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns131887%_)
                        (symbol->string (gx#stx-e _%ns131887%_))
                        (if (or (gx#stx-string? _%ns131887%_)
                                (gx#stx-false? _%ns131887%_))
                            (gx#stx-e _%ns131887%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx131748%_
                             _%ns131887%_)))))
              (_%lp131782%_ _%rest131889%_ _%ns131897%_ _%r131786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E131789131867%_))
                                            (_%E131789131867%_))))
                                    (_%E131789131867%_)))))
                        (_%E131788131899%_))))))
          (let* ((_%e131751131758%_ _%stx131748%_)
                 (_%E131753131762%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e131751131758%_)))
                 (_%E131752131776%_
                  (lambda ()
                    (if (gx#stx-pair? _%e131751131758%_)
                        (let ((_%e131754131766%_
                               (gx#syntax-e _%e131751131758%_)))
                          (let ((_%hd131755131769%_ (##car _%e131754131766%_))
                                (_%tl131756131771%_ (##cdr _%e131754131766%_)))
                            (let ((_%body131774%_ _%tl131756131771%_))
                              (if (gx#stx-list? _%body131774%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate131750%_ _%body131774%_))
                                  (_%E131753131762%_)))))
                        (_%E131753131762%_)))))
            (_%E131752131776%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx131694%_)
        (let* ((_%e131695131708%_ _%stx131694%_)
               (_%E131697131712%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131695131708%_)))
               (_%E131696131744%_
                (lambda ()
                  (if (gx#stx-pair? _%e131695131708%_)
                      (let ((_%e131698131716%_
                             (gx#syntax-e _%e131695131708%_)))
                        (let ((_%hd131699131719%_ (##car _%e131698131716%_))
                              (_%tl131700131721%_ (##cdr _%e131698131716%_)))
                          (if (gx#stx-pair? _%tl131700131721%_)
                              (let ((_%e131701131724%_
                                     (gx#syntax-e _%tl131700131721%_)))
                                (let ((_%hd131702131727%_
                                       (##car _%e131701131724%_))
                                      (_%tl131703131729%_
                                       (##cdr _%e131701131724%_)))
                                  (let ((_%hd131732%_ _%hd131702131727%_))
                                    (if (gx#stx-pair? _%tl131703131729%_)
                                        (let ((_%e131704131734%_
                                               (gx#syntax-e
                                                _%tl131703131729%_)))
                                          (let ((_%hd131705131737%_
                                                 (##car _%e131704131734%_))
                                                (_%tl131706131739%_
                                                 (##cdr _%e131704131734%_)))
                                            (let ((_%expr131742%_
                                                   _%hd131705131737%_))
                                              (if (gx#stx-null?
                                                   _%tl131706131739%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd131732%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd131732%_)
                          (cons _%expr131742%_ '())))
              (_%E131697131712%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131697131712%_)))))
                                        (_%E131697131712%_)))))
                              (_%E131697131712%_))))
                      (_%E131697131712%_)))))
          (_%E131696131744%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx131640%_)
        (let* ((_%e131641131654%_ _%stx131640%_)
               (_%E131643131658%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131641131654%_)))
               (_%E131642131690%_
                (lambda ()
                  (if (gx#stx-pair? _%e131641131654%_)
                      (let ((_%e131644131662%_
                             (gx#syntax-e _%e131641131654%_)))
                        (let ((_%hd131645131665%_ (##car _%e131644131662%_))
                              (_%tl131646131667%_ (##cdr _%e131644131662%_)))
                          (if (gx#stx-pair? _%tl131646131667%_)
                              (let ((_%e131647131670%_
                                     (gx#syntax-e _%tl131646131667%_)))
                                (let ((_%hd131648131673%_
                                       (##car _%e131647131670%_))
                                      (_%tl131649131675%_
                                       (##cdr _%e131647131670%_)))
                                  (let ((_%hd131678%_ _%hd131648131673%_))
                                    (if (gx#stx-pair? _%tl131649131675%_)
                                        (let ((_%e131650131680%_
                                               (gx#syntax-e
                                                _%tl131649131675%_)))
                                          (let ((_%hd131651131683%_
                                                 (##car _%e131650131680%_))
                                                (_%tl131652131685%_
                                                 (##cdr _%e131650131680%_)))
                                            (let ((_%expr131688%_
                                                   _%hd131651131683%_))
                                              (if (gx#stx-null?
                                                   _%tl131652131685%_)
                                                  (if (gx#identifier?
                                                       _%hd131678%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd131678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr131688%_ '())))
              (_%E131643131658%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131643131658%_)))))
                                        (_%E131643131658%_)))))
                              (_%E131643131658%_))))
                      (_%E131643131658%_)))))
          (_%E131642131690%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx131586%_)
        (let* ((_%e131587131600%_ _%stx131586%_)
               (_%E131589131604%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131587131600%_)))
               (_%E131588131636%_
                (lambda ()
                  (if (gx#stx-pair? _%e131587131600%_)
                      (let ((_%e131590131608%_
                             (gx#syntax-e _%e131587131600%_)))
                        (let ((_%hd131591131611%_ (##car _%e131590131608%_))
                              (_%tl131592131613%_ (##cdr _%e131590131608%_)))
                          (if (gx#stx-pair? _%tl131592131613%_)
                              (let ((_%e131593131616%_
                                     (gx#syntax-e _%tl131592131613%_)))
                                (let ((_%hd131594131619%_
                                       (##car _%e131593131616%_))
                                      (_%tl131595131621%_
                                       (##cdr _%e131593131616%_)))
                                  (let ((_%id131624%_ _%hd131594131619%_))
                                    (if (gx#stx-pair? _%tl131595131621%_)
                                        (let ((_%e131596131626%_
                                               (gx#syntax-e
                                                _%tl131595131621%_)))
                                          (let ((_%hd131597131629%_
                                                 (##car _%e131596131626%_))
                                                (_%tl131598131631%_
                                                 (##cdr _%e131596131626%_)))
                                            (let ((_%alias-id131634%_
                                                   _%hd131597131629%_))
                                              (if (gx#stx-null?
                                                   _%tl131598131631%_)
                                                  (if (and (gx#identifier?
                                                            _%id131624%_)
                                                           (gx#identifier?
                                                            _%alias-id131634%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id131624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id131634%_ '())))
              (_%E131589131604%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131589131604%_)))))
                                        (_%E131589131604%_)))))
                              (_%E131589131604%_))))
                      (_%E131589131604%_)))))
          (_%E131588131636%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx131543%_)
        (let* ((_%e131544131554%_ _%stx131543%_)
               (_%E131546131558%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131544131554%_)))
               (_%E131545131582%_
                (lambda ()
                  (if (gx#stx-pair? _%e131544131554%_)
                      (let ((_%e131547131562%_
                             (gx#syntax-e _%e131544131554%_)))
                        (let ((_%hd131548131565%_ (##car _%e131547131562%_))
                              (_%tl131549131567%_ (##cdr _%e131547131562%_)))
                          (if (gx#stx-pair? _%tl131549131567%_)
                              (let ((_%e131550131570%_
                                     (gx#syntax-e _%tl131549131567%_)))
                                (let ((_%hd131551131573%_
                                       (##car _%e131550131570%_))
                                      (_%tl131552131575%_
                                       (##cdr _%e131550131570%_)))
                                  (let* ((_%hd131578%_ _%hd131551131573%_)
                                         (_%body131580%_ _%tl131552131575%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd131578%_)
                                             (gx#stx-list? _%body131580%_)
                                             (not (gx#stx-null?
                                                   _%body131580%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd131578%_)
                                         _%body131580%_)
                                        (_%E131546131558%_)))))
                              (_%E131546131558%_))))
                      (_%E131546131558%_)))))
          (_%E131545131582%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx131479%_)
        (letrec ((_%generate131481%_
                  (lambda (_%clause131511%_)
                    (let* ((_%e131512131519%_ _%clause131511%_)
                           (_%E131514131523%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx131479%_
                               _%clause131511%_)))
                           (_%E131513131539%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131512131519%_)
                                  (let ((_%e131515131527%_
                                         (gx#syntax-e _%e131512131519%_)))
                                    (let ((_%hd131516131530%_
                                           (##car _%e131515131527%_))
                                          (_%tl131517131532%_
                                           (##cdr _%e131515131527%_)))
                                      (let* ((_%hd131535%_ _%hd131516131530%_)
                                             (_%body131537%_
                                              _%tl131517131532%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd131535%_)
                                                 (gx#stx-list? _%body131537%_)
                                                 (not (gx#stx-null?
                                                       _%body131537%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd131535%_)
                                                   _%body131537%_)
                                             (gx#stx-source _%clause131511%_))
                                            (_%E131514131523%_)))))
                                  (_%E131514131523%_)))))
                      (_%E131513131539%_)))))
          (let* ((_%e131482131489%_ _%stx131479%_)
                 (_%E131484131493%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e131482131489%_)))
                 (_%E131483131507%_
                  (lambda ()
                    (if (gx#stx-pair? _%e131482131489%_)
                        (let ((_%e131485131497%_
                               (gx#syntax-e _%e131482131489%_)))
                          (let ((_%hd131486131500%_ (##car _%e131485131497%_))
                                (_%tl131487131502%_ (##cdr _%e131485131497%_)))
                            (let ((_%clauses131505%_ _%tl131487131502%_))
                              (if (gx#stx-list? _%clauses131505%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate131481%_
                                    _%clauses131505%_))
                                  (_%E131484131493%_)))))
                        (_%E131484131493%_)))))
            (_%E131483131507%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx131380%_ _%form131381%_)
        (letrec ((_%generate131383%_
                  (lambda (_%bind131426%_)
                    (let* ((_%e131427131437%_ _%bind131426%_)
                           (_%E131429131441%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx131380%_
                               _%bind131426%_)))
                           (_%E131428131465%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131427131437%_)
                                  (let ((_%e131430131445%_
                                         (gx#syntax-e _%e131427131437%_)))
                                    (let ((_%hd131431131448%_
                                           (##car _%e131430131445%_))
                                          (_%tl131432131450%_
                                           (##cdr _%e131430131445%_)))
                                      (let ((_%ids131453%_ _%hd131431131448%_))
                                        (if (gx#stx-pair? _%tl131432131450%_)
                                            (let ((_%e131433131455%_
                                                   (gx#syntax-e
                                                    _%tl131432131450%_)))
                                              (let ((_%hd131434131458%_
                                                     (##car _%e131433131455%_))
                                                    (_%tl131435131460%_
                                                     (##cdr _%e131433131455%_)))
                                                (let ((_%expr131463%_
                                                       _%hd131434131458%_))
                                                  (if (gx#stx-null?
                                                       _%tl131435131460%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids131453%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids131453%_)
                        (cons _%expr131463%_ '()))
                  (_%E131429131441%_))
              (_%E131429131441%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E131429131441%_)))))
                                  (_%E131429131441%_)))))
                      (_%E131428131465%_)))))
          (let* ((_%e131384131394%_ _%stx131380%_)
                 (_%E131386131398%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e131384131394%_)))
                 (_%E131385131422%_
                  (lambda ()
                    (if (gx#stx-pair? _%e131384131394%_)
                        (let ((_%e131387131402%_
                               (gx#syntax-e _%e131384131394%_)))
                          (let ((_%hd131388131405%_ (##car _%e131387131402%_))
                                (_%tl131389131407%_ (##cdr _%e131387131402%_)))
                            (if (gx#stx-pair? _%tl131389131407%_)
                                (let ((_%e131390131410%_
                                       (gx#syntax-e _%tl131389131407%_)))
                                  (let ((_%hd131391131413%_
                                         (##car _%e131390131410%_))
                                        (_%tl131392131415%_
                                         (##cdr _%e131390131410%_)))
                                    (let* ((_%hd131418%_ _%hd131391131413%_)
                                           (_%body131420%_ _%tl131392131415%_))
                                      (if (and (gx#stx-list? _%hd131418%_)
                                               (gx#stx-list? _%body131420%_)
                                               (not (gx#stx-null?
                                                     _%body131420%_)))
                                          (gx#core-cons*
                                           _%form131381%_
                                           (gx#stx-map1
                                            _%generate131383%_
                                            _%hd131418%_)
                                           _%body131420%_)
                                          (_%E131386131398%_)))))
                                (_%E131386131398%_))))
                        (_%E131386131398%_)))))
            (_%E131385131422%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx131472%_)
        (let ((_%form131474%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx131472%_ _%form131474%_))))
    (define gx#macro-expand-let-values
      (lambda _g133860_
        (let ((_g133861_ (##length _g133860_)))
          (cond ((##fx= _g133861_ 1)
                 (apply gx#macro-expand-let-values__0 _g133860_))
                ((##fx= _g133861_ 2)
                 (apply gx#macro-expand-let-values__% _g133860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g133860_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx131377%_)
        (gx#macro-expand-let-values__% _%stx131377%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx131375%_)
        (gx#macro-expand-let-values__% _%stx131375%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx131266%_)
        (let* ((_%e131267131293%_ _%stx131266%_)
               (_%E131279131297%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131267131293%_)))
               (_%E131269131339%_
                (lambda ()
                  (if (gx#stx-pair? _%e131267131293%_)
                      (let ((_%e131280131301%_
                             (gx#syntax-e _%e131267131293%_)))
                        (let ((_%hd131281131304%_ (##car _%e131280131301%_))
                              (_%tl131282131306%_ (##cdr _%e131280131301%_)))
                          (if (gx#stx-pair? _%tl131282131306%_)
                              (let ((_%e131283131309%_
                                     (gx#syntax-e _%tl131282131306%_)))
                                (let ((_%hd131284131312%_
                                       (##car _%e131283131309%_))
                                      (_%tl131285131314%_
                                       (##cdr _%e131283131309%_)))
                                  (let ((_%test131317%_ _%hd131284131312%_))
                                    (if (gx#stx-pair? _%tl131285131314%_)
                                        (let ((_%e131286131319%_
                                               (gx#syntax-e
                                                _%tl131285131314%_)))
                                          (let ((_%hd131287131322%_
                                                 (##car _%e131286131319%_))
                                                (_%tl131288131324%_
                                                 (##cdr _%e131286131319%_)))
                                            (let ((_%K131327%_
                                                   _%hd131287131322%_))
                                              (if (gx#stx-pair?
                                                   _%tl131288131324%_)
                                                  (let ((_%e131289131329%_
                                                         (gx#syntax-e
                                                          _%tl131288131324%_)))
                                                    (let ((_%hd131290131332%_
                                                           (##car _%e131289131329%_))
                                                          (_%tl131291131334%_
                                                           (##cdr _%e131289131329%_)))
                                                      (let ((_%E131337%_
                                                             _%hd131290131332%_))
                                                        (if (gx#stx-null?
                                                             _%tl131291131334%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test131317%_
                                                             _%K131327%_
                                                             _%E131337%_)
                                                            (_%E131279131297%_)))))
                                                  (_%E131279131297%_)))))
                                        (_%E131279131297%_)))))
                              (_%E131279131297%_))))
                      (_%E131279131297%_))))
               (_%E131268131371%_
                (lambda ()
                  (if (gx#stx-pair? _%e131267131293%_)
                      (let ((_%e131270131343%_
                             (gx#syntax-e _%e131267131293%_)))
                        (let ((_%hd131271131346%_ (##car _%e131270131343%_))
                              (_%tl131272131348%_ (##cdr _%e131270131343%_)))
                          (if (gx#stx-pair? _%tl131272131348%_)
                              (let ((_%e131273131351%_
                                     (gx#syntax-e _%tl131272131348%_)))
                                (let ((_%hd131274131354%_
                                       (##car _%e131273131351%_))
                                      (_%tl131275131356%_
                                       (##cdr _%e131273131351%_)))
                                  (let ((_%test131359%_ _%hd131274131354%_))
                                    (if (gx#stx-pair? _%tl131275131356%_)
                                        (let ((_%e131276131361%_
                                               (gx#syntax-e
                                                _%tl131275131356%_)))
                                          (let ((_%hd131277131364%_
                                                 (##car _%e131276131361%_))
                                                (_%tl131278131366%_
                                                 (##cdr _%e131276131361%_)))
                                            (let ((_%K131369%_
                                                   _%hd131277131364%_))
                                              (if (gx#stx-null?
                                                   _%tl131278131366%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test131359%_
                                                   _%K131369%_
                                                   '#!void)
                                                  (_%E131269131339%_)))))
                                        (_%E131269131339%_)))))
                              (_%E131269131339%_))))
                      (_%E131269131339%_)))))
          (_%E131268131371%_))))
    (define gx#free-identifier=?
      (lambda (_%xid131251%_ _%yid131252%_)
        (let ((_%xe131254%_ (gx#resolve-identifier__0 _%xid131251%_))
              (_%ye131255%_ (gx#resolve-identifier__0 _%yid131252%_)))
          (if (and _%xe131254%_ _%ye131255%_)
              (let ((_%$e131258%_ (eq? _%xe131254%_ _%ye131255%_)))
                (if _%$e131258%_
                    _%$e131258%_
                    (if (##structure-instance-of? _%xe131254%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye131255%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe131254%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye131255%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe131254%_ _%ye131255%_)
                  '#f
                  (gx#stx-eq? _%xid131251%_ _%yid131252%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid131232%_ _%yid131233%_)
        (letrec ((_%context131235%_
                  (lambda (_%e131249%_)
                    (if (##structure-direct-instance-of?
                         _%e131249%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e131249%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks131236%_
                  (lambda (_%e131244%_)
                    (if (symbol? _%e131244%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e131244%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e131244%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e131244%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap131237%_
                  (lambda (_%e131242%_)
                    (if (symbol? _%e131242%_)
                        _%e131242%_
                        (gx#syntax-local-unwrap _%e131242%_)))))
          (let ((_%x131239%_ (_%unwrap131237%_ _%xid131232%_))
                (_%y131240%_ (_%unwrap131237%_ _%yid131233%_)))
            (if (gx#stx-eq? _%x131239%_ _%y131240%_)
                (if (eq? (_%context131235%_ _%x131239%_)
                         (_%context131235%_ _%y131240%_))
                    (equal? (_%marks131236%_ _%x131239%_)
                            (_%marks131236%_ _%y131240%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx131230%_)
        (if (gx#identifier? _%stx131230%_)
            (gx#core-identifier=? _%stx131230%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx131228%_)
        (if (gx#identifier? _%stx131228%_)
            (gx#core-identifier=? _%stx131228%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx131171%_ _%where131172%_)
        (let _%lp131174%_ ((_%rest131176%_ (gx#syntax->list _%stx131171%_)))
          (let* ((_%rest131177131185%_ _%rest131176%_)
                 (_%else131179131193%_ (lambda () '#t))
                 (_%K131181131206%_
                  (lambda (_%rest131196%_ _%hd131197%_)
                    (if (gx#identifier? _%hd131197%_)
                        (if (__find (lambda (_%g131199131201%_)
                                      (gx#bound-identifier=?
                                       _%g131199131201%_
                                       _%hd131197%_))
                                    _%rest131196%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where131172%_
                             _%hd131197%_)
                            (_%lp131174%_ _%rest131196%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where131172%_
                         _%hd131197%_)))))
            (if (pair? _%rest131177131185%_)
                (let ((_%hd131182131209%_ (##car _%rest131177131185%_))
                      (_%tl131183131211%_ (##cdr _%rest131177131185%_)))
                  (let* ((_%hd131214%_ _%hd131182131209%_)
                         (_%rest131216%_ _%tl131183131211%_))
                    (_%K131181131206%_ _%rest131216%_ _%hd131214%_)))
                (_%else131179131193%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx131221%_)
        (let ((_%where131223%_ _%stx131221%_))
          (gx#check-duplicate-identifiers__% _%stx131221%_ _%where131223%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g133862_
        (let ((_g133863_ (##length _g133862_)))
          (cond ((##fx= _g133863_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g133862_))
                ((##fx= _g133863_ 2)
                 (apply gx#check-duplicate-identifiers__% _g133862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g133862_))))))
    (define gx#core-bind-values?
      (lambda (_%stx131163%_)
        (gx#stx-andmap
         (lambda (_%x131165%_)
           (let ((_%$e131167%_ (gx#identifier? _%x131165%_)))
             (if _%$e131167%_ _%$e131167%_ (gx#stx-false? _%x131165%_))))
         _%stx131163%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx131127%_ _%rebind?131128%_ _%phi131129%_ _%ctx131130%_)
        (gx#stx-for-each1
         (lambda (_%id131132%_)
           (if (gx#identifier? _%id131132%_)
               (gx#core-bind-runtime!__%
                _%id131132%_
                _%rebind?131128%_
                _%phi131129%_
                _%ctx131130%_)
               '#!void))
         _%stx131127%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx131137%_)
        (let* ((_%rebind?131139%_ '#f)
               (_%phi131141%_ (gx#current-expander-phi))
               (_%ctx131143%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx131137%_
           _%rebind?131139%_
           _%phi131141%_
           _%ctx131143%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx131145%_ _%rebind?131146%_)
        (let* ((_%phi131148%_ (gx#current-expander-phi))
               (_%ctx131150%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx131145%_
           _%rebind?131146%_
           _%phi131148%_
           _%ctx131150%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx131152%_ _%rebind?131153%_ _%phi131154%_)
        (let ((_%ctx131156%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx131152%_
           _%rebind?131153%_
           _%phi131154%_
           _%ctx131156%_))))
    (define gx#core-bind-values!
      (lambda _g133864_
        (let ((_g133865_ (##length _g133864_)))
          (cond ((##fx= _g133865_ 1) (apply gx#core-bind-values!__0 _g133864_))
                ((##fx= _g133865_ 2) (apply gx#core-bind-values!__1 _g133864_))
                ((##fx= _g133865_ 3) (apply gx#core-bind-values!__2 _g133864_))
                ((##fx= _g133865_ 4) (apply gx#core-bind-values!__% _g133864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g133864_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx131122%_)
        (gx#stx-map1
         (lambda (_%x131124%_)
           (if (gx#identifier? _%x131124%_)
               (gx#core-quote-syntax__0 _%x131124%_)
               '#f))
         _%stx131122%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx131115%_)
        (if (gx#identifier? _%stx131115%_)
            (let* ((_%bind131117%_ (gx#resolve-identifier__0 _%stx131115%_))
                   (_%$e131119%_ (not _%bind131117%_)))
              (if _%$e131119%_
                  _%$e131119%_
                  (##structure-instance-of?
                   _%bind131117%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id131104%_ _%form131105%_)
        (let ((_%bind131107%_ (gx#resolve-identifier__0 _%id131104%_)))
          (if (##structure-instance-of? _%bind131107%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id131104%_)
              (if (not _%bind131107%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id131104%_)))
                      (gx#core-quote-syntax__0 _%id131104%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form131105%_
                       _%id131104%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form131105%_
                   _%id131104%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id131059%_ _%rebind?131060%_ _%phi131061%_ _%ctx131062%_)
        (let* ((_%key131064%_ (gx#core-identifier-key _%id131059%_))
               (_%eid131066%_
                (gx#make-binding-id__%
                 _%key131064%_
                 '#f
                 _%phi131061%_
                 _%ctx131062%_))
               (_%bind131072%_
                (if (##structure-instance-of?
                     _%ctx131062%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid131066%_
                     _%key131064%_
                     _%phi131061%_
                     _%ctx131062%_)
                    (if (##structure-instance-of?
                         _%ctx131062%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid131066%_
                         _%key131064%_
                         _%phi131061%_)
                        (if (##structure-instance-of?
                             _%ctx131062%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid131066%_
                             _%key131064%_
                             _%phi131061%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid131066%_
                             _%key131064%_
                             _%phi131061%_))))))
          (gx#bind-identifier!__%
           _%id131059%_
           _%bind131072%_
           _%rebind?131060%_
           _%phi131061%_
           _%ctx131062%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id131078%_)
        (let* ((_%rebind?131080%_ '#f)
               (_%phi131082%_ (gx#current-expander-phi))
               (_%ctx131084%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id131078%_
           _%rebind?131080%_
           _%phi131082%_
           _%ctx131084%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id131086%_ _%rebind?131087%_)
        (let* ((_%phi131089%_ (gx#current-expander-phi))
               (_%ctx131091%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id131086%_
           _%rebind?131087%_
           _%phi131089%_
           _%ctx131091%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id131093%_ _%rebind?131094%_ _%phi131095%_)
        (let ((_%ctx131097%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id131093%_
           _%rebind?131094%_
           _%phi131095%_
           _%ctx131097%_))))
    (define gx#core-bind-runtime!
      (lambda _g133866_
        (let ((_g133867_ (##length _g133866_)))
          (cond ((##fx= _g133867_ 1)
                 (apply gx#core-bind-runtime!__0 _g133866_))
                ((##fx= _g133867_ 2)
                 (apply gx#core-bind-runtime!__1 _g133866_))
                ((##fx= _g133867_ 3)
                 (apply gx#core-bind-runtime!__2 _g133866_))
                ((##fx= _g133867_ 4)
                 (apply gx#core-bind-runtime!__% _g133866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g133866_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id131011%_
               _%eid131012%_
               _%rebind?131013%_
               _%phi131014%_
               _%ctx131015%_)
        (let* ((_%key131017%_ (gx#core-identifier-key _%id131011%_))
               (_%bind131022%_
                (if (##structure-instance-of?
                     _%ctx131015%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid131012%_
                     _%key131017%_
                     _%phi131014%_
                     _%ctx131015%_)
                    (if (##structure-instance-of?
                         _%ctx131015%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid131012%_
                         _%key131017%_
                         _%phi131014%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid131012%_
                         _%key131017%_
                         _%phi131014%_)))))
          (gx#bind-identifier!__%
           _%id131011%_
           _%bind131022%_
           _%rebind?131013%_
           _%phi131014%_
           _%ctx131015%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id131028%_ _%eid131029%_)
        (let* ((_%rebind?131031%_ '#f)
               (_%phi131033%_ (gx#current-expander-phi))
               (_%ctx131035%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id131028%_
           _%eid131029%_
           _%rebind?131031%_
           _%phi131033%_
           _%ctx131035%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id131037%_ _%eid131038%_ _%rebind?131039%_)
        (let* ((_%phi131041%_ (gx#current-expander-phi))
               (_%ctx131043%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id131037%_
           _%eid131038%_
           _%rebind?131039%_
           _%phi131041%_
           _%ctx131043%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id131045%_ _%eid131046%_ _%rebind?131047%_ _%phi131048%_)
        (let ((_%ctx131050%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id131045%_
           _%eid131046%_
           _%rebind?131047%_
           _%phi131048%_
           _%ctx131050%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g133868_
        (let ((_g133869_ (##length _g133868_)))
          (cond ((##fx= _g133869_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g133868_))
                ((##fx= _g133869_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g133868_))
                ((##fx= _g133869_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g133868_))
                ((##fx= _g133869_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g133868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g133868_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id130971%_
               _%eid130972%_
               _%rebind?130973%_
               _%phi130974%_
               _%ctx130975%_)
        (gx#bind-identifier!__%
         _%id130971%_
         (##structure
          gx#extern-binding::t
          _%eid130972%_
          (gx#core-identifier-key _%id130971%_)
          _%phi130974%_)
         _%rebind?130973%_
         _%phi130974%_
         _%ctx130975%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id130980%_ _%eid130981%_)
        (let* ((_%rebind?130983%_ '#f)
               (_%phi130985%_ (gx#current-expander-phi))
               (_%ctx130987%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id130980%_
           _%eid130981%_
           _%rebind?130983%_
           _%phi130985%_
           _%ctx130987%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id130989%_ _%eid130990%_ _%rebind?130991%_)
        (let* ((_%phi130993%_ (gx#current-expander-phi))
               (_%ctx130995%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id130989%_
           _%eid130990%_
           _%rebind?130991%_
           _%phi130993%_
           _%ctx130995%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id130997%_ _%eid130998%_ _%rebind?130999%_ _%phi131000%_)
        (let ((_%ctx131002%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id130997%_
           _%eid130998%_
           _%rebind?130999%_
           _%phi131000%_
           _%ctx131002%_))))
    (define gx#core-bind-extern!
      (lambda _g133870_
        (let ((_g133871_ (##length _g133870_)))
          (cond ((##fx= _g133871_ 2) (apply gx#core-bind-extern!__0 _g133870_))
                ((##fx= _g133871_ 3) (apply gx#core-bind-extern!__1 _g133870_))
                ((##fx= _g133871_ 4) (apply gx#core-bind-extern!__2 _g133870_))
                ((##fx= _g133871_ 5) (apply gx#core-bind-extern!__% _g133870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g133870_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id130925%_
               _%e130926%_
               _%rebind?130927%_
               _%phi130928%_
               _%ctx130929%_)
        (gx#bind-identifier!__%
         _%id130925%_
         (let ((_%key130934%_ (gx#core-identifier-key _%id130925%_))
               (_%e130935%_
                (if (or (##structure-instance-of? _%e130926%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e130926%_
                         'gx#expander-context::t))
                    _%e130926%_
                    (##structure
                     gx#user-expander::t
                     _%e130926%_
                     _%ctx130929%_
                     _%phi130928%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key130934%_
             '#t
             _%phi130928%_
             _%ctx130929%_)
            _%key130934%_
            _%phi130928%_
            _%e130935%_))
         _%rebind?130927%_
         _%phi130928%_
         _%ctx130929%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id130940%_ _%e130941%_)
        (let* ((_%rebind?130943%_ '#f)
               (_%phi130945%_ (gx#current-expander-phi))
               (_%ctx130947%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id130940%_
           _%e130941%_
           _%rebind?130943%_
           _%phi130945%_
           _%ctx130947%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id130949%_ _%e130950%_ _%rebind?130951%_)
        (let* ((_%phi130953%_ (gx#current-expander-phi))
               (_%ctx130955%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id130949%_
           _%e130950%_
           _%rebind?130951%_
           _%phi130953%_
           _%ctx130955%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id130957%_ _%e130958%_ _%rebind?130959%_ _%phi130960%_)
        (let ((_%ctx130962%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id130957%_
           _%e130958%_
           _%rebind?130959%_
           _%phi130960%_
           _%ctx130962%_))))
    (define gx#core-bind-syntax!
      (lambda _g133872_
        (let ((_g133873_ (##length _g133872_)))
          (cond ((##fx= _g133873_ 2) (apply gx#core-bind-syntax!__0 _g133872_))
                ((##fx= _g133873_ 3) (apply gx#core-bind-syntax!__1 _g133872_))
                ((##fx= _g133873_ 4) (apply gx#core-bind-syntax!__2 _g133872_))
                ((##fx= _g133873_ 5) (apply gx#core-bind-syntax!__% _g133872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g133872_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id130908%_ _%e130909%_ _%rebind?130910%_)
        (gx#core-bind-syntax!__%
         _%id130908%_
         _%e130909%_
         _%rebind?130910%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id130915%_ _%e130916%_)
        (let ((_%rebind?130918%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id130915%_
           _%e130916%_
           _%rebind?130918%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g133874_
        (let ((_g133875_ (##length _g133874_)))
          (cond ((##fx= _g133875_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g133874_))
                ((##fx= _g133875_ 3)
                 (apply gx#core-bind-root-syntax!__% _g133874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g133874_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id130866%_
               _%alias-id130867%_
               _%rebind?130868%_
               _%phi130869%_
               _%ctx130870%_)
        (gx#bind-identifier!__%
         _%id130866%_
         (let ((_%key130872%_ (gx#core-identifier-key _%id130866%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key130872%_
             '#t
             _%phi130869%_
             _%ctx130870%_)
            _%key130872%_
            _%phi130869%_
            _%alias-id130867%_))
         _%rebind?130868%_
         _%phi130869%_
         _%ctx130870%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id130877%_ _%alias-id130878%_)
        (let* ((_%rebind?130880%_ '#f)
               (_%phi130882%_ (gx#current-expander-phi))
               (_%ctx130884%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id130877%_
           _%alias-id130878%_
           _%rebind?130880%_
           _%phi130882%_
           _%ctx130884%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id130886%_ _%alias-id130887%_ _%rebind?130888%_)
        (let* ((_%phi130890%_ (gx#current-expander-phi))
               (_%ctx130892%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id130886%_
           _%alias-id130887%_
           _%rebind?130888%_
           _%phi130890%_
           _%ctx130892%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id130894%_ _%alias-id130895%_ _%rebind?130896%_ _%phi130897%_)
        (let ((_%ctx130899%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id130894%_
           _%alias-id130895%_
           _%rebind?130896%_
           _%phi130897%_
           _%ctx130899%_))))
    (define gx#core-bind-alias!
      (lambda _g133876_
        (let ((_g133877_ (##length _g133876_)))
          (cond ((##fx= _g133877_ 2) (apply gx#core-bind-alias!__0 _g133876_))
                ((##fx= _g133877_ 3) (apply gx#core-bind-alias!__1 _g133876_))
                ((##fx= _g133877_ 4) (apply gx#core-bind-alias!__2 _g133876_))
                ((##fx= _g133877_ 5) (apply gx#core-bind-alias!__% _g133876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g133876_))))))
    (define gx#make-binding-id__%
      (lambda (_%key130816%_ _%syntax?130817%_ _%phi130818%_ _%ctx130819%_)
        (if (uninterned-symbol? _%key130816%_)
            (##gensym 'L)
            (if (pair? _%key130816%_)
                (gensym (##car _%key130816%_))
                (if (##structure-instance-of? _%ctx130819%_ 'gx#top-context::t)
                    (let ((_%ns130824%_
                           (gx#core-context-namespace__% _%ctx130819%_)))
                      (if (and (fxzero? _%phi130818%_) (not _%syntax?130817%_))
                          (if _%ns130824%_
                              (make-symbol__1 _%ns130824%_ '"#" _%key130816%_)
                              _%key130816%_)
                          (if _%syntax?130817%_
                              (make-symbol__1
                               (let ((_%$e130828%_ _%ns130824%_))
                                 (if _%$e130828%_ _%$e130828%_ '""))
                               '"[:"
                               (number->string _%phi130818%_)
                               '":]#"
                               _%key130816%_)
                              (make-symbol__1
                               (let ((_%$e130832%_ _%ns130824%_))
                                 (if _%$e130832%_ _%$e130832%_ '""))
                               '"["
                               (number->string _%phi130818%_)
                               '"]#"
                               _%key130816%_))))
                    (gensym _%key130816%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key130839%_)
        (let* ((_%syntax?130841%_ '#f)
               (_%phi130843%_ (gx#current-expander-phi))
               (_%ctx130845%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key130839%_
           _%syntax?130841%_
           _%phi130843%_
           _%ctx130845%_))))
    (define gx#make-binding-id__1
      (lambda (_%key130847%_ _%syntax?130848%_)
        (let* ((_%phi130850%_ (gx#current-expander-phi))
               (_%ctx130852%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key130847%_
           _%syntax?130848%_
           _%phi130850%_
           _%ctx130852%_))))
    (define gx#make-binding-id__2
      (lambda (_%key130854%_ _%syntax?130855%_ _%phi130856%_)
        (let ((_%ctx130858%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key130854%_
           _%syntax?130855%_
           _%phi130856%_
           _%ctx130858%_))))
    (define gx#make-binding-id
      (lambda _g133878_
        (let ((_g133879_ (##length _g133878_)))
          (cond ((##fx= _g133879_ 1) (apply gx#make-binding-id__0 _g133878_))
                ((##fx= _g133879_ 2) (apply gx#make-binding-id__1 _g133878_))
                ((##fx= _g133879_ 3) (apply gx#make-binding-id__2 _g133878_))
                ((##fx= _g133879_ 4) (apply gx#make-binding-id__% _g133878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g133878_))))))))
