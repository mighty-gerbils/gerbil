(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1713004410)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx123785%_)
        (letrec ((_%expand-special123787%_
                  (lambda (_%hd123789%_ _%K123790%_ _%rest123791%_ _%r123792%_)
                    (_%K123790%_
                     _%rest123791%_
                     (cons (gx#core-expand-top _%hd123789%_) _%r123792%_)))))
          (gx#core-expand-block__0 _%stx123785%_ _%expand-special123787%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx123538%_)
        (letrec ((_%expand-special123540%_
                  (lambda (_%hd123660%_ _%K123661%_ _%rest123662%_ _%r123663%_)
                    (let* ((_%K123667%_
                            (lambda (_%e123665%_)
                              (_%K123661%_
                               _%rest123662%_
                               (cons _%e123665%_ _%r123663%_))))
                           (_%e123668123697%_ _%hd123660%_)
                           (_%E123692123701%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123668123697%_)))
                           (_%E123688123713%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123668123697%_)
                                  (let ((_%e123693123705%_
                                         (gx#syntax-e _%e123668123697%_)))
                                    (let ((_%hd123694123708%_
                                           (##car _%e123693123705%_))
                                          (_%tl123695123710%_
                                           (##cdr _%e123693123705%_)))
                                      (if (and (gx#identifier?
                                                _%hd123694123708%_)
                                               (gx#core-identifier=?
                                                _%hd123694123708%_
                                                '%#define-runtime))
                                          (_%K123667%_
                                           (gx#core-expand-define-runtime%
                                            _%hd123660%_))
                                          (_%E123692123701%_))))
                                  (_%E123692123701%_))))
                           (_%E123684123725%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123668123697%_)
                                  (let ((_%e123689123717%_
                                         (gx#syntax-e _%e123668123697%_)))
                                    (let ((_%hd123690123720%_
                                           (##car _%e123689123717%_))
                                          (_%tl123691123722%_
                                           (##cdr _%e123689123717%_)))
                                      (if (and (gx#identifier?
                                                _%hd123690123720%_)
                                               (gx#core-identifier=?
                                                _%hd123690123720%_
                                                '%#define-alias))
                                          (_%K123667%_
                                           (gx#core-expand-define-alias%
                                            _%hd123660%_))
                                          (_%E123688123713%_))))
                                  (_%E123688123713%_))))
                           (_%E123674123737%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123668123697%_)
                                  (let ((_%e123685123729%_
                                         (gx#syntax-e _%e123668123697%_)))
                                    (let ((_%hd123686123732%_
                                           (##car _%e123685123729%_))
                                          (_%tl123687123734%_
                                           (##cdr _%e123685123729%_)))
                                      (if (and (gx#identifier?
                                                _%hd123686123732%_)
                                               (gx#core-identifier=?
                                                _%hd123686123732%_
                                                '%#define-syntax))
                                          (_%K123667%_
                                           (gx#core-expand-define-syntax%
                                            _%hd123660%_))
                                          (_%E123684123725%_))))
                                  (_%E123684123725%_))))
                           (_%E123670123769%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123668123697%_)
                                  (let ((_%e123675123741%_
                                         (gx#syntax-e _%e123668123697%_)))
                                    (let ((_%hd123676123744%_
                                           (##car _%e123675123741%_))
                                          (_%tl123677123746%_
                                           (##cdr _%e123675123741%_)))
                                      (if (and (gx#identifier?
                                                _%hd123676123744%_)
                                               (gx#core-identifier=?
                                                _%hd123676123744%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123677123746%_)
                                              (let ((_%e123678123749%_
                                                     (gx#syntax-e
                                                      _%tl123677123746%_)))
                                                (let ((_%hd123679123752%_
                                                       (##car _%e123678123749%_))
                                                      (_%tl123680123754%_
                                                       (##cdr _%e123678123749%_)))
                                                  (let ((_%hd-bind123757%_
                                                         _%hd123679123752%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123680123754%_)
                                                        (let ((_%e123681123759%_
                                                               (gx#syntax-e
                                                                _%tl123680123754%_)))
                                                          (let ((_%hd123682123762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123681123759%_))
                        (_%tl123683123764%_ (##cdr _%e123681123759%_)))
                    (let ((_%expr123767%_ _%hd123682123762%_))
                      (if (gx#stx-null? _%tl123683123764%_)
                          (if (gx#core-bind-values? _%hd-bind123757%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123757%_)
                                (_%K123667%_ _%hd123660%_))
                              (_%E123674123737%_))
                          (_%E123674123737%_)))))
                (_%E123674123737%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123674123737%_))
                                          (_%E123674123737%_))))
                                  (_%E123674123737%_))))
                           (_%E123669123781%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123668123697%_)
                                  (let ((_%e123671123773%_
                                         (gx#syntax-e _%e123668123697%_)))
                                    (let ((_%hd123672123776%_
                                           (##car _%e123671123773%_))
                                          (_%tl123673123778%_
                                           (##cdr _%e123671123773%_)))
                                      (if (and (gx#identifier?
                                                _%hd123672123776%_)
                                               (gx#core-identifier=?
                                                _%hd123672123776%_
                                                '%#begin-syntax))
                                          (_%K123667%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd123660%_))
                                          (_%E123670123769%_))))
                                  (_%E123670123769%_)))))
                      (_%E123669123781%_))))
                 (_%eval-body123541%_
                  (lambda (_%rbody123549%_)
                    (let _%lp123551%_ ((_%rest123553%_ _%rbody123549%_)
                                       (_%body123554%_ '())
                                       (_%ebody123555%_ '()))
                      (let* ((_%rest123556123564%_ _%rest123553%_)
                             (_%else123558123572%_
                              (lambda ()
                                (values _%body123554%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody123555%_)
                                          (gx#stx-source _%stx123538%_))))))
                             (_%K123560123648%_
                              (lambda (_%rest123575%_ _%hd123576%_)
                                (let* ((_%e123577123594%_ _%hd123576%_)
                                       (_%E123589123598%_
                                        (lambda ()
                                          (_%lp123551%_
                                           _%rest123575%_
                                           (cons _%hd123576%_ _%body123554%_)
                                           (cons _%hd123576%_
                                                 _%ebody123555%_))))
                                       (_%E123579123610%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123577123594%_)
                                              (let ((_%e123590123602%_
                                                     (gx#syntax-e
                                                      _%e123577123594%_)))
                                                (let ((_%hd123591123605%_
                                                       (##car _%e123590123602%_))
                                                      (_%tl123592123607%_
                                                       (##cdr _%e123590123602%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123591123605%_)
                                                           (gx#core-identifier=?
                                                            _%hd123591123605%_
                                                            '%#begin-syntax))
                                                      (_%lp123551%_
                                                       _%rest123575%_
                                                       (cons _%hd123576%_
                                                             _%body123554%_)
                                                       _%ebody123555%_)
                                                      (_%E123589123598%_))))
                                              (_%E123589123598%_))))
                                       (_%E123578123644%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123577123594%_)
                                              (let ((_%e123580123614%_
                                                     (gx#syntax-e
                                                      _%e123577123594%_)))
                                                (let ((_%hd123581123617%_
                                                       (##car _%e123580123614%_))
                                                      (_%tl123582123619%_
                                                       (##cdr _%e123580123614%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123581123617%_)
                                                           (gx#core-identifier=?
                                                            _%hd123581123617%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123582123619%_)
                                                          (let ((_%e123583123622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123582123619%_)))
                    (let ((_%hd123584123625%_ (##car _%e123583123622%_))
                          (_%tl123585123627%_ (##cdr _%e123583123622%_)))
                      (let ((_%hd-bind123630%_ _%hd123584123625%_))
                        (if (gx#stx-pair? _%tl123585123627%_)
                            (let ((_%e123586123632%_
                                   (gx#syntax-e _%tl123585123627%_)))
                              (let ((_%hd123587123635%_
                                     (##car _%e123586123632%_))
                                    (_%tl123588123637%_
                                     (##cdr _%e123586123632%_)))
                                (let ((_%expr123640%_ _%hd123587123635%_))
                                  (if (gx#stx-null? _%tl123588123637%_)
                                      (let ((_%ehd123642%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind123630%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr123640%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd123576%_))))
                                        (_%lp123551%_
                                         _%rest123575%_
                                         (cons _%ehd123642%_ _%body123554%_)
                                         (cons _%ehd123642%_ _%ebody123555%_)))
                                      (_%E123579123610%_)))))
                            (_%E123579123610%_)))))
                  (_%E123579123610%_))
              (_%E123579123610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123579123610%_)))))
                                  (_%E123578123644%_)))))
                        (if (##pair? _%rest123556123564%_)
                            (let ((_%hd123561123651%_
                                   (##car _%rest123556123564%_))
                                  (_%tl123562123653%_
                                   (##cdr _%rest123556123564%_)))
                              (let* ((_%hd123656%_ _%hd123561123651%_)
                                     (_%rest123658%_ _%tl123562123653%_))
                                (_%K123560123648%_
                                 _%rest123658%_
                                 _%hd123656%_)))
                            (_%else123558123572%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody123544%_
                     (gx#core-expand-block__1
                      _%stx123538%_
                      _%expand-special123540%_
                      '#f))
                    (_g123808_ (_%eval-body123541%_ _%rbody123544%_)))
               (begin
                 (let ((_g123809_
                        (if (##values? _g123808_)
                            (##vector-length _g123808_)
                            1)))
                   (if (not (##fx= _g123809_ 2))
                       (error "Context expects 2 values" _g123809_)))
                 (let ((_%expanded-body123546%_ (##vector-ref _g123808_ 0))
                       (_%value123547%_ (##vector-ref _g123808_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body123546%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value123547%_ '())))
                    (gx#stx-source _%stx123538%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx123508%_)
        (let* ((_%e123509123516%_ _%stx123508%_)
               (_%E123511123520%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123509123516%_)))
               (_%E123510123534%_
                (lambda ()
                  (if (gx#stx-pair? _%e123509123516%_)
                      (let ((_%e123512123524%_
                             (gx#syntax-e _%e123509123516%_)))
                        (let ((_%hd123513123527%_ (##car _%e123512123524%_))
                              (_%tl123514123529%_ (##cdr _%e123512123524%_)))
                          (let ((_%body123532%_ _%tl123514123529%_))
                            (if (gx#stx-list? _%body123532%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body123532%_)
                                 (gx#stx-source _%stx123508%_))
                                (_%E123511123520%_)))))
                      (_%E123511123520%_)))))
          (_%E123510123534%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx123506%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx123506%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx123452%_)
        (let* ((_%e123453123466%_ _%stx123452%_)
               (_%E123455123470%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123453123466%_)))
               (_%E123454123502%_
                (lambda ()
                  (if (gx#stx-pair? _%e123453123466%_)
                      (let ((_%e123456123474%_
                             (gx#syntax-e _%e123453123466%_)))
                        (let ((_%hd123457123477%_ (##car _%e123456123474%_))
                              (_%tl123458123479%_ (##cdr _%e123456123474%_)))
                          (if (gx#stx-pair? _%tl123458123479%_)
                              (let ((_%e123459123482%_
                                     (gx#syntax-e _%tl123458123479%_)))
                                (let ((_%hd123460123485%_
                                       (##car _%e123459123482%_))
                                      (_%tl123461123487%_
                                       (##cdr _%e123459123482%_)))
                                  (let ((_%ann123490%_ _%hd123460123485%_))
                                    (if (gx#stx-pair? _%tl123461123487%_)
                                        (let ((_%e123462123492%_
                                               (gx#syntax-e
                                                _%tl123461123487%_)))
                                          (let ((_%hd123463123495%_
                                                 (##car _%e123462123492%_))
                                                (_%tl123464123497%_
                                                 (##cdr _%e123462123492%_)))
                                            (let ((_%expr123500%_
                                                   _%hd123463123495%_))
                                              (if (gx#stx-null?
                                                   _%tl123464123497%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann123490%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr123500%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx123452%_))
                                                  (_%E123455123470%_)))))
                                        (_%E123455123470%_)))))
                              (_%E123455123470%_))))
                      (_%E123455123470%_)))))
          (_%E123454123502%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx123176%_ _%body123177%_)
        (letrec ((_%expand-special123179%_
                  (lambda (_%hd123447%_ _%K123448%_ _%rest123449%_ _%r123450%_)
                    (_%K123448%_
                     '()
                     (cons (_%expand-internal123180%_
                            _%hd123447%_
                            _%rest123449%_)
                           _%r123450%_))))
                 (_%expand-internal123180%_
                  (lambda (_%hd123443%_ _%rest123444%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal123182%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd123443%_ _%rest123444%_))
                          (gx#stx-source _%stx123176%_))
                         _%expand-internal-special123181%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj123802
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj123802)
                       __obj123802))))
                 (_%expand-internal-special123181%_
                  (lambda (_%hd123338%_ _%K123339%_ _%rest123340%_ _%r123341%_)
                    (let* ((_%e123342123367%_ _%hd123338%_)
                           (_%E123362123371%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123342123367%_)))
                           (_%E123358123383%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123342123367%_)
                                  (let ((_%e123363123375%_
                                         (gx#syntax-e _%e123342123367%_)))
                                    (let ((_%hd123364123378%_
                                           (##car _%e123363123375%_))
                                          (_%tl123365123380%_
                                           (##cdr _%e123363123375%_)))
                                      (if (and (gx#identifier?
                                                _%hd123364123378%_)
                                               (gx#core-identifier=?
                                                _%hd123364123378%_
                                                '%#declare))
                                          (_%K123339%_
                                           _%rest123340%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd123338%_)
                                                 _%r123341%_))
                                          (_%E123362123371%_))))
                                  (_%E123362123371%_))))
                           (_%E123354123395%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123342123367%_)
                                  (let ((_%e123359123387%_
                                         (gx#syntax-e _%e123342123367%_)))
                                    (let ((_%hd123360123390%_
                                           (##car _%e123359123387%_))
                                          (_%tl123361123392%_
                                           (##cdr _%e123359123387%_)))
                                      (if (and (gx#identifier?
                                                _%hd123360123390%_)
                                               (gx#core-identifier=?
                                                _%hd123360123390%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd123338%_)
                                            (_%K123339%_
                                             _%rest123340%_
                                             _%r123341%_))
                                          (_%E123358123383%_))))
                                  (_%E123358123383%_))))
                           (_%E123344123407%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123342123367%_)
                                  (let ((_%e123355123399%_
                                         (gx#syntax-e _%e123342123367%_)))
                                    (let ((_%hd123356123402%_
                                           (##car _%e123355123399%_))
                                          (_%tl123357123404%_
                                           (##cdr _%e123355123399%_)))
                                      (if (and (gx#identifier?
                                                _%hd123356123402%_)
                                               (gx#core-identifier=?
                                                _%hd123356123402%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd123338%_)
                                            (_%K123339%_
                                             _%rest123340%_
                                             _%r123341%_))
                                          (_%E123354123395%_))))
                                  (_%E123354123395%_))))
                           (_%E123343123439%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123342123367%_)
                                  (let ((_%e123345123411%_
                                         (gx#syntax-e _%e123342123367%_)))
                                    (let ((_%hd123346123414%_
                                           (##car _%e123345123411%_))
                                          (_%tl123347123416%_
                                           (##cdr _%e123345123411%_)))
                                      (if (and (gx#identifier?
                                                _%hd123346123414%_)
                                               (gx#core-identifier=?
                                                _%hd123346123414%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123347123416%_)
                                              (let ((_%e123348123419%_
                                                     (gx#syntax-e
                                                      _%tl123347123416%_)))
                                                (let ((_%hd123349123422%_
                                                       (##car _%e123348123419%_))
                                                      (_%tl123350123424%_
                                                       (##cdr _%e123348123419%_)))
                                                  (let ((_%hd-bind123427%_
                                                         _%hd123349123422%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123350123424%_)
                                                        (let ((_%e123351123429%_
                                                               (gx#syntax-e
                                                                _%tl123350123424%_)))
                                                          (let ((_%hd123352123432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123351123429%_))
                        (_%tl123353123434%_ (##cdr _%e123351123429%_)))
                    (let ((_%expr123437%_ _%hd123352123432%_))
                      (if (gx#stx-null? _%tl123353123434%_)
                          (if (gx#core-bind-values? _%hd-bind123427%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123427%_)
                                (_%K123339%_
                                 _%rest123340%_
                                 (cons _%hd123338%_ _%r123341%_)))
                              (_%E123344123407%_))
                          (_%E123344123407%_)))))
                (_%E123344123407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123344123407%_))
                                          (_%E123344123407%_))))
                                  (_%E123344123407%_)))))
                      (_%E123343123439%_))))
                 (_%wrap-internal123182%_
                  (lambda (_%rbody123184%_)
                    (let _%lp123186%_ ((_%rest123188%_ _%rbody123184%_)
                                       (_%decls123189%_ '())
                                       (_%bind123190%_ '())
                                       (_%body123191%_ '()))
                      (let* ((_%e123192123199%_ _%rest123188%_)
                             (_%E123194123248%_
                              (lambda ()
                                (let* ((_%body123243%_
                                        (let* ((_%body123202123212%_
                                                _%body123191%_)
                                               (_%else123205123220%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body123191%_)
                                                   (gx#stx-source
                                                    _%stx123176%_)))))
                                          (let ((_%K123210123240%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx123176%_)))
                                                (_%K123207123226%_
                                                 (lambda (_%expr123224%_)
                                                   _%expr123224%_)))
                                            (let ((_%try-match123204123236%_
                                                   (lambda ()
                                                     (if (##pair? _%body123202123212%_)
                                                         (let ((_%tl123209123231%_
                                                                (##cdr _%body123202123212%_))
                                                               (_%hd123208123229%_
                                                                (##car _%body123202123212%_)))
                                                           (if (##null? _%tl123209123231%_)
                                                               (let ((_%expr123234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd123208123229%_))
                         (_%K123207123226%_ _%expr123234%_))
                       (_%else123205123220%_)))
                 (_%else123205123220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body123202123212%_)
                                                  (_%K123210123240%_)
                                                  (_%try-match123204123236%_))))))
                                       (_%body123245%_
                                        (if (null? _%bind123190%_)
                                            _%body123243%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind123190%_
                                                         (cons _%body123243%_
                                                               '())))
                                             (gx#stx-source _%stx123176%_)))))
                                  (if (null? _%decls123189%_)
                                      _%body123245%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls123189%_
                                                   (cons _%body123245%_ '())))
                                       (gx#stx-source _%stx123176%_))))))
                             (_%E123193123334%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123192123199%_)
                                    (let ((_%e123195123252%_
                                           (gx#syntax-e _%e123192123199%_)))
                                      (let ((_%hd123196123255%_
                                             (##car _%e123195123252%_))
                                            (_%tl123197123257%_
                                             (##cdr _%e123195123252%_)))
                                        (let* ((_%hd123260%_
                                                _%hd123196123255%_)
                                               (_%rest123262%_
                                                _%tl123197123257%_)
                                               (_%e123263123280%_ _%hd123260%_)
                                               (_%E123275123284%_
                                                (lambda ()
                                                  (if (null? _%bind123190%_)
                                                      (_%lp123186%_
                                                       _%rest123262%_
                                                       _%decls123189%_
                                                       _%bind123190%_
                                                       (cons _%hd123260%_
                                                             _%body123191%_))
                                                      (_%lp123186%_
                                                       _%rest123262%_
                                                       _%decls123189%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd123260%_ '()))
                     _%bind123190%_)
               _%body123191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123265123298%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e123263123280%_)
                                                      (let ((_%e123276123288%_
                                                             (gx#syntax-e
                                                              _%e123263123280%_)))
                                                        (let ((_%hd123277123291%_
                                                               (##car _%e123276123288%_))
                                                              (_%tl123278123293%_
                                                               (##cdr _%e123276123288%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd123277123291%_)
                           (gx#core-identifier=?
                            _%hd123277123291%_
                            '%#declare))
                      (let ((_%xdecls123296%_ _%tl123278123293%_))
                        (_%lp123186%_
                         _%rest123262%_
                         (gx#stx-foldr cons _%decls123189%_ _%xdecls123296%_)
                         _%bind123190%_
                         _%body123191%_))
                      (_%E123275123284%_))))
              (_%E123275123284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123264123330%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e123263123280%_)
                                                      (let ((_%e123266123302%_
                                                             (gx#syntax-e
                                                              _%e123263123280%_)))
                                                        (let ((_%hd123267123305%_
                                                               (##car _%e123266123302%_))
                                                              (_%tl123268123307%_
                                                               (##cdr _%e123266123302%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd123267123305%_)
                           (gx#core-identifier=?
                            _%hd123267123305%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl123268123307%_)
                          (let ((_%e123269123310%_
                                 (gx#syntax-e _%tl123268123307%_)))
                            (let ((_%hd123270123313%_
                                   (##car _%e123269123310%_))
                                  (_%tl123271123315%_
                                   (##cdr _%e123269123310%_)))
                              (let ((_%hd-bind123318%_ _%hd123270123313%_))
                                (if (gx#stx-pair? _%tl123271123315%_)
                                    (let ((_%e123272123320%_
                                           (gx#syntax-e _%tl123271123315%_)))
                                      (let ((_%hd123273123323%_
                                             (##car _%e123272123320%_))
                                            (_%tl123274123325%_
                                             (##cdr _%e123272123320%_)))
                                        (let ((_%expr123328%_
                                               _%hd123273123323%_))
                                          (if (gx#stx-null? _%tl123274123325%_)
                                              (_%lp123186%_
                                               _%rest123262%_
                                               _%decls123189%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind123318%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr123328%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind123190%_)
                                               _%body123191%_)
                                              (_%E123265123298%_)))))
                                    (_%E123265123298%_)))))
                          (_%E123265123298%_))
                      (_%E123265123298%_))))
              (_%E123265123298%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E123264123330%_))))
                                    (_%E123194123248%_)))))
                        (_%E123193123334%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body123177%_)
            (gx#stx-source _%stx123176%_))
           _%expand-special123179%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx123114%_)
        (let* ((_%e123115123122%_ _%stx123114%_)
               (_%E123117123126%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123115123122%_)))
               (_%E123116123172%_
                (lambda ()
                  (if (gx#stx-pair? _%e123115123122%_)
                      (let ((_%e123118123130%_
                             (gx#syntax-e _%e123115123122%_)))
                        (let ((_%hd123119123133%_ (##car _%e123118123130%_))
                              (_%tl123120123135%_ (##cdr _%e123118123130%_)))
                          (let ((_%body123138%_ _%tl123120123135%_))
                            (if (gx#stx-list? _%body123138%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl123140%_)
                                     (let* ((_%e123141123148%_ _%decl123140%_)
                                            (_%E123143123152%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e123141123148%_)))
                                            (_%E123142123168%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e123141123148%_)
                                                   (let ((_%e123144123156%_
                                                          (gx#syntax-e
                                                           _%e123141123148%_)))
                                                     (let ((_%hd123145123159%_
                                                            (##car _%e123144123156%_))
                                                           (_%tl123146123161%_
                                                            (##cdr _%e123144123156%_)))
                                                       (let* ((_%head123164%_
                                                               _%hd123145123159%_)
                                                              (_%args123166%_
                                                               _%tl123146123161%_))
                                                         (if (gx#stx-list?
                                                              _%args123166%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl123140%_)
                                                             (_%E123143123152%_)))))
                                                   (_%E123143123152%_)))))
                                       (_%E123142123168%_)))
                                   _%body123138%_))
                                 (gx#stx-source _%stx123114%_))
                                (_%E123117123126%_)))))
                      (_%E123117123126%_)))))
          (_%E123116123172%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx123018%_)
        (let* ((_%e123019123026%_ _%stx123018%_)
               (_%E123021123030%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123019123026%_)))
               (_%E123020123110%_
                (lambda ()
                  (if (gx#stx-pair? _%e123019123026%_)
                      (let ((_%e123022123034%_
                             (gx#syntax-e _%e123019123026%_)))
                        (let ((_%hd123023123037%_ (##car _%e123022123034%_))
                              (_%tl123024123039%_ (##cdr _%e123022123034%_)))
                          (let ((_%body123042%_ _%tl123024123039%_))
                            (let _%lp123044%_ ((_%rest123046%_ _%body123042%_)
                                               (_%r123047%_ '()))
                              (let* ((_%e123048123062%_ _%rest123046%_)
                                     (_%E123060123066%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx123018%_)))
                                     (_%E123050123070%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e123048123062%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r123047%_))
                                             (gx#stx-source _%stx123018%_))
                                            (_%E123060123066%_))))
                                     (_%E123049123106%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e123048123062%_)
                                            (let ((_%e123051123074%_
                                                   (gx#syntax-e
                                                    _%e123048123062%_)))
                                              (let ((_%hd123052123077%_
                                                     (##car _%e123051123074%_))
                                                    (_%tl123053123079%_
                                                     (##cdr _%e123051123074%_)))
                                                (if (gx#stx-pair?
                                                     _%hd123052123077%_)
                                                    (let ((_%e123054123082%_
                                                           (gx#syntax-e
                                                            _%hd123052123077%_)))
                                                      (let ((_%hd123055123085%_
                                                             (##car _%e123054123082%_))
                                                            (_%tl123056123087%_
                                                             (##cdr _%e123054123082%_)))
                                                        (let ((_%id123090%_
                                                               _%hd123055123085%_))
                                                          (if (gx#stx-pair?
                                                               _%tl123056123087%_)
                                                              (let ((_%e123057123092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl123056123087%_)))
                        (let ((_%hd123058123095%_ (##car _%e123057123092%_))
                              (_%tl123059123097%_ (##cdr _%e123057123092%_)))
                          (let ((_%eid123100%_ _%hd123058123095%_))
                            (if (gx#stx-null? _%tl123059123097%_)
                                (let ((_%rest123102%_ _%tl123053123079%_))
                                  (if (and (gx#identifier? _%id123090%_)
                                           (gx#identifier? _%eid123100%_))
                                      (let ((_%eid123104%_
                                             (gx#stx-e _%eid123100%_)))
                                        (gx#core-bind-extern!__0
                                         _%id123090%_
                                         _%eid123104%_)
                                        (_%lp123044%_
                                         _%rest123102%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id123090%_)
                                                     (cons _%eid123104%_ '()))
                                               _%r123047%_)))
                                      (_%E123050123070%_)))
                                (_%E123050123070%_)))))
                      (_%E123050123070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E123050123070%_))))
                                            (_%E123050123070%_)))))
                                (_%E123049123106%_))))))
                      (_%E123021123030%_)))))
          (_%E123020123110%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx122964%_)
        (let* ((_%e122965122978%_ _%stx122964%_)
               (_%E122967122982%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122965122978%_)))
               (_%E122966123014%_
                (lambda ()
                  (if (gx#stx-pair? _%e122965122978%_)
                      (let ((_%e122968122986%_
                             (gx#syntax-e _%e122965122978%_)))
                        (let ((_%hd122969122989%_ (##car _%e122968122986%_))
                              (_%tl122970122991%_ (##cdr _%e122968122986%_)))
                          (if (gx#stx-pair? _%tl122970122991%_)
                              (let ((_%e122971122994%_
                                     (gx#syntax-e _%tl122970122991%_)))
                                (let ((_%hd122972122997%_
                                       (##car _%e122971122994%_))
                                      (_%tl122973122999%_
                                       (##cdr _%e122971122994%_)))
                                  (let ((_%hd123002%_ _%hd122972122997%_))
                                    (if (gx#stx-pair? _%tl122973122999%_)
                                        (let ((_%e122974123004%_
                                               (gx#syntax-e
                                                _%tl122973122999%_)))
                                          (let ((_%hd122975123007%_
                                                 (##car _%e122974123004%_))
                                                (_%tl122976123009%_
                                                 (##cdr _%e122974123004%_)))
                                            (let ((_%expr123012%_
                                                   _%hd122975123007%_))
                                              (if (gx#stx-null?
                                                   _%tl122976123009%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd123002%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd123002%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd123002%_)
                             (cons (gx#core-expand-expression _%expr123012%_)
                                   '())))
                 (gx#stx-source _%stx122964%_)))
              (_%E122967122982%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122967122982%_)))))
                                        (_%E122967122982%_)))))
                              (_%E122967122982%_))))
                      (_%E122967122982%_)))))
          (_%E122966123014%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx122908%_)
        (let* ((_%e122909122922%_ _%stx122908%_)
               (_%E122911122926%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122909122922%_)))
               (_%E122910122960%_
                (lambda ()
                  (if (gx#stx-pair? _%e122909122922%_)
                      (let ((_%e122912122930%_
                             (gx#syntax-e _%e122909122922%_)))
                        (let ((_%hd122913122933%_ (##car _%e122912122930%_))
                              (_%tl122914122935%_ (##cdr _%e122912122930%_)))
                          (if (gx#stx-pair? _%tl122914122935%_)
                              (let ((_%e122915122938%_
                                     (gx#syntax-e _%tl122914122935%_)))
                                (let ((_%hd122916122941%_
                                       (##car _%e122915122938%_))
                                      (_%tl122917122943%_
                                       (##cdr _%e122915122938%_)))
                                  (let ((_%id122946%_ _%hd122916122941%_))
                                    (if (gx#stx-pair? _%tl122917122943%_)
                                        (let ((_%e122918122948%_
                                               (gx#syntax-e
                                                _%tl122917122943%_)))
                                          (let ((_%hd122919122951%_
                                                 (##car _%e122918122948%_))
                                                (_%tl122920122953%_
                                                 (##cdr _%e122918122948%_)))
                                            (let ((_%binding-id122956%_
                                                   _%hd122919122951%_))
                                              (if (gx#stx-null?
                                                   _%tl122920122953%_)
                                                  (if (and (gx#identifier?
                                                            _%id122946%_)
                                                           (gx#identifier?
                                                            _%binding-id122956%_))
                                                      (let ((_%eid122958%_
                                                             (gx#stx-e
                                                              _%binding-id122956%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id122946%_
                                                         _%eid122958%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122946%_)
                             (cons _%eid122958%_ '())))))
              (_%E122911122926%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122911122926%_)))))
                                        (_%E122911122926%_)))))
                              (_%E122911122926%_))))
                      (_%E122911122926%_)))))
          (_%E122910122960%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx122851%_)
        (let* ((_%e122852122865%_ _%stx122851%_)
               (_%E122854122869%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122852122865%_)))
               (_%E122853122904%_
                (lambda ()
                  (if (gx#stx-pair? _%e122852122865%_)
                      (let ((_%e122855122873%_
                             (gx#syntax-e _%e122852122865%_)))
                        (let ((_%hd122856122876%_ (##car _%e122855122873%_))
                              (_%tl122857122878%_ (##cdr _%e122855122873%_)))
                          (if (gx#stx-pair? _%tl122857122878%_)
                              (let ((_%e122858122881%_
                                     (gx#syntax-e _%tl122857122878%_)))
                                (let ((_%hd122859122884%_
                                       (##car _%e122858122881%_))
                                      (_%tl122860122886%_
                                       (##cdr _%e122858122881%_)))
                                  (let ((_%id122889%_ _%hd122859122884%_))
                                    (if (gx#stx-pair? _%tl122860122886%_)
                                        (let ((_%e122861122891%_
                                               (gx#syntax-e
                                                _%tl122860122886%_)))
                                          (let ((_%hd122862122894%_
                                                 (##car _%e122861122891%_))
                                                (_%tl122863122896%_
                                                 (##cdr _%e122861122891%_)))
                                            (let ((_%expr122899%_
                                                   _%hd122862122894%_))
                                              (if (gx#stx-null?
                                                   _%tl122863122896%_)
                                                  (if (gx#identifier?
                                                       _%id122889%_)
                                                      (let ((_g123810_
                                                             (gx#core-expand-expression+1
                                                              _%expr122899%_)))
                                                        (begin
                                                          (let ((_g123811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g123810_)
                             (##vector-length _g123810_)
                             1)))
                    (if (not (##fx= _g123811_ 2))
                        (error "Context expects 2 values" _g123811_)))
                  (let ((_%e-stx122901%_ (##vector-ref _g123810_ 0))
                        (_%e122902%_ (##vector-ref _g123810_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id122889%_ _%e122902%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id122889%_)
                                   (cons _%e-stx122901%_ '())))
                       (gx#stx-source _%stx122851%_))))))
              (_%E122854122869%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122854122869%_)))))
                                        (_%E122854122869%_)))))
                              (_%E122854122869%_))))
                      (_%E122854122869%_)))))
          (_%E122853122904%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx122795%_)
        (let* ((_%e122796122809%_ _%stx122795%_)
               (_%E122798122813%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122796122809%_)))
               (_%E122797122847%_
                (lambda ()
                  (if (gx#stx-pair? _%e122796122809%_)
                      (let ((_%e122799122817%_
                             (gx#syntax-e _%e122796122809%_)))
                        (let ((_%hd122800122820%_ (##car _%e122799122817%_))
                              (_%tl122801122822%_ (##cdr _%e122799122817%_)))
                          (if (gx#stx-pair? _%tl122801122822%_)
                              (let ((_%e122802122825%_
                                     (gx#syntax-e _%tl122801122822%_)))
                                (let ((_%hd122803122828%_
                                       (##car _%e122802122825%_))
                                      (_%tl122804122830%_
                                       (##cdr _%e122802122825%_)))
                                  (let ((_%id122833%_ _%hd122803122828%_))
                                    (if (gx#stx-pair? _%tl122804122830%_)
                                        (let ((_%e122805122835%_
                                               (gx#syntax-e
                                                _%tl122804122830%_)))
                                          (let ((_%hd122806122838%_
                                                 (##car _%e122805122835%_))
                                                (_%tl122807122840%_
                                                 (##cdr _%e122805122835%_)))
                                            (let ((_%alias-id122843%_
                                                   _%hd122806122838%_))
                                              (if (gx#stx-null?
                                                   _%tl122807122840%_)
                                                  (if (and (gx#identifier?
                                                            _%id122833%_)
                                                           (gx#identifier?
                                                            _%alias-id122843%_))
                                                      (let ((_%alias-id122845%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id122843%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id122833%_
                                                         _%alias-id122845%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122833%_)
                             (cons _%alias-id122845%_ '())))))
              (_%E122798122813%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122798122813%_)))))
                                        (_%E122798122813%_)))))
                              (_%E122798122813%_))))
                      (_%E122798122813%_)))))
          (_%E122797122847%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx122738%_ _%wrap?122739%_)
        (let* ((_%e122740122750%_ _%stx122738%_)
               (_%E122742122754%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122740122750%_)))
               (_%E122741122781%_
                (lambda ()
                  (if (gx#stx-pair? _%e122740122750%_)
                      (let ((_%e122743122758%_
                             (gx#syntax-e _%e122740122750%_)))
                        (let ((_%hd122744122761%_ (##car _%e122743122758%_))
                              (_%tl122745122763%_ (##cdr _%e122743122758%_)))
                          (if (gx#stx-pair? _%tl122745122763%_)
                              (let ((_%e122746122766%_
                                     (gx#syntax-e _%tl122745122763%_)))
                                (let ((_%hd122747122769%_
                                       (##car _%e122746122766%_))
                                      (_%tl122748122771%_
                                       (##cdr _%e122746122766%_)))
                                  (let* ((_%hd122774%_ _%hd122747122769%_)
                                         (_%body122776%_ _%tl122748122771%_))
                                    (if (gx#core-bind-values? _%hd122774%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd122774%_)
                                           (let ((_%body122779%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd122774%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122738%_
                                                               _%body122776%_)
                                                              '()))))
                                             (if _%wrap?122739%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body122779%_)
                                                  (gx#stx-source
                                                   _%stx122738%_))
                                                 _%body122779%_)))
                                         gx#current-expander-context
                                         (let ((__obj123803
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123803)
                                           __obj123803))
                                        (_%E122742122754%_)))))
                              (_%E122742122754%_))))
                      (_%E122742122754%_)))))
          (_%E122741122781%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx122788%_)
        (let ((_%wrap?122790%_ '#t))
          (gx#core-expand-lambda%__% _%stx122788%_ _%wrap?122790%_))))
    (define gx#core-expand-lambda%
      (lambda _g123813_
        (let ((_g123812_ (##length _g123813_)))
          (cond ((##fx= _g123812_ 1)
                 (apply gx#core-expand-lambda%__0 _g123813_))
                ((##fx= _g123812_ 2)
                 (apply gx#core-expand-lambda%__% _g123813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g123813_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx122702%_)
        (let* ((_%e122703122710%_ _%stx122702%_)
               (_%E122705122714%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122703122710%_)))
               (_%E122704122733%_
                (lambda ()
                  (if (gx#stx-pair? _%e122703122710%_)
                      (let ((_%e122706122718%_
                             (gx#syntax-e _%e122703122710%_)))
                        (let ((_%hd122707122721%_ (##car _%e122706122718%_))
                              (_%tl122708122723%_ (##cdr _%e122706122718%_)))
                          (let ((_%clauses122726%_ _%tl122708122723%_))
                            (if (gx#stx-list? _%clauses122726%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause122728%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause122728%_)
                                       (let ((_%$e122730%_
                                              (gx#stx-source
                                               _%clause122728%_)))
                                         (if _%$e122730%_
                                             _%$e122730%_
                                             (gx#stx-source _%stx122702%_))))
                                      '#f))
                                   _%clauses122726%_))
                                 (gx#stx-source _%stx122702%_))
                                (_%E122705122714%_)))))
                      (_%E122705122714%_)))))
          (_%E122704122733%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx122656%_)
        (let* ((_%e122657122667%_ _%stx122656%_)
               (_%E122659122671%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122657122667%_)))
               (_%E122658122698%_
                (lambda ()
                  (if (gx#stx-pair? _%e122657122667%_)
                      (let ((_%e122660122675%_
                             (gx#syntax-e _%e122657122667%_)))
                        (let ((_%hd122661122678%_ (##car _%e122660122675%_))
                              (_%tl122662122680%_ (##cdr _%e122660122675%_)))
                          (if (gx#stx-pair? _%tl122662122680%_)
                              (let ((_%e122663122683%_
                                     (gx#syntax-e _%tl122662122680%_)))
                                (let ((_%hd122664122686%_
                                       (##car _%e122663122683%_))
                                      (_%tl122665122688%_
                                       (##cdr _%e122663122683%_)))
                                  (let* ((_%hd122691%_ _%hd122664122686%_)
                                         (_%body122693%_ _%tl122665122688%_))
                                    (if (gx#core-expand-let-bind? _%hd122691%_)
                                        (let ((_%expressions122695%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd122691%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd122691%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd122691%_
                                                           _%expressions122695%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx122656%_
                         _%body122693%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx122656%_)))
                                           gx#current-expander-context
                                           (let ((__obj123804
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj123804)
                                             __obj123804)))
                                        (_%E122659122671%_)))))
                              (_%E122659122671%_))))
                      (_%E122659122671%_)))))
          (_%E122658122698%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx122601%_ _%form122602%_)
        (let* ((_%e122603122613%_ _%stx122601%_)
               (_%E122605122617%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122603122613%_)))
               (_%E122604122642%_
                (lambda ()
                  (if (gx#stx-pair? _%e122603122613%_)
                      (let ((_%e122606122621%_
                             (gx#syntax-e _%e122603122613%_)))
                        (let ((_%hd122607122624%_ (##car _%e122606122621%_))
                              (_%tl122608122626%_ (##cdr _%e122606122621%_)))
                          (if (gx#stx-pair? _%tl122608122626%_)
                              (let ((_%e122609122629%_
                                     (gx#syntax-e _%tl122608122626%_)))
                                (let ((_%hd122610122632%_
                                       (##car _%e122609122629%_))
                                      (_%tl122611122634%_
                                       (##cdr _%e122609122629%_)))
                                  (let* ((_%hd122637%_ _%hd122610122632%_)
                                         (_%body122639%_ _%tl122611122634%_))
                                    (if (gx#core-expand-let-bind? _%hd122637%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd122637%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form122602%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd122637%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd122637%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122601%_
                                                               _%body122639%_)
                                                              '())))
                                            (gx#stx-source _%stx122601%_)))
                                         gx#current-expander-context
                                         (let ((__obj123805
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123805)
                                           __obj123805))
                                        (_%E122605122617%_)))))
                              (_%E122605122617%_))))
                      (_%E122605122617%_)))))
          (_%E122604122642%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx122649%_)
        (let ((_%form122651%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx122649%_ _%form122651%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g123815_
        (let ((_g123814_ (##length _g123815_)))
          (cond ((##fx= _g123814_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g123815_))
                ((##fx= _g123814_ 2)
                 (apply gx#core-expand-letrec-values%__% _g123815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g123815_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx122598%_)
        (gx#core-expand-letrec-values%__% _%stx122598%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx122555%_)
        (if (gx#stx-list? _%stx122555%_)
            (gx#stx-andmap
             (lambda (_%bind122557%_)
               (let* ((_%e122558122568%_ _%bind122557%_)
                      (_%E122560122572%_ (lambda () '#f))
                      (_%E122559122594%_
                       (lambda ()
                         (if (gx#stx-pair? _%e122558122568%_)
                             (let ((_%e122561122576%_
                                    (gx#syntax-e _%e122558122568%_)))
                               (let ((_%hd122562122579%_
                                      (##car _%e122561122576%_))
                                     (_%tl122563122581%_
                                      (##cdr _%e122561122576%_)))
                                 (let ((_%hd122584%_ _%hd122562122579%_))
                                   (if (gx#stx-pair? _%tl122563122581%_)
                                       (let ((_%e122564122586%_
                                              (gx#syntax-e
                                               _%tl122563122581%_)))
                                         (let ((_%hd122565122589%_
                                                (##car _%e122564122586%_))
                                               (_%tl122566122591%_
                                                (##cdr _%e122564122586%_)))
                                           (if (gx#stx-null?
                                                _%tl122566122591%_)
                                               (gx#core-bind-values?
                                                _%hd122584%_)
                                               (_%E122560122572%_))))
                                       (_%E122560122572%_)))))
                             (_%E122560122572%_)))))
                 (_%E122559122594%_)))
             _%stx122555%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind122514%_)
        (let* ((_%e122515122525%_ _%bind122514%_)
               (_%E122517122529%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122515122525%_)))
               (_%E122516122551%_
                (lambda ()
                  (if (gx#stx-pair? _%e122515122525%_)
                      (let ((_%e122518122533%_
                             (gx#syntax-e _%e122515122525%_)))
                        (let ((_%hd122519122536%_ (##car _%e122518122533%_))
                              (_%tl122520122538%_ (##cdr _%e122518122533%_)))
                          (if (gx#stx-pair? _%tl122520122538%_)
                              (let ((_%e122521122541%_
                                     (gx#syntax-e _%tl122520122538%_)))
                                (let ((_%hd122522122544%_
                                       (##car _%e122521122541%_))
                                      (_%tl122523122546%_
                                       (##cdr _%e122521122541%_)))
                                  (let ((_%expr122549%_ _%hd122522122544%_))
                                    (if (gx#stx-null? _%tl122523122546%_)
                                        (gx#core-expand-expression
                                         _%expr122549%_)
                                        (_%E122517122529%_)))))
                              (_%E122517122529%_))))
                      (_%E122517122529%_)))))
          (_%E122516122551%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind122473%_)
        (let* ((_%e122474122484%_ _%bind122473%_)
               (_%E122476122488%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122474122484%_)))
               (_%E122475122510%_
                (lambda ()
                  (if (gx#stx-pair? _%e122474122484%_)
                      (let ((_%e122477122492%_
                             (gx#syntax-e _%e122474122484%_)))
                        (let ((_%hd122478122495%_ (##car _%e122477122492%_))
                              (_%tl122479122497%_ (##cdr _%e122477122492%_)))
                          (let ((_%hd122500%_ _%hd122478122495%_))
                            (if (gx#stx-pair? _%tl122479122497%_)
                                (let ((_%e122480122502%_
                                       (gx#syntax-e _%tl122479122497%_)))
                                  (let ((_%hd122481122505%_
                                         (##car _%e122480122502%_))
                                        (_%tl122482122507%_
                                         (##cdr _%e122480122502%_)))
                                    (if (gx#stx-null? _%tl122482122507%_)
                                        (gx#core-bind-values!__0 _%hd122500%_)
                                        (_%E122476122488%_))))
                                (_%E122476122488%_)))))
                      (_%E122476122488%_)))))
          (_%E122475122510%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind122431%_ _%expr122432%_)
        (let* ((_%e122433122443%_ _%bind122431%_)
               (_%E122435122447%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122433122443%_)))
               (_%E122434122469%_
                (lambda ()
                  (if (gx#stx-pair? _%e122433122443%_)
                      (let ((_%e122436122451%_
                             (gx#syntax-e _%e122433122443%_)))
                        (let ((_%hd122437122454%_ (##car _%e122436122451%_))
                              (_%tl122438122456%_ (##cdr _%e122436122451%_)))
                          (let ((_%hd122459%_ _%hd122437122454%_))
                            (if (gx#stx-pair? _%tl122438122456%_)
                                (let ((_%e122439122461%_
                                       (gx#syntax-e _%tl122438122456%_)))
                                  (let ((_%hd122440122464%_
                                         (##car _%e122439122461%_))
                                        (_%tl122441122466%_
                                         (##cdr _%e122439122461%_)))
                                    (if (gx#stx-null? _%tl122441122466%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd122459%_)
                                              (cons _%expr122432%_ '()))
                                        (_%E122435122447%_))))
                                (_%E122435122447%_)))))
                      (_%E122435122447%_)))))
          (_%E122434122469%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx122385%_)
        (let* ((_%e122386122396%_ _%stx122385%_)
               (_%E122388122400%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122386122396%_)))
               (_%E122387122427%_
                (lambda ()
                  (if (gx#stx-pair? _%e122386122396%_)
                      (let ((_%e122389122404%_
                             (gx#syntax-e _%e122386122396%_)))
                        (let ((_%hd122390122407%_ (##car _%e122389122404%_))
                              (_%tl122391122409%_ (##cdr _%e122389122404%_)))
                          (if (gx#stx-pair? _%tl122391122409%_)
                              (let ((_%e122392122412%_
                                     (gx#syntax-e _%tl122391122409%_)))
                                (let ((_%hd122393122415%_
                                       (##car _%e122392122412%_))
                                      (_%tl122394122417%_
                                       (##cdr _%e122392122412%_)))
                                  (let* ((_%hd122420%_ _%hd122393122415%_)
                                         (_%body122422%_ _%tl122394122417%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd122420%_)
                                        (let ((_%expanders122424%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd122420%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd122420%_
                                              _%expanders122424%_)
                                             (gx#core-expand-local-block
                                              _%stx122385%_
                                              _%body122422%_))
                                           gx#current-expander-context
                                           (let ((__obj123806
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj123806)
                                             __obj123806)))
                                        (_%E122388122400%_)))))
                              (_%E122388122400%_))))
                      (_%E122388122400%_)))))
          (_%E122387122427%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx122334%_)
        (let* ((_%e122335122345%_ _%stx122334%_)
               (_%E122337122349%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122335122345%_)))
               (_%E122336122381%_
                (lambda ()
                  (if (gx#stx-pair? _%e122335122345%_)
                      (let ((_%e122338122353%_
                             (gx#syntax-e _%e122335122345%_)))
                        (let ((_%hd122339122356%_ (##car _%e122338122353%_))
                              (_%tl122340122358%_ (##cdr _%e122338122353%_)))
                          (if (gx#stx-pair? _%tl122340122358%_)
                              (let ((_%e122341122361%_
                                     (gx#syntax-e _%tl122340122358%_)))
                                (let ((_%hd122342122364%_
                                       (##car _%e122341122361%_))
                                      (_%tl122343122366%_
                                       (##cdr _%e122341122361%_)))
                                  (let* ((_%hd122369%_ _%hd122342122364%_)
                                         (_%body122371%_ _%tl122343122366%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd122369%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd122369%_
                                            (make-list
                                             (gx#stx-length _%hd122369%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g122373122376%_
                                                     _%g122374122378%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g122373122376%_
                                               _%g122374122378%_
                                               '#t))
                                            _%hd122369%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd122369%_))
                                           (gx#core-expand-local-block
                                            _%stx122334%_
                                            _%body122371%_))
                                         gx#current-expander-context
                                         (let ((__obj123807
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123807)
                                           __obj123807))
                                        (_%E122337122349%_)))))
                              (_%E122337122349%_))))
                      (_%E122337122349%_)))))
          (_%E122336122381%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx122291%_)
        (if (gx#stx-list? _%stx122291%_)
            (gx#stx-andmap
             (lambda (_%bind122293%_)
               (let* ((_%e122294122304%_ _%bind122293%_)
                      (_%E122296122308%_ (lambda () '#f))
                      (_%E122295122330%_
                       (lambda ()
                         (if (gx#stx-pair? _%e122294122304%_)
                             (let ((_%e122297122312%_
                                    (gx#syntax-e _%e122294122304%_)))
                               (let ((_%hd122298122315%_
                                      (##car _%e122297122312%_))
                                     (_%tl122299122317%_
                                      (##cdr _%e122297122312%_)))
                                 (let ((_%hd122320%_ _%hd122298122315%_))
                                   (if (gx#stx-pair? _%tl122299122317%_)
                                       (let ((_%e122300122322%_
                                              (gx#syntax-e
                                               _%tl122299122317%_)))
                                         (let ((_%hd122301122325%_
                                                (##car _%e122300122322%_))
                                               (_%tl122302122327%_
                                                (##cdr _%e122300122322%_)))
                                           (if (gx#stx-null?
                                                _%tl122302122327%_)
                                               (gx#identifier? _%hd122320%_)
                                               (_%E122296122308%_))))
                                       (_%E122296122308%_)))))
                             (_%E122296122308%_)))))
                 (_%E122295122330%_)))
             _%stx122291%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind122247%_)
        (let* ((_%e122248122258%_ _%bind122247%_)
               (_%E122250122262%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122248122258%_)))
               (_%E122249122287%_
                (lambda ()
                  (if (gx#stx-pair? _%e122248122258%_)
                      (let ((_%e122251122266%_
                             (gx#syntax-e _%e122248122258%_)))
                        (let ((_%hd122252122269%_ (##car _%e122251122266%_))
                              (_%tl122253122271%_ (##cdr _%e122251122266%_)))
                          (if (gx#stx-pair? _%tl122253122271%_)
                              (let ((_%e122254122274%_
                                     (gx#syntax-e _%tl122253122271%_)))
                                (let ((_%hd122255122277%_
                                       (##car _%e122254122274%_))
                                      (_%tl122256122279%_
                                       (##cdr _%e122254122274%_)))
                                  (let ((_%expr122282%_ _%hd122255122277%_))
                                    (if (gx#stx-null? _%tl122256122279%_)
                                        (let ((_g123816_
                                               (gx#core-expand-expression+1
                                                _%expr122282%_)))
                                          (begin
                                            (let ((_g123817_
                                                   (if (##values? _g123816_)
                                                       (##vector-length
                                                        _g123816_)
                                                       1)))
                                              (if (not (##fx= _g123817_ 2))
                                                  (error "Context expects 2 values"
                                                         _g123817_)))
                                            (let ((_%_122284%_
                                                   (##vector-ref _g123816_ 0))
                                                  (_%e122285%_
                                                   (##vector-ref _g123816_ 1)))
                                              _%e122285%_)))
                                        (_%E122250122262%_)))))
                              (_%E122250122262%_))))
                      (_%E122250122262%_)))))
          (_%E122249122287%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind122192%_ _%e122193%_ _%rebind?122194%_)
        (let* ((_%e122195122205%_ _%bind122192%_)
               (_%E122197122209%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122195122205%_)))
               (_%E122196122231%_
                (lambda ()
                  (if (gx#stx-pair? _%e122195122205%_)
                      (let ((_%e122198122213%_
                             (gx#syntax-e _%e122195122205%_)))
                        (let ((_%hd122199122216%_ (##car _%e122198122213%_))
                              (_%tl122200122218%_ (##cdr _%e122198122213%_)))
                          (let ((_%id122221%_ _%hd122199122216%_))
                            (if (gx#stx-pair? _%tl122200122218%_)
                                (let ((_%e122201122223%_
                                       (gx#syntax-e _%tl122200122218%_)))
                                  (let ((_%hd122202122226%_
                                         (##car _%e122201122223%_))
                                        (_%tl122203122228%_
                                         (##cdr _%e122201122223%_)))
                                    (if (gx#stx-null? _%tl122203122228%_)
                                        (gx#core-bind-syntax!__1
                                         _%id122221%_
                                         _%e122193%_
                                         _%rebind?122194%_)
                                        (_%E122197122209%_))))
                                (_%E122197122209%_)))))
                      (_%E122197122209%_)))))
          (_%E122196122231%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind122238%_ _%e122239%_)
        (let ((_%rebind?122241%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind122238%_
           _%e122239%_
           _%rebind?122241%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g123819_
        (let ((_g123818_ (##length _g123819_)))
          (cond ((##fx= _g123818_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g123819_))
                ((##fx= _g123818_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g123819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g123819_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx122150%_)
        (let* ((_%e122151122161%_ _%stx122150%_)
               (_%E122153122165%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122151122161%_)))
               (_%E122152122187%_
                (lambda ()
                  (if (gx#stx-pair? _%e122151122161%_)
                      (let ((_%e122154122169%_
                             (gx#syntax-e _%e122151122161%_)))
                        (let ((_%hd122155122172%_ (##car _%e122154122169%_))
                              (_%tl122156122174%_ (##cdr _%e122154122169%_)))
                          (if (gx#stx-pair? _%tl122156122174%_)
                              (let ((_%e122157122177%_
                                     (gx#syntax-e _%tl122156122174%_)))
                                (let ((_%hd122158122180%_
                                       (##car _%e122157122177%_))
                                      (_%tl122159122182%_
                                       (##cdr _%e122157122177%_)))
                                  (let ((_%expr122185%_ _%hd122158122180%_))
                                    (if (gx#stx-null? _%tl122159122182%_)
                                        (gx#core-expand-expression
                                         _%expr122185%_)
                                        (_%E122153122165%_)))))
                              (_%E122153122165%_))))
                      (_%E122153122165%_)))))
          (_%E122152122187%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx122109%_)
        (let* ((_%e122110122120%_ _%stx122109%_)
               (_%E122112122124%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122110122120%_)))
               (_%E122111122146%_
                (lambda ()
                  (if (gx#stx-pair? _%e122110122120%_)
                      (let ((_%e122113122128%_
                             (gx#syntax-e _%e122110122120%_)))
                        (let ((_%hd122114122131%_ (##car _%e122113122128%_))
                              (_%tl122115122133%_ (##cdr _%e122113122128%_)))
                          (if (gx#stx-pair? _%tl122115122133%_)
                              (let ((_%e122116122136%_
                                     (gx#syntax-e _%tl122115122133%_)))
                                (let ((_%hd122117122139%_
                                       (##car _%e122116122136%_))
                                      (_%tl122118122141%_
                                       (##cdr _%e122116122136%_)))
                                  (let ((_%e122144%_ _%hd122117122139%_))
                                    (if (gx#stx-null? _%tl122118122141%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e122144%_)
                                                     '()))
                                         (gx#stx-source _%stx122109%_))
                                        (_%E122112122124%_)))))
                              (_%E122112122124%_))))
                      (_%E122112122124%_)))))
          (_%E122111122146%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx122068%_)
        (let* ((_%e122069122079%_ _%stx122068%_)
               (_%E122071122083%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122069122079%_)))
               (_%E122070122105%_
                (lambda ()
                  (if (gx#stx-pair? _%e122069122079%_)
                      (let ((_%e122072122087%_
                             (gx#syntax-e _%e122069122079%_)))
                        (let ((_%hd122073122090%_ (##car _%e122072122087%_))
                              (_%tl122074122092%_ (##cdr _%e122072122087%_)))
                          (if (gx#stx-pair? _%tl122074122092%_)
                              (let ((_%e122075122095%_
                                     (gx#syntax-e _%tl122074122092%_)))
                                (let ((_%hd122076122098%_
                                       (##car _%e122075122095%_))
                                      (_%tl122077122100%_
                                       (##cdr _%e122075122095%_)))
                                  (let ((_%e122103%_ _%hd122076122098%_))
                                    (if (gx#stx-null? _%tl122077122100%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e122103%_)
                                                     '()))
                                         (gx#stx-source _%stx122068%_))
                                        (_%E122071122083%_)))))
                              (_%E122071122083%_))))
                      (_%E122071122083%_)))))
          (_%E122070122105%_))))
    (define gx#core-expand-call%
      (lambda (_%stx122025%_)
        (let* ((_%e122026122036%_ _%stx122025%_)
               (_%E122028122040%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122026122036%_)))
               (_%E122027122064%_
                (lambda ()
                  (if (gx#stx-pair? _%e122026122036%_)
                      (let ((_%e122029122044%_
                             (gx#syntax-e _%e122026122036%_)))
                        (let ((_%hd122030122047%_ (##car _%e122029122044%_))
                              (_%tl122031122049%_ (##cdr _%e122029122044%_)))
                          (if (gx#stx-pair? _%tl122031122049%_)
                              (let ((_%e122032122052%_
                                     (gx#syntax-e _%tl122031122049%_)))
                                (let ((_%hd122033122055%_
                                       (##car _%e122032122052%_))
                                      (_%tl122034122057%_
                                       (##cdr _%e122032122052%_)))
                                  (let* ((_%rator122060%_ _%hd122033122055%_)
                                         (_%args122062%_ _%tl122034122057%_))
                                    (if (gx#stx-list? _%args122062%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator122060%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args122062%_))
                                         (gx#stx-source _%stx122025%_))
                                        (_%E122028122040%_)))))
                              (_%E122028122040%_))))
                      (_%E122028122040%_)))))
          (_%E122027122064%_))))
    (define gx#core-expand-if%
      (lambda (_%stx121958%_)
        (let* ((_%e121959121975%_ _%stx121958%_)
               (_%E121961121979%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121959121975%_)))
               (_%E121960122021%_
                (lambda ()
                  (if (gx#stx-pair? _%e121959121975%_)
                      (let ((_%e121962121983%_
                             (gx#syntax-e _%e121959121975%_)))
                        (let ((_%hd121963121986%_ (##car _%e121962121983%_))
                              (_%tl121964121988%_ (##cdr _%e121962121983%_)))
                          (if (gx#stx-pair? _%tl121964121988%_)
                              (let ((_%e121965121991%_
                                     (gx#syntax-e _%tl121964121988%_)))
                                (let ((_%hd121966121994%_
                                       (##car _%e121965121991%_))
                                      (_%tl121967121996%_
                                       (##cdr _%e121965121991%_)))
                                  (let ((_%test121999%_ _%hd121966121994%_))
                                    (if (gx#stx-pair? _%tl121967121996%_)
                                        (let ((_%e121968122001%_
                                               (gx#syntax-e
                                                _%tl121967121996%_)))
                                          (let ((_%hd121969122004%_
                                                 (##car _%e121968122001%_))
                                                (_%tl121970122006%_
                                                 (##cdr _%e121968122001%_)))
                                            (let ((_%K122009%_
                                                   _%hd121969122004%_))
                                              (if (gx#stx-pair?
                                                   _%tl121970122006%_)
                                                  (let ((_%e121971122011%_
                                                         (gx#syntax-e
                                                          _%tl121970122006%_)))
                                                    (let ((_%hd121972122014%_
                                                           (##car _%e121971122011%_))
                                                          (_%tl121973122016%_
                                                           (##cdr _%e121971122011%_)))
                                                      (let ((_%E122019%_
                                                             _%hd121972122014%_))
                                                        (if (gx#stx-null?
                                                             _%tl121973122016%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test121999%_)
                                 (cons (gx#core-expand-expression _%K122009%_)
                                       (cons (gx#core-expand-expression
                                              _%E122019%_)
                                             '()))))
                     (gx#stx-source _%stx121958%_))
                    (_%E121961121979%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121961121979%_)))))
                                        (_%E121961121979%_)))))
                              (_%E121961121979%_))))
                      (_%E121961121979%_)))))
          (_%E121960122021%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx121917%_)
        (let* ((_%e121918121928%_ _%stx121917%_)
               (_%E121920121932%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121918121928%_)))
               (_%E121919121954%_
                (lambda ()
                  (if (gx#stx-pair? _%e121918121928%_)
                      (let ((_%e121921121936%_
                             (gx#syntax-e _%e121918121928%_)))
                        (let ((_%hd121922121939%_ (##car _%e121921121936%_))
                              (_%tl121923121941%_ (##cdr _%e121921121936%_)))
                          (if (gx#stx-pair? _%tl121923121941%_)
                              (let ((_%e121924121944%_
                                     (gx#syntax-e _%tl121923121941%_)))
                                (let ((_%hd121925121947%_
                                       (##car _%e121924121944%_))
                                      (_%tl121926121949%_
                                       (##cdr _%e121924121944%_)))
                                  (let ((_%id121952%_ _%hd121925121947%_))
                                    (if (gx#stx-null? _%tl121926121949%_)
                                        (if (gx#identifier? _%id121952%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id121952%_
                                                          _%stx121917%_)
                                                         '()))
                                             (gx#stx-source _%stx121917%_))
                                            (_%E121920121932%_))
                                        (_%E121920121932%_)))))
                              (_%E121920121932%_))))
                      (_%E121920121932%_)))))
          (_%E121919121954%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx121863%_)
        (let* ((_%e121864121877%_ _%stx121863%_)
               (_%E121866121881%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121864121877%_)))
               (_%E121865121913%_
                (lambda ()
                  (if (gx#stx-pair? _%e121864121877%_)
                      (let ((_%e121867121885%_
                             (gx#syntax-e _%e121864121877%_)))
                        (let ((_%hd121868121888%_ (##car _%e121867121885%_))
                              (_%tl121869121890%_ (##cdr _%e121867121885%_)))
                          (if (gx#stx-pair? _%tl121869121890%_)
                              (let ((_%e121870121893%_
                                     (gx#syntax-e _%tl121869121890%_)))
                                (let ((_%hd121871121896%_
                                       (##car _%e121870121893%_))
                                      (_%tl121872121898%_
                                       (##cdr _%e121870121893%_)))
                                  (let ((_%id121901%_ _%hd121871121896%_))
                                    (if (gx#stx-pair? _%tl121872121898%_)
                                        (let ((_%e121873121903%_
                                               (gx#syntax-e
                                                _%tl121872121898%_)))
                                          (let ((_%hd121874121906%_
                                                 (##car _%e121873121903%_))
                                                (_%tl121875121908%_
                                                 (##cdr _%e121873121903%_)))
                                            (let ((_%expr121911%_
                                                   _%hd121874121906%_))
                                              (if (gx#stx-null?
                                                   _%tl121875121908%_)
                                                  (if (gx#identifier?
                                                       _%id121901%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id121901%_
                            _%stx121863%_)
                           (cons (gx#core-expand-expression _%expr121911%_)
                                 '())))
               (gx#stx-source _%stx121863%_))
              (_%E121866121881%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121866121881%_)))))
                                        (_%E121866121881%_)))))
                              (_%E121866121881%_))))
                      (_%E121866121881%_)))))
          (_%E121865121913%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx121708%_)
        (letrec ((_%generate121710%_
                  (lambda (_%body121740%_)
                    (let _%lp121742%_ ((_%rest121744%_ _%body121740%_)
                                       (_%ns121745%_
                                        (gx#core-context-namespace__0))
                                       (_%r121746%_ '()))
                      (let* ((_%e121747121762%_ _%rest121744%_)
                             (_%E121760121766%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e121747121762%_)))
                             (_%E121756121770%_
                              (lambda ()
                                (if (gx#stx-null? _%e121747121762%_)
                                    (reverse _%r121746%_)
                                    (_%E121760121766%_))))
                             (_%E121749121827%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121747121762%_)
                                    (let ((_%e121757121774%_
                                           (gx#syntax-e _%e121747121762%_)))
                                      (let ((_%hd121758121777%_
                                             (##car _%e121757121774%_))
                                            (_%tl121759121779%_
                                             (##cdr _%e121757121774%_)))
                                        (let* ((_%hd121782%_
                                                _%hd121758121777%_)
                                               (_%rest121784%_
                                                _%tl121759121779%_))
                                          (if (gx#identifier? _%hd121782%_)
                                              (_%lp121742%_
                                               _%rest121784%_
                                               _%ns121745%_
                                               (cons (cons _%hd121782%_
                                                           (cons (if _%ns121745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd121782%_
                              _%ns121745%_
                              '"#"
                              _%hd121782%_)
                             _%hd121782%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r121746%_))
                                              (let* ((_%e121785121795%_
                                                      _%hd121782%_)
                                                     (_%E121787121799%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e121785121795%_)))
                                                     (_%E121786121823%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121785121795%_)
                                                            (let ((_%e121788121803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121785121795%_)))
                      (let ((_%hd121789121806%_ (##car _%e121788121803%_))
                            (_%tl121790121808%_ (##cdr _%e121788121803%_)))
                        (let ((_%id121811%_ _%hd121789121806%_))
                          (if (gx#stx-pair? _%tl121790121808%_)
                              (let ((_%e121791121813%_
                                     (gx#syntax-e _%tl121790121808%_)))
                                (let ((_%hd121792121816%_
                                       (##car _%e121791121813%_))
                                      (_%tl121793121818%_
                                       (##cdr _%e121791121813%_)))
                                  (let ((_%eid121821%_ _%hd121792121816%_))
                                    (if (gx#stx-null? _%tl121793121818%_)
                                        (if (and (gx#identifier? _%id121811%_)
                                                 (gx#identifier?
                                                  _%eid121821%_))
                                            (_%lp121742%_
                                             _%rest121784%_
                                             _%ns121745%_
                                             (cons (cons _%id121811%_
                                                         (cons _%eid121821%_
                                                               '()))
                                                   _%r121746%_))
                                            (_%E121787121799%_))
                                        (_%E121787121799%_)))))
                              (_%E121787121799%_)))))
                    (_%E121787121799%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121786121823%_))))))
                                    (_%E121756121770%_))))
                             (_%E121748121859%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121747121762%_)
                                    (let ((_%e121750121831%_
                                           (gx#syntax-e _%e121747121762%_)))
                                      (let ((_%hd121751121834%_
                                             (##car _%e121750121831%_))
                                            (_%tl121752121836%_
                                             (##cdr _%e121750121831%_)))
                                        (if (eq? (gx#stx-e _%hd121751121834%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl121752121836%_)
                                                (let ((_%e121753121839%_
                                                       (gx#syntax-e
                                                        _%tl121752121836%_)))
                                                  (let ((_%hd121754121842%_
                                                         (##car _%e121753121839%_))
                                                        (_%tl121755121844%_
                                                         (##cdr _%e121753121839%_)))
                                                    (let* ((_%ns121847%_
                                                            _%hd121754121842%_)
                                                           (_%rest121849%_
                                                            _%tl121755121844%_)
                                                           (_%ns121857%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns121847%_)
                        (symbol->string (gx#stx-e _%ns121847%_))
                        (if (or (gx#stx-string? _%ns121847%_)
                                (gx#stx-false? _%ns121847%_))
                            (gx#stx-e _%ns121847%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx121708%_
                             _%ns121847%_)))))
              (_%lp121742%_ _%rest121849%_ _%ns121857%_ _%r121746%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121749121827%_))
                                            (_%E121749121827%_))))
                                    (_%E121749121827%_)))))
                        (_%E121748121859%_))))))
          (let* ((_%e121711121718%_ _%stx121708%_)
                 (_%E121713121722%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121711121718%_)))
                 (_%E121712121736%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121711121718%_)
                        (let ((_%e121714121726%_
                               (gx#syntax-e _%e121711121718%_)))
                          (let ((_%hd121715121729%_ (##car _%e121714121726%_))
                                (_%tl121716121731%_ (##cdr _%e121714121726%_)))
                            (let ((_%body121734%_ _%tl121716121731%_))
                              (if (gx#stx-list? _%body121734%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate121710%_ _%body121734%_))
                                  (_%E121713121722%_)))))
                        (_%E121713121722%_)))))
            (_%E121712121736%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx121654%_)
        (let* ((_%e121655121668%_ _%stx121654%_)
               (_%E121657121672%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121655121668%_)))
               (_%E121656121704%_
                (lambda ()
                  (if (gx#stx-pair? _%e121655121668%_)
                      (let ((_%e121658121676%_
                             (gx#syntax-e _%e121655121668%_)))
                        (let ((_%hd121659121679%_ (##car _%e121658121676%_))
                              (_%tl121660121681%_ (##cdr _%e121658121676%_)))
                          (if (gx#stx-pair? _%tl121660121681%_)
                              (let ((_%e121661121684%_
                                     (gx#syntax-e _%tl121660121681%_)))
                                (let ((_%hd121662121687%_
                                       (##car _%e121661121684%_))
                                      (_%tl121663121689%_
                                       (##cdr _%e121661121684%_)))
                                  (let ((_%hd121692%_ _%hd121662121687%_))
                                    (if (gx#stx-pair? _%tl121663121689%_)
                                        (let ((_%e121664121694%_
                                               (gx#syntax-e
                                                _%tl121663121689%_)))
                                          (let ((_%hd121665121697%_
                                                 (##car _%e121664121694%_))
                                                (_%tl121666121699%_
                                                 (##cdr _%e121664121694%_)))
                                            (let ((_%expr121702%_
                                                   _%hd121665121697%_))
                                              (if (gx#stx-null?
                                                   _%tl121666121699%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd121692%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd121692%_)
                          (cons _%expr121702%_ '())))
              (_%E121657121672%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121657121672%_)))))
                                        (_%E121657121672%_)))))
                              (_%E121657121672%_))))
                      (_%E121657121672%_)))))
          (_%E121656121704%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx121600%_)
        (let* ((_%e121601121614%_ _%stx121600%_)
               (_%E121603121618%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121601121614%_)))
               (_%E121602121650%_
                (lambda ()
                  (if (gx#stx-pair? _%e121601121614%_)
                      (let ((_%e121604121622%_
                             (gx#syntax-e _%e121601121614%_)))
                        (let ((_%hd121605121625%_ (##car _%e121604121622%_))
                              (_%tl121606121627%_ (##cdr _%e121604121622%_)))
                          (if (gx#stx-pair? _%tl121606121627%_)
                              (let ((_%e121607121630%_
                                     (gx#syntax-e _%tl121606121627%_)))
                                (let ((_%hd121608121633%_
                                       (##car _%e121607121630%_))
                                      (_%tl121609121635%_
                                       (##cdr _%e121607121630%_)))
                                  (let ((_%hd121638%_ _%hd121608121633%_))
                                    (if (gx#stx-pair? _%tl121609121635%_)
                                        (let ((_%e121610121640%_
                                               (gx#syntax-e
                                                _%tl121609121635%_)))
                                          (let ((_%hd121611121643%_
                                                 (##car _%e121610121640%_))
                                                (_%tl121612121645%_
                                                 (##cdr _%e121610121640%_)))
                                            (let ((_%expr121648%_
                                                   _%hd121611121643%_))
                                              (if (gx#stx-null?
                                                   _%tl121612121645%_)
                                                  (if (gx#identifier?
                                                       _%hd121638%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd121638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr121648%_ '())))
              (_%E121603121618%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121603121618%_)))))
                                        (_%E121603121618%_)))))
                              (_%E121603121618%_))))
                      (_%E121603121618%_)))))
          (_%E121602121650%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx121546%_)
        (let* ((_%e121547121560%_ _%stx121546%_)
               (_%E121549121564%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121547121560%_)))
               (_%E121548121596%_
                (lambda ()
                  (if (gx#stx-pair? _%e121547121560%_)
                      (let ((_%e121550121568%_
                             (gx#syntax-e _%e121547121560%_)))
                        (let ((_%hd121551121571%_ (##car _%e121550121568%_))
                              (_%tl121552121573%_ (##cdr _%e121550121568%_)))
                          (if (gx#stx-pair? _%tl121552121573%_)
                              (let ((_%e121553121576%_
                                     (gx#syntax-e _%tl121552121573%_)))
                                (let ((_%hd121554121579%_
                                       (##car _%e121553121576%_))
                                      (_%tl121555121581%_
                                       (##cdr _%e121553121576%_)))
                                  (let ((_%id121584%_ _%hd121554121579%_))
                                    (if (gx#stx-pair? _%tl121555121581%_)
                                        (let ((_%e121556121586%_
                                               (gx#syntax-e
                                                _%tl121555121581%_)))
                                          (let ((_%hd121557121589%_
                                                 (##car _%e121556121586%_))
                                                (_%tl121558121591%_
                                                 (##cdr _%e121556121586%_)))
                                            (let ((_%alias-id121594%_
                                                   _%hd121557121589%_))
                                              (if (gx#stx-null?
                                                   _%tl121558121591%_)
                                                  (if (and (gx#identifier?
                                                            _%id121584%_)
                                                           (gx#identifier?
                                                            _%alias-id121594%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id121584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id121594%_ '())))
              (_%E121549121564%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121549121564%_)))))
                                        (_%E121549121564%_)))))
                              (_%E121549121564%_))))
                      (_%E121549121564%_)))))
          (_%E121548121596%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx121503%_)
        (let* ((_%e121504121514%_ _%stx121503%_)
               (_%E121506121518%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121504121514%_)))
               (_%E121505121542%_
                (lambda ()
                  (if (gx#stx-pair? _%e121504121514%_)
                      (let ((_%e121507121522%_
                             (gx#syntax-e _%e121504121514%_)))
                        (let ((_%hd121508121525%_ (##car _%e121507121522%_))
                              (_%tl121509121527%_ (##cdr _%e121507121522%_)))
                          (if (gx#stx-pair? _%tl121509121527%_)
                              (let ((_%e121510121530%_
                                     (gx#syntax-e _%tl121509121527%_)))
                                (let ((_%hd121511121533%_
                                       (##car _%e121510121530%_))
                                      (_%tl121512121535%_
                                       (##cdr _%e121510121530%_)))
                                  (let* ((_%hd121538%_ _%hd121511121533%_)
                                         (_%body121540%_ _%tl121512121535%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd121538%_)
                                             (gx#stx-list? _%body121540%_)
                                             (not (gx#stx-null?
                                                   _%body121540%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd121538%_)
                                         _%body121540%_)
                                        (_%E121506121518%_)))))
                              (_%E121506121518%_))))
                      (_%E121506121518%_)))))
          (_%E121505121542%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx121439%_)
        (letrec ((_%generate121441%_
                  (lambda (_%clause121471%_)
                    (let* ((_%e121472121479%_ _%clause121471%_)
                           (_%E121474121483%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx121439%_
                               _%clause121471%_)))
                           (_%E121473121499%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121472121479%_)
                                  (let ((_%e121475121487%_
                                         (gx#syntax-e _%e121472121479%_)))
                                    (let ((_%hd121476121490%_
                                           (##car _%e121475121487%_))
                                          (_%tl121477121492%_
                                           (##cdr _%e121475121487%_)))
                                      (let* ((_%hd121495%_ _%hd121476121490%_)
                                             (_%body121497%_
                                              _%tl121477121492%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd121495%_)
                                                 (gx#stx-list? _%body121497%_)
                                                 (not (gx#stx-null?
                                                       _%body121497%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd121495%_)
                                                   _%body121497%_)
                                             (gx#stx-source _%clause121471%_))
                                            (_%E121474121483%_)))))
                                  (_%E121474121483%_)))))
                      (_%E121473121499%_)))))
          (let* ((_%e121442121449%_ _%stx121439%_)
                 (_%E121444121453%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121442121449%_)))
                 (_%E121443121467%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121442121449%_)
                        (let ((_%e121445121457%_
                               (gx#syntax-e _%e121442121449%_)))
                          (let ((_%hd121446121460%_ (##car _%e121445121457%_))
                                (_%tl121447121462%_ (##cdr _%e121445121457%_)))
                            (let ((_%clauses121465%_ _%tl121447121462%_))
                              (if (gx#stx-list? _%clauses121465%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate121441%_
                                    _%clauses121465%_))
                                  (_%E121444121453%_)))))
                        (_%E121444121453%_)))))
            (_%E121443121467%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx121340%_ _%form121341%_)
        (letrec ((_%generate121343%_
                  (lambda (_%bind121386%_)
                    (let* ((_%e121387121397%_ _%bind121386%_)
                           (_%E121389121401%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx121340%_
                               _%bind121386%_)))
                           (_%E121388121425%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121387121397%_)
                                  (let ((_%e121390121405%_
                                         (gx#syntax-e _%e121387121397%_)))
                                    (let ((_%hd121391121408%_
                                           (##car _%e121390121405%_))
                                          (_%tl121392121410%_
                                           (##cdr _%e121390121405%_)))
                                      (let ((_%ids121413%_ _%hd121391121408%_))
                                        (if (gx#stx-pair? _%tl121392121410%_)
                                            (let ((_%e121393121415%_
                                                   (gx#syntax-e
                                                    _%tl121392121410%_)))
                                              (let ((_%hd121394121418%_
                                                     (##car _%e121393121415%_))
                                                    (_%tl121395121420%_
                                                     (##cdr _%e121393121415%_)))
                                                (let ((_%expr121423%_
                                                       _%hd121394121418%_))
                                                  (if (gx#stx-null?
                                                       _%tl121395121420%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids121413%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids121413%_)
                        (cons _%expr121423%_ '()))
                  (_%E121389121401%_))
              (_%E121389121401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E121389121401%_)))))
                                  (_%E121389121401%_)))))
                      (_%E121388121425%_)))))
          (let* ((_%e121344121354%_ _%stx121340%_)
                 (_%E121346121358%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121344121354%_)))
                 (_%E121345121382%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121344121354%_)
                        (let ((_%e121347121362%_
                               (gx#syntax-e _%e121344121354%_)))
                          (let ((_%hd121348121365%_ (##car _%e121347121362%_))
                                (_%tl121349121367%_ (##cdr _%e121347121362%_)))
                            (if (gx#stx-pair? _%tl121349121367%_)
                                (let ((_%e121350121370%_
                                       (gx#syntax-e _%tl121349121367%_)))
                                  (let ((_%hd121351121373%_
                                         (##car _%e121350121370%_))
                                        (_%tl121352121375%_
                                         (##cdr _%e121350121370%_)))
                                    (let* ((_%hd121378%_ _%hd121351121373%_)
                                           (_%body121380%_ _%tl121352121375%_))
                                      (if (and (gx#stx-list? _%hd121378%_)
                                               (gx#stx-list? _%body121380%_)
                                               (not (gx#stx-null?
                                                     _%body121380%_)))
                                          (gx#core-cons*
                                           _%form121341%_
                                           (gx#stx-map1
                                            _%generate121343%_
                                            _%hd121378%_)
                                           _%body121380%_)
                                          (_%E121346121358%_)))))
                                (_%E121346121358%_))))
                        (_%E121346121358%_)))))
            (_%E121345121382%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx121432%_)
        (let ((_%form121434%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx121432%_ _%form121434%_))))
    (define gx#macro-expand-let-values
      (lambda _g123821_
        (let ((_g123820_ (##length _g123821_)))
          (cond ((##fx= _g123820_ 1)
                 (apply gx#macro-expand-let-values__0 _g123821_))
                ((##fx= _g123820_ 2)
                 (apply gx#macro-expand-let-values__% _g123821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g123821_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx121337%_)
        (gx#macro-expand-let-values__% _%stx121337%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx121335%_)
        (gx#macro-expand-let-values__% _%stx121335%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx121226%_)
        (let* ((_%e121227121253%_ _%stx121226%_)
               (_%E121239121257%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121227121253%_)))
               (_%E121229121299%_
                (lambda ()
                  (if (gx#stx-pair? _%e121227121253%_)
                      (let ((_%e121240121261%_
                             (gx#syntax-e _%e121227121253%_)))
                        (let ((_%hd121241121264%_ (##car _%e121240121261%_))
                              (_%tl121242121266%_ (##cdr _%e121240121261%_)))
                          (if (gx#stx-pair? _%tl121242121266%_)
                              (let ((_%e121243121269%_
                                     (gx#syntax-e _%tl121242121266%_)))
                                (let ((_%hd121244121272%_
                                       (##car _%e121243121269%_))
                                      (_%tl121245121274%_
                                       (##cdr _%e121243121269%_)))
                                  (let ((_%test121277%_ _%hd121244121272%_))
                                    (if (gx#stx-pair? _%tl121245121274%_)
                                        (let ((_%e121246121279%_
                                               (gx#syntax-e
                                                _%tl121245121274%_)))
                                          (let ((_%hd121247121282%_
                                                 (##car _%e121246121279%_))
                                                (_%tl121248121284%_
                                                 (##cdr _%e121246121279%_)))
                                            (let ((_%K121287%_
                                                   _%hd121247121282%_))
                                              (if (gx#stx-pair?
                                                   _%tl121248121284%_)
                                                  (let ((_%e121249121289%_
                                                         (gx#syntax-e
                                                          _%tl121248121284%_)))
                                                    (let ((_%hd121250121292%_
                                                           (##car _%e121249121289%_))
                                                          (_%tl121251121294%_
                                                           (##cdr _%e121249121289%_)))
                                                      (let ((_%E121297%_
                                                             _%hd121250121292%_))
                                                        (if (gx#stx-null?
                                                             _%tl121251121294%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test121277%_
                                                             _%K121287%_
                                                             _%E121297%_)
                                                            (_%E121239121257%_)))))
                                                  (_%E121239121257%_)))))
                                        (_%E121239121257%_)))))
                              (_%E121239121257%_))))
                      (_%E121239121257%_))))
               (_%E121228121331%_
                (lambda ()
                  (if (gx#stx-pair? _%e121227121253%_)
                      (let ((_%e121230121303%_
                             (gx#syntax-e _%e121227121253%_)))
                        (let ((_%hd121231121306%_ (##car _%e121230121303%_))
                              (_%tl121232121308%_ (##cdr _%e121230121303%_)))
                          (if (gx#stx-pair? _%tl121232121308%_)
                              (let ((_%e121233121311%_
                                     (gx#syntax-e _%tl121232121308%_)))
                                (let ((_%hd121234121314%_
                                       (##car _%e121233121311%_))
                                      (_%tl121235121316%_
                                       (##cdr _%e121233121311%_)))
                                  (let ((_%test121319%_ _%hd121234121314%_))
                                    (if (gx#stx-pair? _%tl121235121316%_)
                                        (let ((_%e121236121321%_
                                               (gx#syntax-e
                                                _%tl121235121316%_)))
                                          (let ((_%hd121237121324%_
                                                 (##car _%e121236121321%_))
                                                (_%tl121238121326%_
                                                 (##cdr _%e121236121321%_)))
                                            (let ((_%K121329%_
                                                   _%hd121237121324%_))
                                              (if (gx#stx-null?
                                                   _%tl121238121326%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test121319%_
                                                   _%K121329%_
                                                   '#!void)
                                                  (_%E121229121299%_)))))
                                        (_%E121229121299%_)))))
                              (_%E121229121299%_))))
                      (_%E121229121299%_)))))
          (_%E121228121331%_))))
    (define gx#free-identifier=?
      (lambda (_%xid121211%_ _%yid121212%_)
        (let ((_%xe121214%_ (gx#resolve-identifier__0 _%xid121211%_))
              (_%ye121215%_ (gx#resolve-identifier__0 _%yid121212%_)))
          (if (and _%xe121214%_ _%ye121215%_)
              (let ((_%$e121218%_ (eq? _%xe121214%_ _%ye121215%_)))
                (if _%$e121218%_
                    _%$e121218%_
                    (if (##structure-instance-of? _%xe121214%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye121215%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe121214%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye121215%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe121214%_ _%ye121215%_)
                  '#f
                  (gx#stx-eq? _%xid121211%_ _%yid121212%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid121192%_ _%yid121193%_)
        (letrec ((_%context121195%_
                  (lambda (_%e121209%_)
                    (if (##structure-direct-instance-of?
                         _%e121209%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e121209%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks121196%_
                  (lambda (_%e121204%_)
                    (if (symbol? _%e121204%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e121204%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e121204%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e121204%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap121197%_
                  (lambda (_%e121202%_)
                    (if (symbol? _%e121202%_)
                        _%e121202%_
                        (gx#syntax-local-unwrap _%e121202%_)))))
          (let ((_%x121199%_ (_%unwrap121197%_ _%xid121192%_))
                (_%y121200%_ (_%unwrap121197%_ _%yid121193%_)))
            (if (gx#stx-eq? _%x121199%_ _%y121200%_)
                (if (eq? (_%context121195%_ _%x121199%_)
                         (_%context121195%_ _%y121200%_))
                    (equal? (_%marks121196%_ _%x121199%_)
                            (_%marks121196%_ _%y121200%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx121190%_)
        (if (gx#identifier? _%stx121190%_)
            (gx#core-identifier=? _%stx121190%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx121188%_)
        (if (gx#identifier? _%stx121188%_)
            (gx#core-identifier=? _%stx121188%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx121131%_ _%where121132%_)
        (let _%lp121134%_ ((_%rest121136%_ (gx#syntax->list _%stx121131%_)))
          (let* ((_%rest121137121145%_ _%rest121136%_)
                 (_%else121139121153%_ (lambda () '#t))
                 (_%K121141121166%_
                  (lambda (_%rest121156%_ _%hd121157%_)
                    (if (gx#identifier? _%hd121157%_)
                        (if (__find (lambda (_%g121159121161%_)
                                      (gx#bound-identifier=?
                                       _%g121159121161%_
                                       _%hd121157%_))
                                    _%rest121156%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where121132%_
                             _%hd121157%_)
                            (_%lp121134%_ _%rest121156%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where121132%_
                         _%hd121157%_)))))
            (if (##pair? _%rest121137121145%_)
                (let ((_%hd121142121169%_ (##car _%rest121137121145%_))
                      (_%tl121143121171%_ (##cdr _%rest121137121145%_)))
                  (let* ((_%hd121174%_ _%hd121142121169%_)
                         (_%rest121176%_ _%tl121143121171%_))
                    (_%K121141121166%_ _%rest121176%_ _%hd121174%_)))
                (_%else121139121153%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx121181%_)
        (let ((_%where121183%_ _%stx121181%_))
          (gx#check-duplicate-identifiers__% _%stx121181%_ _%where121183%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g123823_
        (let ((_g123822_ (##length _g123823_)))
          (cond ((##fx= _g123822_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g123823_))
                ((##fx= _g123822_ 2)
                 (apply gx#check-duplicate-identifiers__% _g123823_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g123823_))))))
    (define gx#core-bind-values?
      (lambda (_%stx121123%_)
        (gx#stx-andmap
         (lambda (_%x121125%_)
           (let ((_%$e121127%_ (gx#identifier? _%x121125%_)))
             (if _%$e121127%_ _%$e121127%_ (gx#stx-false? _%x121125%_))))
         _%stx121123%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx121087%_ _%rebind?121088%_ _%phi121089%_ _%ctx121090%_)
        (gx#stx-for-each1
         (lambda (_%id121092%_)
           (if (gx#identifier? _%id121092%_)
               (gx#core-bind-runtime!__%
                _%id121092%_
                _%rebind?121088%_
                _%phi121089%_
                _%ctx121090%_)
               '#!void))
         _%stx121087%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx121097%_)
        (let* ((_%rebind?121099%_ '#f)
               (_%phi121101%_ (gx#current-expander-phi))
               (_%ctx121103%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx121097%_
           _%rebind?121099%_
           _%phi121101%_
           _%ctx121103%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx121105%_ _%rebind?121106%_)
        (let* ((_%phi121108%_ (gx#current-expander-phi))
               (_%ctx121110%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx121105%_
           _%rebind?121106%_
           _%phi121108%_
           _%ctx121110%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx121112%_ _%rebind?121113%_ _%phi121114%_)
        (let ((_%ctx121116%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx121112%_
           _%rebind?121113%_
           _%phi121114%_
           _%ctx121116%_))))
    (define gx#core-bind-values!
      (lambda _g123825_
        (let ((_g123824_ (##length _g123825_)))
          (cond ((##fx= _g123824_ 1) (apply gx#core-bind-values!__0 _g123825_))
                ((##fx= _g123824_ 2) (apply gx#core-bind-values!__1 _g123825_))
                ((##fx= _g123824_ 3) (apply gx#core-bind-values!__2 _g123825_))
                ((##fx= _g123824_ 4) (apply gx#core-bind-values!__% _g123825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g123825_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx121082%_)
        (gx#stx-map1
         (lambda (_%x121084%_)
           (if (gx#identifier? _%x121084%_)
               (gx#core-quote-syntax__0 _%x121084%_)
               '#f))
         _%stx121082%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx121075%_)
        (if (gx#identifier? _%stx121075%_)
            (let* ((_%bind121077%_ (gx#resolve-identifier__0 _%stx121075%_))
                   (_%$e121079%_ (not _%bind121077%_)))
              (if _%$e121079%_
                  _%$e121079%_
                  (##structure-instance-of?
                   _%bind121077%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id121064%_ _%form121065%_)
        (let ((_%bind121067%_ (gx#resolve-identifier__0 _%id121064%_)))
          (if (##structure-instance-of? _%bind121067%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id121064%_)
              (if (not _%bind121067%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id121064%_)))
                      (gx#core-quote-syntax__0 _%id121064%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form121065%_
                       _%id121064%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form121065%_
                   _%id121064%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id121019%_ _%rebind?121020%_ _%phi121021%_ _%ctx121022%_)
        (let* ((_%key121024%_ (gx#core-identifier-key _%id121019%_))
               (_%eid121026%_
                (gx#make-binding-id__%
                 _%key121024%_
                 '#f
                 _%phi121021%_
                 _%ctx121022%_))
               (_%bind121032%_
                (if (##structure-instance-of?
                     _%ctx121022%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid121026%_
                     _%key121024%_
                     _%phi121021%_
                     _%ctx121022%_)
                    (if (##structure-instance-of?
                         _%ctx121022%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid121026%_
                         _%key121024%_
                         _%phi121021%_)
                        (if (##structure-instance-of?
                             _%ctx121022%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid121026%_
                             _%key121024%_
                             _%phi121021%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid121026%_
                             _%key121024%_
                             _%phi121021%_))))))
          (gx#bind-identifier!__%
           _%id121019%_
           _%bind121032%_
           _%rebind?121020%_
           _%phi121021%_
           _%ctx121022%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id121038%_)
        (let* ((_%rebind?121040%_ '#f)
               (_%phi121042%_ (gx#current-expander-phi))
               (_%ctx121044%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id121038%_
           _%rebind?121040%_
           _%phi121042%_
           _%ctx121044%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id121046%_ _%rebind?121047%_)
        (let* ((_%phi121049%_ (gx#current-expander-phi))
               (_%ctx121051%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id121046%_
           _%rebind?121047%_
           _%phi121049%_
           _%ctx121051%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id121053%_ _%rebind?121054%_ _%phi121055%_)
        (let ((_%ctx121057%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id121053%_
           _%rebind?121054%_
           _%phi121055%_
           _%ctx121057%_))))
    (define gx#core-bind-runtime!
      (lambda _g123827_
        (let ((_g123826_ (##length _g123827_)))
          (cond ((##fx= _g123826_ 1)
                 (apply gx#core-bind-runtime!__0 _g123827_))
                ((##fx= _g123826_ 2)
                 (apply gx#core-bind-runtime!__1 _g123827_))
                ((##fx= _g123826_ 3)
                 (apply gx#core-bind-runtime!__2 _g123827_))
                ((##fx= _g123826_ 4)
                 (apply gx#core-bind-runtime!__% _g123827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g123827_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id120971%_
               _%eid120972%_
               _%rebind?120973%_
               _%phi120974%_
               _%ctx120975%_)
        (let* ((_%key120977%_ (gx#core-identifier-key _%id120971%_))
               (_%bind120982%_
                (if (##structure-instance-of?
                     _%ctx120975%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120972%_
                     _%key120977%_
                     _%phi120974%_
                     _%ctx120975%_)
                    (if (##structure-instance-of?
                         _%ctx120975%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120972%_
                         _%key120977%_
                         _%phi120974%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid120972%_
                         _%key120977%_
                         _%phi120974%_)))))
          (gx#bind-identifier!__%
           _%id120971%_
           _%bind120982%_
           _%rebind?120973%_
           _%phi120974%_
           _%ctx120975%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id120988%_ _%eid120989%_)
        (let* ((_%rebind?120991%_ '#f)
               (_%phi120993%_ (gx#current-expander-phi))
               (_%ctx120995%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120988%_
           _%eid120989%_
           _%rebind?120991%_
           _%phi120993%_
           _%ctx120995%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id120997%_ _%eid120998%_ _%rebind?120999%_)
        (let* ((_%phi121001%_ (gx#current-expander-phi))
               (_%ctx121003%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120997%_
           _%eid120998%_
           _%rebind?120999%_
           _%phi121001%_
           _%ctx121003%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id121005%_ _%eid121006%_ _%rebind?121007%_ _%phi121008%_)
        (let ((_%ctx121010%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id121005%_
           _%eid121006%_
           _%rebind?121007%_
           _%phi121008%_
           _%ctx121010%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g123829_
        (let ((_g123828_ (##length _g123829_)))
          (cond ((##fx= _g123828_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g123829_))
                ((##fx= _g123828_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g123829_))
                ((##fx= _g123828_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g123829_))
                ((##fx= _g123828_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g123829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g123829_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id120931%_
               _%eid120932%_
               _%rebind?120933%_
               _%phi120934%_
               _%ctx120935%_)
        (gx#bind-identifier!__%
         _%id120931%_
         (##structure
          gx#extern-binding::t
          _%eid120932%_
          (gx#core-identifier-key _%id120931%_)
          _%phi120934%_)
         _%rebind?120933%_
         _%phi120934%_
         _%ctx120935%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id120940%_ _%eid120941%_)
        (let* ((_%rebind?120943%_ '#f)
               (_%phi120945%_ (gx#current-expander-phi))
               (_%ctx120947%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120940%_
           _%eid120941%_
           _%rebind?120943%_
           _%phi120945%_
           _%ctx120947%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id120949%_ _%eid120950%_ _%rebind?120951%_)
        (let* ((_%phi120953%_ (gx#current-expander-phi))
               (_%ctx120955%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120949%_
           _%eid120950%_
           _%rebind?120951%_
           _%phi120953%_
           _%ctx120955%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id120957%_ _%eid120958%_ _%rebind?120959%_ _%phi120960%_)
        (let ((_%ctx120962%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120957%_
           _%eid120958%_
           _%rebind?120959%_
           _%phi120960%_
           _%ctx120962%_))))
    (define gx#core-bind-extern!
      (lambda _g123831_
        (let ((_g123830_ (##length _g123831_)))
          (cond ((##fx= _g123830_ 2) (apply gx#core-bind-extern!__0 _g123831_))
                ((##fx= _g123830_ 3) (apply gx#core-bind-extern!__1 _g123831_))
                ((##fx= _g123830_ 4) (apply gx#core-bind-extern!__2 _g123831_))
                ((##fx= _g123830_ 5) (apply gx#core-bind-extern!__% _g123831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g123831_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id120885%_
               _%e120886%_
               _%rebind?120887%_
               _%phi120888%_
               _%ctx120889%_)
        (gx#bind-identifier!__%
         _%id120885%_
         (let ((_%key120894%_ (gx#core-identifier-key _%id120885%_))
               (_%e120895%_
                (if (or (##structure-instance-of? _%e120886%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e120886%_
                         'gx#expander-context::t))
                    _%e120886%_
                    (##structure
                     gx#user-expander::t
                     _%e120886%_
                     _%ctx120889%_
                     _%phi120888%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key120894%_
             '#t
             _%phi120888%_
             _%ctx120889%_)
            _%key120894%_
            _%phi120888%_
            _%e120895%_))
         _%rebind?120887%_
         _%phi120888%_
         _%ctx120889%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id120900%_ _%e120901%_)
        (let* ((_%rebind?120903%_ '#f)
               (_%phi120905%_ (gx#current-expander-phi))
               (_%ctx120907%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120900%_
           _%e120901%_
           _%rebind?120903%_
           _%phi120905%_
           _%ctx120907%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id120909%_ _%e120910%_ _%rebind?120911%_)
        (let* ((_%phi120913%_ (gx#current-expander-phi))
               (_%ctx120915%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120909%_
           _%e120910%_
           _%rebind?120911%_
           _%phi120913%_
           _%ctx120915%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id120917%_ _%e120918%_ _%rebind?120919%_ _%phi120920%_)
        (let ((_%ctx120922%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120917%_
           _%e120918%_
           _%rebind?120919%_
           _%phi120920%_
           _%ctx120922%_))))
    (define gx#core-bind-syntax!
      (lambda _g123833_
        (let ((_g123832_ (##length _g123833_)))
          (cond ((##fx= _g123832_ 2) (apply gx#core-bind-syntax!__0 _g123833_))
                ((##fx= _g123832_ 3) (apply gx#core-bind-syntax!__1 _g123833_))
                ((##fx= _g123832_ 4) (apply gx#core-bind-syntax!__2 _g123833_))
                ((##fx= _g123832_ 5) (apply gx#core-bind-syntax!__% _g123833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g123833_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id120868%_ _%e120869%_ _%rebind?120870%_)
        (gx#core-bind-syntax!__%
         _%id120868%_
         _%e120869%_
         _%rebind?120870%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id120875%_ _%e120876%_)
        (let ((_%rebind?120878%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id120875%_
           _%e120876%_
           _%rebind?120878%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g123835_
        (let ((_g123834_ (##length _g123835_)))
          (cond ((##fx= _g123834_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g123835_))
                ((##fx= _g123834_ 3)
                 (apply gx#core-bind-root-syntax!__% _g123835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g123835_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id120826%_
               _%alias-id120827%_
               _%rebind?120828%_
               _%phi120829%_
               _%ctx120830%_)
        (gx#bind-identifier!__%
         _%id120826%_
         (let ((_%key120832%_ (gx#core-identifier-key _%id120826%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key120832%_
             '#t
             _%phi120829%_
             _%ctx120830%_)
            _%key120832%_
            _%phi120829%_
            _%alias-id120827%_))
         _%rebind?120828%_
         _%phi120829%_
         _%ctx120830%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id120837%_ _%alias-id120838%_)
        (let* ((_%rebind?120840%_ '#f)
               (_%phi120842%_ (gx#current-expander-phi))
               (_%ctx120844%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120837%_
           _%alias-id120838%_
           _%rebind?120840%_
           _%phi120842%_
           _%ctx120844%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id120846%_ _%alias-id120847%_ _%rebind?120848%_)
        (let* ((_%phi120850%_ (gx#current-expander-phi))
               (_%ctx120852%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120846%_
           _%alias-id120847%_
           _%rebind?120848%_
           _%phi120850%_
           _%ctx120852%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id120854%_ _%alias-id120855%_ _%rebind?120856%_ _%phi120857%_)
        (let ((_%ctx120859%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120854%_
           _%alias-id120855%_
           _%rebind?120856%_
           _%phi120857%_
           _%ctx120859%_))))
    (define gx#core-bind-alias!
      (lambda _g123837_
        (let ((_g123836_ (##length _g123837_)))
          (cond ((##fx= _g123836_ 2) (apply gx#core-bind-alias!__0 _g123837_))
                ((##fx= _g123836_ 3) (apply gx#core-bind-alias!__1 _g123837_))
                ((##fx= _g123836_ 4) (apply gx#core-bind-alias!__2 _g123837_))
                ((##fx= _g123836_ 5) (apply gx#core-bind-alias!__% _g123837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g123837_))))))
    (define gx#make-binding-id__%
      (lambda (_%key120776%_ _%syntax?120777%_ _%phi120778%_ _%ctx120779%_)
        (if (uninterned-symbol? _%key120776%_)
            (##gensym 'L)
            (if (pair? _%key120776%_)
                (gensym (##car _%key120776%_))
                (if (##structure-instance-of? _%ctx120779%_ 'gx#top-context::t)
                    (let ((_%ns120784%_
                           (gx#core-context-namespace__% _%ctx120779%_)))
                      (if (and (fxzero? _%phi120778%_) (not _%syntax?120777%_))
                          (if _%ns120784%_
                              (make-symbol__1 _%ns120784%_ '"#" _%key120776%_)
                              _%key120776%_)
                          (if _%syntax?120777%_
                              (make-symbol__1
                               (let ((_%$e120788%_ _%ns120784%_))
                                 (if _%$e120788%_ _%$e120788%_ '""))
                               '"[:"
                               (number->string _%phi120778%_)
                               '":]#"
                               _%key120776%_)
                              (make-symbol__1
                               (let ((_%$e120792%_ _%ns120784%_))
                                 (if _%$e120792%_ _%$e120792%_ '""))
                               '"["
                               (number->string _%phi120778%_)
                               '"]#"
                               _%key120776%_))))
                    (gensym _%key120776%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key120799%_)
        (let* ((_%syntax?120801%_ '#f)
               (_%phi120803%_ (gx#current-expander-phi))
               (_%ctx120805%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120799%_
           _%syntax?120801%_
           _%phi120803%_
           _%ctx120805%_))))
    (define gx#make-binding-id__1
      (lambda (_%key120807%_ _%syntax?120808%_)
        (let* ((_%phi120810%_ (gx#current-expander-phi))
               (_%ctx120812%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120807%_
           _%syntax?120808%_
           _%phi120810%_
           _%ctx120812%_))))
    (define gx#make-binding-id__2
      (lambda (_%key120814%_ _%syntax?120815%_ _%phi120816%_)
        (let ((_%ctx120818%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120814%_
           _%syntax?120815%_
           _%phi120816%_
           _%ctx120818%_))))
    (define gx#make-binding-id
      (lambda _g123839_
        (let ((_g123838_ (##length _g123839_)))
          (cond ((##fx= _g123838_ 1) (apply gx#make-binding-id__0 _g123839_))
                ((##fx= _g123838_ 2) (apply gx#make-binding-id__1 _g123839_))
                ((##fx= _g123838_ 3) (apply gx#make-binding-id__2 _g123839_))
                ((##fx= _g123838_ 4) (apply gx#make-binding-id__% _g123839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g123839_))))))))
