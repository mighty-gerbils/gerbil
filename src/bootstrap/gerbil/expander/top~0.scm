(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1756721295)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx133823%_)
        (letrec ((_%expand-special133825%_
                  (lambda (_%hd133827%_ _%K133828%_ _%rest133829%_ _%r133830%_)
                    (_%K133828%_
                     _%rest133829%_
                     (cons (gx#core-expand-top _%hd133827%_) _%r133830%_)))))
          (gx#core-expand-block__0 _%stx133823%_ _%expand-special133825%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx133576%_)
        (letrec ((_%expand-special133578%_
                  (lambda (_%hd133698%_ _%K133699%_ _%rest133700%_ _%r133701%_)
                    (let* ((_%K133705%_
                            (lambda (_%e133703%_)
                              (_%K133699%_
                               _%rest133700%_
                               (cons _%e133703%_ _%r133701%_))))
                           (_%e133706133735%_ _%hd133698%_)
                           (_%E133730133739%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e133706133735%_)))
                           (_%E133726133751%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133706133735%_)
                                  (let ((_%e133731133743%_
                                         (gx#syntax-e _%e133706133735%_)))
                                    (let ((_%hd133732133746%_
                                           (##car _%e133731133743%_))
                                          (_%tl133733133748%_
                                           (##cdr _%e133731133743%_)))
                                      (if (and (gx#identifier?
                                                _%hd133732133746%_)
                                               (gx#core-identifier=?
                                                _%hd133732133746%_
                                                '%#define-runtime))
                                          (_%K133705%_
                                           (gx#core-expand-define-runtime%
                                            _%hd133698%_))
                                          (_%E133730133739%_))))
                                  (_%E133730133739%_))))
                           (_%E133722133763%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133706133735%_)
                                  (let ((_%e133727133755%_
                                         (gx#syntax-e _%e133706133735%_)))
                                    (let ((_%hd133728133758%_
                                           (##car _%e133727133755%_))
                                          (_%tl133729133760%_
                                           (##cdr _%e133727133755%_)))
                                      (if (and (gx#identifier?
                                                _%hd133728133758%_)
                                               (gx#core-identifier=?
                                                _%hd133728133758%_
                                                '%#define-alias))
                                          (_%K133705%_
                                           (gx#core-expand-define-alias%
                                            _%hd133698%_))
                                          (_%E133726133751%_))))
                                  (_%E133726133751%_))))
                           (_%E133712133775%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133706133735%_)
                                  (let ((_%e133723133767%_
                                         (gx#syntax-e _%e133706133735%_)))
                                    (let ((_%hd133724133770%_
                                           (##car _%e133723133767%_))
                                          (_%tl133725133772%_
                                           (##cdr _%e133723133767%_)))
                                      (if (and (gx#identifier?
                                                _%hd133724133770%_)
                                               (gx#core-identifier=?
                                                _%hd133724133770%_
                                                '%#define-syntax))
                                          (_%K133705%_
                                           (gx#core-expand-define-syntax%
                                            _%hd133698%_))
                                          (_%E133722133763%_))))
                                  (_%E133722133763%_))))
                           (_%E133708133807%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133706133735%_)
                                  (let ((_%e133713133779%_
                                         (gx#syntax-e _%e133706133735%_)))
                                    (let ((_%hd133714133782%_
                                           (##car _%e133713133779%_))
                                          (_%tl133715133784%_
                                           (##cdr _%e133713133779%_)))
                                      (if (and (gx#identifier?
                                                _%hd133714133782%_)
                                               (gx#core-identifier=?
                                                _%hd133714133782%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl133715133784%_)
                                              (let ((_%e133716133787%_
                                                     (gx#syntax-e
                                                      _%tl133715133784%_)))
                                                (let ((_%hd133717133790%_
                                                       (##car _%e133716133787%_))
                                                      (_%tl133718133792%_
                                                       (##cdr _%e133716133787%_)))
                                                  (let ((_%hd-bind133795%_
                                                         _%hd133717133790%_))
                                                    (if (gx#stx-pair?
                                                         _%tl133718133792%_)
                                                        (let ((_%e133719133797%_
                                                               (gx#syntax-e
                                                                _%tl133718133792%_)))
                                                          (let ((_%hd133720133800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e133719133797%_))
                        (_%tl133721133802%_ (##cdr _%e133719133797%_)))
                    (let ((_%expr133805%_ _%hd133720133800%_))
                      (if (gx#stx-null? _%tl133721133802%_)
                          (if (gx#core-bind-values? _%hd-bind133795%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind133795%_)
                                (_%K133705%_ _%hd133698%_))
                              (_%E133712133775%_))
                          (_%E133712133775%_)))))
                (_%E133712133775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133712133775%_))
                                          (_%E133712133775%_))))
                                  (_%E133712133775%_))))
                           (_%E133707133819%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133706133735%_)
                                  (let ((_%e133709133811%_
                                         (gx#syntax-e _%e133706133735%_)))
                                    (let ((_%hd133710133814%_
                                           (##car _%e133709133811%_))
                                          (_%tl133711133816%_
                                           (##cdr _%e133709133811%_)))
                                      (if (and (gx#identifier?
                                                _%hd133710133814%_)
                                               (gx#core-identifier=?
                                                _%hd133710133814%_
                                                '%#begin-syntax))
                                          (_%K133705%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd133698%_))
                                          (_%E133708133807%_))))
                                  (_%E133708133807%_)))))
                      (_%E133707133819%_))))
                 (_%eval-body133579%_
                  (lambda (_%rbody133587%_)
                    (let _%lp133589%_ ((_%rest133591%_ _%rbody133587%_)
                                       (_%body133592%_ '())
                                       (_%ebody133593%_ '()))
                      (let* ((_%rest133594133602%_ _%rest133591%_)
                             (_%else133596133610%_
                              (lambda ()
                                (values _%body133592%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody133593%_)
                                          (gx#stx-source _%stx133576%_))))))
                             (_%K133598133686%_
                              (lambda (_%rest133613%_ _%hd133614%_)
                                (let* ((_%e133615133632%_ _%hd133614%_)
                                       (_%E133627133636%_
                                        (lambda ()
                                          (_%lp133589%_
                                           _%rest133613%_
                                           (cons _%hd133614%_ _%body133592%_)
                                           (cons _%hd133614%_
                                                 _%ebody133593%_))))
                                       (_%E133617133648%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e133615133632%_)
                                              (let ((_%e133628133640%_
                                                     (gx#syntax-e
                                                      _%e133615133632%_)))
                                                (let ((_%hd133629133643%_
                                                       (##car _%e133628133640%_))
                                                      (_%tl133630133645%_
                                                       (##cdr _%e133628133640%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd133629133643%_)
                                                           (gx#core-identifier=?
                                                            _%hd133629133643%_
                                                            '%#begin-syntax))
                                                      (_%lp133589%_
                                                       _%rest133613%_
                                                       (cons _%hd133614%_
                                                             _%body133592%_)
                                                       _%ebody133593%_)
                                                      (_%E133627133636%_))))
                                              (_%E133627133636%_))))
                                       (_%E133616133682%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e133615133632%_)
                                              (let ((_%e133618133652%_
                                                     (gx#syntax-e
                                                      _%e133615133632%_)))
                                                (let ((_%hd133619133655%_
                                                       (##car _%e133618133652%_))
                                                      (_%tl133620133657%_
                                                       (##cdr _%e133618133652%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd133619133655%_)
                                                           (gx#core-identifier=?
                                                            _%hd133619133655%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl133620133657%_)
                                                          (let ((_%e133621133660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl133620133657%_)))
                    (let ((_%hd133622133663%_ (##car _%e133621133660%_))
                          (_%tl133623133665%_ (##cdr _%e133621133660%_)))
                      (let ((_%hd-bind133668%_ _%hd133622133663%_))
                        (if (gx#stx-pair? _%tl133623133665%_)
                            (let ((_%e133624133670%_
                                   (gx#syntax-e _%tl133623133665%_)))
                              (let ((_%hd133625133673%_
                                     (##car _%e133624133670%_))
                                    (_%tl133626133675%_
                                     (##cdr _%e133624133670%_)))
                                (let ((_%expr133678%_ _%hd133625133673%_))
                                  (if (gx#stx-null? _%tl133626133675%_)
                                      (let ((_%ehd133680%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind133668%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr133678%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd133614%_))))
                                        (_%lp133589%_
                                         _%rest133613%_
                                         (cons _%ehd133680%_ _%body133592%_)
                                         (cons _%ehd133680%_ _%ebody133593%_)))
                                      (_%E133617133648%_)))))
                            (_%E133617133648%_)))))
                  (_%E133617133648%_))
              (_%E133617133648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133617133648%_)))))
                                  (_%E133616133682%_)))))
                        (if (pair? _%rest133594133602%_)
                            (let ((_%hd133599133689%_
                                   (##car _%rest133594133602%_))
                                  (_%tl133600133691%_
                                   (##cdr _%rest133594133602%_)))
                              (let* ((_%hd133694%_ _%hd133599133689%_)
                                     (_%rest133696%_ _%tl133600133691%_))
                                (_%K133598133686%_
                                 _%rest133696%_
                                 _%hd133694%_)))
                            (_%else133596133610%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody133582%_
                     (gx#core-expand-block__1
                      _%stx133576%_
                      _%expand-special133578%_
                      '#f))
                    (_g133846_ (_%eval-body133579%_ _%rbody133582%_)))
               (begin
                 (let ((_g133847_
                        (if (##values? _g133846_)
                            (##values-length _g133846_)
                            1)))
                   (if (not (##fx= _g133847_ 2))
                       (error "Context expects 2 values" _g133847_)))
                 (let ((_%expanded-body133584%_ (##values-ref _g133846_ 0))
                       (_%value133585%_ (##values-ref _g133846_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body133584%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value133585%_ '())))
                    (gx#stx-source _%stx133576%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx133546%_)
        (let* ((_%e133547133554%_ _%stx133546%_)
               (_%E133549133558%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133547133554%_)))
               (_%E133548133572%_
                (lambda ()
                  (if (gx#stx-pair? _%e133547133554%_)
                      (let ((_%e133550133562%_
                             (gx#syntax-e _%e133547133554%_)))
                        (let ((_%hd133551133565%_ (##car _%e133550133562%_))
                              (_%tl133552133567%_ (##cdr _%e133550133562%_)))
                          (let ((_%body133570%_ _%tl133552133567%_))
                            (if (gx#stx-list? _%body133570%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body133570%_)
                                 (gx#stx-source _%stx133546%_))
                                (_%E133549133558%_)))))
                      (_%E133549133558%_)))))
          (_%E133548133572%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx133544%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx133544%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx133490%_)
        (let* ((_%e133491133504%_ _%stx133490%_)
               (_%E133493133508%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133491133504%_)))
               (_%E133492133540%_
                (lambda ()
                  (if (gx#stx-pair? _%e133491133504%_)
                      (let ((_%e133494133512%_
                             (gx#syntax-e _%e133491133504%_)))
                        (let ((_%hd133495133515%_ (##car _%e133494133512%_))
                              (_%tl133496133517%_ (##cdr _%e133494133512%_)))
                          (if (gx#stx-pair? _%tl133496133517%_)
                              (let ((_%e133497133520%_
                                     (gx#syntax-e _%tl133496133517%_)))
                                (let ((_%hd133498133523%_
                                       (##car _%e133497133520%_))
                                      (_%tl133499133525%_
                                       (##cdr _%e133497133520%_)))
                                  (let ((_%ann133528%_ _%hd133498133523%_))
                                    (if (gx#stx-pair? _%tl133499133525%_)
                                        (let ((_%e133500133530%_
                                               (gx#syntax-e
                                                _%tl133499133525%_)))
                                          (let ((_%hd133501133533%_
                                                 (##car _%e133500133530%_))
                                                (_%tl133502133535%_
                                                 (##cdr _%e133500133530%_)))
                                            (let ((_%expr133538%_
                                                   _%hd133501133533%_))
                                              (if (gx#stx-null?
                                                   _%tl133502133535%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann133528%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr133538%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx133490%_))
                                                  (_%E133493133508%_)))))
                                        (_%E133493133508%_)))))
                              (_%E133493133508%_))))
                      (_%E133493133508%_)))))
          (_%E133492133540%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx133214%_ _%body133215%_)
        (letrec ((_%expand-special133217%_
                  (lambda (_%hd133485%_ _%K133486%_ _%rest133487%_ _%r133488%_)
                    (_%K133486%_
                     '()
                     (cons (_%expand-internal133218%_
                            _%hd133485%_
                            _%rest133487%_)
                           _%r133488%_))))
                 (_%expand-internal133218%_
                  (lambda (_%hd133481%_ _%rest133482%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal133220%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd133481%_ _%rest133482%_))
                          (gx#stx-source _%stx133214%_))
                         _%expand-internal-special133219%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj133840
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj133840)
                       __obj133840))))
                 (_%expand-internal-special133219%_
                  (lambda (_%hd133376%_ _%K133377%_ _%rest133378%_ _%r133379%_)
                    (let* ((_%e133380133405%_ _%hd133376%_)
                           (_%E133400133409%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e133380133405%_)))
                           (_%E133396133421%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133380133405%_)
                                  (let ((_%e133401133413%_
                                         (gx#syntax-e _%e133380133405%_)))
                                    (let ((_%hd133402133416%_
                                           (##car _%e133401133413%_))
                                          (_%tl133403133418%_
                                           (##cdr _%e133401133413%_)))
                                      (if (and (gx#identifier?
                                                _%hd133402133416%_)
                                               (gx#core-identifier=?
                                                _%hd133402133416%_
                                                '%#declare))
                                          (_%K133377%_
                                           _%rest133378%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd133376%_)
                                                 _%r133379%_))
                                          (_%E133400133409%_))))
                                  (_%E133400133409%_))))
                           (_%E133392133433%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133380133405%_)
                                  (let ((_%e133397133425%_
                                         (gx#syntax-e _%e133380133405%_)))
                                    (let ((_%hd133398133428%_
                                           (##car _%e133397133425%_))
                                          (_%tl133399133430%_
                                           (##cdr _%e133397133425%_)))
                                      (if (and (gx#identifier?
                                                _%hd133398133428%_)
                                               (gx#core-identifier=?
                                                _%hd133398133428%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd133376%_)
                                            (_%K133377%_
                                             _%rest133378%_
                                             _%r133379%_))
                                          (_%E133396133421%_))))
                                  (_%E133396133421%_))))
                           (_%E133382133445%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133380133405%_)
                                  (let ((_%e133393133437%_
                                         (gx#syntax-e _%e133380133405%_)))
                                    (let ((_%hd133394133440%_
                                           (##car _%e133393133437%_))
                                          (_%tl133395133442%_
                                           (##cdr _%e133393133437%_)))
                                      (if (and (gx#identifier?
                                                _%hd133394133440%_)
                                               (gx#core-identifier=?
                                                _%hd133394133440%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd133376%_)
                                            (_%K133377%_
                                             _%rest133378%_
                                             _%r133379%_))
                                          (_%E133392133433%_))))
                                  (_%E133392133433%_))))
                           (_%E133381133477%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133380133405%_)
                                  (let ((_%e133383133449%_
                                         (gx#syntax-e _%e133380133405%_)))
                                    (let ((_%hd133384133452%_
                                           (##car _%e133383133449%_))
                                          (_%tl133385133454%_
                                           (##cdr _%e133383133449%_)))
                                      (if (and (gx#identifier?
                                                _%hd133384133452%_)
                                               (gx#core-identifier=?
                                                _%hd133384133452%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl133385133454%_)
                                              (let ((_%e133386133457%_
                                                     (gx#syntax-e
                                                      _%tl133385133454%_)))
                                                (let ((_%hd133387133460%_
                                                       (##car _%e133386133457%_))
                                                      (_%tl133388133462%_
                                                       (##cdr _%e133386133457%_)))
                                                  (let ((_%hd-bind133465%_
                                                         _%hd133387133460%_))
                                                    (if (gx#stx-pair?
                                                         _%tl133388133462%_)
                                                        (let ((_%e133389133467%_
                                                               (gx#syntax-e
                                                                _%tl133388133462%_)))
                                                          (let ((_%hd133390133470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e133389133467%_))
                        (_%tl133391133472%_ (##cdr _%e133389133467%_)))
                    (let ((_%expr133475%_ _%hd133390133470%_))
                      (if (gx#stx-null? _%tl133391133472%_)
                          (if (gx#core-bind-values? _%hd-bind133465%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind133465%_)
                                (_%K133377%_
                                 _%rest133378%_
                                 (cons _%hd133376%_ _%r133379%_)))
                              (_%E133382133445%_))
                          (_%E133382133445%_)))))
                (_%E133382133445%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133382133445%_))
                                          (_%E133382133445%_))))
                                  (_%E133382133445%_)))))
                      (_%E133381133477%_))))
                 (_%wrap-internal133220%_
                  (lambda (_%rbody133222%_)
                    (let _%lp133224%_ ((_%rest133226%_ _%rbody133222%_)
                                       (_%decls133227%_ '())
                                       (_%bind133228%_ '())
                                       (_%body133229%_ '()))
                      (let* ((_%e133230133237%_ _%rest133226%_)
                             (_%E133232133286%_
                              (lambda ()
                                (let* ((_%body133281%_
                                        (let* ((_%body133240133250%_
                                                _%body133229%_)
                                               (_%else133243133258%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body133229%_)
                                                   (gx#stx-source
                                                    _%stx133214%_)))))
                                          (let ((_%K133248133278%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx133214%_)))
                                                (_%K133245133264%_
                                                 (lambda (_%expr133262%_)
                                                   _%expr133262%_)))
                                            (let ((_%try-match133242133274%_
                                                   (lambda ()
                                                     (if (pair? _%body133240133250%_)
                                                         (let ((_%tl133247133269%_
                                                                (##cdr _%body133240133250%_))
                                                               (_%hd133246133267%_
                                                                (##car _%body133240133250%_)))
                                                           (if (null? _%tl133247133269%_)
                                                               (let ((_%expr133272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd133246133267%_))
                         (_%K133245133264%_ _%expr133272%_))
                       (_%else133243133258%_)))
                 (_%else133243133258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body133240133250%_)
                                                  (_%K133248133278%_)
                                                  (_%try-match133242133274%_))))))
                                       (_%body133283%_
                                        (if (null? _%bind133228%_)
                                            _%body133281%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind133228%_
                                                         (cons _%body133281%_
                                                               '())))
                                             (gx#stx-source _%stx133214%_)))))
                                  (if (null? _%decls133227%_)
                                      _%body133283%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls133227%_
                                                   (cons _%body133283%_ '())))
                                       (gx#stx-source _%stx133214%_))))))
                             (_%E133231133372%_
                              (lambda ()
                                (if (gx#stx-pair? _%e133230133237%_)
                                    (let ((_%e133233133290%_
                                           (gx#syntax-e _%e133230133237%_)))
                                      (let ((_%hd133234133293%_
                                             (##car _%e133233133290%_))
                                            (_%tl133235133295%_
                                             (##cdr _%e133233133290%_)))
                                        (let* ((_%hd133298%_
                                                _%hd133234133293%_)
                                               (_%rest133300%_
                                                _%tl133235133295%_)
                                               (_%e133301133318%_ _%hd133298%_)
                                               (_%E133313133322%_
                                                (lambda ()
                                                  (if (null? _%bind133228%_)
                                                      (_%lp133224%_
                                                       _%rest133300%_
                                                       _%decls133227%_
                                                       _%bind133228%_
                                                       (cons _%hd133298%_
                                                             _%body133229%_))
                                                      (_%lp133224%_
                                                       _%rest133300%_
                                                       _%decls133227%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd133298%_ '()))
                     _%bind133228%_)
               _%body133229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E133303133336%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e133301133318%_)
                                                      (let ((_%e133314133326%_
                                                             (gx#syntax-e
                                                              _%e133301133318%_)))
                                                        (let ((_%hd133315133329%_
                                                               (##car _%e133314133326%_))
                                                              (_%tl133316133331%_
                                                               (##cdr _%e133314133326%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd133315133329%_)
                           (gx#core-identifier=?
                            _%hd133315133329%_
                            '%#declare))
                      (let ((_%xdecls133334%_ _%tl133316133331%_))
                        (_%lp133224%_
                         _%rest133300%_
                         (gx#stx-foldr cons _%decls133227%_ _%xdecls133334%_)
                         _%bind133228%_
                         _%body133229%_))
                      (_%E133313133322%_))))
              (_%E133313133322%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E133302133368%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e133301133318%_)
                                                      (let ((_%e133304133340%_
                                                             (gx#syntax-e
                                                              _%e133301133318%_)))
                                                        (let ((_%hd133305133343%_
                                                               (##car _%e133304133340%_))
                                                              (_%tl133306133345%_
                                                               (##cdr _%e133304133340%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd133305133343%_)
                           (gx#core-identifier=?
                            _%hd133305133343%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl133306133345%_)
                          (let ((_%e133307133348%_
                                 (gx#syntax-e _%tl133306133345%_)))
                            (let ((_%hd133308133351%_
                                   (##car _%e133307133348%_))
                                  (_%tl133309133353%_
                                   (##cdr _%e133307133348%_)))
                              (let ((_%hd-bind133356%_ _%hd133308133351%_))
                                (if (gx#stx-pair? _%tl133309133353%_)
                                    (let ((_%e133310133358%_
                                           (gx#syntax-e _%tl133309133353%_)))
                                      (let ((_%hd133311133361%_
                                             (##car _%e133310133358%_))
                                            (_%tl133312133363%_
                                             (##cdr _%e133310133358%_)))
                                        (let ((_%expr133366%_
                                               _%hd133311133361%_))
                                          (if (gx#stx-null? _%tl133312133363%_)
                                              (_%lp133224%_
                                               _%rest133300%_
                                               _%decls133227%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind133356%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr133366%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind133228%_)
                                               _%body133229%_)
                                              (_%E133303133336%_)))))
                                    (_%E133303133336%_)))))
                          (_%E133303133336%_))
                      (_%E133303133336%_))))
              (_%E133303133336%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E133302133368%_))))
                                    (_%E133232133286%_)))))
                        (_%E133231133372%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body133215%_)
            (gx#stx-source _%stx133214%_))
           _%expand-special133217%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx133152%_)
        (let* ((_%e133153133160%_ _%stx133152%_)
               (_%E133155133164%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133153133160%_)))
               (_%E133154133210%_
                (lambda ()
                  (if (gx#stx-pair? _%e133153133160%_)
                      (let ((_%e133156133168%_
                             (gx#syntax-e _%e133153133160%_)))
                        (let ((_%hd133157133171%_ (##car _%e133156133168%_))
                              (_%tl133158133173%_ (##cdr _%e133156133168%_)))
                          (let ((_%body133176%_ _%tl133158133173%_))
                            (if (gx#stx-list? _%body133176%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl133178%_)
                                     (let* ((_%e133179133186%_ _%decl133178%_)
                                            (_%E133181133190%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e133179133186%_)))
                                            (_%E133180133206%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e133179133186%_)
                                                   (let ((_%e133182133194%_
                                                          (gx#syntax-e
                                                           _%e133179133186%_)))
                                                     (let ((_%hd133183133197%_
                                                            (##car _%e133182133194%_))
                                                           (_%tl133184133199%_
                                                            (##cdr _%e133182133194%_)))
                                                       (let* ((_%head133202%_
                                                               _%hd133183133197%_)
                                                              (_%args133204%_
                                                               _%tl133184133199%_))
                                                         (if (gx#stx-list?
                                                              _%args133204%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl133178%_)
                                                             (_%E133181133190%_)))))
                                                   (_%E133181133190%_)))))
                                       (_%E133180133206%_)))
                                   _%body133176%_))
                                 (gx#stx-source _%stx133152%_))
                                (_%E133155133164%_)))))
                      (_%E133155133164%_)))))
          (_%E133154133210%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx133056%_)
        (let* ((_%e133057133064%_ _%stx133056%_)
               (_%E133059133068%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133057133064%_)))
               (_%E133058133148%_
                (lambda ()
                  (if (gx#stx-pair? _%e133057133064%_)
                      (let ((_%e133060133072%_
                             (gx#syntax-e _%e133057133064%_)))
                        (let ((_%hd133061133075%_ (##car _%e133060133072%_))
                              (_%tl133062133077%_ (##cdr _%e133060133072%_)))
                          (let ((_%body133080%_ _%tl133062133077%_))
                            (let _%lp133082%_ ((_%rest133084%_ _%body133080%_)
                                               (_%r133085%_ '()))
                              (let* ((_%e133086133100%_ _%rest133084%_)
                                     (_%E133098133104%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx133056%_)))
                                     (_%E133088133108%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e133086133100%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r133085%_))
                                             (gx#stx-source _%stx133056%_))
                                            (_%E133098133104%_))))
                                     (_%E133087133144%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e133086133100%_)
                                            (let ((_%e133089133112%_
                                                   (gx#syntax-e
                                                    _%e133086133100%_)))
                                              (let ((_%hd133090133115%_
                                                     (##car _%e133089133112%_))
                                                    (_%tl133091133117%_
                                                     (##cdr _%e133089133112%_)))
                                                (if (gx#stx-pair?
                                                     _%hd133090133115%_)
                                                    (let ((_%e133092133120%_
                                                           (gx#syntax-e
                                                            _%hd133090133115%_)))
                                                      (let ((_%hd133093133123%_
                                                             (##car _%e133092133120%_))
                                                            (_%tl133094133125%_
                                                             (##cdr _%e133092133120%_)))
                                                        (let ((_%id133128%_
                                                               _%hd133093133123%_))
                                                          (if (gx#stx-pair?
                                                               _%tl133094133125%_)
                                                              (let ((_%e133095133130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl133094133125%_)))
                        (let ((_%hd133096133133%_ (##car _%e133095133130%_))
                              (_%tl133097133135%_ (##cdr _%e133095133130%_)))
                          (let ((_%eid133138%_ _%hd133096133133%_))
                            (if (gx#stx-null? _%tl133097133135%_)
                                (let ((_%rest133140%_ _%tl133091133117%_))
                                  (if (and (gx#identifier? _%id133128%_)
                                           (gx#identifier? _%eid133138%_))
                                      (let ((_%eid133142%_
                                             (gx#stx-e _%eid133138%_)))
                                        (gx#core-bind-extern!__0
                                         _%id133128%_
                                         _%eid133142%_)
                                        (_%lp133082%_
                                         _%rest133140%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id133128%_)
                                                     (cons _%eid133142%_ '()))
                                               _%r133085%_)))
                                      (_%E133088133108%_)))
                                (_%E133088133108%_)))))
                      (_%E133088133108%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E133088133108%_))))
                                            (_%E133088133108%_)))))
                                (_%E133087133144%_))))))
                      (_%E133059133068%_)))))
          (_%E133058133148%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx133002%_)
        (let* ((_%e133003133016%_ _%stx133002%_)
               (_%E133005133020%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133003133016%_)))
               (_%E133004133052%_
                (lambda ()
                  (if (gx#stx-pair? _%e133003133016%_)
                      (let ((_%e133006133024%_
                             (gx#syntax-e _%e133003133016%_)))
                        (let ((_%hd133007133027%_ (##car _%e133006133024%_))
                              (_%tl133008133029%_ (##cdr _%e133006133024%_)))
                          (if (gx#stx-pair? _%tl133008133029%_)
                              (let ((_%e133009133032%_
                                     (gx#syntax-e _%tl133008133029%_)))
                                (let ((_%hd133010133035%_
                                       (##car _%e133009133032%_))
                                      (_%tl133011133037%_
                                       (##cdr _%e133009133032%_)))
                                  (let ((_%hd133040%_ _%hd133010133035%_))
                                    (if (gx#stx-pair? _%tl133011133037%_)
                                        (let ((_%e133012133042%_
                                               (gx#syntax-e
                                                _%tl133011133037%_)))
                                          (let ((_%hd133013133045%_
                                                 (##car _%e133012133042%_))
                                                (_%tl133014133047%_
                                                 (##cdr _%e133012133042%_)))
                                            (let ((_%expr133050%_
                                                   _%hd133013133045%_))
                                              (if (gx#stx-null?
                                                   _%tl133014133047%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd133040%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd133040%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd133040%_)
                             (cons (gx#core-expand-expression _%expr133050%_)
                                   '())))
                 (gx#stx-source _%stx133002%_)))
              (_%E133005133020%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E133005133020%_)))))
                                        (_%E133005133020%_)))))
                              (_%E133005133020%_))))
                      (_%E133005133020%_)))))
          (_%E133004133052%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx132946%_)
        (let* ((_%e132947132960%_ _%stx132946%_)
               (_%E132949132964%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132947132960%_)))
               (_%E132948132998%_
                (lambda ()
                  (if (gx#stx-pair? _%e132947132960%_)
                      (let ((_%e132950132968%_
                             (gx#syntax-e _%e132947132960%_)))
                        (let ((_%hd132951132971%_ (##car _%e132950132968%_))
                              (_%tl132952132973%_ (##cdr _%e132950132968%_)))
                          (if (gx#stx-pair? _%tl132952132973%_)
                              (let ((_%e132953132976%_
                                     (gx#syntax-e _%tl132952132973%_)))
                                (let ((_%hd132954132979%_
                                       (##car _%e132953132976%_))
                                      (_%tl132955132981%_
                                       (##cdr _%e132953132976%_)))
                                  (let ((_%id132984%_ _%hd132954132979%_))
                                    (if (gx#stx-pair? _%tl132955132981%_)
                                        (let ((_%e132956132986%_
                                               (gx#syntax-e
                                                _%tl132955132981%_)))
                                          (let ((_%hd132957132989%_
                                                 (##car _%e132956132986%_))
                                                (_%tl132958132991%_
                                                 (##cdr _%e132956132986%_)))
                                            (let ((_%binding-id132994%_
                                                   _%hd132957132989%_))
                                              (if (gx#stx-null?
                                                   _%tl132958132991%_)
                                                  (if (and (gx#identifier?
                                                            _%id132984%_)
                                                           (gx#identifier?
                                                            _%binding-id132994%_))
                                                      (let ((_%eid132996%_
                                                             (gx#stx-e
                                                              _%binding-id132994%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id132984%_
                                                         _%eid132996%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id132984%_)
                             (cons _%eid132996%_ '())))))
              (_%E132949132964%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132949132964%_)))))
                                        (_%E132949132964%_)))))
                              (_%E132949132964%_))))
                      (_%E132949132964%_)))))
          (_%E132948132998%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx132889%_)
        (let* ((_%e132890132903%_ _%stx132889%_)
               (_%E132892132907%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132890132903%_)))
               (_%E132891132942%_
                (lambda ()
                  (if (gx#stx-pair? _%e132890132903%_)
                      (let ((_%e132893132911%_
                             (gx#syntax-e _%e132890132903%_)))
                        (let ((_%hd132894132914%_ (##car _%e132893132911%_))
                              (_%tl132895132916%_ (##cdr _%e132893132911%_)))
                          (if (gx#stx-pair? _%tl132895132916%_)
                              (let ((_%e132896132919%_
                                     (gx#syntax-e _%tl132895132916%_)))
                                (let ((_%hd132897132922%_
                                       (##car _%e132896132919%_))
                                      (_%tl132898132924%_
                                       (##cdr _%e132896132919%_)))
                                  (let ((_%id132927%_ _%hd132897132922%_))
                                    (if (gx#stx-pair? _%tl132898132924%_)
                                        (let ((_%e132899132929%_
                                               (gx#syntax-e
                                                _%tl132898132924%_)))
                                          (let ((_%hd132900132932%_
                                                 (##car _%e132899132929%_))
                                                (_%tl132901132934%_
                                                 (##cdr _%e132899132929%_)))
                                            (let ((_%expr132937%_
                                                   _%hd132900132932%_))
                                              (if (gx#stx-null?
                                                   _%tl132901132934%_)
                                                  (if (gx#identifier?
                                                       _%id132927%_)
                                                      (let ((_g133848_
                                                             (gx#core-expand-expression+1
                                                              _%expr132937%_)))
                                                        (begin
                                                          (let ((_g133849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g133848_)
                             (##values-length _g133848_)
                             1)))
                    (if (not (##fx= _g133849_ 2))
                        (error "Context expects 2 values" _g133849_)))
                  (let ((_%e-stx132939%_ (##values-ref _g133848_ 0))
                        (_%e132940%_ (##values-ref _g133848_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id132927%_ _%e132940%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id132927%_)
                                   (cons _%e-stx132939%_ '())))
                       (gx#stx-source _%stx132889%_))))))
              (_%E132892132907%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132892132907%_)))))
                                        (_%E132892132907%_)))))
                              (_%E132892132907%_))))
                      (_%E132892132907%_)))))
          (_%E132891132942%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx132833%_)
        (let* ((_%e132834132847%_ _%stx132833%_)
               (_%E132836132851%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132834132847%_)))
               (_%E132835132885%_
                (lambda ()
                  (if (gx#stx-pair? _%e132834132847%_)
                      (let ((_%e132837132855%_
                             (gx#syntax-e _%e132834132847%_)))
                        (let ((_%hd132838132858%_ (##car _%e132837132855%_))
                              (_%tl132839132860%_ (##cdr _%e132837132855%_)))
                          (if (gx#stx-pair? _%tl132839132860%_)
                              (let ((_%e132840132863%_
                                     (gx#syntax-e _%tl132839132860%_)))
                                (let ((_%hd132841132866%_
                                       (##car _%e132840132863%_))
                                      (_%tl132842132868%_
                                       (##cdr _%e132840132863%_)))
                                  (let ((_%id132871%_ _%hd132841132866%_))
                                    (if (gx#stx-pair? _%tl132842132868%_)
                                        (let ((_%e132843132873%_
                                               (gx#syntax-e
                                                _%tl132842132868%_)))
                                          (let ((_%hd132844132876%_
                                                 (##car _%e132843132873%_))
                                                (_%tl132845132878%_
                                                 (##cdr _%e132843132873%_)))
                                            (let ((_%alias-id132881%_
                                                   _%hd132844132876%_))
                                              (if (gx#stx-null?
                                                   _%tl132845132878%_)
                                                  (if (and (gx#identifier?
                                                            _%id132871%_)
                                                           (gx#identifier?
                                                            _%alias-id132881%_))
                                                      (let ((_%alias-id132883%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id132881%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id132871%_
                                                         _%alias-id132883%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id132871%_)
                             (cons _%alias-id132883%_ '())))))
              (_%E132836132851%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132836132851%_)))))
                                        (_%E132836132851%_)))))
                              (_%E132836132851%_))))
                      (_%E132836132851%_)))))
          (_%E132835132885%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx132776%_ _%wrap?132777%_)
        (let* ((_%e132778132788%_ _%stx132776%_)
               (_%E132780132792%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132778132788%_)))
               (_%E132779132819%_
                (lambda ()
                  (if (gx#stx-pair? _%e132778132788%_)
                      (let ((_%e132781132796%_
                             (gx#syntax-e _%e132778132788%_)))
                        (let ((_%hd132782132799%_ (##car _%e132781132796%_))
                              (_%tl132783132801%_ (##cdr _%e132781132796%_)))
                          (if (gx#stx-pair? _%tl132783132801%_)
                              (let ((_%e132784132804%_
                                     (gx#syntax-e _%tl132783132801%_)))
                                (let ((_%hd132785132807%_
                                       (##car _%e132784132804%_))
                                      (_%tl132786132809%_
                                       (##cdr _%e132784132804%_)))
                                  (let* ((_%hd132812%_ _%hd132785132807%_)
                                         (_%body132814%_ _%tl132786132809%_))
                                    (if (gx#core-bind-values? _%hd132812%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd132812%_)
                                           (let ((_%body132817%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd132812%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx132776%_
                                                               _%body132814%_)
                                                              '()))))
                                             (if _%wrap?132777%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body132817%_)
                                                  (gx#stx-source
                                                   _%stx132776%_))
                                                 _%body132817%_)))
                                         gx#current-expander-context
                                         (let ((__obj133841
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj133841)
                                           __obj133841))
                                        (_%E132780132792%_)))))
                              (_%E132780132792%_))))
                      (_%E132780132792%_)))))
          (_%E132779132819%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx132826%_)
        (let ((_%wrap?132828%_ '#t))
          (gx#core-expand-lambda%__% _%stx132826%_ _%wrap?132828%_))))
    (define gx#core-expand-lambda%
      (lambda _g133850_
        (let ((_g133851_ (##length _g133850_)))
          (cond ((##fx= _g133851_ 1)
                 (apply gx#core-expand-lambda%__0 _g133850_))
                ((##fx= _g133851_ 2)
                 (apply gx#core-expand-lambda%__% _g133850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g133850_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx132740%_)
        (let* ((_%e132741132748%_ _%stx132740%_)
               (_%E132743132752%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132741132748%_)))
               (_%E132742132771%_
                (lambda ()
                  (if (gx#stx-pair? _%e132741132748%_)
                      (let ((_%e132744132756%_
                             (gx#syntax-e _%e132741132748%_)))
                        (let ((_%hd132745132759%_ (##car _%e132744132756%_))
                              (_%tl132746132761%_ (##cdr _%e132744132756%_)))
                          (let ((_%clauses132764%_ _%tl132746132761%_))
                            (if (gx#stx-list? _%clauses132764%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause132766%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause132766%_)
                                       (let ((_%$e132768%_
                                              (gx#stx-source
                                               _%clause132766%_)))
                                         (if _%$e132768%_
                                             _%$e132768%_
                                             (gx#stx-source _%stx132740%_))))
                                      '#f))
                                   _%clauses132764%_))
                                 (gx#stx-source _%stx132740%_))
                                (_%E132743132752%_)))))
                      (_%E132743132752%_)))))
          (_%E132742132771%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx132694%_)
        (let* ((_%e132695132705%_ _%stx132694%_)
               (_%E132697132709%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132695132705%_)))
               (_%E132696132736%_
                (lambda ()
                  (if (gx#stx-pair? _%e132695132705%_)
                      (let ((_%e132698132713%_
                             (gx#syntax-e _%e132695132705%_)))
                        (let ((_%hd132699132716%_ (##car _%e132698132713%_))
                              (_%tl132700132718%_ (##cdr _%e132698132713%_)))
                          (if (gx#stx-pair? _%tl132700132718%_)
                              (let ((_%e132701132721%_
                                     (gx#syntax-e _%tl132700132718%_)))
                                (let ((_%hd132702132724%_
                                       (##car _%e132701132721%_))
                                      (_%tl132703132726%_
                                       (##cdr _%e132701132721%_)))
                                  (let* ((_%hd132729%_ _%hd132702132724%_)
                                         (_%body132731%_ _%tl132703132726%_))
                                    (if (gx#core-expand-let-bind? _%hd132729%_)
                                        (let ((_%expressions132733%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd132729%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd132729%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd132729%_
                                                           _%expressions132733%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx132694%_
                         _%body132731%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx132694%_)))
                                           gx#current-expander-context
                                           (let ((__obj133842
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj133842)
                                             __obj133842)))
                                        (_%E132697132709%_)))))
                              (_%E132697132709%_))))
                      (_%E132697132709%_)))))
          (_%E132696132736%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx132639%_ _%form132640%_)
        (let* ((_%e132641132651%_ _%stx132639%_)
               (_%E132643132655%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132641132651%_)))
               (_%E132642132680%_
                (lambda ()
                  (if (gx#stx-pair? _%e132641132651%_)
                      (let ((_%e132644132659%_
                             (gx#syntax-e _%e132641132651%_)))
                        (let ((_%hd132645132662%_ (##car _%e132644132659%_))
                              (_%tl132646132664%_ (##cdr _%e132644132659%_)))
                          (if (gx#stx-pair? _%tl132646132664%_)
                              (let ((_%e132647132667%_
                                     (gx#syntax-e _%tl132646132664%_)))
                                (let ((_%hd132648132670%_
                                       (##car _%e132647132667%_))
                                      (_%tl132649132672%_
                                       (##cdr _%e132647132667%_)))
                                  (let* ((_%hd132675%_ _%hd132648132670%_)
                                         (_%body132677%_ _%tl132649132672%_))
                                    (if (gx#core-expand-let-bind? _%hd132675%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd132675%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form132640%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd132675%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd132675%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx132639%_
                                                               _%body132677%_)
                                                              '())))
                                            (gx#stx-source _%stx132639%_)))
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
                                        (_%E132643132655%_)))))
                              (_%E132643132655%_))))
                      (_%E132643132655%_)))))
          (_%E132642132680%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx132687%_)
        (let ((_%form132689%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx132687%_ _%form132689%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g133852_
        (let ((_g133853_ (##length _g133852_)))
          (cond ((##fx= _g133853_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g133852_))
                ((##fx= _g133853_ 2)
                 (apply gx#core-expand-letrec-values%__% _g133852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g133852_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx132636%_)
        (gx#core-expand-letrec-values%__% _%stx132636%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx132593%_)
        (if (gx#stx-list? _%stx132593%_)
            (gx#stx-andmap
             (lambda (_%bind132595%_)
               (let* ((_%e132596132606%_ _%bind132595%_)
                      (_%E132598132610%_ (lambda () '#f))
                      (_%E132597132632%_
                       (lambda ()
                         (if (gx#stx-pair? _%e132596132606%_)
                             (let ((_%e132599132614%_
                                    (gx#syntax-e _%e132596132606%_)))
                               (let ((_%hd132600132617%_
                                      (##car _%e132599132614%_))
                                     (_%tl132601132619%_
                                      (##cdr _%e132599132614%_)))
                                 (let ((_%hd132622%_ _%hd132600132617%_))
                                   (if (gx#stx-pair? _%tl132601132619%_)
                                       (let ((_%e132602132624%_
                                              (gx#syntax-e
                                               _%tl132601132619%_)))
                                         (let ((_%hd132603132627%_
                                                (##car _%e132602132624%_))
                                               (_%tl132604132629%_
                                                (##cdr _%e132602132624%_)))
                                           (if (gx#stx-null?
                                                _%tl132604132629%_)
                                               (gx#core-bind-values?
                                                _%hd132622%_)
                                               (_%E132598132610%_))))
                                       (_%E132598132610%_)))))
                             (_%E132598132610%_)))))
                 (_%E132597132632%_)))
             _%stx132593%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind132552%_)
        (let* ((_%e132553132563%_ _%bind132552%_)
               (_%E132555132567%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132553132563%_)))
               (_%E132554132589%_
                (lambda ()
                  (if (gx#stx-pair? _%e132553132563%_)
                      (let ((_%e132556132571%_
                             (gx#syntax-e _%e132553132563%_)))
                        (let ((_%hd132557132574%_ (##car _%e132556132571%_))
                              (_%tl132558132576%_ (##cdr _%e132556132571%_)))
                          (if (gx#stx-pair? _%tl132558132576%_)
                              (let ((_%e132559132579%_
                                     (gx#syntax-e _%tl132558132576%_)))
                                (let ((_%hd132560132582%_
                                       (##car _%e132559132579%_))
                                      (_%tl132561132584%_
                                       (##cdr _%e132559132579%_)))
                                  (let ((_%expr132587%_ _%hd132560132582%_))
                                    (if (gx#stx-null? _%tl132561132584%_)
                                        (gx#core-expand-expression
                                         _%expr132587%_)
                                        (_%E132555132567%_)))))
                              (_%E132555132567%_))))
                      (_%E132555132567%_)))))
          (_%E132554132589%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind132511%_)
        (let* ((_%e132512132522%_ _%bind132511%_)
               (_%E132514132526%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132512132522%_)))
               (_%E132513132548%_
                (lambda ()
                  (if (gx#stx-pair? _%e132512132522%_)
                      (let ((_%e132515132530%_
                             (gx#syntax-e _%e132512132522%_)))
                        (let ((_%hd132516132533%_ (##car _%e132515132530%_))
                              (_%tl132517132535%_ (##cdr _%e132515132530%_)))
                          (let ((_%hd132538%_ _%hd132516132533%_))
                            (if (gx#stx-pair? _%tl132517132535%_)
                                (let ((_%e132518132540%_
                                       (gx#syntax-e _%tl132517132535%_)))
                                  (let ((_%hd132519132543%_
                                         (##car _%e132518132540%_))
                                        (_%tl132520132545%_
                                         (##cdr _%e132518132540%_)))
                                    (if (gx#stx-null? _%tl132520132545%_)
                                        (gx#core-bind-values!__0 _%hd132538%_)
                                        (_%E132514132526%_))))
                                (_%E132514132526%_)))))
                      (_%E132514132526%_)))))
          (_%E132513132548%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind132469%_ _%expr132470%_)
        (let* ((_%e132471132481%_ _%bind132469%_)
               (_%E132473132485%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132471132481%_)))
               (_%E132472132507%_
                (lambda ()
                  (if (gx#stx-pair? _%e132471132481%_)
                      (let ((_%e132474132489%_
                             (gx#syntax-e _%e132471132481%_)))
                        (let ((_%hd132475132492%_ (##car _%e132474132489%_))
                              (_%tl132476132494%_ (##cdr _%e132474132489%_)))
                          (let ((_%hd132497%_ _%hd132475132492%_))
                            (if (gx#stx-pair? _%tl132476132494%_)
                                (let ((_%e132477132499%_
                                       (gx#syntax-e _%tl132476132494%_)))
                                  (let ((_%hd132478132502%_
                                         (##car _%e132477132499%_))
                                        (_%tl132479132504%_
                                         (##cdr _%e132477132499%_)))
                                    (if (gx#stx-null? _%tl132479132504%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd132497%_)
                                              (cons _%expr132470%_ '()))
                                        (_%E132473132485%_))))
                                (_%E132473132485%_)))))
                      (_%E132473132485%_)))))
          (_%E132472132507%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx132423%_)
        (let* ((_%e132424132434%_ _%stx132423%_)
               (_%E132426132438%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132424132434%_)))
               (_%E132425132465%_
                (lambda ()
                  (if (gx#stx-pair? _%e132424132434%_)
                      (let ((_%e132427132442%_
                             (gx#syntax-e _%e132424132434%_)))
                        (let ((_%hd132428132445%_ (##car _%e132427132442%_))
                              (_%tl132429132447%_ (##cdr _%e132427132442%_)))
                          (if (gx#stx-pair? _%tl132429132447%_)
                              (let ((_%e132430132450%_
                                     (gx#syntax-e _%tl132429132447%_)))
                                (let ((_%hd132431132453%_
                                       (##car _%e132430132450%_))
                                      (_%tl132432132455%_
                                       (##cdr _%e132430132450%_)))
                                  (let* ((_%hd132458%_ _%hd132431132453%_)
                                         (_%body132460%_ _%tl132432132455%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd132458%_)
                                        (let ((_%expanders132462%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd132458%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd132458%_
                                              _%expanders132462%_)
                                             (gx#core-expand-local-block
                                              _%stx132423%_
                                              _%body132460%_))
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
                                        (_%E132426132438%_)))))
                              (_%E132426132438%_))))
                      (_%E132426132438%_)))))
          (_%E132425132465%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx132372%_)
        (let* ((_%e132373132383%_ _%stx132372%_)
               (_%E132375132387%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132373132383%_)))
               (_%E132374132419%_
                (lambda ()
                  (if (gx#stx-pair? _%e132373132383%_)
                      (let ((_%e132376132391%_
                             (gx#syntax-e _%e132373132383%_)))
                        (let ((_%hd132377132394%_ (##car _%e132376132391%_))
                              (_%tl132378132396%_ (##cdr _%e132376132391%_)))
                          (if (gx#stx-pair? _%tl132378132396%_)
                              (let ((_%e132379132399%_
                                     (gx#syntax-e _%tl132378132396%_)))
                                (let ((_%hd132380132402%_
                                       (##car _%e132379132399%_))
                                      (_%tl132381132404%_
                                       (##cdr _%e132379132399%_)))
                                  (let* ((_%hd132407%_ _%hd132380132402%_)
                                         (_%body132409%_ _%tl132381132404%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd132407%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd132407%_
                                            (make-list
                                             (gx#stx-length _%hd132407%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g132411132414%_
                                                     _%g132412132416%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g132411132414%_
                                               _%g132412132416%_
                                               '#t))
                                            _%hd132407%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd132407%_))
                                           (gx#core-expand-local-block
                                            _%stx132372%_
                                            _%body132409%_))
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
                                        (_%E132375132387%_)))))
                              (_%E132375132387%_))))
                      (_%E132375132387%_)))))
          (_%E132374132419%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx132329%_)
        (if (gx#stx-list? _%stx132329%_)
            (gx#stx-andmap
             (lambda (_%bind132331%_)
               (let* ((_%e132332132342%_ _%bind132331%_)
                      (_%E132334132346%_ (lambda () '#f))
                      (_%E132333132368%_
                       (lambda ()
                         (if (gx#stx-pair? _%e132332132342%_)
                             (let ((_%e132335132350%_
                                    (gx#syntax-e _%e132332132342%_)))
                               (let ((_%hd132336132353%_
                                      (##car _%e132335132350%_))
                                     (_%tl132337132355%_
                                      (##cdr _%e132335132350%_)))
                                 (let ((_%hd132358%_ _%hd132336132353%_))
                                   (if (gx#stx-pair? _%tl132337132355%_)
                                       (let ((_%e132338132360%_
                                              (gx#syntax-e
                                               _%tl132337132355%_)))
                                         (let ((_%hd132339132363%_
                                                (##car _%e132338132360%_))
                                               (_%tl132340132365%_
                                                (##cdr _%e132338132360%_)))
                                           (if (gx#stx-null?
                                                _%tl132340132365%_)
                                               (gx#identifier? _%hd132358%_)
                                               (_%E132334132346%_))))
                                       (_%E132334132346%_)))))
                             (_%E132334132346%_)))))
                 (_%E132333132368%_)))
             _%stx132329%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind132285%_)
        (let* ((_%e132286132296%_ _%bind132285%_)
               (_%E132288132300%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132286132296%_)))
               (_%E132287132325%_
                (lambda ()
                  (if (gx#stx-pair? _%e132286132296%_)
                      (let ((_%e132289132304%_
                             (gx#syntax-e _%e132286132296%_)))
                        (let ((_%hd132290132307%_ (##car _%e132289132304%_))
                              (_%tl132291132309%_ (##cdr _%e132289132304%_)))
                          (if (gx#stx-pair? _%tl132291132309%_)
                              (let ((_%e132292132312%_
                                     (gx#syntax-e _%tl132291132309%_)))
                                (let ((_%hd132293132315%_
                                       (##car _%e132292132312%_))
                                      (_%tl132294132317%_
                                       (##cdr _%e132292132312%_)))
                                  (let ((_%expr132320%_ _%hd132293132315%_))
                                    (if (gx#stx-null? _%tl132294132317%_)
                                        (let ((_g133854_
                                               (gx#core-expand-expression+1
                                                _%expr132320%_)))
                                          (begin
                                            (let ((_g133855_
                                                   (if (##values? _g133854_)
                                                       (##values-length
                                                        _g133854_)
                                                       1)))
                                              (if (not (##fx= _g133855_ 2))
                                                  (error "Context expects 2 values"
                                                         _g133855_)))
                                            (let ((_%_132322%_
                                                   (##values-ref _g133854_ 0))
                                                  (_%e132323%_
                                                   (##values-ref _g133854_ 1)))
                                              _%e132323%_)))
                                        (_%E132288132300%_)))))
                              (_%E132288132300%_))))
                      (_%E132288132300%_)))))
          (_%E132287132325%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind132230%_ _%e132231%_ _%rebind?132232%_)
        (let* ((_%e132233132243%_ _%bind132230%_)
               (_%E132235132247%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132233132243%_)))
               (_%E132234132269%_
                (lambda ()
                  (if (gx#stx-pair? _%e132233132243%_)
                      (let ((_%e132236132251%_
                             (gx#syntax-e _%e132233132243%_)))
                        (let ((_%hd132237132254%_ (##car _%e132236132251%_))
                              (_%tl132238132256%_ (##cdr _%e132236132251%_)))
                          (let ((_%id132259%_ _%hd132237132254%_))
                            (if (gx#stx-pair? _%tl132238132256%_)
                                (let ((_%e132239132261%_
                                       (gx#syntax-e _%tl132238132256%_)))
                                  (let ((_%hd132240132264%_
                                         (##car _%e132239132261%_))
                                        (_%tl132241132266%_
                                         (##cdr _%e132239132261%_)))
                                    (if (gx#stx-null? _%tl132241132266%_)
                                        (gx#core-bind-syntax!__1
                                         _%id132259%_
                                         _%e132231%_
                                         _%rebind?132232%_)
                                        (_%E132235132247%_))))
                                (_%E132235132247%_)))))
                      (_%E132235132247%_)))))
          (_%E132234132269%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind132276%_ _%e132277%_)
        (let ((_%rebind?132279%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind132276%_
           _%e132277%_
           _%rebind?132279%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g133856_
        (let ((_g133857_ (##length _g133856_)))
          (cond ((##fx= _g133857_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g133856_))
                ((##fx= _g133857_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g133856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g133856_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx132188%_)
        (let* ((_%e132189132199%_ _%stx132188%_)
               (_%E132191132203%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132189132199%_)))
               (_%E132190132225%_
                (lambda ()
                  (if (gx#stx-pair? _%e132189132199%_)
                      (let ((_%e132192132207%_
                             (gx#syntax-e _%e132189132199%_)))
                        (let ((_%hd132193132210%_ (##car _%e132192132207%_))
                              (_%tl132194132212%_ (##cdr _%e132192132207%_)))
                          (if (gx#stx-pair? _%tl132194132212%_)
                              (let ((_%e132195132215%_
                                     (gx#syntax-e _%tl132194132212%_)))
                                (let ((_%hd132196132218%_
                                       (##car _%e132195132215%_))
                                      (_%tl132197132220%_
                                       (##cdr _%e132195132215%_)))
                                  (let ((_%expr132223%_ _%hd132196132218%_))
                                    (if (gx#stx-null? _%tl132197132220%_)
                                        (gx#core-expand-expression
                                         _%expr132223%_)
                                        (_%E132191132203%_)))))
                              (_%E132191132203%_))))
                      (_%E132191132203%_)))))
          (_%E132190132225%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx132147%_)
        (let* ((_%e132148132158%_ _%stx132147%_)
               (_%E132150132162%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132148132158%_)))
               (_%E132149132184%_
                (lambda ()
                  (if (gx#stx-pair? _%e132148132158%_)
                      (let ((_%e132151132166%_
                             (gx#syntax-e _%e132148132158%_)))
                        (let ((_%hd132152132169%_ (##car _%e132151132166%_))
                              (_%tl132153132171%_ (##cdr _%e132151132166%_)))
                          (if (gx#stx-pair? _%tl132153132171%_)
                              (let ((_%e132154132174%_
                                     (gx#syntax-e _%tl132153132171%_)))
                                (let ((_%hd132155132177%_
                                       (##car _%e132154132174%_))
                                      (_%tl132156132179%_
                                       (##cdr _%e132154132174%_)))
                                  (let ((_%e132182%_ _%hd132155132177%_))
                                    (if (gx#stx-null? _%tl132156132179%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e132182%_)
                                                     '()))
                                         (gx#stx-source _%stx132147%_))
                                        (_%E132150132162%_)))))
                              (_%E132150132162%_))))
                      (_%E132150132162%_)))))
          (_%E132149132184%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx132106%_)
        (let* ((_%e132107132117%_ _%stx132106%_)
               (_%E132109132121%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132107132117%_)))
               (_%E132108132143%_
                (lambda ()
                  (if (gx#stx-pair? _%e132107132117%_)
                      (let ((_%e132110132125%_
                             (gx#syntax-e _%e132107132117%_)))
                        (let ((_%hd132111132128%_ (##car _%e132110132125%_))
                              (_%tl132112132130%_ (##cdr _%e132110132125%_)))
                          (if (gx#stx-pair? _%tl132112132130%_)
                              (let ((_%e132113132133%_
                                     (gx#syntax-e _%tl132112132130%_)))
                                (let ((_%hd132114132136%_
                                       (##car _%e132113132133%_))
                                      (_%tl132115132138%_
                                       (##cdr _%e132113132133%_)))
                                  (let ((_%e132141%_ _%hd132114132136%_))
                                    (if (gx#stx-null? _%tl132115132138%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e132141%_)
                                                     '()))
                                         (gx#stx-source _%stx132106%_))
                                        (_%E132109132121%_)))))
                              (_%E132109132121%_))))
                      (_%E132109132121%_)))))
          (_%E132108132143%_))))
    (define gx#core-expand-call%
      (lambda (_%stx132063%_)
        (let* ((_%e132064132074%_ _%stx132063%_)
               (_%E132066132078%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132064132074%_)))
               (_%E132065132102%_
                (lambda ()
                  (if (gx#stx-pair? _%e132064132074%_)
                      (let ((_%e132067132082%_
                             (gx#syntax-e _%e132064132074%_)))
                        (let ((_%hd132068132085%_ (##car _%e132067132082%_))
                              (_%tl132069132087%_ (##cdr _%e132067132082%_)))
                          (if (gx#stx-pair? _%tl132069132087%_)
                              (let ((_%e132070132090%_
                                     (gx#syntax-e _%tl132069132087%_)))
                                (let ((_%hd132071132093%_
                                       (##car _%e132070132090%_))
                                      (_%tl132072132095%_
                                       (##cdr _%e132070132090%_)))
                                  (let* ((_%rator132098%_ _%hd132071132093%_)
                                         (_%args132100%_ _%tl132072132095%_))
                                    (if (gx#stx-list? _%args132100%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator132098%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args132100%_))
                                         (gx#stx-source _%stx132063%_))
                                        (_%E132066132078%_)))))
                              (_%E132066132078%_))))
                      (_%E132066132078%_)))))
          (_%E132065132102%_))))
    (define gx#core-expand-if%
      (lambda (_%stx131996%_)
        (let* ((_%e131997132013%_ _%stx131996%_)
               (_%E131999132017%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131997132013%_)))
               (_%E131998132059%_
                (lambda ()
                  (if (gx#stx-pair? _%e131997132013%_)
                      (let ((_%e132000132021%_
                             (gx#syntax-e _%e131997132013%_)))
                        (let ((_%hd132001132024%_ (##car _%e132000132021%_))
                              (_%tl132002132026%_ (##cdr _%e132000132021%_)))
                          (if (gx#stx-pair? _%tl132002132026%_)
                              (let ((_%e132003132029%_
                                     (gx#syntax-e _%tl132002132026%_)))
                                (let ((_%hd132004132032%_
                                       (##car _%e132003132029%_))
                                      (_%tl132005132034%_
                                       (##cdr _%e132003132029%_)))
                                  (let ((_%test132037%_ _%hd132004132032%_))
                                    (if (gx#stx-pair? _%tl132005132034%_)
                                        (let ((_%e132006132039%_
                                               (gx#syntax-e
                                                _%tl132005132034%_)))
                                          (let ((_%hd132007132042%_
                                                 (##car _%e132006132039%_))
                                                (_%tl132008132044%_
                                                 (##cdr _%e132006132039%_)))
                                            (let ((_%K132047%_
                                                   _%hd132007132042%_))
                                              (if (gx#stx-pair?
                                                   _%tl132008132044%_)
                                                  (let ((_%e132009132049%_
                                                         (gx#syntax-e
                                                          _%tl132008132044%_)))
                                                    (let ((_%hd132010132052%_
                                                           (##car _%e132009132049%_))
                                                          (_%tl132011132054%_
                                                           (##cdr _%e132009132049%_)))
                                                      (let ((_%E132057%_
                                                             _%hd132010132052%_))
                                                        (if (gx#stx-null?
                                                             _%tl132011132054%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test132037%_)
                                 (cons (gx#core-expand-expression _%K132047%_)
                                       (cons (gx#core-expand-expression
                                              _%E132057%_)
                                             '()))))
                     (gx#stx-source _%stx131996%_))
                    (_%E131999132017%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131999132017%_)))))
                                        (_%E131999132017%_)))))
                              (_%E131999132017%_))))
                      (_%E131999132017%_)))))
          (_%E131998132059%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx131955%_)
        (let* ((_%e131956131966%_ _%stx131955%_)
               (_%E131958131970%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131956131966%_)))
               (_%E131957131992%_
                (lambda ()
                  (if (gx#stx-pair? _%e131956131966%_)
                      (let ((_%e131959131974%_
                             (gx#syntax-e _%e131956131966%_)))
                        (let ((_%hd131960131977%_ (##car _%e131959131974%_))
                              (_%tl131961131979%_ (##cdr _%e131959131974%_)))
                          (if (gx#stx-pair? _%tl131961131979%_)
                              (let ((_%e131962131982%_
                                     (gx#syntax-e _%tl131961131979%_)))
                                (let ((_%hd131963131985%_
                                       (##car _%e131962131982%_))
                                      (_%tl131964131987%_
                                       (##cdr _%e131962131982%_)))
                                  (let ((_%id131990%_ _%hd131963131985%_))
                                    (if (gx#stx-null? _%tl131964131987%_)
                                        (if (gx#identifier? _%id131990%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id131990%_
                                                          _%stx131955%_)
                                                         '()))
                                             (gx#stx-source _%stx131955%_))
                                            (_%E131958131970%_))
                                        (_%E131958131970%_)))))
                              (_%E131958131970%_))))
                      (_%E131958131970%_)))))
          (_%E131957131992%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx131901%_)
        (let* ((_%e131902131915%_ _%stx131901%_)
               (_%E131904131919%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131902131915%_)))
               (_%E131903131951%_
                (lambda ()
                  (if (gx#stx-pair? _%e131902131915%_)
                      (let ((_%e131905131923%_
                             (gx#syntax-e _%e131902131915%_)))
                        (let ((_%hd131906131926%_ (##car _%e131905131923%_))
                              (_%tl131907131928%_ (##cdr _%e131905131923%_)))
                          (if (gx#stx-pair? _%tl131907131928%_)
                              (let ((_%e131908131931%_
                                     (gx#syntax-e _%tl131907131928%_)))
                                (let ((_%hd131909131934%_
                                       (##car _%e131908131931%_))
                                      (_%tl131910131936%_
                                       (##cdr _%e131908131931%_)))
                                  (let ((_%id131939%_ _%hd131909131934%_))
                                    (if (gx#stx-pair? _%tl131910131936%_)
                                        (let ((_%e131911131941%_
                                               (gx#syntax-e
                                                _%tl131910131936%_)))
                                          (let ((_%hd131912131944%_
                                                 (##car _%e131911131941%_))
                                                (_%tl131913131946%_
                                                 (##cdr _%e131911131941%_)))
                                            (let ((_%expr131949%_
                                                   _%hd131912131944%_))
                                              (if (gx#stx-null?
                                                   _%tl131913131946%_)
                                                  (if (gx#identifier?
                                                       _%id131939%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id131939%_
                            _%stx131901%_)
                           (cons (gx#core-expand-expression _%expr131949%_)
                                 '())))
               (gx#stx-source _%stx131901%_))
              (_%E131904131919%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131904131919%_)))))
                                        (_%E131904131919%_)))))
                              (_%E131904131919%_))))
                      (_%E131904131919%_)))))
          (_%E131903131951%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx131746%_)
        (letrec ((_%generate131748%_
                  (lambda (_%body131778%_)
                    (let _%lp131780%_ ((_%rest131782%_ _%body131778%_)
                                       (_%ns131783%_
                                        (gx#core-context-namespace__0))
                                       (_%r131784%_ '()))
                      (let* ((_%e131785131800%_ _%rest131782%_)
                             (_%E131798131804%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e131785131800%_)))
                             (_%E131794131808%_
                              (lambda ()
                                (if (gx#stx-null? _%e131785131800%_)
                                    (reverse _%r131784%_)
                                    (_%E131798131804%_))))
                             (_%E131787131865%_
                              (lambda ()
                                (if (gx#stx-pair? _%e131785131800%_)
                                    (let ((_%e131795131812%_
                                           (gx#syntax-e _%e131785131800%_)))
                                      (let ((_%hd131796131815%_
                                             (##car _%e131795131812%_))
                                            (_%tl131797131817%_
                                             (##cdr _%e131795131812%_)))
                                        (let* ((_%hd131820%_
                                                _%hd131796131815%_)
                                               (_%rest131822%_
                                                _%tl131797131817%_))
                                          (if (gx#identifier? _%hd131820%_)
                                              (_%lp131780%_
                                               _%rest131822%_
                                               _%ns131783%_
                                               (cons (cons _%hd131820%_
                                                           (cons (if _%ns131783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd131820%_
                              _%ns131783%_
                              '"#"
                              _%hd131820%_)
                             _%hd131820%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r131784%_))
                                              (let* ((_%e131823131833%_
                                                      _%hd131820%_)
                                                     (_%E131825131837%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e131823131833%_)))
                                                     (_%E131824131861%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e131823131833%_)
                                                            (let ((_%e131826131841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e131823131833%_)))
                      (let ((_%hd131827131844%_ (##car _%e131826131841%_))
                            (_%tl131828131846%_ (##cdr _%e131826131841%_)))
                        (let ((_%id131849%_ _%hd131827131844%_))
                          (if (gx#stx-pair? _%tl131828131846%_)
                              (let ((_%e131829131851%_
                                     (gx#syntax-e _%tl131828131846%_)))
                                (let ((_%hd131830131854%_
                                       (##car _%e131829131851%_))
                                      (_%tl131831131856%_
                                       (##cdr _%e131829131851%_)))
                                  (let ((_%eid131859%_ _%hd131830131854%_))
                                    (if (gx#stx-null? _%tl131831131856%_)
                                        (if (and (gx#identifier? _%id131849%_)
                                                 (gx#identifier?
                                                  _%eid131859%_))
                                            (_%lp131780%_
                                             _%rest131822%_
                                             _%ns131783%_
                                             (cons (cons _%id131849%_
                                                         (cons _%eid131859%_
                                                               '()))
                                                   _%r131784%_))
                                            (_%E131825131837%_))
                                        (_%E131825131837%_)))))
                              (_%E131825131837%_)))))
                    (_%E131825131837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E131824131861%_))))))
                                    (_%E131794131808%_))))
                             (_%E131786131897%_
                              (lambda ()
                                (if (gx#stx-pair? _%e131785131800%_)
                                    (let ((_%e131788131869%_
                                           (gx#syntax-e _%e131785131800%_)))
                                      (let ((_%hd131789131872%_
                                             (##car _%e131788131869%_))
                                            (_%tl131790131874%_
                                             (##cdr _%e131788131869%_)))
                                        (if (eq? (gx#stx-e _%hd131789131872%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl131790131874%_)
                                                (let ((_%e131791131877%_
                                                       (gx#syntax-e
                                                        _%tl131790131874%_)))
                                                  (let ((_%hd131792131880%_
                                                         (##car _%e131791131877%_))
                                                        (_%tl131793131882%_
                                                         (##cdr _%e131791131877%_)))
                                                    (let* ((_%ns131885%_
                                                            _%hd131792131880%_)
                                                           (_%rest131887%_
                                                            _%tl131793131882%_)
                                                           (_%ns131895%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns131885%_)
                        (symbol->string (gx#stx-e _%ns131885%_))
                        (if (or (gx#stx-string? _%ns131885%_)
                                (gx#stx-false? _%ns131885%_))
                            (gx#stx-e _%ns131885%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx131746%_
                             _%ns131885%_)))))
              (_%lp131780%_ _%rest131887%_ _%ns131895%_ _%r131784%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E131787131865%_))
                                            (_%E131787131865%_))))
                                    (_%E131787131865%_)))))
                        (_%E131786131897%_))))))
          (let* ((_%e131749131756%_ _%stx131746%_)
                 (_%E131751131760%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e131749131756%_)))
                 (_%E131750131774%_
                  (lambda ()
                    (if (gx#stx-pair? _%e131749131756%_)
                        (let ((_%e131752131764%_
                               (gx#syntax-e _%e131749131756%_)))
                          (let ((_%hd131753131767%_ (##car _%e131752131764%_))
                                (_%tl131754131769%_ (##cdr _%e131752131764%_)))
                            (let ((_%body131772%_ _%tl131754131769%_))
                              (if (gx#stx-list? _%body131772%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate131748%_ _%body131772%_))
                                  (_%E131751131760%_)))))
                        (_%E131751131760%_)))))
            (_%E131750131774%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx131692%_)
        (let* ((_%e131693131706%_ _%stx131692%_)
               (_%E131695131710%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131693131706%_)))
               (_%E131694131742%_
                (lambda ()
                  (if (gx#stx-pair? _%e131693131706%_)
                      (let ((_%e131696131714%_
                             (gx#syntax-e _%e131693131706%_)))
                        (let ((_%hd131697131717%_ (##car _%e131696131714%_))
                              (_%tl131698131719%_ (##cdr _%e131696131714%_)))
                          (if (gx#stx-pair? _%tl131698131719%_)
                              (let ((_%e131699131722%_
                                     (gx#syntax-e _%tl131698131719%_)))
                                (let ((_%hd131700131725%_
                                       (##car _%e131699131722%_))
                                      (_%tl131701131727%_
                                       (##cdr _%e131699131722%_)))
                                  (let ((_%hd131730%_ _%hd131700131725%_))
                                    (if (gx#stx-pair? _%tl131701131727%_)
                                        (let ((_%e131702131732%_
                                               (gx#syntax-e
                                                _%tl131701131727%_)))
                                          (let ((_%hd131703131735%_
                                                 (##car _%e131702131732%_))
                                                (_%tl131704131737%_
                                                 (##cdr _%e131702131732%_)))
                                            (let ((_%expr131740%_
                                                   _%hd131703131735%_))
                                              (if (gx#stx-null?
                                                   _%tl131704131737%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd131730%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd131730%_)
                          (cons _%expr131740%_ '())))
              (_%E131695131710%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131695131710%_)))))
                                        (_%E131695131710%_)))))
                              (_%E131695131710%_))))
                      (_%E131695131710%_)))))
          (_%E131694131742%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx131638%_)
        (let* ((_%e131639131652%_ _%stx131638%_)
               (_%E131641131656%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131639131652%_)))
               (_%E131640131688%_
                (lambda ()
                  (if (gx#stx-pair? _%e131639131652%_)
                      (let ((_%e131642131660%_
                             (gx#syntax-e _%e131639131652%_)))
                        (let ((_%hd131643131663%_ (##car _%e131642131660%_))
                              (_%tl131644131665%_ (##cdr _%e131642131660%_)))
                          (if (gx#stx-pair? _%tl131644131665%_)
                              (let ((_%e131645131668%_
                                     (gx#syntax-e _%tl131644131665%_)))
                                (let ((_%hd131646131671%_
                                       (##car _%e131645131668%_))
                                      (_%tl131647131673%_
                                       (##cdr _%e131645131668%_)))
                                  (let ((_%hd131676%_ _%hd131646131671%_))
                                    (if (gx#stx-pair? _%tl131647131673%_)
                                        (let ((_%e131648131678%_
                                               (gx#syntax-e
                                                _%tl131647131673%_)))
                                          (let ((_%hd131649131681%_
                                                 (##car _%e131648131678%_))
                                                (_%tl131650131683%_
                                                 (##cdr _%e131648131678%_)))
                                            (let ((_%expr131686%_
                                                   _%hd131649131681%_))
                                              (if (gx#stx-null?
                                                   _%tl131650131683%_)
                                                  (if (gx#identifier?
                                                       _%hd131676%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd131676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr131686%_ '())))
              (_%E131641131656%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131641131656%_)))))
                                        (_%E131641131656%_)))))
                              (_%E131641131656%_))))
                      (_%E131641131656%_)))))
          (_%E131640131688%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx131584%_)
        (let* ((_%e131585131598%_ _%stx131584%_)
               (_%E131587131602%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131585131598%_)))
               (_%E131586131634%_
                (lambda ()
                  (if (gx#stx-pair? _%e131585131598%_)
                      (let ((_%e131588131606%_
                             (gx#syntax-e _%e131585131598%_)))
                        (let ((_%hd131589131609%_ (##car _%e131588131606%_))
                              (_%tl131590131611%_ (##cdr _%e131588131606%_)))
                          (if (gx#stx-pair? _%tl131590131611%_)
                              (let ((_%e131591131614%_
                                     (gx#syntax-e _%tl131590131611%_)))
                                (let ((_%hd131592131617%_
                                       (##car _%e131591131614%_))
                                      (_%tl131593131619%_
                                       (##cdr _%e131591131614%_)))
                                  (let ((_%id131622%_ _%hd131592131617%_))
                                    (if (gx#stx-pair? _%tl131593131619%_)
                                        (let ((_%e131594131624%_
                                               (gx#syntax-e
                                                _%tl131593131619%_)))
                                          (let ((_%hd131595131627%_
                                                 (##car _%e131594131624%_))
                                                (_%tl131596131629%_
                                                 (##cdr _%e131594131624%_)))
                                            (let ((_%alias-id131632%_
                                                   _%hd131595131627%_))
                                              (if (gx#stx-null?
                                                   _%tl131596131629%_)
                                                  (if (and (gx#identifier?
                                                            _%id131622%_)
                                                           (gx#identifier?
                                                            _%alias-id131632%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id131622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id131632%_ '())))
              (_%E131587131602%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131587131602%_)))))
                                        (_%E131587131602%_)))))
                              (_%E131587131602%_))))
                      (_%E131587131602%_)))))
          (_%E131586131634%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx131541%_)
        (let* ((_%e131542131552%_ _%stx131541%_)
               (_%E131544131556%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131542131552%_)))
               (_%E131543131580%_
                (lambda ()
                  (if (gx#stx-pair? _%e131542131552%_)
                      (let ((_%e131545131560%_
                             (gx#syntax-e _%e131542131552%_)))
                        (let ((_%hd131546131563%_ (##car _%e131545131560%_))
                              (_%tl131547131565%_ (##cdr _%e131545131560%_)))
                          (if (gx#stx-pair? _%tl131547131565%_)
                              (let ((_%e131548131568%_
                                     (gx#syntax-e _%tl131547131565%_)))
                                (let ((_%hd131549131571%_
                                       (##car _%e131548131568%_))
                                      (_%tl131550131573%_
                                       (##cdr _%e131548131568%_)))
                                  (let* ((_%hd131576%_ _%hd131549131571%_)
                                         (_%body131578%_ _%tl131550131573%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd131576%_)
                                             (gx#stx-list? _%body131578%_)
                                             (not (gx#stx-null?
                                                   _%body131578%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd131576%_)
                                         _%body131578%_)
                                        (_%E131544131556%_)))))
                              (_%E131544131556%_))))
                      (_%E131544131556%_)))))
          (_%E131543131580%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx131477%_)
        (letrec ((_%generate131479%_
                  (lambda (_%clause131509%_)
                    (let* ((_%e131510131517%_ _%clause131509%_)
                           (_%E131512131521%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx131477%_
                               _%clause131509%_)))
                           (_%E131511131537%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131510131517%_)
                                  (let ((_%e131513131525%_
                                         (gx#syntax-e _%e131510131517%_)))
                                    (let ((_%hd131514131528%_
                                           (##car _%e131513131525%_))
                                          (_%tl131515131530%_
                                           (##cdr _%e131513131525%_)))
                                      (let* ((_%hd131533%_ _%hd131514131528%_)
                                             (_%body131535%_
                                              _%tl131515131530%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd131533%_)
                                                 (gx#stx-list? _%body131535%_)
                                                 (not (gx#stx-null?
                                                       _%body131535%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd131533%_)
                                                   _%body131535%_)
                                             (gx#stx-source _%clause131509%_))
                                            (_%E131512131521%_)))))
                                  (_%E131512131521%_)))))
                      (_%E131511131537%_)))))
          (let* ((_%e131480131487%_ _%stx131477%_)
                 (_%E131482131491%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e131480131487%_)))
                 (_%E131481131505%_
                  (lambda ()
                    (if (gx#stx-pair? _%e131480131487%_)
                        (let ((_%e131483131495%_
                               (gx#syntax-e _%e131480131487%_)))
                          (let ((_%hd131484131498%_ (##car _%e131483131495%_))
                                (_%tl131485131500%_ (##cdr _%e131483131495%_)))
                            (let ((_%clauses131503%_ _%tl131485131500%_))
                              (if (gx#stx-list? _%clauses131503%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate131479%_
                                    _%clauses131503%_))
                                  (_%E131482131491%_)))))
                        (_%E131482131491%_)))))
            (_%E131481131505%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx131378%_ _%form131379%_)
        (letrec ((_%generate131381%_
                  (lambda (_%bind131424%_)
                    (let* ((_%e131425131435%_ _%bind131424%_)
                           (_%E131427131439%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx131378%_
                               _%bind131424%_)))
                           (_%E131426131463%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131425131435%_)
                                  (let ((_%e131428131443%_
                                         (gx#syntax-e _%e131425131435%_)))
                                    (let ((_%hd131429131446%_
                                           (##car _%e131428131443%_))
                                          (_%tl131430131448%_
                                           (##cdr _%e131428131443%_)))
                                      (let ((_%ids131451%_ _%hd131429131446%_))
                                        (if (gx#stx-pair? _%tl131430131448%_)
                                            (let ((_%e131431131453%_
                                                   (gx#syntax-e
                                                    _%tl131430131448%_)))
                                              (let ((_%hd131432131456%_
                                                     (##car _%e131431131453%_))
                                                    (_%tl131433131458%_
                                                     (##cdr _%e131431131453%_)))
                                                (let ((_%expr131461%_
                                                       _%hd131432131456%_))
                                                  (if (gx#stx-null?
                                                       _%tl131433131458%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids131451%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids131451%_)
                        (cons _%expr131461%_ '()))
                  (_%E131427131439%_))
              (_%E131427131439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E131427131439%_)))))
                                  (_%E131427131439%_)))))
                      (_%E131426131463%_)))))
          (let* ((_%e131382131392%_ _%stx131378%_)
                 (_%E131384131396%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e131382131392%_)))
                 (_%E131383131420%_
                  (lambda ()
                    (if (gx#stx-pair? _%e131382131392%_)
                        (let ((_%e131385131400%_
                               (gx#syntax-e _%e131382131392%_)))
                          (let ((_%hd131386131403%_ (##car _%e131385131400%_))
                                (_%tl131387131405%_ (##cdr _%e131385131400%_)))
                            (if (gx#stx-pair? _%tl131387131405%_)
                                (let ((_%e131388131408%_
                                       (gx#syntax-e _%tl131387131405%_)))
                                  (let ((_%hd131389131411%_
                                         (##car _%e131388131408%_))
                                        (_%tl131390131413%_
                                         (##cdr _%e131388131408%_)))
                                    (let* ((_%hd131416%_ _%hd131389131411%_)
                                           (_%body131418%_ _%tl131390131413%_))
                                      (if (and (gx#stx-list? _%hd131416%_)
                                               (gx#stx-list? _%body131418%_)
                                               (not (gx#stx-null?
                                                     _%body131418%_)))
                                          (gx#core-cons*
                                           _%form131379%_
                                           (gx#stx-map1
                                            _%generate131381%_
                                            _%hd131416%_)
                                           _%body131418%_)
                                          (_%E131384131396%_)))))
                                (_%E131384131396%_))))
                        (_%E131384131396%_)))))
            (_%E131383131420%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx131470%_)
        (let ((_%form131472%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx131470%_ _%form131472%_))))
    (define gx#macro-expand-let-values
      (lambda _g133858_
        (let ((_g133859_ (##length _g133858_)))
          (cond ((##fx= _g133859_ 1)
                 (apply gx#macro-expand-let-values__0 _g133858_))
                ((##fx= _g133859_ 2)
                 (apply gx#macro-expand-let-values__% _g133858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g133858_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx131375%_)
        (gx#macro-expand-let-values__% _%stx131375%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx131373%_)
        (gx#macro-expand-let-values__% _%stx131373%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx131264%_)
        (let* ((_%e131265131291%_ _%stx131264%_)
               (_%E131277131295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131265131291%_)))
               (_%E131267131337%_
                (lambda ()
                  (if (gx#stx-pair? _%e131265131291%_)
                      (let ((_%e131278131299%_
                             (gx#syntax-e _%e131265131291%_)))
                        (let ((_%hd131279131302%_ (##car _%e131278131299%_))
                              (_%tl131280131304%_ (##cdr _%e131278131299%_)))
                          (if (gx#stx-pair? _%tl131280131304%_)
                              (let ((_%e131281131307%_
                                     (gx#syntax-e _%tl131280131304%_)))
                                (let ((_%hd131282131310%_
                                       (##car _%e131281131307%_))
                                      (_%tl131283131312%_
                                       (##cdr _%e131281131307%_)))
                                  (let ((_%test131315%_ _%hd131282131310%_))
                                    (if (gx#stx-pair? _%tl131283131312%_)
                                        (let ((_%e131284131317%_
                                               (gx#syntax-e
                                                _%tl131283131312%_)))
                                          (let ((_%hd131285131320%_
                                                 (##car _%e131284131317%_))
                                                (_%tl131286131322%_
                                                 (##cdr _%e131284131317%_)))
                                            (let ((_%K131325%_
                                                   _%hd131285131320%_))
                                              (if (gx#stx-pair?
                                                   _%tl131286131322%_)
                                                  (let ((_%e131287131327%_
                                                         (gx#syntax-e
                                                          _%tl131286131322%_)))
                                                    (let ((_%hd131288131330%_
                                                           (##car _%e131287131327%_))
                                                          (_%tl131289131332%_
                                                           (##cdr _%e131287131327%_)))
                                                      (let ((_%E131335%_
                                                             _%hd131288131330%_))
                                                        (if (gx#stx-null?
                                                             _%tl131289131332%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test131315%_
                                                             _%K131325%_
                                                             _%E131335%_)
                                                            (_%E131277131295%_)))))
                                                  (_%E131277131295%_)))))
                                        (_%E131277131295%_)))))
                              (_%E131277131295%_))))
                      (_%E131277131295%_))))
               (_%E131266131369%_
                (lambda ()
                  (if (gx#stx-pair? _%e131265131291%_)
                      (let ((_%e131268131341%_
                             (gx#syntax-e _%e131265131291%_)))
                        (let ((_%hd131269131344%_ (##car _%e131268131341%_))
                              (_%tl131270131346%_ (##cdr _%e131268131341%_)))
                          (if (gx#stx-pair? _%tl131270131346%_)
                              (let ((_%e131271131349%_
                                     (gx#syntax-e _%tl131270131346%_)))
                                (let ((_%hd131272131352%_
                                       (##car _%e131271131349%_))
                                      (_%tl131273131354%_
                                       (##cdr _%e131271131349%_)))
                                  (let ((_%test131357%_ _%hd131272131352%_))
                                    (if (gx#stx-pair? _%tl131273131354%_)
                                        (let ((_%e131274131359%_
                                               (gx#syntax-e
                                                _%tl131273131354%_)))
                                          (let ((_%hd131275131362%_
                                                 (##car _%e131274131359%_))
                                                (_%tl131276131364%_
                                                 (##cdr _%e131274131359%_)))
                                            (let ((_%K131367%_
                                                   _%hd131275131362%_))
                                              (if (gx#stx-null?
                                                   _%tl131276131364%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test131357%_
                                                   _%K131367%_
                                                   '#!void)
                                                  (_%E131267131337%_)))))
                                        (_%E131267131337%_)))))
                              (_%E131267131337%_))))
                      (_%E131267131337%_)))))
          (_%E131266131369%_))))
    (define gx#free-identifier=?
      (lambda (_%xid131249%_ _%yid131250%_)
        (let ((_%xe131252%_ (gx#resolve-identifier__0 _%xid131249%_))
              (_%ye131253%_ (gx#resolve-identifier__0 _%yid131250%_)))
          (if (and _%xe131252%_ _%ye131253%_)
              (let ((_%$e131256%_ (eq? _%xe131252%_ _%ye131253%_)))
                (if _%$e131256%_
                    _%$e131256%_
                    (if (##structure-instance-of? _%xe131252%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye131253%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe131252%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye131253%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe131252%_ _%ye131253%_)
                  '#f
                  (gx#stx-eq? _%xid131249%_ _%yid131250%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid131230%_ _%yid131231%_)
        (letrec ((_%context131233%_
                  (lambda (_%e131247%_)
                    (if (##structure-direct-instance-of?
                         _%e131247%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e131247%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks131234%_
                  (lambda (_%e131242%_)
                    (if (symbol? _%e131242%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e131242%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e131242%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e131242%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap131235%_
                  (lambda (_%e131240%_)
                    (if (symbol? _%e131240%_)
                        _%e131240%_
                        (gx#syntax-local-unwrap _%e131240%_)))))
          (let ((_%x131237%_ (_%unwrap131235%_ _%xid131230%_))
                (_%y131238%_ (_%unwrap131235%_ _%yid131231%_)))
            (if (gx#stx-eq? _%x131237%_ _%y131238%_)
                (if (eq? (_%context131233%_ _%x131237%_)
                         (_%context131233%_ _%y131238%_))
                    (equal? (_%marks131234%_ _%x131237%_)
                            (_%marks131234%_ _%y131238%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx131228%_)
        (if (gx#identifier? _%stx131228%_)
            (gx#core-identifier=? _%stx131228%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx131226%_)
        (if (gx#identifier? _%stx131226%_)
            (gx#core-identifier=? _%stx131226%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx131169%_ _%where131170%_)
        (let _%lp131172%_ ((_%rest131174%_ (gx#syntax->list _%stx131169%_)))
          (let* ((_%rest131175131183%_ _%rest131174%_)
                 (_%else131177131191%_ (lambda () '#t))
                 (_%K131179131204%_
                  (lambda (_%rest131194%_ _%hd131195%_)
                    (if (gx#identifier? _%hd131195%_)
                        (if (__find (lambda (_%g131197131199%_)
                                      (gx#bound-identifier=?
                                       _%g131197131199%_
                                       _%hd131195%_))
                                    _%rest131194%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where131170%_
                             _%hd131195%_)
                            (_%lp131172%_ _%rest131194%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where131170%_
                         _%hd131195%_)))))
            (if (pair? _%rest131175131183%_)
                (let ((_%hd131180131207%_ (##car _%rest131175131183%_))
                      (_%tl131181131209%_ (##cdr _%rest131175131183%_)))
                  (let* ((_%hd131212%_ _%hd131180131207%_)
                         (_%rest131214%_ _%tl131181131209%_))
                    (_%K131179131204%_ _%rest131214%_ _%hd131212%_)))
                (_%else131177131191%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx131219%_)
        (let ((_%where131221%_ _%stx131219%_))
          (gx#check-duplicate-identifiers__% _%stx131219%_ _%where131221%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g133860_
        (let ((_g133861_ (##length _g133860_)))
          (cond ((##fx= _g133861_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g133860_))
                ((##fx= _g133861_ 2)
                 (apply gx#check-duplicate-identifiers__% _g133860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g133860_))))))
    (define gx#core-bind-values?
      (lambda (_%stx131161%_)
        (gx#stx-andmap
         (lambda (_%x131163%_)
           (let ((_%$e131165%_ (gx#identifier? _%x131163%_)))
             (if _%$e131165%_ _%$e131165%_ (gx#stx-false? _%x131163%_))))
         _%stx131161%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx131125%_ _%rebind?131126%_ _%phi131127%_ _%ctx131128%_)
        (gx#stx-for-each1
         (lambda (_%id131130%_)
           (if (gx#identifier? _%id131130%_)
               (gx#core-bind-runtime!__%
                _%id131130%_
                _%rebind?131126%_
                _%phi131127%_
                _%ctx131128%_)
               '#!void))
         _%stx131125%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx131135%_)
        (let* ((_%rebind?131137%_ '#f)
               (_%phi131139%_ (gx#current-expander-phi))
               (_%ctx131141%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx131135%_
           _%rebind?131137%_
           _%phi131139%_
           _%ctx131141%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx131143%_ _%rebind?131144%_)
        (let* ((_%phi131146%_ (gx#current-expander-phi))
               (_%ctx131148%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx131143%_
           _%rebind?131144%_
           _%phi131146%_
           _%ctx131148%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx131150%_ _%rebind?131151%_ _%phi131152%_)
        (let ((_%ctx131154%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx131150%_
           _%rebind?131151%_
           _%phi131152%_
           _%ctx131154%_))))
    (define gx#core-bind-values!
      (lambda _g133862_
        (let ((_g133863_ (##length _g133862_)))
          (cond ((##fx= _g133863_ 1) (apply gx#core-bind-values!__0 _g133862_))
                ((##fx= _g133863_ 2) (apply gx#core-bind-values!__1 _g133862_))
                ((##fx= _g133863_ 3) (apply gx#core-bind-values!__2 _g133862_))
                ((##fx= _g133863_ 4) (apply gx#core-bind-values!__% _g133862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g133862_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx131120%_)
        (gx#stx-map1
         (lambda (_%x131122%_)
           (if (gx#identifier? _%x131122%_)
               (gx#core-quote-syntax__0 _%x131122%_)
               '#f))
         _%stx131120%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx131113%_)
        (if (gx#identifier? _%stx131113%_)
            (let* ((_%bind131115%_ (gx#resolve-identifier__0 _%stx131113%_))
                   (_%$e131117%_ (not _%bind131115%_)))
              (if _%$e131117%_
                  _%$e131117%_
                  (##structure-instance-of?
                   _%bind131115%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id131102%_ _%form131103%_)
        (let ((_%bind131105%_ (gx#resolve-identifier__0 _%id131102%_)))
          (if (##structure-instance-of? _%bind131105%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id131102%_)
              (if (not _%bind131105%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id131102%_)))
                      (gx#core-quote-syntax__0 _%id131102%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form131103%_
                       _%id131102%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form131103%_
                   _%id131102%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id131057%_ _%rebind?131058%_ _%phi131059%_ _%ctx131060%_)
        (let* ((_%key131062%_ (gx#core-identifier-key _%id131057%_))
               (_%eid131064%_
                (gx#make-binding-id__%
                 _%key131062%_
                 '#f
                 _%phi131059%_
                 _%ctx131060%_))
               (_%bind131070%_
                (if (##structure-instance-of?
                     _%ctx131060%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid131064%_
                     _%key131062%_
                     _%phi131059%_
                     _%ctx131060%_)
                    (if (##structure-instance-of?
                         _%ctx131060%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid131064%_
                         _%key131062%_
                         _%phi131059%_)
                        (if (##structure-instance-of?
                             _%ctx131060%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid131064%_
                             _%key131062%_
                             _%phi131059%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid131064%_
                             _%key131062%_
                             _%phi131059%_))))))
          (gx#bind-identifier!__%
           _%id131057%_
           _%bind131070%_
           _%rebind?131058%_
           _%phi131059%_
           _%ctx131060%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id131076%_)
        (let* ((_%rebind?131078%_ '#f)
               (_%phi131080%_ (gx#current-expander-phi))
               (_%ctx131082%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id131076%_
           _%rebind?131078%_
           _%phi131080%_
           _%ctx131082%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id131084%_ _%rebind?131085%_)
        (let* ((_%phi131087%_ (gx#current-expander-phi))
               (_%ctx131089%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id131084%_
           _%rebind?131085%_
           _%phi131087%_
           _%ctx131089%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id131091%_ _%rebind?131092%_ _%phi131093%_)
        (let ((_%ctx131095%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id131091%_
           _%rebind?131092%_
           _%phi131093%_
           _%ctx131095%_))))
    (define gx#core-bind-runtime!
      (lambda _g133864_
        (let ((_g133865_ (##length _g133864_)))
          (cond ((##fx= _g133865_ 1)
                 (apply gx#core-bind-runtime!__0 _g133864_))
                ((##fx= _g133865_ 2)
                 (apply gx#core-bind-runtime!__1 _g133864_))
                ((##fx= _g133865_ 3)
                 (apply gx#core-bind-runtime!__2 _g133864_))
                ((##fx= _g133865_ 4)
                 (apply gx#core-bind-runtime!__% _g133864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g133864_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id131009%_
               _%eid131010%_
               _%rebind?131011%_
               _%phi131012%_
               _%ctx131013%_)
        (let* ((_%key131015%_ (gx#core-identifier-key _%id131009%_))
               (_%bind131020%_
                (if (##structure-instance-of?
                     _%ctx131013%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid131010%_
                     _%key131015%_
                     _%phi131012%_
                     _%ctx131013%_)
                    (if (##structure-instance-of?
                         _%ctx131013%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid131010%_
                         _%key131015%_
                         _%phi131012%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid131010%_
                         _%key131015%_
                         _%phi131012%_)))))
          (gx#bind-identifier!__%
           _%id131009%_
           _%bind131020%_
           _%rebind?131011%_
           _%phi131012%_
           _%ctx131013%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id131026%_ _%eid131027%_)
        (let* ((_%rebind?131029%_ '#f)
               (_%phi131031%_ (gx#current-expander-phi))
               (_%ctx131033%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id131026%_
           _%eid131027%_
           _%rebind?131029%_
           _%phi131031%_
           _%ctx131033%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id131035%_ _%eid131036%_ _%rebind?131037%_)
        (let* ((_%phi131039%_ (gx#current-expander-phi))
               (_%ctx131041%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id131035%_
           _%eid131036%_
           _%rebind?131037%_
           _%phi131039%_
           _%ctx131041%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id131043%_ _%eid131044%_ _%rebind?131045%_ _%phi131046%_)
        (let ((_%ctx131048%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id131043%_
           _%eid131044%_
           _%rebind?131045%_
           _%phi131046%_
           _%ctx131048%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g133866_
        (let ((_g133867_ (##length _g133866_)))
          (cond ((##fx= _g133867_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g133866_))
                ((##fx= _g133867_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g133866_))
                ((##fx= _g133867_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g133866_))
                ((##fx= _g133867_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g133866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g133866_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id130969%_
               _%eid130970%_
               _%rebind?130971%_
               _%phi130972%_
               _%ctx130973%_)
        (gx#bind-identifier!__%
         _%id130969%_
         (##structure
          gx#extern-binding::t
          _%eid130970%_
          (gx#core-identifier-key _%id130969%_)
          _%phi130972%_)
         _%rebind?130971%_
         _%phi130972%_
         _%ctx130973%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id130978%_ _%eid130979%_)
        (let* ((_%rebind?130981%_ '#f)
               (_%phi130983%_ (gx#current-expander-phi))
               (_%ctx130985%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id130978%_
           _%eid130979%_
           _%rebind?130981%_
           _%phi130983%_
           _%ctx130985%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id130987%_ _%eid130988%_ _%rebind?130989%_)
        (let* ((_%phi130991%_ (gx#current-expander-phi))
               (_%ctx130993%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id130987%_
           _%eid130988%_
           _%rebind?130989%_
           _%phi130991%_
           _%ctx130993%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id130995%_ _%eid130996%_ _%rebind?130997%_ _%phi130998%_)
        (let ((_%ctx131000%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id130995%_
           _%eid130996%_
           _%rebind?130997%_
           _%phi130998%_
           _%ctx131000%_))))
    (define gx#core-bind-extern!
      (lambda _g133868_
        (let ((_g133869_ (##length _g133868_)))
          (cond ((##fx= _g133869_ 2) (apply gx#core-bind-extern!__0 _g133868_))
                ((##fx= _g133869_ 3) (apply gx#core-bind-extern!__1 _g133868_))
                ((##fx= _g133869_ 4) (apply gx#core-bind-extern!__2 _g133868_))
                ((##fx= _g133869_ 5) (apply gx#core-bind-extern!__% _g133868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g133868_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id130923%_
               _%e130924%_
               _%rebind?130925%_
               _%phi130926%_
               _%ctx130927%_)
        (gx#bind-identifier!__%
         _%id130923%_
         (let ((_%key130932%_ (gx#core-identifier-key _%id130923%_))
               (_%e130933%_
                (if (or (##structure-instance-of? _%e130924%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e130924%_
                         'gx#expander-context::t))
                    _%e130924%_
                    (##structure
                     gx#user-expander::t
                     _%e130924%_
                     _%ctx130927%_
                     _%phi130926%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key130932%_
             '#t
             _%phi130926%_
             _%ctx130927%_)
            _%key130932%_
            _%phi130926%_
            _%e130933%_))
         _%rebind?130925%_
         _%phi130926%_
         _%ctx130927%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id130938%_ _%e130939%_)
        (let* ((_%rebind?130941%_ '#f)
               (_%phi130943%_ (gx#current-expander-phi))
               (_%ctx130945%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id130938%_
           _%e130939%_
           _%rebind?130941%_
           _%phi130943%_
           _%ctx130945%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id130947%_ _%e130948%_ _%rebind?130949%_)
        (let* ((_%phi130951%_ (gx#current-expander-phi))
               (_%ctx130953%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id130947%_
           _%e130948%_
           _%rebind?130949%_
           _%phi130951%_
           _%ctx130953%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id130955%_ _%e130956%_ _%rebind?130957%_ _%phi130958%_)
        (let ((_%ctx130960%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id130955%_
           _%e130956%_
           _%rebind?130957%_
           _%phi130958%_
           _%ctx130960%_))))
    (define gx#core-bind-syntax!
      (lambda _g133870_
        (let ((_g133871_ (##length _g133870_)))
          (cond ((##fx= _g133871_ 2) (apply gx#core-bind-syntax!__0 _g133870_))
                ((##fx= _g133871_ 3) (apply gx#core-bind-syntax!__1 _g133870_))
                ((##fx= _g133871_ 4) (apply gx#core-bind-syntax!__2 _g133870_))
                ((##fx= _g133871_ 5) (apply gx#core-bind-syntax!__% _g133870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g133870_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id130906%_ _%e130907%_ _%rebind?130908%_)
        (gx#core-bind-syntax!__%
         _%id130906%_
         _%e130907%_
         _%rebind?130908%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id130913%_ _%e130914%_)
        (let ((_%rebind?130916%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id130913%_
           _%e130914%_
           _%rebind?130916%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g133872_
        (let ((_g133873_ (##length _g133872_)))
          (cond ((##fx= _g133873_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g133872_))
                ((##fx= _g133873_ 3)
                 (apply gx#core-bind-root-syntax!__% _g133872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g133872_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id130864%_
               _%alias-id130865%_
               _%rebind?130866%_
               _%phi130867%_
               _%ctx130868%_)
        (gx#bind-identifier!__%
         _%id130864%_
         (let ((_%key130870%_ (gx#core-identifier-key _%id130864%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key130870%_
             '#t
             _%phi130867%_
             _%ctx130868%_)
            _%key130870%_
            _%phi130867%_
            _%alias-id130865%_))
         _%rebind?130866%_
         _%phi130867%_
         _%ctx130868%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id130875%_ _%alias-id130876%_)
        (let* ((_%rebind?130878%_ '#f)
               (_%phi130880%_ (gx#current-expander-phi))
               (_%ctx130882%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id130875%_
           _%alias-id130876%_
           _%rebind?130878%_
           _%phi130880%_
           _%ctx130882%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id130884%_ _%alias-id130885%_ _%rebind?130886%_)
        (let* ((_%phi130888%_ (gx#current-expander-phi))
               (_%ctx130890%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id130884%_
           _%alias-id130885%_
           _%rebind?130886%_
           _%phi130888%_
           _%ctx130890%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id130892%_ _%alias-id130893%_ _%rebind?130894%_ _%phi130895%_)
        (let ((_%ctx130897%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id130892%_
           _%alias-id130893%_
           _%rebind?130894%_
           _%phi130895%_
           _%ctx130897%_))))
    (define gx#core-bind-alias!
      (lambda _g133874_
        (let ((_g133875_ (##length _g133874_)))
          (cond ((##fx= _g133875_ 2) (apply gx#core-bind-alias!__0 _g133874_))
                ((##fx= _g133875_ 3) (apply gx#core-bind-alias!__1 _g133874_))
                ((##fx= _g133875_ 4) (apply gx#core-bind-alias!__2 _g133874_))
                ((##fx= _g133875_ 5) (apply gx#core-bind-alias!__% _g133874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g133874_))))))
    (define gx#make-binding-id__%
      (lambda (_%key130814%_ _%syntax?130815%_ _%phi130816%_ _%ctx130817%_)
        (if (uninterned-symbol? _%key130814%_)
            (##gensym 'L)
            (if (pair? _%key130814%_)
                (gensym (##car _%key130814%_))
                (if (##structure-instance-of? _%ctx130817%_ 'gx#top-context::t)
                    (let ((_%ns130822%_
                           (gx#core-context-namespace__% _%ctx130817%_)))
                      (if (and (fxzero? _%phi130816%_) (not _%syntax?130815%_))
                          (if _%ns130822%_
                              (make-symbol__1 _%ns130822%_ '"#" _%key130814%_)
                              _%key130814%_)
                          (if _%syntax?130815%_
                              (make-symbol__1
                               (let ((_%$e130826%_ _%ns130822%_))
                                 (if _%$e130826%_ _%$e130826%_ '""))
                               '"[:"
                               (number->string _%phi130816%_)
                               '":]#"
                               _%key130814%_)
                              (make-symbol__1
                               (let ((_%$e130830%_ _%ns130822%_))
                                 (if _%$e130830%_ _%$e130830%_ '""))
                               '"["
                               (number->string _%phi130816%_)
                               '"]#"
                               _%key130814%_))))
                    (gensym _%key130814%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key130837%_)
        (let* ((_%syntax?130839%_ '#f)
               (_%phi130841%_ (gx#current-expander-phi))
               (_%ctx130843%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key130837%_
           _%syntax?130839%_
           _%phi130841%_
           _%ctx130843%_))))
    (define gx#make-binding-id__1
      (lambda (_%key130845%_ _%syntax?130846%_)
        (let* ((_%phi130848%_ (gx#current-expander-phi))
               (_%ctx130850%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key130845%_
           _%syntax?130846%_
           _%phi130848%_
           _%ctx130850%_))))
    (define gx#make-binding-id__2
      (lambda (_%key130852%_ _%syntax?130853%_ _%phi130854%_)
        (let ((_%ctx130856%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key130852%_
           _%syntax?130853%_
           _%phi130854%_
           _%ctx130856%_))))
    (define gx#make-binding-id
      (lambda _g133876_
        (let ((_g133877_ (##length _g133876_)))
          (cond ((##fx= _g133877_ 1) (apply gx#make-binding-id__0 _g133876_))
                ((##fx= _g133877_ 2) (apply gx#make-binding-id__1 _g133876_))
                ((##fx= _g133877_ 3) (apply gx#make-binding-id__2 _g133876_))
                ((##fx= _g133877_ 4) (apply gx#make-binding-id__% _g133876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g133876_))))))))
