(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1713001407)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx123674%_)
        (letrec ((_%expand-special123676%_
                  (lambda (_%hd123678%_ _%K123679%_ _%rest123680%_ _%r123681%_)
                    (_%K123679%_
                     _%rest123680%_
                     (cons (gx#core-expand-top _%hd123678%_) _%r123681%_)))))
          (gx#core-expand-block__0 _%stx123674%_ _%expand-special123676%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx123427%_)
        (letrec ((_%expand-special123429%_
                  (lambda (_%hd123549%_ _%K123550%_ _%rest123551%_ _%r123552%_)
                    (let* ((_%K123556%_
                            (lambda (_%e123554%_)
                              (_%K123550%_
                               _%rest123551%_
                               (cons _%e123554%_ _%r123552%_))))
                           (_%e123557123586%_ _%hd123549%_)
                           (_%E123581123590%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123557123586%_)))
                           (_%E123577123602%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123557123586%_)
                                  (let ((_%e123582123594%_
                                         (gx#syntax-e _%e123557123586%_)))
                                    (let ((_%hd123583123597%_
                                           (##car _%e123582123594%_))
                                          (_%tl123584123599%_
                                           (##cdr _%e123582123594%_)))
                                      (if (and (gx#identifier?
                                                _%hd123583123597%_)
                                               (gx#core-identifier=?
                                                _%hd123583123597%_
                                                '%#define-runtime))
                                          (_%K123556%_
                                           (gx#core-expand-define-runtime%
                                            _%hd123549%_))
                                          (_%E123581123590%_))))
                                  (_%E123581123590%_))))
                           (_%E123573123614%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123557123586%_)
                                  (let ((_%e123578123606%_
                                         (gx#syntax-e _%e123557123586%_)))
                                    (let ((_%hd123579123609%_
                                           (##car _%e123578123606%_))
                                          (_%tl123580123611%_
                                           (##cdr _%e123578123606%_)))
                                      (if (and (gx#identifier?
                                                _%hd123579123609%_)
                                               (gx#core-identifier=?
                                                _%hd123579123609%_
                                                '%#define-alias))
                                          (_%K123556%_
                                           (gx#core-expand-define-alias%
                                            _%hd123549%_))
                                          (_%E123577123602%_))))
                                  (_%E123577123602%_))))
                           (_%E123563123626%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123557123586%_)
                                  (let ((_%e123574123618%_
                                         (gx#syntax-e _%e123557123586%_)))
                                    (let ((_%hd123575123621%_
                                           (##car _%e123574123618%_))
                                          (_%tl123576123623%_
                                           (##cdr _%e123574123618%_)))
                                      (if (and (gx#identifier?
                                                _%hd123575123621%_)
                                               (gx#core-identifier=?
                                                _%hd123575123621%_
                                                '%#define-syntax))
                                          (_%K123556%_
                                           (gx#core-expand-define-syntax%
                                            _%hd123549%_))
                                          (_%E123573123614%_))))
                                  (_%E123573123614%_))))
                           (_%E123559123658%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123557123586%_)
                                  (let ((_%e123564123630%_
                                         (gx#syntax-e _%e123557123586%_)))
                                    (let ((_%hd123565123633%_
                                           (##car _%e123564123630%_))
                                          (_%tl123566123635%_
                                           (##cdr _%e123564123630%_)))
                                      (if (and (gx#identifier?
                                                _%hd123565123633%_)
                                               (gx#core-identifier=?
                                                _%hd123565123633%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123566123635%_)
                                              (let ((_%e123567123638%_
                                                     (gx#syntax-e
                                                      _%tl123566123635%_)))
                                                (let ((_%hd123568123641%_
                                                       (##car _%e123567123638%_))
                                                      (_%tl123569123643%_
                                                       (##cdr _%e123567123638%_)))
                                                  (let ((_%hd-bind123646%_
                                                         _%hd123568123641%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123569123643%_)
                                                        (let ((_%e123570123648%_
                                                               (gx#syntax-e
                                                                _%tl123569123643%_)))
                                                          (let ((_%hd123571123651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123570123648%_))
                        (_%tl123572123653%_ (##cdr _%e123570123648%_)))
                    (let ((_%expr123656%_ _%hd123571123651%_))
                      (if (gx#stx-null? _%tl123572123653%_)
                          (if (gx#core-bind-values? _%hd-bind123646%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123646%_)
                                (_%K123556%_ _%hd123549%_))
                              (_%E123563123626%_))
                          (_%E123563123626%_)))))
                (_%E123563123626%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123563123626%_))
                                          (_%E123563123626%_))))
                                  (_%E123563123626%_))))
                           (_%E123558123670%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123557123586%_)
                                  (let ((_%e123560123662%_
                                         (gx#syntax-e _%e123557123586%_)))
                                    (let ((_%hd123561123665%_
                                           (##car _%e123560123662%_))
                                          (_%tl123562123667%_
                                           (##cdr _%e123560123662%_)))
                                      (if (and (gx#identifier?
                                                _%hd123561123665%_)
                                               (gx#core-identifier=?
                                                _%hd123561123665%_
                                                '%#begin-syntax))
                                          (_%K123556%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd123549%_))
                                          (_%E123559123658%_))))
                                  (_%E123559123658%_)))))
                      (_%E123558123670%_))))
                 (_%eval-body123430%_
                  (lambda (_%rbody123438%_)
                    (let _%lp123440%_ ((_%rest123442%_ _%rbody123438%_)
                                       (_%body123443%_ '())
                                       (_%ebody123444%_ '()))
                      (let* ((_%rest123445123453%_ _%rest123442%_)
                             (_%else123447123461%_
                              (lambda ()
                                (values _%body123443%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody123444%_)
                                          (gx#stx-source _%stx123427%_))))))
                             (_%K123449123537%_
                              (lambda (_%rest123464%_ _%hd123465%_)
                                (let* ((_%e123466123483%_ _%hd123465%_)
                                       (_%E123478123487%_
                                        (lambda ()
                                          (_%lp123440%_
                                           _%rest123464%_
                                           (cons _%hd123465%_ _%body123443%_)
                                           (cons _%hd123465%_
                                                 _%ebody123444%_))))
                                       (_%E123468123499%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123466123483%_)
                                              (let ((_%e123479123491%_
                                                     (gx#syntax-e
                                                      _%e123466123483%_)))
                                                (let ((_%hd123480123494%_
                                                       (##car _%e123479123491%_))
                                                      (_%tl123481123496%_
                                                       (##cdr _%e123479123491%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123480123494%_)
                                                           (gx#core-identifier=?
                                                            _%hd123480123494%_
                                                            '%#begin-syntax))
                                                      (_%lp123440%_
                                                       _%rest123464%_
                                                       (cons _%hd123465%_
                                                             _%body123443%_)
                                                       _%ebody123444%_)
                                                      (_%E123478123487%_))))
                                              (_%E123478123487%_))))
                                       (_%E123467123533%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123466123483%_)
                                              (let ((_%e123469123503%_
                                                     (gx#syntax-e
                                                      _%e123466123483%_)))
                                                (let ((_%hd123470123506%_
                                                       (##car _%e123469123503%_))
                                                      (_%tl123471123508%_
                                                       (##cdr _%e123469123503%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123470123506%_)
                                                           (gx#core-identifier=?
                                                            _%hd123470123506%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123471123508%_)
                                                          (let ((_%e123472123511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123471123508%_)))
                    (let ((_%hd123473123514%_ (##car _%e123472123511%_))
                          (_%tl123474123516%_ (##cdr _%e123472123511%_)))
                      (let ((_%hd-bind123519%_ _%hd123473123514%_))
                        (if (gx#stx-pair? _%tl123474123516%_)
                            (let ((_%e123475123521%_
                                   (gx#syntax-e _%tl123474123516%_)))
                              (let ((_%hd123476123524%_
                                     (##car _%e123475123521%_))
                                    (_%tl123477123526%_
                                     (##cdr _%e123475123521%_)))
                                (let ((_%expr123529%_ _%hd123476123524%_))
                                  (if (gx#stx-null? _%tl123477123526%_)
                                      (let ((_%ehd123531%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind123519%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr123529%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd123465%_))))
                                        (_%lp123440%_
                                         _%rest123464%_
                                         (cons _%ehd123531%_ _%body123443%_)
                                         (cons _%ehd123531%_ _%ebody123444%_)))
                                      (_%E123468123499%_)))))
                            (_%E123468123499%_)))))
                  (_%E123468123499%_))
              (_%E123468123499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123468123499%_)))))
                                  (_%E123467123533%_)))))
                        (if (##pair? _%rest123445123453%_)
                            (let ((_%hd123450123540%_
                                   (##car _%rest123445123453%_))
                                  (_%tl123451123542%_
                                   (##cdr _%rest123445123453%_)))
                              (let* ((_%hd123545%_ _%hd123450123540%_)
                                     (_%rest123547%_ _%tl123451123542%_))
                                (_%K123449123537%_
                                 _%rest123547%_
                                 _%hd123545%_)))
                            (_%else123447123461%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody123433%_
                     (gx#core-expand-block__1
                      _%stx123427%_
                      _%expand-special123429%_
                      '#f))
                    (_g123697_ (_%eval-body123430%_ _%rbody123433%_)))
               (begin
                 (let ((_g123698_
                        (if (##values? _g123697_)
                            (##vector-length _g123697_)
                            1)))
                   (if (not (##fx= _g123698_ 2))
                       (error "Context expects 2 values" _g123698_)))
                 (let ((_%expanded-body123435%_ (##vector-ref _g123697_ 0))
                       (_%value123436%_ (##vector-ref _g123697_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body123435%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value123436%_ '())))
                    (gx#stx-source _%stx123427%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx123397%_)
        (let* ((_%e123398123405%_ _%stx123397%_)
               (_%E123400123409%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123398123405%_)))
               (_%E123399123423%_
                (lambda ()
                  (if (gx#stx-pair? _%e123398123405%_)
                      (let ((_%e123401123413%_
                             (gx#syntax-e _%e123398123405%_)))
                        (let ((_%hd123402123416%_ (##car _%e123401123413%_))
                              (_%tl123403123418%_ (##cdr _%e123401123413%_)))
                          (let ((_%body123421%_ _%tl123403123418%_))
                            (if (gx#stx-list? _%body123421%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body123421%_)
                                 (gx#stx-source _%stx123397%_))
                                (_%E123400123409%_)))))
                      (_%E123400123409%_)))))
          (_%E123399123423%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx123395%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx123395%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx123341%_)
        (let* ((_%e123342123355%_ _%stx123341%_)
               (_%E123344123359%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123342123355%_)))
               (_%E123343123391%_
                (lambda ()
                  (if (gx#stx-pair? _%e123342123355%_)
                      (let ((_%e123345123363%_
                             (gx#syntax-e _%e123342123355%_)))
                        (let ((_%hd123346123366%_ (##car _%e123345123363%_))
                              (_%tl123347123368%_ (##cdr _%e123345123363%_)))
                          (if (gx#stx-pair? _%tl123347123368%_)
                              (let ((_%e123348123371%_
                                     (gx#syntax-e _%tl123347123368%_)))
                                (let ((_%hd123349123374%_
                                       (##car _%e123348123371%_))
                                      (_%tl123350123376%_
                                       (##cdr _%e123348123371%_)))
                                  (let ((_%ann123379%_ _%hd123349123374%_))
                                    (if (gx#stx-pair? _%tl123350123376%_)
                                        (let ((_%e123351123381%_
                                               (gx#syntax-e
                                                _%tl123350123376%_)))
                                          (let ((_%hd123352123384%_
                                                 (##car _%e123351123381%_))
                                                (_%tl123353123386%_
                                                 (##cdr _%e123351123381%_)))
                                            (let ((_%expr123389%_
                                                   _%hd123352123384%_))
                                              (if (gx#stx-null?
                                                   _%tl123353123386%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann123379%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr123389%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx123341%_))
                                                  (_%E123344123359%_)))))
                                        (_%E123344123359%_)))))
                              (_%E123344123359%_))))
                      (_%E123344123359%_)))))
          (_%E123343123391%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx123065%_ _%body123066%_)
        (letrec ((_%expand-special123068%_
                  (lambda (_%hd123336%_ _%K123337%_ _%rest123338%_ _%r123339%_)
                    (_%K123337%_
                     '()
                     (cons (_%expand-internal123069%_
                            _%hd123336%_
                            _%rest123338%_)
                           _%r123339%_))))
                 (_%expand-internal123069%_
                  (lambda (_%hd123332%_ _%rest123333%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal123071%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd123332%_ _%rest123333%_))
                          (gx#stx-source _%stx123065%_))
                         _%expand-internal-special123070%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj123691
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj123691)
                       __obj123691))))
                 (_%expand-internal-special123070%_
                  (lambda (_%hd123227%_ _%K123228%_ _%rest123229%_ _%r123230%_)
                    (let* ((_%e123231123256%_ _%hd123227%_)
                           (_%E123251123260%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123231123256%_)))
                           (_%E123247123272%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123231123256%_)
                                  (let ((_%e123252123264%_
                                         (gx#syntax-e _%e123231123256%_)))
                                    (let ((_%hd123253123267%_
                                           (##car _%e123252123264%_))
                                          (_%tl123254123269%_
                                           (##cdr _%e123252123264%_)))
                                      (if (and (gx#identifier?
                                                _%hd123253123267%_)
                                               (gx#core-identifier=?
                                                _%hd123253123267%_
                                                '%#declare))
                                          (_%K123228%_
                                           _%rest123229%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd123227%_)
                                                 _%r123230%_))
                                          (_%E123251123260%_))))
                                  (_%E123251123260%_))))
                           (_%E123243123284%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123231123256%_)
                                  (let ((_%e123248123276%_
                                         (gx#syntax-e _%e123231123256%_)))
                                    (let ((_%hd123249123279%_
                                           (##car _%e123248123276%_))
                                          (_%tl123250123281%_
                                           (##cdr _%e123248123276%_)))
                                      (if (and (gx#identifier?
                                                _%hd123249123279%_)
                                               (gx#core-identifier=?
                                                _%hd123249123279%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd123227%_)
                                            (_%K123228%_
                                             _%rest123229%_
                                             _%r123230%_))
                                          (_%E123247123272%_))))
                                  (_%E123247123272%_))))
                           (_%E123233123296%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123231123256%_)
                                  (let ((_%e123244123288%_
                                         (gx#syntax-e _%e123231123256%_)))
                                    (let ((_%hd123245123291%_
                                           (##car _%e123244123288%_))
                                          (_%tl123246123293%_
                                           (##cdr _%e123244123288%_)))
                                      (if (and (gx#identifier?
                                                _%hd123245123291%_)
                                               (gx#core-identifier=?
                                                _%hd123245123291%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd123227%_)
                                            (_%K123228%_
                                             _%rest123229%_
                                             _%r123230%_))
                                          (_%E123243123284%_))))
                                  (_%E123243123284%_))))
                           (_%E123232123328%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123231123256%_)
                                  (let ((_%e123234123300%_
                                         (gx#syntax-e _%e123231123256%_)))
                                    (let ((_%hd123235123303%_
                                           (##car _%e123234123300%_))
                                          (_%tl123236123305%_
                                           (##cdr _%e123234123300%_)))
                                      (if (and (gx#identifier?
                                                _%hd123235123303%_)
                                               (gx#core-identifier=?
                                                _%hd123235123303%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123236123305%_)
                                              (let ((_%e123237123308%_
                                                     (gx#syntax-e
                                                      _%tl123236123305%_)))
                                                (let ((_%hd123238123311%_
                                                       (##car _%e123237123308%_))
                                                      (_%tl123239123313%_
                                                       (##cdr _%e123237123308%_)))
                                                  (let ((_%hd-bind123316%_
                                                         _%hd123238123311%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123239123313%_)
                                                        (let ((_%e123240123318%_
                                                               (gx#syntax-e
                                                                _%tl123239123313%_)))
                                                          (let ((_%hd123241123321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123240123318%_))
                        (_%tl123242123323%_ (##cdr _%e123240123318%_)))
                    (let ((_%expr123326%_ _%hd123241123321%_))
                      (if (gx#stx-null? _%tl123242123323%_)
                          (if (gx#core-bind-values? _%hd-bind123316%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123316%_)
                                (_%K123228%_
                                 _%rest123229%_
                                 (cons _%hd123227%_ _%r123230%_)))
                              (_%E123233123296%_))
                          (_%E123233123296%_)))))
                (_%E123233123296%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123233123296%_))
                                          (_%E123233123296%_))))
                                  (_%E123233123296%_)))))
                      (_%E123232123328%_))))
                 (_%wrap-internal123071%_
                  (lambda (_%rbody123073%_)
                    (let _%lp123075%_ ((_%rest123077%_ _%rbody123073%_)
                                       (_%decls123078%_ '())
                                       (_%bind123079%_ '())
                                       (_%body123080%_ '()))
                      (let* ((_%e123081123088%_ _%rest123077%_)
                             (_%E123083123137%_
                              (lambda ()
                                (let* ((_%body123132%_
                                        (let* ((_%body123091123101%_
                                                _%body123080%_)
                                               (_%else123094123109%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body123080%_)
                                                   (gx#stx-source
                                                    _%stx123065%_)))))
                                          (let ((_%K123099123129%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx123065%_)))
                                                (_%K123096123115%_
                                                 (lambda (_%expr123113%_)
                                                   _%expr123113%_)))
                                            (let ((_%try-match123093123125%_
                                                   (lambda ()
                                                     (if (##pair? _%body123091123101%_)
                                                         (let ((_%tl123098123120%_
                                                                (##cdr _%body123091123101%_))
                                                               (_%hd123097123118%_
                                                                (##car _%body123091123101%_)))
                                                           (if (##null? _%tl123098123120%_)
                                                               (let ((_%expr123123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd123097123118%_))
                         (_%K123096123115%_ _%expr123123%_))
                       (_%else123094123109%_)))
                 (_%else123094123109%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body123091123101%_)
                                                  (_%K123099123129%_)
                                                  (_%try-match123093123125%_))))))
                                       (_%body123134%_
                                        (if (null? _%bind123079%_)
                                            _%body123132%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind123079%_
                                                         (cons _%body123132%_
                                                               '())))
                                             (gx#stx-source _%stx123065%_)))))
                                  (if (null? _%decls123078%_)
                                      _%body123134%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls123078%_
                                                   (cons _%body123134%_ '())))
                                       (gx#stx-source _%stx123065%_))))))
                             (_%E123082123223%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123081123088%_)
                                    (let ((_%e123084123141%_
                                           (gx#syntax-e _%e123081123088%_)))
                                      (let ((_%hd123085123144%_
                                             (##car _%e123084123141%_))
                                            (_%tl123086123146%_
                                             (##cdr _%e123084123141%_)))
                                        (let* ((_%hd123149%_
                                                _%hd123085123144%_)
                                               (_%rest123151%_
                                                _%tl123086123146%_)
                                               (_%e123152123169%_ _%hd123149%_)
                                               (_%E123164123173%_
                                                (lambda ()
                                                  (if (null? _%bind123079%_)
                                                      (_%lp123075%_
                                                       _%rest123151%_
                                                       _%decls123078%_
                                                       _%bind123079%_
                                                       (cons _%hd123149%_
                                                             _%body123080%_))
                                                      (_%lp123075%_
                                                       _%rest123151%_
                                                       _%decls123078%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd123149%_ '()))
                     _%bind123079%_)
               _%body123080%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123154123187%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e123152123169%_)
                                                      (let ((_%e123165123177%_
                                                             (gx#syntax-e
                                                              _%e123152123169%_)))
                                                        (let ((_%hd123166123180%_
                                                               (##car _%e123165123177%_))
                                                              (_%tl123167123182%_
                                                               (##cdr _%e123165123177%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd123166123180%_)
                           (gx#core-identifier=?
                            _%hd123166123180%_
                            '%#declare))
                      (let ((_%xdecls123185%_ _%tl123167123182%_))
                        (_%lp123075%_
                         _%rest123151%_
                         (gx#stx-foldr cons _%decls123078%_ _%xdecls123185%_)
                         _%bind123079%_
                         _%body123080%_))
                      (_%E123164123173%_))))
              (_%E123164123173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123153123219%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e123152123169%_)
                                                      (let ((_%e123155123191%_
                                                             (gx#syntax-e
                                                              _%e123152123169%_)))
                                                        (let ((_%hd123156123194%_
                                                               (##car _%e123155123191%_))
                                                              (_%tl123157123196%_
                                                               (##cdr _%e123155123191%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd123156123194%_)
                           (gx#core-identifier=?
                            _%hd123156123194%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl123157123196%_)
                          (let ((_%e123158123199%_
                                 (gx#syntax-e _%tl123157123196%_)))
                            (let ((_%hd123159123202%_
                                   (##car _%e123158123199%_))
                                  (_%tl123160123204%_
                                   (##cdr _%e123158123199%_)))
                              (let ((_%hd-bind123207%_ _%hd123159123202%_))
                                (if (gx#stx-pair? _%tl123160123204%_)
                                    (let ((_%e123161123209%_
                                           (gx#syntax-e _%tl123160123204%_)))
                                      (let ((_%hd123162123212%_
                                             (##car _%e123161123209%_))
                                            (_%tl123163123214%_
                                             (##cdr _%e123161123209%_)))
                                        (let ((_%expr123217%_
                                               _%hd123162123212%_))
                                          (if (gx#stx-null? _%tl123163123214%_)
                                              (_%lp123075%_
                                               _%rest123151%_
                                               _%decls123078%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind123207%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr123217%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind123079%_)
                                               _%body123080%_)
                                              (_%E123154123187%_)))))
                                    (_%E123154123187%_)))))
                          (_%E123154123187%_))
                      (_%E123154123187%_))))
              (_%E123154123187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E123153123219%_))))
                                    (_%E123083123137%_)))))
                        (_%E123082123223%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body123066%_)
            (gx#stx-source _%stx123065%_))
           _%expand-special123068%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx123003%_)
        (let* ((_%e123004123011%_ _%stx123003%_)
               (_%E123006123015%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123004123011%_)))
               (_%E123005123061%_
                (lambda ()
                  (if (gx#stx-pair? _%e123004123011%_)
                      (let ((_%e123007123019%_
                             (gx#syntax-e _%e123004123011%_)))
                        (let ((_%hd123008123022%_ (##car _%e123007123019%_))
                              (_%tl123009123024%_ (##cdr _%e123007123019%_)))
                          (let ((_%body123027%_ _%tl123009123024%_))
                            (if (gx#stx-list? _%body123027%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl123029%_)
                                     (let* ((_%e123030123037%_ _%decl123029%_)
                                            (_%E123032123041%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e123030123037%_)))
                                            (_%E123031123057%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e123030123037%_)
                                                   (let ((_%e123033123045%_
                                                          (gx#syntax-e
                                                           _%e123030123037%_)))
                                                     (let ((_%hd123034123048%_
                                                            (##car _%e123033123045%_))
                                                           (_%tl123035123050%_
                                                            (##cdr _%e123033123045%_)))
                                                       (let* ((_%head123053%_
                                                               _%hd123034123048%_)
                                                              (_%args123055%_
                                                               _%tl123035123050%_))
                                                         (if (gx#stx-list?
                                                              _%args123055%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl123029%_)
                                                             (_%E123032123041%_)))))
                                                   (_%E123032123041%_)))))
                                       (_%E123031123057%_)))
                                   _%body123027%_))
                                 (gx#stx-source _%stx123003%_))
                                (_%E123006123015%_)))))
                      (_%E123006123015%_)))))
          (_%E123005123061%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx122907%_)
        (let* ((_%e122908122915%_ _%stx122907%_)
               (_%E122910122919%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122908122915%_)))
               (_%E122909122999%_
                (lambda ()
                  (if (gx#stx-pair? _%e122908122915%_)
                      (let ((_%e122911122923%_
                             (gx#syntax-e _%e122908122915%_)))
                        (let ((_%hd122912122926%_ (##car _%e122911122923%_))
                              (_%tl122913122928%_ (##cdr _%e122911122923%_)))
                          (let ((_%body122931%_ _%tl122913122928%_))
                            (let _%lp122933%_ ((_%rest122935%_ _%body122931%_)
                                               (_%r122936%_ '()))
                              (let* ((_%e122937122951%_ _%rest122935%_)
                                     (_%E122949122955%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx122907%_)))
                                     (_%E122939122959%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e122937122951%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r122936%_))
                                             (gx#stx-source _%stx122907%_))
                                            (_%E122949122955%_))))
                                     (_%E122938122995%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e122937122951%_)
                                            (let ((_%e122940122963%_
                                                   (gx#syntax-e
                                                    _%e122937122951%_)))
                                              (let ((_%hd122941122966%_
                                                     (##car _%e122940122963%_))
                                                    (_%tl122942122968%_
                                                     (##cdr _%e122940122963%_)))
                                                (if (gx#stx-pair?
                                                     _%hd122941122966%_)
                                                    (let ((_%e122943122971%_
                                                           (gx#syntax-e
                                                            _%hd122941122966%_)))
                                                      (let ((_%hd122944122974%_
                                                             (##car _%e122943122971%_))
                                                            (_%tl122945122976%_
                                                             (##cdr _%e122943122971%_)))
                                                        (let ((_%id122979%_
                                                               _%hd122944122974%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122945122976%_)
                                                              (let ((_%e122946122981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122945122976%_)))
                        (let ((_%hd122947122984%_ (##car _%e122946122981%_))
                              (_%tl122948122986%_ (##cdr _%e122946122981%_)))
                          (let ((_%eid122989%_ _%hd122947122984%_))
                            (if (gx#stx-null? _%tl122948122986%_)
                                (let ((_%rest122991%_ _%tl122942122968%_))
                                  (if (and (gx#identifier? _%id122979%_)
                                           (gx#identifier? _%eid122989%_))
                                      (let ((_%eid122993%_
                                             (gx#stx-e _%eid122989%_)))
                                        (gx#core-bind-extern!__0
                                         _%id122979%_
                                         _%eid122993%_)
                                        (_%lp122933%_
                                         _%rest122991%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id122979%_)
                                                     (cons _%eid122993%_ '()))
                                               _%r122936%_)))
                                      (_%E122939122959%_)))
                                (_%E122939122959%_)))))
                      (_%E122939122959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122939122959%_))))
                                            (_%E122939122959%_)))))
                                (_%E122938122995%_))))))
                      (_%E122910122919%_)))))
          (_%E122909122999%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx122853%_)
        (let* ((_%e122854122867%_ _%stx122853%_)
               (_%E122856122871%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122854122867%_)))
               (_%E122855122903%_
                (lambda ()
                  (if (gx#stx-pair? _%e122854122867%_)
                      (let ((_%e122857122875%_
                             (gx#syntax-e _%e122854122867%_)))
                        (let ((_%hd122858122878%_ (##car _%e122857122875%_))
                              (_%tl122859122880%_ (##cdr _%e122857122875%_)))
                          (if (gx#stx-pair? _%tl122859122880%_)
                              (let ((_%e122860122883%_
                                     (gx#syntax-e _%tl122859122880%_)))
                                (let ((_%hd122861122886%_
                                       (##car _%e122860122883%_))
                                      (_%tl122862122888%_
                                       (##cdr _%e122860122883%_)))
                                  (let ((_%hd122891%_ _%hd122861122886%_))
                                    (if (gx#stx-pair? _%tl122862122888%_)
                                        (let ((_%e122863122893%_
                                               (gx#syntax-e
                                                _%tl122862122888%_)))
                                          (let ((_%hd122864122896%_
                                                 (##car _%e122863122893%_))
                                                (_%tl122865122898%_
                                                 (##cdr _%e122863122893%_)))
                                            (let ((_%expr122901%_
                                                   _%hd122864122896%_))
                                              (if (gx#stx-null?
                                                   _%tl122865122898%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd122891%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd122891%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd122891%_)
                             (cons (gx#core-expand-expression _%expr122901%_)
                                   '())))
                 (gx#stx-source _%stx122853%_)))
              (_%E122856122871%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122856122871%_)))))
                                        (_%E122856122871%_)))))
                              (_%E122856122871%_))))
                      (_%E122856122871%_)))))
          (_%E122855122903%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx122797%_)
        (let* ((_%e122798122811%_ _%stx122797%_)
               (_%E122800122815%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122798122811%_)))
               (_%E122799122849%_
                (lambda ()
                  (if (gx#stx-pair? _%e122798122811%_)
                      (let ((_%e122801122819%_
                             (gx#syntax-e _%e122798122811%_)))
                        (let ((_%hd122802122822%_ (##car _%e122801122819%_))
                              (_%tl122803122824%_ (##cdr _%e122801122819%_)))
                          (if (gx#stx-pair? _%tl122803122824%_)
                              (let ((_%e122804122827%_
                                     (gx#syntax-e _%tl122803122824%_)))
                                (let ((_%hd122805122830%_
                                       (##car _%e122804122827%_))
                                      (_%tl122806122832%_
                                       (##cdr _%e122804122827%_)))
                                  (let ((_%id122835%_ _%hd122805122830%_))
                                    (if (gx#stx-pair? _%tl122806122832%_)
                                        (let ((_%e122807122837%_
                                               (gx#syntax-e
                                                _%tl122806122832%_)))
                                          (let ((_%hd122808122840%_
                                                 (##car _%e122807122837%_))
                                                (_%tl122809122842%_
                                                 (##cdr _%e122807122837%_)))
                                            (let ((_%binding-id122845%_
                                                   _%hd122808122840%_))
                                              (if (gx#stx-null?
                                                   _%tl122809122842%_)
                                                  (if (and (gx#identifier?
                                                            _%id122835%_)
                                                           (gx#identifier?
                                                            _%binding-id122845%_))
                                                      (let ((_%eid122847%_
                                                             (gx#stx-e
                                                              _%binding-id122845%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id122835%_
                                                         _%eid122847%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122835%_)
                             (cons _%eid122847%_ '())))))
              (_%E122800122815%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122800122815%_)))))
                                        (_%E122800122815%_)))))
                              (_%E122800122815%_))))
                      (_%E122800122815%_)))))
          (_%E122799122849%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx122740%_)
        (let* ((_%e122741122754%_ _%stx122740%_)
               (_%E122743122758%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122741122754%_)))
               (_%E122742122793%_
                (lambda ()
                  (if (gx#stx-pair? _%e122741122754%_)
                      (let ((_%e122744122762%_
                             (gx#syntax-e _%e122741122754%_)))
                        (let ((_%hd122745122765%_ (##car _%e122744122762%_))
                              (_%tl122746122767%_ (##cdr _%e122744122762%_)))
                          (if (gx#stx-pair? _%tl122746122767%_)
                              (let ((_%e122747122770%_
                                     (gx#syntax-e _%tl122746122767%_)))
                                (let ((_%hd122748122773%_
                                       (##car _%e122747122770%_))
                                      (_%tl122749122775%_
                                       (##cdr _%e122747122770%_)))
                                  (let ((_%id122778%_ _%hd122748122773%_))
                                    (if (gx#stx-pair? _%tl122749122775%_)
                                        (let ((_%e122750122780%_
                                               (gx#syntax-e
                                                _%tl122749122775%_)))
                                          (let ((_%hd122751122783%_
                                                 (##car _%e122750122780%_))
                                                (_%tl122752122785%_
                                                 (##cdr _%e122750122780%_)))
                                            (let ((_%expr122788%_
                                                   _%hd122751122783%_))
                                              (if (gx#stx-null?
                                                   _%tl122752122785%_)
                                                  (if (gx#identifier?
                                                       _%id122778%_)
                                                      (let ((_g123699_
                                                             (gx#core-expand-expression+1
                                                              _%expr122788%_)))
                                                        (begin
                                                          (let ((_g123700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g123699_)
                             (##vector-length _g123699_)
                             1)))
                    (if (not (##fx= _g123700_ 2))
                        (error "Context expects 2 values" _g123700_)))
                  (let ((_%e-stx122790%_ (##vector-ref _g123699_ 0))
                        (_%e122791%_ (##vector-ref _g123699_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id122778%_ _%e122791%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id122778%_)
                                   (cons _%e-stx122790%_ '())))
                       (gx#stx-source _%stx122740%_))))))
              (_%E122743122758%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122743122758%_)))))
                                        (_%E122743122758%_)))))
                              (_%E122743122758%_))))
                      (_%E122743122758%_)))))
          (_%E122742122793%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx122684%_)
        (let* ((_%e122685122698%_ _%stx122684%_)
               (_%E122687122702%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122685122698%_)))
               (_%E122686122736%_
                (lambda ()
                  (if (gx#stx-pair? _%e122685122698%_)
                      (let ((_%e122688122706%_
                             (gx#syntax-e _%e122685122698%_)))
                        (let ((_%hd122689122709%_ (##car _%e122688122706%_))
                              (_%tl122690122711%_ (##cdr _%e122688122706%_)))
                          (if (gx#stx-pair? _%tl122690122711%_)
                              (let ((_%e122691122714%_
                                     (gx#syntax-e _%tl122690122711%_)))
                                (let ((_%hd122692122717%_
                                       (##car _%e122691122714%_))
                                      (_%tl122693122719%_
                                       (##cdr _%e122691122714%_)))
                                  (let ((_%id122722%_ _%hd122692122717%_))
                                    (if (gx#stx-pair? _%tl122693122719%_)
                                        (let ((_%e122694122724%_
                                               (gx#syntax-e
                                                _%tl122693122719%_)))
                                          (let ((_%hd122695122727%_
                                                 (##car _%e122694122724%_))
                                                (_%tl122696122729%_
                                                 (##cdr _%e122694122724%_)))
                                            (let ((_%alias-id122732%_
                                                   _%hd122695122727%_))
                                              (if (gx#stx-null?
                                                   _%tl122696122729%_)
                                                  (if (and (gx#identifier?
                                                            _%id122722%_)
                                                           (gx#identifier?
                                                            _%alias-id122732%_))
                                                      (let ((_%alias-id122734%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id122732%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id122722%_
                                                         _%alias-id122734%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122722%_)
                             (cons _%alias-id122734%_ '())))))
              (_%E122687122702%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122687122702%_)))))
                                        (_%E122687122702%_)))))
                              (_%E122687122702%_))))
                      (_%E122687122702%_)))))
          (_%E122686122736%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx122627%_ _%wrap?122628%_)
        (let* ((_%e122629122639%_ _%stx122627%_)
               (_%E122631122643%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122629122639%_)))
               (_%E122630122670%_
                (lambda ()
                  (if (gx#stx-pair? _%e122629122639%_)
                      (let ((_%e122632122647%_
                             (gx#syntax-e _%e122629122639%_)))
                        (let ((_%hd122633122650%_ (##car _%e122632122647%_))
                              (_%tl122634122652%_ (##cdr _%e122632122647%_)))
                          (if (gx#stx-pair? _%tl122634122652%_)
                              (let ((_%e122635122655%_
                                     (gx#syntax-e _%tl122634122652%_)))
                                (let ((_%hd122636122658%_
                                       (##car _%e122635122655%_))
                                      (_%tl122637122660%_
                                       (##cdr _%e122635122655%_)))
                                  (let* ((_%hd122663%_ _%hd122636122658%_)
                                         (_%body122665%_ _%tl122637122660%_))
                                    (if (gx#core-bind-values? _%hd122663%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd122663%_)
                                           (let ((_%body122668%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd122663%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122627%_
                                                               _%body122665%_)
                                                              '()))))
                                             (if _%wrap?122628%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body122668%_)
                                                  (gx#stx-source
                                                   _%stx122627%_))
                                                 _%body122668%_)))
                                         gx#current-expander-context
                                         (let ((__obj123692
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123692)
                                           __obj123692))
                                        (_%E122631122643%_)))))
                              (_%E122631122643%_))))
                      (_%E122631122643%_)))))
          (_%E122630122670%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx122677%_)
        (let ((_%wrap?122679%_ '#t))
          (gx#core-expand-lambda%__% _%stx122677%_ _%wrap?122679%_))))
    (define gx#core-expand-lambda%
      (lambda _g123702_
        (let ((_g123701_ (##length _g123702_)))
          (cond ((##fx= _g123701_ 1)
                 (apply gx#core-expand-lambda%__0 _g123702_))
                ((##fx= _g123701_ 2)
                 (apply gx#core-expand-lambda%__% _g123702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g123702_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx122591%_)
        (let* ((_%e122592122599%_ _%stx122591%_)
               (_%E122594122603%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122592122599%_)))
               (_%E122593122622%_
                (lambda ()
                  (if (gx#stx-pair? _%e122592122599%_)
                      (let ((_%e122595122607%_
                             (gx#syntax-e _%e122592122599%_)))
                        (let ((_%hd122596122610%_ (##car _%e122595122607%_))
                              (_%tl122597122612%_ (##cdr _%e122595122607%_)))
                          (let ((_%clauses122615%_ _%tl122597122612%_))
                            (if (gx#stx-list? _%clauses122615%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause122617%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause122617%_)
                                       (let ((_%$e122619%_
                                              (gx#stx-source
                                               _%clause122617%_)))
                                         (if _%$e122619%_
                                             _%$e122619%_
                                             (gx#stx-source _%stx122591%_))))
                                      '#f))
                                   _%clauses122615%_))
                                 (gx#stx-source _%stx122591%_))
                                (_%E122594122603%_)))))
                      (_%E122594122603%_)))))
          (_%E122593122622%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx122545%_)
        (let* ((_%e122546122556%_ _%stx122545%_)
               (_%E122548122560%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122546122556%_)))
               (_%E122547122587%_
                (lambda ()
                  (if (gx#stx-pair? _%e122546122556%_)
                      (let ((_%e122549122564%_
                             (gx#syntax-e _%e122546122556%_)))
                        (let ((_%hd122550122567%_ (##car _%e122549122564%_))
                              (_%tl122551122569%_ (##cdr _%e122549122564%_)))
                          (if (gx#stx-pair? _%tl122551122569%_)
                              (let ((_%e122552122572%_
                                     (gx#syntax-e _%tl122551122569%_)))
                                (let ((_%hd122553122575%_
                                       (##car _%e122552122572%_))
                                      (_%tl122554122577%_
                                       (##cdr _%e122552122572%_)))
                                  (let* ((_%hd122580%_ _%hd122553122575%_)
                                         (_%body122582%_ _%tl122554122577%_))
                                    (if (gx#core-expand-let-bind? _%hd122580%_)
                                        (let ((_%expressions122584%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd122580%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd122580%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd122580%_
                                                           _%expressions122584%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx122545%_
                         _%body122582%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx122545%_)))
                                           gx#current-expander-context
                                           (let ((__obj123693
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj123693)
                                             __obj123693)))
                                        (_%E122548122560%_)))))
                              (_%E122548122560%_))))
                      (_%E122548122560%_)))))
          (_%E122547122587%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx122490%_ _%form122491%_)
        (let* ((_%e122492122502%_ _%stx122490%_)
               (_%E122494122506%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122492122502%_)))
               (_%E122493122531%_
                (lambda ()
                  (if (gx#stx-pair? _%e122492122502%_)
                      (let ((_%e122495122510%_
                             (gx#syntax-e _%e122492122502%_)))
                        (let ((_%hd122496122513%_ (##car _%e122495122510%_))
                              (_%tl122497122515%_ (##cdr _%e122495122510%_)))
                          (if (gx#stx-pair? _%tl122497122515%_)
                              (let ((_%e122498122518%_
                                     (gx#syntax-e _%tl122497122515%_)))
                                (let ((_%hd122499122521%_
                                       (##car _%e122498122518%_))
                                      (_%tl122500122523%_
                                       (##cdr _%e122498122518%_)))
                                  (let* ((_%hd122526%_ _%hd122499122521%_)
                                         (_%body122528%_ _%tl122500122523%_))
                                    (if (gx#core-expand-let-bind? _%hd122526%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd122526%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form122491%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd122526%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd122526%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122490%_
                                                               _%body122528%_)
                                                              '())))
                                            (gx#stx-source _%stx122490%_)))
                                         gx#current-expander-context
                                         (let ((__obj123694
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123694)
                                           __obj123694))
                                        (_%E122494122506%_)))))
                              (_%E122494122506%_))))
                      (_%E122494122506%_)))))
          (_%E122493122531%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx122538%_)
        (let ((_%form122540%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx122538%_ _%form122540%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g123704_
        (let ((_g123703_ (##length _g123704_)))
          (cond ((##fx= _g123703_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g123704_))
                ((##fx= _g123703_ 2)
                 (apply gx#core-expand-letrec-values%__% _g123704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g123704_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx122487%_)
        (gx#core-expand-letrec-values%__% _%stx122487%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx122444%_)
        (if (gx#stx-list? _%stx122444%_)
            (gx#stx-andmap
             (lambda (_%bind122446%_)
               (let* ((_%e122447122457%_ _%bind122446%_)
                      (_%E122449122461%_ (lambda () '#f))
                      (_%E122448122483%_
                       (lambda ()
                         (if (gx#stx-pair? _%e122447122457%_)
                             (let ((_%e122450122465%_
                                    (gx#syntax-e _%e122447122457%_)))
                               (let ((_%hd122451122468%_
                                      (##car _%e122450122465%_))
                                     (_%tl122452122470%_
                                      (##cdr _%e122450122465%_)))
                                 (let ((_%hd122473%_ _%hd122451122468%_))
                                   (if (gx#stx-pair? _%tl122452122470%_)
                                       (let ((_%e122453122475%_
                                              (gx#syntax-e
                                               _%tl122452122470%_)))
                                         (let ((_%hd122454122478%_
                                                (##car _%e122453122475%_))
                                               (_%tl122455122480%_
                                                (##cdr _%e122453122475%_)))
                                           (if (gx#stx-null?
                                                _%tl122455122480%_)
                                               (gx#core-bind-values?
                                                _%hd122473%_)
                                               (_%E122449122461%_))))
                                       (_%E122449122461%_)))))
                             (_%E122449122461%_)))))
                 (_%E122448122483%_)))
             _%stx122444%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind122403%_)
        (let* ((_%e122404122414%_ _%bind122403%_)
               (_%E122406122418%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122404122414%_)))
               (_%E122405122440%_
                (lambda ()
                  (if (gx#stx-pair? _%e122404122414%_)
                      (let ((_%e122407122422%_
                             (gx#syntax-e _%e122404122414%_)))
                        (let ((_%hd122408122425%_ (##car _%e122407122422%_))
                              (_%tl122409122427%_ (##cdr _%e122407122422%_)))
                          (if (gx#stx-pair? _%tl122409122427%_)
                              (let ((_%e122410122430%_
                                     (gx#syntax-e _%tl122409122427%_)))
                                (let ((_%hd122411122433%_
                                       (##car _%e122410122430%_))
                                      (_%tl122412122435%_
                                       (##cdr _%e122410122430%_)))
                                  (let ((_%expr122438%_ _%hd122411122433%_))
                                    (if (gx#stx-null? _%tl122412122435%_)
                                        (gx#core-expand-expression
                                         _%expr122438%_)
                                        (_%E122406122418%_)))))
                              (_%E122406122418%_))))
                      (_%E122406122418%_)))))
          (_%E122405122440%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind122362%_)
        (let* ((_%e122363122373%_ _%bind122362%_)
               (_%E122365122377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122363122373%_)))
               (_%E122364122399%_
                (lambda ()
                  (if (gx#stx-pair? _%e122363122373%_)
                      (let ((_%e122366122381%_
                             (gx#syntax-e _%e122363122373%_)))
                        (let ((_%hd122367122384%_ (##car _%e122366122381%_))
                              (_%tl122368122386%_ (##cdr _%e122366122381%_)))
                          (let ((_%hd122389%_ _%hd122367122384%_))
                            (if (gx#stx-pair? _%tl122368122386%_)
                                (let ((_%e122369122391%_
                                       (gx#syntax-e _%tl122368122386%_)))
                                  (let ((_%hd122370122394%_
                                         (##car _%e122369122391%_))
                                        (_%tl122371122396%_
                                         (##cdr _%e122369122391%_)))
                                    (if (gx#stx-null? _%tl122371122396%_)
                                        (gx#core-bind-values!__0 _%hd122389%_)
                                        (_%E122365122377%_))))
                                (_%E122365122377%_)))))
                      (_%E122365122377%_)))))
          (_%E122364122399%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind122320%_ _%expr122321%_)
        (let* ((_%e122322122332%_ _%bind122320%_)
               (_%E122324122336%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122322122332%_)))
               (_%E122323122358%_
                (lambda ()
                  (if (gx#stx-pair? _%e122322122332%_)
                      (let ((_%e122325122340%_
                             (gx#syntax-e _%e122322122332%_)))
                        (let ((_%hd122326122343%_ (##car _%e122325122340%_))
                              (_%tl122327122345%_ (##cdr _%e122325122340%_)))
                          (let ((_%hd122348%_ _%hd122326122343%_))
                            (if (gx#stx-pair? _%tl122327122345%_)
                                (let ((_%e122328122350%_
                                       (gx#syntax-e _%tl122327122345%_)))
                                  (let ((_%hd122329122353%_
                                         (##car _%e122328122350%_))
                                        (_%tl122330122355%_
                                         (##cdr _%e122328122350%_)))
                                    (if (gx#stx-null? _%tl122330122355%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd122348%_)
                                              (cons _%expr122321%_ '()))
                                        (_%E122324122336%_))))
                                (_%E122324122336%_)))))
                      (_%E122324122336%_)))))
          (_%E122323122358%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx122274%_)
        (let* ((_%e122275122285%_ _%stx122274%_)
               (_%E122277122289%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122275122285%_)))
               (_%E122276122316%_
                (lambda ()
                  (if (gx#stx-pair? _%e122275122285%_)
                      (let ((_%e122278122293%_
                             (gx#syntax-e _%e122275122285%_)))
                        (let ((_%hd122279122296%_ (##car _%e122278122293%_))
                              (_%tl122280122298%_ (##cdr _%e122278122293%_)))
                          (if (gx#stx-pair? _%tl122280122298%_)
                              (let ((_%e122281122301%_
                                     (gx#syntax-e _%tl122280122298%_)))
                                (let ((_%hd122282122304%_
                                       (##car _%e122281122301%_))
                                      (_%tl122283122306%_
                                       (##cdr _%e122281122301%_)))
                                  (let* ((_%hd122309%_ _%hd122282122304%_)
                                         (_%body122311%_ _%tl122283122306%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd122309%_)
                                        (let ((_%expanders122313%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd122309%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd122309%_
                                              _%expanders122313%_)
                                             (gx#core-expand-local-block
                                              _%stx122274%_
                                              _%body122311%_))
                                           gx#current-expander-context
                                           (let ((__obj123695
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj123695)
                                             __obj123695)))
                                        (_%E122277122289%_)))))
                              (_%E122277122289%_))))
                      (_%E122277122289%_)))))
          (_%E122276122316%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx122223%_)
        (let* ((_%e122224122234%_ _%stx122223%_)
               (_%E122226122238%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122224122234%_)))
               (_%E122225122270%_
                (lambda ()
                  (if (gx#stx-pair? _%e122224122234%_)
                      (let ((_%e122227122242%_
                             (gx#syntax-e _%e122224122234%_)))
                        (let ((_%hd122228122245%_ (##car _%e122227122242%_))
                              (_%tl122229122247%_ (##cdr _%e122227122242%_)))
                          (if (gx#stx-pair? _%tl122229122247%_)
                              (let ((_%e122230122250%_
                                     (gx#syntax-e _%tl122229122247%_)))
                                (let ((_%hd122231122253%_
                                       (##car _%e122230122250%_))
                                      (_%tl122232122255%_
                                       (##cdr _%e122230122250%_)))
                                  (let* ((_%hd122258%_ _%hd122231122253%_)
                                         (_%body122260%_ _%tl122232122255%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd122258%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd122258%_
                                            (make-list
                                             (gx#stx-length _%hd122258%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g122262122265%_
                                                     _%g122263122267%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g122262122265%_
                                               _%g122263122267%_
                                               '#t))
                                            _%hd122258%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd122258%_))
                                           (gx#core-expand-local-block
                                            _%stx122223%_
                                            _%body122260%_))
                                         gx#current-expander-context
                                         (let ((__obj123696
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123696)
                                           __obj123696))
                                        (_%E122226122238%_)))))
                              (_%E122226122238%_))))
                      (_%E122226122238%_)))))
          (_%E122225122270%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx122180%_)
        (if (gx#stx-list? _%stx122180%_)
            (gx#stx-andmap
             (lambda (_%bind122182%_)
               (let* ((_%e122183122193%_ _%bind122182%_)
                      (_%E122185122197%_ (lambda () '#f))
                      (_%E122184122219%_
                       (lambda ()
                         (if (gx#stx-pair? _%e122183122193%_)
                             (let ((_%e122186122201%_
                                    (gx#syntax-e _%e122183122193%_)))
                               (let ((_%hd122187122204%_
                                      (##car _%e122186122201%_))
                                     (_%tl122188122206%_
                                      (##cdr _%e122186122201%_)))
                                 (let ((_%hd122209%_ _%hd122187122204%_))
                                   (if (gx#stx-pair? _%tl122188122206%_)
                                       (let ((_%e122189122211%_
                                              (gx#syntax-e
                                               _%tl122188122206%_)))
                                         (let ((_%hd122190122214%_
                                                (##car _%e122189122211%_))
                                               (_%tl122191122216%_
                                                (##cdr _%e122189122211%_)))
                                           (if (gx#stx-null?
                                                _%tl122191122216%_)
                                               (gx#identifier? _%hd122209%_)
                                               (_%E122185122197%_))))
                                       (_%E122185122197%_)))))
                             (_%E122185122197%_)))))
                 (_%E122184122219%_)))
             _%stx122180%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind122136%_)
        (let* ((_%e122137122147%_ _%bind122136%_)
               (_%E122139122151%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122137122147%_)))
               (_%E122138122176%_
                (lambda ()
                  (if (gx#stx-pair? _%e122137122147%_)
                      (let ((_%e122140122155%_
                             (gx#syntax-e _%e122137122147%_)))
                        (let ((_%hd122141122158%_ (##car _%e122140122155%_))
                              (_%tl122142122160%_ (##cdr _%e122140122155%_)))
                          (if (gx#stx-pair? _%tl122142122160%_)
                              (let ((_%e122143122163%_
                                     (gx#syntax-e _%tl122142122160%_)))
                                (let ((_%hd122144122166%_
                                       (##car _%e122143122163%_))
                                      (_%tl122145122168%_
                                       (##cdr _%e122143122163%_)))
                                  (let ((_%expr122171%_ _%hd122144122166%_))
                                    (if (gx#stx-null? _%tl122145122168%_)
                                        (let ((_g123705_
                                               (gx#core-expand-expression+1
                                                _%expr122171%_)))
                                          (begin
                                            (let ((_g123706_
                                                   (if (##values? _g123705_)
                                                       (##vector-length
                                                        _g123705_)
                                                       1)))
                                              (if (not (##fx= _g123706_ 2))
                                                  (error "Context expects 2 values"
                                                         _g123706_)))
                                            (let ((_%_122173%_
                                                   (##vector-ref _g123705_ 0))
                                                  (_%e122174%_
                                                   (##vector-ref _g123705_ 1)))
                                              _%e122174%_)))
                                        (_%E122139122151%_)))))
                              (_%E122139122151%_))))
                      (_%E122139122151%_)))))
          (_%E122138122176%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind122081%_ _%e122082%_ _%rebind?122083%_)
        (let* ((_%e122084122094%_ _%bind122081%_)
               (_%E122086122098%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122084122094%_)))
               (_%E122085122120%_
                (lambda ()
                  (if (gx#stx-pair? _%e122084122094%_)
                      (let ((_%e122087122102%_
                             (gx#syntax-e _%e122084122094%_)))
                        (let ((_%hd122088122105%_ (##car _%e122087122102%_))
                              (_%tl122089122107%_ (##cdr _%e122087122102%_)))
                          (let ((_%id122110%_ _%hd122088122105%_))
                            (if (gx#stx-pair? _%tl122089122107%_)
                                (let ((_%e122090122112%_
                                       (gx#syntax-e _%tl122089122107%_)))
                                  (let ((_%hd122091122115%_
                                         (##car _%e122090122112%_))
                                        (_%tl122092122117%_
                                         (##cdr _%e122090122112%_)))
                                    (if (gx#stx-null? _%tl122092122117%_)
                                        (gx#core-bind-syntax!__1
                                         _%id122110%_
                                         _%e122082%_
                                         _%rebind?122083%_)
                                        (_%E122086122098%_))))
                                (_%E122086122098%_)))))
                      (_%E122086122098%_)))))
          (_%E122085122120%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind122127%_ _%e122128%_)
        (let ((_%rebind?122130%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind122127%_
           _%e122128%_
           _%rebind?122130%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g123708_
        (let ((_g123707_ (##length _g123708_)))
          (cond ((##fx= _g123707_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g123708_))
                ((##fx= _g123707_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g123708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g123708_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx122039%_)
        (let* ((_%e122040122050%_ _%stx122039%_)
               (_%E122042122054%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122040122050%_)))
               (_%E122041122076%_
                (lambda ()
                  (if (gx#stx-pair? _%e122040122050%_)
                      (let ((_%e122043122058%_
                             (gx#syntax-e _%e122040122050%_)))
                        (let ((_%hd122044122061%_ (##car _%e122043122058%_))
                              (_%tl122045122063%_ (##cdr _%e122043122058%_)))
                          (if (gx#stx-pair? _%tl122045122063%_)
                              (let ((_%e122046122066%_
                                     (gx#syntax-e _%tl122045122063%_)))
                                (let ((_%hd122047122069%_
                                       (##car _%e122046122066%_))
                                      (_%tl122048122071%_
                                       (##cdr _%e122046122066%_)))
                                  (let ((_%expr122074%_ _%hd122047122069%_))
                                    (if (gx#stx-null? _%tl122048122071%_)
                                        (gx#core-expand-expression
                                         _%expr122074%_)
                                        (_%E122042122054%_)))))
                              (_%E122042122054%_))))
                      (_%E122042122054%_)))))
          (_%E122041122076%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx121998%_)
        (let* ((_%e121999122009%_ _%stx121998%_)
               (_%E122001122013%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121999122009%_)))
               (_%E122000122035%_
                (lambda ()
                  (if (gx#stx-pair? _%e121999122009%_)
                      (let ((_%e122002122017%_
                             (gx#syntax-e _%e121999122009%_)))
                        (let ((_%hd122003122020%_ (##car _%e122002122017%_))
                              (_%tl122004122022%_ (##cdr _%e122002122017%_)))
                          (if (gx#stx-pair? _%tl122004122022%_)
                              (let ((_%e122005122025%_
                                     (gx#syntax-e _%tl122004122022%_)))
                                (let ((_%hd122006122028%_
                                       (##car _%e122005122025%_))
                                      (_%tl122007122030%_
                                       (##cdr _%e122005122025%_)))
                                  (let ((_%e122033%_ _%hd122006122028%_))
                                    (if (gx#stx-null? _%tl122007122030%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e122033%_)
                                                     '()))
                                         (gx#stx-source _%stx121998%_))
                                        (_%E122001122013%_)))))
                              (_%E122001122013%_))))
                      (_%E122001122013%_)))))
          (_%E122000122035%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx121957%_)
        (let* ((_%e121958121968%_ _%stx121957%_)
               (_%E121960121972%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121958121968%_)))
               (_%E121959121994%_
                (lambda ()
                  (if (gx#stx-pair? _%e121958121968%_)
                      (let ((_%e121961121976%_
                             (gx#syntax-e _%e121958121968%_)))
                        (let ((_%hd121962121979%_ (##car _%e121961121976%_))
                              (_%tl121963121981%_ (##cdr _%e121961121976%_)))
                          (if (gx#stx-pair? _%tl121963121981%_)
                              (let ((_%e121964121984%_
                                     (gx#syntax-e _%tl121963121981%_)))
                                (let ((_%hd121965121987%_
                                       (##car _%e121964121984%_))
                                      (_%tl121966121989%_
                                       (##cdr _%e121964121984%_)))
                                  (let ((_%e121992%_ _%hd121965121987%_))
                                    (if (gx#stx-null? _%tl121966121989%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e121992%_)
                                                     '()))
                                         (gx#stx-source _%stx121957%_))
                                        (_%E121960121972%_)))))
                              (_%E121960121972%_))))
                      (_%E121960121972%_)))))
          (_%E121959121994%_))))
    (define gx#core-expand-call%
      (lambda (_%stx121914%_)
        (let* ((_%e121915121925%_ _%stx121914%_)
               (_%E121917121929%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121915121925%_)))
               (_%E121916121953%_
                (lambda ()
                  (if (gx#stx-pair? _%e121915121925%_)
                      (let ((_%e121918121933%_
                             (gx#syntax-e _%e121915121925%_)))
                        (let ((_%hd121919121936%_ (##car _%e121918121933%_))
                              (_%tl121920121938%_ (##cdr _%e121918121933%_)))
                          (if (gx#stx-pair? _%tl121920121938%_)
                              (let ((_%e121921121941%_
                                     (gx#syntax-e _%tl121920121938%_)))
                                (let ((_%hd121922121944%_
                                       (##car _%e121921121941%_))
                                      (_%tl121923121946%_
                                       (##cdr _%e121921121941%_)))
                                  (let* ((_%rator121949%_ _%hd121922121944%_)
                                         (_%args121951%_ _%tl121923121946%_))
                                    (if (gx#stx-list? _%args121951%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator121949%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args121951%_))
                                         (gx#stx-source _%stx121914%_))
                                        (_%E121917121929%_)))))
                              (_%E121917121929%_))))
                      (_%E121917121929%_)))))
          (_%E121916121953%_))))
    (define gx#core-expand-if%
      (lambda (_%stx121847%_)
        (let* ((_%e121848121864%_ _%stx121847%_)
               (_%E121850121868%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121848121864%_)))
               (_%E121849121910%_
                (lambda ()
                  (if (gx#stx-pair? _%e121848121864%_)
                      (let ((_%e121851121872%_
                             (gx#syntax-e _%e121848121864%_)))
                        (let ((_%hd121852121875%_ (##car _%e121851121872%_))
                              (_%tl121853121877%_ (##cdr _%e121851121872%_)))
                          (if (gx#stx-pair? _%tl121853121877%_)
                              (let ((_%e121854121880%_
                                     (gx#syntax-e _%tl121853121877%_)))
                                (let ((_%hd121855121883%_
                                       (##car _%e121854121880%_))
                                      (_%tl121856121885%_
                                       (##cdr _%e121854121880%_)))
                                  (let ((_%test121888%_ _%hd121855121883%_))
                                    (if (gx#stx-pair? _%tl121856121885%_)
                                        (let ((_%e121857121890%_
                                               (gx#syntax-e
                                                _%tl121856121885%_)))
                                          (let ((_%hd121858121893%_
                                                 (##car _%e121857121890%_))
                                                (_%tl121859121895%_
                                                 (##cdr _%e121857121890%_)))
                                            (let ((_%K121898%_
                                                   _%hd121858121893%_))
                                              (if (gx#stx-pair?
                                                   _%tl121859121895%_)
                                                  (let ((_%e121860121900%_
                                                         (gx#syntax-e
                                                          _%tl121859121895%_)))
                                                    (let ((_%hd121861121903%_
                                                           (##car _%e121860121900%_))
                                                          (_%tl121862121905%_
                                                           (##cdr _%e121860121900%_)))
                                                      (let ((_%E121908%_
                                                             _%hd121861121903%_))
                                                        (if (gx#stx-null?
                                                             _%tl121862121905%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test121888%_)
                                 (cons (gx#core-expand-expression _%K121898%_)
                                       (cons (gx#core-expand-expression
                                              _%E121908%_)
                                             '()))))
                     (gx#stx-source _%stx121847%_))
                    (_%E121850121868%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121850121868%_)))))
                                        (_%E121850121868%_)))))
                              (_%E121850121868%_))))
                      (_%E121850121868%_)))))
          (_%E121849121910%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx121806%_)
        (let* ((_%e121807121817%_ _%stx121806%_)
               (_%E121809121821%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121807121817%_)))
               (_%E121808121843%_
                (lambda ()
                  (if (gx#stx-pair? _%e121807121817%_)
                      (let ((_%e121810121825%_
                             (gx#syntax-e _%e121807121817%_)))
                        (let ((_%hd121811121828%_ (##car _%e121810121825%_))
                              (_%tl121812121830%_ (##cdr _%e121810121825%_)))
                          (if (gx#stx-pair? _%tl121812121830%_)
                              (let ((_%e121813121833%_
                                     (gx#syntax-e _%tl121812121830%_)))
                                (let ((_%hd121814121836%_
                                       (##car _%e121813121833%_))
                                      (_%tl121815121838%_
                                       (##cdr _%e121813121833%_)))
                                  (let ((_%id121841%_ _%hd121814121836%_))
                                    (if (gx#stx-null? _%tl121815121838%_)
                                        (if (gx#identifier? _%id121841%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id121841%_
                                                          _%stx121806%_)
                                                         '()))
                                             (gx#stx-source _%stx121806%_))
                                            (_%E121809121821%_))
                                        (_%E121809121821%_)))))
                              (_%E121809121821%_))))
                      (_%E121809121821%_)))))
          (_%E121808121843%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx121752%_)
        (let* ((_%e121753121766%_ _%stx121752%_)
               (_%E121755121770%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121753121766%_)))
               (_%E121754121802%_
                (lambda ()
                  (if (gx#stx-pair? _%e121753121766%_)
                      (let ((_%e121756121774%_
                             (gx#syntax-e _%e121753121766%_)))
                        (let ((_%hd121757121777%_ (##car _%e121756121774%_))
                              (_%tl121758121779%_ (##cdr _%e121756121774%_)))
                          (if (gx#stx-pair? _%tl121758121779%_)
                              (let ((_%e121759121782%_
                                     (gx#syntax-e _%tl121758121779%_)))
                                (let ((_%hd121760121785%_
                                       (##car _%e121759121782%_))
                                      (_%tl121761121787%_
                                       (##cdr _%e121759121782%_)))
                                  (let ((_%id121790%_ _%hd121760121785%_))
                                    (if (gx#stx-pair? _%tl121761121787%_)
                                        (let ((_%e121762121792%_
                                               (gx#syntax-e
                                                _%tl121761121787%_)))
                                          (let ((_%hd121763121795%_
                                                 (##car _%e121762121792%_))
                                                (_%tl121764121797%_
                                                 (##cdr _%e121762121792%_)))
                                            (let ((_%expr121800%_
                                                   _%hd121763121795%_))
                                              (if (gx#stx-null?
                                                   _%tl121764121797%_)
                                                  (if (gx#identifier?
                                                       _%id121790%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id121790%_
                            _%stx121752%_)
                           (cons (gx#core-expand-expression _%expr121800%_)
                                 '())))
               (gx#stx-source _%stx121752%_))
              (_%E121755121770%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121755121770%_)))))
                                        (_%E121755121770%_)))))
                              (_%E121755121770%_))))
                      (_%E121755121770%_)))))
          (_%E121754121802%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx121597%_)
        (letrec ((_%generate121599%_
                  (lambda (_%body121629%_)
                    (let _%lp121631%_ ((_%rest121633%_ _%body121629%_)
                                       (_%ns121634%_
                                        (gx#core-context-namespace__0))
                                       (_%r121635%_ '()))
                      (let* ((_%e121636121651%_ _%rest121633%_)
                             (_%E121649121655%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e121636121651%_)))
                             (_%E121645121659%_
                              (lambda ()
                                (if (gx#stx-null? _%e121636121651%_)
                                    (reverse _%r121635%_)
                                    (_%E121649121655%_))))
                             (_%E121638121716%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121636121651%_)
                                    (let ((_%e121646121663%_
                                           (gx#syntax-e _%e121636121651%_)))
                                      (let ((_%hd121647121666%_
                                             (##car _%e121646121663%_))
                                            (_%tl121648121668%_
                                             (##cdr _%e121646121663%_)))
                                        (let* ((_%hd121671%_
                                                _%hd121647121666%_)
                                               (_%rest121673%_
                                                _%tl121648121668%_))
                                          (if (gx#identifier? _%hd121671%_)
                                              (_%lp121631%_
                                               _%rest121673%_
                                               _%ns121634%_
                                               (cons (cons _%hd121671%_
                                                           (cons (if _%ns121634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd121671%_
                              _%ns121634%_
                              '"#"
                              _%hd121671%_)
                             _%hd121671%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r121635%_))
                                              (let* ((_%e121674121684%_
                                                      _%hd121671%_)
                                                     (_%E121676121688%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e121674121684%_)))
                                                     (_%E121675121712%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121674121684%_)
                                                            (let ((_%e121677121692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121674121684%_)))
                      (let ((_%hd121678121695%_ (##car _%e121677121692%_))
                            (_%tl121679121697%_ (##cdr _%e121677121692%_)))
                        (let ((_%id121700%_ _%hd121678121695%_))
                          (if (gx#stx-pair? _%tl121679121697%_)
                              (let ((_%e121680121702%_
                                     (gx#syntax-e _%tl121679121697%_)))
                                (let ((_%hd121681121705%_
                                       (##car _%e121680121702%_))
                                      (_%tl121682121707%_
                                       (##cdr _%e121680121702%_)))
                                  (let ((_%eid121710%_ _%hd121681121705%_))
                                    (if (gx#stx-null? _%tl121682121707%_)
                                        (if (and (gx#identifier? _%id121700%_)
                                                 (gx#identifier?
                                                  _%eid121710%_))
                                            (_%lp121631%_
                                             _%rest121673%_
                                             _%ns121634%_
                                             (cons (cons _%id121700%_
                                                         (cons _%eid121710%_
                                                               '()))
                                                   _%r121635%_))
                                            (_%E121676121688%_))
                                        (_%E121676121688%_)))))
                              (_%E121676121688%_)))))
                    (_%E121676121688%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121675121712%_))))))
                                    (_%E121645121659%_))))
                             (_%E121637121748%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121636121651%_)
                                    (let ((_%e121639121720%_
                                           (gx#syntax-e _%e121636121651%_)))
                                      (let ((_%hd121640121723%_
                                             (##car _%e121639121720%_))
                                            (_%tl121641121725%_
                                             (##cdr _%e121639121720%_)))
                                        (if (eq? (gx#stx-e _%hd121640121723%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl121641121725%_)
                                                (let ((_%e121642121728%_
                                                       (gx#syntax-e
                                                        _%tl121641121725%_)))
                                                  (let ((_%hd121643121731%_
                                                         (##car _%e121642121728%_))
                                                        (_%tl121644121733%_
                                                         (##cdr _%e121642121728%_)))
                                                    (let* ((_%ns121736%_
                                                            _%hd121643121731%_)
                                                           (_%rest121738%_
                                                            _%tl121644121733%_)
                                                           (_%ns121746%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns121736%_)
                        (symbol->string (gx#stx-e _%ns121736%_))
                        (if (or (gx#stx-string? _%ns121736%_)
                                (gx#stx-false? _%ns121736%_))
                            (gx#stx-e _%ns121736%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx121597%_
                             _%ns121736%_)))))
              (_%lp121631%_ _%rest121738%_ _%ns121746%_ _%r121635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121638121716%_))
                                            (_%E121638121716%_))))
                                    (_%E121638121716%_)))))
                        (_%E121637121748%_))))))
          (let* ((_%e121600121607%_ _%stx121597%_)
                 (_%E121602121611%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121600121607%_)))
                 (_%E121601121625%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121600121607%_)
                        (let ((_%e121603121615%_
                               (gx#syntax-e _%e121600121607%_)))
                          (let ((_%hd121604121618%_ (##car _%e121603121615%_))
                                (_%tl121605121620%_ (##cdr _%e121603121615%_)))
                            (let ((_%body121623%_ _%tl121605121620%_))
                              (if (gx#stx-list? _%body121623%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate121599%_ _%body121623%_))
                                  (_%E121602121611%_)))))
                        (_%E121602121611%_)))))
            (_%E121601121625%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx121543%_)
        (let* ((_%e121544121557%_ _%stx121543%_)
               (_%E121546121561%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121544121557%_)))
               (_%E121545121593%_
                (lambda ()
                  (if (gx#stx-pair? _%e121544121557%_)
                      (let ((_%e121547121565%_
                             (gx#syntax-e _%e121544121557%_)))
                        (let ((_%hd121548121568%_ (##car _%e121547121565%_))
                              (_%tl121549121570%_ (##cdr _%e121547121565%_)))
                          (if (gx#stx-pair? _%tl121549121570%_)
                              (let ((_%e121550121573%_
                                     (gx#syntax-e _%tl121549121570%_)))
                                (let ((_%hd121551121576%_
                                       (##car _%e121550121573%_))
                                      (_%tl121552121578%_
                                       (##cdr _%e121550121573%_)))
                                  (let ((_%hd121581%_ _%hd121551121576%_))
                                    (if (gx#stx-pair? _%tl121552121578%_)
                                        (let ((_%e121553121583%_
                                               (gx#syntax-e
                                                _%tl121552121578%_)))
                                          (let ((_%hd121554121586%_
                                                 (##car _%e121553121583%_))
                                                (_%tl121555121588%_
                                                 (##cdr _%e121553121583%_)))
                                            (let ((_%expr121591%_
                                                   _%hd121554121586%_))
                                              (if (gx#stx-null?
                                                   _%tl121555121588%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd121581%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd121581%_)
                          (cons _%expr121591%_ '())))
              (_%E121546121561%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121546121561%_)))))
                                        (_%E121546121561%_)))))
                              (_%E121546121561%_))))
                      (_%E121546121561%_)))))
          (_%E121545121593%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx121489%_)
        (let* ((_%e121490121503%_ _%stx121489%_)
               (_%E121492121507%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121490121503%_)))
               (_%E121491121539%_
                (lambda ()
                  (if (gx#stx-pair? _%e121490121503%_)
                      (let ((_%e121493121511%_
                             (gx#syntax-e _%e121490121503%_)))
                        (let ((_%hd121494121514%_ (##car _%e121493121511%_))
                              (_%tl121495121516%_ (##cdr _%e121493121511%_)))
                          (if (gx#stx-pair? _%tl121495121516%_)
                              (let ((_%e121496121519%_
                                     (gx#syntax-e _%tl121495121516%_)))
                                (let ((_%hd121497121522%_
                                       (##car _%e121496121519%_))
                                      (_%tl121498121524%_
                                       (##cdr _%e121496121519%_)))
                                  (let ((_%hd121527%_ _%hd121497121522%_))
                                    (if (gx#stx-pair? _%tl121498121524%_)
                                        (let ((_%e121499121529%_
                                               (gx#syntax-e
                                                _%tl121498121524%_)))
                                          (let ((_%hd121500121532%_
                                                 (##car _%e121499121529%_))
                                                (_%tl121501121534%_
                                                 (##cdr _%e121499121529%_)))
                                            (let ((_%expr121537%_
                                                   _%hd121500121532%_))
                                              (if (gx#stx-null?
                                                   _%tl121501121534%_)
                                                  (if (gx#identifier?
                                                       _%hd121527%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd121527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr121537%_ '())))
              (_%E121492121507%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121492121507%_)))))
                                        (_%E121492121507%_)))))
                              (_%E121492121507%_))))
                      (_%E121492121507%_)))))
          (_%E121491121539%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx121435%_)
        (let* ((_%e121436121449%_ _%stx121435%_)
               (_%E121438121453%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121436121449%_)))
               (_%E121437121485%_
                (lambda ()
                  (if (gx#stx-pair? _%e121436121449%_)
                      (let ((_%e121439121457%_
                             (gx#syntax-e _%e121436121449%_)))
                        (let ((_%hd121440121460%_ (##car _%e121439121457%_))
                              (_%tl121441121462%_ (##cdr _%e121439121457%_)))
                          (if (gx#stx-pair? _%tl121441121462%_)
                              (let ((_%e121442121465%_
                                     (gx#syntax-e _%tl121441121462%_)))
                                (let ((_%hd121443121468%_
                                       (##car _%e121442121465%_))
                                      (_%tl121444121470%_
                                       (##cdr _%e121442121465%_)))
                                  (let ((_%id121473%_ _%hd121443121468%_))
                                    (if (gx#stx-pair? _%tl121444121470%_)
                                        (let ((_%e121445121475%_
                                               (gx#syntax-e
                                                _%tl121444121470%_)))
                                          (let ((_%hd121446121478%_
                                                 (##car _%e121445121475%_))
                                                (_%tl121447121480%_
                                                 (##cdr _%e121445121475%_)))
                                            (let ((_%alias-id121483%_
                                                   _%hd121446121478%_))
                                              (if (gx#stx-null?
                                                   _%tl121447121480%_)
                                                  (if (and (gx#identifier?
                                                            _%id121473%_)
                                                           (gx#identifier?
                                                            _%alias-id121483%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id121473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id121483%_ '())))
              (_%E121438121453%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121438121453%_)))))
                                        (_%E121438121453%_)))))
                              (_%E121438121453%_))))
                      (_%E121438121453%_)))))
          (_%E121437121485%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx121392%_)
        (let* ((_%e121393121403%_ _%stx121392%_)
               (_%E121395121407%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121393121403%_)))
               (_%E121394121431%_
                (lambda ()
                  (if (gx#stx-pair? _%e121393121403%_)
                      (let ((_%e121396121411%_
                             (gx#syntax-e _%e121393121403%_)))
                        (let ((_%hd121397121414%_ (##car _%e121396121411%_))
                              (_%tl121398121416%_ (##cdr _%e121396121411%_)))
                          (if (gx#stx-pair? _%tl121398121416%_)
                              (let ((_%e121399121419%_
                                     (gx#syntax-e _%tl121398121416%_)))
                                (let ((_%hd121400121422%_
                                       (##car _%e121399121419%_))
                                      (_%tl121401121424%_
                                       (##cdr _%e121399121419%_)))
                                  (let* ((_%hd121427%_ _%hd121400121422%_)
                                         (_%body121429%_ _%tl121401121424%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd121427%_)
                                             (gx#stx-list? _%body121429%_)
                                             (not (gx#stx-null?
                                                   _%body121429%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd121427%_)
                                         _%body121429%_)
                                        (_%E121395121407%_)))))
                              (_%E121395121407%_))))
                      (_%E121395121407%_)))))
          (_%E121394121431%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx121328%_)
        (letrec ((_%generate121330%_
                  (lambda (_%clause121360%_)
                    (let* ((_%e121361121368%_ _%clause121360%_)
                           (_%E121363121372%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx121328%_
                               _%clause121360%_)))
                           (_%E121362121388%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121361121368%_)
                                  (let ((_%e121364121376%_
                                         (gx#syntax-e _%e121361121368%_)))
                                    (let ((_%hd121365121379%_
                                           (##car _%e121364121376%_))
                                          (_%tl121366121381%_
                                           (##cdr _%e121364121376%_)))
                                      (let* ((_%hd121384%_ _%hd121365121379%_)
                                             (_%body121386%_
                                              _%tl121366121381%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd121384%_)
                                                 (gx#stx-list? _%body121386%_)
                                                 (not (gx#stx-null?
                                                       _%body121386%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd121384%_)
                                                   _%body121386%_)
                                             (gx#stx-source _%clause121360%_))
                                            (_%E121363121372%_)))))
                                  (_%E121363121372%_)))))
                      (_%E121362121388%_)))))
          (let* ((_%e121331121338%_ _%stx121328%_)
                 (_%E121333121342%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121331121338%_)))
                 (_%E121332121356%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121331121338%_)
                        (let ((_%e121334121346%_
                               (gx#syntax-e _%e121331121338%_)))
                          (let ((_%hd121335121349%_ (##car _%e121334121346%_))
                                (_%tl121336121351%_ (##cdr _%e121334121346%_)))
                            (let ((_%clauses121354%_ _%tl121336121351%_))
                              (if (gx#stx-list? _%clauses121354%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate121330%_
                                    _%clauses121354%_))
                                  (_%E121333121342%_)))))
                        (_%E121333121342%_)))))
            (_%E121332121356%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx121229%_ _%form121230%_)
        (letrec ((_%generate121232%_
                  (lambda (_%bind121275%_)
                    (let* ((_%e121276121286%_ _%bind121275%_)
                           (_%E121278121290%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx121229%_
                               _%bind121275%_)))
                           (_%E121277121314%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121276121286%_)
                                  (let ((_%e121279121294%_
                                         (gx#syntax-e _%e121276121286%_)))
                                    (let ((_%hd121280121297%_
                                           (##car _%e121279121294%_))
                                          (_%tl121281121299%_
                                           (##cdr _%e121279121294%_)))
                                      (let ((_%ids121302%_ _%hd121280121297%_))
                                        (if (gx#stx-pair? _%tl121281121299%_)
                                            (let ((_%e121282121304%_
                                                   (gx#syntax-e
                                                    _%tl121281121299%_)))
                                              (let ((_%hd121283121307%_
                                                     (##car _%e121282121304%_))
                                                    (_%tl121284121309%_
                                                     (##cdr _%e121282121304%_)))
                                                (let ((_%expr121312%_
                                                       _%hd121283121307%_))
                                                  (if (gx#stx-null?
                                                       _%tl121284121309%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids121302%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids121302%_)
                        (cons _%expr121312%_ '()))
                  (_%E121278121290%_))
              (_%E121278121290%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E121278121290%_)))))
                                  (_%E121278121290%_)))))
                      (_%E121277121314%_)))))
          (let* ((_%e121233121243%_ _%stx121229%_)
                 (_%E121235121247%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121233121243%_)))
                 (_%E121234121271%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121233121243%_)
                        (let ((_%e121236121251%_
                               (gx#syntax-e _%e121233121243%_)))
                          (let ((_%hd121237121254%_ (##car _%e121236121251%_))
                                (_%tl121238121256%_ (##cdr _%e121236121251%_)))
                            (if (gx#stx-pair? _%tl121238121256%_)
                                (let ((_%e121239121259%_
                                       (gx#syntax-e _%tl121238121256%_)))
                                  (let ((_%hd121240121262%_
                                         (##car _%e121239121259%_))
                                        (_%tl121241121264%_
                                         (##cdr _%e121239121259%_)))
                                    (let* ((_%hd121267%_ _%hd121240121262%_)
                                           (_%body121269%_ _%tl121241121264%_))
                                      (if (and (gx#stx-list? _%hd121267%_)
                                               (gx#stx-list? _%body121269%_)
                                               (not (gx#stx-null?
                                                     _%body121269%_)))
                                          (gx#core-cons*
                                           _%form121230%_
                                           (gx#stx-map1
                                            _%generate121232%_
                                            _%hd121267%_)
                                           _%body121269%_)
                                          (_%E121235121247%_)))))
                                (_%E121235121247%_))))
                        (_%E121235121247%_)))))
            (_%E121234121271%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx121321%_)
        (let ((_%form121323%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx121321%_ _%form121323%_))))
    (define gx#macro-expand-let-values
      (lambda _g123710_
        (let ((_g123709_ (##length _g123710_)))
          (cond ((##fx= _g123709_ 1)
                 (apply gx#macro-expand-let-values__0 _g123710_))
                ((##fx= _g123709_ 2)
                 (apply gx#macro-expand-let-values__% _g123710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g123710_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx121226%_)
        (gx#macro-expand-let-values__% _%stx121226%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx121224%_)
        (gx#macro-expand-let-values__% _%stx121224%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx121115%_)
        (let* ((_%e121116121142%_ _%stx121115%_)
               (_%E121128121146%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121116121142%_)))
               (_%E121118121188%_
                (lambda ()
                  (if (gx#stx-pair? _%e121116121142%_)
                      (let ((_%e121129121150%_
                             (gx#syntax-e _%e121116121142%_)))
                        (let ((_%hd121130121153%_ (##car _%e121129121150%_))
                              (_%tl121131121155%_ (##cdr _%e121129121150%_)))
                          (if (gx#stx-pair? _%tl121131121155%_)
                              (let ((_%e121132121158%_
                                     (gx#syntax-e _%tl121131121155%_)))
                                (let ((_%hd121133121161%_
                                       (##car _%e121132121158%_))
                                      (_%tl121134121163%_
                                       (##cdr _%e121132121158%_)))
                                  (let ((_%test121166%_ _%hd121133121161%_))
                                    (if (gx#stx-pair? _%tl121134121163%_)
                                        (let ((_%e121135121168%_
                                               (gx#syntax-e
                                                _%tl121134121163%_)))
                                          (let ((_%hd121136121171%_
                                                 (##car _%e121135121168%_))
                                                (_%tl121137121173%_
                                                 (##cdr _%e121135121168%_)))
                                            (let ((_%K121176%_
                                                   _%hd121136121171%_))
                                              (if (gx#stx-pair?
                                                   _%tl121137121173%_)
                                                  (let ((_%e121138121178%_
                                                         (gx#syntax-e
                                                          _%tl121137121173%_)))
                                                    (let ((_%hd121139121181%_
                                                           (##car _%e121138121178%_))
                                                          (_%tl121140121183%_
                                                           (##cdr _%e121138121178%_)))
                                                      (let ((_%E121186%_
                                                             _%hd121139121181%_))
                                                        (if (gx#stx-null?
                                                             _%tl121140121183%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test121166%_
                                                             _%K121176%_
                                                             _%E121186%_)
                                                            (_%E121128121146%_)))))
                                                  (_%E121128121146%_)))))
                                        (_%E121128121146%_)))))
                              (_%E121128121146%_))))
                      (_%E121128121146%_))))
               (_%E121117121220%_
                (lambda ()
                  (if (gx#stx-pair? _%e121116121142%_)
                      (let ((_%e121119121192%_
                             (gx#syntax-e _%e121116121142%_)))
                        (let ((_%hd121120121195%_ (##car _%e121119121192%_))
                              (_%tl121121121197%_ (##cdr _%e121119121192%_)))
                          (if (gx#stx-pair? _%tl121121121197%_)
                              (let ((_%e121122121200%_
                                     (gx#syntax-e _%tl121121121197%_)))
                                (let ((_%hd121123121203%_
                                       (##car _%e121122121200%_))
                                      (_%tl121124121205%_
                                       (##cdr _%e121122121200%_)))
                                  (let ((_%test121208%_ _%hd121123121203%_))
                                    (if (gx#stx-pair? _%tl121124121205%_)
                                        (let ((_%e121125121210%_
                                               (gx#syntax-e
                                                _%tl121124121205%_)))
                                          (let ((_%hd121126121213%_
                                                 (##car _%e121125121210%_))
                                                (_%tl121127121215%_
                                                 (##cdr _%e121125121210%_)))
                                            (let ((_%K121218%_
                                                   _%hd121126121213%_))
                                              (if (gx#stx-null?
                                                   _%tl121127121215%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test121208%_
                                                   _%K121218%_
                                                   '#!void)
                                                  (_%E121118121188%_)))))
                                        (_%E121118121188%_)))))
                              (_%E121118121188%_))))
                      (_%E121118121188%_)))))
          (_%E121117121220%_))))
    (define gx#free-identifier=?
      (lambda (_%xid121100%_ _%yid121101%_)
        (let ((_%xe121103%_ (gx#resolve-identifier__0 _%xid121100%_))
              (_%ye121104%_ (gx#resolve-identifier__0 _%yid121101%_)))
          (if (and _%xe121103%_ _%ye121104%_)
              (let ((_%$e121107%_ (eq? _%xe121103%_ _%ye121104%_)))
                (if _%$e121107%_
                    _%$e121107%_
                    (if (##structure-instance-of? _%xe121103%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye121104%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe121103%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye121104%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe121103%_ _%ye121104%_)
                  '#f
                  (gx#stx-eq? _%xid121100%_ _%yid121101%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid121081%_ _%yid121082%_)
        (letrec ((_%context121084%_
                  (lambda (_%e121098%_)
                    (if (##structure-direct-instance-of?
                         _%e121098%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e121098%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks121085%_
                  (lambda (_%e121093%_)
                    (if (symbol? _%e121093%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e121093%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e121093%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e121093%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap121086%_
                  (lambda (_%e121091%_)
                    (if (symbol? _%e121091%_)
                        _%e121091%_
                        (gx#syntax-local-unwrap _%e121091%_)))))
          (let ((_%x121088%_ (_%unwrap121086%_ _%xid121081%_))
                (_%y121089%_ (_%unwrap121086%_ _%yid121082%_)))
            (if (gx#stx-eq? _%x121088%_ _%y121089%_)
                (if (eq? (_%context121084%_ _%x121088%_)
                         (_%context121084%_ _%y121089%_))
                    (equal? (_%marks121085%_ _%x121088%_)
                            (_%marks121085%_ _%y121089%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx121079%_)
        (if (gx#identifier? _%stx121079%_)
            (gx#core-identifier=? _%stx121079%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx121077%_)
        (if (gx#identifier? _%stx121077%_)
            (gx#core-identifier=? _%stx121077%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx121020%_ _%where121021%_)
        (let _%lp121023%_ ((_%rest121025%_ (gx#syntax->list _%stx121020%_)))
          (let* ((_%rest121026121034%_ _%rest121025%_)
                 (_%else121028121042%_ (lambda () '#t))
                 (_%K121030121055%_
                  (lambda (_%rest121045%_ _%hd121046%_)
                    (if (gx#identifier? _%hd121046%_)
                        (if (__find (lambda (_%g121048121050%_)
                                      (gx#bound-identifier=?
                                       _%g121048121050%_
                                       _%hd121046%_))
                                    _%rest121045%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where121021%_
                             _%hd121046%_)
                            (_%lp121023%_ _%rest121045%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where121021%_
                         _%hd121046%_)))))
            (if (##pair? _%rest121026121034%_)
                (let ((_%hd121031121058%_ (##car _%rest121026121034%_))
                      (_%tl121032121060%_ (##cdr _%rest121026121034%_)))
                  (let* ((_%hd121063%_ _%hd121031121058%_)
                         (_%rest121065%_ _%tl121032121060%_))
                    (_%K121030121055%_ _%rest121065%_ _%hd121063%_)))
                (_%else121028121042%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx121070%_)
        (let ((_%where121072%_ _%stx121070%_))
          (gx#check-duplicate-identifiers__% _%stx121070%_ _%where121072%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g123712_
        (let ((_g123711_ (##length _g123712_)))
          (cond ((##fx= _g123711_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g123712_))
                ((##fx= _g123711_ 2)
                 (apply gx#check-duplicate-identifiers__% _g123712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g123712_))))))
    (define gx#core-bind-values?
      (lambda (_%stx121012%_)
        (gx#stx-andmap
         (lambda (_%x121014%_)
           (let ((_%$e121016%_ (gx#identifier? _%x121014%_)))
             (if _%$e121016%_ _%$e121016%_ (gx#stx-false? _%x121014%_))))
         _%stx121012%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx120976%_ _%rebind?120977%_ _%phi120978%_ _%ctx120979%_)
        (gx#stx-for-each1
         (lambda (_%id120981%_)
           (if (gx#identifier? _%id120981%_)
               (gx#core-bind-runtime!__%
                _%id120981%_
                _%rebind?120977%_
                _%phi120978%_
                _%ctx120979%_)
               '#!void))
         _%stx120976%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx120986%_)
        (let* ((_%rebind?120988%_ '#f)
               (_%phi120990%_ (gx#current-expander-phi))
               (_%ctx120992%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120986%_
           _%rebind?120988%_
           _%phi120990%_
           _%ctx120992%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx120994%_ _%rebind?120995%_)
        (let* ((_%phi120997%_ (gx#current-expander-phi))
               (_%ctx120999%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120994%_
           _%rebind?120995%_
           _%phi120997%_
           _%ctx120999%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx121001%_ _%rebind?121002%_ _%phi121003%_)
        (let ((_%ctx121005%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx121001%_
           _%rebind?121002%_
           _%phi121003%_
           _%ctx121005%_))))
    (define gx#core-bind-values!
      (lambda _g123714_
        (let ((_g123713_ (##length _g123714_)))
          (cond ((##fx= _g123713_ 1) (apply gx#core-bind-values!__0 _g123714_))
                ((##fx= _g123713_ 2) (apply gx#core-bind-values!__1 _g123714_))
                ((##fx= _g123713_ 3) (apply gx#core-bind-values!__2 _g123714_))
                ((##fx= _g123713_ 4) (apply gx#core-bind-values!__% _g123714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g123714_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx120971%_)
        (gx#stx-map1
         (lambda (_%x120973%_)
           (if (gx#identifier? _%x120973%_)
               (gx#core-quote-syntax__0 _%x120973%_)
               '#f))
         _%stx120971%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx120964%_)
        (if (gx#identifier? _%stx120964%_)
            (let* ((_%bind120966%_ (gx#resolve-identifier__0 _%stx120964%_))
                   (_%$e120968%_ (not _%bind120966%_)))
              (if _%$e120968%_
                  _%$e120968%_
                  (##structure-instance-of?
                   _%bind120966%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id120953%_ _%form120954%_)
        (let ((_%bind120956%_ (gx#resolve-identifier__0 _%id120953%_)))
          (if (##structure-instance-of? _%bind120956%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id120953%_)
              (if (not _%bind120956%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id120953%_)))
                      (gx#core-quote-syntax__0 _%id120953%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form120954%_
                       _%id120953%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form120954%_
                   _%id120953%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id120908%_ _%rebind?120909%_ _%phi120910%_ _%ctx120911%_)
        (let* ((_%key120913%_ (gx#core-identifier-key _%id120908%_))
               (_%eid120915%_
                (gx#make-binding-id__%
                 _%key120913%_
                 '#f
                 _%phi120910%_
                 _%ctx120911%_))
               (_%bind120921%_
                (if (##structure-instance-of?
                     _%ctx120911%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120915%_
                     _%key120913%_
                     _%phi120910%_
                     _%ctx120911%_)
                    (if (##structure-instance-of?
                         _%ctx120911%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120915%_
                         _%key120913%_
                         _%phi120910%_)
                        (if (##structure-instance-of?
                             _%ctx120911%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid120915%_
                             _%key120913%_
                             _%phi120910%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid120915%_
                             _%key120913%_
                             _%phi120910%_))))))
          (gx#bind-identifier!__%
           _%id120908%_
           _%bind120921%_
           _%rebind?120909%_
           _%phi120910%_
           _%ctx120911%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id120927%_)
        (let* ((_%rebind?120929%_ '#f)
               (_%phi120931%_ (gx#current-expander-phi))
               (_%ctx120933%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120927%_
           _%rebind?120929%_
           _%phi120931%_
           _%ctx120933%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id120935%_ _%rebind?120936%_)
        (let* ((_%phi120938%_ (gx#current-expander-phi))
               (_%ctx120940%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120935%_
           _%rebind?120936%_
           _%phi120938%_
           _%ctx120940%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id120942%_ _%rebind?120943%_ _%phi120944%_)
        (let ((_%ctx120946%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120942%_
           _%rebind?120943%_
           _%phi120944%_
           _%ctx120946%_))))
    (define gx#core-bind-runtime!
      (lambda _g123716_
        (let ((_g123715_ (##length _g123716_)))
          (cond ((##fx= _g123715_ 1)
                 (apply gx#core-bind-runtime!__0 _g123716_))
                ((##fx= _g123715_ 2)
                 (apply gx#core-bind-runtime!__1 _g123716_))
                ((##fx= _g123715_ 3)
                 (apply gx#core-bind-runtime!__2 _g123716_))
                ((##fx= _g123715_ 4)
                 (apply gx#core-bind-runtime!__% _g123716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g123716_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id120860%_
               _%eid120861%_
               _%rebind?120862%_
               _%phi120863%_
               _%ctx120864%_)
        (let* ((_%key120866%_ (gx#core-identifier-key _%id120860%_))
               (_%bind120871%_
                (if (##structure-instance-of?
                     _%ctx120864%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120861%_
                     _%key120866%_
                     _%phi120863%_
                     _%ctx120864%_)
                    (if (##structure-instance-of?
                         _%ctx120864%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120861%_
                         _%key120866%_
                         _%phi120863%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid120861%_
                         _%key120866%_
                         _%phi120863%_)))))
          (gx#bind-identifier!__%
           _%id120860%_
           _%bind120871%_
           _%rebind?120862%_
           _%phi120863%_
           _%ctx120864%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id120877%_ _%eid120878%_)
        (let* ((_%rebind?120880%_ '#f)
               (_%phi120882%_ (gx#current-expander-phi))
               (_%ctx120884%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120877%_
           _%eid120878%_
           _%rebind?120880%_
           _%phi120882%_
           _%ctx120884%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id120886%_ _%eid120887%_ _%rebind?120888%_)
        (let* ((_%phi120890%_ (gx#current-expander-phi))
               (_%ctx120892%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120886%_
           _%eid120887%_
           _%rebind?120888%_
           _%phi120890%_
           _%ctx120892%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id120894%_ _%eid120895%_ _%rebind?120896%_ _%phi120897%_)
        (let ((_%ctx120899%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120894%_
           _%eid120895%_
           _%rebind?120896%_
           _%phi120897%_
           _%ctx120899%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g123718_
        (let ((_g123717_ (##length _g123718_)))
          (cond ((##fx= _g123717_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g123718_))
                ((##fx= _g123717_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g123718_))
                ((##fx= _g123717_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g123718_))
                ((##fx= _g123717_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g123718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g123718_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id120820%_
               _%eid120821%_
               _%rebind?120822%_
               _%phi120823%_
               _%ctx120824%_)
        (gx#bind-identifier!__%
         _%id120820%_
         (##structure
          gx#extern-binding::t
          _%eid120821%_
          (gx#core-identifier-key _%id120820%_)
          _%phi120823%_)
         _%rebind?120822%_
         _%phi120823%_
         _%ctx120824%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id120829%_ _%eid120830%_)
        (let* ((_%rebind?120832%_ '#f)
               (_%phi120834%_ (gx#current-expander-phi))
               (_%ctx120836%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120829%_
           _%eid120830%_
           _%rebind?120832%_
           _%phi120834%_
           _%ctx120836%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id120838%_ _%eid120839%_ _%rebind?120840%_)
        (let* ((_%phi120842%_ (gx#current-expander-phi))
               (_%ctx120844%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120838%_
           _%eid120839%_
           _%rebind?120840%_
           _%phi120842%_
           _%ctx120844%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id120846%_ _%eid120847%_ _%rebind?120848%_ _%phi120849%_)
        (let ((_%ctx120851%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120846%_
           _%eid120847%_
           _%rebind?120848%_
           _%phi120849%_
           _%ctx120851%_))))
    (define gx#core-bind-extern!
      (lambda _g123720_
        (let ((_g123719_ (##length _g123720_)))
          (cond ((##fx= _g123719_ 2) (apply gx#core-bind-extern!__0 _g123720_))
                ((##fx= _g123719_ 3) (apply gx#core-bind-extern!__1 _g123720_))
                ((##fx= _g123719_ 4) (apply gx#core-bind-extern!__2 _g123720_))
                ((##fx= _g123719_ 5) (apply gx#core-bind-extern!__% _g123720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g123720_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id120774%_
               _%e120775%_
               _%rebind?120776%_
               _%phi120777%_
               _%ctx120778%_)
        (gx#bind-identifier!__%
         _%id120774%_
         (let ((_%key120783%_ (gx#core-identifier-key _%id120774%_))
               (_%e120784%_
                (if (or (##structure-instance-of? _%e120775%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e120775%_
                         'gx#expander-context::t))
                    _%e120775%_
                    (##structure
                     gx#user-expander::t
                     _%e120775%_
                     _%ctx120778%_
                     _%phi120777%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key120783%_
             '#t
             _%phi120777%_
             _%ctx120778%_)
            _%key120783%_
            _%phi120777%_
            _%e120784%_))
         _%rebind?120776%_
         _%phi120777%_
         _%ctx120778%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id120789%_ _%e120790%_)
        (let* ((_%rebind?120792%_ '#f)
               (_%phi120794%_ (gx#current-expander-phi))
               (_%ctx120796%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120789%_
           _%e120790%_
           _%rebind?120792%_
           _%phi120794%_
           _%ctx120796%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id120798%_ _%e120799%_ _%rebind?120800%_)
        (let* ((_%phi120802%_ (gx#current-expander-phi))
               (_%ctx120804%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120798%_
           _%e120799%_
           _%rebind?120800%_
           _%phi120802%_
           _%ctx120804%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id120806%_ _%e120807%_ _%rebind?120808%_ _%phi120809%_)
        (let ((_%ctx120811%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120806%_
           _%e120807%_
           _%rebind?120808%_
           _%phi120809%_
           _%ctx120811%_))))
    (define gx#core-bind-syntax!
      (lambda _g123722_
        (let ((_g123721_ (##length _g123722_)))
          (cond ((##fx= _g123721_ 2) (apply gx#core-bind-syntax!__0 _g123722_))
                ((##fx= _g123721_ 3) (apply gx#core-bind-syntax!__1 _g123722_))
                ((##fx= _g123721_ 4) (apply gx#core-bind-syntax!__2 _g123722_))
                ((##fx= _g123721_ 5) (apply gx#core-bind-syntax!__% _g123722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g123722_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id120757%_ _%e120758%_ _%rebind?120759%_)
        (gx#core-bind-syntax!__%
         _%id120757%_
         _%e120758%_
         _%rebind?120759%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id120764%_ _%e120765%_)
        (let ((_%rebind?120767%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id120764%_
           _%e120765%_
           _%rebind?120767%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g123724_
        (let ((_g123723_ (##length _g123724_)))
          (cond ((##fx= _g123723_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g123724_))
                ((##fx= _g123723_ 3)
                 (apply gx#core-bind-root-syntax!__% _g123724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g123724_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id120715%_
               _%alias-id120716%_
               _%rebind?120717%_
               _%phi120718%_
               _%ctx120719%_)
        (gx#bind-identifier!__%
         _%id120715%_
         (let ((_%key120721%_ (gx#core-identifier-key _%id120715%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key120721%_
             '#t
             _%phi120718%_
             _%ctx120719%_)
            _%key120721%_
            _%phi120718%_
            _%alias-id120716%_))
         _%rebind?120717%_
         _%phi120718%_
         _%ctx120719%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id120726%_ _%alias-id120727%_)
        (let* ((_%rebind?120729%_ '#f)
               (_%phi120731%_ (gx#current-expander-phi))
               (_%ctx120733%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120726%_
           _%alias-id120727%_
           _%rebind?120729%_
           _%phi120731%_
           _%ctx120733%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id120735%_ _%alias-id120736%_ _%rebind?120737%_)
        (let* ((_%phi120739%_ (gx#current-expander-phi))
               (_%ctx120741%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120735%_
           _%alias-id120736%_
           _%rebind?120737%_
           _%phi120739%_
           _%ctx120741%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id120743%_ _%alias-id120744%_ _%rebind?120745%_ _%phi120746%_)
        (let ((_%ctx120748%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120743%_
           _%alias-id120744%_
           _%rebind?120745%_
           _%phi120746%_
           _%ctx120748%_))))
    (define gx#core-bind-alias!
      (lambda _g123726_
        (let ((_g123725_ (##length _g123726_)))
          (cond ((##fx= _g123725_ 2) (apply gx#core-bind-alias!__0 _g123726_))
                ((##fx= _g123725_ 3) (apply gx#core-bind-alias!__1 _g123726_))
                ((##fx= _g123725_ 4) (apply gx#core-bind-alias!__2 _g123726_))
                ((##fx= _g123725_ 5) (apply gx#core-bind-alias!__% _g123726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g123726_))))))
    (define gx#make-binding-id__%
      (lambda (_%key120665%_ _%syntax?120666%_ _%phi120667%_ _%ctx120668%_)
        (if (uninterned-symbol? _%key120665%_)
            (##gensym 'L)
            (if (pair? _%key120665%_)
                (gensym (##car _%key120665%_))
                (if (##structure-instance-of? _%ctx120668%_ 'gx#top-context::t)
                    (let ((_%ns120673%_
                           (gx#core-context-namespace__% _%ctx120668%_)))
                      (if (and (fxzero? _%phi120667%_) (not _%syntax?120666%_))
                          (if _%ns120673%_
                              (make-symbol__1 _%ns120673%_ '"#" _%key120665%_)
                              _%key120665%_)
                          (if _%syntax?120666%_
                              (make-symbol__1
                               (let ((_%$e120677%_ _%ns120673%_))
                                 (if _%$e120677%_ _%$e120677%_ '""))
                               '"[:"
                               (number->string _%phi120667%_)
                               '":]#"
                               _%key120665%_)
                              (make-symbol__1
                               (let ((_%$e120681%_ _%ns120673%_))
                                 (if _%$e120681%_ _%$e120681%_ '""))
                               '"["
                               (number->string _%phi120667%_)
                               '"]#"
                               _%key120665%_))))
                    (gensym _%key120665%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key120688%_)
        (let* ((_%syntax?120690%_ '#f)
               (_%phi120692%_ (gx#current-expander-phi))
               (_%ctx120694%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120688%_
           _%syntax?120690%_
           _%phi120692%_
           _%ctx120694%_))))
    (define gx#make-binding-id__1
      (lambda (_%key120696%_ _%syntax?120697%_)
        (let* ((_%phi120699%_ (gx#current-expander-phi))
               (_%ctx120701%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120696%_
           _%syntax?120697%_
           _%phi120699%_
           _%ctx120701%_))))
    (define gx#make-binding-id__2
      (lambda (_%key120703%_ _%syntax?120704%_ _%phi120705%_)
        (let ((_%ctx120707%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120703%_
           _%syntax?120704%_
           _%phi120705%_
           _%ctx120707%_))))
    (define gx#make-binding-id
      (lambda _g123728_
        (let ((_g123727_ (##length _g123728_)))
          (cond ((##fx= _g123727_ 1) (apply gx#make-binding-id__0 _g123728_))
                ((##fx= _g123727_ 2) (apply gx#make-binding-id__1 _g123728_))
                ((##fx= _g123727_ 3) (apply gx#make-binding-id__2 _g123728_))
                ((##fx= _g123727_ 4) (apply gx#make-binding-id__% _g123728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g123728_))))))))
