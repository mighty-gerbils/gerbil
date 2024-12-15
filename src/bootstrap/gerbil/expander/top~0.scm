(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1734279328)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx126327%_)
        (letrec ((_%expand-special126329%_
                  (lambda (_%hd126331%_ _%K126332%_ _%rest126333%_ _%r126334%_)
                    (_%K126332%_
                     _%rest126333%_
                     (cons (gx#core-expand-top _%hd126331%_) _%r126334%_)))))
          (gx#core-expand-block__0 _%stx126327%_ _%expand-special126329%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx126080%_)
        (letrec ((_%expand-special126082%_
                  (lambda (_%hd126202%_ _%K126203%_ _%rest126204%_ _%r126205%_)
                    (let* ((_%K126209%_
                            (lambda (_%e126207%_)
                              (_%K126203%_
                               _%rest126204%_
                               (cons _%e126207%_ _%r126205%_))))
                           (_%e126210126239%_ _%hd126202%_)
                           (_%E126234126243%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126210126239%_)))
                           (_%E126230126255%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126210126239%_)
                                  (let ((_%e126235126247%_
                                         (gx#syntax-e _%e126210126239%_)))
                                    (let ((_%hd126236126250%_
                                           (##car _%e126235126247%_))
                                          (_%tl126237126252%_
                                           (##cdr _%e126235126247%_)))
                                      (if (and (gx#identifier?
                                                _%hd126236126250%_)
                                               (gx#core-identifier=?
                                                _%hd126236126250%_
                                                '%#define-runtime))
                                          (_%K126209%_
                                           (gx#core-expand-define-runtime%
                                            _%hd126202%_))
                                          (_%E126234126243%_))))
                                  (_%E126234126243%_))))
                           (_%E126226126267%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126210126239%_)
                                  (let ((_%e126231126259%_
                                         (gx#syntax-e _%e126210126239%_)))
                                    (let ((_%hd126232126262%_
                                           (##car _%e126231126259%_))
                                          (_%tl126233126264%_
                                           (##cdr _%e126231126259%_)))
                                      (if (and (gx#identifier?
                                                _%hd126232126262%_)
                                               (gx#core-identifier=?
                                                _%hd126232126262%_
                                                '%#define-alias))
                                          (_%K126209%_
                                           (gx#core-expand-define-alias%
                                            _%hd126202%_))
                                          (_%E126230126255%_))))
                                  (_%E126230126255%_))))
                           (_%E126216126279%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126210126239%_)
                                  (let ((_%e126227126271%_
                                         (gx#syntax-e _%e126210126239%_)))
                                    (let ((_%hd126228126274%_
                                           (##car _%e126227126271%_))
                                          (_%tl126229126276%_
                                           (##cdr _%e126227126271%_)))
                                      (if (and (gx#identifier?
                                                _%hd126228126274%_)
                                               (gx#core-identifier=?
                                                _%hd126228126274%_
                                                '%#define-syntax))
                                          (_%K126209%_
                                           (gx#core-expand-define-syntax%
                                            _%hd126202%_))
                                          (_%E126226126267%_))))
                                  (_%E126226126267%_))))
                           (_%E126212126311%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126210126239%_)
                                  (let ((_%e126217126283%_
                                         (gx#syntax-e _%e126210126239%_)))
                                    (let ((_%hd126218126286%_
                                           (##car _%e126217126283%_))
                                          (_%tl126219126288%_
                                           (##cdr _%e126217126283%_)))
                                      (if (and (gx#identifier?
                                                _%hd126218126286%_)
                                               (gx#core-identifier=?
                                                _%hd126218126286%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl126219126288%_)
                                              (let ((_%e126220126291%_
                                                     (gx#syntax-e
                                                      _%tl126219126288%_)))
                                                (let ((_%hd126221126294%_
                                                       (##car _%e126220126291%_))
                                                      (_%tl126222126296%_
                                                       (##cdr _%e126220126291%_)))
                                                  (let ((_%hd-bind126299%_
                                                         _%hd126221126294%_))
                                                    (if (gx#stx-pair?
                                                         _%tl126222126296%_)
                                                        (let ((_%e126223126301%_
                                                               (gx#syntax-e
                                                                _%tl126222126296%_)))
                                                          (let ((_%hd126224126304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e126223126301%_))
                        (_%tl126225126306%_ (##cdr _%e126223126301%_)))
                    (let ((_%expr126309%_ _%hd126224126304%_))
                      (if (gx#stx-null? _%tl126225126306%_)
                          (if (gx#core-bind-values? _%hd-bind126299%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126299%_)
                                (_%K126209%_ _%hd126202%_))
                              (_%E126216126279%_))
                          (_%E126216126279%_)))))
                (_%E126216126279%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126216126279%_))
                                          (_%E126216126279%_))))
                                  (_%E126216126279%_))))
                           (_%E126211126323%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126210126239%_)
                                  (let ((_%e126213126315%_
                                         (gx#syntax-e _%e126210126239%_)))
                                    (let ((_%hd126214126318%_
                                           (##car _%e126213126315%_))
                                          (_%tl126215126320%_
                                           (##cdr _%e126213126315%_)))
                                      (if (and (gx#identifier?
                                                _%hd126214126318%_)
                                               (gx#core-identifier=?
                                                _%hd126214126318%_
                                                '%#begin-syntax))
                                          (_%K126209%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd126202%_))
                                          (_%E126212126311%_))))
                                  (_%E126212126311%_)))))
                      (_%E126211126323%_))))
                 (_%eval-body126083%_
                  (lambda (_%rbody126091%_)
                    (let _%lp126093%_ ((_%rest126095%_ _%rbody126091%_)
                                       (_%body126096%_ '())
                                       (_%ebody126097%_ '()))
                      (let* ((_%rest126098126106%_ _%rest126095%_)
                             (_%else126100126114%_
                              (lambda ()
                                (values _%body126096%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody126097%_)
                                          (gx#stx-source _%stx126080%_))))))
                             (_%K126102126190%_
                              (lambda (_%rest126117%_ _%hd126118%_)
                                (let* ((_%e126119126136%_ _%hd126118%_)
                                       (_%E126131126140%_
                                        (lambda ()
                                          (_%lp126093%_
                                           _%rest126117%_
                                           (cons _%hd126118%_ _%body126096%_)
                                           (cons _%hd126118%_
                                                 _%ebody126097%_))))
                                       (_%E126121126152%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126119126136%_)
                                              (let ((_%e126132126144%_
                                                     (gx#syntax-e
                                                      _%e126119126136%_)))
                                                (let ((_%hd126133126147%_
                                                       (##car _%e126132126144%_))
                                                      (_%tl126134126149%_
                                                       (##cdr _%e126132126144%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126133126147%_)
                                                           (gx#core-identifier=?
                                                            _%hd126133126147%_
                                                            '%#begin-syntax))
                                                      (_%lp126093%_
                                                       _%rest126117%_
                                                       (cons _%hd126118%_
                                                             _%body126096%_)
                                                       _%ebody126097%_)
                                                      (_%E126131126140%_))))
                                              (_%E126131126140%_))))
                                       (_%E126120126186%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126119126136%_)
                                              (let ((_%e126122126156%_
                                                     (gx#syntax-e
                                                      _%e126119126136%_)))
                                                (let ((_%hd126123126159%_
                                                       (##car _%e126122126156%_))
                                                      (_%tl126124126161%_
                                                       (##cdr _%e126122126156%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126123126159%_)
                                                           (gx#core-identifier=?
                                                            _%hd126123126159%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl126124126161%_)
                                                          (let ((_%e126125126164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126124126161%_)))
                    (let ((_%hd126126126167%_ (##car _%e126125126164%_))
                          (_%tl126127126169%_ (##cdr _%e126125126164%_)))
                      (let ((_%hd-bind126172%_ _%hd126126126167%_))
                        (if (gx#stx-pair? _%tl126127126169%_)
                            (let ((_%e126128126174%_
                                   (gx#syntax-e _%tl126127126169%_)))
                              (let ((_%hd126129126177%_
                                     (##car _%e126128126174%_))
                                    (_%tl126130126179%_
                                     (##cdr _%e126128126174%_)))
                                (let ((_%expr126182%_ _%hd126129126177%_))
                                  (if (gx#stx-null? _%tl126130126179%_)
                                      (let ((_%ehd126184%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind126172%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr126182%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd126118%_))))
                                        (_%lp126093%_
                                         _%rest126117%_
                                         (cons _%ehd126184%_ _%body126096%_)
                                         (cons _%ehd126184%_ _%ebody126097%_)))
                                      (_%E126121126152%_)))))
                            (_%E126121126152%_)))))
                  (_%E126121126152%_))
              (_%E126121126152%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126121126152%_)))))
                                  (_%E126120126186%_)))))
                        (if (pair? _%rest126098126106%_)
                            (let ((_%hd126103126193%_
                                   (##car _%rest126098126106%_))
                                  (_%tl126104126195%_
                                   (##cdr _%rest126098126106%_)))
                              (let* ((_%hd126198%_ _%hd126103126193%_)
                                     (_%rest126200%_ _%tl126104126195%_))
                                (_%K126102126190%_
                                 _%rest126200%_
                                 _%hd126198%_)))
                            (_%else126100126114%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody126086%_
                     (gx#core-expand-block__1
                      _%stx126080%_
                      _%expand-special126082%_
                      '#f))
                    (_g126350_ (_%eval-body126083%_ _%rbody126086%_)))
               (begin
                 (let ((_g126351_
                        (if (##values? _g126350_)
                            (##values-length _g126350_)
                            1)))
                   (if (not (##fx= _g126351_ 2))
                       (error "Context expects 2 values" _g126351_)))
                 (let ((_%expanded-body126088%_ (##values-ref _g126350_ 0))
                       (_%value126089%_ (##values-ref _g126350_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body126088%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value126089%_ '())))
                    (gx#stx-source _%stx126080%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx126050%_)
        (let* ((_%e126051126058%_ _%stx126050%_)
               (_%E126053126062%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126051126058%_)))
               (_%E126052126076%_
                (lambda ()
                  (if (gx#stx-pair? _%e126051126058%_)
                      (let ((_%e126054126066%_
                             (gx#syntax-e _%e126051126058%_)))
                        (let ((_%hd126055126069%_ (##car _%e126054126066%_))
                              (_%tl126056126071%_ (##cdr _%e126054126066%_)))
                          (let ((_%body126074%_ _%tl126056126071%_))
                            (if (gx#stx-list? _%body126074%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body126074%_)
                                 (gx#stx-source _%stx126050%_))
                                (_%E126053126062%_)))))
                      (_%E126053126062%_)))))
          (_%E126052126076%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx126048%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx126048%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx125994%_)
        (let* ((_%e125995126008%_ _%stx125994%_)
               (_%E125997126012%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125995126008%_)))
               (_%E125996126044%_
                (lambda ()
                  (if (gx#stx-pair? _%e125995126008%_)
                      (let ((_%e125998126016%_
                             (gx#syntax-e _%e125995126008%_)))
                        (let ((_%hd125999126019%_ (##car _%e125998126016%_))
                              (_%tl126000126021%_ (##cdr _%e125998126016%_)))
                          (if (gx#stx-pair? _%tl126000126021%_)
                              (let ((_%e126001126024%_
                                     (gx#syntax-e _%tl126000126021%_)))
                                (let ((_%hd126002126027%_
                                       (##car _%e126001126024%_))
                                      (_%tl126003126029%_
                                       (##cdr _%e126001126024%_)))
                                  (let ((_%ann126032%_ _%hd126002126027%_))
                                    (if (gx#stx-pair? _%tl126003126029%_)
                                        (let ((_%e126004126034%_
                                               (gx#syntax-e
                                                _%tl126003126029%_)))
                                          (let ((_%hd126005126037%_
                                                 (##car _%e126004126034%_))
                                                (_%tl126006126039%_
                                                 (##cdr _%e126004126034%_)))
                                            (let ((_%expr126042%_
                                                   _%hd126005126037%_))
                                              (if (gx#stx-null?
                                                   _%tl126006126039%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann126032%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr126042%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx125994%_))
                                                  (_%E125997126012%_)))))
                                        (_%E125997126012%_)))))
                              (_%E125997126012%_))))
                      (_%E125997126012%_)))))
          (_%E125996126044%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx125718%_ _%body125719%_)
        (letrec ((_%expand-special125721%_
                  (lambda (_%hd125989%_ _%K125990%_ _%rest125991%_ _%r125992%_)
                    (_%K125990%_
                     '()
                     (cons (_%expand-internal125722%_
                            _%hd125989%_
                            _%rest125991%_)
                           _%r125992%_))))
                 (_%expand-internal125722%_
                  (lambda (_%hd125985%_ _%rest125986%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal125724%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd125985%_ _%rest125986%_))
                          (gx#stx-source _%stx125718%_))
                         _%expand-internal-special125723%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj126344
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj126344)
                       __obj126344))))
                 (_%expand-internal-special125723%_
                  (lambda (_%hd125880%_ _%K125881%_ _%rest125882%_ _%r125883%_)
                    (let* ((_%e125884125909%_ _%hd125880%_)
                           (_%E125904125913%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125884125909%_)))
                           (_%E125900125925%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125884125909%_)
                                  (let ((_%e125905125917%_
                                         (gx#syntax-e _%e125884125909%_)))
                                    (let ((_%hd125906125920%_
                                           (##car _%e125905125917%_))
                                          (_%tl125907125922%_
                                           (##cdr _%e125905125917%_)))
                                      (if (and (gx#identifier?
                                                _%hd125906125920%_)
                                               (gx#core-identifier=?
                                                _%hd125906125920%_
                                                '%#declare))
                                          (_%K125881%_
                                           _%rest125882%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd125880%_)
                                                 _%r125883%_))
                                          (_%E125904125913%_))))
                                  (_%E125904125913%_))))
                           (_%E125896125937%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125884125909%_)
                                  (let ((_%e125901125929%_
                                         (gx#syntax-e _%e125884125909%_)))
                                    (let ((_%hd125902125932%_
                                           (##car _%e125901125929%_))
                                          (_%tl125903125934%_
                                           (##cdr _%e125901125929%_)))
                                      (if (and (gx#identifier?
                                                _%hd125902125932%_)
                                               (gx#core-identifier=?
                                                _%hd125902125932%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd125880%_)
                                            (_%K125881%_
                                             _%rest125882%_
                                             _%r125883%_))
                                          (_%E125900125925%_))))
                                  (_%E125900125925%_))))
                           (_%E125886125949%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125884125909%_)
                                  (let ((_%e125897125941%_
                                         (gx#syntax-e _%e125884125909%_)))
                                    (let ((_%hd125898125944%_
                                           (##car _%e125897125941%_))
                                          (_%tl125899125946%_
                                           (##cdr _%e125897125941%_)))
                                      (if (and (gx#identifier?
                                                _%hd125898125944%_)
                                               (gx#core-identifier=?
                                                _%hd125898125944%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd125880%_)
                                            (_%K125881%_
                                             _%rest125882%_
                                             _%r125883%_))
                                          (_%E125896125937%_))))
                                  (_%E125896125937%_))))
                           (_%E125885125981%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125884125909%_)
                                  (let ((_%e125887125953%_
                                         (gx#syntax-e _%e125884125909%_)))
                                    (let ((_%hd125888125956%_
                                           (##car _%e125887125953%_))
                                          (_%tl125889125958%_
                                           (##cdr _%e125887125953%_)))
                                      (if (and (gx#identifier?
                                                _%hd125888125956%_)
                                               (gx#core-identifier=?
                                                _%hd125888125956%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125889125958%_)
                                              (let ((_%e125890125961%_
                                                     (gx#syntax-e
                                                      _%tl125889125958%_)))
                                                (let ((_%hd125891125964%_
                                                       (##car _%e125890125961%_))
                                                      (_%tl125892125966%_
                                                       (##cdr _%e125890125961%_)))
                                                  (let ((_%hd-bind125969%_
                                                         _%hd125891125964%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125892125966%_)
                                                        (let ((_%e125893125971%_
                                                               (gx#syntax-e
                                                                _%tl125892125966%_)))
                                                          (let ((_%hd125894125974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125893125971%_))
                        (_%tl125895125976%_ (##cdr _%e125893125971%_)))
                    (let ((_%expr125979%_ _%hd125894125974%_))
                      (if (gx#stx-null? _%tl125895125976%_)
                          (if (gx#core-bind-values? _%hd-bind125969%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125969%_)
                                (_%K125881%_
                                 _%rest125882%_
                                 (cons _%hd125880%_ _%r125883%_)))
                              (_%E125886125949%_))
                          (_%E125886125949%_)))))
                (_%E125886125949%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125886125949%_))
                                          (_%E125886125949%_))))
                                  (_%E125886125949%_)))))
                      (_%E125885125981%_))))
                 (_%wrap-internal125724%_
                  (lambda (_%rbody125726%_)
                    (let _%lp125728%_ ((_%rest125730%_ _%rbody125726%_)
                                       (_%decls125731%_ '())
                                       (_%bind125732%_ '())
                                       (_%body125733%_ '()))
                      (let* ((_%e125734125741%_ _%rest125730%_)
                             (_%E125736125790%_
                              (lambda ()
                                (let* ((_%body125785%_
                                        (let* ((_%body125744125754%_
                                                _%body125733%_)
                                               (_%else125747125762%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body125733%_)
                                                   (gx#stx-source
                                                    _%stx125718%_)))))
                                          (let ((_%K125752125782%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx125718%_)))
                                                (_%K125749125768%_
                                                 (lambda (_%expr125766%_)
                                                   _%expr125766%_)))
                                            (let ((_%try-match125746125778%_
                                                   (lambda ()
                                                     (if (pair? _%body125744125754%_)
                                                         (let ((_%tl125751125773%_
                                                                (##cdr _%body125744125754%_))
                                                               (_%hd125750125771%_
                                                                (##car _%body125744125754%_)))
                                                           (if (null? _%tl125751125773%_)
                                                               (let ((_%expr125776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd125750125771%_))
                         (_%K125749125768%_ _%expr125776%_))
                       (_%else125747125762%_)))
                 (_%else125747125762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body125744125754%_)
                                                  (_%K125752125782%_)
                                                  (_%try-match125746125778%_))))))
                                       (_%body125787%_
                                        (if (null? _%bind125732%_)
                                            _%body125785%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind125732%_
                                                         (cons _%body125785%_
                                                               '())))
                                             (gx#stx-source _%stx125718%_)))))
                                  (if (null? _%decls125731%_)
                                      _%body125787%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls125731%_
                                                   (cons _%body125787%_ '())))
                                       (gx#stx-source _%stx125718%_))))))
                             (_%E125735125876%_
                              (lambda ()
                                (if (gx#stx-pair? _%e125734125741%_)
                                    (let ((_%e125737125794%_
                                           (gx#syntax-e _%e125734125741%_)))
                                      (let ((_%hd125738125797%_
                                             (##car _%e125737125794%_))
                                            (_%tl125739125799%_
                                             (##cdr _%e125737125794%_)))
                                        (let* ((_%hd125802%_
                                                _%hd125738125797%_)
                                               (_%rest125804%_
                                                _%tl125739125799%_)
                                               (_%e125805125822%_ _%hd125802%_)
                                               (_%E125817125826%_
                                                (lambda ()
                                                  (if (null? _%bind125732%_)
                                                      (_%lp125728%_
                                                       _%rest125804%_
                                                       _%decls125731%_
                                                       _%bind125732%_
                                                       (cons _%hd125802%_
                                                             _%body125733%_))
                                                      (_%lp125728%_
                                                       _%rest125804%_
                                                       _%decls125731%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd125802%_ '()))
                     _%bind125732%_)
               _%body125733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125807125840%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125805125822%_)
                                                      (let ((_%e125818125830%_
                                                             (gx#syntax-e
                                                              _%e125805125822%_)))
                                                        (let ((_%hd125819125833%_
                                                               (##car _%e125818125830%_))
                                                              (_%tl125820125835%_
                                                               (##cdr _%e125818125830%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125819125833%_)
                           (gx#core-identifier=?
                            _%hd125819125833%_
                            '%#declare))
                      (let ((_%xdecls125838%_ _%tl125820125835%_))
                        (_%lp125728%_
                         _%rest125804%_
                         (gx#stx-foldr cons _%decls125731%_ _%xdecls125838%_)
                         _%bind125732%_
                         _%body125733%_))
                      (_%E125817125826%_))))
              (_%E125817125826%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125806125872%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125805125822%_)
                                                      (let ((_%e125808125844%_
                                                             (gx#syntax-e
                                                              _%e125805125822%_)))
                                                        (let ((_%hd125809125847%_
                                                               (##car _%e125808125844%_))
                                                              (_%tl125810125849%_
                                                               (##cdr _%e125808125844%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125809125847%_)
                           (gx#core-identifier=?
                            _%hd125809125847%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl125810125849%_)
                          (let ((_%e125811125852%_
                                 (gx#syntax-e _%tl125810125849%_)))
                            (let ((_%hd125812125855%_
                                   (##car _%e125811125852%_))
                                  (_%tl125813125857%_
                                   (##cdr _%e125811125852%_)))
                              (let ((_%hd-bind125860%_ _%hd125812125855%_))
                                (if (gx#stx-pair? _%tl125813125857%_)
                                    (let ((_%e125814125862%_
                                           (gx#syntax-e _%tl125813125857%_)))
                                      (let ((_%hd125815125865%_
                                             (##car _%e125814125862%_))
                                            (_%tl125816125867%_
                                             (##cdr _%e125814125862%_)))
                                        (let ((_%expr125870%_
                                               _%hd125815125865%_))
                                          (if (gx#stx-null? _%tl125816125867%_)
                                              (_%lp125728%_
                                               _%rest125804%_
                                               _%decls125731%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind125860%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr125870%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind125732%_)
                                               _%body125733%_)
                                              (_%E125807125840%_)))))
                                    (_%E125807125840%_)))))
                          (_%E125807125840%_))
                      (_%E125807125840%_))))
              (_%E125807125840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E125806125872%_))))
                                    (_%E125736125790%_)))))
                        (_%E125735125876%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body125719%_)
            (gx#stx-source _%stx125718%_))
           _%expand-special125721%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx125656%_)
        (let* ((_%e125657125664%_ _%stx125656%_)
               (_%E125659125668%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125657125664%_)))
               (_%E125658125714%_
                (lambda ()
                  (if (gx#stx-pair? _%e125657125664%_)
                      (let ((_%e125660125672%_
                             (gx#syntax-e _%e125657125664%_)))
                        (let ((_%hd125661125675%_ (##car _%e125660125672%_))
                              (_%tl125662125677%_ (##cdr _%e125660125672%_)))
                          (let ((_%body125680%_ _%tl125662125677%_))
                            (if (gx#stx-list? _%body125680%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl125682%_)
                                     (let* ((_%e125683125690%_ _%decl125682%_)
                                            (_%E125685125694%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e125683125690%_)))
                                            (_%E125684125710%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e125683125690%_)
                                                   (let ((_%e125686125698%_
                                                          (gx#syntax-e
                                                           _%e125683125690%_)))
                                                     (let ((_%hd125687125701%_
                                                            (##car _%e125686125698%_))
                                                           (_%tl125688125703%_
                                                            (##cdr _%e125686125698%_)))
                                                       (let* ((_%head125706%_
                                                               _%hd125687125701%_)
                                                              (_%args125708%_
                                                               _%tl125688125703%_))
                                                         (if (gx#stx-list?
                                                              _%args125708%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl125682%_)
                                                             (_%E125685125694%_)))))
                                                   (_%E125685125694%_)))))
                                       (_%E125684125710%_)))
                                   _%body125680%_))
                                 (gx#stx-source _%stx125656%_))
                                (_%E125659125668%_)))))
                      (_%E125659125668%_)))))
          (_%E125658125714%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx125560%_)
        (let* ((_%e125561125568%_ _%stx125560%_)
               (_%E125563125572%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125561125568%_)))
               (_%E125562125652%_
                (lambda ()
                  (if (gx#stx-pair? _%e125561125568%_)
                      (let ((_%e125564125576%_
                             (gx#syntax-e _%e125561125568%_)))
                        (let ((_%hd125565125579%_ (##car _%e125564125576%_))
                              (_%tl125566125581%_ (##cdr _%e125564125576%_)))
                          (let ((_%body125584%_ _%tl125566125581%_))
                            (let _%lp125586%_ ((_%rest125588%_ _%body125584%_)
                                               (_%r125589%_ '()))
                              (let* ((_%e125590125604%_ _%rest125588%_)
                                     (_%E125602125608%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx125560%_)))
                                     (_%E125592125612%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e125590125604%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r125589%_))
                                             (gx#stx-source _%stx125560%_))
                                            (_%E125602125608%_))))
                                     (_%E125591125648%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e125590125604%_)
                                            (let ((_%e125593125616%_
                                                   (gx#syntax-e
                                                    _%e125590125604%_)))
                                              (let ((_%hd125594125619%_
                                                     (##car _%e125593125616%_))
                                                    (_%tl125595125621%_
                                                     (##cdr _%e125593125616%_)))
                                                (if (gx#stx-pair?
                                                     _%hd125594125619%_)
                                                    (let ((_%e125596125624%_
                                                           (gx#syntax-e
                                                            _%hd125594125619%_)))
                                                      (let ((_%hd125597125627%_
                                                             (##car _%e125596125624%_))
                                                            (_%tl125598125629%_
                                                             (##cdr _%e125596125624%_)))
                                                        (let ((_%id125632%_
                                                               _%hd125597125627%_))
                                                          (if (gx#stx-pair?
                                                               _%tl125598125629%_)
                                                              (let ((_%e125599125634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl125598125629%_)))
                        (let ((_%hd125600125637%_ (##car _%e125599125634%_))
                              (_%tl125601125639%_ (##cdr _%e125599125634%_)))
                          (let ((_%eid125642%_ _%hd125600125637%_))
                            (if (gx#stx-null? _%tl125601125639%_)
                                (let ((_%rest125644%_ _%tl125595125621%_))
                                  (if (and (gx#identifier? _%id125632%_)
                                           (gx#identifier? _%eid125642%_))
                                      (let ((_%eid125646%_
                                             (gx#stx-e _%eid125642%_)))
                                        (gx#core-bind-extern!__0
                                         _%id125632%_
                                         _%eid125646%_)
                                        (_%lp125586%_
                                         _%rest125644%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id125632%_)
                                                     (cons _%eid125646%_ '()))
                                               _%r125589%_)))
                                      (_%E125592125612%_)))
                                (_%E125592125612%_)))))
                      (_%E125592125612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E125592125612%_))))
                                            (_%E125592125612%_)))))
                                (_%E125591125648%_))))))
                      (_%E125563125572%_)))))
          (_%E125562125652%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx125506%_)
        (let* ((_%e125507125520%_ _%stx125506%_)
               (_%E125509125524%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125507125520%_)))
               (_%E125508125556%_
                (lambda ()
                  (if (gx#stx-pair? _%e125507125520%_)
                      (let ((_%e125510125528%_
                             (gx#syntax-e _%e125507125520%_)))
                        (let ((_%hd125511125531%_ (##car _%e125510125528%_))
                              (_%tl125512125533%_ (##cdr _%e125510125528%_)))
                          (if (gx#stx-pair? _%tl125512125533%_)
                              (let ((_%e125513125536%_
                                     (gx#syntax-e _%tl125512125533%_)))
                                (let ((_%hd125514125539%_
                                       (##car _%e125513125536%_))
                                      (_%tl125515125541%_
                                       (##cdr _%e125513125536%_)))
                                  (let ((_%hd125544%_ _%hd125514125539%_))
                                    (if (gx#stx-pair? _%tl125515125541%_)
                                        (let ((_%e125516125546%_
                                               (gx#syntax-e
                                                _%tl125515125541%_)))
                                          (let ((_%hd125517125549%_
                                                 (##car _%e125516125546%_))
                                                (_%tl125518125551%_
                                                 (##cdr _%e125516125546%_)))
                                            (let ((_%expr125554%_
                                                   _%hd125517125549%_))
                                              (if (gx#stx-null?
                                                   _%tl125518125551%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd125544%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd125544%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd125544%_)
                             (cons (gx#core-expand-expression _%expr125554%_)
                                   '())))
                 (gx#stx-source _%stx125506%_)))
              (_%E125509125524%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125509125524%_)))))
                                        (_%E125509125524%_)))))
                              (_%E125509125524%_))))
                      (_%E125509125524%_)))))
          (_%E125508125556%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx125450%_)
        (let* ((_%e125451125464%_ _%stx125450%_)
               (_%E125453125468%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125451125464%_)))
               (_%E125452125502%_
                (lambda ()
                  (if (gx#stx-pair? _%e125451125464%_)
                      (let ((_%e125454125472%_
                             (gx#syntax-e _%e125451125464%_)))
                        (let ((_%hd125455125475%_ (##car _%e125454125472%_))
                              (_%tl125456125477%_ (##cdr _%e125454125472%_)))
                          (if (gx#stx-pair? _%tl125456125477%_)
                              (let ((_%e125457125480%_
                                     (gx#syntax-e _%tl125456125477%_)))
                                (let ((_%hd125458125483%_
                                       (##car _%e125457125480%_))
                                      (_%tl125459125485%_
                                       (##cdr _%e125457125480%_)))
                                  (let ((_%id125488%_ _%hd125458125483%_))
                                    (if (gx#stx-pair? _%tl125459125485%_)
                                        (let ((_%e125460125490%_
                                               (gx#syntax-e
                                                _%tl125459125485%_)))
                                          (let ((_%hd125461125493%_
                                                 (##car _%e125460125490%_))
                                                (_%tl125462125495%_
                                                 (##cdr _%e125460125490%_)))
                                            (let ((_%binding-id125498%_
                                                   _%hd125461125493%_))
                                              (if (gx#stx-null?
                                                   _%tl125462125495%_)
                                                  (if (and (gx#identifier?
                                                            _%id125488%_)
                                                           (gx#identifier?
                                                            _%binding-id125498%_))
                                                      (let ((_%eid125500%_
                                                             (gx#stx-e
                                                              _%binding-id125498%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id125488%_
                                                         _%eid125500%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125488%_)
                             (cons _%eid125500%_ '())))))
              (_%E125453125468%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125453125468%_)))))
                                        (_%E125453125468%_)))))
                              (_%E125453125468%_))))
                      (_%E125453125468%_)))))
          (_%E125452125502%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx125393%_)
        (let* ((_%e125394125407%_ _%stx125393%_)
               (_%E125396125411%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125394125407%_)))
               (_%E125395125446%_
                (lambda ()
                  (if (gx#stx-pair? _%e125394125407%_)
                      (let ((_%e125397125415%_
                             (gx#syntax-e _%e125394125407%_)))
                        (let ((_%hd125398125418%_ (##car _%e125397125415%_))
                              (_%tl125399125420%_ (##cdr _%e125397125415%_)))
                          (if (gx#stx-pair? _%tl125399125420%_)
                              (let ((_%e125400125423%_
                                     (gx#syntax-e _%tl125399125420%_)))
                                (let ((_%hd125401125426%_
                                       (##car _%e125400125423%_))
                                      (_%tl125402125428%_
                                       (##cdr _%e125400125423%_)))
                                  (let ((_%id125431%_ _%hd125401125426%_))
                                    (if (gx#stx-pair? _%tl125402125428%_)
                                        (let ((_%e125403125433%_
                                               (gx#syntax-e
                                                _%tl125402125428%_)))
                                          (let ((_%hd125404125436%_
                                                 (##car _%e125403125433%_))
                                                (_%tl125405125438%_
                                                 (##cdr _%e125403125433%_)))
                                            (let ((_%expr125441%_
                                                   _%hd125404125436%_))
                                              (if (gx#stx-null?
                                                   _%tl125405125438%_)
                                                  (if (gx#identifier?
                                                       _%id125431%_)
                                                      (let ((_g126352_
                                                             (gx#core-expand-expression+1
                                                              _%expr125441%_)))
                                                        (begin
                                                          (let ((_g126353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g126352_)
                             (##values-length _g126352_)
                             1)))
                    (if (not (##fx= _g126353_ 2))
                        (error "Context expects 2 values" _g126353_)))
                  (let ((_%e-stx125443%_ (##values-ref _g126352_ 0))
                        (_%e125444%_ (##values-ref _g126352_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id125431%_ _%e125444%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id125431%_)
                                   (cons _%e-stx125443%_ '())))
                       (gx#stx-source _%stx125393%_))))))
              (_%E125396125411%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125396125411%_)))))
                                        (_%E125396125411%_)))))
                              (_%E125396125411%_))))
                      (_%E125396125411%_)))))
          (_%E125395125446%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx125337%_)
        (let* ((_%e125338125351%_ _%stx125337%_)
               (_%E125340125355%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125338125351%_)))
               (_%E125339125389%_
                (lambda ()
                  (if (gx#stx-pair? _%e125338125351%_)
                      (let ((_%e125341125359%_
                             (gx#syntax-e _%e125338125351%_)))
                        (let ((_%hd125342125362%_ (##car _%e125341125359%_))
                              (_%tl125343125364%_ (##cdr _%e125341125359%_)))
                          (if (gx#stx-pair? _%tl125343125364%_)
                              (let ((_%e125344125367%_
                                     (gx#syntax-e _%tl125343125364%_)))
                                (let ((_%hd125345125370%_
                                       (##car _%e125344125367%_))
                                      (_%tl125346125372%_
                                       (##cdr _%e125344125367%_)))
                                  (let ((_%id125375%_ _%hd125345125370%_))
                                    (if (gx#stx-pair? _%tl125346125372%_)
                                        (let ((_%e125347125377%_
                                               (gx#syntax-e
                                                _%tl125346125372%_)))
                                          (let ((_%hd125348125380%_
                                                 (##car _%e125347125377%_))
                                                (_%tl125349125382%_
                                                 (##cdr _%e125347125377%_)))
                                            (let ((_%alias-id125385%_
                                                   _%hd125348125380%_))
                                              (if (gx#stx-null?
                                                   _%tl125349125382%_)
                                                  (if (and (gx#identifier?
                                                            _%id125375%_)
                                                           (gx#identifier?
                                                            _%alias-id125385%_))
                                                      (let ((_%alias-id125387%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id125385%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id125375%_
                                                         _%alias-id125387%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125375%_)
                             (cons _%alias-id125387%_ '())))))
              (_%E125340125355%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125340125355%_)))))
                                        (_%E125340125355%_)))))
                              (_%E125340125355%_))))
                      (_%E125340125355%_)))))
          (_%E125339125389%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx125280%_ _%wrap?125281%_)
        (let* ((_%e125282125292%_ _%stx125280%_)
               (_%E125284125296%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125282125292%_)))
               (_%E125283125323%_
                (lambda ()
                  (if (gx#stx-pair? _%e125282125292%_)
                      (let ((_%e125285125300%_
                             (gx#syntax-e _%e125282125292%_)))
                        (let ((_%hd125286125303%_ (##car _%e125285125300%_))
                              (_%tl125287125305%_ (##cdr _%e125285125300%_)))
                          (if (gx#stx-pair? _%tl125287125305%_)
                              (let ((_%e125288125308%_
                                     (gx#syntax-e _%tl125287125305%_)))
                                (let ((_%hd125289125311%_
                                       (##car _%e125288125308%_))
                                      (_%tl125290125313%_
                                       (##cdr _%e125288125308%_)))
                                  (let* ((_%hd125316%_ _%hd125289125311%_)
                                         (_%body125318%_ _%tl125290125313%_))
                                    (if (gx#core-bind-values? _%hd125316%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd125316%_)
                                           (let ((_%body125321%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd125316%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx125280%_
                                                               _%body125318%_)
                                                              '()))))
                                             (if _%wrap?125281%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body125321%_)
                                                  (gx#stx-source
                                                   _%stx125280%_))
                                                 _%body125321%_)))
                                         gx#current-expander-context
                                         (let ((__obj126345
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126345)
                                           __obj126345))
                                        (_%E125284125296%_)))))
                              (_%E125284125296%_))))
                      (_%E125284125296%_)))))
          (_%E125283125323%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx125330%_)
        (let ((_%wrap?125332%_ '#t))
          (gx#core-expand-lambda%__% _%stx125330%_ _%wrap?125332%_))))
    (define gx#core-expand-lambda%
      (lambda _g126355_
        (let ((_g126354_ (##length _g126355_)))
          (cond ((##fx= _g126354_ 1)
                 (apply gx#core-expand-lambda%__0 _g126355_))
                ((##fx= _g126354_ 2)
                 (apply gx#core-expand-lambda%__% _g126355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g126355_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx125244%_)
        (let* ((_%e125245125252%_ _%stx125244%_)
               (_%E125247125256%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125245125252%_)))
               (_%E125246125275%_
                (lambda ()
                  (if (gx#stx-pair? _%e125245125252%_)
                      (let ((_%e125248125260%_
                             (gx#syntax-e _%e125245125252%_)))
                        (let ((_%hd125249125263%_ (##car _%e125248125260%_))
                              (_%tl125250125265%_ (##cdr _%e125248125260%_)))
                          (let ((_%clauses125268%_ _%tl125250125265%_))
                            (if (gx#stx-list? _%clauses125268%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause125270%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause125270%_)
                                       (let ((_%$e125272%_
                                              (gx#stx-source
                                               _%clause125270%_)))
                                         (if _%$e125272%_
                                             _%$e125272%_
                                             (gx#stx-source _%stx125244%_))))
                                      '#f))
                                   _%clauses125268%_))
                                 (gx#stx-source _%stx125244%_))
                                (_%E125247125256%_)))))
                      (_%E125247125256%_)))))
          (_%E125246125275%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx125198%_)
        (let* ((_%e125199125209%_ _%stx125198%_)
               (_%E125201125213%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125199125209%_)))
               (_%E125200125240%_
                (lambda ()
                  (if (gx#stx-pair? _%e125199125209%_)
                      (let ((_%e125202125217%_
                             (gx#syntax-e _%e125199125209%_)))
                        (let ((_%hd125203125220%_ (##car _%e125202125217%_))
                              (_%tl125204125222%_ (##cdr _%e125202125217%_)))
                          (if (gx#stx-pair? _%tl125204125222%_)
                              (let ((_%e125205125225%_
                                     (gx#syntax-e _%tl125204125222%_)))
                                (let ((_%hd125206125228%_
                                       (##car _%e125205125225%_))
                                      (_%tl125207125230%_
                                       (##cdr _%e125205125225%_)))
                                  (let* ((_%hd125233%_ _%hd125206125228%_)
                                         (_%body125235%_ _%tl125207125230%_))
                                    (if (gx#core-expand-let-bind? _%hd125233%_)
                                        (let ((_%expressions125237%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd125233%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd125233%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd125233%_
                                                           _%expressions125237%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx125198%_
                         _%body125235%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx125198%_)))
                                           gx#current-expander-context
                                           (let ((__obj126346
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj126346)
                                             __obj126346)))
                                        (_%E125201125213%_)))))
                              (_%E125201125213%_))))
                      (_%E125201125213%_)))))
          (_%E125200125240%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx125143%_ _%form125144%_)
        (let* ((_%e125145125155%_ _%stx125143%_)
               (_%E125147125159%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125145125155%_)))
               (_%E125146125184%_
                (lambda ()
                  (if (gx#stx-pair? _%e125145125155%_)
                      (let ((_%e125148125163%_
                             (gx#syntax-e _%e125145125155%_)))
                        (let ((_%hd125149125166%_ (##car _%e125148125163%_))
                              (_%tl125150125168%_ (##cdr _%e125148125163%_)))
                          (if (gx#stx-pair? _%tl125150125168%_)
                              (let ((_%e125151125171%_
                                     (gx#syntax-e _%tl125150125168%_)))
                                (let ((_%hd125152125174%_
                                       (##car _%e125151125171%_))
                                      (_%tl125153125176%_
                                       (##cdr _%e125151125171%_)))
                                  (let* ((_%hd125179%_ _%hd125152125174%_)
                                         (_%body125181%_ _%tl125153125176%_))
                                    (if (gx#core-expand-let-bind? _%hd125179%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd125179%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form125144%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd125179%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd125179%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx125143%_
                                                               _%body125181%_)
                                                              '())))
                                            (gx#stx-source _%stx125143%_)))
                                         gx#current-expander-context
                                         (let ((__obj126347
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126347)
                                           __obj126347))
                                        (_%E125147125159%_)))))
                              (_%E125147125159%_))))
                      (_%E125147125159%_)))))
          (_%E125146125184%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx125191%_)
        (let ((_%form125193%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx125191%_ _%form125193%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g126357_
        (let ((_g126356_ (##length _g126357_)))
          (cond ((##fx= _g126356_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g126357_))
                ((##fx= _g126356_ 2)
                 (apply gx#core-expand-letrec-values%__% _g126357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g126357_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx125140%_)
        (gx#core-expand-letrec-values%__% _%stx125140%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx125097%_)
        (if (gx#stx-list? _%stx125097%_)
            (gx#stx-andmap
             (lambda (_%bind125099%_)
               (let* ((_%e125100125110%_ _%bind125099%_)
                      (_%E125102125114%_ (lambda () '#f))
                      (_%E125101125136%_
                       (lambda ()
                         (if (gx#stx-pair? _%e125100125110%_)
                             (let ((_%e125103125118%_
                                    (gx#syntax-e _%e125100125110%_)))
                               (let ((_%hd125104125121%_
                                      (##car _%e125103125118%_))
                                     (_%tl125105125123%_
                                      (##cdr _%e125103125118%_)))
                                 (let ((_%hd125126%_ _%hd125104125121%_))
                                   (if (gx#stx-pair? _%tl125105125123%_)
                                       (let ((_%e125106125128%_
                                              (gx#syntax-e
                                               _%tl125105125123%_)))
                                         (let ((_%hd125107125131%_
                                                (##car _%e125106125128%_))
                                               (_%tl125108125133%_
                                                (##cdr _%e125106125128%_)))
                                           (if (gx#stx-null?
                                                _%tl125108125133%_)
                                               (gx#core-bind-values?
                                                _%hd125126%_)
                                               (_%E125102125114%_))))
                                       (_%E125102125114%_)))))
                             (_%E125102125114%_)))))
                 (_%E125101125136%_)))
             _%stx125097%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind125056%_)
        (let* ((_%e125057125067%_ _%bind125056%_)
               (_%E125059125071%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125057125067%_)))
               (_%E125058125093%_
                (lambda ()
                  (if (gx#stx-pair? _%e125057125067%_)
                      (let ((_%e125060125075%_
                             (gx#syntax-e _%e125057125067%_)))
                        (let ((_%hd125061125078%_ (##car _%e125060125075%_))
                              (_%tl125062125080%_ (##cdr _%e125060125075%_)))
                          (if (gx#stx-pair? _%tl125062125080%_)
                              (let ((_%e125063125083%_
                                     (gx#syntax-e _%tl125062125080%_)))
                                (let ((_%hd125064125086%_
                                       (##car _%e125063125083%_))
                                      (_%tl125065125088%_
                                       (##cdr _%e125063125083%_)))
                                  (let ((_%expr125091%_ _%hd125064125086%_))
                                    (if (gx#stx-null? _%tl125065125088%_)
                                        (gx#core-expand-expression
                                         _%expr125091%_)
                                        (_%E125059125071%_)))))
                              (_%E125059125071%_))))
                      (_%E125059125071%_)))))
          (_%E125058125093%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind125015%_)
        (let* ((_%e125016125026%_ _%bind125015%_)
               (_%E125018125030%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125016125026%_)))
               (_%E125017125052%_
                (lambda ()
                  (if (gx#stx-pair? _%e125016125026%_)
                      (let ((_%e125019125034%_
                             (gx#syntax-e _%e125016125026%_)))
                        (let ((_%hd125020125037%_ (##car _%e125019125034%_))
                              (_%tl125021125039%_ (##cdr _%e125019125034%_)))
                          (let ((_%hd125042%_ _%hd125020125037%_))
                            (if (gx#stx-pair? _%tl125021125039%_)
                                (let ((_%e125022125044%_
                                       (gx#syntax-e _%tl125021125039%_)))
                                  (let ((_%hd125023125047%_
                                         (##car _%e125022125044%_))
                                        (_%tl125024125049%_
                                         (##cdr _%e125022125044%_)))
                                    (if (gx#stx-null? _%tl125024125049%_)
                                        (gx#core-bind-values!__0 _%hd125042%_)
                                        (_%E125018125030%_))))
                                (_%E125018125030%_)))))
                      (_%E125018125030%_)))))
          (_%E125017125052%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind124973%_ _%expr124974%_)
        (let* ((_%e124975124985%_ _%bind124973%_)
               (_%E124977124989%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124975124985%_)))
               (_%E124976125011%_
                (lambda ()
                  (if (gx#stx-pair? _%e124975124985%_)
                      (let ((_%e124978124993%_
                             (gx#syntax-e _%e124975124985%_)))
                        (let ((_%hd124979124996%_ (##car _%e124978124993%_))
                              (_%tl124980124998%_ (##cdr _%e124978124993%_)))
                          (let ((_%hd125001%_ _%hd124979124996%_))
                            (if (gx#stx-pair? _%tl124980124998%_)
                                (let ((_%e124981125003%_
                                       (gx#syntax-e _%tl124980124998%_)))
                                  (let ((_%hd124982125006%_
                                         (##car _%e124981125003%_))
                                        (_%tl124983125008%_
                                         (##cdr _%e124981125003%_)))
                                    (if (gx#stx-null? _%tl124983125008%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd125001%_)
                                              (cons _%expr124974%_ '()))
                                        (_%E124977124989%_))))
                                (_%E124977124989%_)))))
                      (_%E124977124989%_)))))
          (_%E124976125011%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx124927%_)
        (let* ((_%e124928124938%_ _%stx124927%_)
               (_%E124930124942%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124928124938%_)))
               (_%E124929124969%_
                (lambda ()
                  (if (gx#stx-pair? _%e124928124938%_)
                      (let ((_%e124931124946%_
                             (gx#syntax-e _%e124928124938%_)))
                        (let ((_%hd124932124949%_ (##car _%e124931124946%_))
                              (_%tl124933124951%_ (##cdr _%e124931124946%_)))
                          (if (gx#stx-pair? _%tl124933124951%_)
                              (let ((_%e124934124954%_
                                     (gx#syntax-e _%tl124933124951%_)))
                                (let ((_%hd124935124957%_
                                       (##car _%e124934124954%_))
                                      (_%tl124936124959%_
                                       (##cdr _%e124934124954%_)))
                                  (let* ((_%hd124962%_ _%hd124935124957%_)
                                         (_%body124964%_ _%tl124936124959%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124962%_)
                                        (let ((_%expanders124966%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd124962%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd124962%_
                                              _%expanders124966%_)
                                             (gx#core-expand-local-block
                                              _%stx124927%_
                                              _%body124964%_))
                                           gx#current-expander-context
                                           (let ((__obj126348
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj126348)
                                             __obj126348)))
                                        (_%E124930124942%_)))))
                              (_%E124930124942%_))))
                      (_%E124930124942%_)))))
          (_%E124929124969%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx124876%_)
        (let* ((_%e124877124887%_ _%stx124876%_)
               (_%E124879124891%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124877124887%_)))
               (_%E124878124923%_
                (lambda ()
                  (if (gx#stx-pair? _%e124877124887%_)
                      (let ((_%e124880124895%_
                             (gx#syntax-e _%e124877124887%_)))
                        (let ((_%hd124881124898%_ (##car _%e124880124895%_))
                              (_%tl124882124900%_ (##cdr _%e124880124895%_)))
                          (if (gx#stx-pair? _%tl124882124900%_)
                              (let ((_%e124883124903%_
                                     (gx#syntax-e _%tl124882124900%_)))
                                (let ((_%hd124884124906%_
                                       (##car _%e124883124903%_))
                                      (_%tl124885124908%_
                                       (##cdr _%e124883124903%_)))
                                  (let* ((_%hd124911%_ _%hd124884124906%_)
                                         (_%body124913%_ _%tl124885124908%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124911%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd124911%_
                                            (make-list
                                             (gx#stx-length _%hd124911%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g124915124918%_
                                                     _%g124916124920%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g124915124918%_
                                               _%g124916124920%_
                                               '#t))
                                            _%hd124911%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd124911%_))
                                           (gx#core-expand-local-block
                                            _%stx124876%_
                                            _%body124913%_))
                                         gx#current-expander-context
                                         (let ((__obj126349
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126349)
                                           __obj126349))
                                        (_%E124879124891%_)))))
                              (_%E124879124891%_))))
                      (_%E124879124891%_)))))
          (_%E124878124923%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx124833%_)
        (if (gx#stx-list? _%stx124833%_)
            (gx#stx-andmap
             (lambda (_%bind124835%_)
               (let* ((_%e124836124846%_ _%bind124835%_)
                      (_%E124838124850%_ (lambda () '#f))
                      (_%E124837124872%_
                       (lambda ()
                         (if (gx#stx-pair? _%e124836124846%_)
                             (let ((_%e124839124854%_
                                    (gx#syntax-e _%e124836124846%_)))
                               (let ((_%hd124840124857%_
                                      (##car _%e124839124854%_))
                                     (_%tl124841124859%_
                                      (##cdr _%e124839124854%_)))
                                 (let ((_%hd124862%_ _%hd124840124857%_))
                                   (if (gx#stx-pair? _%tl124841124859%_)
                                       (let ((_%e124842124864%_
                                              (gx#syntax-e
                                               _%tl124841124859%_)))
                                         (let ((_%hd124843124867%_
                                                (##car _%e124842124864%_))
                                               (_%tl124844124869%_
                                                (##cdr _%e124842124864%_)))
                                           (if (gx#stx-null?
                                                _%tl124844124869%_)
                                               (gx#identifier? _%hd124862%_)
                                               (_%E124838124850%_))))
                                       (_%E124838124850%_)))))
                             (_%E124838124850%_)))))
                 (_%E124837124872%_)))
             _%stx124833%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind124789%_)
        (let* ((_%e124790124800%_ _%bind124789%_)
               (_%E124792124804%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124790124800%_)))
               (_%E124791124829%_
                (lambda ()
                  (if (gx#stx-pair? _%e124790124800%_)
                      (let ((_%e124793124808%_
                             (gx#syntax-e _%e124790124800%_)))
                        (let ((_%hd124794124811%_ (##car _%e124793124808%_))
                              (_%tl124795124813%_ (##cdr _%e124793124808%_)))
                          (if (gx#stx-pair? _%tl124795124813%_)
                              (let ((_%e124796124816%_
                                     (gx#syntax-e _%tl124795124813%_)))
                                (let ((_%hd124797124819%_
                                       (##car _%e124796124816%_))
                                      (_%tl124798124821%_
                                       (##cdr _%e124796124816%_)))
                                  (let ((_%expr124824%_ _%hd124797124819%_))
                                    (if (gx#stx-null? _%tl124798124821%_)
                                        (let ((_g126358_
                                               (gx#core-expand-expression+1
                                                _%expr124824%_)))
                                          (begin
                                            (let ((_g126359_
                                                   (if (##values? _g126358_)
                                                       (##values-length
                                                        _g126358_)
                                                       1)))
                                              (if (not (##fx= _g126359_ 2))
                                                  (error "Context expects 2 values"
                                                         _g126359_)))
                                            (let ((_%_124826%_
                                                   (##values-ref _g126358_ 0))
                                                  (_%e124827%_
                                                   (##values-ref _g126358_ 1)))
                                              _%e124827%_)))
                                        (_%E124792124804%_)))))
                              (_%E124792124804%_))))
                      (_%E124792124804%_)))))
          (_%E124791124829%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind124734%_ _%e124735%_ _%rebind?124736%_)
        (let* ((_%e124737124747%_ _%bind124734%_)
               (_%E124739124751%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124737124747%_)))
               (_%E124738124773%_
                (lambda ()
                  (if (gx#stx-pair? _%e124737124747%_)
                      (let ((_%e124740124755%_
                             (gx#syntax-e _%e124737124747%_)))
                        (let ((_%hd124741124758%_ (##car _%e124740124755%_))
                              (_%tl124742124760%_ (##cdr _%e124740124755%_)))
                          (let ((_%id124763%_ _%hd124741124758%_))
                            (if (gx#stx-pair? _%tl124742124760%_)
                                (let ((_%e124743124765%_
                                       (gx#syntax-e _%tl124742124760%_)))
                                  (let ((_%hd124744124768%_
                                         (##car _%e124743124765%_))
                                        (_%tl124745124770%_
                                         (##cdr _%e124743124765%_)))
                                    (if (gx#stx-null? _%tl124745124770%_)
                                        (gx#core-bind-syntax!__1
                                         _%id124763%_
                                         _%e124735%_
                                         _%rebind?124736%_)
                                        (_%E124739124751%_))))
                                (_%E124739124751%_)))))
                      (_%E124739124751%_)))))
          (_%E124738124773%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind124780%_ _%e124781%_)
        (let ((_%rebind?124783%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind124780%_
           _%e124781%_
           _%rebind?124783%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g126361_
        (let ((_g126360_ (##length _g126361_)))
          (cond ((##fx= _g126360_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g126361_))
                ((##fx= _g126360_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g126361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g126361_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx124692%_)
        (let* ((_%e124693124703%_ _%stx124692%_)
               (_%E124695124707%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124693124703%_)))
               (_%E124694124729%_
                (lambda ()
                  (if (gx#stx-pair? _%e124693124703%_)
                      (let ((_%e124696124711%_
                             (gx#syntax-e _%e124693124703%_)))
                        (let ((_%hd124697124714%_ (##car _%e124696124711%_))
                              (_%tl124698124716%_ (##cdr _%e124696124711%_)))
                          (if (gx#stx-pair? _%tl124698124716%_)
                              (let ((_%e124699124719%_
                                     (gx#syntax-e _%tl124698124716%_)))
                                (let ((_%hd124700124722%_
                                       (##car _%e124699124719%_))
                                      (_%tl124701124724%_
                                       (##cdr _%e124699124719%_)))
                                  (let ((_%expr124727%_ _%hd124700124722%_))
                                    (if (gx#stx-null? _%tl124701124724%_)
                                        (gx#core-expand-expression
                                         _%expr124727%_)
                                        (_%E124695124707%_)))))
                              (_%E124695124707%_))))
                      (_%E124695124707%_)))))
          (_%E124694124729%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx124651%_)
        (let* ((_%e124652124662%_ _%stx124651%_)
               (_%E124654124666%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124652124662%_)))
               (_%E124653124688%_
                (lambda ()
                  (if (gx#stx-pair? _%e124652124662%_)
                      (let ((_%e124655124670%_
                             (gx#syntax-e _%e124652124662%_)))
                        (let ((_%hd124656124673%_ (##car _%e124655124670%_))
                              (_%tl124657124675%_ (##cdr _%e124655124670%_)))
                          (if (gx#stx-pair? _%tl124657124675%_)
                              (let ((_%e124658124678%_
                                     (gx#syntax-e _%tl124657124675%_)))
                                (let ((_%hd124659124681%_
                                       (##car _%e124658124678%_))
                                      (_%tl124660124683%_
                                       (##cdr _%e124658124678%_)))
                                  (let ((_%e124686%_ _%hd124659124681%_))
                                    (if (gx#stx-null? _%tl124660124683%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e124686%_)
                                                     '()))
                                         (gx#stx-source _%stx124651%_))
                                        (_%E124654124666%_)))))
                              (_%E124654124666%_))))
                      (_%E124654124666%_)))))
          (_%E124653124688%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx124610%_)
        (let* ((_%e124611124621%_ _%stx124610%_)
               (_%E124613124625%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124611124621%_)))
               (_%E124612124647%_
                (lambda ()
                  (if (gx#stx-pair? _%e124611124621%_)
                      (let ((_%e124614124629%_
                             (gx#syntax-e _%e124611124621%_)))
                        (let ((_%hd124615124632%_ (##car _%e124614124629%_))
                              (_%tl124616124634%_ (##cdr _%e124614124629%_)))
                          (if (gx#stx-pair? _%tl124616124634%_)
                              (let ((_%e124617124637%_
                                     (gx#syntax-e _%tl124616124634%_)))
                                (let ((_%hd124618124640%_
                                       (##car _%e124617124637%_))
                                      (_%tl124619124642%_
                                       (##cdr _%e124617124637%_)))
                                  (let ((_%e124645%_ _%hd124618124640%_))
                                    (if (gx#stx-null? _%tl124619124642%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e124645%_)
                                                     '()))
                                         (gx#stx-source _%stx124610%_))
                                        (_%E124613124625%_)))))
                              (_%E124613124625%_))))
                      (_%E124613124625%_)))))
          (_%E124612124647%_))))
    (define gx#core-expand-call%
      (lambda (_%stx124567%_)
        (let* ((_%e124568124578%_ _%stx124567%_)
               (_%E124570124582%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124568124578%_)))
               (_%E124569124606%_
                (lambda ()
                  (if (gx#stx-pair? _%e124568124578%_)
                      (let ((_%e124571124586%_
                             (gx#syntax-e _%e124568124578%_)))
                        (let ((_%hd124572124589%_ (##car _%e124571124586%_))
                              (_%tl124573124591%_ (##cdr _%e124571124586%_)))
                          (if (gx#stx-pair? _%tl124573124591%_)
                              (let ((_%e124574124594%_
                                     (gx#syntax-e _%tl124573124591%_)))
                                (let ((_%hd124575124597%_
                                       (##car _%e124574124594%_))
                                      (_%tl124576124599%_
                                       (##cdr _%e124574124594%_)))
                                  (let* ((_%rator124602%_ _%hd124575124597%_)
                                         (_%args124604%_ _%tl124576124599%_))
                                    (if (gx#stx-list? _%args124604%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator124602%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args124604%_))
                                         (gx#stx-source _%stx124567%_))
                                        (_%E124570124582%_)))))
                              (_%E124570124582%_))))
                      (_%E124570124582%_)))))
          (_%E124569124606%_))))
    (define gx#core-expand-if%
      (lambda (_%stx124500%_)
        (let* ((_%e124501124517%_ _%stx124500%_)
               (_%E124503124521%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124501124517%_)))
               (_%E124502124563%_
                (lambda ()
                  (if (gx#stx-pair? _%e124501124517%_)
                      (let ((_%e124504124525%_
                             (gx#syntax-e _%e124501124517%_)))
                        (let ((_%hd124505124528%_ (##car _%e124504124525%_))
                              (_%tl124506124530%_ (##cdr _%e124504124525%_)))
                          (if (gx#stx-pair? _%tl124506124530%_)
                              (let ((_%e124507124533%_
                                     (gx#syntax-e _%tl124506124530%_)))
                                (let ((_%hd124508124536%_
                                       (##car _%e124507124533%_))
                                      (_%tl124509124538%_
                                       (##cdr _%e124507124533%_)))
                                  (let ((_%test124541%_ _%hd124508124536%_))
                                    (if (gx#stx-pair? _%tl124509124538%_)
                                        (let ((_%e124510124543%_
                                               (gx#syntax-e
                                                _%tl124509124538%_)))
                                          (let ((_%hd124511124546%_
                                                 (##car _%e124510124543%_))
                                                (_%tl124512124548%_
                                                 (##cdr _%e124510124543%_)))
                                            (let ((_%K124551%_
                                                   _%hd124511124546%_))
                                              (if (gx#stx-pair?
                                                   _%tl124512124548%_)
                                                  (let ((_%e124513124553%_
                                                         (gx#syntax-e
                                                          _%tl124512124548%_)))
                                                    (let ((_%hd124514124556%_
                                                           (##car _%e124513124553%_))
                                                          (_%tl124515124558%_
                                                           (##cdr _%e124513124553%_)))
                                                      (let ((_%E124561%_
                                                             _%hd124514124556%_))
                                                        (if (gx#stx-null?
                                                             _%tl124515124558%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test124541%_)
                                 (cons (gx#core-expand-expression _%K124551%_)
                                       (cons (gx#core-expand-expression
                                              _%E124561%_)
                                             '()))))
                     (gx#stx-source _%stx124500%_))
                    (_%E124503124521%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124503124521%_)))))
                                        (_%E124503124521%_)))))
                              (_%E124503124521%_))))
                      (_%E124503124521%_)))))
          (_%E124502124563%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx124459%_)
        (let* ((_%e124460124470%_ _%stx124459%_)
               (_%E124462124474%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124460124470%_)))
               (_%E124461124496%_
                (lambda ()
                  (if (gx#stx-pair? _%e124460124470%_)
                      (let ((_%e124463124478%_
                             (gx#syntax-e _%e124460124470%_)))
                        (let ((_%hd124464124481%_ (##car _%e124463124478%_))
                              (_%tl124465124483%_ (##cdr _%e124463124478%_)))
                          (if (gx#stx-pair? _%tl124465124483%_)
                              (let ((_%e124466124486%_
                                     (gx#syntax-e _%tl124465124483%_)))
                                (let ((_%hd124467124489%_
                                       (##car _%e124466124486%_))
                                      (_%tl124468124491%_
                                       (##cdr _%e124466124486%_)))
                                  (let ((_%id124494%_ _%hd124467124489%_))
                                    (if (gx#stx-null? _%tl124468124491%_)
                                        (if (gx#identifier? _%id124494%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id124494%_
                                                          _%stx124459%_)
                                                         '()))
                                             (gx#stx-source _%stx124459%_))
                                            (_%E124462124474%_))
                                        (_%E124462124474%_)))))
                              (_%E124462124474%_))))
                      (_%E124462124474%_)))))
          (_%E124461124496%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx124405%_)
        (let* ((_%e124406124419%_ _%stx124405%_)
               (_%E124408124423%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124406124419%_)))
               (_%E124407124455%_
                (lambda ()
                  (if (gx#stx-pair? _%e124406124419%_)
                      (let ((_%e124409124427%_
                             (gx#syntax-e _%e124406124419%_)))
                        (let ((_%hd124410124430%_ (##car _%e124409124427%_))
                              (_%tl124411124432%_ (##cdr _%e124409124427%_)))
                          (if (gx#stx-pair? _%tl124411124432%_)
                              (let ((_%e124412124435%_
                                     (gx#syntax-e _%tl124411124432%_)))
                                (let ((_%hd124413124438%_
                                       (##car _%e124412124435%_))
                                      (_%tl124414124440%_
                                       (##cdr _%e124412124435%_)))
                                  (let ((_%id124443%_ _%hd124413124438%_))
                                    (if (gx#stx-pair? _%tl124414124440%_)
                                        (let ((_%e124415124445%_
                                               (gx#syntax-e
                                                _%tl124414124440%_)))
                                          (let ((_%hd124416124448%_
                                                 (##car _%e124415124445%_))
                                                (_%tl124417124450%_
                                                 (##cdr _%e124415124445%_)))
                                            (let ((_%expr124453%_
                                                   _%hd124416124448%_))
                                              (if (gx#stx-null?
                                                   _%tl124417124450%_)
                                                  (if (gx#identifier?
                                                       _%id124443%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id124443%_
                            _%stx124405%_)
                           (cons (gx#core-expand-expression _%expr124453%_)
                                 '())))
               (gx#stx-source _%stx124405%_))
              (_%E124408124423%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124408124423%_)))))
                                        (_%E124408124423%_)))))
                              (_%E124408124423%_))))
                      (_%E124408124423%_)))))
          (_%E124407124455%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx124250%_)
        (letrec ((_%generate124252%_
                  (lambda (_%body124282%_)
                    (let _%lp124284%_ ((_%rest124286%_ _%body124282%_)
                                       (_%ns124287%_
                                        (gx#core-context-namespace__0))
                                       (_%r124288%_ '()))
                      (let* ((_%e124289124304%_ _%rest124286%_)
                             (_%E124302124308%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e124289124304%_)))
                             (_%E124298124312%_
                              (lambda ()
                                (if (gx#stx-null? _%e124289124304%_)
                                    (reverse _%r124288%_)
                                    (_%E124302124308%_))))
                             (_%E124291124369%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124289124304%_)
                                    (let ((_%e124299124316%_
                                           (gx#syntax-e _%e124289124304%_)))
                                      (let ((_%hd124300124319%_
                                             (##car _%e124299124316%_))
                                            (_%tl124301124321%_
                                             (##cdr _%e124299124316%_)))
                                        (let* ((_%hd124324%_
                                                _%hd124300124319%_)
                                               (_%rest124326%_
                                                _%tl124301124321%_))
                                          (if (gx#identifier? _%hd124324%_)
                                              (_%lp124284%_
                                               _%rest124326%_
                                               _%ns124287%_
                                               (cons (cons _%hd124324%_
                                                           (cons (if _%ns124287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd124324%_
                              _%ns124287%_
                              '"#"
                              _%hd124324%_)
                             _%hd124324%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r124288%_))
                                              (let* ((_%e124327124337%_
                                                      _%hd124324%_)
                                                     (_%E124329124341%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e124327124337%_)))
                                                     (_%E124328124365%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e124327124337%_)
                                                            (let ((_%e124330124345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e124327124337%_)))
                      (let ((_%hd124331124348%_ (##car _%e124330124345%_))
                            (_%tl124332124350%_ (##cdr _%e124330124345%_)))
                        (let ((_%id124353%_ _%hd124331124348%_))
                          (if (gx#stx-pair? _%tl124332124350%_)
                              (let ((_%e124333124355%_
                                     (gx#syntax-e _%tl124332124350%_)))
                                (let ((_%hd124334124358%_
                                       (##car _%e124333124355%_))
                                      (_%tl124335124360%_
                                       (##cdr _%e124333124355%_)))
                                  (let ((_%eid124363%_ _%hd124334124358%_))
                                    (if (gx#stx-null? _%tl124335124360%_)
                                        (if (and (gx#identifier? _%id124353%_)
                                                 (gx#identifier?
                                                  _%eid124363%_))
                                            (_%lp124284%_
                                             _%rest124326%_
                                             _%ns124287%_
                                             (cons (cons _%id124353%_
                                                         (cons _%eid124363%_
                                                               '()))
                                                   _%r124288%_))
                                            (_%E124329124341%_))
                                        (_%E124329124341%_)))))
                              (_%E124329124341%_)))))
                    (_%E124329124341%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124328124365%_))))))
                                    (_%E124298124312%_))))
                             (_%E124290124401%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124289124304%_)
                                    (let ((_%e124292124373%_
                                           (gx#syntax-e _%e124289124304%_)))
                                      (let ((_%hd124293124376%_
                                             (##car _%e124292124373%_))
                                            (_%tl124294124378%_
                                             (##cdr _%e124292124373%_)))
                                        (if (eq? (gx#stx-e _%hd124293124376%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl124294124378%_)
                                                (let ((_%e124295124381%_
                                                       (gx#syntax-e
                                                        _%tl124294124378%_)))
                                                  (let ((_%hd124296124384%_
                                                         (##car _%e124295124381%_))
                                                        (_%tl124297124386%_
                                                         (##cdr _%e124295124381%_)))
                                                    (let* ((_%ns124389%_
                                                            _%hd124296124384%_)
                                                           (_%rest124391%_
                                                            _%tl124297124386%_)
                                                           (_%ns124399%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns124389%_)
                        (symbol->string (gx#stx-e _%ns124389%_))
                        (if (or (gx#stx-string? _%ns124389%_)
                                (gx#stx-false? _%ns124389%_))
                            (gx#stx-e _%ns124389%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx124250%_
                             _%ns124389%_)))))
              (_%lp124284%_ _%rest124391%_ _%ns124399%_ _%r124288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124291124369%_))
                                            (_%E124291124369%_))))
                                    (_%E124291124369%_)))))
                        (_%E124290124401%_))))))
          (let* ((_%e124253124260%_ _%stx124250%_)
                 (_%E124255124264%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124253124260%_)))
                 (_%E124254124278%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124253124260%_)
                        (let ((_%e124256124268%_
                               (gx#syntax-e _%e124253124260%_)))
                          (let ((_%hd124257124271%_ (##car _%e124256124268%_))
                                (_%tl124258124273%_ (##cdr _%e124256124268%_)))
                            (let ((_%body124276%_ _%tl124258124273%_))
                              (if (gx#stx-list? _%body124276%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate124252%_ _%body124276%_))
                                  (_%E124255124264%_)))))
                        (_%E124255124264%_)))))
            (_%E124254124278%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx124196%_)
        (let* ((_%e124197124210%_ _%stx124196%_)
               (_%E124199124214%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124197124210%_)))
               (_%E124198124246%_
                (lambda ()
                  (if (gx#stx-pair? _%e124197124210%_)
                      (let ((_%e124200124218%_
                             (gx#syntax-e _%e124197124210%_)))
                        (let ((_%hd124201124221%_ (##car _%e124200124218%_))
                              (_%tl124202124223%_ (##cdr _%e124200124218%_)))
                          (if (gx#stx-pair? _%tl124202124223%_)
                              (let ((_%e124203124226%_
                                     (gx#syntax-e _%tl124202124223%_)))
                                (let ((_%hd124204124229%_
                                       (##car _%e124203124226%_))
                                      (_%tl124205124231%_
                                       (##cdr _%e124203124226%_)))
                                  (let ((_%hd124234%_ _%hd124204124229%_))
                                    (if (gx#stx-pair? _%tl124205124231%_)
                                        (let ((_%e124206124236%_
                                               (gx#syntax-e
                                                _%tl124205124231%_)))
                                          (let ((_%hd124207124239%_
                                                 (##car _%e124206124236%_))
                                                (_%tl124208124241%_
                                                 (##cdr _%e124206124236%_)))
                                            (let ((_%expr124244%_
                                                   _%hd124207124239%_))
                                              (if (gx#stx-null?
                                                   _%tl124208124241%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd124234%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd124234%_)
                          (cons _%expr124244%_ '())))
              (_%E124199124214%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124199124214%_)))))
                                        (_%E124199124214%_)))))
                              (_%E124199124214%_))))
                      (_%E124199124214%_)))))
          (_%E124198124246%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx124142%_)
        (let* ((_%e124143124156%_ _%stx124142%_)
               (_%E124145124160%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124143124156%_)))
               (_%E124144124192%_
                (lambda ()
                  (if (gx#stx-pair? _%e124143124156%_)
                      (let ((_%e124146124164%_
                             (gx#syntax-e _%e124143124156%_)))
                        (let ((_%hd124147124167%_ (##car _%e124146124164%_))
                              (_%tl124148124169%_ (##cdr _%e124146124164%_)))
                          (if (gx#stx-pair? _%tl124148124169%_)
                              (let ((_%e124149124172%_
                                     (gx#syntax-e _%tl124148124169%_)))
                                (let ((_%hd124150124175%_
                                       (##car _%e124149124172%_))
                                      (_%tl124151124177%_
                                       (##cdr _%e124149124172%_)))
                                  (let ((_%hd124180%_ _%hd124150124175%_))
                                    (if (gx#stx-pair? _%tl124151124177%_)
                                        (let ((_%e124152124182%_
                                               (gx#syntax-e
                                                _%tl124151124177%_)))
                                          (let ((_%hd124153124185%_
                                                 (##car _%e124152124182%_))
                                                (_%tl124154124187%_
                                                 (##cdr _%e124152124182%_)))
                                            (let ((_%expr124190%_
                                                   _%hd124153124185%_))
                                              (if (gx#stx-null?
                                                   _%tl124154124187%_)
                                                  (if (gx#identifier?
                                                       _%hd124180%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd124180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr124190%_ '())))
              (_%E124145124160%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124145124160%_)))))
                                        (_%E124145124160%_)))))
                              (_%E124145124160%_))))
                      (_%E124145124160%_)))))
          (_%E124144124192%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx124088%_)
        (let* ((_%e124089124102%_ _%stx124088%_)
               (_%E124091124106%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124089124102%_)))
               (_%E124090124138%_
                (lambda ()
                  (if (gx#stx-pair? _%e124089124102%_)
                      (let ((_%e124092124110%_
                             (gx#syntax-e _%e124089124102%_)))
                        (let ((_%hd124093124113%_ (##car _%e124092124110%_))
                              (_%tl124094124115%_ (##cdr _%e124092124110%_)))
                          (if (gx#stx-pair? _%tl124094124115%_)
                              (let ((_%e124095124118%_
                                     (gx#syntax-e _%tl124094124115%_)))
                                (let ((_%hd124096124121%_
                                       (##car _%e124095124118%_))
                                      (_%tl124097124123%_
                                       (##cdr _%e124095124118%_)))
                                  (let ((_%id124126%_ _%hd124096124121%_))
                                    (if (gx#stx-pair? _%tl124097124123%_)
                                        (let ((_%e124098124128%_
                                               (gx#syntax-e
                                                _%tl124097124123%_)))
                                          (let ((_%hd124099124131%_
                                                 (##car _%e124098124128%_))
                                                (_%tl124100124133%_
                                                 (##cdr _%e124098124128%_)))
                                            (let ((_%alias-id124136%_
                                                   _%hd124099124131%_))
                                              (if (gx#stx-null?
                                                   _%tl124100124133%_)
                                                  (if (and (gx#identifier?
                                                            _%id124126%_)
                                                           (gx#identifier?
                                                            _%alias-id124136%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id124126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id124136%_ '())))
              (_%E124091124106%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124091124106%_)))))
                                        (_%E124091124106%_)))))
                              (_%E124091124106%_))))
                      (_%E124091124106%_)))))
          (_%E124090124138%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx124045%_)
        (let* ((_%e124046124056%_ _%stx124045%_)
               (_%E124048124060%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124046124056%_)))
               (_%E124047124084%_
                (lambda ()
                  (if (gx#stx-pair? _%e124046124056%_)
                      (let ((_%e124049124064%_
                             (gx#syntax-e _%e124046124056%_)))
                        (let ((_%hd124050124067%_ (##car _%e124049124064%_))
                              (_%tl124051124069%_ (##cdr _%e124049124064%_)))
                          (if (gx#stx-pair? _%tl124051124069%_)
                              (let ((_%e124052124072%_
                                     (gx#syntax-e _%tl124051124069%_)))
                                (let ((_%hd124053124075%_
                                       (##car _%e124052124072%_))
                                      (_%tl124054124077%_
                                       (##cdr _%e124052124072%_)))
                                  (let* ((_%hd124080%_ _%hd124053124075%_)
                                         (_%body124082%_ _%tl124054124077%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd124080%_)
                                             (gx#stx-list? _%body124082%_)
                                             (not (gx#stx-null?
                                                   _%body124082%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd124080%_)
                                         _%body124082%_)
                                        (_%E124048124060%_)))))
                              (_%E124048124060%_))))
                      (_%E124048124060%_)))))
          (_%E124047124084%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx123981%_)
        (letrec ((_%generate123983%_
                  (lambda (_%clause124013%_)
                    (let* ((_%e124014124021%_ _%clause124013%_)
                           (_%E124016124025%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx123981%_
                               _%clause124013%_)))
                           (_%E124015124041%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124014124021%_)
                                  (let ((_%e124017124029%_
                                         (gx#syntax-e _%e124014124021%_)))
                                    (let ((_%hd124018124032%_
                                           (##car _%e124017124029%_))
                                          (_%tl124019124034%_
                                           (##cdr _%e124017124029%_)))
                                      (let* ((_%hd124037%_ _%hd124018124032%_)
                                             (_%body124039%_
                                              _%tl124019124034%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd124037%_)
                                                 (gx#stx-list? _%body124039%_)
                                                 (not (gx#stx-null?
                                                       _%body124039%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd124037%_)
                                                   _%body124039%_)
                                             (gx#stx-source _%clause124013%_))
                                            (_%E124016124025%_)))))
                                  (_%E124016124025%_)))))
                      (_%E124015124041%_)))))
          (let* ((_%e123984123991%_ _%stx123981%_)
                 (_%E123986123995%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123984123991%_)))
                 (_%E123985124009%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123984123991%_)
                        (let ((_%e123987123999%_
                               (gx#syntax-e _%e123984123991%_)))
                          (let ((_%hd123988124002%_ (##car _%e123987123999%_))
                                (_%tl123989124004%_ (##cdr _%e123987123999%_)))
                            (let ((_%clauses124007%_ _%tl123989124004%_))
                              (if (gx#stx-list? _%clauses124007%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate123983%_
                                    _%clauses124007%_))
                                  (_%E123986123995%_)))))
                        (_%E123986123995%_)))))
            (_%E123985124009%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx123882%_ _%form123883%_)
        (letrec ((_%generate123885%_
                  (lambda (_%bind123928%_)
                    (let* ((_%e123929123939%_ _%bind123928%_)
                           (_%E123931123943%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx123882%_
                               _%bind123928%_)))
                           (_%E123930123967%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123929123939%_)
                                  (let ((_%e123932123947%_
                                         (gx#syntax-e _%e123929123939%_)))
                                    (let ((_%hd123933123950%_
                                           (##car _%e123932123947%_))
                                          (_%tl123934123952%_
                                           (##cdr _%e123932123947%_)))
                                      (let ((_%ids123955%_ _%hd123933123950%_))
                                        (if (gx#stx-pair? _%tl123934123952%_)
                                            (let ((_%e123935123957%_
                                                   (gx#syntax-e
                                                    _%tl123934123952%_)))
                                              (let ((_%hd123936123960%_
                                                     (##car _%e123935123957%_))
                                                    (_%tl123937123962%_
                                                     (##cdr _%e123935123957%_)))
                                                (let ((_%expr123965%_
                                                       _%hd123936123960%_))
                                                  (if (gx#stx-null?
                                                       _%tl123937123962%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids123955%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids123955%_)
                        (cons _%expr123965%_ '()))
                  (_%E123931123943%_))
              (_%E123931123943%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E123931123943%_)))))
                                  (_%E123931123943%_)))))
                      (_%E123930123967%_)))))
          (let* ((_%e123886123896%_ _%stx123882%_)
                 (_%E123888123900%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123886123896%_)))
                 (_%E123887123924%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123886123896%_)
                        (let ((_%e123889123904%_
                               (gx#syntax-e _%e123886123896%_)))
                          (let ((_%hd123890123907%_ (##car _%e123889123904%_))
                                (_%tl123891123909%_ (##cdr _%e123889123904%_)))
                            (if (gx#stx-pair? _%tl123891123909%_)
                                (let ((_%e123892123912%_
                                       (gx#syntax-e _%tl123891123909%_)))
                                  (let ((_%hd123893123915%_
                                         (##car _%e123892123912%_))
                                        (_%tl123894123917%_
                                         (##cdr _%e123892123912%_)))
                                    (let* ((_%hd123920%_ _%hd123893123915%_)
                                           (_%body123922%_ _%tl123894123917%_))
                                      (if (and (gx#stx-list? _%hd123920%_)
                                               (gx#stx-list? _%body123922%_)
                                               (not (gx#stx-null?
                                                     _%body123922%_)))
                                          (gx#core-cons*
                                           _%form123883%_
                                           (gx#stx-map1
                                            _%generate123885%_
                                            _%hd123920%_)
                                           _%body123922%_)
                                          (_%E123888123900%_)))))
                                (_%E123888123900%_))))
                        (_%E123888123900%_)))))
            (_%E123887123924%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx123974%_)
        (let ((_%form123976%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx123974%_ _%form123976%_))))
    (define gx#macro-expand-let-values
      (lambda _g126363_
        (let ((_g126362_ (##length _g126363_)))
          (cond ((##fx= _g126362_ 1)
                 (apply gx#macro-expand-let-values__0 _g126363_))
                ((##fx= _g126362_ 2)
                 (apply gx#macro-expand-let-values__% _g126363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g126363_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx123879%_)
        (gx#macro-expand-let-values__% _%stx123879%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx123877%_)
        (gx#macro-expand-let-values__% _%stx123877%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx123768%_)
        (let* ((_%e123769123795%_ _%stx123768%_)
               (_%E123781123799%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123769123795%_)))
               (_%E123771123841%_
                (lambda ()
                  (if (gx#stx-pair? _%e123769123795%_)
                      (let ((_%e123782123803%_
                             (gx#syntax-e _%e123769123795%_)))
                        (let ((_%hd123783123806%_ (##car _%e123782123803%_))
                              (_%tl123784123808%_ (##cdr _%e123782123803%_)))
                          (if (gx#stx-pair? _%tl123784123808%_)
                              (let ((_%e123785123811%_
                                     (gx#syntax-e _%tl123784123808%_)))
                                (let ((_%hd123786123814%_
                                       (##car _%e123785123811%_))
                                      (_%tl123787123816%_
                                       (##cdr _%e123785123811%_)))
                                  (let ((_%test123819%_ _%hd123786123814%_))
                                    (if (gx#stx-pair? _%tl123787123816%_)
                                        (let ((_%e123788123821%_
                                               (gx#syntax-e
                                                _%tl123787123816%_)))
                                          (let ((_%hd123789123824%_
                                                 (##car _%e123788123821%_))
                                                (_%tl123790123826%_
                                                 (##cdr _%e123788123821%_)))
                                            (let ((_%K123829%_
                                                   _%hd123789123824%_))
                                              (if (gx#stx-pair?
                                                   _%tl123790123826%_)
                                                  (let ((_%e123791123831%_
                                                         (gx#syntax-e
                                                          _%tl123790123826%_)))
                                                    (let ((_%hd123792123834%_
                                                           (##car _%e123791123831%_))
                                                          (_%tl123793123836%_
                                                           (##cdr _%e123791123831%_)))
                                                      (let ((_%E123839%_
                                                             _%hd123792123834%_))
                                                        (if (gx#stx-null?
                                                             _%tl123793123836%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test123819%_
                                                             _%K123829%_
                                                             _%E123839%_)
                                                            (_%E123781123799%_)))))
                                                  (_%E123781123799%_)))))
                                        (_%E123781123799%_)))))
                              (_%E123781123799%_))))
                      (_%E123781123799%_))))
               (_%E123770123873%_
                (lambda ()
                  (if (gx#stx-pair? _%e123769123795%_)
                      (let ((_%e123772123845%_
                             (gx#syntax-e _%e123769123795%_)))
                        (let ((_%hd123773123848%_ (##car _%e123772123845%_))
                              (_%tl123774123850%_ (##cdr _%e123772123845%_)))
                          (if (gx#stx-pair? _%tl123774123850%_)
                              (let ((_%e123775123853%_
                                     (gx#syntax-e _%tl123774123850%_)))
                                (let ((_%hd123776123856%_
                                       (##car _%e123775123853%_))
                                      (_%tl123777123858%_
                                       (##cdr _%e123775123853%_)))
                                  (let ((_%test123861%_ _%hd123776123856%_))
                                    (if (gx#stx-pair? _%tl123777123858%_)
                                        (let ((_%e123778123863%_
                                               (gx#syntax-e
                                                _%tl123777123858%_)))
                                          (let ((_%hd123779123866%_
                                                 (##car _%e123778123863%_))
                                                (_%tl123780123868%_
                                                 (##cdr _%e123778123863%_)))
                                            (let ((_%K123871%_
                                                   _%hd123779123866%_))
                                              (if (gx#stx-null?
                                                   _%tl123780123868%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test123861%_
                                                   _%K123871%_
                                                   '#!void)
                                                  (_%E123771123841%_)))))
                                        (_%E123771123841%_)))))
                              (_%E123771123841%_))))
                      (_%E123771123841%_)))))
          (_%E123770123873%_))))
    (define gx#free-identifier=?
      (lambda (_%xid123753%_ _%yid123754%_)
        (let ((_%xe123756%_ (gx#resolve-identifier__0 _%xid123753%_))
              (_%ye123757%_ (gx#resolve-identifier__0 _%yid123754%_)))
          (if (and _%xe123756%_ _%ye123757%_)
              (let ((_%$e123760%_ (eq? _%xe123756%_ _%ye123757%_)))
                (if _%$e123760%_
                    _%$e123760%_
                    (if (##structure-instance-of? _%xe123756%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye123757%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe123756%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye123757%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe123756%_ _%ye123757%_)
                  '#f
                  (gx#stx-eq? _%xid123753%_ _%yid123754%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid123734%_ _%yid123735%_)
        (letrec ((_%context123737%_
                  (lambda (_%e123751%_)
                    (if (##structure-direct-instance-of?
                         _%e123751%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e123751%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks123738%_
                  (lambda (_%e123746%_)
                    (if (symbol? _%e123746%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e123746%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e123746%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e123746%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap123739%_
                  (lambda (_%e123744%_)
                    (if (symbol? _%e123744%_)
                        _%e123744%_
                        (gx#syntax-local-unwrap _%e123744%_)))))
          (let ((_%x123741%_ (_%unwrap123739%_ _%xid123734%_))
                (_%y123742%_ (_%unwrap123739%_ _%yid123735%_)))
            (if (gx#stx-eq? _%x123741%_ _%y123742%_)
                (if (eq? (_%context123737%_ _%x123741%_)
                         (_%context123737%_ _%y123742%_))
                    (equal? (_%marks123738%_ _%x123741%_)
                            (_%marks123738%_ _%y123742%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx123732%_)
        (if (gx#identifier? _%stx123732%_)
            (gx#core-identifier=? _%stx123732%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx123730%_)
        (if (gx#identifier? _%stx123730%_)
            (gx#core-identifier=? _%stx123730%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx123673%_ _%where123674%_)
        (let _%lp123676%_ ((_%rest123678%_ (gx#syntax->list _%stx123673%_)))
          (let* ((_%rest123679123687%_ _%rest123678%_)
                 (_%else123681123695%_ (lambda () '#t))
                 (_%K123683123708%_
                  (lambda (_%rest123698%_ _%hd123699%_)
                    (if (gx#identifier? _%hd123699%_)
                        (if (__find (lambda (_%g123701123703%_)
                                      (gx#bound-identifier=?
                                       _%g123701123703%_
                                       _%hd123699%_))
                                    _%rest123698%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where123674%_
                             _%hd123699%_)
                            (_%lp123676%_ _%rest123698%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where123674%_
                         _%hd123699%_)))))
            (if (pair? _%rest123679123687%_)
                (let ((_%hd123684123711%_ (##car _%rest123679123687%_))
                      (_%tl123685123713%_ (##cdr _%rest123679123687%_)))
                  (let* ((_%hd123716%_ _%hd123684123711%_)
                         (_%rest123718%_ _%tl123685123713%_))
                    (_%K123683123708%_ _%rest123718%_ _%hd123716%_)))
                (_%else123681123695%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx123723%_)
        (let ((_%where123725%_ _%stx123723%_))
          (gx#check-duplicate-identifiers__% _%stx123723%_ _%where123725%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g126365_
        (let ((_g126364_ (##length _g126365_)))
          (cond ((##fx= _g126364_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g126365_))
                ((##fx= _g126364_ 2)
                 (apply gx#check-duplicate-identifiers__% _g126365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g126365_))))))
    (define gx#core-bind-values?
      (lambda (_%stx123665%_)
        (gx#stx-andmap
         (lambda (_%x123667%_)
           (let ((_%$e123669%_ (gx#identifier? _%x123667%_)))
             (if _%$e123669%_ _%$e123669%_ (gx#stx-false? _%x123667%_))))
         _%stx123665%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx123629%_ _%rebind?123630%_ _%phi123631%_ _%ctx123632%_)
        (gx#stx-for-each1
         (lambda (_%id123634%_)
           (if (gx#identifier? _%id123634%_)
               (gx#core-bind-runtime!__%
                _%id123634%_
                _%rebind?123630%_
                _%phi123631%_
                _%ctx123632%_)
               '#!void))
         _%stx123629%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx123639%_)
        (let* ((_%rebind?123641%_ '#f)
               (_%phi123643%_ (gx#current-expander-phi))
               (_%ctx123645%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123639%_
           _%rebind?123641%_
           _%phi123643%_
           _%ctx123645%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx123647%_ _%rebind?123648%_)
        (let* ((_%phi123650%_ (gx#current-expander-phi))
               (_%ctx123652%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123647%_
           _%rebind?123648%_
           _%phi123650%_
           _%ctx123652%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx123654%_ _%rebind?123655%_ _%phi123656%_)
        (let ((_%ctx123658%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123654%_
           _%rebind?123655%_
           _%phi123656%_
           _%ctx123658%_))))
    (define gx#core-bind-values!
      (lambda _g126367_
        (let ((_g126366_ (##length _g126367_)))
          (cond ((##fx= _g126366_ 1) (apply gx#core-bind-values!__0 _g126367_))
                ((##fx= _g126366_ 2) (apply gx#core-bind-values!__1 _g126367_))
                ((##fx= _g126366_ 3) (apply gx#core-bind-values!__2 _g126367_))
                ((##fx= _g126366_ 4) (apply gx#core-bind-values!__% _g126367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g126367_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx123624%_)
        (gx#stx-map1
         (lambda (_%x123626%_)
           (if (gx#identifier? _%x123626%_)
               (gx#core-quote-syntax__0 _%x123626%_)
               '#f))
         _%stx123624%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx123617%_)
        (if (gx#identifier? _%stx123617%_)
            (let* ((_%bind123619%_ (gx#resolve-identifier__0 _%stx123617%_))
                   (_%$e123621%_ (not _%bind123619%_)))
              (if _%$e123621%_
                  _%$e123621%_
                  (##structure-instance-of?
                   _%bind123619%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id123606%_ _%form123607%_)
        (let ((_%bind123609%_ (gx#resolve-identifier__0 _%id123606%_)))
          (if (##structure-instance-of? _%bind123609%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id123606%_)
              (if (not _%bind123609%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id123606%_)))
                      (gx#core-quote-syntax__0 _%id123606%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form123607%_
                       _%id123606%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form123607%_
                   _%id123606%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id123561%_ _%rebind?123562%_ _%phi123563%_ _%ctx123564%_)
        (let* ((_%key123566%_ (gx#core-identifier-key _%id123561%_))
               (_%eid123568%_
                (gx#make-binding-id__%
                 _%key123566%_
                 '#f
                 _%phi123563%_
                 _%ctx123564%_))
               (_%bind123574%_
                (if (##structure-instance-of?
                     _%ctx123564%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid123568%_
                     _%key123566%_
                     _%phi123563%_
                     _%ctx123564%_)
                    (if (##structure-instance-of?
                         _%ctx123564%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid123568%_
                         _%key123566%_
                         _%phi123563%_)
                        (if (##structure-instance-of?
                             _%ctx123564%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid123568%_
                             _%key123566%_
                             _%phi123563%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid123568%_
                             _%key123566%_
                             _%phi123563%_))))))
          (gx#bind-identifier!__%
           _%id123561%_
           _%bind123574%_
           _%rebind?123562%_
           _%phi123563%_
           _%ctx123564%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id123580%_)
        (let* ((_%rebind?123582%_ '#f)
               (_%phi123584%_ (gx#current-expander-phi))
               (_%ctx123586%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123580%_
           _%rebind?123582%_
           _%phi123584%_
           _%ctx123586%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id123588%_ _%rebind?123589%_)
        (let* ((_%phi123591%_ (gx#current-expander-phi))
               (_%ctx123593%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123588%_
           _%rebind?123589%_
           _%phi123591%_
           _%ctx123593%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id123595%_ _%rebind?123596%_ _%phi123597%_)
        (let ((_%ctx123599%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123595%_
           _%rebind?123596%_
           _%phi123597%_
           _%ctx123599%_))))
    (define gx#core-bind-runtime!
      (lambda _g126369_
        (let ((_g126368_ (##length _g126369_)))
          (cond ((##fx= _g126368_ 1)
                 (apply gx#core-bind-runtime!__0 _g126369_))
                ((##fx= _g126368_ 2)
                 (apply gx#core-bind-runtime!__1 _g126369_))
                ((##fx= _g126368_ 3)
                 (apply gx#core-bind-runtime!__2 _g126369_))
                ((##fx= _g126368_ 4)
                 (apply gx#core-bind-runtime!__% _g126369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g126369_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id123513%_
               _%eid123514%_
               _%rebind?123515%_
               _%phi123516%_
               _%ctx123517%_)
        (let* ((_%key123519%_ (gx#core-identifier-key _%id123513%_))
               (_%bind123524%_
                (if (##structure-instance-of?
                     _%ctx123517%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid123514%_
                     _%key123519%_
                     _%phi123516%_
                     _%ctx123517%_)
                    (if (##structure-instance-of?
                         _%ctx123517%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid123514%_
                         _%key123519%_
                         _%phi123516%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid123514%_
                         _%key123519%_
                         _%phi123516%_)))))
          (gx#bind-identifier!__%
           _%id123513%_
           _%bind123524%_
           _%rebind?123515%_
           _%phi123516%_
           _%ctx123517%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id123530%_ _%eid123531%_)
        (let* ((_%rebind?123533%_ '#f)
               (_%phi123535%_ (gx#current-expander-phi))
               (_%ctx123537%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123530%_
           _%eid123531%_
           _%rebind?123533%_
           _%phi123535%_
           _%ctx123537%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id123539%_ _%eid123540%_ _%rebind?123541%_)
        (let* ((_%phi123543%_ (gx#current-expander-phi))
               (_%ctx123545%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123539%_
           _%eid123540%_
           _%rebind?123541%_
           _%phi123543%_
           _%ctx123545%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id123547%_ _%eid123548%_ _%rebind?123549%_ _%phi123550%_)
        (let ((_%ctx123552%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123547%_
           _%eid123548%_
           _%rebind?123549%_
           _%phi123550%_
           _%ctx123552%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g126371_
        (let ((_g126370_ (##length _g126371_)))
          (cond ((##fx= _g126370_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g126371_))
                ((##fx= _g126370_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g126371_))
                ((##fx= _g126370_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g126371_))
                ((##fx= _g126370_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g126371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g126371_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id123473%_
               _%eid123474%_
               _%rebind?123475%_
               _%phi123476%_
               _%ctx123477%_)
        (gx#bind-identifier!__%
         _%id123473%_
         (##structure
          gx#extern-binding::t
          _%eid123474%_
          (gx#core-identifier-key _%id123473%_)
          _%phi123476%_)
         _%rebind?123475%_
         _%phi123476%_
         _%ctx123477%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id123482%_ _%eid123483%_)
        (let* ((_%rebind?123485%_ '#f)
               (_%phi123487%_ (gx#current-expander-phi))
               (_%ctx123489%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123482%_
           _%eid123483%_
           _%rebind?123485%_
           _%phi123487%_
           _%ctx123489%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id123491%_ _%eid123492%_ _%rebind?123493%_)
        (let* ((_%phi123495%_ (gx#current-expander-phi))
               (_%ctx123497%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123491%_
           _%eid123492%_
           _%rebind?123493%_
           _%phi123495%_
           _%ctx123497%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id123499%_ _%eid123500%_ _%rebind?123501%_ _%phi123502%_)
        (let ((_%ctx123504%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123499%_
           _%eid123500%_
           _%rebind?123501%_
           _%phi123502%_
           _%ctx123504%_))))
    (define gx#core-bind-extern!
      (lambda _g126373_
        (let ((_g126372_ (##length _g126373_)))
          (cond ((##fx= _g126372_ 2) (apply gx#core-bind-extern!__0 _g126373_))
                ((##fx= _g126372_ 3) (apply gx#core-bind-extern!__1 _g126373_))
                ((##fx= _g126372_ 4) (apply gx#core-bind-extern!__2 _g126373_))
                ((##fx= _g126372_ 5) (apply gx#core-bind-extern!__% _g126373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g126373_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id123427%_
               _%e123428%_
               _%rebind?123429%_
               _%phi123430%_
               _%ctx123431%_)
        (gx#bind-identifier!__%
         _%id123427%_
         (let ((_%key123436%_ (gx#core-identifier-key _%id123427%_))
               (_%e123437%_
                (if (or (##structure-instance-of? _%e123428%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e123428%_
                         'gx#expander-context::t))
                    _%e123428%_
                    (##structure
                     gx#user-expander::t
                     _%e123428%_
                     _%ctx123431%_
                     _%phi123430%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key123436%_
             '#t
             _%phi123430%_
             _%ctx123431%_)
            _%key123436%_
            _%phi123430%_
            _%e123437%_))
         _%rebind?123429%_
         _%phi123430%_
         _%ctx123431%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id123442%_ _%e123443%_)
        (let* ((_%rebind?123445%_ '#f)
               (_%phi123447%_ (gx#current-expander-phi))
               (_%ctx123449%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123442%_
           _%e123443%_
           _%rebind?123445%_
           _%phi123447%_
           _%ctx123449%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id123451%_ _%e123452%_ _%rebind?123453%_)
        (let* ((_%phi123455%_ (gx#current-expander-phi))
               (_%ctx123457%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123451%_
           _%e123452%_
           _%rebind?123453%_
           _%phi123455%_
           _%ctx123457%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id123459%_ _%e123460%_ _%rebind?123461%_ _%phi123462%_)
        (let ((_%ctx123464%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123459%_
           _%e123460%_
           _%rebind?123461%_
           _%phi123462%_
           _%ctx123464%_))))
    (define gx#core-bind-syntax!
      (lambda _g126375_
        (let ((_g126374_ (##length _g126375_)))
          (cond ((##fx= _g126374_ 2) (apply gx#core-bind-syntax!__0 _g126375_))
                ((##fx= _g126374_ 3) (apply gx#core-bind-syntax!__1 _g126375_))
                ((##fx= _g126374_ 4) (apply gx#core-bind-syntax!__2 _g126375_))
                ((##fx= _g126374_ 5) (apply gx#core-bind-syntax!__% _g126375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g126375_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id123410%_ _%e123411%_ _%rebind?123412%_)
        (gx#core-bind-syntax!__%
         _%id123410%_
         _%e123411%_
         _%rebind?123412%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id123417%_ _%e123418%_)
        (let ((_%rebind?123420%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id123417%_
           _%e123418%_
           _%rebind?123420%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g126377_
        (let ((_g126376_ (##length _g126377_)))
          (cond ((##fx= _g126376_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g126377_))
                ((##fx= _g126376_ 3)
                 (apply gx#core-bind-root-syntax!__% _g126377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g126377_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id123368%_
               _%alias-id123369%_
               _%rebind?123370%_
               _%phi123371%_
               _%ctx123372%_)
        (gx#bind-identifier!__%
         _%id123368%_
         (let ((_%key123374%_ (gx#core-identifier-key _%id123368%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key123374%_
             '#t
             _%phi123371%_
             _%ctx123372%_)
            _%key123374%_
            _%phi123371%_
            _%alias-id123369%_))
         _%rebind?123370%_
         _%phi123371%_
         _%ctx123372%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id123379%_ _%alias-id123380%_)
        (let* ((_%rebind?123382%_ '#f)
               (_%phi123384%_ (gx#current-expander-phi))
               (_%ctx123386%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123379%_
           _%alias-id123380%_
           _%rebind?123382%_
           _%phi123384%_
           _%ctx123386%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id123388%_ _%alias-id123389%_ _%rebind?123390%_)
        (let* ((_%phi123392%_ (gx#current-expander-phi))
               (_%ctx123394%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123388%_
           _%alias-id123389%_
           _%rebind?123390%_
           _%phi123392%_
           _%ctx123394%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id123396%_ _%alias-id123397%_ _%rebind?123398%_ _%phi123399%_)
        (let ((_%ctx123401%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123396%_
           _%alias-id123397%_
           _%rebind?123398%_
           _%phi123399%_
           _%ctx123401%_))))
    (define gx#core-bind-alias!
      (lambda _g126379_
        (let ((_g126378_ (##length _g126379_)))
          (cond ((##fx= _g126378_ 2) (apply gx#core-bind-alias!__0 _g126379_))
                ((##fx= _g126378_ 3) (apply gx#core-bind-alias!__1 _g126379_))
                ((##fx= _g126378_ 4) (apply gx#core-bind-alias!__2 _g126379_))
                ((##fx= _g126378_ 5) (apply gx#core-bind-alias!__% _g126379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g126379_))))))
    (define gx#make-binding-id__%
      (lambda (_%key123318%_ _%syntax?123319%_ _%phi123320%_ _%ctx123321%_)
        (if (uninterned-symbol? _%key123318%_)
            (##gensym 'L)
            (if (pair? _%key123318%_)
                (gensym (##car _%key123318%_))
                (if (##structure-instance-of? _%ctx123321%_ 'gx#top-context::t)
                    (let ((_%ns123326%_
                           (gx#core-context-namespace__% _%ctx123321%_)))
                      (if (and (fxzero? _%phi123320%_) (not _%syntax?123319%_))
                          (if _%ns123326%_
                              (make-symbol__1 _%ns123326%_ '"#" _%key123318%_)
                              _%key123318%_)
                          (if _%syntax?123319%_
                              (make-symbol__1
                               (let ((_%$e123330%_ _%ns123326%_))
                                 (if _%$e123330%_ _%$e123330%_ '""))
                               '"[:"
                               (number->string _%phi123320%_)
                               '":]#"
                               _%key123318%_)
                              (make-symbol__1
                               (let ((_%$e123334%_ _%ns123326%_))
                                 (if _%$e123334%_ _%$e123334%_ '""))
                               '"["
                               (number->string _%phi123320%_)
                               '"]#"
                               _%key123318%_))))
                    (gensym _%key123318%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key123341%_)
        (let* ((_%syntax?123343%_ '#f)
               (_%phi123345%_ (gx#current-expander-phi))
               (_%ctx123347%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123341%_
           _%syntax?123343%_
           _%phi123345%_
           _%ctx123347%_))))
    (define gx#make-binding-id__1
      (lambda (_%key123349%_ _%syntax?123350%_)
        (let* ((_%phi123352%_ (gx#current-expander-phi))
               (_%ctx123354%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123349%_
           _%syntax?123350%_
           _%phi123352%_
           _%ctx123354%_))))
    (define gx#make-binding-id__2
      (lambda (_%key123356%_ _%syntax?123357%_ _%phi123358%_)
        (let ((_%ctx123360%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123356%_
           _%syntax?123357%_
           _%phi123358%_
           _%ctx123360%_))))
    (define gx#make-binding-id
      (lambda _g126381_
        (let ((_g126380_ (##length _g126381_)))
          (cond ((##fx= _g126380_ 1) (apply gx#make-binding-id__0 _g126381_))
                ((##fx= _g126380_ 2) (apply gx#make-binding-id__1 _g126381_))
                ((##fx= _g126380_ 3) (apply gx#make-binding-id__2 _g126381_))
                ((##fx= _g126380_ 4) (apply gx#make-binding-id__% _g126381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g126381_))))))))
