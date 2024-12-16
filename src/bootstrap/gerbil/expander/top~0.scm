(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1734357962)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx126426%_)
        (letrec ((_%expand-special126428%_
                  (lambda (_%hd126430%_ _%K126431%_ _%rest126432%_ _%r126433%_)
                    (_%K126431%_
                     _%rest126432%_
                     (cons (gx#core-expand-top _%hd126430%_) _%r126433%_)))))
          (gx#core-expand-block__0 _%stx126426%_ _%expand-special126428%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx126179%_)
        (letrec ((_%expand-special126181%_
                  (lambda (_%hd126301%_ _%K126302%_ _%rest126303%_ _%r126304%_)
                    (let* ((_%K126308%_
                            (lambda (_%e126306%_)
                              (_%K126302%_
                               _%rest126303%_
                               (cons _%e126306%_ _%r126304%_))))
                           (_%e126309126338%_ _%hd126301%_)
                           (_%E126333126342%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126309126338%_)))
                           (_%E126329126354%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126309126338%_)
                                  (let ((_%e126334126346%_
                                         (gx#syntax-e _%e126309126338%_)))
                                    (let ((_%hd126335126349%_
                                           (##car _%e126334126346%_))
                                          (_%tl126336126351%_
                                           (##cdr _%e126334126346%_)))
                                      (if (and (gx#identifier?
                                                _%hd126335126349%_)
                                               (gx#core-identifier=?
                                                _%hd126335126349%_
                                                '%#define-runtime))
                                          (_%K126308%_
                                           (gx#core-expand-define-runtime%
                                            _%hd126301%_))
                                          (_%E126333126342%_))))
                                  (_%E126333126342%_))))
                           (_%E126325126366%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126309126338%_)
                                  (let ((_%e126330126358%_
                                         (gx#syntax-e _%e126309126338%_)))
                                    (let ((_%hd126331126361%_
                                           (##car _%e126330126358%_))
                                          (_%tl126332126363%_
                                           (##cdr _%e126330126358%_)))
                                      (if (and (gx#identifier?
                                                _%hd126331126361%_)
                                               (gx#core-identifier=?
                                                _%hd126331126361%_
                                                '%#define-alias))
                                          (_%K126308%_
                                           (gx#core-expand-define-alias%
                                            _%hd126301%_))
                                          (_%E126329126354%_))))
                                  (_%E126329126354%_))))
                           (_%E126315126378%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126309126338%_)
                                  (let ((_%e126326126370%_
                                         (gx#syntax-e _%e126309126338%_)))
                                    (let ((_%hd126327126373%_
                                           (##car _%e126326126370%_))
                                          (_%tl126328126375%_
                                           (##cdr _%e126326126370%_)))
                                      (if (and (gx#identifier?
                                                _%hd126327126373%_)
                                               (gx#core-identifier=?
                                                _%hd126327126373%_
                                                '%#define-syntax))
                                          (_%K126308%_
                                           (gx#core-expand-define-syntax%
                                            _%hd126301%_))
                                          (_%E126325126366%_))))
                                  (_%E126325126366%_))))
                           (_%E126311126410%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126309126338%_)
                                  (let ((_%e126316126382%_
                                         (gx#syntax-e _%e126309126338%_)))
                                    (let ((_%hd126317126385%_
                                           (##car _%e126316126382%_))
                                          (_%tl126318126387%_
                                           (##cdr _%e126316126382%_)))
                                      (if (and (gx#identifier?
                                                _%hd126317126385%_)
                                               (gx#core-identifier=?
                                                _%hd126317126385%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl126318126387%_)
                                              (let ((_%e126319126390%_
                                                     (gx#syntax-e
                                                      _%tl126318126387%_)))
                                                (let ((_%hd126320126393%_
                                                       (##car _%e126319126390%_))
                                                      (_%tl126321126395%_
                                                       (##cdr _%e126319126390%_)))
                                                  (let ((_%hd-bind126398%_
                                                         _%hd126320126393%_))
                                                    (if (gx#stx-pair?
                                                         _%tl126321126395%_)
                                                        (let ((_%e126322126400%_
                                                               (gx#syntax-e
                                                                _%tl126321126395%_)))
                                                          (let ((_%hd126323126403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e126322126400%_))
                        (_%tl126324126405%_ (##cdr _%e126322126400%_)))
                    (let ((_%expr126408%_ _%hd126323126403%_))
                      (if (gx#stx-null? _%tl126324126405%_)
                          (if (gx#core-bind-values? _%hd-bind126398%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126398%_)
                                (_%K126308%_ _%hd126301%_))
                              (_%E126315126378%_))
                          (_%E126315126378%_)))))
                (_%E126315126378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126315126378%_))
                                          (_%E126315126378%_))))
                                  (_%E126315126378%_))))
                           (_%E126310126422%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126309126338%_)
                                  (let ((_%e126312126414%_
                                         (gx#syntax-e _%e126309126338%_)))
                                    (let ((_%hd126313126417%_
                                           (##car _%e126312126414%_))
                                          (_%tl126314126419%_
                                           (##cdr _%e126312126414%_)))
                                      (if (and (gx#identifier?
                                                _%hd126313126417%_)
                                               (gx#core-identifier=?
                                                _%hd126313126417%_
                                                '%#begin-syntax))
                                          (_%K126308%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd126301%_))
                                          (_%E126311126410%_))))
                                  (_%E126311126410%_)))))
                      (_%E126310126422%_))))
                 (_%eval-body126182%_
                  (lambda (_%rbody126190%_)
                    (let _%lp126192%_ ((_%rest126194%_ _%rbody126190%_)
                                       (_%body126195%_ '())
                                       (_%ebody126196%_ '()))
                      (let* ((_%rest126197126205%_ _%rest126194%_)
                             (_%else126199126213%_
                              (lambda ()
                                (values _%body126195%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody126196%_)
                                          (gx#stx-source _%stx126179%_))))))
                             (_%K126201126289%_
                              (lambda (_%rest126216%_ _%hd126217%_)
                                (let* ((_%e126218126235%_ _%hd126217%_)
                                       (_%E126230126239%_
                                        (lambda ()
                                          (_%lp126192%_
                                           _%rest126216%_
                                           (cons _%hd126217%_ _%body126195%_)
                                           (cons _%hd126217%_
                                                 _%ebody126196%_))))
                                       (_%E126220126251%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126218126235%_)
                                              (let ((_%e126231126243%_
                                                     (gx#syntax-e
                                                      _%e126218126235%_)))
                                                (let ((_%hd126232126246%_
                                                       (##car _%e126231126243%_))
                                                      (_%tl126233126248%_
                                                       (##cdr _%e126231126243%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126232126246%_)
                                                           (gx#core-identifier=?
                                                            _%hd126232126246%_
                                                            '%#begin-syntax))
                                                      (_%lp126192%_
                                                       _%rest126216%_
                                                       (cons _%hd126217%_
                                                             _%body126195%_)
                                                       _%ebody126196%_)
                                                      (_%E126230126239%_))))
                                              (_%E126230126239%_))))
                                       (_%E126219126285%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126218126235%_)
                                              (let ((_%e126221126255%_
                                                     (gx#syntax-e
                                                      _%e126218126235%_)))
                                                (let ((_%hd126222126258%_
                                                       (##car _%e126221126255%_))
                                                      (_%tl126223126260%_
                                                       (##cdr _%e126221126255%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126222126258%_)
                                                           (gx#core-identifier=?
                                                            _%hd126222126258%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl126223126260%_)
                                                          (let ((_%e126224126263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126223126260%_)))
                    (let ((_%hd126225126266%_ (##car _%e126224126263%_))
                          (_%tl126226126268%_ (##cdr _%e126224126263%_)))
                      (let ((_%hd-bind126271%_ _%hd126225126266%_))
                        (if (gx#stx-pair? _%tl126226126268%_)
                            (let ((_%e126227126273%_
                                   (gx#syntax-e _%tl126226126268%_)))
                              (let ((_%hd126228126276%_
                                     (##car _%e126227126273%_))
                                    (_%tl126229126278%_
                                     (##cdr _%e126227126273%_)))
                                (let ((_%expr126281%_ _%hd126228126276%_))
                                  (if (gx#stx-null? _%tl126229126278%_)
                                      (let ((_%ehd126283%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind126271%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr126281%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd126217%_))))
                                        (_%lp126192%_
                                         _%rest126216%_
                                         (cons _%ehd126283%_ _%body126195%_)
                                         (cons _%ehd126283%_ _%ebody126196%_)))
                                      (_%E126220126251%_)))))
                            (_%E126220126251%_)))))
                  (_%E126220126251%_))
              (_%E126220126251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126220126251%_)))))
                                  (_%E126219126285%_)))))
                        (if (pair? _%rest126197126205%_)
                            (let ((_%hd126202126292%_
                                   (##car _%rest126197126205%_))
                                  (_%tl126203126294%_
                                   (##cdr _%rest126197126205%_)))
                              (let* ((_%hd126297%_ _%hd126202126292%_)
                                     (_%rest126299%_ _%tl126203126294%_))
                                (_%K126201126289%_
                                 _%rest126299%_
                                 _%hd126297%_)))
                            (_%else126199126213%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody126185%_
                     (gx#core-expand-block__1
                      _%stx126179%_
                      _%expand-special126181%_
                      '#f))
                    (_g126449_ (_%eval-body126182%_ _%rbody126185%_)))
               (begin
                 (let ((_g126450_
                        (if (##values? _g126449_)
                            (##values-length _g126449_)
                            1)))
                   (if (not (##fx= _g126450_ 2))
                       (error "Context expects 2 values" _g126450_)))
                 (let ((_%expanded-body126187%_ (##values-ref _g126449_ 0))
                       (_%value126188%_ (##values-ref _g126449_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body126187%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value126188%_ '())))
                    (gx#stx-source _%stx126179%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx126149%_)
        (let* ((_%e126150126157%_ _%stx126149%_)
               (_%E126152126161%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126150126157%_)))
               (_%E126151126175%_
                (lambda ()
                  (if (gx#stx-pair? _%e126150126157%_)
                      (let ((_%e126153126165%_
                             (gx#syntax-e _%e126150126157%_)))
                        (let ((_%hd126154126168%_ (##car _%e126153126165%_))
                              (_%tl126155126170%_ (##cdr _%e126153126165%_)))
                          (let ((_%body126173%_ _%tl126155126170%_))
                            (if (gx#stx-list? _%body126173%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body126173%_)
                                 (gx#stx-source _%stx126149%_))
                                (_%E126152126161%_)))))
                      (_%E126152126161%_)))))
          (_%E126151126175%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx126147%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx126147%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx126093%_)
        (let* ((_%e126094126107%_ _%stx126093%_)
               (_%E126096126111%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126094126107%_)))
               (_%E126095126143%_
                (lambda ()
                  (if (gx#stx-pair? _%e126094126107%_)
                      (let ((_%e126097126115%_
                             (gx#syntax-e _%e126094126107%_)))
                        (let ((_%hd126098126118%_ (##car _%e126097126115%_))
                              (_%tl126099126120%_ (##cdr _%e126097126115%_)))
                          (if (gx#stx-pair? _%tl126099126120%_)
                              (let ((_%e126100126123%_
                                     (gx#syntax-e _%tl126099126120%_)))
                                (let ((_%hd126101126126%_
                                       (##car _%e126100126123%_))
                                      (_%tl126102126128%_
                                       (##cdr _%e126100126123%_)))
                                  (let ((_%ann126131%_ _%hd126101126126%_))
                                    (if (gx#stx-pair? _%tl126102126128%_)
                                        (let ((_%e126103126133%_
                                               (gx#syntax-e
                                                _%tl126102126128%_)))
                                          (let ((_%hd126104126136%_
                                                 (##car _%e126103126133%_))
                                                (_%tl126105126138%_
                                                 (##cdr _%e126103126133%_)))
                                            (let ((_%expr126141%_
                                                   _%hd126104126136%_))
                                              (if (gx#stx-null?
                                                   _%tl126105126138%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann126131%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr126141%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx126093%_))
                                                  (_%E126096126111%_)))))
                                        (_%E126096126111%_)))))
                              (_%E126096126111%_))))
                      (_%E126096126111%_)))))
          (_%E126095126143%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx125817%_ _%body125818%_)
        (letrec ((_%expand-special125820%_
                  (lambda (_%hd126088%_ _%K126089%_ _%rest126090%_ _%r126091%_)
                    (_%K126089%_
                     '()
                     (cons (_%expand-internal125821%_
                            _%hd126088%_
                            _%rest126090%_)
                           _%r126091%_))))
                 (_%expand-internal125821%_
                  (lambda (_%hd126084%_ _%rest126085%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal125823%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd126084%_ _%rest126085%_))
                          (gx#stx-source _%stx125817%_))
                         _%expand-internal-special125822%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj126443
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj126443)
                       __obj126443))))
                 (_%expand-internal-special125822%_
                  (lambda (_%hd125979%_ _%K125980%_ _%rest125981%_ _%r125982%_)
                    (let* ((_%e125983126008%_ _%hd125979%_)
                           (_%E126003126012%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125983126008%_)))
                           (_%E125999126024%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125983126008%_)
                                  (let ((_%e126004126016%_
                                         (gx#syntax-e _%e125983126008%_)))
                                    (let ((_%hd126005126019%_
                                           (##car _%e126004126016%_))
                                          (_%tl126006126021%_
                                           (##cdr _%e126004126016%_)))
                                      (if (and (gx#identifier?
                                                _%hd126005126019%_)
                                               (gx#core-identifier=?
                                                _%hd126005126019%_
                                                '%#declare))
                                          (_%K125980%_
                                           _%rest125981%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd125979%_)
                                                 _%r125982%_))
                                          (_%E126003126012%_))))
                                  (_%E126003126012%_))))
                           (_%E125995126036%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125983126008%_)
                                  (let ((_%e126000126028%_
                                         (gx#syntax-e _%e125983126008%_)))
                                    (let ((_%hd126001126031%_
                                           (##car _%e126000126028%_))
                                          (_%tl126002126033%_
                                           (##cdr _%e126000126028%_)))
                                      (if (and (gx#identifier?
                                                _%hd126001126031%_)
                                               (gx#core-identifier=?
                                                _%hd126001126031%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd125979%_)
                                            (_%K125980%_
                                             _%rest125981%_
                                             _%r125982%_))
                                          (_%E125999126024%_))))
                                  (_%E125999126024%_))))
                           (_%E125985126048%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125983126008%_)
                                  (let ((_%e125996126040%_
                                         (gx#syntax-e _%e125983126008%_)))
                                    (let ((_%hd125997126043%_
                                           (##car _%e125996126040%_))
                                          (_%tl125998126045%_
                                           (##cdr _%e125996126040%_)))
                                      (if (and (gx#identifier?
                                                _%hd125997126043%_)
                                               (gx#core-identifier=?
                                                _%hd125997126043%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd125979%_)
                                            (_%K125980%_
                                             _%rest125981%_
                                             _%r125982%_))
                                          (_%E125995126036%_))))
                                  (_%E125995126036%_))))
                           (_%E125984126080%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125983126008%_)
                                  (let ((_%e125986126052%_
                                         (gx#syntax-e _%e125983126008%_)))
                                    (let ((_%hd125987126055%_
                                           (##car _%e125986126052%_))
                                          (_%tl125988126057%_
                                           (##cdr _%e125986126052%_)))
                                      (if (and (gx#identifier?
                                                _%hd125987126055%_)
                                               (gx#core-identifier=?
                                                _%hd125987126055%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125988126057%_)
                                              (let ((_%e125989126060%_
                                                     (gx#syntax-e
                                                      _%tl125988126057%_)))
                                                (let ((_%hd125990126063%_
                                                       (##car _%e125989126060%_))
                                                      (_%tl125991126065%_
                                                       (##cdr _%e125989126060%_)))
                                                  (let ((_%hd-bind126068%_
                                                         _%hd125990126063%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125991126065%_)
                                                        (let ((_%e125992126070%_
                                                               (gx#syntax-e
                                                                _%tl125991126065%_)))
                                                          (let ((_%hd125993126073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125992126070%_))
                        (_%tl125994126075%_ (##cdr _%e125992126070%_)))
                    (let ((_%expr126078%_ _%hd125993126073%_))
                      (if (gx#stx-null? _%tl125994126075%_)
                          (if (gx#core-bind-values? _%hd-bind126068%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126068%_)
                                (_%K125980%_
                                 _%rest125981%_
                                 (cons _%hd125979%_ _%r125982%_)))
                              (_%E125985126048%_))
                          (_%E125985126048%_)))))
                (_%E125985126048%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125985126048%_))
                                          (_%E125985126048%_))))
                                  (_%E125985126048%_)))))
                      (_%E125984126080%_))))
                 (_%wrap-internal125823%_
                  (lambda (_%rbody125825%_)
                    (let _%lp125827%_ ((_%rest125829%_ _%rbody125825%_)
                                       (_%decls125830%_ '())
                                       (_%bind125831%_ '())
                                       (_%body125832%_ '()))
                      (let* ((_%e125833125840%_ _%rest125829%_)
                             (_%E125835125889%_
                              (lambda ()
                                (let* ((_%body125884%_
                                        (let* ((_%body125843125853%_
                                                _%body125832%_)
                                               (_%else125846125861%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body125832%_)
                                                   (gx#stx-source
                                                    _%stx125817%_)))))
                                          (let ((_%K125851125881%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx125817%_)))
                                                (_%K125848125867%_
                                                 (lambda (_%expr125865%_)
                                                   _%expr125865%_)))
                                            (let ((_%try-match125845125877%_
                                                   (lambda ()
                                                     (if (pair? _%body125843125853%_)
                                                         (let ((_%tl125850125872%_
                                                                (##cdr _%body125843125853%_))
                                                               (_%hd125849125870%_
                                                                (##car _%body125843125853%_)))
                                                           (if (null? _%tl125850125872%_)
                                                               (let ((_%expr125875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd125849125870%_))
                         (_%K125848125867%_ _%expr125875%_))
                       (_%else125846125861%_)))
                 (_%else125846125861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body125843125853%_)
                                                  (_%K125851125881%_)
                                                  (_%try-match125845125877%_))))))
                                       (_%body125886%_
                                        (if (null? _%bind125831%_)
                                            _%body125884%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind125831%_
                                                         (cons _%body125884%_
                                                               '())))
                                             (gx#stx-source _%stx125817%_)))))
                                  (if (null? _%decls125830%_)
                                      _%body125886%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls125830%_
                                                   (cons _%body125886%_ '())))
                                       (gx#stx-source _%stx125817%_))))))
                             (_%E125834125975%_
                              (lambda ()
                                (if (gx#stx-pair? _%e125833125840%_)
                                    (let ((_%e125836125893%_
                                           (gx#syntax-e _%e125833125840%_)))
                                      (let ((_%hd125837125896%_
                                             (##car _%e125836125893%_))
                                            (_%tl125838125898%_
                                             (##cdr _%e125836125893%_)))
                                        (let* ((_%hd125901%_
                                                _%hd125837125896%_)
                                               (_%rest125903%_
                                                _%tl125838125898%_)
                                               (_%e125904125921%_ _%hd125901%_)
                                               (_%E125916125925%_
                                                (lambda ()
                                                  (if (null? _%bind125831%_)
                                                      (_%lp125827%_
                                                       _%rest125903%_
                                                       _%decls125830%_
                                                       _%bind125831%_
                                                       (cons _%hd125901%_
                                                             _%body125832%_))
                                                      (_%lp125827%_
                                                       _%rest125903%_
                                                       _%decls125830%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd125901%_ '()))
                     _%bind125831%_)
               _%body125832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125906125939%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125904125921%_)
                                                      (let ((_%e125917125929%_
                                                             (gx#syntax-e
                                                              _%e125904125921%_)))
                                                        (let ((_%hd125918125932%_
                                                               (##car _%e125917125929%_))
                                                              (_%tl125919125934%_
                                                               (##cdr _%e125917125929%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125918125932%_)
                           (gx#core-identifier=?
                            _%hd125918125932%_
                            '%#declare))
                      (let ((_%xdecls125937%_ _%tl125919125934%_))
                        (_%lp125827%_
                         _%rest125903%_
                         (gx#stx-foldr cons _%decls125830%_ _%xdecls125937%_)
                         _%bind125831%_
                         _%body125832%_))
                      (_%E125916125925%_))))
              (_%E125916125925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125905125971%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125904125921%_)
                                                      (let ((_%e125907125943%_
                                                             (gx#syntax-e
                                                              _%e125904125921%_)))
                                                        (let ((_%hd125908125946%_
                                                               (##car _%e125907125943%_))
                                                              (_%tl125909125948%_
                                                               (##cdr _%e125907125943%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125908125946%_)
                           (gx#core-identifier=?
                            _%hd125908125946%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl125909125948%_)
                          (let ((_%e125910125951%_
                                 (gx#syntax-e _%tl125909125948%_)))
                            (let ((_%hd125911125954%_
                                   (##car _%e125910125951%_))
                                  (_%tl125912125956%_
                                   (##cdr _%e125910125951%_)))
                              (let ((_%hd-bind125959%_ _%hd125911125954%_))
                                (if (gx#stx-pair? _%tl125912125956%_)
                                    (let ((_%e125913125961%_
                                           (gx#syntax-e _%tl125912125956%_)))
                                      (let ((_%hd125914125964%_
                                             (##car _%e125913125961%_))
                                            (_%tl125915125966%_
                                             (##cdr _%e125913125961%_)))
                                        (let ((_%expr125969%_
                                               _%hd125914125964%_))
                                          (if (gx#stx-null? _%tl125915125966%_)
                                              (_%lp125827%_
                                               _%rest125903%_
                                               _%decls125830%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind125959%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr125969%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind125831%_)
                                               _%body125832%_)
                                              (_%E125906125939%_)))))
                                    (_%E125906125939%_)))))
                          (_%E125906125939%_))
                      (_%E125906125939%_))))
              (_%E125906125939%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E125905125971%_))))
                                    (_%E125835125889%_)))))
                        (_%E125834125975%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body125818%_)
            (gx#stx-source _%stx125817%_))
           _%expand-special125820%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx125755%_)
        (let* ((_%e125756125763%_ _%stx125755%_)
               (_%E125758125767%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125756125763%_)))
               (_%E125757125813%_
                (lambda ()
                  (if (gx#stx-pair? _%e125756125763%_)
                      (let ((_%e125759125771%_
                             (gx#syntax-e _%e125756125763%_)))
                        (let ((_%hd125760125774%_ (##car _%e125759125771%_))
                              (_%tl125761125776%_ (##cdr _%e125759125771%_)))
                          (let ((_%body125779%_ _%tl125761125776%_))
                            (if (gx#stx-list? _%body125779%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl125781%_)
                                     (let* ((_%e125782125789%_ _%decl125781%_)
                                            (_%E125784125793%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e125782125789%_)))
                                            (_%E125783125809%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e125782125789%_)
                                                   (let ((_%e125785125797%_
                                                          (gx#syntax-e
                                                           _%e125782125789%_)))
                                                     (let ((_%hd125786125800%_
                                                            (##car _%e125785125797%_))
                                                           (_%tl125787125802%_
                                                            (##cdr _%e125785125797%_)))
                                                       (let* ((_%head125805%_
                                                               _%hd125786125800%_)
                                                              (_%args125807%_
                                                               _%tl125787125802%_))
                                                         (if (gx#stx-list?
                                                              _%args125807%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl125781%_)
                                                             (_%E125784125793%_)))))
                                                   (_%E125784125793%_)))))
                                       (_%E125783125809%_)))
                                   _%body125779%_))
                                 (gx#stx-source _%stx125755%_))
                                (_%E125758125767%_)))))
                      (_%E125758125767%_)))))
          (_%E125757125813%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx125659%_)
        (let* ((_%e125660125667%_ _%stx125659%_)
               (_%E125662125671%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125660125667%_)))
               (_%E125661125751%_
                (lambda ()
                  (if (gx#stx-pair? _%e125660125667%_)
                      (let ((_%e125663125675%_
                             (gx#syntax-e _%e125660125667%_)))
                        (let ((_%hd125664125678%_ (##car _%e125663125675%_))
                              (_%tl125665125680%_ (##cdr _%e125663125675%_)))
                          (let ((_%body125683%_ _%tl125665125680%_))
                            (let _%lp125685%_ ((_%rest125687%_ _%body125683%_)
                                               (_%r125688%_ '()))
                              (let* ((_%e125689125703%_ _%rest125687%_)
                                     (_%E125701125707%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx125659%_)))
                                     (_%E125691125711%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e125689125703%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r125688%_))
                                             (gx#stx-source _%stx125659%_))
                                            (_%E125701125707%_))))
                                     (_%E125690125747%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e125689125703%_)
                                            (let ((_%e125692125715%_
                                                   (gx#syntax-e
                                                    _%e125689125703%_)))
                                              (let ((_%hd125693125718%_
                                                     (##car _%e125692125715%_))
                                                    (_%tl125694125720%_
                                                     (##cdr _%e125692125715%_)))
                                                (if (gx#stx-pair?
                                                     _%hd125693125718%_)
                                                    (let ((_%e125695125723%_
                                                           (gx#syntax-e
                                                            _%hd125693125718%_)))
                                                      (let ((_%hd125696125726%_
                                                             (##car _%e125695125723%_))
                                                            (_%tl125697125728%_
                                                             (##cdr _%e125695125723%_)))
                                                        (let ((_%id125731%_
                                                               _%hd125696125726%_))
                                                          (if (gx#stx-pair?
                                                               _%tl125697125728%_)
                                                              (let ((_%e125698125733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl125697125728%_)))
                        (let ((_%hd125699125736%_ (##car _%e125698125733%_))
                              (_%tl125700125738%_ (##cdr _%e125698125733%_)))
                          (let ((_%eid125741%_ _%hd125699125736%_))
                            (if (gx#stx-null? _%tl125700125738%_)
                                (let ((_%rest125743%_ _%tl125694125720%_))
                                  (if (and (gx#identifier? _%id125731%_)
                                           (gx#identifier? _%eid125741%_))
                                      (let ((_%eid125745%_
                                             (gx#stx-e _%eid125741%_)))
                                        (gx#core-bind-extern!__0
                                         _%id125731%_
                                         _%eid125745%_)
                                        (_%lp125685%_
                                         _%rest125743%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id125731%_)
                                                     (cons _%eid125745%_ '()))
                                               _%r125688%_)))
                                      (_%E125691125711%_)))
                                (_%E125691125711%_)))))
                      (_%E125691125711%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E125691125711%_))))
                                            (_%E125691125711%_)))))
                                (_%E125690125747%_))))))
                      (_%E125662125671%_)))))
          (_%E125661125751%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx125605%_)
        (let* ((_%e125606125619%_ _%stx125605%_)
               (_%E125608125623%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125606125619%_)))
               (_%E125607125655%_
                (lambda ()
                  (if (gx#stx-pair? _%e125606125619%_)
                      (let ((_%e125609125627%_
                             (gx#syntax-e _%e125606125619%_)))
                        (let ((_%hd125610125630%_ (##car _%e125609125627%_))
                              (_%tl125611125632%_ (##cdr _%e125609125627%_)))
                          (if (gx#stx-pair? _%tl125611125632%_)
                              (let ((_%e125612125635%_
                                     (gx#syntax-e _%tl125611125632%_)))
                                (let ((_%hd125613125638%_
                                       (##car _%e125612125635%_))
                                      (_%tl125614125640%_
                                       (##cdr _%e125612125635%_)))
                                  (let ((_%hd125643%_ _%hd125613125638%_))
                                    (if (gx#stx-pair? _%tl125614125640%_)
                                        (let ((_%e125615125645%_
                                               (gx#syntax-e
                                                _%tl125614125640%_)))
                                          (let ((_%hd125616125648%_
                                                 (##car _%e125615125645%_))
                                                (_%tl125617125650%_
                                                 (##cdr _%e125615125645%_)))
                                            (let ((_%expr125653%_
                                                   _%hd125616125648%_))
                                              (if (gx#stx-null?
                                                   _%tl125617125650%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd125643%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd125643%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd125643%_)
                             (cons (gx#core-expand-expression _%expr125653%_)
                                   '())))
                 (gx#stx-source _%stx125605%_)))
              (_%E125608125623%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125608125623%_)))))
                                        (_%E125608125623%_)))))
                              (_%E125608125623%_))))
                      (_%E125608125623%_)))))
          (_%E125607125655%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx125549%_)
        (let* ((_%e125550125563%_ _%stx125549%_)
               (_%E125552125567%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125550125563%_)))
               (_%E125551125601%_
                (lambda ()
                  (if (gx#stx-pair? _%e125550125563%_)
                      (let ((_%e125553125571%_
                             (gx#syntax-e _%e125550125563%_)))
                        (let ((_%hd125554125574%_ (##car _%e125553125571%_))
                              (_%tl125555125576%_ (##cdr _%e125553125571%_)))
                          (if (gx#stx-pair? _%tl125555125576%_)
                              (let ((_%e125556125579%_
                                     (gx#syntax-e _%tl125555125576%_)))
                                (let ((_%hd125557125582%_
                                       (##car _%e125556125579%_))
                                      (_%tl125558125584%_
                                       (##cdr _%e125556125579%_)))
                                  (let ((_%id125587%_ _%hd125557125582%_))
                                    (if (gx#stx-pair? _%tl125558125584%_)
                                        (let ((_%e125559125589%_
                                               (gx#syntax-e
                                                _%tl125558125584%_)))
                                          (let ((_%hd125560125592%_
                                                 (##car _%e125559125589%_))
                                                (_%tl125561125594%_
                                                 (##cdr _%e125559125589%_)))
                                            (let ((_%binding-id125597%_
                                                   _%hd125560125592%_))
                                              (if (gx#stx-null?
                                                   _%tl125561125594%_)
                                                  (if (and (gx#identifier?
                                                            _%id125587%_)
                                                           (gx#identifier?
                                                            _%binding-id125597%_))
                                                      (let ((_%eid125599%_
                                                             (gx#stx-e
                                                              _%binding-id125597%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id125587%_
                                                         _%eid125599%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125587%_)
                             (cons _%eid125599%_ '())))))
              (_%E125552125567%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125552125567%_)))))
                                        (_%E125552125567%_)))))
                              (_%E125552125567%_))))
                      (_%E125552125567%_)))))
          (_%E125551125601%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx125492%_)
        (let* ((_%e125493125506%_ _%stx125492%_)
               (_%E125495125510%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125493125506%_)))
               (_%E125494125545%_
                (lambda ()
                  (if (gx#stx-pair? _%e125493125506%_)
                      (let ((_%e125496125514%_
                             (gx#syntax-e _%e125493125506%_)))
                        (let ((_%hd125497125517%_ (##car _%e125496125514%_))
                              (_%tl125498125519%_ (##cdr _%e125496125514%_)))
                          (if (gx#stx-pair? _%tl125498125519%_)
                              (let ((_%e125499125522%_
                                     (gx#syntax-e _%tl125498125519%_)))
                                (let ((_%hd125500125525%_
                                       (##car _%e125499125522%_))
                                      (_%tl125501125527%_
                                       (##cdr _%e125499125522%_)))
                                  (let ((_%id125530%_ _%hd125500125525%_))
                                    (if (gx#stx-pair? _%tl125501125527%_)
                                        (let ((_%e125502125532%_
                                               (gx#syntax-e
                                                _%tl125501125527%_)))
                                          (let ((_%hd125503125535%_
                                                 (##car _%e125502125532%_))
                                                (_%tl125504125537%_
                                                 (##cdr _%e125502125532%_)))
                                            (let ((_%expr125540%_
                                                   _%hd125503125535%_))
                                              (if (gx#stx-null?
                                                   _%tl125504125537%_)
                                                  (if (gx#identifier?
                                                       _%id125530%_)
                                                      (let ((_g126451_
                                                             (gx#core-expand-expression+1
                                                              _%expr125540%_)))
                                                        (begin
                                                          (let ((_g126452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g126451_)
                             (##values-length _g126451_)
                             1)))
                    (if (not (##fx= _g126452_ 2))
                        (error "Context expects 2 values" _g126452_)))
                  (let ((_%e-stx125542%_ (##values-ref _g126451_ 0))
                        (_%e125543%_ (##values-ref _g126451_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id125530%_ _%e125543%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id125530%_)
                                   (cons _%e-stx125542%_ '())))
                       (gx#stx-source _%stx125492%_))))))
              (_%E125495125510%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125495125510%_)))))
                                        (_%E125495125510%_)))))
                              (_%E125495125510%_))))
                      (_%E125495125510%_)))))
          (_%E125494125545%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx125436%_)
        (let* ((_%e125437125450%_ _%stx125436%_)
               (_%E125439125454%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125437125450%_)))
               (_%E125438125488%_
                (lambda ()
                  (if (gx#stx-pair? _%e125437125450%_)
                      (let ((_%e125440125458%_
                             (gx#syntax-e _%e125437125450%_)))
                        (let ((_%hd125441125461%_ (##car _%e125440125458%_))
                              (_%tl125442125463%_ (##cdr _%e125440125458%_)))
                          (if (gx#stx-pair? _%tl125442125463%_)
                              (let ((_%e125443125466%_
                                     (gx#syntax-e _%tl125442125463%_)))
                                (let ((_%hd125444125469%_
                                       (##car _%e125443125466%_))
                                      (_%tl125445125471%_
                                       (##cdr _%e125443125466%_)))
                                  (let ((_%id125474%_ _%hd125444125469%_))
                                    (if (gx#stx-pair? _%tl125445125471%_)
                                        (let ((_%e125446125476%_
                                               (gx#syntax-e
                                                _%tl125445125471%_)))
                                          (let ((_%hd125447125479%_
                                                 (##car _%e125446125476%_))
                                                (_%tl125448125481%_
                                                 (##cdr _%e125446125476%_)))
                                            (let ((_%alias-id125484%_
                                                   _%hd125447125479%_))
                                              (if (gx#stx-null?
                                                   _%tl125448125481%_)
                                                  (if (and (gx#identifier?
                                                            _%id125474%_)
                                                           (gx#identifier?
                                                            _%alias-id125484%_))
                                                      (let ((_%alias-id125486%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id125484%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id125474%_
                                                         _%alias-id125486%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125474%_)
                             (cons _%alias-id125486%_ '())))))
              (_%E125439125454%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125439125454%_)))))
                                        (_%E125439125454%_)))))
                              (_%E125439125454%_))))
                      (_%E125439125454%_)))))
          (_%E125438125488%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx125379%_ _%wrap?125380%_)
        (let* ((_%e125381125391%_ _%stx125379%_)
               (_%E125383125395%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125381125391%_)))
               (_%E125382125422%_
                (lambda ()
                  (if (gx#stx-pair? _%e125381125391%_)
                      (let ((_%e125384125399%_
                             (gx#syntax-e _%e125381125391%_)))
                        (let ((_%hd125385125402%_ (##car _%e125384125399%_))
                              (_%tl125386125404%_ (##cdr _%e125384125399%_)))
                          (if (gx#stx-pair? _%tl125386125404%_)
                              (let ((_%e125387125407%_
                                     (gx#syntax-e _%tl125386125404%_)))
                                (let ((_%hd125388125410%_
                                       (##car _%e125387125407%_))
                                      (_%tl125389125412%_
                                       (##cdr _%e125387125407%_)))
                                  (let* ((_%hd125415%_ _%hd125388125410%_)
                                         (_%body125417%_ _%tl125389125412%_))
                                    (if (gx#core-bind-values? _%hd125415%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd125415%_)
                                           (let ((_%body125420%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd125415%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx125379%_
                                                               _%body125417%_)
                                                              '()))))
                                             (if _%wrap?125380%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body125420%_)
                                                  (gx#stx-source
                                                   _%stx125379%_))
                                                 _%body125420%_)))
                                         gx#current-expander-context
                                         (let ((__obj126444
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126444)
                                           __obj126444))
                                        (_%E125383125395%_)))))
                              (_%E125383125395%_))))
                      (_%E125383125395%_)))))
          (_%E125382125422%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx125429%_)
        (let ((_%wrap?125431%_ '#t))
          (gx#core-expand-lambda%__% _%stx125429%_ _%wrap?125431%_))))
    (define gx#core-expand-lambda%
      (lambda _g126454_
        (let ((_g126453_ (##length _g126454_)))
          (cond ((##fx= _g126453_ 1)
                 (apply gx#core-expand-lambda%__0 _g126454_))
                ((##fx= _g126453_ 2)
                 (apply gx#core-expand-lambda%__% _g126454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g126454_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx125343%_)
        (let* ((_%e125344125351%_ _%stx125343%_)
               (_%E125346125355%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125344125351%_)))
               (_%E125345125374%_
                (lambda ()
                  (if (gx#stx-pair? _%e125344125351%_)
                      (let ((_%e125347125359%_
                             (gx#syntax-e _%e125344125351%_)))
                        (let ((_%hd125348125362%_ (##car _%e125347125359%_))
                              (_%tl125349125364%_ (##cdr _%e125347125359%_)))
                          (let ((_%clauses125367%_ _%tl125349125364%_))
                            (if (gx#stx-list? _%clauses125367%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause125369%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause125369%_)
                                       (let ((_%$e125371%_
                                              (gx#stx-source
                                               _%clause125369%_)))
                                         (if _%$e125371%_
                                             _%$e125371%_
                                             (gx#stx-source _%stx125343%_))))
                                      '#f))
                                   _%clauses125367%_))
                                 (gx#stx-source _%stx125343%_))
                                (_%E125346125355%_)))))
                      (_%E125346125355%_)))))
          (_%E125345125374%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx125297%_)
        (let* ((_%e125298125308%_ _%stx125297%_)
               (_%E125300125312%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125298125308%_)))
               (_%E125299125339%_
                (lambda ()
                  (if (gx#stx-pair? _%e125298125308%_)
                      (let ((_%e125301125316%_
                             (gx#syntax-e _%e125298125308%_)))
                        (let ((_%hd125302125319%_ (##car _%e125301125316%_))
                              (_%tl125303125321%_ (##cdr _%e125301125316%_)))
                          (if (gx#stx-pair? _%tl125303125321%_)
                              (let ((_%e125304125324%_
                                     (gx#syntax-e _%tl125303125321%_)))
                                (let ((_%hd125305125327%_
                                       (##car _%e125304125324%_))
                                      (_%tl125306125329%_
                                       (##cdr _%e125304125324%_)))
                                  (let* ((_%hd125332%_ _%hd125305125327%_)
                                         (_%body125334%_ _%tl125306125329%_))
                                    (if (gx#core-expand-let-bind? _%hd125332%_)
                                        (let ((_%expressions125336%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd125332%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd125332%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd125332%_
                                                           _%expressions125336%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx125297%_
                         _%body125334%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx125297%_)))
                                           gx#current-expander-context
                                           (let ((__obj126445
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj126445)
                                             __obj126445)))
                                        (_%E125300125312%_)))))
                              (_%E125300125312%_))))
                      (_%E125300125312%_)))))
          (_%E125299125339%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx125242%_ _%form125243%_)
        (let* ((_%e125244125254%_ _%stx125242%_)
               (_%E125246125258%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125244125254%_)))
               (_%E125245125283%_
                (lambda ()
                  (if (gx#stx-pair? _%e125244125254%_)
                      (let ((_%e125247125262%_
                             (gx#syntax-e _%e125244125254%_)))
                        (let ((_%hd125248125265%_ (##car _%e125247125262%_))
                              (_%tl125249125267%_ (##cdr _%e125247125262%_)))
                          (if (gx#stx-pair? _%tl125249125267%_)
                              (let ((_%e125250125270%_
                                     (gx#syntax-e _%tl125249125267%_)))
                                (let ((_%hd125251125273%_
                                       (##car _%e125250125270%_))
                                      (_%tl125252125275%_
                                       (##cdr _%e125250125270%_)))
                                  (let* ((_%hd125278%_ _%hd125251125273%_)
                                         (_%body125280%_ _%tl125252125275%_))
                                    (if (gx#core-expand-let-bind? _%hd125278%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd125278%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form125243%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd125278%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd125278%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx125242%_
                                                               _%body125280%_)
                                                              '())))
                                            (gx#stx-source _%stx125242%_)))
                                         gx#current-expander-context
                                         (let ((__obj126446
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126446)
                                           __obj126446))
                                        (_%E125246125258%_)))))
                              (_%E125246125258%_))))
                      (_%E125246125258%_)))))
          (_%E125245125283%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx125290%_)
        (let ((_%form125292%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx125290%_ _%form125292%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g126456_
        (let ((_g126455_ (##length _g126456_)))
          (cond ((##fx= _g126455_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g126456_))
                ((##fx= _g126455_ 2)
                 (apply gx#core-expand-letrec-values%__% _g126456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g126456_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx125239%_)
        (gx#core-expand-letrec-values%__% _%stx125239%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx125196%_)
        (if (gx#stx-list? _%stx125196%_)
            (gx#stx-andmap
             (lambda (_%bind125198%_)
               (let* ((_%e125199125209%_ _%bind125198%_)
                      (_%E125201125213%_ (lambda () '#f))
                      (_%E125200125235%_
                       (lambda ()
                         (if (gx#stx-pair? _%e125199125209%_)
                             (let ((_%e125202125217%_
                                    (gx#syntax-e _%e125199125209%_)))
                               (let ((_%hd125203125220%_
                                      (##car _%e125202125217%_))
                                     (_%tl125204125222%_
                                      (##cdr _%e125202125217%_)))
                                 (let ((_%hd125225%_ _%hd125203125220%_))
                                   (if (gx#stx-pair? _%tl125204125222%_)
                                       (let ((_%e125205125227%_
                                              (gx#syntax-e
                                               _%tl125204125222%_)))
                                         (let ((_%hd125206125230%_
                                                (##car _%e125205125227%_))
                                               (_%tl125207125232%_
                                                (##cdr _%e125205125227%_)))
                                           (if (gx#stx-null?
                                                _%tl125207125232%_)
                                               (gx#core-bind-values?
                                                _%hd125225%_)
                                               (_%E125201125213%_))))
                                       (_%E125201125213%_)))))
                             (_%E125201125213%_)))))
                 (_%E125200125235%_)))
             _%stx125196%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind125155%_)
        (let* ((_%e125156125166%_ _%bind125155%_)
               (_%E125158125170%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125156125166%_)))
               (_%E125157125192%_
                (lambda ()
                  (if (gx#stx-pair? _%e125156125166%_)
                      (let ((_%e125159125174%_
                             (gx#syntax-e _%e125156125166%_)))
                        (let ((_%hd125160125177%_ (##car _%e125159125174%_))
                              (_%tl125161125179%_ (##cdr _%e125159125174%_)))
                          (if (gx#stx-pair? _%tl125161125179%_)
                              (let ((_%e125162125182%_
                                     (gx#syntax-e _%tl125161125179%_)))
                                (let ((_%hd125163125185%_
                                       (##car _%e125162125182%_))
                                      (_%tl125164125187%_
                                       (##cdr _%e125162125182%_)))
                                  (let ((_%expr125190%_ _%hd125163125185%_))
                                    (if (gx#stx-null? _%tl125164125187%_)
                                        (gx#core-expand-expression
                                         _%expr125190%_)
                                        (_%E125158125170%_)))))
                              (_%E125158125170%_))))
                      (_%E125158125170%_)))))
          (_%E125157125192%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind125114%_)
        (let* ((_%e125115125125%_ _%bind125114%_)
               (_%E125117125129%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125115125125%_)))
               (_%E125116125151%_
                (lambda ()
                  (if (gx#stx-pair? _%e125115125125%_)
                      (let ((_%e125118125133%_
                             (gx#syntax-e _%e125115125125%_)))
                        (let ((_%hd125119125136%_ (##car _%e125118125133%_))
                              (_%tl125120125138%_ (##cdr _%e125118125133%_)))
                          (let ((_%hd125141%_ _%hd125119125136%_))
                            (if (gx#stx-pair? _%tl125120125138%_)
                                (let ((_%e125121125143%_
                                       (gx#syntax-e _%tl125120125138%_)))
                                  (let ((_%hd125122125146%_
                                         (##car _%e125121125143%_))
                                        (_%tl125123125148%_
                                         (##cdr _%e125121125143%_)))
                                    (if (gx#stx-null? _%tl125123125148%_)
                                        (gx#core-bind-values!__0 _%hd125141%_)
                                        (_%E125117125129%_))))
                                (_%E125117125129%_)))))
                      (_%E125117125129%_)))))
          (_%E125116125151%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind125072%_ _%expr125073%_)
        (let* ((_%e125074125084%_ _%bind125072%_)
               (_%E125076125088%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125074125084%_)))
               (_%E125075125110%_
                (lambda ()
                  (if (gx#stx-pair? _%e125074125084%_)
                      (let ((_%e125077125092%_
                             (gx#syntax-e _%e125074125084%_)))
                        (let ((_%hd125078125095%_ (##car _%e125077125092%_))
                              (_%tl125079125097%_ (##cdr _%e125077125092%_)))
                          (let ((_%hd125100%_ _%hd125078125095%_))
                            (if (gx#stx-pair? _%tl125079125097%_)
                                (let ((_%e125080125102%_
                                       (gx#syntax-e _%tl125079125097%_)))
                                  (let ((_%hd125081125105%_
                                         (##car _%e125080125102%_))
                                        (_%tl125082125107%_
                                         (##cdr _%e125080125102%_)))
                                    (if (gx#stx-null? _%tl125082125107%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd125100%_)
                                              (cons _%expr125073%_ '()))
                                        (_%E125076125088%_))))
                                (_%E125076125088%_)))))
                      (_%E125076125088%_)))))
          (_%E125075125110%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx125026%_)
        (let* ((_%e125027125037%_ _%stx125026%_)
               (_%E125029125041%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125027125037%_)))
               (_%E125028125068%_
                (lambda ()
                  (if (gx#stx-pair? _%e125027125037%_)
                      (let ((_%e125030125045%_
                             (gx#syntax-e _%e125027125037%_)))
                        (let ((_%hd125031125048%_ (##car _%e125030125045%_))
                              (_%tl125032125050%_ (##cdr _%e125030125045%_)))
                          (if (gx#stx-pair? _%tl125032125050%_)
                              (let ((_%e125033125053%_
                                     (gx#syntax-e _%tl125032125050%_)))
                                (let ((_%hd125034125056%_
                                       (##car _%e125033125053%_))
                                      (_%tl125035125058%_
                                       (##cdr _%e125033125053%_)))
                                  (let* ((_%hd125061%_ _%hd125034125056%_)
                                         (_%body125063%_ _%tl125035125058%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd125061%_)
                                        (let ((_%expanders125065%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd125061%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd125061%_
                                              _%expanders125065%_)
                                             (gx#core-expand-local-block
                                              _%stx125026%_
                                              _%body125063%_))
                                           gx#current-expander-context
                                           (let ((__obj126447
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj126447)
                                             __obj126447)))
                                        (_%E125029125041%_)))))
                              (_%E125029125041%_))))
                      (_%E125029125041%_)))))
          (_%E125028125068%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx124975%_)
        (let* ((_%e124976124986%_ _%stx124975%_)
               (_%E124978124990%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124976124986%_)))
               (_%E124977125022%_
                (lambda ()
                  (if (gx#stx-pair? _%e124976124986%_)
                      (let ((_%e124979124994%_
                             (gx#syntax-e _%e124976124986%_)))
                        (let ((_%hd124980124997%_ (##car _%e124979124994%_))
                              (_%tl124981124999%_ (##cdr _%e124979124994%_)))
                          (if (gx#stx-pair? _%tl124981124999%_)
                              (let ((_%e124982125002%_
                                     (gx#syntax-e _%tl124981124999%_)))
                                (let ((_%hd124983125005%_
                                       (##car _%e124982125002%_))
                                      (_%tl124984125007%_
                                       (##cdr _%e124982125002%_)))
                                  (let* ((_%hd125010%_ _%hd124983125005%_)
                                         (_%body125012%_ _%tl124984125007%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd125010%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd125010%_
                                            (make-list
                                             (gx#stx-length _%hd125010%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g125014125017%_
                                                     _%g125015125019%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g125014125017%_
                                               _%g125015125019%_
                                               '#t))
                                            _%hd125010%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd125010%_))
                                           (gx#core-expand-local-block
                                            _%stx124975%_
                                            _%body125012%_))
                                         gx#current-expander-context
                                         (let ((__obj126448
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126448)
                                           __obj126448))
                                        (_%E124978124990%_)))))
                              (_%E124978124990%_))))
                      (_%E124978124990%_)))))
          (_%E124977125022%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx124932%_)
        (if (gx#stx-list? _%stx124932%_)
            (gx#stx-andmap
             (lambda (_%bind124934%_)
               (let* ((_%e124935124945%_ _%bind124934%_)
                      (_%E124937124949%_ (lambda () '#f))
                      (_%E124936124971%_
                       (lambda ()
                         (if (gx#stx-pair? _%e124935124945%_)
                             (let ((_%e124938124953%_
                                    (gx#syntax-e _%e124935124945%_)))
                               (let ((_%hd124939124956%_
                                      (##car _%e124938124953%_))
                                     (_%tl124940124958%_
                                      (##cdr _%e124938124953%_)))
                                 (let ((_%hd124961%_ _%hd124939124956%_))
                                   (if (gx#stx-pair? _%tl124940124958%_)
                                       (let ((_%e124941124963%_
                                              (gx#syntax-e
                                               _%tl124940124958%_)))
                                         (let ((_%hd124942124966%_
                                                (##car _%e124941124963%_))
                                               (_%tl124943124968%_
                                                (##cdr _%e124941124963%_)))
                                           (if (gx#stx-null?
                                                _%tl124943124968%_)
                                               (gx#identifier? _%hd124961%_)
                                               (_%E124937124949%_))))
                                       (_%E124937124949%_)))))
                             (_%E124937124949%_)))))
                 (_%E124936124971%_)))
             _%stx124932%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind124888%_)
        (let* ((_%e124889124899%_ _%bind124888%_)
               (_%E124891124903%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124889124899%_)))
               (_%E124890124928%_
                (lambda ()
                  (if (gx#stx-pair? _%e124889124899%_)
                      (let ((_%e124892124907%_
                             (gx#syntax-e _%e124889124899%_)))
                        (let ((_%hd124893124910%_ (##car _%e124892124907%_))
                              (_%tl124894124912%_ (##cdr _%e124892124907%_)))
                          (if (gx#stx-pair? _%tl124894124912%_)
                              (let ((_%e124895124915%_
                                     (gx#syntax-e _%tl124894124912%_)))
                                (let ((_%hd124896124918%_
                                       (##car _%e124895124915%_))
                                      (_%tl124897124920%_
                                       (##cdr _%e124895124915%_)))
                                  (let ((_%expr124923%_ _%hd124896124918%_))
                                    (if (gx#stx-null? _%tl124897124920%_)
                                        (let ((_g126457_
                                               (gx#core-expand-expression+1
                                                _%expr124923%_)))
                                          (begin
                                            (let ((_g126458_
                                                   (if (##values? _g126457_)
                                                       (##values-length
                                                        _g126457_)
                                                       1)))
                                              (if (not (##fx= _g126458_ 2))
                                                  (error "Context expects 2 values"
                                                         _g126458_)))
                                            (let ((_%_124925%_
                                                   (##values-ref _g126457_ 0))
                                                  (_%e124926%_
                                                   (##values-ref _g126457_ 1)))
                                              _%e124926%_)))
                                        (_%E124891124903%_)))))
                              (_%E124891124903%_))))
                      (_%E124891124903%_)))))
          (_%E124890124928%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind124833%_ _%e124834%_ _%rebind?124835%_)
        (let* ((_%e124836124846%_ _%bind124833%_)
               (_%E124838124850%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124836124846%_)))
               (_%E124837124872%_
                (lambda ()
                  (if (gx#stx-pair? _%e124836124846%_)
                      (let ((_%e124839124854%_
                             (gx#syntax-e _%e124836124846%_)))
                        (let ((_%hd124840124857%_ (##car _%e124839124854%_))
                              (_%tl124841124859%_ (##cdr _%e124839124854%_)))
                          (let ((_%id124862%_ _%hd124840124857%_))
                            (if (gx#stx-pair? _%tl124841124859%_)
                                (let ((_%e124842124864%_
                                       (gx#syntax-e _%tl124841124859%_)))
                                  (let ((_%hd124843124867%_
                                         (##car _%e124842124864%_))
                                        (_%tl124844124869%_
                                         (##cdr _%e124842124864%_)))
                                    (if (gx#stx-null? _%tl124844124869%_)
                                        (gx#core-bind-syntax!__1
                                         _%id124862%_
                                         _%e124834%_
                                         _%rebind?124835%_)
                                        (_%E124838124850%_))))
                                (_%E124838124850%_)))))
                      (_%E124838124850%_)))))
          (_%E124837124872%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind124879%_ _%e124880%_)
        (let ((_%rebind?124882%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind124879%_
           _%e124880%_
           _%rebind?124882%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g126460_
        (let ((_g126459_ (##length _g126460_)))
          (cond ((##fx= _g126459_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g126460_))
                ((##fx= _g126459_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g126460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g126460_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx124791%_)
        (let* ((_%e124792124802%_ _%stx124791%_)
               (_%E124794124806%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124792124802%_)))
               (_%E124793124828%_
                (lambda ()
                  (if (gx#stx-pair? _%e124792124802%_)
                      (let ((_%e124795124810%_
                             (gx#syntax-e _%e124792124802%_)))
                        (let ((_%hd124796124813%_ (##car _%e124795124810%_))
                              (_%tl124797124815%_ (##cdr _%e124795124810%_)))
                          (if (gx#stx-pair? _%tl124797124815%_)
                              (let ((_%e124798124818%_
                                     (gx#syntax-e _%tl124797124815%_)))
                                (let ((_%hd124799124821%_
                                       (##car _%e124798124818%_))
                                      (_%tl124800124823%_
                                       (##cdr _%e124798124818%_)))
                                  (let ((_%expr124826%_ _%hd124799124821%_))
                                    (if (gx#stx-null? _%tl124800124823%_)
                                        (gx#core-expand-expression
                                         _%expr124826%_)
                                        (_%E124794124806%_)))))
                              (_%E124794124806%_))))
                      (_%E124794124806%_)))))
          (_%E124793124828%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx124750%_)
        (let* ((_%e124751124761%_ _%stx124750%_)
               (_%E124753124765%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124751124761%_)))
               (_%E124752124787%_
                (lambda ()
                  (if (gx#stx-pair? _%e124751124761%_)
                      (let ((_%e124754124769%_
                             (gx#syntax-e _%e124751124761%_)))
                        (let ((_%hd124755124772%_ (##car _%e124754124769%_))
                              (_%tl124756124774%_ (##cdr _%e124754124769%_)))
                          (if (gx#stx-pair? _%tl124756124774%_)
                              (let ((_%e124757124777%_
                                     (gx#syntax-e _%tl124756124774%_)))
                                (let ((_%hd124758124780%_
                                       (##car _%e124757124777%_))
                                      (_%tl124759124782%_
                                       (##cdr _%e124757124777%_)))
                                  (let ((_%e124785%_ _%hd124758124780%_))
                                    (if (gx#stx-null? _%tl124759124782%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e124785%_)
                                                     '()))
                                         (gx#stx-source _%stx124750%_))
                                        (_%E124753124765%_)))))
                              (_%E124753124765%_))))
                      (_%E124753124765%_)))))
          (_%E124752124787%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx124709%_)
        (let* ((_%e124710124720%_ _%stx124709%_)
               (_%E124712124724%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124710124720%_)))
               (_%E124711124746%_
                (lambda ()
                  (if (gx#stx-pair? _%e124710124720%_)
                      (let ((_%e124713124728%_
                             (gx#syntax-e _%e124710124720%_)))
                        (let ((_%hd124714124731%_ (##car _%e124713124728%_))
                              (_%tl124715124733%_ (##cdr _%e124713124728%_)))
                          (if (gx#stx-pair? _%tl124715124733%_)
                              (let ((_%e124716124736%_
                                     (gx#syntax-e _%tl124715124733%_)))
                                (let ((_%hd124717124739%_
                                       (##car _%e124716124736%_))
                                      (_%tl124718124741%_
                                       (##cdr _%e124716124736%_)))
                                  (let ((_%e124744%_ _%hd124717124739%_))
                                    (if (gx#stx-null? _%tl124718124741%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e124744%_)
                                                     '()))
                                         (gx#stx-source _%stx124709%_))
                                        (_%E124712124724%_)))))
                              (_%E124712124724%_))))
                      (_%E124712124724%_)))))
          (_%E124711124746%_))))
    (define gx#core-expand-call%
      (lambda (_%stx124666%_)
        (let* ((_%e124667124677%_ _%stx124666%_)
               (_%E124669124681%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124667124677%_)))
               (_%E124668124705%_
                (lambda ()
                  (if (gx#stx-pair? _%e124667124677%_)
                      (let ((_%e124670124685%_
                             (gx#syntax-e _%e124667124677%_)))
                        (let ((_%hd124671124688%_ (##car _%e124670124685%_))
                              (_%tl124672124690%_ (##cdr _%e124670124685%_)))
                          (if (gx#stx-pair? _%tl124672124690%_)
                              (let ((_%e124673124693%_
                                     (gx#syntax-e _%tl124672124690%_)))
                                (let ((_%hd124674124696%_
                                       (##car _%e124673124693%_))
                                      (_%tl124675124698%_
                                       (##cdr _%e124673124693%_)))
                                  (let* ((_%rator124701%_ _%hd124674124696%_)
                                         (_%args124703%_ _%tl124675124698%_))
                                    (if (gx#stx-list? _%args124703%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator124701%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args124703%_))
                                         (gx#stx-source _%stx124666%_))
                                        (_%E124669124681%_)))))
                              (_%E124669124681%_))))
                      (_%E124669124681%_)))))
          (_%E124668124705%_))))
    (define gx#core-expand-if%
      (lambda (_%stx124599%_)
        (let* ((_%e124600124616%_ _%stx124599%_)
               (_%E124602124620%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124600124616%_)))
               (_%E124601124662%_
                (lambda ()
                  (if (gx#stx-pair? _%e124600124616%_)
                      (let ((_%e124603124624%_
                             (gx#syntax-e _%e124600124616%_)))
                        (let ((_%hd124604124627%_ (##car _%e124603124624%_))
                              (_%tl124605124629%_ (##cdr _%e124603124624%_)))
                          (if (gx#stx-pair? _%tl124605124629%_)
                              (let ((_%e124606124632%_
                                     (gx#syntax-e _%tl124605124629%_)))
                                (let ((_%hd124607124635%_
                                       (##car _%e124606124632%_))
                                      (_%tl124608124637%_
                                       (##cdr _%e124606124632%_)))
                                  (let ((_%test124640%_ _%hd124607124635%_))
                                    (if (gx#stx-pair? _%tl124608124637%_)
                                        (let ((_%e124609124642%_
                                               (gx#syntax-e
                                                _%tl124608124637%_)))
                                          (let ((_%hd124610124645%_
                                                 (##car _%e124609124642%_))
                                                (_%tl124611124647%_
                                                 (##cdr _%e124609124642%_)))
                                            (let ((_%K124650%_
                                                   _%hd124610124645%_))
                                              (if (gx#stx-pair?
                                                   _%tl124611124647%_)
                                                  (let ((_%e124612124652%_
                                                         (gx#syntax-e
                                                          _%tl124611124647%_)))
                                                    (let ((_%hd124613124655%_
                                                           (##car _%e124612124652%_))
                                                          (_%tl124614124657%_
                                                           (##cdr _%e124612124652%_)))
                                                      (let ((_%E124660%_
                                                             _%hd124613124655%_))
                                                        (if (gx#stx-null?
                                                             _%tl124614124657%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test124640%_)
                                 (cons (gx#core-expand-expression _%K124650%_)
                                       (cons (gx#core-expand-expression
                                              _%E124660%_)
                                             '()))))
                     (gx#stx-source _%stx124599%_))
                    (_%E124602124620%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124602124620%_)))))
                                        (_%E124602124620%_)))))
                              (_%E124602124620%_))))
                      (_%E124602124620%_)))))
          (_%E124601124662%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx124558%_)
        (let* ((_%e124559124569%_ _%stx124558%_)
               (_%E124561124573%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124559124569%_)))
               (_%E124560124595%_
                (lambda ()
                  (if (gx#stx-pair? _%e124559124569%_)
                      (let ((_%e124562124577%_
                             (gx#syntax-e _%e124559124569%_)))
                        (let ((_%hd124563124580%_ (##car _%e124562124577%_))
                              (_%tl124564124582%_ (##cdr _%e124562124577%_)))
                          (if (gx#stx-pair? _%tl124564124582%_)
                              (let ((_%e124565124585%_
                                     (gx#syntax-e _%tl124564124582%_)))
                                (let ((_%hd124566124588%_
                                       (##car _%e124565124585%_))
                                      (_%tl124567124590%_
                                       (##cdr _%e124565124585%_)))
                                  (let ((_%id124593%_ _%hd124566124588%_))
                                    (if (gx#stx-null? _%tl124567124590%_)
                                        (if (gx#identifier? _%id124593%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id124593%_
                                                          _%stx124558%_)
                                                         '()))
                                             (gx#stx-source _%stx124558%_))
                                            (_%E124561124573%_))
                                        (_%E124561124573%_)))))
                              (_%E124561124573%_))))
                      (_%E124561124573%_)))))
          (_%E124560124595%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx124504%_)
        (let* ((_%e124505124518%_ _%stx124504%_)
               (_%E124507124522%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124505124518%_)))
               (_%E124506124554%_
                (lambda ()
                  (if (gx#stx-pair? _%e124505124518%_)
                      (let ((_%e124508124526%_
                             (gx#syntax-e _%e124505124518%_)))
                        (let ((_%hd124509124529%_ (##car _%e124508124526%_))
                              (_%tl124510124531%_ (##cdr _%e124508124526%_)))
                          (if (gx#stx-pair? _%tl124510124531%_)
                              (let ((_%e124511124534%_
                                     (gx#syntax-e _%tl124510124531%_)))
                                (let ((_%hd124512124537%_
                                       (##car _%e124511124534%_))
                                      (_%tl124513124539%_
                                       (##cdr _%e124511124534%_)))
                                  (let ((_%id124542%_ _%hd124512124537%_))
                                    (if (gx#stx-pair? _%tl124513124539%_)
                                        (let ((_%e124514124544%_
                                               (gx#syntax-e
                                                _%tl124513124539%_)))
                                          (let ((_%hd124515124547%_
                                                 (##car _%e124514124544%_))
                                                (_%tl124516124549%_
                                                 (##cdr _%e124514124544%_)))
                                            (let ((_%expr124552%_
                                                   _%hd124515124547%_))
                                              (if (gx#stx-null?
                                                   _%tl124516124549%_)
                                                  (if (gx#identifier?
                                                       _%id124542%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id124542%_
                            _%stx124504%_)
                           (cons (gx#core-expand-expression _%expr124552%_)
                                 '())))
               (gx#stx-source _%stx124504%_))
              (_%E124507124522%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124507124522%_)))))
                                        (_%E124507124522%_)))))
                              (_%E124507124522%_))))
                      (_%E124507124522%_)))))
          (_%E124506124554%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx124349%_)
        (letrec ((_%generate124351%_
                  (lambda (_%body124381%_)
                    (let _%lp124383%_ ((_%rest124385%_ _%body124381%_)
                                       (_%ns124386%_
                                        (gx#core-context-namespace__0))
                                       (_%r124387%_ '()))
                      (let* ((_%e124388124403%_ _%rest124385%_)
                             (_%E124401124407%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e124388124403%_)))
                             (_%E124397124411%_
                              (lambda ()
                                (if (gx#stx-null? _%e124388124403%_)
                                    (reverse _%r124387%_)
                                    (_%E124401124407%_))))
                             (_%E124390124468%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124388124403%_)
                                    (let ((_%e124398124415%_
                                           (gx#syntax-e _%e124388124403%_)))
                                      (let ((_%hd124399124418%_
                                             (##car _%e124398124415%_))
                                            (_%tl124400124420%_
                                             (##cdr _%e124398124415%_)))
                                        (let* ((_%hd124423%_
                                                _%hd124399124418%_)
                                               (_%rest124425%_
                                                _%tl124400124420%_))
                                          (if (gx#identifier? _%hd124423%_)
                                              (_%lp124383%_
                                               _%rest124425%_
                                               _%ns124386%_
                                               (cons (cons _%hd124423%_
                                                           (cons (if _%ns124386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd124423%_
                              _%ns124386%_
                              '"#"
                              _%hd124423%_)
                             _%hd124423%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r124387%_))
                                              (let* ((_%e124426124436%_
                                                      _%hd124423%_)
                                                     (_%E124428124440%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e124426124436%_)))
                                                     (_%E124427124464%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e124426124436%_)
                                                            (let ((_%e124429124444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e124426124436%_)))
                      (let ((_%hd124430124447%_ (##car _%e124429124444%_))
                            (_%tl124431124449%_ (##cdr _%e124429124444%_)))
                        (let ((_%id124452%_ _%hd124430124447%_))
                          (if (gx#stx-pair? _%tl124431124449%_)
                              (let ((_%e124432124454%_
                                     (gx#syntax-e _%tl124431124449%_)))
                                (let ((_%hd124433124457%_
                                       (##car _%e124432124454%_))
                                      (_%tl124434124459%_
                                       (##cdr _%e124432124454%_)))
                                  (let ((_%eid124462%_ _%hd124433124457%_))
                                    (if (gx#stx-null? _%tl124434124459%_)
                                        (if (and (gx#identifier? _%id124452%_)
                                                 (gx#identifier?
                                                  _%eid124462%_))
                                            (_%lp124383%_
                                             _%rest124425%_
                                             _%ns124386%_
                                             (cons (cons _%id124452%_
                                                         (cons _%eid124462%_
                                                               '()))
                                                   _%r124387%_))
                                            (_%E124428124440%_))
                                        (_%E124428124440%_)))))
                              (_%E124428124440%_)))))
                    (_%E124428124440%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124427124464%_))))))
                                    (_%E124397124411%_))))
                             (_%E124389124500%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124388124403%_)
                                    (let ((_%e124391124472%_
                                           (gx#syntax-e _%e124388124403%_)))
                                      (let ((_%hd124392124475%_
                                             (##car _%e124391124472%_))
                                            (_%tl124393124477%_
                                             (##cdr _%e124391124472%_)))
                                        (if (eq? (gx#stx-e _%hd124392124475%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl124393124477%_)
                                                (let ((_%e124394124480%_
                                                       (gx#syntax-e
                                                        _%tl124393124477%_)))
                                                  (let ((_%hd124395124483%_
                                                         (##car _%e124394124480%_))
                                                        (_%tl124396124485%_
                                                         (##cdr _%e124394124480%_)))
                                                    (let* ((_%ns124488%_
                                                            _%hd124395124483%_)
                                                           (_%rest124490%_
                                                            _%tl124396124485%_)
                                                           (_%ns124498%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns124488%_)
                        (symbol->string (gx#stx-e _%ns124488%_))
                        (if (or (gx#stx-string? _%ns124488%_)
                                (gx#stx-false? _%ns124488%_))
                            (gx#stx-e _%ns124488%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx124349%_
                             _%ns124488%_)))))
              (_%lp124383%_ _%rest124490%_ _%ns124498%_ _%r124387%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124390124468%_))
                                            (_%E124390124468%_))))
                                    (_%E124390124468%_)))))
                        (_%E124389124500%_))))))
          (let* ((_%e124352124359%_ _%stx124349%_)
                 (_%E124354124363%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124352124359%_)))
                 (_%E124353124377%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124352124359%_)
                        (let ((_%e124355124367%_
                               (gx#syntax-e _%e124352124359%_)))
                          (let ((_%hd124356124370%_ (##car _%e124355124367%_))
                                (_%tl124357124372%_ (##cdr _%e124355124367%_)))
                            (let ((_%body124375%_ _%tl124357124372%_))
                              (if (gx#stx-list? _%body124375%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate124351%_ _%body124375%_))
                                  (_%E124354124363%_)))))
                        (_%E124354124363%_)))))
            (_%E124353124377%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx124295%_)
        (let* ((_%e124296124309%_ _%stx124295%_)
               (_%E124298124313%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124296124309%_)))
               (_%E124297124345%_
                (lambda ()
                  (if (gx#stx-pair? _%e124296124309%_)
                      (let ((_%e124299124317%_
                             (gx#syntax-e _%e124296124309%_)))
                        (let ((_%hd124300124320%_ (##car _%e124299124317%_))
                              (_%tl124301124322%_ (##cdr _%e124299124317%_)))
                          (if (gx#stx-pair? _%tl124301124322%_)
                              (let ((_%e124302124325%_
                                     (gx#syntax-e _%tl124301124322%_)))
                                (let ((_%hd124303124328%_
                                       (##car _%e124302124325%_))
                                      (_%tl124304124330%_
                                       (##cdr _%e124302124325%_)))
                                  (let ((_%hd124333%_ _%hd124303124328%_))
                                    (if (gx#stx-pair? _%tl124304124330%_)
                                        (let ((_%e124305124335%_
                                               (gx#syntax-e
                                                _%tl124304124330%_)))
                                          (let ((_%hd124306124338%_
                                                 (##car _%e124305124335%_))
                                                (_%tl124307124340%_
                                                 (##cdr _%e124305124335%_)))
                                            (let ((_%expr124343%_
                                                   _%hd124306124338%_))
                                              (if (gx#stx-null?
                                                   _%tl124307124340%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd124333%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd124333%_)
                          (cons _%expr124343%_ '())))
              (_%E124298124313%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124298124313%_)))))
                                        (_%E124298124313%_)))))
                              (_%E124298124313%_))))
                      (_%E124298124313%_)))))
          (_%E124297124345%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx124241%_)
        (let* ((_%e124242124255%_ _%stx124241%_)
               (_%E124244124259%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124242124255%_)))
               (_%E124243124291%_
                (lambda ()
                  (if (gx#stx-pair? _%e124242124255%_)
                      (let ((_%e124245124263%_
                             (gx#syntax-e _%e124242124255%_)))
                        (let ((_%hd124246124266%_ (##car _%e124245124263%_))
                              (_%tl124247124268%_ (##cdr _%e124245124263%_)))
                          (if (gx#stx-pair? _%tl124247124268%_)
                              (let ((_%e124248124271%_
                                     (gx#syntax-e _%tl124247124268%_)))
                                (let ((_%hd124249124274%_
                                       (##car _%e124248124271%_))
                                      (_%tl124250124276%_
                                       (##cdr _%e124248124271%_)))
                                  (let ((_%hd124279%_ _%hd124249124274%_))
                                    (if (gx#stx-pair? _%tl124250124276%_)
                                        (let ((_%e124251124281%_
                                               (gx#syntax-e
                                                _%tl124250124276%_)))
                                          (let ((_%hd124252124284%_
                                                 (##car _%e124251124281%_))
                                                (_%tl124253124286%_
                                                 (##cdr _%e124251124281%_)))
                                            (let ((_%expr124289%_
                                                   _%hd124252124284%_))
                                              (if (gx#stx-null?
                                                   _%tl124253124286%_)
                                                  (if (gx#identifier?
                                                       _%hd124279%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd124279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr124289%_ '())))
              (_%E124244124259%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124244124259%_)))))
                                        (_%E124244124259%_)))))
                              (_%E124244124259%_))))
                      (_%E124244124259%_)))))
          (_%E124243124291%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx124187%_)
        (let* ((_%e124188124201%_ _%stx124187%_)
               (_%E124190124205%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124188124201%_)))
               (_%E124189124237%_
                (lambda ()
                  (if (gx#stx-pair? _%e124188124201%_)
                      (let ((_%e124191124209%_
                             (gx#syntax-e _%e124188124201%_)))
                        (let ((_%hd124192124212%_ (##car _%e124191124209%_))
                              (_%tl124193124214%_ (##cdr _%e124191124209%_)))
                          (if (gx#stx-pair? _%tl124193124214%_)
                              (let ((_%e124194124217%_
                                     (gx#syntax-e _%tl124193124214%_)))
                                (let ((_%hd124195124220%_
                                       (##car _%e124194124217%_))
                                      (_%tl124196124222%_
                                       (##cdr _%e124194124217%_)))
                                  (let ((_%id124225%_ _%hd124195124220%_))
                                    (if (gx#stx-pair? _%tl124196124222%_)
                                        (let ((_%e124197124227%_
                                               (gx#syntax-e
                                                _%tl124196124222%_)))
                                          (let ((_%hd124198124230%_
                                                 (##car _%e124197124227%_))
                                                (_%tl124199124232%_
                                                 (##cdr _%e124197124227%_)))
                                            (let ((_%alias-id124235%_
                                                   _%hd124198124230%_))
                                              (if (gx#stx-null?
                                                   _%tl124199124232%_)
                                                  (if (and (gx#identifier?
                                                            _%id124225%_)
                                                           (gx#identifier?
                                                            _%alias-id124235%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id124225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id124235%_ '())))
              (_%E124190124205%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124190124205%_)))))
                                        (_%E124190124205%_)))))
                              (_%E124190124205%_))))
                      (_%E124190124205%_)))))
          (_%E124189124237%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx124144%_)
        (let* ((_%e124145124155%_ _%stx124144%_)
               (_%E124147124159%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124145124155%_)))
               (_%E124146124183%_
                (lambda ()
                  (if (gx#stx-pair? _%e124145124155%_)
                      (let ((_%e124148124163%_
                             (gx#syntax-e _%e124145124155%_)))
                        (let ((_%hd124149124166%_ (##car _%e124148124163%_))
                              (_%tl124150124168%_ (##cdr _%e124148124163%_)))
                          (if (gx#stx-pair? _%tl124150124168%_)
                              (let ((_%e124151124171%_
                                     (gx#syntax-e _%tl124150124168%_)))
                                (let ((_%hd124152124174%_
                                       (##car _%e124151124171%_))
                                      (_%tl124153124176%_
                                       (##cdr _%e124151124171%_)))
                                  (let* ((_%hd124179%_ _%hd124152124174%_)
                                         (_%body124181%_ _%tl124153124176%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd124179%_)
                                             (gx#stx-list? _%body124181%_)
                                             (not (gx#stx-null?
                                                   _%body124181%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd124179%_)
                                         _%body124181%_)
                                        (_%E124147124159%_)))))
                              (_%E124147124159%_))))
                      (_%E124147124159%_)))))
          (_%E124146124183%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx124080%_)
        (letrec ((_%generate124082%_
                  (lambda (_%clause124112%_)
                    (let* ((_%e124113124120%_ _%clause124112%_)
                           (_%E124115124124%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx124080%_
                               _%clause124112%_)))
                           (_%E124114124140%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124113124120%_)
                                  (let ((_%e124116124128%_
                                         (gx#syntax-e _%e124113124120%_)))
                                    (let ((_%hd124117124131%_
                                           (##car _%e124116124128%_))
                                          (_%tl124118124133%_
                                           (##cdr _%e124116124128%_)))
                                      (let* ((_%hd124136%_ _%hd124117124131%_)
                                             (_%body124138%_
                                              _%tl124118124133%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd124136%_)
                                                 (gx#stx-list? _%body124138%_)
                                                 (not (gx#stx-null?
                                                       _%body124138%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd124136%_)
                                                   _%body124138%_)
                                             (gx#stx-source _%clause124112%_))
                                            (_%E124115124124%_)))))
                                  (_%E124115124124%_)))))
                      (_%E124114124140%_)))))
          (let* ((_%e124083124090%_ _%stx124080%_)
                 (_%E124085124094%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124083124090%_)))
                 (_%E124084124108%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124083124090%_)
                        (let ((_%e124086124098%_
                               (gx#syntax-e _%e124083124090%_)))
                          (let ((_%hd124087124101%_ (##car _%e124086124098%_))
                                (_%tl124088124103%_ (##cdr _%e124086124098%_)))
                            (let ((_%clauses124106%_ _%tl124088124103%_))
                              (if (gx#stx-list? _%clauses124106%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate124082%_
                                    _%clauses124106%_))
                                  (_%E124085124094%_)))))
                        (_%E124085124094%_)))))
            (_%E124084124108%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx123981%_ _%form123982%_)
        (letrec ((_%generate123984%_
                  (lambda (_%bind124027%_)
                    (let* ((_%e124028124038%_ _%bind124027%_)
                           (_%E124030124042%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx123981%_
                               _%bind124027%_)))
                           (_%E124029124066%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124028124038%_)
                                  (let ((_%e124031124046%_
                                         (gx#syntax-e _%e124028124038%_)))
                                    (let ((_%hd124032124049%_
                                           (##car _%e124031124046%_))
                                          (_%tl124033124051%_
                                           (##cdr _%e124031124046%_)))
                                      (let ((_%ids124054%_ _%hd124032124049%_))
                                        (if (gx#stx-pair? _%tl124033124051%_)
                                            (let ((_%e124034124056%_
                                                   (gx#syntax-e
                                                    _%tl124033124051%_)))
                                              (let ((_%hd124035124059%_
                                                     (##car _%e124034124056%_))
                                                    (_%tl124036124061%_
                                                     (##cdr _%e124034124056%_)))
                                                (let ((_%expr124064%_
                                                       _%hd124035124059%_))
                                                  (if (gx#stx-null?
                                                       _%tl124036124061%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids124054%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids124054%_)
                        (cons _%expr124064%_ '()))
                  (_%E124030124042%_))
              (_%E124030124042%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E124030124042%_)))))
                                  (_%E124030124042%_)))))
                      (_%E124029124066%_)))))
          (let* ((_%e123985123995%_ _%stx123981%_)
                 (_%E123987123999%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123985123995%_)))
                 (_%E123986124023%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123985123995%_)
                        (let ((_%e123988124003%_
                               (gx#syntax-e _%e123985123995%_)))
                          (let ((_%hd123989124006%_ (##car _%e123988124003%_))
                                (_%tl123990124008%_ (##cdr _%e123988124003%_)))
                            (if (gx#stx-pair? _%tl123990124008%_)
                                (let ((_%e123991124011%_
                                       (gx#syntax-e _%tl123990124008%_)))
                                  (let ((_%hd123992124014%_
                                         (##car _%e123991124011%_))
                                        (_%tl123993124016%_
                                         (##cdr _%e123991124011%_)))
                                    (let* ((_%hd124019%_ _%hd123992124014%_)
                                           (_%body124021%_ _%tl123993124016%_))
                                      (if (and (gx#stx-list? _%hd124019%_)
                                               (gx#stx-list? _%body124021%_)
                                               (not (gx#stx-null?
                                                     _%body124021%_)))
                                          (gx#core-cons*
                                           _%form123982%_
                                           (gx#stx-map1
                                            _%generate123984%_
                                            _%hd124019%_)
                                           _%body124021%_)
                                          (_%E123987123999%_)))))
                                (_%E123987123999%_))))
                        (_%E123987123999%_)))))
            (_%E123986124023%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx124073%_)
        (let ((_%form124075%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx124073%_ _%form124075%_))))
    (define gx#macro-expand-let-values
      (lambda _g126462_
        (let ((_g126461_ (##length _g126462_)))
          (cond ((##fx= _g126461_ 1)
                 (apply gx#macro-expand-let-values__0 _g126462_))
                ((##fx= _g126461_ 2)
                 (apply gx#macro-expand-let-values__% _g126462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g126462_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx123978%_)
        (gx#macro-expand-let-values__% _%stx123978%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx123976%_)
        (gx#macro-expand-let-values__% _%stx123976%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx123867%_)
        (let* ((_%e123868123894%_ _%stx123867%_)
               (_%E123880123898%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123868123894%_)))
               (_%E123870123940%_
                (lambda ()
                  (if (gx#stx-pair? _%e123868123894%_)
                      (let ((_%e123881123902%_
                             (gx#syntax-e _%e123868123894%_)))
                        (let ((_%hd123882123905%_ (##car _%e123881123902%_))
                              (_%tl123883123907%_ (##cdr _%e123881123902%_)))
                          (if (gx#stx-pair? _%tl123883123907%_)
                              (let ((_%e123884123910%_
                                     (gx#syntax-e _%tl123883123907%_)))
                                (let ((_%hd123885123913%_
                                       (##car _%e123884123910%_))
                                      (_%tl123886123915%_
                                       (##cdr _%e123884123910%_)))
                                  (let ((_%test123918%_ _%hd123885123913%_))
                                    (if (gx#stx-pair? _%tl123886123915%_)
                                        (let ((_%e123887123920%_
                                               (gx#syntax-e
                                                _%tl123886123915%_)))
                                          (let ((_%hd123888123923%_
                                                 (##car _%e123887123920%_))
                                                (_%tl123889123925%_
                                                 (##cdr _%e123887123920%_)))
                                            (let ((_%K123928%_
                                                   _%hd123888123923%_))
                                              (if (gx#stx-pair?
                                                   _%tl123889123925%_)
                                                  (let ((_%e123890123930%_
                                                         (gx#syntax-e
                                                          _%tl123889123925%_)))
                                                    (let ((_%hd123891123933%_
                                                           (##car _%e123890123930%_))
                                                          (_%tl123892123935%_
                                                           (##cdr _%e123890123930%_)))
                                                      (let ((_%E123938%_
                                                             _%hd123891123933%_))
                                                        (if (gx#stx-null?
                                                             _%tl123892123935%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test123918%_
                                                             _%K123928%_
                                                             _%E123938%_)
                                                            (_%E123880123898%_)))))
                                                  (_%E123880123898%_)))))
                                        (_%E123880123898%_)))))
                              (_%E123880123898%_))))
                      (_%E123880123898%_))))
               (_%E123869123972%_
                (lambda ()
                  (if (gx#stx-pair? _%e123868123894%_)
                      (let ((_%e123871123944%_
                             (gx#syntax-e _%e123868123894%_)))
                        (let ((_%hd123872123947%_ (##car _%e123871123944%_))
                              (_%tl123873123949%_ (##cdr _%e123871123944%_)))
                          (if (gx#stx-pair? _%tl123873123949%_)
                              (let ((_%e123874123952%_
                                     (gx#syntax-e _%tl123873123949%_)))
                                (let ((_%hd123875123955%_
                                       (##car _%e123874123952%_))
                                      (_%tl123876123957%_
                                       (##cdr _%e123874123952%_)))
                                  (let ((_%test123960%_ _%hd123875123955%_))
                                    (if (gx#stx-pair? _%tl123876123957%_)
                                        (let ((_%e123877123962%_
                                               (gx#syntax-e
                                                _%tl123876123957%_)))
                                          (let ((_%hd123878123965%_
                                                 (##car _%e123877123962%_))
                                                (_%tl123879123967%_
                                                 (##cdr _%e123877123962%_)))
                                            (let ((_%K123970%_
                                                   _%hd123878123965%_))
                                              (if (gx#stx-null?
                                                   _%tl123879123967%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test123960%_
                                                   _%K123970%_
                                                   '#!void)
                                                  (_%E123870123940%_)))))
                                        (_%E123870123940%_)))))
                              (_%E123870123940%_))))
                      (_%E123870123940%_)))))
          (_%E123869123972%_))))
    (define gx#free-identifier=?
      (lambda (_%xid123852%_ _%yid123853%_)
        (let ((_%xe123855%_ (gx#resolve-identifier__0 _%xid123852%_))
              (_%ye123856%_ (gx#resolve-identifier__0 _%yid123853%_)))
          (if (and _%xe123855%_ _%ye123856%_)
              (let ((_%$e123859%_ (eq? _%xe123855%_ _%ye123856%_)))
                (if _%$e123859%_
                    _%$e123859%_
                    (if (##structure-instance-of? _%xe123855%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye123856%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe123855%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye123856%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe123855%_ _%ye123856%_)
                  '#f
                  (gx#stx-eq? _%xid123852%_ _%yid123853%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid123833%_ _%yid123834%_)
        (letrec ((_%context123836%_
                  (lambda (_%e123850%_)
                    (if (##structure-direct-instance-of?
                         _%e123850%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e123850%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks123837%_
                  (lambda (_%e123845%_)
                    (if (symbol? _%e123845%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e123845%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e123845%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e123845%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap123838%_
                  (lambda (_%e123843%_)
                    (if (symbol? _%e123843%_)
                        _%e123843%_
                        (gx#syntax-local-unwrap _%e123843%_)))))
          (let ((_%x123840%_ (_%unwrap123838%_ _%xid123833%_))
                (_%y123841%_ (_%unwrap123838%_ _%yid123834%_)))
            (if (gx#stx-eq? _%x123840%_ _%y123841%_)
                (if (eq? (_%context123836%_ _%x123840%_)
                         (_%context123836%_ _%y123841%_))
                    (equal? (_%marks123837%_ _%x123840%_)
                            (_%marks123837%_ _%y123841%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx123831%_)
        (if (gx#identifier? _%stx123831%_)
            (gx#core-identifier=? _%stx123831%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx123829%_)
        (if (gx#identifier? _%stx123829%_)
            (gx#core-identifier=? _%stx123829%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx123772%_ _%where123773%_)
        (let _%lp123775%_ ((_%rest123777%_ (gx#syntax->list _%stx123772%_)))
          (let* ((_%rest123778123786%_ _%rest123777%_)
                 (_%else123780123794%_ (lambda () '#t))
                 (_%K123782123807%_
                  (lambda (_%rest123797%_ _%hd123798%_)
                    (if (gx#identifier? _%hd123798%_)
                        (if (__find (lambda (_%g123800123802%_)
                                      (gx#bound-identifier=?
                                       _%g123800123802%_
                                       _%hd123798%_))
                                    _%rest123797%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where123773%_
                             _%hd123798%_)
                            (_%lp123775%_ _%rest123797%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where123773%_
                         _%hd123798%_)))))
            (if (pair? _%rest123778123786%_)
                (let ((_%hd123783123810%_ (##car _%rest123778123786%_))
                      (_%tl123784123812%_ (##cdr _%rest123778123786%_)))
                  (let* ((_%hd123815%_ _%hd123783123810%_)
                         (_%rest123817%_ _%tl123784123812%_))
                    (_%K123782123807%_ _%rest123817%_ _%hd123815%_)))
                (_%else123780123794%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx123822%_)
        (let ((_%where123824%_ _%stx123822%_))
          (gx#check-duplicate-identifiers__% _%stx123822%_ _%where123824%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g126464_
        (let ((_g126463_ (##length _g126464_)))
          (cond ((##fx= _g126463_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g126464_))
                ((##fx= _g126463_ 2)
                 (apply gx#check-duplicate-identifiers__% _g126464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g126464_))))))
    (define gx#core-bind-values?
      (lambda (_%stx123764%_)
        (gx#stx-andmap
         (lambda (_%x123766%_)
           (let ((_%$e123768%_ (gx#identifier? _%x123766%_)))
             (if _%$e123768%_ _%$e123768%_ (gx#stx-false? _%x123766%_))))
         _%stx123764%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx123728%_ _%rebind?123729%_ _%phi123730%_ _%ctx123731%_)
        (gx#stx-for-each1
         (lambda (_%id123733%_)
           (if (gx#identifier? _%id123733%_)
               (gx#core-bind-runtime!__%
                _%id123733%_
                _%rebind?123729%_
                _%phi123730%_
                _%ctx123731%_)
               '#!void))
         _%stx123728%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx123738%_)
        (let* ((_%rebind?123740%_ '#f)
               (_%phi123742%_ (gx#current-expander-phi))
               (_%ctx123744%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123738%_
           _%rebind?123740%_
           _%phi123742%_
           _%ctx123744%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx123746%_ _%rebind?123747%_)
        (let* ((_%phi123749%_ (gx#current-expander-phi))
               (_%ctx123751%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123746%_
           _%rebind?123747%_
           _%phi123749%_
           _%ctx123751%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx123753%_ _%rebind?123754%_ _%phi123755%_)
        (let ((_%ctx123757%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123753%_
           _%rebind?123754%_
           _%phi123755%_
           _%ctx123757%_))))
    (define gx#core-bind-values!
      (lambda _g126466_
        (let ((_g126465_ (##length _g126466_)))
          (cond ((##fx= _g126465_ 1) (apply gx#core-bind-values!__0 _g126466_))
                ((##fx= _g126465_ 2) (apply gx#core-bind-values!__1 _g126466_))
                ((##fx= _g126465_ 3) (apply gx#core-bind-values!__2 _g126466_))
                ((##fx= _g126465_ 4) (apply gx#core-bind-values!__% _g126466_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g126466_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx123723%_)
        (gx#stx-map1
         (lambda (_%x123725%_)
           (if (gx#identifier? _%x123725%_)
               (gx#core-quote-syntax__0 _%x123725%_)
               '#f))
         _%stx123723%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx123716%_)
        (if (gx#identifier? _%stx123716%_)
            (let* ((_%bind123718%_ (gx#resolve-identifier__0 _%stx123716%_))
                   (_%$e123720%_ (not _%bind123718%_)))
              (if _%$e123720%_
                  _%$e123720%_
                  (##structure-instance-of?
                   _%bind123718%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id123705%_ _%form123706%_)
        (let ((_%bind123708%_ (gx#resolve-identifier__0 _%id123705%_)))
          (if (##structure-instance-of? _%bind123708%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id123705%_)
              (if (not _%bind123708%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id123705%_)))
                      (gx#core-quote-syntax__0 _%id123705%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form123706%_
                       _%id123705%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form123706%_
                   _%id123705%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id123660%_ _%rebind?123661%_ _%phi123662%_ _%ctx123663%_)
        (let* ((_%key123665%_ (gx#core-identifier-key _%id123660%_))
               (_%eid123667%_
                (gx#make-binding-id__%
                 _%key123665%_
                 '#f
                 _%phi123662%_
                 _%ctx123663%_))
               (_%bind123673%_
                (if (##structure-instance-of?
                     _%ctx123663%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid123667%_
                     _%key123665%_
                     _%phi123662%_
                     _%ctx123663%_)
                    (if (##structure-instance-of?
                         _%ctx123663%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid123667%_
                         _%key123665%_
                         _%phi123662%_)
                        (if (##structure-instance-of?
                             _%ctx123663%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid123667%_
                             _%key123665%_
                             _%phi123662%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid123667%_
                             _%key123665%_
                             _%phi123662%_))))))
          (gx#bind-identifier!__%
           _%id123660%_
           _%bind123673%_
           _%rebind?123661%_
           _%phi123662%_
           _%ctx123663%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id123679%_)
        (let* ((_%rebind?123681%_ '#f)
               (_%phi123683%_ (gx#current-expander-phi))
               (_%ctx123685%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123679%_
           _%rebind?123681%_
           _%phi123683%_
           _%ctx123685%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id123687%_ _%rebind?123688%_)
        (let* ((_%phi123690%_ (gx#current-expander-phi))
               (_%ctx123692%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123687%_
           _%rebind?123688%_
           _%phi123690%_
           _%ctx123692%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id123694%_ _%rebind?123695%_ _%phi123696%_)
        (let ((_%ctx123698%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123694%_
           _%rebind?123695%_
           _%phi123696%_
           _%ctx123698%_))))
    (define gx#core-bind-runtime!
      (lambda _g126468_
        (let ((_g126467_ (##length _g126468_)))
          (cond ((##fx= _g126467_ 1)
                 (apply gx#core-bind-runtime!__0 _g126468_))
                ((##fx= _g126467_ 2)
                 (apply gx#core-bind-runtime!__1 _g126468_))
                ((##fx= _g126467_ 3)
                 (apply gx#core-bind-runtime!__2 _g126468_))
                ((##fx= _g126467_ 4)
                 (apply gx#core-bind-runtime!__% _g126468_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g126468_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id123612%_
               _%eid123613%_
               _%rebind?123614%_
               _%phi123615%_
               _%ctx123616%_)
        (let* ((_%key123618%_ (gx#core-identifier-key _%id123612%_))
               (_%bind123623%_
                (if (##structure-instance-of?
                     _%ctx123616%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid123613%_
                     _%key123618%_
                     _%phi123615%_
                     _%ctx123616%_)
                    (if (##structure-instance-of?
                         _%ctx123616%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid123613%_
                         _%key123618%_
                         _%phi123615%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid123613%_
                         _%key123618%_
                         _%phi123615%_)))))
          (gx#bind-identifier!__%
           _%id123612%_
           _%bind123623%_
           _%rebind?123614%_
           _%phi123615%_
           _%ctx123616%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id123629%_ _%eid123630%_)
        (let* ((_%rebind?123632%_ '#f)
               (_%phi123634%_ (gx#current-expander-phi))
               (_%ctx123636%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123629%_
           _%eid123630%_
           _%rebind?123632%_
           _%phi123634%_
           _%ctx123636%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id123638%_ _%eid123639%_ _%rebind?123640%_)
        (let* ((_%phi123642%_ (gx#current-expander-phi))
               (_%ctx123644%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123638%_
           _%eid123639%_
           _%rebind?123640%_
           _%phi123642%_
           _%ctx123644%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id123646%_ _%eid123647%_ _%rebind?123648%_ _%phi123649%_)
        (let ((_%ctx123651%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123646%_
           _%eid123647%_
           _%rebind?123648%_
           _%phi123649%_
           _%ctx123651%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g126470_
        (let ((_g126469_ (##length _g126470_)))
          (cond ((##fx= _g126469_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g126470_))
                ((##fx= _g126469_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g126470_))
                ((##fx= _g126469_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g126470_))
                ((##fx= _g126469_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g126470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g126470_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id123572%_
               _%eid123573%_
               _%rebind?123574%_
               _%phi123575%_
               _%ctx123576%_)
        (gx#bind-identifier!__%
         _%id123572%_
         (##structure
          gx#extern-binding::t
          _%eid123573%_
          (gx#core-identifier-key _%id123572%_)
          _%phi123575%_)
         _%rebind?123574%_
         _%phi123575%_
         _%ctx123576%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id123581%_ _%eid123582%_)
        (let* ((_%rebind?123584%_ '#f)
               (_%phi123586%_ (gx#current-expander-phi))
               (_%ctx123588%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123581%_
           _%eid123582%_
           _%rebind?123584%_
           _%phi123586%_
           _%ctx123588%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id123590%_ _%eid123591%_ _%rebind?123592%_)
        (let* ((_%phi123594%_ (gx#current-expander-phi))
               (_%ctx123596%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123590%_
           _%eid123591%_
           _%rebind?123592%_
           _%phi123594%_
           _%ctx123596%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id123598%_ _%eid123599%_ _%rebind?123600%_ _%phi123601%_)
        (let ((_%ctx123603%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123598%_
           _%eid123599%_
           _%rebind?123600%_
           _%phi123601%_
           _%ctx123603%_))))
    (define gx#core-bind-extern!
      (lambda _g126472_
        (let ((_g126471_ (##length _g126472_)))
          (cond ((##fx= _g126471_ 2) (apply gx#core-bind-extern!__0 _g126472_))
                ((##fx= _g126471_ 3) (apply gx#core-bind-extern!__1 _g126472_))
                ((##fx= _g126471_ 4) (apply gx#core-bind-extern!__2 _g126472_))
                ((##fx= _g126471_ 5) (apply gx#core-bind-extern!__% _g126472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g126472_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id123526%_
               _%e123527%_
               _%rebind?123528%_
               _%phi123529%_
               _%ctx123530%_)
        (gx#bind-identifier!__%
         _%id123526%_
         (let ((_%key123535%_ (gx#core-identifier-key _%id123526%_))
               (_%e123536%_
                (if (or (##structure-instance-of? _%e123527%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e123527%_
                         'gx#expander-context::t))
                    _%e123527%_
                    (##structure
                     gx#user-expander::t
                     _%e123527%_
                     _%ctx123530%_
                     _%phi123529%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key123535%_
             '#t
             _%phi123529%_
             _%ctx123530%_)
            _%key123535%_
            _%phi123529%_
            _%e123536%_))
         _%rebind?123528%_
         _%phi123529%_
         _%ctx123530%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id123541%_ _%e123542%_)
        (let* ((_%rebind?123544%_ '#f)
               (_%phi123546%_ (gx#current-expander-phi))
               (_%ctx123548%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123541%_
           _%e123542%_
           _%rebind?123544%_
           _%phi123546%_
           _%ctx123548%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id123550%_ _%e123551%_ _%rebind?123552%_)
        (let* ((_%phi123554%_ (gx#current-expander-phi))
               (_%ctx123556%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123550%_
           _%e123551%_
           _%rebind?123552%_
           _%phi123554%_
           _%ctx123556%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id123558%_ _%e123559%_ _%rebind?123560%_ _%phi123561%_)
        (let ((_%ctx123563%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123558%_
           _%e123559%_
           _%rebind?123560%_
           _%phi123561%_
           _%ctx123563%_))))
    (define gx#core-bind-syntax!
      (lambda _g126474_
        (let ((_g126473_ (##length _g126474_)))
          (cond ((##fx= _g126473_ 2) (apply gx#core-bind-syntax!__0 _g126474_))
                ((##fx= _g126473_ 3) (apply gx#core-bind-syntax!__1 _g126474_))
                ((##fx= _g126473_ 4) (apply gx#core-bind-syntax!__2 _g126474_))
                ((##fx= _g126473_ 5) (apply gx#core-bind-syntax!__% _g126474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g126474_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id123509%_ _%e123510%_ _%rebind?123511%_)
        (gx#core-bind-syntax!__%
         _%id123509%_
         _%e123510%_
         _%rebind?123511%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id123516%_ _%e123517%_)
        (let ((_%rebind?123519%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id123516%_
           _%e123517%_
           _%rebind?123519%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g126476_
        (let ((_g126475_ (##length _g126476_)))
          (cond ((##fx= _g126475_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g126476_))
                ((##fx= _g126475_ 3)
                 (apply gx#core-bind-root-syntax!__% _g126476_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g126476_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id123467%_
               _%alias-id123468%_
               _%rebind?123469%_
               _%phi123470%_
               _%ctx123471%_)
        (gx#bind-identifier!__%
         _%id123467%_
         (let ((_%key123473%_ (gx#core-identifier-key _%id123467%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key123473%_
             '#t
             _%phi123470%_
             _%ctx123471%_)
            _%key123473%_
            _%phi123470%_
            _%alias-id123468%_))
         _%rebind?123469%_
         _%phi123470%_
         _%ctx123471%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id123478%_ _%alias-id123479%_)
        (let* ((_%rebind?123481%_ '#f)
               (_%phi123483%_ (gx#current-expander-phi))
               (_%ctx123485%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123478%_
           _%alias-id123479%_
           _%rebind?123481%_
           _%phi123483%_
           _%ctx123485%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id123487%_ _%alias-id123488%_ _%rebind?123489%_)
        (let* ((_%phi123491%_ (gx#current-expander-phi))
               (_%ctx123493%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123487%_
           _%alias-id123488%_
           _%rebind?123489%_
           _%phi123491%_
           _%ctx123493%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id123495%_ _%alias-id123496%_ _%rebind?123497%_ _%phi123498%_)
        (let ((_%ctx123500%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123495%_
           _%alias-id123496%_
           _%rebind?123497%_
           _%phi123498%_
           _%ctx123500%_))))
    (define gx#core-bind-alias!
      (lambda _g126478_
        (let ((_g126477_ (##length _g126478_)))
          (cond ((##fx= _g126477_ 2) (apply gx#core-bind-alias!__0 _g126478_))
                ((##fx= _g126477_ 3) (apply gx#core-bind-alias!__1 _g126478_))
                ((##fx= _g126477_ 4) (apply gx#core-bind-alias!__2 _g126478_))
                ((##fx= _g126477_ 5) (apply gx#core-bind-alias!__% _g126478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g126478_))))))
    (define gx#make-binding-id__%
      (lambda (_%key123417%_ _%syntax?123418%_ _%phi123419%_ _%ctx123420%_)
        (if (uninterned-symbol? _%key123417%_)
            (##gensym 'L)
            (if (pair? _%key123417%_)
                (gensym (##car _%key123417%_))
                (if (##structure-instance-of? _%ctx123420%_ 'gx#top-context::t)
                    (let ((_%ns123425%_
                           (gx#core-context-namespace__% _%ctx123420%_)))
                      (if (and (fxzero? _%phi123419%_) (not _%syntax?123418%_))
                          (if _%ns123425%_
                              (make-symbol__1 _%ns123425%_ '"#" _%key123417%_)
                              _%key123417%_)
                          (if _%syntax?123418%_
                              (make-symbol__1
                               (let ((_%$e123429%_ _%ns123425%_))
                                 (if _%$e123429%_ _%$e123429%_ '""))
                               '"[:"
                               (number->string _%phi123419%_)
                               '":]#"
                               _%key123417%_)
                              (make-symbol__1
                               (let ((_%$e123433%_ _%ns123425%_))
                                 (if _%$e123433%_ _%$e123433%_ '""))
                               '"["
                               (number->string _%phi123419%_)
                               '"]#"
                               _%key123417%_))))
                    (gensym _%key123417%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key123440%_)
        (let* ((_%syntax?123442%_ '#f)
               (_%phi123444%_ (gx#current-expander-phi))
               (_%ctx123446%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123440%_
           _%syntax?123442%_
           _%phi123444%_
           _%ctx123446%_))))
    (define gx#make-binding-id__1
      (lambda (_%key123448%_ _%syntax?123449%_)
        (let* ((_%phi123451%_ (gx#current-expander-phi))
               (_%ctx123453%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123448%_
           _%syntax?123449%_
           _%phi123451%_
           _%ctx123453%_))))
    (define gx#make-binding-id__2
      (lambda (_%key123455%_ _%syntax?123456%_ _%phi123457%_)
        (let ((_%ctx123459%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123455%_
           _%syntax?123456%_
           _%phi123457%_
           _%ctx123459%_))))
    (define gx#make-binding-id
      (lambda _g126480_
        (let ((_g126479_ (##length _g126480_)))
          (cond ((##fx= _g126479_ 1) (apply gx#make-binding-id__0 _g126480_))
                ((##fx= _g126479_ 2) (apply gx#make-binding-id__1 _g126480_))
                ((##fx= _g126479_ 3) (apply gx#make-binding-id__2 _g126480_))
                ((##fx= _g126479_ 4) (apply gx#make-binding-id__% _g126480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g126480_))))))))
