(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1770744576)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx179895%_)
        (letrec ((_%expand-special179897%_
                  (lambda (_%hd179899%_ _%K179900%_ _%rest179901%_ _%r179902%_)
                    (_%K179900%_
                     _%rest179901%_
                     (cons (gx#core-expand-top _%hd179899%_) _%r179902%_)))))
          (gx#core-expand-block__0 _%stx179895%_ _%expand-special179897%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx179589%_)
        (letrec ((_%expand-special179591%_
                  (lambda (_%hd179713%_ _%K179714%_ _%rest179715%_ _%r179716%_)
                    (let* ((_%K179720%_
                            (lambda (_%e179718%_)
                              (_%K179714%_
                               _%rest179715%_
                               (cons _%e179718%_ _%r179716%_))))
                           (_%e179721179763%_ _%hd179713%_)
                           (_%E179758179767%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e179721179763%_)))
                           (_%E179754179779%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179721179763%_)
                                  (let ((_%e179759179771%_
                                         (gx#syntax-e _%e179721179763%_)))
                                    (let ((_%hd179760179774%_
                                           (##car _%e179759179771%_))
                                          (_%tl179761179776%_
                                           (##cdr _%e179759179771%_)))
                                      (if (and (gx#identifier?
                                                _%hd179760179774%_)
                                               (gx#core-identifier=?
                                                _%hd179760179774%_
                                                '%#define-runtime))
                                          (_%K179720%_
                                           (gx#core-expand-define-runtime%
                                            _%hd179713%_))
                                          (_%E179758179767%_))))
                                  (_%E179758179767%_))))
                           (_%E179750179791%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179721179763%_)
                                  (let ((_%e179755179783%_
                                         (gx#syntax-e _%e179721179763%_)))
                                    (let ((_%hd179756179786%_
                                           (##car _%e179755179783%_))
                                          (_%tl179757179788%_
                                           (##cdr _%e179755179783%_)))
                                      (if (and (gx#identifier?
                                                _%hd179756179786%_)
                                               (gx#core-identifier=?
                                                _%hd179756179786%_
                                                '%#define-alias))
                                          (_%K179720%_
                                           (gx#core-expand-define-alias%
                                            _%hd179713%_))
                                          (_%E179754179779%_))))
                                  (_%E179754179779%_))))
                           (_%E179740179803%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179721179763%_)
                                  (let ((_%e179751179795%_
                                         (gx#syntax-e _%e179721179763%_)))
                                    (let ((_%hd179752179798%_
                                           (##car _%e179751179795%_))
                                          (_%tl179753179800%_
                                           (##cdr _%e179751179795%_)))
                                      (if (and (gx#identifier?
                                                _%hd179752179798%_)
                                               (gx#core-identifier=?
                                                _%hd179752179798%_
                                                '%#define-syntax))
                                          (_%K179720%_
                                           (gx#core-expand-define-syntax%
                                            _%hd179713%_))
                                          (_%E179750179791%_))))
                                  (_%E179750179791%_))))
                           (_%E179727179835%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179721179763%_)
                                  (let ((_%e179741179807%_
                                         (gx#syntax-e _%e179721179763%_)))
                                    (let ((_%hd179742179810%_
                                           (##car _%e179741179807%_))
                                          (_%tl179743179812%_
                                           (##cdr _%e179741179807%_)))
                                      (if (and (gx#identifier?
                                                _%hd179742179810%_)
                                               (gx#core-identifier=?
                                                _%hd179742179810%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl179743179812%_)
                                              (let ((_%e179744179815%_
                                                     (gx#syntax-e
                                                      _%tl179743179812%_)))
                                                (let ((_%hd179745179818%_
                                                       (##car _%e179744179815%_))
                                                      (_%tl179746179820%_
                                                       (##cdr _%e179744179815%_)))
                                                  (let ((_%hd-bind179823%_
                                                         _%hd179745179818%_))
                                                    (if (gx#stx-pair?
                                                         _%tl179746179820%_)
                                                        (let ((_%e179747179825%_
                                                               (gx#syntax-e
                                                                _%tl179746179820%_)))
                                                          (let ((_%hd179748179828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e179747179825%_))
                        (_%tl179749179830%_ (##cdr _%e179747179825%_)))
                    (let ((_%expr179833%_ _%hd179748179828%_))
                      (if (gx#stx-null? _%tl179749179830%_)
                          (if (gx#core-bind-values? _%hd-bind179823%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind179823%_)
                                (_%K179720%_ _%hd179713%_))
                              (_%E179740179803%_))
                          (_%E179740179803%_)))))
                (_%E179740179803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E179740179803%_))
                                          (_%E179740179803%_))))
                                  (_%E179740179803%_))))
                           (_%E179723179879%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179721179763%_)
                                  (let ((_%e179728179839%_
                                         (gx#syntax-e _%e179721179763%_)))
                                    (let ((_%hd179729179842%_
                                           (##car _%e179728179839%_))
                                          (_%tl179730179844%_
                                           (##cdr _%e179728179839%_)))
                                      (if (and (gx#identifier?
                                                _%hd179729179842%_)
                                               (gx#core-identifier=?
                                                _%hd179729179842%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl179730179844%_)
                                              (let ((_%e179731179847%_
                                                     (gx#syntax-e
                                                      _%tl179730179844%_)))
                                                (let ((_%hd179732179850%_
                                                       (##car _%e179731179847%_))
                                                      (_%tl179733179852%_
                                                       (##cdr _%e179731179847%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd179732179850%_)
                                                      (let ((_%e179737179855%_
                                                             (gx#syntax-e
                                                              _%hd179732179850%_)))
                                                        (let ((_%hd179738179858%_
                                                               (##car _%e179737179855%_))
                                                              (_%tl179739179860%_
                                                               (##cdr _%e179737179855%_)))
                                                          (let ((_%id179863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd179738179858%_))
                    (if (gx#stx-null? _%tl179739179860%_)
                        (if (gx#stx-pair? _%tl179733179852%_)
                            (let ((_%e179734179865%_
                                   (gx#syntax-e _%tl179733179852%_)))
                              (let ((_%hd179735179868%_
                                     (##car _%e179734179865%_))
                                    (_%tl179736179870%_
                                     (##cdr _%e179734179865%_)))
                                (let* ((_%expr179873%_ _%hd179735179868%_)
                                       (_%props179875%_ _%tl179736179870%_))
                                  (if (gx#identifier? _%id179863%_)
                                      (let ((_%bind179877%_
                                             (gx#core-bind-runtime!__0
                                              _%id179863%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind179877%_
                                         _%props179875%_)
                                        (_%K179720%_ _%hd179713%_))
                                      (_%E179727179835%_)))))
                            (_%E179727179835%_))
                        (_%E179727179835%_)))))
              (_%E179727179835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E179727179835%_))
                                          (_%E179727179835%_))))
                                  (_%E179727179835%_))))
                           (_%E179722179891%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179721179763%_)
                                  (let ((_%e179724179883%_
                                         (gx#syntax-e _%e179721179763%_)))
                                    (let ((_%hd179725179886%_
                                           (##car _%e179724179883%_))
                                          (_%tl179726179888%_
                                           (##cdr _%e179724179883%_)))
                                      (if (and (gx#identifier?
                                                _%hd179725179886%_)
                                               (gx#core-identifier=?
                                                _%hd179725179886%_
                                                '%#begin-syntax))
                                          (_%K179720%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd179713%_))
                                          (_%E179723179879%_))))
                                  (_%E179723179879%_)))))
                      (_%E179722179891%_))))
                 (_%eval-body179592%_
                  (lambda (_%rbody179600%_)
                    (let _%lp179602%_ ((_%rest179604%_ _%rbody179600%_)
                                       (_%body179605%_ '())
                                       (_%ebody179606%_ '()))
                      (let* ((_%rest179607179615%_ _%rest179604%_)
                             (_%else179609179623%_
                              (lambda ()
                                (values _%body179605%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody179606%_)
                                          (gx#stx-source _%stx179589%_))))))
                             (_%K179611179701%_
                              (lambda (_%rest179626%_ _%hd179627%_)
                                (let* ((_%e179628179645%_ _%hd179627%_)
                                       (_%E179640179649%_
                                        (lambda ()
                                          (_%lp179602%_
                                           _%rest179626%_
                                           (cons _%hd179627%_ _%body179605%_)
                                           (cons _%hd179627%_
                                                 _%ebody179606%_))))
                                       (_%E179630179661%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e179628179645%_)
                                              (let ((_%e179641179653%_
                                                     (gx#syntax-e
                                                      _%e179628179645%_)))
                                                (let ((_%hd179642179656%_
                                                       (##car _%e179641179653%_))
                                                      (_%tl179643179658%_
                                                       (##cdr _%e179641179653%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd179642179656%_)
                                                           (gx#core-identifier=?
                                                            _%hd179642179656%_
                                                            '%#begin-syntax))
                                                      (_%lp179602%_
                                                       _%rest179626%_
                                                       (cons _%hd179627%_
                                                             _%body179605%_)
                                                       _%ebody179606%_)
                                                      (_%E179640179649%_))))
                                              (_%E179640179649%_))))
                                       (_%E179629179697%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e179628179645%_)
                                              (let ((_%e179631179665%_
                                                     (gx#syntax-e
                                                      _%e179628179645%_)))
                                                (let ((_%hd179632179668%_
                                                       (##car _%e179631179665%_))
                                                      (_%tl179633179670%_
                                                       (##cdr _%e179631179665%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd179632179668%_)
                                                           (gx#core-identifier=?
                                                            _%hd179632179668%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl179633179670%_)
                                                          (let ((_%e179634179673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl179633179670%_)))
                    (let ((_%hd179635179676%_ (##car _%e179634179673%_))
                          (_%tl179636179678%_ (##cdr _%e179634179673%_)))
                      (let ((_%hd-bind179681%_ _%hd179635179676%_))
                        (if (gx#stx-pair? _%tl179636179678%_)
                            (let ((_%e179637179683%_
                                   (gx#syntax-e _%tl179636179678%_)))
                              (let ((_%hd179638179686%_
                                     (##car _%e179637179683%_))
                                    (_%tl179639179688%_
                                     (##cdr _%e179637179683%_)))
                                (let* ((_%expr179691%_ _%hd179638179686%_)
                                       (_%ignore-props179693%_
                                        _%tl179639179688%_)
                                       (_%ehd179695%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind179681%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr179691%_)
                                                           '())))
                                         (gx#stx-source _%hd179627%_))))
                                  (_%lp179602%_
                                   _%rest179626%_
                                   (cons _%ehd179695%_ _%body179605%_)
                                   (cons _%ehd179695%_ _%ebody179606%_)))))
                            (_%E179630179661%_)))))
                  (_%E179630179661%_))
              (_%E179630179661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E179630179661%_)))))
                                  (_%E179629179697%_)))))
                        (if (pair? _%rest179607179615%_)
                            (let ((_%hd179612179704%_
                                   (##car _%rest179607179615%_))
                                  (_%tl179613179706%_
                                   (##cdr _%rest179607179615%_)))
                              (let* ((_%hd179709%_ _%hd179612179704%_)
                                     (_%rest179711%_ _%tl179613179706%_))
                                (_%K179611179701%_
                                 _%rest179711%_
                                 _%hd179709%_)))
                            (_%else179609179623%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody179595%_
                     (gx#core-expand-block__1
                      _%stx179589%_
                      _%expand-special179591%_
                      '#f))
                    (_g179928_ (_%eval-body179592%_ _%rbody179595%_)))
               (begin
                 (let ((_g179929_
                        (if (##values? _g179928_)
                            (##values-length _g179928_)
                            1)))
                   (if (not (##fx= _g179929_ 2))
                       (error "Context expects 2 values" _g179929_)))
                 (let ((_%expanded-body179597%_ (##values-ref _g179928_ 0))
                       (_%value179598%_ (##values-ref _g179928_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body179597%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value179598%_ '())))
                    (gx#stx-source _%stx179589%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx179559%_)
        (let* ((_%e179560179567%_ _%stx179559%_)
               (_%E179562179571%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179560179567%_)))
               (_%E179561179585%_
                (lambda ()
                  (if (gx#stx-pair? _%e179560179567%_)
                      (let ((_%e179563179575%_
                             (gx#syntax-e _%e179560179567%_)))
                        (let ((_%hd179564179578%_ (##car _%e179563179575%_))
                              (_%tl179565179580%_ (##cdr _%e179563179575%_)))
                          (let ((_%body179583%_ _%tl179565179580%_))
                            (if (gx#stx-list? _%body179583%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body179583%_)
                                 (gx#stx-source _%stx179559%_))
                                (_%E179562179571%_)))))
                      (_%E179562179571%_)))))
          (_%E179561179585%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx179557%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx179557%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx179503%_)
        (let* ((_%e179504179517%_ _%stx179503%_)
               (_%E179506179521%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179504179517%_)))
               (_%E179505179553%_
                (lambda ()
                  (if (gx#stx-pair? _%e179504179517%_)
                      (let ((_%e179507179525%_
                             (gx#syntax-e _%e179504179517%_)))
                        (let ((_%hd179508179528%_ (##car _%e179507179525%_))
                              (_%tl179509179530%_ (##cdr _%e179507179525%_)))
                          (if (gx#stx-pair? _%tl179509179530%_)
                              (let ((_%e179510179533%_
                                     (gx#syntax-e _%tl179509179530%_)))
                                (let ((_%hd179511179536%_
                                       (##car _%e179510179533%_))
                                      (_%tl179512179538%_
                                       (##cdr _%e179510179533%_)))
                                  (let ((_%ann179541%_ _%hd179511179536%_))
                                    (if (gx#stx-pair? _%tl179512179538%_)
                                        (let ((_%e179513179543%_
                                               (gx#syntax-e
                                                _%tl179512179538%_)))
                                          (let ((_%hd179514179546%_
                                                 (##car _%e179513179543%_))
                                                (_%tl179515179548%_
                                                 (##cdr _%e179513179543%_)))
                                            (let ((_%expr179551%_
                                                   _%hd179514179546%_))
                                              (if (gx#stx-null?
                                                   _%tl179515179548%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann179541%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr179551%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx179503%_))
                                                  (_%E179506179521%_)))))
                                        (_%E179506179521%_)))))
                              (_%E179506179521%_))))
                      (_%E179506179521%_)))))
          (_%E179505179553%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx179168%_ _%body179169%_)
        (letrec ((_%expand-special179171%_
                  (lambda (_%hd179498%_ _%K179499%_ _%rest179500%_ _%r179501%_)
                    (_%K179499%_
                     '()
                     (cons (_%expand-internal179172%_
                            _%hd179498%_
                            _%rest179500%_)
                           _%r179501%_))))
                 (_%expand-internal179172%_
                  (lambda (_%hd179494%_ _%rest179495%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal179174%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd179494%_ _%rest179495%_))
                          (gx#stx-source _%stx179168%_))
                         _%expand-internal-special179173%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj179912
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj179912)
                       __obj179912))))
                 (_%expand-internal-special179173%_
                  (lambda (_%hd179332%_ _%K179333%_ _%rest179334%_ _%r179335%_)
                    (let* ((_%e179336179374%_ _%hd179332%_)
                           (_%E179369179378%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e179336179374%_)))
                           (_%E179365179390%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179336179374%_)
                                  (let ((_%e179370179382%_
                                         (gx#syntax-e _%e179336179374%_)))
                                    (let ((_%hd179371179385%_
                                           (##car _%e179370179382%_))
                                          (_%tl179372179387%_
                                           (##cdr _%e179370179382%_)))
                                      (if (and (gx#identifier?
                                                _%hd179371179385%_)
                                               (gx#core-identifier=?
                                                _%hd179371179385%_
                                                '%#declare))
                                          (_%K179333%_
                                           _%rest179334%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd179332%_)
                                                 _%r179335%_))
                                          (_%E179369179378%_))))
                                  (_%E179369179378%_))))
                           (_%E179361179402%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179336179374%_)
                                  (let ((_%e179366179394%_
                                         (gx#syntax-e _%e179336179374%_)))
                                    (let ((_%hd179367179397%_
                                           (##car _%e179366179394%_))
                                          (_%tl179368179399%_
                                           (##cdr _%e179366179394%_)))
                                      (if (and (gx#identifier?
                                                _%hd179367179397%_)
                                               (gx#core-identifier=?
                                                _%hd179367179397%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd179332%_)
                                            (_%K179333%_
                                             _%rest179334%_
                                             _%r179335%_))
                                          (_%E179365179390%_))))
                                  (_%E179365179390%_))))
                           (_%E179351179414%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179336179374%_)
                                  (let ((_%e179362179406%_
                                         (gx#syntax-e _%e179336179374%_)))
                                    (let ((_%hd179363179409%_
                                           (##car _%e179362179406%_))
                                          (_%tl179364179411%_
                                           (##cdr _%e179362179406%_)))
                                      (if (and (gx#identifier?
                                                _%hd179363179409%_)
                                               (gx#core-identifier=?
                                                _%hd179363179409%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd179332%_)
                                            (_%K179333%_
                                             _%rest179334%_
                                             _%r179335%_))
                                          (_%E179361179402%_))))
                                  (_%E179361179402%_))))
                           (_%E179338179446%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179336179374%_)
                                  (let ((_%e179352179418%_
                                         (gx#syntax-e _%e179336179374%_)))
                                    (let ((_%hd179353179421%_
                                           (##car _%e179352179418%_))
                                          (_%tl179354179423%_
                                           (##cdr _%e179352179418%_)))
                                      (if (and (gx#identifier?
                                                _%hd179353179421%_)
                                               (gx#core-identifier=?
                                                _%hd179353179421%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl179354179423%_)
                                              (let ((_%e179355179426%_
                                                     (gx#syntax-e
                                                      _%tl179354179423%_)))
                                                (let ((_%hd179356179429%_
                                                       (##car _%e179355179426%_))
                                                      (_%tl179357179431%_
                                                       (##cdr _%e179355179426%_)))
                                                  (let ((_%hd-bind179434%_
                                                         _%hd179356179429%_))
                                                    (if (gx#stx-pair?
                                                         _%tl179357179431%_)
                                                        (let ((_%e179358179436%_
                                                               (gx#syntax-e
                                                                _%tl179357179431%_)))
                                                          (let ((_%hd179359179439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e179358179436%_))
                        (_%tl179360179441%_ (##cdr _%e179358179436%_)))
                    (let ((_%expr179444%_ _%hd179359179439%_))
                      (if (gx#stx-null? _%tl179360179441%_)
                          (if (gx#core-bind-values? _%hd-bind179434%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind179434%_)
                                (_%K179333%_
                                 _%rest179334%_
                                 (cons _%hd179332%_ _%r179335%_)))
                              (_%E179351179414%_))
                          (_%E179351179414%_)))))
                (_%E179351179414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E179351179414%_))
                                          (_%E179351179414%_))))
                                  (_%E179351179414%_))))
                           (_%E179337179490%_
                            (lambda ()
                              (if (gx#stx-pair? _%e179336179374%_)
                                  (let ((_%e179339179450%_
                                         (gx#syntax-e _%e179336179374%_)))
                                    (let ((_%hd179340179453%_
                                           (##car _%e179339179450%_))
                                          (_%tl179341179455%_
                                           (##cdr _%e179339179450%_)))
                                      (if (and (gx#identifier?
                                                _%hd179340179453%_)
                                               (gx#core-identifier=?
                                                _%hd179340179453%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl179341179455%_)
                                              (let ((_%e179342179458%_
                                                     (gx#syntax-e
                                                      _%tl179341179455%_)))
                                                (let ((_%hd179343179461%_
                                                       (##car _%e179342179458%_))
                                                      (_%tl179344179463%_
                                                       (##cdr _%e179342179458%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd179343179461%_)
                                                      (let ((_%e179348179466%_
                                                             (gx#syntax-e
                                                              _%hd179343179461%_)))
                                                        (let ((_%hd179349179469%_
                                                               (##car _%e179348179466%_))
                                                              (_%tl179350179471%_
                                                               (##cdr _%e179348179466%_)))
                                                          (let ((_%id179474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd179349179469%_))
                    (if (gx#stx-null? _%tl179350179471%_)
                        (if (gx#stx-pair? _%tl179344179463%_)
                            (let ((_%e179345179476%_
                                   (gx#syntax-e _%tl179344179463%_)))
                              (let ((_%hd179346179479%_
                                     (##car _%e179345179476%_))
                                    (_%tl179347179481%_
                                     (##cdr _%e179345179476%_)))
                                (let* ((_%expr179484%_ _%hd179346179479%_)
                                       (_%props179486%_ _%tl179347179481%_))
                                  (if (gx#identifier? _%id179474%_)
                                      (let ((_%bind179488%_
                                             (gx#core-bind-runtime!__0
                                              _%id179474%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind179488%_
                                         _%props179486%_)
                                        (_%K179333%_
                                         _%rest179334%_
                                         (cons _%hd179332%_ _%r179335%_)))
                                      (_%E179338179446%_)))))
                            (_%E179338179446%_))
                        (_%E179338179446%_)))))
              (_%E179338179446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E179338179446%_))
                                          (_%E179338179446%_))))
                                  (_%E179338179446%_)))))
                      (_%E179337179490%_))))
                 (_%wrap-internal179174%_
                  (lambda (_%rbody179176%_)
                    (let _%lp179178%_ ((_%rest179180%_ _%rbody179176%_)
                                       (_%decls179181%_ '())
                                       (_%bind179182%_ '())
                                       (_%body179183%_ '()))
                      (let* ((_%e179184179191%_ _%rest179180%_)
                             (_%E179186179240%_
                              (lambda ()
                                (let* ((_%body179235%_
                                        (let* ((_%body179194179204%_
                                                _%body179183%_)
                                               (_%else179197179212%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body179183%_)
                                                   (gx#stx-source
                                                    _%stx179168%_)))))
                                          (let ((_%K179202179232%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx179168%_)))
                                                (_%K179199179218%_
                                                 (lambda (_%expr179216%_)
                                                   _%expr179216%_)))
                                            (let ((_%try-match179196179228%_
                                                   (lambda ()
                                                     (if (pair? _%body179194179204%_)
                                                         (let ((_%tl179201179223%_
                                                                (##cdr _%body179194179204%_))
                                                               (_%hd179200179221%_
                                                                (##car _%body179194179204%_)))
                                                           (if (null? _%tl179201179223%_)
                                                               (let ((_%expr179226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd179200179221%_))
                         (_%K179199179218%_ _%expr179226%_))
                       (_%else179197179212%_)))
                 (_%else179197179212%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body179194179204%_)
                                                  (_%K179202179232%_)
                                                  (_%try-match179196179228%_))))))
                                       (_%body179237%_
                                        (if (null? _%bind179182%_)
                                            _%body179235%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind179182%_
                                                         (cons _%body179235%_
                                                               '())))
                                             (gx#stx-source _%stx179168%_)))))
                                  (if (null? _%decls179181%_)
                                      _%body179237%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls179181%_
                                                   (cons _%body179237%_ '())))
                                       (gx#stx-source _%stx179168%_))))))
                             (_%E179185179328%_
                              (lambda ()
                                (if (gx#stx-pair? _%e179184179191%_)
                                    (let ((_%e179187179244%_
                                           (gx#syntax-e _%e179184179191%_)))
                                      (let ((_%hd179188179247%_
                                             (##car _%e179187179244%_))
                                            (_%tl179189179249%_
                                             (##cdr _%e179187179244%_)))
                                        (let* ((_%hd179252%_
                                                _%hd179188179247%_)
                                               (_%rest179254%_
                                                _%tl179189179249%_)
                                               (_%e179255179272%_ _%hd179252%_)
                                               (_%E179267179276%_
                                                (lambda ()
                                                  (if (null? _%bind179182%_)
                                                      (_%lp179178%_
                                                       _%rest179254%_
                                                       _%decls179181%_
                                                       _%bind179182%_
                                                       (cons _%hd179252%_
                                                             _%body179183%_))
                                                      (_%lp179178%_
                                                       _%rest179254%_
                                                       _%decls179181%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd179252%_ '()))
                     _%bind179182%_)
               _%body179183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E179257179290%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e179255179272%_)
                                                      (let ((_%e179268179280%_
                                                             (gx#syntax-e
                                                              _%e179255179272%_)))
                                                        (let ((_%hd179269179283%_
                                                               (##car _%e179268179280%_))
                                                              (_%tl179270179285%_
                                                               (##cdr _%e179268179280%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd179269179283%_)
                           (gx#core-identifier=?
                            _%hd179269179283%_
                            '%#declare))
                      (let ((_%xdecls179288%_ _%tl179270179285%_))
                        (_%lp179178%_
                         _%rest179254%_
                         (gx#stx-foldr cons _%decls179181%_ _%xdecls179288%_)
                         _%bind179182%_
                         _%body179183%_))
                      (_%E179267179276%_))))
              (_%E179267179276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E179256179324%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e179255179272%_)
                                                      (let ((_%e179258179294%_
                                                             (gx#syntax-e
                                                              _%e179255179272%_)))
                                                        (let ((_%hd179259179297%_
                                                               (##car _%e179258179294%_))
                                                              (_%tl179260179299%_
                                                               (##cdr _%e179258179294%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd179259179297%_)
                           (gx#core-identifier=?
                            _%hd179259179297%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl179260179299%_)
                          (let ((_%e179261179302%_
                                 (gx#syntax-e _%tl179260179299%_)))
                            (let ((_%hd179262179305%_
                                   (##car _%e179261179302%_))
                                  (_%tl179263179307%_
                                   (##cdr _%e179261179302%_)))
                              (let ((_%hd-bind179310%_ _%hd179262179305%_))
                                (if (gx#stx-pair? _%tl179263179307%_)
                                    (let ((_%e179264179312%_
                                           (gx#syntax-e _%tl179263179307%_)))
                                      (let ((_%hd179265179315%_
                                             (##car _%e179264179312%_))
                                            (_%tl179266179317%_
                                             (##cdr _%e179264179312%_)))
                                        (let* ((_%expr179320%_
                                                _%hd179265179315%_)
                                               (_%ignore-props179322%_
                                                _%tl179266179317%_))
                                          (_%lp179178%_
                                           _%rest179254%_
                                           _%decls179181%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind179310%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr179320%_)
                                                             '()))
                                                 _%bind179182%_)
                                           _%body179183%_))))
                                    (_%E179257179290%_)))))
                          (_%E179257179290%_))
                      (_%E179257179290%_))))
              (_%E179257179290%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E179256179324%_))))
                                    (_%E179186179240%_)))))
                        (_%E179185179328%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body179169%_)
            (gx#stx-source _%stx179168%_))
           _%expand-special179171%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx179106%_)
        (let* ((_%e179107179114%_ _%stx179106%_)
               (_%E179109179118%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179107179114%_)))
               (_%E179108179164%_
                (lambda ()
                  (if (gx#stx-pair? _%e179107179114%_)
                      (let ((_%e179110179122%_
                             (gx#syntax-e _%e179107179114%_)))
                        (let ((_%hd179111179125%_ (##car _%e179110179122%_))
                              (_%tl179112179127%_ (##cdr _%e179110179122%_)))
                          (let ((_%body179130%_ _%tl179112179127%_))
                            (if (gx#stx-list? _%body179130%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl179132%_)
                                     (let* ((_%e179133179140%_ _%decl179132%_)
                                            (_%E179135179144%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e179133179140%_)))
                                            (_%E179134179160%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e179133179140%_)
                                                   (let ((_%e179136179148%_
                                                          (gx#syntax-e
                                                           _%e179133179140%_)))
                                                     (let ((_%hd179137179151%_
                                                            (##car _%e179136179148%_))
                                                           (_%tl179138179153%_
                                                            (##cdr _%e179136179148%_)))
                                                       (let* ((_%head179156%_
                                                               _%hd179137179151%_)
                                                              (_%args179158%_
                                                               _%tl179138179153%_))
                                                         (if (gx#stx-list?
                                                              _%args179158%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl179132%_)
                                                             (_%E179135179144%_)))))
                                                   (_%E179135179144%_)))))
                                       (_%E179134179160%_)))
                                   _%body179130%_))
                                 (gx#stx-source _%stx179106%_))
                                (_%E179109179118%_)))))
                      (_%E179109179118%_)))))
          (_%E179108179164%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx179010%_)
        (let* ((_%e179011179018%_ _%stx179010%_)
               (_%E179013179022%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e179011179018%_)))
               (_%E179012179102%_
                (lambda ()
                  (if (gx#stx-pair? _%e179011179018%_)
                      (let ((_%e179014179026%_
                             (gx#syntax-e _%e179011179018%_)))
                        (let ((_%hd179015179029%_ (##car _%e179014179026%_))
                              (_%tl179016179031%_ (##cdr _%e179014179026%_)))
                          (let ((_%body179034%_ _%tl179016179031%_))
                            (let _%lp179036%_ ((_%rest179038%_ _%body179034%_)
                                               (_%r179039%_ '()))
                              (let* ((_%e179040179054%_ _%rest179038%_)
                                     (_%E179052179058%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx179010%_)))
                                     (_%E179042179062%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e179040179054%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r179039%_))
                                             (gx#stx-source _%stx179010%_))
                                            (_%E179052179058%_))))
                                     (_%E179041179098%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e179040179054%_)
                                            (let ((_%e179043179066%_
                                                   (gx#syntax-e
                                                    _%e179040179054%_)))
                                              (let ((_%hd179044179069%_
                                                     (##car _%e179043179066%_))
                                                    (_%tl179045179071%_
                                                     (##cdr _%e179043179066%_)))
                                                (if (gx#stx-pair?
                                                     _%hd179044179069%_)
                                                    (let ((_%e179046179074%_
                                                           (gx#syntax-e
                                                            _%hd179044179069%_)))
                                                      (let ((_%hd179047179077%_
                                                             (##car _%e179046179074%_))
                                                            (_%tl179048179079%_
                                                             (##cdr _%e179046179074%_)))
                                                        (let ((_%id179082%_
                                                               _%hd179047179077%_))
                                                          (if (gx#stx-pair?
                                                               _%tl179048179079%_)
                                                              (let ((_%e179049179084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl179048179079%_)))
                        (let ((_%hd179050179087%_ (##car _%e179049179084%_))
                              (_%tl179051179089%_ (##cdr _%e179049179084%_)))
                          (let ((_%eid179092%_ _%hd179050179087%_))
                            (if (gx#stx-null? _%tl179051179089%_)
                                (let ((_%rest179094%_ _%tl179045179071%_))
                                  (if (and (gx#identifier? _%id179082%_)
                                           (gx#identifier? _%eid179092%_))
                                      (let ((_%eid179096%_
                                             (gx#stx-e _%eid179092%_)))
                                        (gx#core-bind-extern!__0
                                         _%id179082%_
                                         _%eid179096%_)
                                        (_%lp179036%_
                                         _%rest179094%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id179082%_)
                                                     (cons _%eid179096%_ '()))
                                               _%r179039%_)))
                                      (_%E179042179062%_)))
                                (_%E179042179062%_)))))
                      (_%E179042179062%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E179042179062%_))))
                                            (_%E179042179062%_)))))
                                (_%E179041179098%_))))))
                      (_%E179013179022%_)))))
          (_%E179012179102%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx178899%_)
        (let* ((_%e178900178926%_ _%stx178899%_)
               (_%E178915178930%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178900178926%_)))
               (_%E178902178962%_
                (lambda ()
                  (if (gx#stx-pair? _%e178900178926%_)
                      (let ((_%e178916178934%_
                             (gx#syntax-e _%e178900178926%_)))
                        (let ((_%hd178917178937%_ (##car _%e178916178934%_))
                              (_%tl178918178939%_ (##cdr _%e178916178934%_)))
                          (if (gx#stx-pair? _%tl178918178939%_)
                              (let ((_%e178919178942%_
                                     (gx#syntax-e _%tl178918178939%_)))
                                (let ((_%hd178920178945%_
                                       (##car _%e178919178942%_))
                                      (_%tl178921178947%_
                                       (##cdr _%e178919178942%_)))
                                  (let ((_%hd178950%_ _%hd178920178945%_))
                                    (if (gx#stx-pair? _%tl178921178947%_)
                                        (let ((_%e178922178952%_
                                               (gx#syntax-e
                                                _%tl178921178947%_)))
                                          (let ((_%hd178923178955%_
                                                 (##car _%e178922178952%_))
                                                (_%tl178924178957%_
                                                 (##cdr _%e178922178952%_)))
                                            (let ((_%expr178960%_
                                                   _%hd178923178955%_))
                                              (if (gx#stx-null?
                                                   _%tl178924178957%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd178950%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd178950%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd178950%_)
                             (cons (gx#core-expand-expression _%expr178960%_)
                                   '())))
                 (gx#stx-source _%stx178899%_)))
              (_%E178915178930%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E178915178930%_)))))
                                        (_%E178915178930%_)))))
                              (_%E178915178930%_))))
                      (_%E178915178930%_))))
               (_%E178901179006%_
                (lambda ()
                  (if (gx#stx-pair? _%e178900178926%_)
                      (let ((_%e178903178966%_
                             (gx#syntax-e _%e178900178926%_)))
                        (let ((_%hd178904178969%_ (##car _%e178903178966%_))
                              (_%tl178905178971%_ (##cdr _%e178903178966%_)))
                          (if (gx#stx-pair? _%tl178905178971%_)
                              (let ((_%e178906178974%_
                                     (gx#syntax-e _%tl178905178971%_)))
                                (let ((_%hd178907178977%_
                                       (##car _%e178906178974%_))
                                      (_%tl178908178979%_
                                       (##cdr _%e178906178974%_)))
                                  (if (gx#stx-pair? _%hd178907178977%_)
                                      (let ((_%e178912178982%_
                                             (gx#syntax-e _%hd178907178977%_)))
                                        (let ((_%hd178913178985%_
                                               (##car _%e178912178982%_))
                                              (_%tl178914178987%_
                                               (##cdr _%e178912178982%_)))
                                          (let ((_%id178990%_
                                                 _%hd178913178985%_))
                                            (if (gx#stx-null?
                                                 _%tl178914178987%_)
                                                (if (gx#stx-pair?
                                                     _%tl178908178979%_)
                                                    (let ((_%e178909178992%_
                                                           (gx#syntax-e
                                                            _%tl178908178979%_)))
                                                      (let ((_%hd178910178995%_
                                                             (##car _%e178909178992%_))
                                                            (_%tl178911178997%_
                                                             (##cdr _%e178909178992%_)))
                                                        (let* ((_%expr179000%_
                                                                _%hd178910178995%_)
                                                               (_%props179002%_
                                                                _%tl178911178997%_))
                                                          (if (gx#identifier?
                                                               _%id178990%_)
                                                              (let ((_%bind179004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id178990%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind179004%_
                         _%props179002%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id178990%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr179000%_)
                                           '())))
                         (gx#stx-source _%stx178899%_)))
                      (_%E178902178962%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E178902178962%_))
                                                (_%E178902178962%_)))))
                                      (_%E178902178962%_))))
                              (_%E178902178962%_))))
                      (_%E178902178962%_)))))
          (_%E178901179006%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx178838%_)
        (let* ((_%e178839178852%_ _%stx178838%_)
               (_%E178841178856%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178839178852%_)))
               (_%E178840178895%_
                (lambda ()
                  (if (gx#stx-pair? _%e178839178852%_)
                      (let ((_%e178842178860%_
                             (gx#syntax-e _%e178839178852%_)))
                        (let ((_%hd178843178863%_ (##car _%e178842178860%_))
                              (_%tl178844178865%_ (##cdr _%e178842178860%_)))
                          (if (gx#stx-pair? _%tl178844178865%_)
                              (let ((_%e178845178868%_
                                     (gx#syntax-e _%tl178844178865%_)))
                                (let ((_%hd178846178871%_
                                       (##car _%e178845178868%_))
                                      (_%tl178847178873%_
                                       (##cdr _%e178845178868%_)))
                                  (let ((_%id178876%_ _%hd178846178871%_))
                                    (if (gx#stx-pair? _%tl178847178873%_)
                                        (let ((_%e178848178878%_
                                               (gx#syntax-e
                                                _%tl178847178873%_)))
                                          (let ((_%hd178849178881%_
                                                 (##car _%e178848178878%_))
                                                (_%tl178850178883%_
                                                 (##cdr _%e178848178878%_)))
                                            (let* ((_%binding-id178886%_
                                                    _%hd178849178881%_)
                                                   (_%props178888%_
                                                    _%tl178850178883%_))
                                              (if (and (gx#identifier?
                                                        _%id178876%_)
                                                       (gx#identifier?
                                                        _%binding-id178886%_)
                                                       (gx#stx-list?
                                                        _%props178888%_))
                                                  (let* ((_%eid178890%_
                                                          (gx#stx-e
                                                           _%binding-id178886%_))
                                                         (_%bind178892%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id178876%_
                                                           _%eid178890%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind178892%_
                                                     _%props178888%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id178876%_)
                         (cons _%eid178890%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E178841178856%_)))))
                                        (_%E178841178856%_)))))
                              (_%E178841178856%_))))
                      (_%E178841178856%_)))))
          (_%E178840178895%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind178773%_ _%props178774%_)
        (letrec ((_%eval-prop178776%_
                  (lambda (_%prop178836%_)
                    (gx#eval-expression+1 _%prop178836%_))))
          (let _%loop178778%_ ((_%rest178780%_ _%props178774%_)
                               (_%props178781%_ '()))
            (let* ((_%e178782178793%_ _%rest178780%_)
                   (_%E178791178797%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e178782178793%_)))
                   (_%E178784178801%_
                    (lambda ()
                      (if (gx#stx-null? _%e178782178793%_)
                          (if (null? _%props178781%_)
                              '#!void
                              (##structure-set!
                               _%bind178773%_
                               (reverse! _%props178781%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E178791178797%_))))
                   (_%E178783178832%_
                    (lambda ()
                      (if (gx#stx-pair? _%e178782178793%_)
                          (let ((_%e178785178805%_
                                 (gx#syntax-e _%e178782178793%_)))
                            (let ((_%hd178786178808%_
                                   (##car _%e178785178805%_))
                                  (_%tl178787178810%_
                                   (##cdr _%e178785178805%_)))
                              (let ((_%key178813%_ _%hd178786178808%_))
                                (if (gx#stx-pair? _%tl178787178810%_)
                                    (let ((_%e178788178815%_
                                           (gx#syntax-e _%tl178787178810%_)))
                                      (let ((_%hd178789178818%_
                                             (##car _%e178788178815%_))
                                            (_%tl178790178820%_
                                             (##cdr _%e178788178815%_)))
                                        (let* ((_%prop178823%_
                                                _%hd178789178818%_)
                                               (_%rest178825%_
                                                _%tl178790178820%_))
                                          (if (gx#stx-keyword? _%key178813%_)
                                              (let* ((_%key178827%_
                                                      (gx#stx-e _%key178813%_))
                                                     (_%$e178829%_
                                                      _%key178827%_))
                                                (if (eq? 'macro: _%$e178829%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind178773%_
                                                       (if (gx#identifier?
                                                            _%prop178823%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop178823%_)
                                                           (gx#eval-expression+1
                                                            _%prop178823%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop178778%_
                                                       _%rest178825%_
                                                       _%props178781%_))
                                                    (if (eq? 'type:
                                                             _%$e178829%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind178773%_
                                                           (gx#eval-expression+1
                                                            _%prop178823%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop178778%_
                                                           _%rest178825%_
                                                           _%props178781%_))
                                                        (_%loop178778%_
                                                         _%rest178825%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop178823%_)
                                                               (cons _%key178827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props178781%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178784178801%_)))))
                                    (_%E178784178801%_)))))
                          (_%E178784178801%_)))))
              (_%E178783178832%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx178716%_)
        (let* ((_%e178717178730%_ _%stx178716%_)
               (_%E178719178734%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178717178730%_)))
               (_%E178718178769%_
                (lambda ()
                  (if (gx#stx-pair? _%e178717178730%_)
                      (let ((_%e178720178738%_
                             (gx#syntax-e _%e178717178730%_)))
                        (let ((_%hd178721178741%_ (##car _%e178720178738%_))
                              (_%tl178722178743%_ (##cdr _%e178720178738%_)))
                          (if (gx#stx-pair? _%tl178722178743%_)
                              (let ((_%e178723178746%_
                                     (gx#syntax-e _%tl178722178743%_)))
                                (let ((_%hd178724178749%_
                                       (##car _%e178723178746%_))
                                      (_%tl178725178751%_
                                       (##cdr _%e178723178746%_)))
                                  (let ((_%id178754%_ _%hd178724178749%_))
                                    (if (gx#stx-pair? _%tl178725178751%_)
                                        (let ((_%e178726178756%_
                                               (gx#syntax-e
                                                _%tl178725178751%_)))
                                          (let ((_%hd178727178759%_
                                                 (##car _%e178726178756%_))
                                                (_%tl178728178761%_
                                                 (##cdr _%e178726178756%_)))
                                            (let ((_%expr178764%_
                                                   _%hd178727178759%_))
                                              (if (gx#stx-null?
                                                   _%tl178728178761%_)
                                                  (if (gx#identifier?
                                                       _%id178754%_)
                                                      (let ((_g179930_
                                                             (gx#core-expand-expression+1
                                                              _%expr178764%_)))
                                                        (begin
                                                          (let ((_g179931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g179930_)
                             (##values-length _g179930_)
                             1)))
                    (if (not (##fx= _g179931_ 2))
                        (error "Context expects 2 values" _g179931_)))
                  (let ((_%e-stx178766%_ (##values-ref _g179930_ 0))
                        (_%e178767%_ (##values-ref _g179930_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id178754%_ _%e178767%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id178754%_)
                                   (cons _%e-stx178766%_ '())))
                       (gx#stx-source _%stx178716%_))))))
              (_%E178719178734%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E178719178734%_)))))
                                        (_%E178719178734%_)))))
                              (_%E178719178734%_))))
                      (_%E178719178734%_)))))
          (_%E178718178769%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx178660%_)
        (let* ((_%e178661178674%_ _%stx178660%_)
               (_%E178663178678%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178661178674%_)))
               (_%E178662178712%_
                (lambda ()
                  (if (gx#stx-pair? _%e178661178674%_)
                      (let ((_%e178664178682%_
                             (gx#syntax-e _%e178661178674%_)))
                        (let ((_%hd178665178685%_ (##car _%e178664178682%_))
                              (_%tl178666178687%_ (##cdr _%e178664178682%_)))
                          (if (gx#stx-pair? _%tl178666178687%_)
                              (let ((_%e178667178690%_
                                     (gx#syntax-e _%tl178666178687%_)))
                                (let ((_%hd178668178693%_
                                       (##car _%e178667178690%_))
                                      (_%tl178669178695%_
                                       (##cdr _%e178667178690%_)))
                                  (let ((_%id178698%_ _%hd178668178693%_))
                                    (if (gx#stx-pair? _%tl178669178695%_)
                                        (let ((_%e178670178700%_
                                               (gx#syntax-e
                                                _%tl178669178695%_)))
                                          (let ((_%hd178671178703%_
                                                 (##car _%e178670178700%_))
                                                (_%tl178672178705%_
                                                 (##cdr _%e178670178700%_)))
                                            (let ((_%alias-id178708%_
                                                   _%hd178671178703%_))
                                              (if (gx#stx-null?
                                                   _%tl178672178705%_)
                                                  (if (and (gx#identifier?
                                                            _%id178698%_)
                                                           (gx#identifier?
                                                            _%alias-id178708%_))
                                                      (let ((_%alias-id178710%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id178708%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id178698%_
                                                         _%alias-id178710%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id178698%_)
                             (cons _%alias-id178710%_ '())))))
              (_%E178663178678%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E178663178678%_)))))
                                        (_%E178663178678%_)))))
                              (_%E178663178678%_))))
                      (_%E178663178678%_)))))
          (_%E178662178712%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx178603%_ _%wrap?178604%_)
        (let* ((_%e178605178615%_ _%stx178603%_)
               (_%E178607178619%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178605178615%_)))
               (_%E178606178646%_
                (lambda ()
                  (if (gx#stx-pair? _%e178605178615%_)
                      (let ((_%e178608178623%_
                             (gx#syntax-e _%e178605178615%_)))
                        (let ((_%hd178609178626%_ (##car _%e178608178623%_))
                              (_%tl178610178628%_ (##cdr _%e178608178623%_)))
                          (if (gx#stx-pair? _%tl178610178628%_)
                              (let ((_%e178611178631%_
                                     (gx#syntax-e _%tl178610178628%_)))
                                (let ((_%hd178612178634%_
                                       (##car _%e178611178631%_))
                                      (_%tl178613178636%_
                                       (##cdr _%e178611178631%_)))
                                  (let* ((_%hd178639%_ _%hd178612178634%_)
                                         (_%body178641%_ _%tl178613178636%_))
                                    (if (gx#core-bind-values? _%hd178639%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd178639%_)
                                           (let ((_%body178644%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd178639%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx178603%_
                                                               _%body178641%_)
                                                              '()))))
                                             (if _%wrap?178604%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body178644%_)
                                                  (gx#stx-source
                                                   _%stx178603%_))
                                                 _%body178644%_)))
                                         gx#current-expander-context
                                         (let ((__obj179913
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj179913)
                                           __obj179913))
                                        (_%E178607178619%_)))))
                              (_%E178607178619%_))))
                      (_%E178607178619%_)))))
          (_%E178606178646%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx178653%_)
        (let ((_%wrap?178655%_ '#t))
          (gx#core-expand-lambda%__% _%stx178653%_ _%wrap?178655%_))))
    (define gx#core-expand-lambda%
      (lambda _g179932_
        (let ((_g179933_ (##length _g179932_)))
          (cond ((##fx= _g179933_ 1)
                 (apply gx#core-expand-lambda%__0 _g179932_))
                ((##fx= _g179933_ 2)
                 (apply gx#core-expand-lambda%__% _g179932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g179932_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx178567%_)
        (let* ((_%e178568178575%_ _%stx178567%_)
               (_%E178570178579%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178568178575%_)))
               (_%E178569178598%_
                (lambda ()
                  (if (gx#stx-pair? _%e178568178575%_)
                      (let ((_%e178571178583%_
                             (gx#syntax-e _%e178568178575%_)))
                        (let ((_%hd178572178586%_ (##car _%e178571178583%_))
                              (_%tl178573178588%_ (##cdr _%e178571178583%_)))
                          (let ((_%clauses178591%_ _%tl178573178588%_))
                            (if (gx#stx-list? _%clauses178591%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause178593%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause178593%_)
                                       (let ((_%$e178595%_
                                              (gx#stx-source
                                               _%clause178593%_)))
                                         (if _%$e178595%_
                                             _%$e178595%_
                                             (gx#stx-source _%stx178567%_))))
                                      '#f))
                                   _%clauses178591%_))
                                 (gx#stx-source _%stx178567%_))
                                (_%E178570178579%_)))))
                      (_%E178570178579%_)))))
          (_%E178569178598%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx178521%_)
        (let* ((_%e178522178532%_ _%stx178521%_)
               (_%E178524178536%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178522178532%_)))
               (_%E178523178563%_
                (lambda ()
                  (if (gx#stx-pair? _%e178522178532%_)
                      (let ((_%e178525178540%_
                             (gx#syntax-e _%e178522178532%_)))
                        (let ((_%hd178526178543%_ (##car _%e178525178540%_))
                              (_%tl178527178545%_ (##cdr _%e178525178540%_)))
                          (if (gx#stx-pair? _%tl178527178545%_)
                              (let ((_%e178528178548%_
                                     (gx#syntax-e _%tl178527178545%_)))
                                (let ((_%hd178529178551%_
                                       (##car _%e178528178548%_))
                                      (_%tl178530178553%_
                                       (##cdr _%e178528178548%_)))
                                  (let* ((_%hd178556%_ _%hd178529178551%_)
                                         (_%body178558%_ _%tl178530178553%_))
                                    (if (gx#core-expand-let-bind? _%hd178556%_)
                                        (let ((_%expressions178560%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd178556%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd178556%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd178556%_
                                                           _%expressions178560%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx178521%_
                         _%body178558%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx178521%_)))
                                           gx#current-expander-context
                                           (let ((__obj179914
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj179914)
                                             __obj179914)))
                                        (_%E178524178536%_)))))
                              (_%E178524178536%_))))
                      (_%E178524178536%_)))))
          (_%E178523178563%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx178466%_ _%form178467%_)
        (let* ((_%e178468178478%_ _%stx178466%_)
               (_%E178470178482%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178468178478%_)))
               (_%E178469178507%_
                (lambda ()
                  (if (gx#stx-pair? _%e178468178478%_)
                      (let ((_%e178471178486%_
                             (gx#syntax-e _%e178468178478%_)))
                        (let ((_%hd178472178489%_ (##car _%e178471178486%_))
                              (_%tl178473178491%_ (##cdr _%e178471178486%_)))
                          (if (gx#stx-pair? _%tl178473178491%_)
                              (let ((_%e178474178494%_
                                     (gx#syntax-e _%tl178473178491%_)))
                                (let ((_%hd178475178497%_
                                       (##car _%e178474178494%_))
                                      (_%tl178476178499%_
                                       (##cdr _%e178474178494%_)))
                                  (let* ((_%hd178502%_ _%hd178475178497%_)
                                         (_%body178504%_ _%tl178476178499%_))
                                    (if (gx#core-expand-let-bind? _%hd178502%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd178502%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form178467%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd178502%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd178502%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx178466%_
                                                               _%body178504%_)
                                                              '())))
                                            (gx#stx-source _%stx178466%_)))
                                         gx#current-expander-context
                                         (let ((__obj179915
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj179915)
                                           __obj179915))
                                        (_%E178470178482%_)))))
                              (_%E178470178482%_))))
                      (_%E178470178482%_)))))
          (_%E178469178507%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx178514%_)
        (let ((_%form178516%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx178514%_ _%form178516%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g179934_
        (let ((_g179935_ (##length _g179934_)))
          (cond ((##fx= _g179935_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g179934_))
                ((##fx= _g179935_ 2)
                 (apply gx#core-expand-letrec-values%__% _g179934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g179934_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx178463%_)
        (gx#core-expand-letrec-values%__% _%stx178463%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx178420%_)
        (if (gx#stx-list? _%stx178420%_)
            (gx#stx-andmap
             (lambda (_%bind178422%_)
               (let* ((_%e178423178433%_ _%bind178422%_)
                      (_%E178425178437%_ (lambda () '#f))
                      (_%E178424178459%_
                       (lambda ()
                         (if (gx#stx-pair? _%e178423178433%_)
                             (let ((_%e178426178441%_
                                    (gx#syntax-e _%e178423178433%_)))
                               (let ((_%hd178427178444%_
                                      (##car _%e178426178441%_))
                                     (_%tl178428178446%_
                                      (##cdr _%e178426178441%_)))
                                 (let ((_%hd178449%_ _%hd178427178444%_))
                                   (if (gx#stx-pair? _%tl178428178446%_)
                                       (let ((_%e178429178451%_
                                              (gx#syntax-e
                                               _%tl178428178446%_)))
                                         (let ((_%hd178430178454%_
                                                (##car _%e178429178451%_))
                                               (_%tl178431178456%_
                                                (##cdr _%e178429178451%_)))
                                           (if (gx#stx-null?
                                                _%tl178431178456%_)
                                               (gx#core-bind-values?
                                                _%hd178449%_)
                                               (_%E178425178437%_))))
                                       (_%E178425178437%_)))))
                             (_%E178425178437%_)))))
                 (_%E178424178459%_)))
             _%stx178420%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind178379%_)
        (let* ((_%e178380178390%_ _%bind178379%_)
               (_%E178382178394%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178380178390%_)))
               (_%E178381178416%_
                (lambda ()
                  (if (gx#stx-pair? _%e178380178390%_)
                      (let ((_%e178383178398%_
                             (gx#syntax-e _%e178380178390%_)))
                        (let ((_%hd178384178401%_ (##car _%e178383178398%_))
                              (_%tl178385178403%_ (##cdr _%e178383178398%_)))
                          (if (gx#stx-pair? _%tl178385178403%_)
                              (let ((_%e178386178406%_
                                     (gx#syntax-e _%tl178385178403%_)))
                                (let ((_%hd178387178409%_
                                       (##car _%e178386178406%_))
                                      (_%tl178388178411%_
                                       (##cdr _%e178386178406%_)))
                                  (let ((_%expr178414%_ _%hd178387178409%_))
                                    (if (gx#stx-null? _%tl178388178411%_)
                                        (gx#core-expand-expression
                                         _%expr178414%_)
                                        (_%E178382178394%_)))))
                              (_%E178382178394%_))))
                      (_%E178382178394%_)))))
          (_%E178381178416%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind178338%_)
        (let* ((_%e178339178349%_ _%bind178338%_)
               (_%E178341178353%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178339178349%_)))
               (_%E178340178375%_
                (lambda ()
                  (if (gx#stx-pair? _%e178339178349%_)
                      (let ((_%e178342178357%_
                             (gx#syntax-e _%e178339178349%_)))
                        (let ((_%hd178343178360%_ (##car _%e178342178357%_))
                              (_%tl178344178362%_ (##cdr _%e178342178357%_)))
                          (let ((_%hd178365%_ _%hd178343178360%_))
                            (if (gx#stx-pair? _%tl178344178362%_)
                                (let ((_%e178345178367%_
                                       (gx#syntax-e _%tl178344178362%_)))
                                  (let ((_%hd178346178370%_
                                         (##car _%e178345178367%_))
                                        (_%tl178347178372%_
                                         (##cdr _%e178345178367%_)))
                                    (if (gx#stx-null? _%tl178347178372%_)
                                        (gx#core-bind-values!__0 _%hd178365%_)
                                        (_%E178341178353%_))))
                                (_%E178341178353%_)))))
                      (_%E178341178353%_)))))
          (_%E178340178375%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind178296%_ _%expr178297%_)
        (let* ((_%e178298178308%_ _%bind178296%_)
               (_%E178300178312%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178298178308%_)))
               (_%E178299178334%_
                (lambda ()
                  (if (gx#stx-pair? _%e178298178308%_)
                      (let ((_%e178301178316%_
                             (gx#syntax-e _%e178298178308%_)))
                        (let ((_%hd178302178319%_ (##car _%e178301178316%_))
                              (_%tl178303178321%_ (##cdr _%e178301178316%_)))
                          (let ((_%hd178324%_ _%hd178302178319%_))
                            (if (gx#stx-pair? _%tl178303178321%_)
                                (let ((_%e178304178326%_
                                       (gx#syntax-e _%tl178303178321%_)))
                                  (let ((_%hd178305178329%_
                                         (##car _%e178304178326%_))
                                        (_%tl178306178331%_
                                         (##cdr _%e178304178326%_)))
                                    (if (gx#stx-null? _%tl178306178331%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd178324%_)
                                              (cons _%expr178297%_ '()))
                                        (_%E178300178312%_))))
                                (_%E178300178312%_)))))
                      (_%E178300178312%_)))))
          (_%E178299178334%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx178250%_)
        (let* ((_%e178251178261%_ _%stx178250%_)
               (_%E178253178265%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178251178261%_)))
               (_%E178252178292%_
                (lambda ()
                  (if (gx#stx-pair? _%e178251178261%_)
                      (let ((_%e178254178269%_
                             (gx#syntax-e _%e178251178261%_)))
                        (let ((_%hd178255178272%_ (##car _%e178254178269%_))
                              (_%tl178256178274%_ (##cdr _%e178254178269%_)))
                          (if (gx#stx-pair? _%tl178256178274%_)
                              (let ((_%e178257178277%_
                                     (gx#syntax-e _%tl178256178274%_)))
                                (let ((_%hd178258178280%_
                                       (##car _%e178257178277%_))
                                      (_%tl178259178282%_
                                       (##cdr _%e178257178277%_)))
                                  (let* ((_%hd178285%_ _%hd178258178280%_)
                                         (_%body178287%_ _%tl178259178282%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd178285%_)
                                        (let ((_%expanders178289%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd178285%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd178285%_
                                              _%expanders178289%_)
                                             (gx#core-expand-local-block
                                              _%stx178250%_
                                              _%body178287%_))
                                           gx#current-expander-context
                                           (let ((__obj179916
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj179916)
                                             __obj179916)))
                                        (_%E178253178265%_)))))
                              (_%E178253178265%_))))
                      (_%E178253178265%_)))))
          (_%E178252178292%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx178199%_)
        (let* ((_%e178200178210%_ _%stx178199%_)
               (_%E178202178214%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178200178210%_)))
               (_%E178201178246%_
                (lambda ()
                  (if (gx#stx-pair? _%e178200178210%_)
                      (let ((_%e178203178218%_
                             (gx#syntax-e _%e178200178210%_)))
                        (let ((_%hd178204178221%_ (##car _%e178203178218%_))
                              (_%tl178205178223%_ (##cdr _%e178203178218%_)))
                          (if (gx#stx-pair? _%tl178205178223%_)
                              (let ((_%e178206178226%_
                                     (gx#syntax-e _%tl178205178223%_)))
                                (let ((_%hd178207178229%_
                                       (##car _%e178206178226%_))
                                      (_%tl178208178231%_
                                       (##cdr _%e178206178226%_)))
                                  (let* ((_%hd178234%_ _%hd178207178229%_)
                                         (_%body178236%_ _%tl178208178231%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd178234%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd178234%_
                                            (make-list
                                             (gx#stx-length _%hd178234%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g178238178241%_
                                                     _%g178239178243%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g178238178241%_
                                               _%g178239178243%_
                                               '#t))
                                            _%hd178234%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd178234%_))
                                           (gx#core-expand-local-block
                                            _%stx178199%_
                                            _%body178236%_))
                                         gx#current-expander-context
                                         (let ((__obj179917
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj179917)
                                           __obj179917))
                                        (_%E178202178214%_)))))
                              (_%E178202178214%_))))
                      (_%E178202178214%_)))))
          (_%E178201178246%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx178156%_)
        (if (gx#stx-list? _%stx178156%_)
            (gx#stx-andmap
             (lambda (_%bind178158%_)
               (let* ((_%e178159178169%_ _%bind178158%_)
                      (_%E178161178173%_ (lambda () '#f))
                      (_%E178160178195%_
                       (lambda ()
                         (if (gx#stx-pair? _%e178159178169%_)
                             (let ((_%e178162178177%_
                                    (gx#syntax-e _%e178159178169%_)))
                               (let ((_%hd178163178180%_
                                      (##car _%e178162178177%_))
                                     (_%tl178164178182%_
                                      (##cdr _%e178162178177%_)))
                                 (let ((_%hd178185%_ _%hd178163178180%_))
                                   (if (gx#stx-pair? _%tl178164178182%_)
                                       (let ((_%e178165178187%_
                                              (gx#syntax-e
                                               _%tl178164178182%_)))
                                         (let ((_%hd178166178190%_
                                                (##car _%e178165178187%_))
                                               (_%tl178167178192%_
                                                (##cdr _%e178165178187%_)))
                                           (if (gx#stx-null?
                                                _%tl178167178192%_)
                                               (gx#identifier? _%hd178185%_)
                                               (_%E178161178173%_))))
                                       (_%E178161178173%_)))))
                             (_%E178161178173%_)))))
                 (_%E178160178195%_)))
             _%stx178156%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind178112%_)
        (let* ((_%e178113178123%_ _%bind178112%_)
               (_%E178115178127%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178113178123%_)))
               (_%E178114178152%_
                (lambda ()
                  (if (gx#stx-pair? _%e178113178123%_)
                      (let ((_%e178116178131%_
                             (gx#syntax-e _%e178113178123%_)))
                        (let ((_%hd178117178134%_ (##car _%e178116178131%_))
                              (_%tl178118178136%_ (##cdr _%e178116178131%_)))
                          (if (gx#stx-pair? _%tl178118178136%_)
                              (let ((_%e178119178139%_
                                     (gx#syntax-e _%tl178118178136%_)))
                                (let ((_%hd178120178142%_
                                       (##car _%e178119178139%_))
                                      (_%tl178121178144%_
                                       (##cdr _%e178119178139%_)))
                                  (let ((_%expr178147%_ _%hd178120178142%_))
                                    (if (gx#stx-null? _%tl178121178144%_)
                                        (let ((_g179936_
                                               (gx#core-expand-expression+1
                                                _%expr178147%_)))
                                          (begin
                                            (let ((_g179937_
                                                   (if (##values? _g179936_)
                                                       (##values-length
                                                        _g179936_)
                                                       1)))
                                              (if (not (##fx= _g179937_ 2))
                                                  (error "Context expects 2 values"
                                                         _g179937_)))
                                            (let ((_%_178149%_
                                                   (##values-ref _g179936_ 0))
                                                  (_%e178150%_
                                                   (##values-ref _g179936_ 1)))
                                              _%e178150%_)))
                                        (_%E178115178127%_)))))
                              (_%E178115178127%_))))
                      (_%E178115178127%_)))))
          (_%E178114178152%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind178057%_ _%e178058%_ _%rebind?178059%_)
        (let* ((_%e178060178070%_ _%bind178057%_)
               (_%E178062178074%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178060178070%_)))
               (_%E178061178096%_
                (lambda ()
                  (if (gx#stx-pair? _%e178060178070%_)
                      (let ((_%e178063178078%_
                             (gx#syntax-e _%e178060178070%_)))
                        (let ((_%hd178064178081%_ (##car _%e178063178078%_))
                              (_%tl178065178083%_ (##cdr _%e178063178078%_)))
                          (let ((_%id178086%_ _%hd178064178081%_))
                            (if (gx#stx-pair? _%tl178065178083%_)
                                (let ((_%e178066178088%_
                                       (gx#syntax-e _%tl178065178083%_)))
                                  (let ((_%hd178067178091%_
                                         (##car _%e178066178088%_))
                                        (_%tl178068178093%_
                                         (##cdr _%e178066178088%_)))
                                    (if (gx#stx-null? _%tl178068178093%_)
                                        (gx#core-bind-syntax!__1
                                         _%id178086%_
                                         _%e178058%_
                                         _%rebind?178059%_)
                                        (_%E178062178074%_))))
                                (_%E178062178074%_)))))
                      (_%E178062178074%_)))))
          (_%E178061178096%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind178103%_ _%e178104%_)
        (let ((_%rebind?178106%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind178103%_
           _%e178104%_
           _%rebind?178106%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g179938_
        (let ((_g179939_ (##length _g179938_)))
          (cond ((##fx= _g179939_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g179938_))
                ((##fx= _g179939_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g179938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g179938_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx178015%_)
        (let* ((_%e178016178026%_ _%stx178015%_)
               (_%E178018178030%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178016178026%_)))
               (_%E178017178052%_
                (lambda ()
                  (if (gx#stx-pair? _%e178016178026%_)
                      (let ((_%e178019178034%_
                             (gx#syntax-e _%e178016178026%_)))
                        (let ((_%hd178020178037%_ (##car _%e178019178034%_))
                              (_%tl178021178039%_ (##cdr _%e178019178034%_)))
                          (if (gx#stx-pair? _%tl178021178039%_)
                              (let ((_%e178022178042%_
                                     (gx#syntax-e _%tl178021178039%_)))
                                (let ((_%hd178023178045%_
                                       (##car _%e178022178042%_))
                                      (_%tl178024178047%_
                                       (##cdr _%e178022178042%_)))
                                  (let ((_%expr178050%_ _%hd178023178045%_))
                                    (if (gx#stx-null? _%tl178024178047%_)
                                        (gx#core-expand-expression
                                         _%expr178050%_)
                                        (_%E178018178030%_)))))
                              (_%E178018178030%_))))
                      (_%E178018178030%_)))))
          (_%E178017178052%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx177974%_)
        (let* ((_%e177975177985%_ _%stx177974%_)
               (_%E177977177989%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177975177985%_)))
               (_%E177976178011%_
                (lambda ()
                  (if (gx#stx-pair? _%e177975177985%_)
                      (let ((_%e177978177993%_
                             (gx#syntax-e _%e177975177985%_)))
                        (let ((_%hd177979177996%_ (##car _%e177978177993%_))
                              (_%tl177980177998%_ (##cdr _%e177978177993%_)))
                          (if (gx#stx-pair? _%tl177980177998%_)
                              (let ((_%e177981178001%_
                                     (gx#syntax-e _%tl177980177998%_)))
                                (let ((_%hd177982178004%_
                                       (##car _%e177981178001%_))
                                      (_%tl177983178006%_
                                       (##cdr _%e177981178001%_)))
                                  (let ((_%e178009%_ _%hd177982178004%_))
                                    (if (gx#stx-null? _%tl177983178006%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e178009%_)
                                                     '()))
                                         (gx#stx-source _%stx177974%_))
                                        (_%E177977177989%_)))))
                              (_%E177977177989%_))))
                      (_%E177977177989%_)))))
          (_%E177976178011%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx177933%_)
        (let* ((_%e177934177944%_ _%stx177933%_)
               (_%E177936177948%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177934177944%_)))
               (_%E177935177970%_
                (lambda ()
                  (if (gx#stx-pair? _%e177934177944%_)
                      (let ((_%e177937177952%_
                             (gx#syntax-e _%e177934177944%_)))
                        (let ((_%hd177938177955%_ (##car _%e177937177952%_))
                              (_%tl177939177957%_ (##cdr _%e177937177952%_)))
                          (if (gx#stx-pair? _%tl177939177957%_)
                              (let ((_%e177940177960%_
                                     (gx#syntax-e _%tl177939177957%_)))
                                (let ((_%hd177941177963%_
                                       (##car _%e177940177960%_))
                                      (_%tl177942177965%_
                                       (##cdr _%e177940177960%_)))
                                  (let ((_%e177968%_ _%hd177941177963%_))
                                    (if (gx#stx-null? _%tl177942177965%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e177968%_)
                                                     '()))
                                         (gx#stx-source _%stx177933%_))
                                        (_%E177936177948%_)))))
                              (_%E177936177948%_))))
                      (_%E177936177948%_)))))
          (_%E177935177970%_))))
    (define gx#core-expand-call%
      (lambda (_%stx177827%_)
        (letrec ((_%expand-runtime-call177829%_
                  (lambda (_%rator-expr177930%_ _%args177931%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr177930%_
                      (gx#stx-map1 gx#core-expand-expression _%args177931%_))
                     (gx#stx-source _%stx177827%_)))))
          (let* ((_%e177830177840%_ _%stx177827%_)
                 (_%E177832177844%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e177830177840%_)))
                 (_%E177831177926%_
                  (lambda ()
                    (if (gx#stx-pair? _%e177830177840%_)
                        (let ((_%e177833177848%_
                               (gx#syntax-e _%e177830177840%_)))
                          (let ((_%hd177834177851%_ (##car _%e177833177848%_))
                                (_%tl177835177853%_ (##cdr _%e177833177848%_)))
                            (if (gx#stx-pair? _%tl177835177853%_)
                                (let ((_%e177836177856%_
                                       (gx#syntax-e _%tl177835177853%_)))
                                  (let ((_%hd177837177859%_
                                         (##car _%e177836177856%_))
                                        (_%tl177838177861%_
                                         (##cdr _%e177836177856%_)))
                                    (let* ((_%rator177864%_ _%hd177837177859%_)
                                           (_%args177866%_ _%tl177838177861%_))
                                      (if (gx#stx-list? _%args177866%_)
                                          (let* ((_%rator-expr177868%_
                                                  (gx#core-expand-expression
                                                   _%rator177864%_))
                                                 (_%e177869177879%_
                                                  _%rator-expr177868%_)
                                                 (_%E177871177883%_
                                                  (lambda ()
                                                    (_%expand-runtime-call177829%_
                                                     _%rator-expr177868%_
                                                     _%args177866%_)))
                                                 (_%E177870177922%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e177869177879%_)
                                                        (let ((_%e177872177887%_
                                                               (gx#syntax-e
                                                                _%e177869177879%_)))
                                                          (let ((_%hd177873177890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e177872177887%_))
                        (_%tl177874177892%_ (##cdr _%e177872177887%_)))
                    (if (and (gx#identifier? _%hd177873177890%_)
                             (gx#core-identifier=? _%hd177873177890%_ '%#ref))
                        (if (gx#stx-pair? _%tl177874177892%_)
                            (let ((_%e177875177895%_
                                   (gx#syntax-e _%tl177874177892%_)))
                              (let ((_%hd177876177898%_
                                     (##car _%e177875177895%_))
                                    (_%tl177877177900%_
                                     (##cdr _%e177875177895%_)))
                                (let ((_%id177903%_ _%hd177876177898%_))
                                  (if (gx#stx-null? _%tl177877177900%_)
                                      (let ((_%$e177905%_
                                             (gx#resolve-identifier__0
                                              _%id177903%_)))
                                        (if _%$e177905%_
                                            ((lambda (_%bind177908%_)
                                               (let _%again177910%_ ((_%bind177912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind177908%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e177914%_
                                                        (if (##structure-instance-of?
                                                             _%bind177912%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind177912%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e177914%_
                                                       ((lambda (_%macro177917%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro177917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args177866%_)
                    (gx#stx-source _%stx177827%_))))
                _%$e177914%_)
               (if (##structure-direct-instance-of?
                    _%bind177912%_
                    'gx#import-binding::t)
                   (_%again177910%_
                    (##unchecked-structure-ref _%bind177912%_ '5 '#f '#f))
                   (_%expand-runtime-call177829%_
                    _%rator-expr177868%_
                    _%args177866%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e177905%_)
                                            (_%expand-runtime-call177829%_
                                             _%rator-expr177868%_
                                             _%args177866%_)))
                                      (_%E177871177883%_)))))
                            (_%E177871177883%_))
                        (_%E177871177883%_))))
                (_%E177871177883%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E177870177922%_))
                                          (_%E177832177844%_)))))
                                (_%E177832177844%_))))
                        (_%E177832177844%_)))))
            (_%E177831177926%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx177760%_)
        (let* ((_%e177761177777%_ _%stx177760%_)
               (_%E177763177781%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177761177777%_)))
               (_%E177762177823%_
                (lambda ()
                  (if (gx#stx-pair? _%e177761177777%_)
                      (let ((_%e177764177785%_
                             (gx#syntax-e _%e177761177777%_)))
                        (let ((_%hd177765177788%_ (##car _%e177764177785%_))
                              (_%tl177766177790%_ (##cdr _%e177764177785%_)))
                          (if (gx#stx-pair? _%tl177766177790%_)
                              (let ((_%e177767177793%_
                                     (gx#syntax-e _%tl177766177790%_)))
                                (let ((_%hd177768177796%_
                                       (##car _%e177767177793%_))
                                      (_%tl177769177798%_
                                       (##cdr _%e177767177793%_)))
                                  (let ((_%test177801%_ _%hd177768177796%_))
                                    (if (gx#stx-pair? _%tl177769177798%_)
                                        (let ((_%e177770177803%_
                                               (gx#syntax-e
                                                _%tl177769177798%_)))
                                          (let ((_%hd177771177806%_
                                                 (##car _%e177770177803%_))
                                                (_%tl177772177808%_
                                                 (##cdr _%e177770177803%_)))
                                            (let ((_%K177811%_
                                                   _%hd177771177806%_))
                                              (if (gx#stx-pair?
                                                   _%tl177772177808%_)
                                                  (let ((_%e177773177813%_
                                                         (gx#syntax-e
                                                          _%tl177772177808%_)))
                                                    (let ((_%hd177774177816%_
                                                           (##car _%e177773177813%_))
                                                          (_%tl177775177818%_
                                                           (##cdr _%e177773177813%_)))
                                                      (let ((_%E177821%_
                                                             _%hd177774177816%_))
                                                        (if (gx#stx-null?
                                                             _%tl177775177818%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test177801%_)
                                 (cons (gx#core-expand-expression _%K177811%_)
                                       (cons (gx#core-expand-expression
                                              _%E177821%_)
                                             '()))))
                     (gx#stx-source _%stx177760%_))
                    (_%E177763177781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177763177781%_)))))
                                        (_%E177763177781%_)))))
                              (_%E177763177781%_))))
                      (_%E177763177781%_)))))
          (_%E177762177823%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx177719%_)
        (let* ((_%e177720177730%_ _%stx177719%_)
               (_%E177722177734%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177720177730%_)))
               (_%E177721177756%_
                (lambda ()
                  (if (gx#stx-pair? _%e177720177730%_)
                      (let ((_%e177723177738%_
                             (gx#syntax-e _%e177720177730%_)))
                        (let ((_%hd177724177741%_ (##car _%e177723177738%_))
                              (_%tl177725177743%_ (##cdr _%e177723177738%_)))
                          (if (gx#stx-pair? _%tl177725177743%_)
                              (let ((_%e177726177746%_
                                     (gx#syntax-e _%tl177725177743%_)))
                                (let ((_%hd177727177749%_
                                       (##car _%e177726177746%_))
                                      (_%tl177728177751%_
                                       (##cdr _%e177726177746%_)))
                                  (let ((_%id177754%_ _%hd177727177749%_))
                                    (if (gx#stx-null? _%tl177728177751%_)
                                        (if (gx#identifier? _%id177754%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id177754%_
                                                          _%stx177719%_)
                                                         '()))
                                             (gx#stx-source _%stx177719%_))
                                            (_%E177722177734%_))
                                        (_%E177722177734%_)))))
                              (_%E177722177734%_))))
                      (_%E177722177734%_)))))
          (_%E177721177756%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx177665%_)
        (let* ((_%e177666177679%_ _%stx177665%_)
               (_%E177668177683%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177666177679%_)))
               (_%E177667177715%_
                (lambda ()
                  (if (gx#stx-pair? _%e177666177679%_)
                      (let ((_%e177669177687%_
                             (gx#syntax-e _%e177666177679%_)))
                        (let ((_%hd177670177690%_ (##car _%e177669177687%_))
                              (_%tl177671177692%_ (##cdr _%e177669177687%_)))
                          (if (gx#stx-pair? _%tl177671177692%_)
                              (let ((_%e177672177695%_
                                     (gx#syntax-e _%tl177671177692%_)))
                                (let ((_%hd177673177698%_
                                       (##car _%e177672177695%_))
                                      (_%tl177674177700%_
                                       (##cdr _%e177672177695%_)))
                                  (let ((_%id177703%_ _%hd177673177698%_))
                                    (if (gx#stx-pair? _%tl177674177700%_)
                                        (let ((_%e177675177705%_
                                               (gx#syntax-e
                                                _%tl177674177700%_)))
                                          (let ((_%hd177676177708%_
                                                 (##car _%e177675177705%_))
                                                (_%tl177677177710%_
                                                 (##cdr _%e177675177705%_)))
                                            (let ((_%expr177713%_
                                                   _%hd177676177708%_))
                                              (if (gx#stx-null?
                                                   _%tl177677177710%_)
                                                  (if (gx#identifier?
                                                       _%id177703%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id177703%_
                            _%stx177665%_)
                           (cons (gx#core-expand-expression _%expr177713%_)
                                 '())))
               (gx#stx-source _%stx177665%_))
              (_%E177668177683%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177668177683%_)))))
                                        (_%E177668177683%_)))))
                              (_%E177668177683%_))))
                      (_%E177668177683%_)))))
          (_%E177667177715%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx177510%_)
        (letrec ((_%generate177512%_
                  (lambda (_%body177542%_)
                    (let _%lp177544%_ ((_%rest177546%_ _%body177542%_)
                                       (_%ns177547%_
                                        (gx#core-context-namespace__0))
                                       (_%r177548%_ '()))
                      (let* ((_%e177549177564%_ _%rest177546%_)
                             (_%E177562177568%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e177549177564%_)))
                             (_%E177558177572%_
                              (lambda ()
                                (if (gx#stx-null? _%e177549177564%_)
                                    (reverse _%r177548%_)
                                    (_%E177562177568%_))))
                             (_%E177551177629%_
                              (lambda ()
                                (if (gx#stx-pair? _%e177549177564%_)
                                    (let ((_%e177559177576%_
                                           (gx#syntax-e _%e177549177564%_)))
                                      (let ((_%hd177560177579%_
                                             (##car _%e177559177576%_))
                                            (_%tl177561177581%_
                                             (##cdr _%e177559177576%_)))
                                        (let* ((_%hd177584%_
                                                _%hd177560177579%_)
                                               (_%rest177586%_
                                                _%tl177561177581%_))
                                          (if (gx#identifier? _%hd177584%_)
                                              (_%lp177544%_
                                               _%rest177586%_
                                               _%ns177547%_
                                               (cons (cons _%hd177584%_
                                                           (cons (if _%ns177547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd177584%_
                              _%ns177547%_
                              '"#"
                              _%hd177584%_)
                             _%hd177584%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r177548%_))
                                              (let* ((_%e177587177597%_
                                                      _%hd177584%_)
                                                     (_%E177589177601%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e177587177597%_)))
                                                     (_%E177588177625%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e177587177597%_)
                                                            (let ((_%e177590177605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e177587177597%_)))
                      (let ((_%hd177591177608%_ (##car _%e177590177605%_))
                            (_%tl177592177610%_ (##cdr _%e177590177605%_)))
                        (let ((_%id177613%_ _%hd177591177608%_))
                          (if (gx#stx-pair? _%tl177592177610%_)
                              (let ((_%e177593177615%_
                                     (gx#syntax-e _%tl177592177610%_)))
                                (let ((_%hd177594177618%_
                                       (##car _%e177593177615%_))
                                      (_%tl177595177620%_
                                       (##cdr _%e177593177615%_)))
                                  (let ((_%eid177623%_ _%hd177594177618%_))
                                    (if (gx#stx-null? _%tl177595177620%_)
                                        (if (and (gx#identifier? _%id177613%_)
                                                 (gx#identifier?
                                                  _%eid177623%_))
                                            (_%lp177544%_
                                             _%rest177586%_
                                             _%ns177547%_
                                             (cons (cons _%id177613%_
                                                         (cons _%eid177623%_
                                                               '()))
                                                   _%r177548%_))
                                            (_%E177589177601%_))
                                        (_%E177589177601%_)))))
                              (_%E177589177601%_)))))
                    (_%E177589177601%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E177588177625%_))))))
                                    (_%E177558177572%_))))
                             (_%E177550177661%_
                              (lambda ()
                                (if (gx#stx-pair? _%e177549177564%_)
                                    (let ((_%e177552177633%_
                                           (gx#syntax-e _%e177549177564%_)))
                                      (let ((_%hd177553177636%_
                                             (##car _%e177552177633%_))
                                            (_%tl177554177638%_
                                             (##cdr _%e177552177633%_)))
                                        (if (eq? (gx#stx-e _%hd177553177636%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl177554177638%_)
                                                (let ((_%e177555177641%_
                                                       (gx#syntax-e
                                                        _%tl177554177638%_)))
                                                  (let ((_%hd177556177644%_
                                                         (##car _%e177555177641%_))
                                                        (_%tl177557177646%_
                                                         (##cdr _%e177555177641%_)))
                                                    (let* ((_%ns177649%_
                                                            _%hd177556177644%_)
                                                           (_%rest177651%_
                                                            _%tl177557177646%_)
                                                           (_%ns177659%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns177649%_)
                        (symbol->string (gx#stx-e _%ns177649%_))
                        (if (or (gx#stx-string? _%ns177649%_)
                                (gx#stx-false? _%ns177649%_))
                            (gx#stx-e _%ns177649%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx177510%_
                             _%ns177649%_)))))
              (_%lp177544%_ _%rest177651%_ _%ns177659%_ _%r177548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E177551177629%_))
                                            (_%E177551177629%_))))
                                    (_%E177551177629%_)))))
                        (_%E177550177661%_))))))
          (let* ((_%e177513177520%_ _%stx177510%_)
                 (_%E177515177524%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e177513177520%_)))
                 (_%E177514177538%_
                  (lambda ()
                    (if (gx#stx-pair? _%e177513177520%_)
                        (let ((_%e177516177528%_
                               (gx#syntax-e _%e177513177520%_)))
                          (let ((_%hd177517177531%_ (##car _%e177516177528%_))
                                (_%tl177518177533%_ (##cdr _%e177516177528%_)))
                            (let ((_%body177536%_ _%tl177518177533%_))
                              (if (gx#stx-list? _%body177536%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate177512%_ _%body177536%_))
                                  (_%E177515177524%_)))))
                        (_%E177515177524%_)))))
            (_%E177514177538%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx177467%_)
        (let* ((_%e177468177478%_ _%stx177467%_)
               (_%E177470177482%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177468177478%_)))
               (_%E177469177506%_
                (lambda ()
                  (if (gx#stx-pair? _%e177468177478%_)
                      (let ((_%e177471177486%_
                             (gx#syntax-e _%e177468177478%_)))
                        (let ((_%hd177472177489%_ (##car _%e177471177486%_))
                              (_%tl177473177491%_ (##cdr _%e177471177486%_)))
                          (if (gx#stx-pair? _%tl177473177491%_)
                              (let ((_%e177474177494%_
                                     (gx#syntax-e _%tl177473177491%_)))
                                (let ((_%hd177475177497%_
                                       (##car _%e177474177494%_))
                                      (_%tl177476177499%_
                                       (##cdr _%e177474177494%_)))
                                  (let* ((_%hd177502%_ _%hd177475177497%_)
                                         (_%body177504%_ _%tl177476177499%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd177502%_)
                                             (gx#stx-list? _%body177504%_)
                                             (not (gx#stx-null?
                                                   _%body177504%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd177502%_)
                                         _%body177504%_)
                                        (_%E177470177482%_)))))
                              (_%E177470177482%_))))
                      (_%E177470177482%_)))))
          (_%E177469177506%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx177403%_)
        (letrec ((_%generate177405%_
                  (lambda (_%clause177435%_)
                    (let* ((_%e177436177443%_ _%clause177435%_)
                           (_%E177438177447%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx177403%_
                               _%clause177435%_)))
                           (_%E177437177463%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177436177443%_)
                                  (let ((_%e177439177451%_
                                         (gx#syntax-e _%e177436177443%_)))
                                    (let ((_%hd177440177454%_
                                           (##car _%e177439177451%_))
                                          (_%tl177441177456%_
                                           (##cdr _%e177439177451%_)))
                                      (let* ((_%hd177459%_ _%hd177440177454%_)
                                             (_%body177461%_
                                              _%tl177441177456%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd177459%_)
                                                 (gx#stx-list? _%body177461%_)
                                                 (not (gx#stx-null?
                                                       _%body177461%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd177459%_)
                                                   _%body177461%_)
                                             (gx#stx-source _%clause177435%_))
                                            (_%E177438177447%_)))))
                                  (_%E177438177447%_)))))
                      (_%E177437177463%_)))))
          (let* ((_%e177406177413%_ _%stx177403%_)
                 (_%E177408177417%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e177406177413%_)))
                 (_%E177407177431%_
                  (lambda ()
                    (if (gx#stx-pair? _%e177406177413%_)
                        (let ((_%e177409177421%_
                               (gx#syntax-e _%e177406177413%_)))
                          (let ((_%hd177410177424%_ (##car _%e177409177421%_))
                                (_%tl177411177426%_ (##cdr _%e177409177421%_)))
                            (let ((_%clauses177429%_ _%tl177411177426%_))
                              (if (gx#stx-list? _%clauses177429%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate177405%_
                                    _%clauses177429%_))
                                  (_%E177408177417%_)))))
                        (_%E177408177417%_)))))
            (_%E177407177431%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx177304%_ _%form177305%_)
        (letrec ((_%generate177307%_
                  (lambda (_%bind177350%_)
                    (let* ((_%e177351177361%_ _%bind177350%_)
                           (_%E177353177365%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx177304%_
                               _%bind177350%_)))
                           (_%E177352177389%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177351177361%_)
                                  (let ((_%e177354177369%_
                                         (gx#syntax-e _%e177351177361%_)))
                                    (let ((_%hd177355177372%_
                                           (##car _%e177354177369%_))
                                          (_%tl177356177374%_
                                           (##cdr _%e177354177369%_)))
                                      (let ((_%ids177377%_ _%hd177355177372%_))
                                        (if (gx#stx-pair? _%tl177356177374%_)
                                            (let ((_%e177357177379%_
                                                   (gx#syntax-e
                                                    _%tl177356177374%_)))
                                              (let ((_%hd177358177382%_
                                                     (##car _%e177357177379%_))
                                                    (_%tl177359177384%_
                                                     (##cdr _%e177357177379%_)))
                                                (let ((_%expr177387%_
                                                       _%hd177358177382%_))
                                                  (if (gx#stx-null?
                                                       _%tl177359177384%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids177377%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids177377%_)
                        (cons _%expr177387%_ '()))
                  (_%E177353177365%_))
              (_%E177353177365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E177353177365%_)))))
                                  (_%E177353177365%_)))))
                      (_%E177352177389%_)))))
          (let* ((_%e177308177318%_ _%stx177304%_)
                 (_%E177310177322%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e177308177318%_)))
                 (_%E177309177346%_
                  (lambda ()
                    (if (gx#stx-pair? _%e177308177318%_)
                        (let ((_%e177311177326%_
                               (gx#syntax-e _%e177308177318%_)))
                          (let ((_%hd177312177329%_ (##car _%e177311177326%_))
                                (_%tl177313177331%_ (##cdr _%e177311177326%_)))
                            (if (gx#stx-pair? _%tl177313177331%_)
                                (let ((_%e177314177334%_
                                       (gx#syntax-e _%tl177313177331%_)))
                                  (let ((_%hd177315177337%_
                                         (##car _%e177314177334%_))
                                        (_%tl177316177339%_
                                         (##cdr _%e177314177334%_)))
                                    (let* ((_%hd177342%_ _%hd177315177337%_)
                                           (_%body177344%_ _%tl177316177339%_))
                                      (if (and (gx#stx-list? _%hd177342%_)
                                               (gx#stx-list? _%body177344%_)
                                               (not (gx#stx-null?
                                                     _%body177344%_)))
                                          (gx#core-cons*
                                           _%form177305%_
                                           (gx#stx-map1
                                            _%generate177307%_
                                            _%hd177342%_)
                                           _%body177344%_)
                                          (_%E177310177322%_)))))
                                (_%E177310177322%_))))
                        (_%E177310177322%_)))))
            (_%E177309177346%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx177396%_)
        (let ((_%form177398%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx177396%_ _%form177398%_))))
    (define gx#macro-expand-let-values
      (lambda _g179940_
        (let ((_g179941_ (##length _g179940_)))
          (cond ((##fx= _g179941_ 1)
                 (apply gx#macro-expand-let-values__0 _g179940_))
                ((##fx= _g179941_ 2)
                 (apply gx#macro-expand-let-values__% _g179940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g179940_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx177301%_)
        (gx#macro-expand-let-values__% _%stx177301%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx177299%_)
        (gx#macro-expand-let-values__% _%stx177299%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx177190%_)
        (let* ((_%e177191177217%_ _%stx177190%_)
               (_%E177203177221%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177191177217%_)))
               (_%E177193177263%_
                (lambda ()
                  (if (gx#stx-pair? _%e177191177217%_)
                      (let ((_%e177204177225%_
                             (gx#syntax-e _%e177191177217%_)))
                        (let ((_%hd177205177228%_ (##car _%e177204177225%_))
                              (_%tl177206177230%_ (##cdr _%e177204177225%_)))
                          (if (gx#stx-pair? _%tl177206177230%_)
                              (let ((_%e177207177233%_
                                     (gx#syntax-e _%tl177206177230%_)))
                                (let ((_%hd177208177236%_
                                       (##car _%e177207177233%_))
                                      (_%tl177209177238%_
                                       (##cdr _%e177207177233%_)))
                                  (let ((_%test177241%_ _%hd177208177236%_))
                                    (if (gx#stx-pair? _%tl177209177238%_)
                                        (let ((_%e177210177243%_
                                               (gx#syntax-e
                                                _%tl177209177238%_)))
                                          (let ((_%hd177211177246%_
                                                 (##car _%e177210177243%_))
                                                (_%tl177212177248%_
                                                 (##cdr _%e177210177243%_)))
                                            (let ((_%K177251%_
                                                   _%hd177211177246%_))
                                              (if (gx#stx-pair?
                                                   _%tl177212177248%_)
                                                  (let ((_%e177213177253%_
                                                         (gx#syntax-e
                                                          _%tl177212177248%_)))
                                                    (let ((_%hd177214177256%_
                                                           (##car _%e177213177253%_))
                                                          (_%tl177215177258%_
                                                           (##cdr _%e177213177253%_)))
                                                      (let ((_%E177261%_
                                                             _%hd177214177256%_))
                                                        (if (gx#stx-null?
                                                             _%tl177215177258%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test177241%_
                                                             _%K177251%_
                                                             _%E177261%_)
                                                            (_%E177203177221%_)))))
                                                  (_%E177203177221%_)))))
                                        (_%E177203177221%_)))))
                              (_%E177203177221%_))))
                      (_%E177203177221%_))))
               (_%E177192177295%_
                (lambda ()
                  (if (gx#stx-pair? _%e177191177217%_)
                      (let ((_%e177194177267%_
                             (gx#syntax-e _%e177191177217%_)))
                        (let ((_%hd177195177270%_ (##car _%e177194177267%_))
                              (_%tl177196177272%_ (##cdr _%e177194177267%_)))
                          (if (gx#stx-pair? _%tl177196177272%_)
                              (let ((_%e177197177275%_
                                     (gx#syntax-e _%tl177196177272%_)))
                                (let ((_%hd177198177278%_
                                       (##car _%e177197177275%_))
                                      (_%tl177199177280%_
                                       (##cdr _%e177197177275%_)))
                                  (let ((_%test177283%_ _%hd177198177278%_))
                                    (if (gx#stx-pair? _%tl177199177280%_)
                                        (let ((_%e177200177285%_
                                               (gx#syntax-e
                                                _%tl177199177280%_)))
                                          (let ((_%hd177201177288%_
                                                 (##car _%e177200177285%_))
                                                (_%tl177202177290%_
                                                 (##cdr _%e177200177285%_)))
                                            (let ((_%K177293%_
                                                   _%hd177201177288%_))
                                              (if (gx#stx-null?
                                                   _%tl177202177290%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test177283%_
                                                   _%K177293%_
                                                   '#!void)
                                                  (_%E177193177263%_)))))
                                        (_%E177193177263%_)))))
                              (_%E177193177263%_))))
                      (_%E177193177263%_)))))
          (_%E177192177295%_))))
    (define gx#free-identifier=?
      (lambda (_%xid177175%_ _%yid177176%_)
        (let ((_%xe177178%_ (gx#resolve-identifier__0 _%xid177175%_))
              (_%ye177179%_ (gx#resolve-identifier__0 _%yid177176%_)))
          (if (and _%xe177178%_ _%ye177179%_)
              (let ((_%$e177182%_ (eq? _%xe177178%_ _%ye177179%_)))
                (if _%$e177182%_
                    _%$e177182%_
                    (if (##structure-instance-of? _%xe177178%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye177179%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe177178%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye177179%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe177178%_ _%ye177179%_)
                  '#f
                  (gx#stx-eq? _%xid177175%_ _%yid177176%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid177156%_ _%yid177157%_)
        (letrec ((_%context177159%_
                  (lambda (_%e177173%_)
                    (if (##structure-direct-instance-of?
                         _%e177173%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e177173%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks177160%_
                  (lambda (_%e177168%_)
                    (if (symbol? _%e177168%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e177168%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e177168%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e177168%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap177161%_
                  (lambda (_%e177166%_)
                    (if (symbol? _%e177166%_)
                        _%e177166%_
                        (gx#syntax-local-unwrap _%e177166%_)))))
          (let ((_%x177163%_ (_%unwrap177161%_ _%xid177156%_))
                (_%y177164%_ (_%unwrap177161%_ _%yid177157%_)))
            (if (gx#stx-eq? _%x177163%_ _%y177164%_)
                (if (eq? (_%context177159%_ _%x177163%_)
                         (_%context177159%_ _%y177164%_))
                    (equal? (_%marks177160%_ _%x177163%_)
                            (_%marks177160%_ _%y177164%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx177154%_)
        (if (gx#identifier? _%stx177154%_)
            (gx#core-identifier=? _%stx177154%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx177152%_)
        (if (gx#identifier? _%stx177152%_)
            (gx#core-identifier=? _%stx177152%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx177095%_ _%where177096%_)
        (let _%lp177098%_ ((_%rest177100%_ (gx#syntax->list _%stx177095%_)))
          (let* ((_%rest177101177109%_ _%rest177100%_)
                 (_%else177103177117%_ (lambda () '#t))
                 (_%K177105177130%_
                  (lambda (_%rest177120%_ _%hd177121%_)
                    (if (gx#identifier? _%hd177121%_)
                        (if (__find (lambda (_%g177123177125%_)
                                      (gx#bound-identifier=?
                                       _%g177123177125%_
                                       _%hd177121%_))
                                    _%rest177120%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where177096%_
                             _%hd177121%_)
                            (_%lp177098%_ _%rest177120%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where177096%_
                         _%hd177121%_)))))
            (if (pair? _%rest177101177109%_)
                (let ((_%hd177106177133%_ (##car _%rest177101177109%_))
                      (_%tl177107177135%_ (##cdr _%rest177101177109%_)))
                  (let* ((_%hd177138%_ _%hd177106177133%_)
                         (_%rest177140%_ _%tl177107177135%_))
                    (_%K177105177130%_ _%rest177140%_ _%hd177138%_)))
                (_%else177103177117%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx177145%_)
        (let ((_%where177147%_ _%stx177145%_))
          (gx#check-duplicate-identifiers__% _%stx177145%_ _%where177147%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g179942_
        (let ((_g179943_ (##length _g179942_)))
          (cond ((##fx= _g179943_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g179942_))
                ((##fx= _g179943_ 2)
                 (apply gx#check-duplicate-identifiers__% _g179942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g179942_))))))
    (define gx#core-bind-values?
      (lambda (_%stx177087%_)
        (gx#stx-andmap
         (lambda (_%x177089%_)
           (let ((_%$e177091%_ (gx#identifier? _%x177089%_)))
             (if _%$e177091%_ _%$e177091%_ (gx#stx-false? _%x177089%_))))
         _%stx177087%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx177051%_ _%rebind?177052%_ _%phi177053%_ _%ctx177054%_)
        (gx#stx-for-each1
         (lambda (_%id177056%_)
           (if (gx#identifier? _%id177056%_)
               (gx#core-bind-runtime!__%
                _%id177056%_
                _%rebind?177052%_
                _%phi177053%_
                _%ctx177054%_)
               '#!void))
         _%stx177051%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx177061%_)
        (let* ((_%rebind?177063%_ '#f)
               (_%phi177065%_ (gx#current-expander-phi))
               (_%ctx177067%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx177061%_
           _%rebind?177063%_
           _%phi177065%_
           _%ctx177067%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx177069%_ _%rebind?177070%_)
        (let* ((_%phi177072%_ (gx#current-expander-phi))
               (_%ctx177074%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx177069%_
           _%rebind?177070%_
           _%phi177072%_
           _%ctx177074%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx177076%_ _%rebind?177077%_ _%phi177078%_)
        (let ((_%ctx177080%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx177076%_
           _%rebind?177077%_
           _%phi177078%_
           _%ctx177080%_))))
    (define gx#core-bind-values!
      (lambda _g179944_
        (let ((_g179945_ (##length _g179944_)))
          (cond ((##fx= _g179945_ 1) (apply gx#core-bind-values!__0 _g179944_))
                ((##fx= _g179945_ 2) (apply gx#core-bind-values!__1 _g179944_))
                ((##fx= _g179945_ 3) (apply gx#core-bind-values!__2 _g179944_))
                ((##fx= _g179945_ 4) (apply gx#core-bind-values!__% _g179944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g179944_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx177046%_)
        (gx#stx-map1
         (lambda (_%x177048%_)
           (if (gx#identifier? _%x177048%_)
               (gx#core-quote-syntax__0 _%x177048%_)
               '#f))
         _%stx177046%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx177039%_)
        (if (gx#identifier? _%stx177039%_)
            (let* ((_%bind177041%_ (gx#resolve-identifier__0 _%stx177039%_))
                   (_%$e177043%_ (not _%bind177041%_)))
              (if _%$e177043%_
                  _%$e177043%_
                  (##structure-instance-of?
                   _%bind177041%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id177028%_ _%form177029%_)
        (let ((_%bind177031%_ (gx#resolve-identifier__0 _%id177028%_)))
          (if (##structure-instance-of? _%bind177031%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id177028%_)
              (if (not _%bind177031%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id177028%_)))
                      (gx#core-quote-syntax__0 _%id177028%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form177029%_
                       _%id177028%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form177029%_
                   _%id177028%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id176983%_ _%rebind?176984%_ _%phi176985%_ _%ctx176986%_)
        (let* ((_%key176988%_ (gx#core-identifier-key _%id176983%_))
               (_%eid176990%_
                (gx#make-binding-id__%
                 _%key176988%_
                 '#f
                 _%phi176985%_
                 _%ctx176986%_))
               (_%bind176996%_
                (if (##structure-instance-of?
                     _%ctx176986%_
                     'gx#module-context::t)
                    (let ((__obj179921
                           (##structure
                            gx#module-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#module-binding:::init!
                       __obj179921
                       _%eid176990%_
                       _%key176988%_
                       _%phi176985%_
                       _%ctx176986%_)
                      __obj179921)
                    (if (##structure-instance-of?
                         _%ctx176986%_
                         'gx#top-context::t)
                        (let ((__obj179920
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj179920
                           _%eid176990%_
                           _%key176988%_
                           _%phi176985%_)
                          __obj179920)
                        (if (##structure-instance-of?
                             _%ctx176986%_
                             'gx#local-context::t)
                            (let ((__obj179919
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj179919
                               _%eid176990%_
                               _%key176988%_
                               _%phi176985%_)
                              __obj179919)
                            (let ((__obj179918
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj179918
                               _%eid176990%_
                               _%key176988%_
                               _%phi176985%_)
                              __obj179918))))))
          (gx#bind-identifier!__%
           _%id176983%_
           _%bind176996%_
           _%rebind?176984%_
           _%phi176985%_
           _%ctx176986%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id177002%_)
        (let* ((_%rebind?177004%_ '#f)
               (_%phi177006%_ (gx#current-expander-phi))
               (_%ctx177008%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id177002%_
           _%rebind?177004%_
           _%phi177006%_
           _%ctx177008%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id177010%_ _%rebind?177011%_)
        (let* ((_%phi177013%_ (gx#current-expander-phi))
               (_%ctx177015%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id177010%_
           _%rebind?177011%_
           _%phi177013%_
           _%ctx177015%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id177017%_ _%rebind?177018%_ _%phi177019%_)
        (let ((_%ctx177021%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id177017%_
           _%rebind?177018%_
           _%phi177019%_
           _%ctx177021%_))))
    (define gx#core-bind-runtime!
      (lambda _g179946_
        (let ((_g179947_ (##length _g179946_)))
          (cond ((##fx= _g179947_ 1)
                 (apply gx#core-bind-runtime!__0 _g179946_))
                ((##fx= _g179947_ 2)
                 (apply gx#core-bind-runtime!__1 _g179946_))
                ((##fx= _g179947_ 3)
                 (apply gx#core-bind-runtime!__2 _g179946_))
                ((##fx= _g179947_ 4)
                 (apply gx#core-bind-runtime!__% _g179946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g179946_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id176935%_
               _%eid176936%_
               _%rebind?176937%_
               _%phi176938%_
               _%ctx176939%_)
        (let* ((_%key176941%_ (gx#core-identifier-key _%id176935%_))
               (_%bind176946%_
                (if (##structure-instance-of?
                     _%ctx176939%_
                     'gx#module-context::t)
                    (let ((__obj179924
                           (##structure
                            gx#module-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#module-binding:::init!
                       __obj179924
                       _%eid176936%_
                       _%key176941%_
                       _%phi176938%_
                       _%ctx176939%_)
                      __obj179924)
                    (if (##structure-instance-of?
                         _%ctx176939%_
                         'gx#top-context::t)
                        (let ((__obj179923
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj179923
                           _%eid176936%_
                           _%key176941%_
                           _%phi176938%_)
                          __obj179923)
                        (let ((__obj179922
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj179922
                           _%eid176936%_
                           _%key176941%_
                           _%phi176938%_)
                          __obj179922)))))
          (gx#bind-identifier!__%
           _%id176935%_
           _%bind176946%_
           _%rebind?176937%_
           _%phi176938%_
           _%ctx176939%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id176952%_ _%eid176953%_)
        (let* ((_%rebind?176955%_ '#f)
               (_%phi176957%_ (gx#current-expander-phi))
               (_%ctx176959%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id176952%_
           _%eid176953%_
           _%rebind?176955%_
           _%phi176957%_
           _%ctx176959%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id176961%_ _%eid176962%_ _%rebind?176963%_)
        (let* ((_%phi176965%_ (gx#current-expander-phi))
               (_%ctx176967%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id176961%_
           _%eid176962%_
           _%rebind?176963%_
           _%phi176965%_
           _%ctx176967%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id176969%_ _%eid176970%_ _%rebind?176971%_ _%phi176972%_)
        (let ((_%ctx176974%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id176969%_
           _%eid176970%_
           _%rebind?176971%_
           _%phi176972%_
           _%ctx176974%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g179948_
        (let ((_g179949_ (##length _g179948_)))
          (cond ((##fx= _g179949_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g179948_))
                ((##fx= _g179949_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g179948_))
                ((##fx= _g179949_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g179948_))
                ((##fx= _g179949_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g179948_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g179948_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id176895%_
               _%eid176896%_
               _%rebind?176897%_
               _%phi176898%_
               _%ctx176899%_)
        (gx#bind-identifier!__%
         _%id176895%_
         (let ((__obj179925
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj179925
            _%eid176896%_
            (gx#core-identifier-key _%id176895%_)
            _%phi176898%_)
           __obj179925)
         _%rebind?176897%_
         _%phi176898%_
         _%ctx176899%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id176904%_ _%eid176905%_)
        (let* ((_%rebind?176907%_ '#f)
               (_%phi176909%_ (gx#current-expander-phi))
               (_%ctx176911%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id176904%_
           _%eid176905%_
           _%rebind?176907%_
           _%phi176909%_
           _%ctx176911%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id176913%_ _%eid176914%_ _%rebind?176915%_)
        (let* ((_%phi176917%_ (gx#current-expander-phi))
               (_%ctx176919%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id176913%_
           _%eid176914%_
           _%rebind?176915%_
           _%phi176917%_
           _%ctx176919%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id176921%_ _%eid176922%_ _%rebind?176923%_ _%phi176924%_)
        (let ((_%ctx176926%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id176921%_
           _%eid176922%_
           _%rebind?176923%_
           _%phi176924%_
           _%ctx176926%_))))
    (define gx#core-bind-extern!
      (lambda _g179950_
        (let ((_g179951_ (##length _g179950_)))
          (cond ((##fx= _g179951_ 2) (apply gx#core-bind-extern!__0 _g179950_))
                ((##fx= _g179951_ 3) (apply gx#core-bind-extern!__1 _g179950_))
                ((##fx= _g179951_ 4) (apply gx#core-bind-extern!__2 _g179950_))
                ((##fx= _g179951_ 5) (apply gx#core-bind-extern!__% _g179950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g179950_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id176849%_
               _%e176850%_
               _%rebind?176851%_
               _%phi176852%_
               _%ctx176853%_)
        (gx#bind-identifier!__%
         _%id176849%_
         (let ((_%key176858%_ (gx#core-identifier-key _%id176849%_))
               (_%e176859%_
                (if (or (##structure-instance-of? _%e176850%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e176850%_
                         'gx#expander-context::t))
                    _%e176850%_
                    (##structure
                     gx#user-expander::t
                     _%e176850%_
                     _%ctx176853%_
                     _%phi176852%_))))
           (let ((__obj179926
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj179926
              (gx#make-binding-id__%
               _%key176858%_
               '#t
               _%phi176852%_
               _%ctx176853%_)
              _%key176858%_
              _%phi176852%_
              _%e176859%_)
             __obj179926))
         _%rebind?176851%_
         _%phi176852%_
         _%ctx176853%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id176864%_ _%e176865%_)
        (let* ((_%rebind?176867%_ '#f)
               (_%phi176869%_ (gx#current-expander-phi))
               (_%ctx176871%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id176864%_
           _%e176865%_
           _%rebind?176867%_
           _%phi176869%_
           _%ctx176871%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id176873%_ _%e176874%_ _%rebind?176875%_)
        (let* ((_%phi176877%_ (gx#current-expander-phi))
               (_%ctx176879%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id176873%_
           _%e176874%_
           _%rebind?176875%_
           _%phi176877%_
           _%ctx176879%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id176881%_ _%e176882%_ _%rebind?176883%_ _%phi176884%_)
        (let ((_%ctx176886%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id176881%_
           _%e176882%_
           _%rebind?176883%_
           _%phi176884%_
           _%ctx176886%_))))
    (define gx#core-bind-syntax!
      (lambda _g179952_
        (let ((_g179953_ (##length _g179952_)))
          (cond ((##fx= _g179953_ 2) (apply gx#core-bind-syntax!__0 _g179952_))
                ((##fx= _g179953_ 3) (apply gx#core-bind-syntax!__1 _g179952_))
                ((##fx= _g179953_ 4) (apply gx#core-bind-syntax!__2 _g179952_))
                ((##fx= _g179953_ 5) (apply gx#core-bind-syntax!__% _g179952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g179952_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id176832%_ _%e176833%_ _%rebind?176834%_)
        (gx#core-bind-syntax!__%
         _%id176832%_
         _%e176833%_
         _%rebind?176834%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id176839%_ _%e176840%_)
        (let ((_%rebind?176842%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id176839%_
           _%e176840%_
           _%rebind?176842%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g179954_
        (let ((_g179955_ (##length _g179954_)))
          (cond ((##fx= _g179955_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g179954_))
                ((##fx= _g179955_ 3)
                 (apply gx#core-bind-root-syntax!__% _g179954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g179954_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id176790%_
               _%alias-id176791%_
               _%rebind?176792%_
               _%phi176793%_
               _%ctx176794%_)
        (gx#bind-identifier!__%
         _%id176790%_
         (let* ((_%key176796%_ (gx#core-identifier-key _%id176790%_))
                (__obj179927
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj179927
            (gx#make-binding-id__%
             _%key176796%_
             '#t
             _%phi176793%_
             _%ctx176794%_)
            _%key176796%_
            _%phi176793%_
            _%alias-id176791%_)
           __obj179927)
         _%rebind?176792%_
         _%phi176793%_
         _%ctx176794%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id176801%_ _%alias-id176802%_)
        (let* ((_%rebind?176804%_ '#f)
               (_%phi176806%_ (gx#current-expander-phi))
               (_%ctx176808%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id176801%_
           _%alias-id176802%_
           _%rebind?176804%_
           _%phi176806%_
           _%ctx176808%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id176810%_ _%alias-id176811%_ _%rebind?176812%_)
        (let* ((_%phi176814%_ (gx#current-expander-phi))
               (_%ctx176816%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id176810%_
           _%alias-id176811%_
           _%rebind?176812%_
           _%phi176814%_
           _%ctx176816%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id176818%_ _%alias-id176819%_ _%rebind?176820%_ _%phi176821%_)
        (let ((_%ctx176823%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id176818%_
           _%alias-id176819%_
           _%rebind?176820%_
           _%phi176821%_
           _%ctx176823%_))))
    (define gx#core-bind-alias!
      (lambda _g179956_
        (let ((_g179957_ (##length _g179956_)))
          (cond ((##fx= _g179957_ 2) (apply gx#core-bind-alias!__0 _g179956_))
                ((##fx= _g179957_ 3) (apply gx#core-bind-alias!__1 _g179956_))
                ((##fx= _g179957_ 4) (apply gx#core-bind-alias!__2 _g179956_))
                ((##fx= _g179957_ 5) (apply gx#core-bind-alias!__% _g179956_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g179956_))))))
    (define gx#make-binding-id__%
      (lambda (_%key176740%_ _%syntax?176741%_ _%phi176742%_ _%ctx176743%_)
        (if (uninterned-symbol? _%key176740%_)
            (##gensym 'L)
            (if (pair? _%key176740%_)
                (gensym (##car _%key176740%_))
                (if (##structure-instance-of? _%ctx176743%_ 'gx#top-context::t)
                    (let ((_%ns176748%_
                           (gx#core-context-namespace__% _%ctx176743%_)))
                      (if (and (fxzero? _%phi176742%_) (not _%syntax?176741%_))
                          (if _%ns176748%_
                              (make-symbol__1 _%ns176748%_ '"#" _%key176740%_)
                              _%key176740%_)
                          (if _%syntax?176741%_
                              (make-symbol__1
                               (let ((_%$e176752%_ _%ns176748%_))
                                 (if _%$e176752%_ _%$e176752%_ '""))
                               '"[:"
                               (number->string _%phi176742%_)
                               '":]#"
                               _%key176740%_)
                              (make-symbol__1
                               (let ((_%$e176756%_ _%ns176748%_))
                                 (if _%$e176756%_ _%$e176756%_ '""))
                               '"["
                               (number->string _%phi176742%_)
                               '"]#"
                               _%key176740%_))))
                    (gensym _%key176740%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key176763%_)
        (let* ((_%syntax?176765%_ '#f)
               (_%phi176767%_ (gx#current-expander-phi))
               (_%ctx176769%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key176763%_
           _%syntax?176765%_
           _%phi176767%_
           _%ctx176769%_))))
    (define gx#make-binding-id__1
      (lambda (_%key176771%_ _%syntax?176772%_)
        (let* ((_%phi176774%_ (gx#current-expander-phi))
               (_%ctx176776%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key176771%_
           _%syntax?176772%_
           _%phi176774%_
           _%ctx176776%_))))
    (define gx#make-binding-id__2
      (lambda (_%key176778%_ _%syntax?176779%_ _%phi176780%_)
        (let ((_%ctx176782%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key176778%_
           _%syntax?176779%_
           _%phi176780%_
           _%ctx176782%_))))
    (define gx#make-binding-id
      (lambda _g179958_
        (let ((_g179959_ (##length _g179958_)))
          (cond ((##fx= _g179959_ 1) (apply gx#make-binding-id__0 _g179958_))
                ((##fx= _g179959_ 2) (apply gx#make-binding-id__1 _g179958_))
                ((##fx= _g179959_ 3) (apply gx#make-binding-id__2 _g179958_))
                ((##fx= _g179959_ 4) (apply gx#make-binding-id__% _g179958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g179958_))))))))
