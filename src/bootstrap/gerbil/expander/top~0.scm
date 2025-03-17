(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1742223873)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx126362%_)
        (letrec ((_%expand-special126364%_
                  (lambda (_%hd126366%_ _%K126367%_ _%rest126368%_ _%r126369%_)
                    (_%K126367%_
                     _%rest126368%_
                     (cons (gx#core-expand-top _%hd126366%_) _%r126369%_)))))
          (gx#core-expand-block__0 _%stx126362%_ _%expand-special126364%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx126115%_)
        (letrec ((_%expand-special126117%_
                  (lambda (_%hd126237%_ _%K126238%_ _%rest126239%_ _%r126240%_)
                    (let* ((_%K126244%_
                            (lambda (_%e126242%_)
                              (_%K126238%_
                               _%rest126239%_
                               (cons _%e126242%_ _%r126240%_))))
                           (_%e126245126274%_ _%hd126237%_)
                           (_%E126269126278%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126245126274%_)))
                           (_%E126265126290%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126245126274%_)
                                  (let ((_%e126270126282%_
                                         (gx#syntax-e _%e126245126274%_)))
                                    (let ((_%hd126271126285%_
                                           (##car _%e126270126282%_))
                                          (_%tl126272126287%_
                                           (##cdr _%e126270126282%_)))
                                      (if (and (gx#identifier?
                                                _%hd126271126285%_)
                                               (gx#core-identifier=?
                                                _%hd126271126285%_
                                                '%#define-runtime))
                                          (_%K126244%_
                                           (gx#core-expand-define-runtime%
                                            _%hd126237%_))
                                          (_%E126269126278%_))))
                                  (_%E126269126278%_))))
                           (_%E126261126302%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126245126274%_)
                                  (let ((_%e126266126294%_
                                         (gx#syntax-e _%e126245126274%_)))
                                    (let ((_%hd126267126297%_
                                           (##car _%e126266126294%_))
                                          (_%tl126268126299%_
                                           (##cdr _%e126266126294%_)))
                                      (if (and (gx#identifier?
                                                _%hd126267126297%_)
                                               (gx#core-identifier=?
                                                _%hd126267126297%_
                                                '%#define-alias))
                                          (_%K126244%_
                                           (gx#core-expand-define-alias%
                                            _%hd126237%_))
                                          (_%E126265126290%_))))
                                  (_%E126265126290%_))))
                           (_%E126251126314%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126245126274%_)
                                  (let ((_%e126262126306%_
                                         (gx#syntax-e _%e126245126274%_)))
                                    (let ((_%hd126263126309%_
                                           (##car _%e126262126306%_))
                                          (_%tl126264126311%_
                                           (##cdr _%e126262126306%_)))
                                      (if (and (gx#identifier?
                                                _%hd126263126309%_)
                                               (gx#core-identifier=?
                                                _%hd126263126309%_
                                                '%#define-syntax))
                                          (_%K126244%_
                                           (gx#core-expand-define-syntax%
                                            _%hd126237%_))
                                          (_%E126261126302%_))))
                                  (_%E126261126302%_))))
                           (_%E126247126346%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126245126274%_)
                                  (let ((_%e126252126318%_
                                         (gx#syntax-e _%e126245126274%_)))
                                    (let ((_%hd126253126321%_
                                           (##car _%e126252126318%_))
                                          (_%tl126254126323%_
                                           (##cdr _%e126252126318%_)))
                                      (if (and (gx#identifier?
                                                _%hd126253126321%_)
                                               (gx#core-identifier=?
                                                _%hd126253126321%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl126254126323%_)
                                              (let ((_%e126255126326%_
                                                     (gx#syntax-e
                                                      _%tl126254126323%_)))
                                                (let ((_%hd126256126329%_
                                                       (##car _%e126255126326%_))
                                                      (_%tl126257126331%_
                                                       (##cdr _%e126255126326%_)))
                                                  (let ((_%hd-bind126334%_
                                                         _%hd126256126329%_))
                                                    (if (gx#stx-pair?
                                                         _%tl126257126331%_)
                                                        (let ((_%e126258126336%_
                                                               (gx#syntax-e
                                                                _%tl126257126331%_)))
                                                          (let ((_%hd126259126339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e126258126336%_))
                        (_%tl126260126341%_ (##cdr _%e126258126336%_)))
                    (let ((_%expr126344%_ _%hd126259126339%_))
                      (if (gx#stx-null? _%tl126260126341%_)
                          (if (gx#core-bind-values? _%hd-bind126334%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126334%_)
                                (_%K126244%_ _%hd126237%_))
                              (_%E126251126314%_))
                          (_%E126251126314%_)))))
                (_%E126251126314%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126251126314%_))
                                          (_%E126251126314%_))))
                                  (_%E126251126314%_))))
                           (_%E126246126358%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126245126274%_)
                                  (let ((_%e126248126350%_
                                         (gx#syntax-e _%e126245126274%_)))
                                    (let ((_%hd126249126353%_
                                           (##car _%e126248126350%_))
                                          (_%tl126250126355%_
                                           (##cdr _%e126248126350%_)))
                                      (if (and (gx#identifier?
                                                _%hd126249126353%_)
                                               (gx#core-identifier=?
                                                _%hd126249126353%_
                                                '%#begin-syntax))
                                          (_%K126244%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd126237%_))
                                          (_%E126247126346%_))))
                                  (_%E126247126346%_)))))
                      (_%E126246126358%_))))
                 (_%eval-body126118%_
                  (lambda (_%rbody126126%_)
                    (let _%lp126128%_ ((_%rest126130%_ _%rbody126126%_)
                                       (_%body126131%_ '())
                                       (_%ebody126132%_ '()))
                      (let* ((_%rest126133126141%_ _%rest126130%_)
                             (_%else126135126149%_
                              (lambda ()
                                (values _%body126131%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody126132%_)
                                          (gx#stx-source _%stx126115%_))))))
                             (_%K126137126225%_
                              (lambda (_%rest126152%_ _%hd126153%_)
                                (let* ((_%e126154126171%_ _%hd126153%_)
                                       (_%E126166126175%_
                                        (lambda ()
                                          (_%lp126128%_
                                           _%rest126152%_
                                           (cons _%hd126153%_ _%body126131%_)
                                           (cons _%hd126153%_
                                                 _%ebody126132%_))))
                                       (_%E126156126187%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126154126171%_)
                                              (let ((_%e126167126179%_
                                                     (gx#syntax-e
                                                      _%e126154126171%_)))
                                                (let ((_%hd126168126182%_
                                                       (##car _%e126167126179%_))
                                                      (_%tl126169126184%_
                                                       (##cdr _%e126167126179%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126168126182%_)
                                                           (gx#core-identifier=?
                                                            _%hd126168126182%_
                                                            '%#begin-syntax))
                                                      (_%lp126128%_
                                                       _%rest126152%_
                                                       (cons _%hd126153%_
                                                             _%body126131%_)
                                                       _%ebody126132%_)
                                                      (_%E126166126175%_))))
                                              (_%E126166126175%_))))
                                       (_%E126155126221%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126154126171%_)
                                              (let ((_%e126157126191%_
                                                     (gx#syntax-e
                                                      _%e126154126171%_)))
                                                (let ((_%hd126158126194%_
                                                       (##car _%e126157126191%_))
                                                      (_%tl126159126196%_
                                                       (##cdr _%e126157126191%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126158126194%_)
                                                           (gx#core-identifier=?
                                                            _%hd126158126194%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl126159126196%_)
                                                          (let ((_%e126160126199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126159126196%_)))
                    (let ((_%hd126161126202%_ (##car _%e126160126199%_))
                          (_%tl126162126204%_ (##cdr _%e126160126199%_)))
                      (let ((_%hd-bind126207%_ _%hd126161126202%_))
                        (if (gx#stx-pair? _%tl126162126204%_)
                            (let ((_%e126163126209%_
                                   (gx#syntax-e _%tl126162126204%_)))
                              (let ((_%hd126164126212%_
                                     (##car _%e126163126209%_))
                                    (_%tl126165126214%_
                                     (##cdr _%e126163126209%_)))
                                (let ((_%expr126217%_ _%hd126164126212%_))
                                  (if (gx#stx-null? _%tl126165126214%_)
                                      (let ((_%ehd126219%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind126207%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr126217%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd126153%_))))
                                        (_%lp126128%_
                                         _%rest126152%_
                                         (cons _%ehd126219%_ _%body126131%_)
                                         (cons _%ehd126219%_ _%ebody126132%_)))
                                      (_%E126156126187%_)))))
                            (_%E126156126187%_)))))
                  (_%E126156126187%_))
              (_%E126156126187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126156126187%_)))))
                                  (_%E126155126221%_)))))
                        (if (pair? _%rest126133126141%_)
                            (let ((_%hd126138126228%_
                                   (##car _%rest126133126141%_))
                                  (_%tl126139126230%_
                                   (##cdr _%rest126133126141%_)))
                              (let* ((_%hd126233%_ _%hd126138126228%_)
                                     (_%rest126235%_ _%tl126139126230%_))
                                (_%K126137126225%_
                                 _%rest126235%_
                                 _%hd126233%_)))
                            (_%else126135126149%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody126121%_
                     (gx#core-expand-block__1
                      _%stx126115%_
                      _%expand-special126117%_
                      '#f))
                    (_g126385_ (_%eval-body126118%_ _%rbody126121%_)))
               (begin
                 (let ((_g126386_
                        (if (##values? _g126385_)
                            (##values-length _g126385_)
                            1)))
                   (if (not (##fx= _g126386_ 2))
                       (error "Context expects 2 values" _g126386_)))
                 (let ((_%expanded-body126123%_ (##values-ref _g126385_ 0))
                       (_%value126124%_ (##values-ref _g126385_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body126123%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value126124%_ '())))
                    (gx#stx-source _%stx126115%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx126085%_)
        (let* ((_%e126086126093%_ _%stx126085%_)
               (_%E126088126097%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126086126093%_)))
               (_%E126087126111%_
                (lambda ()
                  (if (gx#stx-pair? _%e126086126093%_)
                      (let ((_%e126089126101%_
                             (gx#syntax-e _%e126086126093%_)))
                        (let ((_%hd126090126104%_ (##car _%e126089126101%_))
                              (_%tl126091126106%_ (##cdr _%e126089126101%_)))
                          (let ((_%body126109%_ _%tl126091126106%_))
                            (if (gx#stx-list? _%body126109%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body126109%_)
                                 (gx#stx-source _%stx126085%_))
                                (_%E126088126097%_)))))
                      (_%E126088126097%_)))))
          (_%E126087126111%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx126083%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx126083%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx126029%_)
        (let* ((_%e126030126043%_ _%stx126029%_)
               (_%E126032126047%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126030126043%_)))
               (_%E126031126079%_
                (lambda ()
                  (if (gx#stx-pair? _%e126030126043%_)
                      (let ((_%e126033126051%_
                             (gx#syntax-e _%e126030126043%_)))
                        (let ((_%hd126034126054%_ (##car _%e126033126051%_))
                              (_%tl126035126056%_ (##cdr _%e126033126051%_)))
                          (if (gx#stx-pair? _%tl126035126056%_)
                              (let ((_%e126036126059%_
                                     (gx#syntax-e _%tl126035126056%_)))
                                (let ((_%hd126037126062%_
                                       (##car _%e126036126059%_))
                                      (_%tl126038126064%_
                                       (##cdr _%e126036126059%_)))
                                  (let ((_%ann126067%_ _%hd126037126062%_))
                                    (if (gx#stx-pair? _%tl126038126064%_)
                                        (let ((_%e126039126069%_
                                               (gx#syntax-e
                                                _%tl126038126064%_)))
                                          (let ((_%hd126040126072%_
                                                 (##car _%e126039126069%_))
                                                (_%tl126041126074%_
                                                 (##cdr _%e126039126069%_)))
                                            (let ((_%expr126077%_
                                                   _%hd126040126072%_))
                                              (if (gx#stx-null?
                                                   _%tl126041126074%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann126067%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr126077%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx126029%_))
                                                  (_%E126032126047%_)))))
                                        (_%E126032126047%_)))))
                              (_%E126032126047%_))))
                      (_%E126032126047%_)))))
          (_%E126031126079%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx125753%_ _%body125754%_)
        (letrec ((_%expand-special125756%_
                  (lambda (_%hd126024%_ _%K126025%_ _%rest126026%_ _%r126027%_)
                    (_%K126025%_
                     '()
                     (cons (_%expand-internal125757%_
                            _%hd126024%_
                            _%rest126026%_)
                           _%r126027%_))))
                 (_%expand-internal125757%_
                  (lambda (_%hd126020%_ _%rest126021%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal125759%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd126020%_ _%rest126021%_))
                          (gx#stx-source _%stx125753%_))
                         _%expand-internal-special125758%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj126379
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj126379)
                       __obj126379))))
                 (_%expand-internal-special125758%_
                  (lambda (_%hd125915%_ _%K125916%_ _%rest125917%_ _%r125918%_)
                    (let* ((_%e125919125944%_ _%hd125915%_)
                           (_%E125939125948%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125919125944%_)))
                           (_%E125935125960%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125919125944%_)
                                  (let ((_%e125940125952%_
                                         (gx#syntax-e _%e125919125944%_)))
                                    (let ((_%hd125941125955%_
                                           (##car _%e125940125952%_))
                                          (_%tl125942125957%_
                                           (##cdr _%e125940125952%_)))
                                      (if (and (gx#identifier?
                                                _%hd125941125955%_)
                                               (gx#core-identifier=?
                                                _%hd125941125955%_
                                                '%#declare))
                                          (_%K125916%_
                                           _%rest125917%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd125915%_)
                                                 _%r125918%_))
                                          (_%E125939125948%_))))
                                  (_%E125939125948%_))))
                           (_%E125931125972%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125919125944%_)
                                  (let ((_%e125936125964%_
                                         (gx#syntax-e _%e125919125944%_)))
                                    (let ((_%hd125937125967%_
                                           (##car _%e125936125964%_))
                                          (_%tl125938125969%_
                                           (##cdr _%e125936125964%_)))
                                      (if (and (gx#identifier?
                                                _%hd125937125967%_)
                                               (gx#core-identifier=?
                                                _%hd125937125967%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd125915%_)
                                            (_%K125916%_
                                             _%rest125917%_
                                             _%r125918%_))
                                          (_%E125935125960%_))))
                                  (_%E125935125960%_))))
                           (_%E125921125984%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125919125944%_)
                                  (let ((_%e125932125976%_
                                         (gx#syntax-e _%e125919125944%_)))
                                    (let ((_%hd125933125979%_
                                           (##car _%e125932125976%_))
                                          (_%tl125934125981%_
                                           (##cdr _%e125932125976%_)))
                                      (if (and (gx#identifier?
                                                _%hd125933125979%_)
                                               (gx#core-identifier=?
                                                _%hd125933125979%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd125915%_)
                                            (_%K125916%_
                                             _%rest125917%_
                                             _%r125918%_))
                                          (_%E125931125972%_))))
                                  (_%E125931125972%_))))
                           (_%E125920126016%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125919125944%_)
                                  (let ((_%e125922125988%_
                                         (gx#syntax-e _%e125919125944%_)))
                                    (let ((_%hd125923125991%_
                                           (##car _%e125922125988%_))
                                          (_%tl125924125993%_
                                           (##cdr _%e125922125988%_)))
                                      (if (and (gx#identifier?
                                                _%hd125923125991%_)
                                               (gx#core-identifier=?
                                                _%hd125923125991%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125924125993%_)
                                              (let ((_%e125925125996%_
                                                     (gx#syntax-e
                                                      _%tl125924125993%_)))
                                                (let ((_%hd125926125999%_
                                                       (##car _%e125925125996%_))
                                                      (_%tl125927126001%_
                                                       (##cdr _%e125925125996%_)))
                                                  (let ((_%hd-bind126004%_
                                                         _%hd125926125999%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125927126001%_)
                                                        (let ((_%e125928126006%_
                                                               (gx#syntax-e
                                                                _%tl125927126001%_)))
                                                          (let ((_%hd125929126009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125928126006%_))
                        (_%tl125930126011%_ (##cdr _%e125928126006%_)))
                    (let ((_%expr126014%_ _%hd125929126009%_))
                      (if (gx#stx-null? _%tl125930126011%_)
                          (if (gx#core-bind-values? _%hd-bind126004%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126004%_)
                                (_%K125916%_
                                 _%rest125917%_
                                 (cons _%hd125915%_ _%r125918%_)))
                              (_%E125921125984%_))
                          (_%E125921125984%_)))))
                (_%E125921125984%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125921125984%_))
                                          (_%E125921125984%_))))
                                  (_%E125921125984%_)))))
                      (_%E125920126016%_))))
                 (_%wrap-internal125759%_
                  (lambda (_%rbody125761%_)
                    (let _%lp125763%_ ((_%rest125765%_ _%rbody125761%_)
                                       (_%decls125766%_ '())
                                       (_%bind125767%_ '())
                                       (_%body125768%_ '()))
                      (let* ((_%e125769125776%_ _%rest125765%_)
                             (_%E125771125825%_
                              (lambda ()
                                (let* ((_%body125820%_
                                        (let* ((_%body125779125789%_
                                                _%body125768%_)
                                               (_%else125782125797%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body125768%_)
                                                   (gx#stx-source
                                                    _%stx125753%_)))))
                                          (let ((_%K125787125817%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx125753%_)))
                                                (_%K125784125803%_
                                                 (lambda (_%expr125801%_)
                                                   _%expr125801%_)))
                                            (let ((_%try-match125781125813%_
                                                   (lambda ()
                                                     (if (pair? _%body125779125789%_)
                                                         (let ((_%tl125786125808%_
                                                                (##cdr _%body125779125789%_))
                                                               (_%hd125785125806%_
                                                                (##car _%body125779125789%_)))
                                                           (if (null? _%tl125786125808%_)
                                                               (let ((_%expr125811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd125785125806%_))
                         (_%K125784125803%_ _%expr125811%_))
                       (_%else125782125797%_)))
                 (_%else125782125797%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body125779125789%_)
                                                  (_%K125787125817%_)
                                                  (_%try-match125781125813%_))))))
                                       (_%body125822%_
                                        (if (null? _%bind125767%_)
                                            _%body125820%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind125767%_
                                                         (cons _%body125820%_
                                                               '())))
                                             (gx#stx-source _%stx125753%_)))))
                                  (if (null? _%decls125766%_)
                                      _%body125822%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls125766%_
                                                   (cons _%body125822%_ '())))
                                       (gx#stx-source _%stx125753%_))))))
                             (_%E125770125911%_
                              (lambda ()
                                (if (gx#stx-pair? _%e125769125776%_)
                                    (let ((_%e125772125829%_
                                           (gx#syntax-e _%e125769125776%_)))
                                      (let ((_%hd125773125832%_
                                             (##car _%e125772125829%_))
                                            (_%tl125774125834%_
                                             (##cdr _%e125772125829%_)))
                                        (let* ((_%hd125837%_
                                                _%hd125773125832%_)
                                               (_%rest125839%_
                                                _%tl125774125834%_)
                                               (_%e125840125857%_ _%hd125837%_)
                                               (_%E125852125861%_
                                                (lambda ()
                                                  (if (null? _%bind125767%_)
                                                      (_%lp125763%_
                                                       _%rest125839%_
                                                       _%decls125766%_
                                                       _%bind125767%_
                                                       (cons _%hd125837%_
                                                             _%body125768%_))
                                                      (_%lp125763%_
                                                       _%rest125839%_
                                                       _%decls125766%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd125837%_ '()))
                     _%bind125767%_)
               _%body125768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125842125875%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125840125857%_)
                                                      (let ((_%e125853125865%_
                                                             (gx#syntax-e
                                                              _%e125840125857%_)))
                                                        (let ((_%hd125854125868%_
                                                               (##car _%e125853125865%_))
                                                              (_%tl125855125870%_
                                                               (##cdr _%e125853125865%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125854125868%_)
                           (gx#core-identifier=?
                            _%hd125854125868%_
                            '%#declare))
                      (let ((_%xdecls125873%_ _%tl125855125870%_))
                        (_%lp125763%_
                         _%rest125839%_
                         (gx#stx-foldr cons _%decls125766%_ _%xdecls125873%_)
                         _%bind125767%_
                         _%body125768%_))
                      (_%E125852125861%_))))
              (_%E125852125861%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125841125907%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125840125857%_)
                                                      (let ((_%e125843125879%_
                                                             (gx#syntax-e
                                                              _%e125840125857%_)))
                                                        (let ((_%hd125844125882%_
                                                               (##car _%e125843125879%_))
                                                              (_%tl125845125884%_
                                                               (##cdr _%e125843125879%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125844125882%_)
                           (gx#core-identifier=?
                            _%hd125844125882%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl125845125884%_)
                          (let ((_%e125846125887%_
                                 (gx#syntax-e _%tl125845125884%_)))
                            (let ((_%hd125847125890%_
                                   (##car _%e125846125887%_))
                                  (_%tl125848125892%_
                                   (##cdr _%e125846125887%_)))
                              (let ((_%hd-bind125895%_ _%hd125847125890%_))
                                (if (gx#stx-pair? _%tl125848125892%_)
                                    (let ((_%e125849125897%_
                                           (gx#syntax-e _%tl125848125892%_)))
                                      (let ((_%hd125850125900%_
                                             (##car _%e125849125897%_))
                                            (_%tl125851125902%_
                                             (##cdr _%e125849125897%_)))
                                        (let ((_%expr125905%_
                                               _%hd125850125900%_))
                                          (if (gx#stx-null? _%tl125851125902%_)
                                              (_%lp125763%_
                                               _%rest125839%_
                                               _%decls125766%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind125895%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr125905%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind125767%_)
                                               _%body125768%_)
                                              (_%E125842125875%_)))))
                                    (_%E125842125875%_)))))
                          (_%E125842125875%_))
                      (_%E125842125875%_))))
              (_%E125842125875%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E125841125907%_))))
                                    (_%E125771125825%_)))))
                        (_%E125770125911%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body125754%_)
            (gx#stx-source _%stx125753%_))
           _%expand-special125756%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx125691%_)
        (let* ((_%e125692125699%_ _%stx125691%_)
               (_%E125694125703%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125692125699%_)))
               (_%E125693125749%_
                (lambda ()
                  (if (gx#stx-pair? _%e125692125699%_)
                      (let ((_%e125695125707%_
                             (gx#syntax-e _%e125692125699%_)))
                        (let ((_%hd125696125710%_ (##car _%e125695125707%_))
                              (_%tl125697125712%_ (##cdr _%e125695125707%_)))
                          (let ((_%body125715%_ _%tl125697125712%_))
                            (if (gx#stx-list? _%body125715%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl125717%_)
                                     (let* ((_%e125718125725%_ _%decl125717%_)
                                            (_%E125720125729%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e125718125725%_)))
                                            (_%E125719125745%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e125718125725%_)
                                                   (let ((_%e125721125733%_
                                                          (gx#syntax-e
                                                           _%e125718125725%_)))
                                                     (let ((_%hd125722125736%_
                                                            (##car _%e125721125733%_))
                                                           (_%tl125723125738%_
                                                            (##cdr _%e125721125733%_)))
                                                       (let* ((_%head125741%_
                                                               _%hd125722125736%_)
                                                              (_%args125743%_
                                                               _%tl125723125738%_))
                                                         (if (gx#stx-list?
                                                              _%args125743%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl125717%_)
                                                             (_%E125720125729%_)))))
                                                   (_%E125720125729%_)))))
                                       (_%E125719125745%_)))
                                   _%body125715%_))
                                 (gx#stx-source _%stx125691%_))
                                (_%E125694125703%_)))))
                      (_%E125694125703%_)))))
          (_%E125693125749%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx125595%_)
        (let* ((_%e125596125603%_ _%stx125595%_)
               (_%E125598125607%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125596125603%_)))
               (_%E125597125687%_
                (lambda ()
                  (if (gx#stx-pair? _%e125596125603%_)
                      (let ((_%e125599125611%_
                             (gx#syntax-e _%e125596125603%_)))
                        (let ((_%hd125600125614%_ (##car _%e125599125611%_))
                              (_%tl125601125616%_ (##cdr _%e125599125611%_)))
                          (let ((_%body125619%_ _%tl125601125616%_))
                            (let _%lp125621%_ ((_%rest125623%_ _%body125619%_)
                                               (_%r125624%_ '()))
                              (let* ((_%e125625125639%_ _%rest125623%_)
                                     (_%E125637125643%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx125595%_)))
                                     (_%E125627125647%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e125625125639%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r125624%_))
                                             (gx#stx-source _%stx125595%_))
                                            (_%E125637125643%_))))
                                     (_%E125626125683%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e125625125639%_)
                                            (let ((_%e125628125651%_
                                                   (gx#syntax-e
                                                    _%e125625125639%_)))
                                              (let ((_%hd125629125654%_
                                                     (##car _%e125628125651%_))
                                                    (_%tl125630125656%_
                                                     (##cdr _%e125628125651%_)))
                                                (if (gx#stx-pair?
                                                     _%hd125629125654%_)
                                                    (let ((_%e125631125659%_
                                                           (gx#syntax-e
                                                            _%hd125629125654%_)))
                                                      (let ((_%hd125632125662%_
                                                             (##car _%e125631125659%_))
                                                            (_%tl125633125664%_
                                                             (##cdr _%e125631125659%_)))
                                                        (let ((_%id125667%_
                                                               _%hd125632125662%_))
                                                          (if (gx#stx-pair?
                                                               _%tl125633125664%_)
                                                              (let ((_%e125634125669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl125633125664%_)))
                        (let ((_%hd125635125672%_ (##car _%e125634125669%_))
                              (_%tl125636125674%_ (##cdr _%e125634125669%_)))
                          (let ((_%eid125677%_ _%hd125635125672%_))
                            (if (gx#stx-null? _%tl125636125674%_)
                                (let ((_%rest125679%_ _%tl125630125656%_))
                                  (if (and (gx#identifier? _%id125667%_)
                                           (gx#identifier? _%eid125677%_))
                                      (let ((_%eid125681%_
                                             (gx#stx-e _%eid125677%_)))
                                        (gx#core-bind-extern!__0
                                         _%id125667%_
                                         _%eid125681%_)
                                        (_%lp125621%_
                                         _%rest125679%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id125667%_)
                                                     (cons _%eid125681%_ '()))
                                               _%r125624%_)))
                                      (_%E125627125647%_)))
                                (_%E125627125647%_)))))
                      (_%E125627125647%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E125627125647%_))))
                                            (_%E125627125647%_)))))
                                (_%E125626125683%_))))))
                      (_%E125598125607%_)))))
          (_%E125597125687%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx125541%_)
        (let* ((_%e125542125555%_ _%stx125541%_)
               (_%E125544125559%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125542125555%_)))
               (_%E125543125591%_
                (lambda ()
                  (if (gx#stx-pair? _%e125542125555%_)
                      (let ((_%e125545125563%_
                             (gx#syntax-e _%e125542125555%_)))
                        (let ((_%hd125546125566%_ (##car _%e125545125563%_))
                              (_%tl125547125568%_ (##cdr _%e125545125563%_)))
                          (if (gx#stx-pair? _%tl125547125568%_)
                              (let ((_%e125548125571%_
                                     (gx#syntax-e _%tl125547125568%_)))
                                (let ((_%hd125549125574%_
                                       (##car _%e125548125571%_))
                                      (_%tl125550125576%_
                                       (##cdr _%e125548125571%_)))
                                  (let ((_%hd125579%_ _%hd125549125574%_))
                                    (if (gx#stx-pair? _%tl125550125576%_)
                                        (let ((_%e125551125581%_
                                               (gx#syntax-e
                                                _%tl125550125576%_)))
                                          (let ((_%hd125552125584%_
                                                 (##car _%e125551125581%_))
                                                (_%tl125553125586%_
                                                 (##cdr _%e125551125581%_)))
                                            (let ((_%expr125589%_
                                                   _%hd125552125584%_))
                                              (if (gx#stx-null?
                                                   _%tl125553125586%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd125579%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd125579%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd125579%_)
                             (cons (gx#core-expand-expression _%expr125589%_)
                                   '())))
                 (gx#stx-source _%stx125541%_)))
              (_%E125544125559%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125544125559%_)))))
                                        (_%E125544125559%_)))))
                              (_%E125544125559%_))))
                      (_%E125544125559%_)))))
          (_%E125543125591%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx125485%_)
        (let* ((_%e125486125499%_ _%stx125485%_)
               (_%E125488125503%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125486125499%_)))
               (_%E125487125537%_
                (lambda ()
                  (if (gx#stx-pair? _%e125486125499%_)
                      (let ((_%e125489125507%_
                             (gx#syntax-e _%e125486125499%_)))
                        (let ((_%hd125490125510%_ (##car _%e125489125507%_))
                              (_%tl125491125512%_ (##cdr _%e125489125507%_)))
                          (if (gx#stx-pair? _%tl125491125512%_)
                              (let ((_%e125492125515%_
                                     (gx#syntax-e _%tl125491125512%_)))
                                (let ((_%hd125493125518%_
                                       (##car _%e125492125515%_))
                                      (_%tl125494125520%_
                                       (##cdr _%e125492125515%_)))
                                  (let ((_%id125523%_ _%hd125493125518%_))
                                    (if (gx#stx-pair? _%tl125494125520%_)
                                        (let ((_%e125495125525%_
                                               (gx#syntax-e
                                                _%tl125494125520%_)))
                                          (let ((_%hd125496125528%_
                                                 (##car _%e125495125525%_))
                                                (_%tl125497125530%_
                                                 (##cdr _%e125495125525%_)))
                                            (let ((_%binding-id125533%_
                                                   _%hd125496125528%_))
                                              (if (gx#stx-null?
                                                   _%tl125497125530%_)
                                                  (if (and (gx#identifier?
                                                            _%id125523%_)
                                                           (gx#identifier?
                                                            _%binding-id125533%_))
                                                      (let ((_%eid125535%_
                                                             (gx#stx-e
                                                              _%binding-id125533%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id125523%_
                                                         _%eid125535%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125523%_)
                             (cons _%eid125535%_ '())))))
              (_%E125488125503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125488125503%_)))))
                                        (_%E125488125503%_)))))
                              (_%E125488125503%_))))
                      (_%E125488125503%_)))))
          (_%E125487125537%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx125428%_)
        (let* ((_%e125429125442%_ _%stx125428%_)
               (_%E125431125446%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125429125442%_)))
               (_%E125430125481%_
                (lambda ()
                  (if (gx#stx-pair? _%e125429125442%_)
                      (let ((_%e125432125450%_
                             (gx#syntax-e _%e125429125442%_)))
                        (let ((_%hd125433125453%_ (##car _%e125432125450%_))
                              (_%tl125434125455%_ (##cdr _%e125432125450%_)))
                          (if (gx#stx-pair? _%tl125434125455%_)
                              (let ((_%e125435125458%_
                                     (gx#syntax-e _%tl125434125455%_)))
                                (let ((_%hd125436125461%_
                                       (##car _%e125435125458%_))
                                      (_%tl125437125463%_
                                       (##cdr _%e125435125458%_)))
                                  (let ((_%id125466%_ _%hd125436125461%_))
                                    (if (gx#stx-pair? _%tl125437125463%_)
                                        (let ((_%e125438125468%_
                                               (gx#syntax-e
                                                _%tl125437125463%_)))
                                          (let ((_%hd125439125471%_
                                                 (##car _%e125438125468%_))
                                                (_%tl125440125473%_
                                                 (##cdr _%e125438125468%_)))
                                            (let ((_%expr125476%_
                                                   _%hd125439125471%_))
                                              (if (gx#stx-null?
                                                   _%tl125440125473%_)
                                                  (if (gx#identifier?
                                                       _%id125466%_)
                                                      (let ((_g126387_
                                                             (gx#core-expand-expression+1
                                                              _%expr125476%_)))
                                                        (begin
                                                          (let ((_g126388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g126387_)
                             (##values-length _g126387_)
                             1)))
                    (if (not (##fx= _g126388_ 2))
                        (error "Context expects 2 values" _g126388_)))
                  (let ((_%e-stx125478%_ (##values-ref _g126387_ 0))
                        (_%e125479%_ (##values-ref _g126387_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id125466%_ _%e125479%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id125466%_)
                                   (cons _%e-stx125478%_ '())))
                       (gx#stx-source _%stx125428%_))))))
              (_%E125431125446%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125431125446%_)))))
                                        (_%E125431125446%_)))))
                              (_%E125431125446%_))))
                      (_%E125431125446%_)))))
          (_%E125430125481%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx125372%_)
        (let* ((_%e125373125386%_ _%stx125372%_)
               (_%E125375125390%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125373125386%_)))
               (_%E125374125424%_
                (lambda ()
                  (if (gx#stx-pair? _%e125373125386%_)
                      (let ((_%e125376125394%_
                             (gx#syntax-e _%e125373125386%_)))
                        (let ((_%hd125377125397%_ (##car _%e125376125394%_))
                              (_%tl125378125399%_ (##cdr _%e125376125394%_)))
                          (if (gx#stx-pair? _%tl125378125399%_)
                              (let ((_%e125379125402%_
                                     (gx#syntax-e _%tl125378125399%_)))
                                (let ((_%hd125380125405%_
                                       (##car _%e125379125402%_))
                                      (_%tl125381125407%_
                                       (##cdr _%e125379125402%_)))
                                  (let ((_%id125410%_ _%hd125380125405%_))
                                    (if (gx#stx-pair? _%tl125381125407%_)
                                        (let ((_%e125382125412%_
                                               (gx#syntax-e
                                                _%tl125381125407%_)))
                                          (let ((_%hd125383125415%_
                                                 (##car _%e125382125412%_))
                                                (_%tl125384125417%_
                                                 (##cdr _%e125382125412%_)))
                                            (let ((_%alias-id125420%_
                                                   _%hd125383125415%_))
                                              (if (gx#stx-null?
                                                   _%tl125384125417%_)
                                                  (if (and (gx#identifier?
                                                            _%id125410%_)
                                                           (gx#identifier?
                                                            _%alias-id125420%_))
                                                      (let ((_%alias-id125422%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id125420%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id125410%_
                                                         _%alias-id125422%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125410%_)
                             (cons _%alias-id125422%_ '())))))
              (_%E125375125390%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125375125390%_)))))
                                        (_%E125375125390%_)))))
                              (_%E125375125390%_))))
                      (_%E125375125390%_)))))
          (_%E125374125424%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx125315%_ _%wrap?125316%_)
        (let* ((_%e125317125327%_ _%stx125315%_)
               (_%E125319125331%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125317125327%_)))
               (_%E125318125358%_
                (lambda ()
                  (if (gx#stx-pair? _%e125317125327%_)
                      (let ((_%e125320125335%_
                             (gx#syntax-e _%e125317125327%_)))
                        (let ((_%hd125321125338%_ (##car _%e125320125335%_))
                              (_%tl125322125340%_ (##cdr _%e125320125335%_)))
                          (if (gx#stx-pair? _%tl125322125340%_)
                              (let ((_%e125323125343%_
                                     (gx#syntax-e _%tl125322125340%_)))
                                (let ((_%hd125324125346%_
                                       (##car _%e125323125343%_))
                                      (_%tl125325125348%_
                                       (##cdr _%e125323125343%_)))
                                  (let* ((_%hd125351%_ _%hd125324125346%_)
                                         (_%body125353%_ _%tl125325125348%_))
                                    (if (gx#core-bind-values? _%hd125351%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd125351%_)
                                           (let ((_%body125356%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd125351%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx125315%_
                                                               _%body125353%_)
                                                              '()))))
                                             (if _%wrap?125316%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body125356%_)
                                                  (gx#stx-source
                                                   _%stx125315%_))
                                                 _%body125356%_)))
                                         gx#current-expander-context
                                         (let ((__obj126380
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126380)
                                           __obj126380))
                                        (_%E125319125331%_)))))
                              (_%E125319125331%_))))
                      (_%E125319125331%_)))))
          (_%E125318125358%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx125365%_)
        (let ((_%wrap?125367%_ '#t))
          (gx#core-expand-lambda%__% _%stx125365%_ _%wrap?125367%_))))
    (define gx#core-expand-lambda%
      (lambda _g126390_
        (let ((_g126389_ (##length _g126390_)))
          (cond ((##fx= _g126389_ 1)
                 (apply gx#core-expand-lambda%__0 _g126390_))
                ((##fx= _g126389_ 2)
                 (apply gx#core-expand-lambda%__% _g126390_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g126390_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx125279%_)
        (let* ((_%e125280125287%_ _%stx125279%_)
               (_%E125282125291%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125280125287%_)))
               (_%E125281125310%_
                (lambda ()
                  (if (gx#stx-pair? _%e125280125287%_)
                      (let ((_%e125283125295%_
                             (gx#syntax-e _%e125280125287%_)))
                        (let ((_%hd125284125298%_ (##car _%e125283125295%_))
                              (_%tl125285125300%_ (##cdr _%e125283125295%_)))
                          (let ((_%clauses125303%_ _%tl125285125300%_))
                            (if (gx#stx-list? _%clauses125303%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause125305%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause125305%_)
                                       (let ((_%$e125307%_
                                              (gx#stx-source
                                               _%clause125305%_)))
                                         (if _%$e125307%_
                                             _%$e125307%_
                                             (gx#stx-source _%stx125279%_))))
                                      '#f))
                                   _%clauses125303%_))
                                 (gx#stx-source _%stx125279%_))
                                (_%E125282125291%_)))))
                      (_%E125282125291%_)))))
          (_%E125281125310%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx125233%_)
        (let* ((_%e125234125244%_ _%stx125233%_)
               (_%E125236125248%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125234125244%_)))
               (_%E125235125275%_
                (lambda ()
                  (if (gx#stx-pair? _%e125234125244%_)
                      (let ((_%e125237125252%_
                             (gx#syntax-e _%e125234125244%_)))
                        (let ((_%hd125238125255%_ (##car _%e125237125252%_))
                              (_%tl125239125257%_ (##cdr _%e125237125252%_)))
                          (if (gx#stx-pair? _%tl125239125257%_)
                              (let ((_%e125240125260%_
                                     (gx#syntax-e _%tl125239125257%_)))
                                (let ((_%hd125241125263%_
                                       (##car _%e125240125260%_))
                                      (_%tl125242125265%_
                                       (##cdr _%e125240125260%_)))
                                  (let* ((_%hd125268%_ _%hd125241125263%_)
                                         (_%body125270%_ _%tl125242125265%_))
                                    (if (gx#core-expand-let-bind? _%hd125268%_)
                                        (let ((_%expressions125272%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd125268%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd125268%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd125268%_
                                                           _%expressions125272%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx125233%_
                         _%body125270%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx125233%_)))
                                           gx#current-expander-context
                                           (let ((__obj126381
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj126381)
                                             __obj126381)))
                                        (_%E125236125248%_)))))
                              (_%E125236125248%_))))
                      (_%E125236125248%_)))))
          (_%E125235125275%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx125178%_ _%form125179%_)
        (let* ((_%e125180125190%_ _%stx125178%_)
               (_%E125182125194%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125180125190%_)))
               (_%E125181125219%_
                (lambda ()
                  (if (gx#stx-pair? _%e125180125190%_)
                      (let ((_%e125183125198%_
                             (gx#syntax-e _%e125180125190%_)))
                        (let ((_%hd125184125201%_ (##car _%e125183125198%_))
                              (_%tl125185125203%_ (##cdr _%e125183125198%_)))
                          (if (gx#stx-pair? _%tl125185125203%_)
                              (let ((_%e125186125206%_
                                     (gx#syntax-e _%tl125185125203%_)))
                                (let ((_%hd125187125209%_
                                       (##car _%e125186125206%_))
                                      (_%tl125188125211%_
                                       (##cdr _%e125186125206%_)))
                                  (let* ((_%hd125214%_ _%hd125187125209%_)
                                         (_%body125216%_ _%tl125188125211%_))
                                    (if (gx#core-expand-let-bind? _%hd125214%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd125214%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form125179%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd125214%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd125214%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx125178%_
                                                               _%body125216%_)
                                                              '())))
                                            (gx#stx-source _%stx125178%_)))
                                         gx#current-expander-context
                                         (let ((__obj126382
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126382)
                                           __obj126382))
                                        (_%E125182125194%_)))))
                              (_%E125182125194%_))))
                      (_%E125182125194%_)))))
          (_%E125181125219%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx125226%_)
        (let ((_%form125228%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx125226%_ _%form125228%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g126392_
        (let ((_g126391_ (##length _g126392_)))
          (cond ((##fx= _g126391_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g126392_))
                ((##fx= _g126391_ 2)
                 (apply gx#core-expand-letrec-values%__% _g126392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g126392_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx125175%_)
        (gx#core-expand-letrec-values%__% _%stx125175%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx125132%_)
        (if (gx#stx-list? _%stx125132%_)
            (gx#stx-andmap
             (lambda (_%bind125134%_)
               (let* ((_%e125135125145%_ _%bind125134%_)
                      (_%E125137125149%_ (lambda () '#f))
                      (_%E125136125171%_
                       (lambda ()
                         (if (gx#stx-pair? _%e125135125145%_)
                             (let ((_%e125138125153%_
                                    (gx#syntax-e _%e125135125145%_)))
                               (let ((_%hd125139125156%_
                                      (##car _%e125138125153%_))
                                     (_%tl125140125158%_
                                      (##cdr _%e125138125153%_)))
                                 (let ((_%hd125161%_ _%hd125139125156%_))
                                   (if (gx#stx-pair? _%tl125140125158%_)
                                       (let ((_%e125141125163%_
                                              (gx#syntax-e
                                               _%tl125140125158%_)))
                                         (let ((_%hd125142125166%_
                                                (##car _%e125141125163%_))
                                               (_%tl125143125168%_
                                                (##cdr _%e125141125163%_)))
                                           (if (gx#stx-null?
                                                _%tl125143125168%_)
                                               (gx#core-bind-values?
                                                _%hd125161%_)
                                               (_%E125137125149%_))))
                                       (_%E125137125149%_)))))
                             (_%E125137125149%_)))))
                 (_%E125136125171%_)))
             _%stx125132%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind125091%_)
        (let* ((_%e125092125102%_ _%bind125091%_)
               (_%E125094125106%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125092125102%_)))
               (_%E125093125128%_
                (lambda ()
                  (if (gx#stx-pair? _%e125092125102%_)
                      (let ((_%e125095125110%_
                             (gx#syntax-e _%e125092125102%_)))
                        (let ((_%hd125096125113%_ (##car _%e125095125110%_))
                              (_%tl125097125115%_ (##cdr _%e125095125110%_)))
                          (if (gx#stx-pair? _%tl125097125115%_)
                              (let ((_%e125098125118%_
                                     (gx#syntax-e _%tl125097125115%_)))
                                (let ((_%hd125099125121%_
                                       (##car _%e125098125118%_))
                                      (_%tl125100125123%_
                                       (##cdr _%e125098125118%_)))
                                  (let ((_%expr125126%_ _%hd125099125121%_))
                                    (if (gx#stx-null? _%tl125100125123%_)
                                        (gx#core-expand-expression
                                         _%expr125126%_)
                                        (_%E125094125106%_)))))
                              (_%E125094125106%_))))
                      (_%E125094125106%_)))))
          (_%E125093125128%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind125050%_)
        (let* ((_%e125051125061%_ _%bind125050%_)
               (_%E125053125065%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125051125061%_)))
               (_%E125052125087%_
                (lambda ()
                  (if (gx#stx-pair? _%e125051125061%_)
                      (let ((_%e125054125069%_
                             (gx#syntax-e _%e125051125061%_)))
                        (let ((_%hd125055125072%_ (##car _%e125054125069%_))
                              (_%tl125056125074%_ (##cdr _%e125054125069%_)))
                          (let ((_%hd125077%_ _%hd125055125072%_))
                            (if (gx#stx-pair? _%tl125056125074%_)
                                (let ((_%e125057125079%_
                                       (gx#syntax-e _%tl125056125074%_)))
                                  (let ((_%hd125058125082%_
                                         (##car _%e125057125079%_))
                                        (_%tl125059125084%_
                                         (##cdr _%e125057125079%_)))
                                    (if (gx#stx-null? _%tl125059125084%_)
                                        (gx#core-bind-values!__0 _%hd125077%_)
                                        (_%E125053125065%_))))
                                (_%E125053125065%_)))))
                      (_%E125053125065%_)))))
          (_%E125052125087%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind125008%_ _%expr125009%_)
        (let* ((_%e125010125020%_ _%bind125008%_)
               (_%E125012125024%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125010125020%_)))
               (_%E125011125046%_
                (lambda ()
                  (if (gx#stx-pair? _%e125010125020%_)
                      (let ((_%e125013125028%_
                             (gx#syntax-e _%e125010125020%_)))
                        (let ((_%hd125014125031%_ (##car _%e125013125028%_))
                              (_%tl125015125033%_ (##cdr _%e125013125028%_)))
                          (let ((_%hd125036%_ _%hd125014125031%_))
                            (if (gx#stx-pair? _%tl125015125033%_)
                                (let ((_%e125016125038%_
                                       (gx#syntax-e _%tl125015125033%_)))
                                  (let ((_%hd125017125041%_
                                         (##car _%e125016125038%_))
                                        (_%tl125018125043%_
                                         (##cdr _%e125016125038%_)))
                                    (if (gx#stx-null? _%tl125018125043%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd125036%_)
                                              (cons _%expr125009%_ '()))
                                        (_%E125012125024%_))))
                                (_%E125012125024%_)))))
                      (_%E125012125024%_)))))
          (_%E125011125046%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx124962%_)
        (let* ((_%e124963124973%_ _%stx124962%_)
               (_%E124965124977%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124963124973%_)))
               (_%E124964125004%_
                (lambda ()
                  (if (gx#stx-pair? _%e124963124973%_)
                      (let ((_%e124966124981%_
                             (gx#syntax-e _%e124963124973%_)))
                        (let ((_%hd124967124984%_ (##car _%e124966124981%_))
                              (_%tl124968124986%_ (##cdr _%e124966124981%_)))
                          (if (gx#stx-pair? _%tl124968124986%_)
                              (let ((_%e124969124989%_
                                     (gx#syntax-e _%tl124968124986%_)))
                                (let ((_%hd124970124992%_
                                       (##car _%e124969124989%_))
                                      (_%tl124971124994%_
                                       (##cdr _%e124969124989%_)))
                                  (let* ((_%hd124997%_ _%hd124970124992%_)
                                         (_%body124999%_ _%tl124971124994%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124997%_)
                                        (let ((_%expanders125001%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd124997%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd124997%_
                                              _%expanders125001%_)
                                             (gx#core-expand-local-block
                                              _%stx124962%_
                                              _%body124999%_))
                                           gx#current-expander-context
                                           (let ((__obj126383
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj126383)
                                             __obj126383)))
                                        (_%E124965124977%_)))))
                              (_%E124965124977%_))))
                      (_%E124965124977%_)))))
          (_%E124964125004%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx124911%_)
        (let* ((_%e124912124922%_ _%stx124911%_)
               (_%E124914124926%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124912124922%_)))
               (_%E124913124958%_
                (lambda ()
                  (if (gx#stx-pair? _%e124912124922%_)
                      (let ((_%e124915124930%_
                             (gx#syntax-e _%e124912124922%_)))
                        (let ((_%hd124916124933%_ (##car _%e124915124930%_))
                              (_%tl124917124935%_ (##cdr _%e124915124930%_)))
                          (if (gx#stx-pair? _%tl124917124935%_)
                              (let ((_%e124918124938%_
                                     (gx#syntax-e _%tl124917124935%_)))
                                (let ((_%hd124919124941%_
                                       (##car _%e124918124938%_))
                                      (_%tl124920124943%_
                                       (##cdr _%e124918124938%_)))
                                  (let* ((_%hd124946%_ _%hd124919124941%_)
                                         (_%body124948%_ _%tl124920124943%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124946%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd124946%_
                                            (make-list
                                             (gx#stx-length _%hd124946%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g124950124953%_
                                                     _%g124951124955%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g124950124953%_
                                               _%g124951124955%_
                                               '#t))
                                            _%hd124946%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd124946%_))
                                           (gx#core-expand-local-block
                                            _%stx124911%_
                                            _%body124948%_))
                                         gx#current-expander-context
                                         (let ((__obj126384
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126384)
                                           __obj126384))
                                        (_%E124914124926%_)))))
                              (_%E124914124926%_))))
                      (_%E124914124926%_)))))
          (_%E124913124958%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx124868%_)
        (if (gx#stx-list? _%stx124868%_)
            (gx#stx-andmap
             (lambda (_%bind124870%_)
               (let* ((_%e124871124881%_ _%bind124870%_)
                      (_%E124873124885%_ (lambda () '#f))
                      (_%E124872124907%_
                       (lambda ()
                         (if (gx#stx-pair? _%e124871124881%_)
                             (let ((_%e124874124889%_
                                    (gx#syntax-e _%e124871124881%_)))
                               (let ((_%hd124875124892%_
                                      (##car _%e124874124889%_))
                                     (_%tl124876124894%_
                                      (##cdr _%e124874124889%_)))
                                 (let ((_%hd124897%_ _%hd124875124892%_))
                                   (if (gx#stx-pair? _%tl124876124894%_)
                                       (let ((_%e124877124899%_
                                              (gx#syntax-e
                                               _%tl124876124894%_)))
                                         (let ((_%hd124878124902%_
                                                (##car _%e124877124899%_))
                                               (_%tl124879124904%_
                                                (##cdr _%e124877124899%_)))
                                           (if (gx#stx-null?
                                                _%tl124879124904%_)
                                               (gx#identifier? _%hd124897%_)
                                               (_%E124873124885%_))))
                                       (_%E124873124885%_)))))
                             (_%E124873124885%_)))))
                 (_%E124872124907%_)))
             _%stx124868%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind124824%_)
        (let* ((_%e124825124835%_ _%bind124824%_)
               (_%E124827124839%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124825124835%_)))
               (_%E124826124864%_
                (lambda ()
                  (if (gx#stx-pair? _%e124825124835%_)
                      (let ((_%e124828124843%_
                             (gx#syntax-e _%e124825124835%_)))
                        (let ((_%hd124829124846%_ (##car _%e124828124843%_))
                              (_%tl124830124848%_ (##cdr _%e124828124843%_)))
                          (if (gx#stx-pair? _%tl124830124848%_)
                              (let ((_%e124831124851%_
                                     (gx#syntax-e _%tl124830124848%_)))
                                (let ((_%hd124832124854%_
                                       (##car _%e124831124851%_))
                                      (_%tl124833124856%_
                                       (##cdr _%e124831124851%_)))
                                  (let ((_%expr124859%_ _%hd124832124854%_))
                                    (if (gx#stx-null? _%tl124833124856%_)
                                        (let ((_g126393_
                                               (gx#core-expand-expression+1
                                                _%expr124859%_)))
                                          (begin
                                            (let ((_g126394_
                                                   (if (##values? _g126393_)
                                                       (##values-length
                                                        _g126393_)
                                                       1)))
                                              (if (not (##fx= _g126394_ 2))
                                                  (error "Context expects 2 values"
                                                         _g126394_)))
                                            (let ((_%_124861%_
                                                   (##values-ref _g126393_ 0))
                                                  (_%e124862%_
                                                   (##values-ref _g126393_ 1)))
                                              _%e124862%_)))
                                        (_%E124827124839%_)))))
                              (_%E124827124839%_))))
                      (_%E124827124839%_)))))
          (_%E124826124864%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind124769%_ _%e124770%_ _%rebind?124771%_)
        (let* ((_%e124772124782%_ _%bind124769%_)
               (_%E124774124786%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124772124782%_)))
               (_%E124773124808%_
                (lambda ()
                  (if (gx#stx-pair? _%e124772124782%_)
                      (let ((_%e124775124790%_
                             (gx#syntax-e _%e124772124782%_)))
                        (let ((_%hd124776124793%_ (##car _%e124775124790%_))
                              (_%tl124777124795%_ (##cdr _%e124775124790%_)))
                          (let ((_%id124798%_ _%hd124776124793%_))
                            (if (gx#stx-pair? _%tl124777124795%_)
                                (let ((_%e124778124800%_
                                       (gx#syntax-e _%tl124777124795%_)))
                                  (let ((_%hd124779124803%_
                                         (##car _%e124778124800%_))
                                        (_%tl124780124805%_
                                         (##cdr _%e124778124800%_)))
                                    (if (gx#stx-null? _%tl124780124805%_)
                                        (gx#core-bind-syntax!__1
                                         _%id124798%_
                                         _%e124770%_
                                         _%rebind?124771%_)
                                        (_%E124774124786%_))))
                                (_%E124774124786%_)))))
                      (_%E124774124786%_)))))
          (_%E124773124808%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind124815%_ _%e124816%_)
        (let ((_%rebind?124818%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind124815%_
           _%e124816%_
           _%rebind?124818%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g126396_
        (let ((_g126395_ (##length _g126396_)))
          (cond ((##fx= _g126395_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g126396_))
                ((##fx= _g126395_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g126396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g126396_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx124727%_)
        (let* ((_%e124728124738%_ _%stx124727%_)
               (_%E124730124742%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124728124738%_)))
               (_%E124729124764%_
                (lambda ()
                  (if (gx#stx-pair? _%e124728124738%_)
                      (let ((_%e124731124746%_
                             (gx#syntax-e _%e124728124738%_)))
                        (let ((_%hd124732124749%_ (##car _%e124731124746%_))
                              (_%tl124733124751%_ (##cdr _%e124731124746%_)))
                          (if (gx#stx-pair? _%tl124733124751%_)
                              (let ((_%e124734124754%_
                                     (gx#syntax-e _%tl124733124751%_)))
                                (let ((_%hd124735124757%_
                                       (##car _%e124734124754%_))
                                      (_%tl124736124759%_
                                       (##cdr _%e124734124754%_)))
                                  (let ((_%expr124762%_ _%hd124735124757%_))
                                    (if (gx#stx-null? _%tl124736124759%_)
                                        (gx#core-expand-expression
                                         _%expr124762%_)
                                        (_%E124730124742%_)))))
                              (_%E124730124742%_))))
                      (_%E124730124742%_)))))
          (_%E124729124764%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx124686%_)
        (let* ((_%e124687124697%_ _%stx124686%_)
               (_%E124689124701%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124687124697%_)))
               (_%E124688124723%_
                (lambda ()
                  (if (gx#stx-pair? _%e124687124697%_)
                      (let ((_%e124690124705%_
                             (gx#syntax-e _%e124687124697%_)))
                        (let ((_%hd124691124708%_ (##car _%e124690124705%_))
                              (_%tl124692124710%_ (##cdr _%e124690124705%_)))
                          (if (gx#stx-pair? _%tl124692124710%_)
                              (let ((_%e124693124713%_
                                     (gx#syntax-e _%tl124692124710%_)))
                                (let ((_%hd124694124716%_
                                       (##car _%e124693124713%_))
                                      (_%tl124695124718%_
                                       (##cdr _%e124693124713%_)))
                                  (let ((_%e124721%_ _%hd124694124716%_))
                                    (if (gx#stx-null? _%tl124695124718%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e124721%_)
                                                     '()))
                                         (gx#stx-source _%stx124686%_))
                                        (_%E124689124701%_)))))
                              (_%E124689124701%_))))
                      (_%E124689124701%_)))))
          (_%E124688124723%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx124645%_)
        (let* ((_%e124646124656%_ _%stx124645%_)
               (_%E124648124660%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124646124656%_)))
               (_%E124647124682%_
                (lambda ()
                  (if (gx#stx-pair? _%e124646124656%_)
                      (let ((_%e124649124664%_
                             (gx#syntax-e _%e124646124656%_)))
                        (let ((_%hd124650124667%_ (##car _%e124649124664%_))
                              (_%tl124651124669%_ (##cdr _%e124649124664%_)))
                          (if (gx#stx-pair? _%tl124651124669%_)
                              (let ((_%e124652124672%_
                                     (gx#syntax-e _%tl124651124669%_)))
                                (let ((_%hd124653124675%_
                                       (##car _%e124652124672%_))
                                      (_%tl124654124677%_
                                       (##cdr _%e124652124672%_)))
                                  (let ((_%e124680%_ _%hd124653124675%_))
                                    (if (gx#stx-null? _%tl124654124677%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e124680%_)
                                                     '()))
                                         (gx#stx-source _%stx124645%_))
                                        (_%E124648124660%_)))))
                              (_%E124648124660%_))))
                      (_%E124648124660%_)))))
          (_%E124647124682%_))))
    (define gx#core-expand-call%
      (lambda (_%stx124602%_)
        (let* ((_%e124603124613%_ _%stx124602%_)
               (_%E124605124617%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124603124613%_)))
               (_%E124604124641%_
                (lambda ()
                  (if (gx#stx-pair? _%e124603124613%_)
                      (let ((_%e124606124621%_
                             (gx#syntax-e _%e124603124613%_)))
                        (let ((_%hd124607124624%_ (##car _%e124606124621%_))
                              (_%tl124608124626%_ (##cdr _%e124606124621%_)))
                          (if (gx#stx-pair? _%tl124608124626%_)
                              (let ((_%e124609124629%_
                                     (gx#syntax-e _%tl124608124626%_)))
                                (let ((_%hd124610124632%_
                                       (##car _%e124609124629%_))
                                      (_%tl124611124634%_
                                       (##cdr _%e124609124629%_)))
                                  (let* ((_%rator124637%_ _%hd124610124632%_)
                                         (_%args124639%_ _%tl124611124634%_))
                                    (if (gx#stx-list? _%args124639%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator124637%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args124639%_))
                                         (gx#stx-source _%stx124602%_))
                                        (_%E124605124617%_)))))
                              (_%E124605124617%_))))
                      (_%E124605124617%_)))))
          (_%E124604124641%_))))
    (define gx#core-expand-if%
      (lambda (_%stx124535%_)
        (let* ((_%e124536124552%_ _%stx124535%_)
               (_%E124538124556%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124536124552%_)))
               (_%E124537124598%_
                (lambda ()
                  (if (gx#stx-pair? _%e124536124552%_)
                      (let ((_%e124539124560%_
                             (gx#syntax-e _%e124536124552%_)))
                        (let ((_%hd124540124563%_ (##car _%e124539124560%_))
                              (_%tl124541124565%_ (##cdr _%e124539124560%_)))
                          (if (gx#stx-pair? _%tl124541124565%_)
                              (let ((_%e124542124568%_
                                     (gx#syntax-e _%tl124541124565%_)))
                                (let ((_%hd124543124571%_
                                       (##car _%e124542124568%_))
                                      (_%tl124544124573%_
                                       (##cdr _%e124542124568%_)))
                                  (let ((_%test124576%_ _%hd124543124571%_))
                                    (if (gx#stx-pair? _%tl124544124573%_)
                                        (let ((_%e124545124578%_
                                               (gx#syntax-e
                                                _%tl124544124573%_)))
                                          (let ((_%hd124546124581%_
                                                 (##car _%e124545124578%_))
                                                (_%tl124547124583%_
                                                 (##cdr _%e124545124578%_)))
                                            (let ((_%K124586%_
                                                   _%hd124546124581%_))
                                              (if (gx#stx-pair?
                                                   _%tl124547124583%_)
                                                  (let ((_%e124548124588%_
                                                         (gx#syntax-e
                                                          _%tl124547124583%_)))
                                                    (let ((_%hd124549124591%_
                                                           (##car _%e124548124588%_))
                                                          (_%tl124550124593%_
                                                           (##cdr _%e124548124588%_)))
                                                      (let ((_%E124596%_
                                                             _%hd124549124591%_))
                                                        (if (gx#stx-null?
                                                             _%tl124550124593%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test124576%_)
                                 (cons (gx#core-expand-expression _%K124586%_)
                                       (cons (gx#core-expand-expression
                                              _%E124596%_)
                                             '()))))
                     (gx#stx-source _%stx124535%_))
                    (_%E124538124556%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124538124556%_)))))
                                        (_%E124538124556%_)))))
                              (_%E124538124556%_))))
                      (_%E124538124556%_)))))
          (_%E124537124598%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx124494%_)
        (let* ((_%e124495124505%_ _%stx124494%_)
               (_%E124497124509%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124495124505%_)))
               (_%E124496124531%_
                (lambda ()
                  (if (gx#stx-pair? _%e124495124505%_)
                      (let ((_%e124498124513%_
                             (gx#syntax-e _%e124495124505%_)))
                        (let ((_%hd124499124516%_ (##car _%e124498124513%_))
                              (_%tl124500124518%_ (##cdr _%e124498124513%_)))
                          (if (gx#stx-pair? _%tl124500124518%_)
                              (let ((_%e124501124521%_
                                     (gx#syntax-e _%tl124500124518%_)))
                                (let ((_%hd124502124524%_
                                       (##car _%e124501124521%_))
                                      (_%tl124503124526%_
                                       (##cdr _%e124501124521%_)))
                                  (let ((_%id124529%_ _%hd124502124524%_))
                                    (if (gx#stx-null? _%tl124503124526%_)
                                        (if (gx#identifier? _%id124529%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id124529%_
                                                          _%stx124494%_)
                                                         '()))
                                             (gx#stx-source _%stx124494%_))
                                            (_%E124497124509%_))
                                        (_%E124497124509%_)))))
                              (_%E124497124509%_))))
                      (_%E124497124509%_)))))
          (_%E124496124531%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx124440%_)
        (let* ((_%e124441124454%_ _%stx124440%_)
               (_%E124443124458%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124441124454%_)))
               (_%E124442124490%_
                (lambda ()
                  (if (gx#stx-pair? _%e124441124454%_)
                      (let ((_%e124444124462%_
                             (gx#syntax-e _%e124441124454%_)))
                        (let ((_%hd124445124465%_ (##car _%e124444124462%_))
                              (_%tl124446124467%_ (##cdr _%e124444124462%_)))
                          (if (gx#stx-pair? _%tl124446124467%_)
                              (let ((_%e124447124470%_
                                     (gx#syntax-e _%tl124446124467%_)))
                                (let ((_%hd124448124473%_
                                       (##car _%e124447124470%_))
                                      (_%tl124449124475%_
                                       (##cdr _%e124447124470%_)))
                                  (let ((_%id124478%_ _%hd124448124473%_))
                                    (if (gx#stx-pair? _%tl124449124475%_)
                                        (let ((_%e124450124480%_
                                               (gx#syntax-e
                                                _%tl124449124475%_)))
                                          (let ((_%hd124451124483%_
                                                 (##car _%e124450124480%_))
                                                (_%tl124452124485%_
                                                 (##cdr _%e124450124480%_)))
                                            (let ((_%expr124488%_
                                                   _%hd124451124483%_))
                                              (if (gx#stx-null?
                                                   _%tl124452124485%_)
                                                  (if (gx#identifier?
                                                       _%id124478%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id124478%_
                            _%stx124440%_)
                           (cons (gx#core-expand-expression _%expr124488%_)
                                 '())))
               (gx#stx-source _%stx124440%_))
              (_%E124443124458%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124443124458%_)))))
                                        (_%E124443124458%_)))))
                              (_%E124443124458%_))))
                      (_%E124443124458%_)))))
          (_%E124442124490%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx124285%_)
        (letrec ((_%generate124287%_
                  (lambda (_%body124317%_)
                    (let _%lp124319%_ ((_%rest124321%_ _%body124317%_)
                                       (_%ns124322%_
                                        (gx#core-context-namespace__0))
                                       (_%r124323%_ '()))
                      (let* ((_%e124324124339%_ _%rest124321%_)
                             (_%E124337124343%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e124324124339%_)))
                             (_%E124333124347%_
                              (lambda ()
                                (if (gx#stx-null? _%e124324124339%_)
                                    (reverse _%r124323%_)
                                    (_%E124337124343%_))))
                             (_%E124326124404%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124324124339%_)
                                    (let ((_%e124334124351%_
                                           (gx#syntax-e _%e124324124339%_)))
                                      (let ((_%hd124335124354%_
                                             (##car _%e124334124351%_))
                                            (_%tl124336124356%_
                                             (##cdr _%e124334124351%_)))
                                        (let* ((_%hd124359%_
                                                _%hd124335124354%_)
                                               (_%rest124361%_
                                                _%tl124336124356%_))
                                          (if (gx#identifier? _%hd124359%_)
                                              (_%lp124319%_
                                               _%rest124361%_
                                               _%ns124322%_
                                               (cons (cons _%hd124359%_
                                                           (cons (if _%ns124322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd124359%_
                              _%ns124322%_
                              '"#"
                              _%hd124359%_)
                             _%hd124359%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r124323%_))
                                              (let* ((_%e124362124372%_
                                                      _%hd124359%_)
                                                     (_%E124364124376%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e124362124372%_)))
                                                     (_%E124363124400%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e124362124372%_)
                                                            (let ((_%e124365124380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e124362124372%_)))
                      (let ((_%hd124366124383%_ (##car _%e124365124380%_))
                            (_%tl124367124385%_ (##cdr _%e124365124380%_)))
                        (let ((_%id124388%_ _%hd124366124383%_))
                          (if (gx#stx-pair? _%tl124367124385%_)
                              (let ((_%e124368124390%_
                                     (gx#syntax-e _%tl124367124385%_)))
                                (let ((_%hd124369124393%_
                                       (##car _%e124368124390%_))
                                      (_%tl124370124395%_
                                       (##cdr _%e124368124390%_)))
                                  (let ((_%eid124398%_ _%hd124369124393%_))
                                    (if (gx#stx-null? _%tl124370124395%_)
                                        (if (and (gx#identifier? _%id124388%_)
                                                 (gx#identifier?
                                                  _%eid124398%_))
                                            (_%lp124319%_
                                             _%rest124361%_
                                             _%ns124322%_
                                             (cons (cons _%id124388%_
                                                         (cons _%eid124398%_
                                                               '()))
                                                   _%r124323%_))
                                            (_%E124364124376%_))
                                        (_%E124364124376%_)))))
                              (_%E124364124376%_)))))
                    (_%E124364124376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124363124400%_))))))
                                    (_%E124333124347%_))))
                             (_%E124325124436%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124324124339%_)
                                    (let ((_%e124327124408%_
                                           (gx#syntax-e _%e124324124339%_)))
                                      (let ((_%hd124328124411%_
                                             (##car _%e124327124408%_))
                                            (_%tl124329124413%_
                                             (##cdr _%e124327124408%_)))
                                        (if (eq? (gx#stx-e _%hd124328124411%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl124329124413%_)
                                                (let ((_%e124330124416%_
                                                       (gx#syntax-e
                                                        _%tl124329124413%_)))
                                                  (let ((_%hd124331124419%_
                                                         (##car _%e124330124416%_))
                                                        (_%tl124332124421%_
                                                         (##cdr _%e124330124416%_)))
                                                    (let* ((_%ns124424%_
                                                            _%hd124331124419%_)
                                                           (_%rest124426%_
                                                            _%tl124332124421%_)
                                                           (_%ns124434%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns124424%_)
                        (symbol->string (gx#stx-e _%ns124424%_))
                        (if (or (gx#stx-string? _%ns124424%_)
                                (gx#stx-false? _%ns124424%_))
                            (gx#stx-e _%ns124424%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx124285%_
                             _%ns124424%_)))))
              (_%lp124319%_ _%rest124426%_ _%ns124434%_ _%r124323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124326124404%_))
                                            (_%E124326124404%_))))
                                    (_%E124326124404%_)))))
                        (_%E124325124436%_))))))
          (let* ((_%e124288124295%_ _%stx124285%_)
                 (_%E124290124299%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124288124295%_)))
                 (_%E124289124313%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124288124295%_)
                        (let ((_%e124291124303%_
                               (gx#syntax-e _%e124288124295%_)))
                          (let ((_%hd124292124306%_ (##car _%e124291124303%_))
                                (_%tl124293124308%_ (##cdr _%e124291124303%_)))
                            (let ((_%body124311%_ _%tl124293124308%_))
                              (if (gx#stx-list? _%body124311%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate124287%_ _%body124311%_))
                                  (_%E124290124299%_)))))
                        (_%E124290124299%_)))))
            (_%E124289124313%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx124231%_)
        (let* ((_%e124232124245%_ _%stx124231%_)
               (_%E124234124249%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124232124245%_)))
               (_%E124233124281%_
                (lambda ()
                  (if (gx#stx-pair? _%e124232124245%_)
                      (let ((_%e124235124253%_
                             (gx#syntax-e _%e124232124245%_)))
                        (let ((_%hd124236124256%_ (##car _%e124235124253%_))
                              (_%tl124237124258%_ (##cdr _%e124235124253%_)))
                          (if (gx#stx-pair? _%tl124237124258%_)
                              (let ((_%e124238124261%_
                                     (gx#syntax-e _%tl124237124258%_)))
                                (let ((_%hd124239124264%_
                                       (##car _%e124238124261%_))
                                      (_%tl124240124266%_
                                       (##cdr _%e124238124261%_)))
                                  (let ((_%hd124269%_ _%hd124239124264%_))
                                    (if (gx#stx-pair? _%tl124240124266%_)
                                        (let ((_%e124241124271%_
                                               (gx#syntax-e
                                                _%tl124240124266%_)))
                                          (let ((_%hd124242124274%_
                                                 (##car _%e124241124271%_))
                                                (_%tl124243124276%_
                                                 (##cdr _%e124241124271%_)))
                                            (let ((_%expr124279%_
                                                   _%hd124242124274%_))
                                              (if (gx#stx-null?
                                                   _%tl124243124276%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd124269%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd124269%_)
                          (cons _%expr124279%_ '())))
              (_%E124234124249%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124234124249%_)))))
                                        (_%E124234124249%_)))))
                              (_%E124234124249%_))))
                      (_%E124234124249%_)))))
          (_%E124233124281%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx124177%_)
        (let* ((_%e124178124191%_ _%stx124177%_)
               (_%E124180124195%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124178124191%_)))
               (_%E124179124227%_
                (lambda ()
                  (if (gx#stx-pair? _%e124178124191%_)
                      (let ((_%e124181124199%_
                             (gx#syntax-e _%e124178124191%_)))
                        (let ((_%hd124182124202%_ (##car _%e124181124199%_))
                              (_%tl124183124204%_ (##cdr _%e124181124199%_)))
                          (if (gx#stx-pair? _%tl124183124204%_)
                              (let ((_%e124184124207%_
                                     (gx#syntax-e _%tl124183124204%_)))
                                (let ((_%hd124185124210%_
                                       (##car _%e124184124207%_))
                                      (_%tl124186124212%_
                                       (##cdr _%e124184124207%_)))
                                  (let ((_%hd124215%_ _%hd124185124210%_))
                                    (if (gx#stx-pair? _%tl124186124212%_)
                                        (let ((_%e124187124217%_
                                               (gx#syntax-e
                                                _%tl124186124212%_)))
                                          (let ((_%hd124188124220%_
                                                 (##car _%e124187124217%_))
                                                (_%tl124189124222%_
                                                 (##cdr _%e124187124217%_)))
                                            (let ((_%expr124225%_
                                                   _%hd124188124220%_))
                                              (if (gx#stx-null?
                                                   _%tl124189124222%_)
                                                  (if (gx#identifier?
                                                       _%hd124215%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd124215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr124225%_ '())))
              (_%E124180124195%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124180124195%_)))))
                                        (_%E124180124195%_)))))
                              (_%E124180124195%_))))
                      (_%E124180124195%_)))))
          (_%E124179124227%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx124123%_)
        (let* ((_%e124124124137%_ _%stx124123%_)
               (_%E124126124141%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124124124137%_)))
               (_%E124125124173%_
                (lambda ()
                  (if (gx#stx-pair? _%e124124124137%_)
                      (let ((_%e124127124145%_
                             (gx#syntax-e _%e124124124137%_)))
                        (let ((_%hd124128124148%_ (##car _%e124127124145%_))
                              (_%tl124129124150%_ (##cdr _%e124127124145%_)))
                          (if (gx#stx-pair? _%tl124129124150%_)
                              (let ((_%e124130124153%_
                                     (gx#syntax-e _%tl124129124150%_)))
                                (let ((_%hd124131124156%_
                                       (##car _%e124130124153%_))
                                      (_%tl124132124158%_
                                       (##cdr _%e124130124153%_)))
                                  (let ((_%id124161%_ _%hd124131124156%_))
                                    (if (gx#stx-pair? _%tl124132124158%_)
                                        (let ((_%e124133124163%_
                                               (gx#syntax-e
                                                _%tl124132124158%_)))
                                          (let ((_%hd124134124166%_
                                                 (##car _%e124133124163%_))
                                                (_%tl124135124168%_
                                                 (##cdr _%e124133124163%_)))
                                            (let ((_%alias-id124171%_
                                                   _%hd124134124166%_))
                                              (if (gx#stx-null?
                                                   _%tl124135124168%_)
                                                  (if (and (gx#identifier?
                                                            _%id124161%_)
                                                           (gx#identifier?
                                                            _%alias-id124171%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id124161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id124171%_ '())))
              (_%E124126124141%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124126124141%_)))))
                                        (_%E124126124141%_)))))
                              (_%E124126124141%_))))
                      (_%E124126124141%_)))))
          (_%E124125124173%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx124080%_)
        (let* ((_%e124081124091%_ _%stx124080%_)
               (_%E124083124095%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124081124091%_)))
               (_%E124082124119%_
                (lambda ()
                  (if (gx#stx-pair? _%e124081124091%_)
                      (let ((_%e124084124099%_
                             (gx#syntax-e _%e124081124091%_)))
                        (let ((_%hd124085124102%_ (##car _%e124084124099%_))
                              (_%tl124086124104%_ (##cdr _%e124084124099%_)))
                          (if (gx#stx-pair? _%tl124086124104%_)
                              (let ((_%e124087124107%_
                                     (gx#syntax-e _%tl124086124104%_)))
                                (let ((_%hd124088124110%_
                                       (##car _%e124087124107%_))
                                      (_%tl124089124112%_
                                       (##cdr _%e124087124107%_)))
                                  (let* ((_%hd124115%_ _%hd124088124110%_)
                                         (_%body124117%_ _%tl124089124112%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd124115%_)
                                             (gx#stx-list? _%body124117%_)
                                             (not (gx#stx-null?
                                                   _%body124117%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd124115%_)
                                         _%body124117%_)
                                        (_%E124083124095%_)))))
                              (_%E124083124095%_))))
                      (_%E124083124095%_)))))
          (_%E124082124119%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx124016%_)
        (letrec ((_%generate124018%_
                  (lambda (_%clause124048%_)
                    (let* ((_%e124049124056%_ _%clause124048%_)
                           (_%E124051124060%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx124016%_
                               _%clause124048%_)))
                           (_%E124050124076%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124049124056%_)
                                  (let ((_%e124052124064%_
                                         (gx#syntax-e _%e124049124056%_)))
                                    (let ((_%hd124053124067%_
                                           (##car _%e124052124064%_))
                                          (_%tl124054124069%_
                                           (##cdr _%e124052124064%_)))
                                      (let* ((_%hd124072%_ _%hd124053124067%_)
                                             (_%body124074%_
                                              _%tl124054124069%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd124072%_)
                                                 (gx#stx-list? _%body124074%_)
                                                 (not (gx#stx-null?
                                                       _%body124074%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd124072%_)
                                                   _%body124074%_)
                                             (gx#stx-source _%clause124048%_))
                                            (_%E124051124060%_)))))
                                  (_%E124051124060%_)))))
                      (_%E124050124076%_)))))
          (let* ((_%e124019124026%_ _%stx124016%_)
                 (_%E124021124030%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124019124026%_)))
                 (_%E124020124044%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124019124026%_)
                        (let ((_%e124022124034%_
                               (gx#syntax-e _%e124019124026%_)))
                          (let ((_%hd124023124037%_ (##car _%e124022124034%_))
                                (_%tl124024124039%_ (##cdr _%e124022124034%_)))
                            (let ((_%clauses124042%_ _%tl124024124039%_))
                              (if (gx#stx-list? _%clauses124042%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate124018%_
                                    _%clauses124042%_))
                                  (_%E124021124030%_)))))
                        (_%E124021124030%_)))))
            (_%E124020124044%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx123917%_ _%form123918%_)
        (letrec ((_%generate123920%_
                  (lambda (_%bind123963%_)
                    (let* ((_%e123964123974%_ _%bind123963%_)
                           (_%E123966123978%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx123917%_
                               _%bind123963%_)))
                           (_%E123965124002%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123964123974%_)
                                  (let ((_%e123967123982%_
                                         (gx#syntax-e _%e123964123974%_)))
                                    (let ((_%hd123968123985%_
                                           (##car _%e123967123982%_))
                                          (_%tl123969123987%_
                                           (##cdr _%e123967123982%_)))
                                      (let ((_%ids123990%_ _%hd123968123985%_))
                                        (if (gx#stx-pair? _%tl123969123987%_)
                                            (let ((_%e123970123992%_
                                                   (gx#syntax-e
                                                    _%tl123969123987%_)))
                                              (let ((_%hd123971123995%_
                                                     (##car _%e123970123992%_))
                                                    (_%tl123972123997%_
                                                     (##cdr _%e123970123992%_)))
                                                (let ((_%expr124000%_
                                                       _%hd123971123995%_))
                                                  (if (gx#stx-null?
                                                       _%tl123972123997%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids123990%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids123990%_)
                        (cons _%expr124000%_ '()))
                  (_%E123966123978%_))
              (_%E123966123978%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E123966123978%_)))))
                                  (_%E123966123978%_)))))
                      (_%E123965124002%_)))))
          (let* ((_%e123921123931%_ _%stx123917%_)
                 (_%E123923123935%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123921123931%_)))
                 (_%E123922123959%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123921123931%_)
                        (let ((_%e123924123939%_
                               (gx#syntax-e _%e123921123931%_)))
                          (let ((_%hd123925123942%_ (##car _%e123924123939%_))
                                (_%tl123926123944%_ (##cdr _%e123924123939%_)))
                            (if (gx#stx-pair? _%tl123926123944%_)
                                (let ((_%e123927123947%_
                                       (gx#syntax-e _%tl123926123944%_)))
                                  (let ((_%hd123928123950%_
                                         (##car _%e123927123947%_))
                                        (_%tl123929123952%_
                                         (##cdr _%e123927123947%_)))
                                    (let* ((_%hd123955%_ _%hd123928123950%_)
                                           (_%body123957%_ _%tl123929123952%_))
                                      (if (and (gx#stx-list? _%hd123955%_)
                                               (gx#stx-list? _%body123957%_)
                                               (not (gx#stx-null?
                                                     _%body123957%_)))
                                          (gx#core-cons*
                                           _%form123918%_
                                           (gx#stx-map1
                                            _%generate123920%_
                                            _%hd123955%_)
                                           _%body123957%_)
                                          (_%E123923123935%_)))))
                                (_%E123923123935%_))))
                        (_%E123923123935%_)))))
            (_%E123922123959%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx124009%_)
        (let ((_%form124011%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx124009%_ _%form124011%_))))
    (define gx#macro-expand-let-values
      (lambda _g126398_
        (let ((_g126397_ (##length _g126398_)))
          (cond ((##fx= _g126397_ 1)
                 (apply gx#macro-expand-let-values__0 _g126398_))
                ((##fx= _g126397_ 2)
                 (apply gx#macro-expand-let-values__% _g126398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g126398_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx123914%_)
        (gx#macro-expand-let-values__% _%stx123914%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx123912%_)
        (gx#macro-expand-let-values__% _%stx123912%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx123803%_)
        (let* ((_%e123804123830%_ _%stx123803%_)
               (_%E123816123834%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123804123830%_)))
               (_%E123806123876%_
                (lambda ()
                  (if (gx#stx-pair? _%e123804123830%_)
                      (let ((_%e123817123838%_
                             (gx#syntax-e _%e123804123830%_)))
                        (let ((_%hd123818123841%_ (##car _%e123817123838%_))
                              (_%tl123819123843%_ (##cdr _%e123817123838%_)))
                          (if (gx#stx-pair? _%tl123819123843%_)
                              (let ((_%e123820123846%_
                                     (gx#syntax-e _%tl123819123843%_)))
                                (let ((_%hd123821123849%_
                                       (##car _%e123820123846%_))
                                      (_%tl123822123851%_
                                       (##cdr _%e123820123846%_)))
                                  (let ((_%test123854%_ _%hd123821123849%_))
                                    (if (gx#stx-pair? _%tl123822123851%_)
                                        (let ((_%e123823123856%_
                                               (gx#syntax-e
                                                _%tl123822123851%_)))
                                          (let ((_%hd123824123859%_
                                                 (##car _%e123823123856%_))
                                                (_%tl123825123861%_
                                                 (##cdr _%e123823123856%_)))
                                            (let ((_%K123864%_
                                                   _%hd123824123859%_))
                                              (if (gx#stx-pair?
                                                   _%tl123825123861%_)
                                                  (let ((_%e123826123866%_
                                                         (gx#syntax-e
                                                          _%tl123825123861%_)))
                                                    (let ((_%hd123827123869%_
                                                           (##car _%e123826123866%_))
                                                          (_%tl123828123871%_
                                                           (##cdr _%e123826123866%_)))
                                                      (let ((_%E123874%_
                                                             _%hd123827123869%_))
                                                        (if (gx#stx-null?
                                                             _%tl123828123871%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test123854%_
                                                             _%K123864%_
                                                             _%E123874%_)
                                                            (_%E123816123834%_)))))
                                                  (_%E123816123834%_)))))
                                        (_%E123816123834%_)))))
                              (_%E123816123834%_))))
                      (_%E123816123834%_))))
               (_%E123805123908%_
                (lambda ()
                  (if (gx#stx-pair? _%e123804123830%_)
                      (let ((_%e123807123880%_
                             (gx#syntax-e _%e123804123830%_)))
                        (let ((_%hd123808123883%_ (##car _%e123807123880%_))
                              (_%tl123809123885%_ (##cdr _%e123807123880%_)))
                          (if (gx#stx-pair? _%tl123809123885%_)
                              (let ((_%e123810123888%_
                                     (gx#syntax-e _%tl123809123885%_)))
                                (let ((_%hd123811123891%_
                                       (##car _%e123810123888%_))
                                      (_%tl123812123893%_
                                       (##cdr _%e123810123888%_)))
                                  (let ((_%test123896%_ _%hd123811123891%_))
                                    (if (gx#stx-pair? _%tl123812123893%_)
                                        (let ((_%e123813123898%_
                                               (gx#syntax-e
                                                _%tl123812123893%_)))
                                          (let ((_%hd123814123901%_
                                                 (##car _%e123813123898%_))
                                                (_%tl123815123903%_
                                                 (##cdr _%e123813123898%_)))
                                            (let ((_%K123906%_
                                                   _%hd123814123901%_))
                                              (if (gx#stx-null?
                                                   _%tl123815123903%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test123896%_
                                                   _%K123906%_
                                                   '#!void)
                                                  (_%E123806123876%_)))))
                                        (_%E123806123876%_)))))
                              (_%E123806123876%_))))
                      (_%E123806123876%_)))))
          (_%E123805123908%_))))
    (define gx#free-identifier=?
      (lambda (_%xid123788%_ _%yid123789%_)
        (let ((_%xe123791%_ (gx#resolve-identifier__0 _%xid123788%_))
              (_%ye123792%_ (gx#resolve-identifier__0 _%yid123789%_)))
          (if (and _%xe123791%_ _%ye123792%_)
              (let ((_%$e123795%_ (eq? _%xe123791%_ _%ye123792%_)))
                (if _%$e123795%_
                    _%$e123795%_
                    (if (##structure-instance-of? _%xe123791%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye123792%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe123791%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye123792%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe123791%_ _%ye123792%_)
                  '#f
                  (gx#stx-eq? _%xid123788%_ _%yid123789%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid123769%_ _%yid123770%_)
        (letrec ((_%context123772%_
                  (lambda (_%e123786%_)
                    (if (##structure-direct-instance-of?
                         _%e123786%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e123786%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks123773%_
                  (lambda (_%e123781%_)
                    (if (symbol? _%e123781%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e123781%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e123781%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e123781%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap123774%_
                  (lambda (_%e123779%_)
                    (if (symbol? _%e123779%_)
                        _%e123779%_
                        (gx#syntax-local-unwrap _%e123779%_)))))
          (let ((_%x123776%_ (_%unwrap123774%_ _%xid123769%_))
                (_%y123777%_ (_%unwrap123774%_ _%yid123770%_)))
            (if (gx#stx-eq? _%x123776%_ _%y123777%_)
                (if (eq? (_%context123772%_ _%x123776%_)
                         (_%context123772%_ _%y123777%_))
                    (equal? (_%marks123773%_ _%x123776%_)
                            (_%marks123773%_ _%y123777%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx123767%_)
        (if (gx#identifier? _%stx123767%_)
            (gx#core-identifier=? _%stx123767%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx123765%_)
        (if (gx#identifier? _%stx123765%_)
            (gx#core-identifier=? _%stx123765%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx123708%_ _%where123709%_)
        (let _%lp123711%_ ((_%rest123713%_ (gx#syntax->list _%stx123708%_)))
          (let* ((_%rest123714123722%_ _%rest123713%_)
                 (_%else123716123730%_ (lambda () '#t))
                 (_%K123718123743%_
                  (lambda (_%rest123733%_ _%hd123734%_)
                    (if (gx#identifier? _%hd123734%_)
                        (if (__find (lambda (_%g123736123738%_)
                                      (gx#bound-identifier=?
                                       _%g123736123738%_
                                       _%hd123734%_))
                                    _%rest123733%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where123709%_
                             _%hd123734%_)
                            (_%lp123711%_ _%rest123733%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where123709%_
                         _%hd123734%_)))))
            (if (pair? _%rest123714123722%_)
                (let ((_%hd123719123746%_ (##car _%rest123714123722%_))
                      (_%tl123720123748%_ (##cdr _%rest123714123722%_)))
                  (let* ((_%hd123751%_ _%hd123719123746%_)
                         (_%rest123753%_ _%tl123720123748%_))
                    (_%K123718123743%_ _%rest123753%_ _%hd123751%_)))
                (_%else123716123730%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx123758%_)
        (let ((_%where123760%_ _%stx123758%_))
          (gx#check-duplicate-identifiers__% _%stx123758%_ _%where123760%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g126400_
        (let ((_g126399_ (##length _g126400_)))
          (cond ((##fx= _g126399_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g126400_))
                ((##fx= _g126399_ 2)
                 (apply gx#check-duplicate-identifiers__% _g126400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g126400_))))))
    (define gx#core-bind-values?
      (lambda (_%stx123700%_)
        (gx#stx-andmap
         (lambda (_%x123702%_)
           (let ((_%$e123704%_ (gx#identifier? _%x123702%_)))
             (if _%$e123704%_ _%$e123704%_ (gx#stx-false? _%x123702%_))))
         _%stx123700%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx123664%_ _%rebind?123665%_ _%phi123666%_ _%ctx123667%_)
        (gx#stx-for-each1
         (lambda (_%id123669%_)
           (if (gx#identifier? _%id123669%_)
               (gx#core-bind-runtime!__%
                _%id123669%_
                _%rebind?123665%_
                _%phi123666%_
                _%ctx123667%_)
               '#!void))
         _%stx123664%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx123674%_)
        (let* ((_%rebind?123676%_ '#f)
               (_%phi123678%_ (gx#current-expander-phi))
               (_%ctx123680%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123674%_
           _%rebind?123676%_
           _%phi123678%_
           _%ctx123680%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx123682%_ _%rebind?123683%_)
        (let* ((_%phi123685%_ (gx#current-expander-phi))
               (_%ctx123687%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123682%_
           _%rebind?123683%_
           _%phi123685%_
           _%ctx123687%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx123689%_ _%rebind?123690%_ _%phi123691%_)
        (let ((_%ctx123693%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123689%_
           _%rebind?123690%_
           _%phi123691%_
           _%ctx123693%_))))
    (define gx#core-bind-values!
      (lambda _g126402_
        (let ((_g126401_ (##length _g126402_)))
          (cond ((##fx= _g126401_ 1) (apply gx#core-bind-values!__0 _g126402_))
                ((##fx= _g126401_ 2) (apply gx#core-bind-values!__1 _g126402_))
                ((##fx= _g126401_ 3) (apply gx#core-bind-values!__2 _g126402_))
                ((##fx= _g126401_ 4) (apply gx#core-bind-values!__% _g126402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g126402_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx123659%_)
        (gx#stx-map1
         (lambda (_%x123661%_)
           (if (gx#identifier? _%x123661%_)
               (gx#core-quote-syntax__0 _%x123661%_)
               '#f))
         _%stx123659%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx123652%_)
        (if (gx#identifier? _%stx123652%_)
            (let* ((_%bind123654%_ (gx#resolve-identifier__0 _%stx123652%_))
                   (_%$e123656%_ (not _%bind123654%_)))
              (if _%$e123656%_
                  _%$e123656%_
                  (##structure-instance-of?
                   _%bind123654%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id123641%_ _%form123642%_)
        (let ((_%bind123644%_ (gx#resolve-identifier__0 _%id123641%_)))
          (if (##structure-instance-of? _%bind123644%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id123641%_)
              (if (not _%bind123644%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id123641%_)))
                      (gx#core-quote-syntax__0 _%id123641%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form123642%_
                       _%id123641%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form123642%_
                   _%id123641%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id123596%_ _%rebind?123597%_ _%phi123598%_ _%ctx123599%_)
        (let* ((_%key123601%_ (gx#core-identifier-key _%id123596%_))
               (_%eid123603%_
                (gx#make-binding-id__%
                 _%key123601%_
                 '#f
                 _%phi123598%_
                 _%ctx123599%_))
               (_%bind123609%_
                (if (##structure-instance-of?
                     _%ctx123599%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid123603%_
                     _%key123601%_
                     _%phi123598%_
                     _%ctx123599%_)
                    (if (##structure-instance-of?
                         _%ctx123599%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid123603%_
                         _%key123601%_
                         _%phi123598%_)
                        (if (##structure-instance-of?
                             _%ctx123599%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid123603%_
                             _%key123601%_
                             _%phi123598%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid123603%_
                             _%key123601%_
                             _%phi123598%_))))))
          (gx#bind-identifier!__%
           _%id123596%_
           _%bind123609%_
           _%rebind?123597%_
           _%phi123598%_
           _%ctx123599%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id123615%_)
        (let* ((_%rebind?123617%_ '#f)
               (_%phi123619%_ (gx#current-expander-phi))
               (_%ctx123621%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123615%_
           _%rebind?123617%_
           _%phi123619%_
           _%ctx123621%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id123623%_ _%rebind?123624%_)
        (let* ((_%phi123626%_ (gx#current-expander-phi))
               (_%ctx123628%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123623%_
           _%rebind?123624%_
           _%phi123626%_
           _%ctx123628%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id123630%_ _%rebind?123631%_ _%phi123632%_)
        (let ((_%ctx123634%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123630%_
           _%rebind?123631%_
           _%phi123632%_
           _%ctx123634%_))))
    (define gx#core-bind-runtime!
      (lambda _g126404_
        (let ((_g126403_ (##length _g126404_)))
          (cond ((##fx= _g126403_ 1)
                 (apply gx#core-bind-runtime!__0 _g126404_))
                ((##fx= _g126403_ 2)
                 (apply gx#core-bind-runtime!__1 _g126404_))
                ((##fx= _g126403_ 3)
                 (apply gx#core-bind-runtime!__2 _g126404_))
                ((##fx= _g126403_ 4)
                 (apply gx#core-bind-runtime!__% _g126404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g126404_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id123548%_
               _%eid123549%_
               _%rebind?123550%_
               _%phi123551%_
               _%ctx123552%_)
        (let* ((_%key123554%_ (gx#core-identifier-key _%id123548%_))
               (_%bind123559%_
                (if (##structure-instance-of?
                     _%ctx123552%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid123549%_
                     _%key123554%_
                     _%phi123551%_
                     _%ctx123552%_)
                    (if (##structure-instance-of?
                         _%ctx123552%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid123549%_
                         _%key123554%_
                         _%phi123551%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid123549%_
                         _%key123554%_
                         _%phi123551%_)))))
          (gx#bind-identifier!__%
           _%id123548%_
           _%bind123559%_
           _%rebind?123550%_
           _%phi123551%_
           _%ctx123552%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id123565%_ _%eid123566%_)
        (let* ((_%rebind?123568%_ '#f)
               (_%phi123570%_ (gx#current-expander-phi))
               (_%ctx123572%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123565%_
           _%eid123566%_
           _%rebind?123568%_
           _%phi123570%_
           _%ctx123572%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id123574%_ _%eid123575%_ _%rebind?123576%_)
        (let* ((_%phi123578%_ (gx#current-expander-phi))
               (_%ctx123580%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123574%_
           _%eid123575%_
           _%rebind?123576%_
           _%phi123578%_
           _%ctx123580%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id123582%_ _%eid123583%_ _%rebind?123584%_ _%phi123585%_)
        (let ((_%ctx123587%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123582%_
           _%eid123583%_
           _%rebind?123584%_
           _%phi123585%_
           _%ctx123587%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g126406_
        (let ((_g126405_ (##length _g126406_)))
          (cond ((##fx= _g126405_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g126406_))
                ((##fx= _g126405_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g126406_))
                ((##fx= _g126405_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g126406_))
                ((##fx= _g126405_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g126406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g126406_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id123508%_
               _%eid123509%_
               _%rebind?123510%_
               _%phi123511%_
               _%ctx123512%_)
        (gx#bind-identifier!__%
         _%id123508%_
         (##structure
          gx#extern-binding::t
          _%eid123509%_
          (gx#core-identifier-key _%id123508%_)
          _%phi123511%_)
         _%rebind?123510%_
         _%phi123511%_
         _%ctx123512%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id123517%_ _%eid123518%_)
        (let* ((_%rebind?123520%_ '#f)
               (_%phi123522%_ (gx#current-expander-phi))
               (_%ctx123524%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123517%_
           _%eid123518%_
           _%rebind?123520%_
           _%phi123522%_
           _%ctx123524%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id123526%_ _%eid123527%_ _%rebind?123528%_)
        (let* ((_%phi123530%_ (gx#current-expander-phi))
               (_%ctx123532%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123526%_
           _%eid123527%_
           _%rebind?123528%_
           _%phi123530%_
           _%ctx123532%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id123534%_ _%eid123535%_ _%rebind?123536%_ _%phi123537%_)
        (let ((_%ctx123539%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123534%_
           _%eid123535%_
           _%rebind?123536%_
           _%phi123537%_
           _%ctx123539%_))))
    (define gx#core-bind-extern!
      (lambda _g126408_
        (let ((_g126407_ (##length _g126408_)))
          (cond ((##fx= _g126407_ 2) (apply gx#core-bind-extern!__0 _g126408_))
                ((##fx= _g126407_ 3) (apply gx#core-bind-extern!__1 _g126408_))
                ((##fx= _g126407_ 4) (apply gx#core-bind-extern!__2 _g126408_))
                ((##fx= _g126407_ 5) (apply gx#core-bind-extern!__% _g126408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g126408_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id123462%_
               _%e123463%_
               _%rebind?123464%_
               _%phi123465%_
               _%ctx123466%_)
        (gx#bind-identifier!__%
         _%id123462%_
         (let ((_%key123471%_ (gx#core-identifier-key _%id123462%_))
               (_%e123472%_
                (if (or (##structure-instance-of? _%e123463%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e123463%_
                         'gx#expander-context::t))
                    _%e123463%_
                    (##structure
                     gx#user-expander::t
                     _%e123463%_
                     _%ctx123466%_
                     _%phi123465%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key123471%_
             '#t
             _%phi123465%_
             _%ctx123466%_)
            _%key123471%_
            _%phi123465%_
            _%e123472%_))
         _%rebind?123464%_
         _%phi123465%_
         _%ctx123466%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id123477%_ _%e123478%_)
        (let* ((_%rebind?123480%_ '#f)
               (_%phi123482%_ (gx#current-expander-phi))
               (_%ctx123484%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123477%_
           _%e123478%_
           _%rebind?123480%_
           _%phi123482%_
           _%ctx123484%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id123486%_ _%e123487%_ _%rebind?123488%_)
        (let* ((_%phi123490%_ (gx#current-expander-phi))
               (_%ctx123492%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123486%_
           _%e123487%_
           _%rebind?123488%_
           _%phi123490%_
           _%ctx123492%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id123494%_ _%e123495%_ _%rebind?123496%_ _%phi123497%_)
        (let ((_%ctx123499%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123494%_
           _%e123495%_
           _%rebind?123496%_
           _%phi123497%_
           _%ctx123499%_))))
    (define gx#core-bind-syntax!
      (lambda _g126410_
        (let ((_g126409_ (##length _g126410_)))
          (cond ((##fx= _g126409_ 2) (apply gx#core-bind-syntax!__0 _g126410_))
                ((##fx= _g126409_ 3) (apply gx#core-bind-syntax!__1 _g126410_))
                ((##fx= _g126409_ 4) (apply gx#core-bind-syntax!__2 _g126410_))
                ((##fx= _g126409_ 5) (apply gx#core-bind-syntax!__% _g126410_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g126410_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id123445%_ _%e123446%_ _%rebind?123447%_)
        (gx#core-bind-syntax!__%
         _%id123445%_
         _%e123446%_
         _%rebind?123447%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id123452%_ _%e123453%_)
        (let ((_%rebind?123455%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id123452%_
           _%e123453%_
           _%rebind?123455%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g126412_
        (let ((_g126411_ (##length _g126412_)))
          (cond ((##fx= _g126411_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g126412_))
                ((##fx= _g126411_ 3)
                 (apply gx#core-bind-root-syntax!__% _g126412_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g126412_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id123403%_
               _%alias-id123404%_
               _%rebind?123405%_
               _%phi123406%_
               _%ctx123407%_)
        (gx#bind-identifier!__%
         _%id123403%_
         (let ((_%key123409%_ (gx#core-identifier-key _%id123403%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key123409%_
             '#t
             _%phi123406%_
             _%ctx123407%_)
            _%key123409%_
            _%phi123406%_
            _%alias-id123404%_))
         _%rebind?123405%_
         _%phi123406%_
         _%ctx123407%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id123414%_ _%alias-id123415%_)
        (let* ((_%rebind?123417%_ '#f)
               (_%phi123419%_ (gx#current-expander-phi))
               (_%ctx123421%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123414%_
           _%alias-id123415%_
           _%rebind?123417%_
           _%phi123419%_
           _%ctx123421%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id123423%_ _%alias-id123424%_ _%rebind?123425%_)
        (let* ((_%phi123427%_ (gx#current-expander-phi))
               (_%ctx123429%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123423%_
           _%alias-id123424%_
           _%rebind?123425%_
           _%phi123427%_
           _%ctx123429%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id123431%_ _%alias-id123432%_ _%rebind?123433%_ _%phi123434%_)
        (let ((_%ctx123436%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123431%_
           _%alias-id123432%_
           _%rebind?123433%_
           _%phi123434%_
           _%ctx123436%_))))
    (define gx#core-bind-alias!
      (lambda _g126414_
        (let ((_g126413_ (##length _g126414_)))
          (cond ((##fx= _g126413_ 2) (apply gx#core-bind-alias!__0 _g126414_))
                ((##fx= _g126413_ 3) (apply gx#core-bind-alias!__1 _g126414_))
                ((##fx= _g126413_ 4) (apply gx#core-bind-alias!__2 _g126414_))
                ((##fx= _g126413_ 5) (apply gx#core-bind-alias!__% _g126414_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g126414_))))))
    (define gx#make-binding-id__%
      (lambda (_%key123353%_ _%syntax?123354%_ _%phi123355%_ _%ctx123356%_)
        (if (uninterned-symbol? _%key123353%_)
            (##gensym 'L)
            (if (pair? _%key123353%_)
                (gensym (##car _%key123353%_))
                (if (##structure-instance-of? _%ctx123356%_ 'gx#top-context::t)
                    (let ((_%ns123361%_
                           (gx#core-context-namespace__% _%ctx123356%_)))
                      (if (and (fxzero? _%phi123355%_) (not _%syntax?123354%_))
                          (if _%ns123361%_
                              (make-symbol__1 _%ns123361%_ '"#" _%key123353%_)
                              _%key123353%_)
                          (if _%syntax?123354%_
                              (make-symbol__1
                               (let ((_%$e123365%_ _%ns123361%_))
                                 (if _%$e123365%_ _%$e123365%_ '""))
                               '"[:"
                               (number->string _%phi123355%_)
                               '":]#"
                               _%key123353%_)
                              (make-symbol__1
                               (let ((_%$e123369%_ _%ns123361%_))
                                 (if _%$e123369%_ _%$e123369%_ '""))
                               '"["
                               (number->string _%phi123355%_)
                               '"]#"
                               _%key123353%_))))
                    (gensym _%key123353%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key123376%_)
        (let* ((_%syntax?123378%_ '#f)
               (_%phi123380%_ (gx#current-expander-phi))
               (_%ctx123382%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123376%_
           _%syntax?123378%_
           _%phi123380%_
           _%ctx123382%_))))
    (define gx#make-binding-id__1
      (lambda (_%key123384%_ _%syntax?123385%_)
        (let* ((_%phi123387%_ (gx#current-expander-phi))
               (_%ctx123389%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123384%_
           _%syntax?123385%_
           _%phi123387%_
           _%ctx123389%_))))
    (define gx#make-binding-id__2
      (lambda (_%key123391%_ _%syntax?123392%_ _%phi123393%_)
        (let ((_%ctx123395%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123391%_
           _%syntax?123392%_
           _%phi123393%_
           _%ctx123395%_))))
    (define gx#make-binding-id
      (lambda _g126416_
        (let ((_g126415_ (##length _g126416_)))
          (cond ((##fx= _g126415_ 1) (apply gx#make-binding-id__0 _g126416_))
                ((##fx= _g126415_ 2) (apply gx#make-binding-id__1 _g126416_))
                ((##fx= _g126415_ 3) (apply gx#make-binding-id__2 _g126416_))
                ((##fx= _g126415_ 4) (apply gx#make-binding-id__% _g126416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g126416_))))))))
