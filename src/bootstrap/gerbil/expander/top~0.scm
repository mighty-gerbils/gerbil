(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1734278444)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx126333%_)
        (letrec ((_%expand-special126335%_
                  (lambda (_%hd126337%_ _%K126338%_ _%rest126339%_ _%r126340%_)
                    (_%K126338%_
                     _%rest126339%_
                     (cons (gx#core-expand-top _%hd126337%_) _%r126340%_)))))
          (gx#core-expand-block__0 _%stx126333%_ _%expand-special126335%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx126086%_)
        (letrec ((_%expand-special126088%_
                  (lambda (_%hd126208%_ _%K126209%_ _%rest126210%_ _%r126211%_)
                    (let* ((_%K126215%_
                            (lambda (_%e126213%_)
                              (_%K126209%_
                               _%rest126210%_
                               (cons _%e126213%_ _%r126211%_))))
                           (_%e126216126245%_ _%hd126208%_)
                           (_%E126240126249%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126216126245%_)))
                           (_%E126236126261%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126216126245%_)
                                  (let ((_%e126241126253%_
                                         (gx#syntax-e _%e126216126245%_)))
                                    (let ((_%hd126242126256%_
                                           (##car _%e126241126253%_))
                                          (_%tl126243126258%_
                                           (##cdr _%e126241126253%_)))
                                      (if (and (gx#identifier?
                                                _%hd126242126256%_)
                                               (gx#core-identifier=?
                                                _%hd126242126256%_
                                                '%#define-runtime))
                                          (_%K126215%_
                                           (gx#core-expand-define-runtime%
                                            _%hd126208%_))
                                          (_%E126240126249%_))))
                                  (_%E126240126249%_))))
                           (_%E126232126273%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126216126245%_)
                                  (let ((_%e126237126265%_
                                         (gx#syntax-e _%e126216126245%_)))
                                    (let ((_%hd126238126268%_
                                           (##car _%e126237126265%_))
                                          (_%tl126239126270%_
                                           (##cdr _%e126237126265%_)))
                                      (if (and (gx#identifier?
                                                _%hd126238126268%_)
                                               (gx#core-identifier=?
                                                _%hd126238126268%_
                                                '%#define-alias))
                                          (_%K126215%_
                                           (gx#core-expand-define-alias%
                                            _%hd126208%_))
                                          (_%E126236126261%_))))
                                  (_%E126236126261%_))))
                           (_%E126222126285%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126216126245%_)
                                  (let ((_%e126233126277%_
                                         (gx#syntax-e _%e126216126245%_)))
                                    (let ((_%hd126234126280%_
                                           (##car _%e126233126277%_))
                                          (_%tl126235126282%_
                                           (##cdr _%e126233126277%_)))
                                      (if (and (gx#identifier?
                                                _%hd126234126280%_)
                                               (gx#core-identifier=?
                                                _%hd126234126280%_
                                                '%#define-syntax))
                                          (_%K126215%_
                                           (gx#core-expand-define-syntax%
                                            _%hd126208%_))
                                          (_%E126232126273%_))))
                                  (_%E126232126273%_))))
                           (_%E126218126317%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126216126245%_)
                                  (let ((_%e126223126289%_
                                         (gx#syntax-e _%e126216126245%_)))
                                    (let ((_%hd126224126292%_
                                           (##car _%e126223126289%_))
                                          (_%tl126225126294%_
                                           (##cdr _%e126223126289%_)))
                                      (if (and (gx#identifier?
                                                _%hd126224126292%_)
                                               (gx#core-identifier=?
                                                _%hd126224126292%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl126225126294%_)
                                              (let ((_%e126226126297%_
                                                     (gx#syntax-e
                                                      _%tl126225126294%_)))
                                                (let ((_%hd126227126300%_
                                                       (##car _%e126226126297%_))
                                                      (_%tl126228126302%_
                                                       (##cdr _%e126226126297%_)))
                                                  (let ((_%hd-bind126305%_
                                                         _%hd126227126300%_))
                                                    (if (gx#stx-pair?
                                                         _%tl126228126302%_)
                                                        (let ((_%e126229126307%_
                                                               (gx#syntax-e
                                                                _%tl126228126302%_)))
                                                          (let ((_%hd126230126310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e126229126307%_))
                        (_%tl126231126312%_ (##cdr _%e126229126307%_)))
                    (let ((_%expr126315%_ _%hd126230126310%_))
                      (if (gx#stx-null? _%tl126231126312%_)
                          (if (gx#core-bind-values? _%hd-bind126305%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126305%_)
                                (_%K126215%_ _%hd126208%_))
                              (_%E126222126285%_))
                          (_%E126222126285%_)))))
                (_%E126222126285%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126222126285%_))
                                          (_%E126222126285%_))))
                                  (_%E126222126285%_))))
                           (_%E126217126329%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126216126245%_)
                                  (let ((_%e126219126321%_
                                         (gx#syntax-e _%e126216126245%_)))
                                    (let ((_%hd126220126324%_
                                           (##car _%e126219126321%_))
                                          (_%tl126221126326%_
                                           (##cdr _%e126219126321%_)))
                                      (if (and (gx#identifier?
                                                _%hd126220126324%_)
                                               (gx#core-identifier=?
                                                _%hd126220126324%_
                                                '%#begin-syntax))
                                          (_%K126215%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd126208%_))
                                          (_%E126218126317%_))))
                                  (_%E126218126317%_)))))
                      (_%E126217126329%_))))
                 (_%eval-body126089%_
                  (lambda (_%rbody126097%_)
                    (let _%lp126099%_ ((_%rest126101%_ _%rbody126097%_)
                                       (_%body126102%_ '())
                                       (_%ebody126103%_ '()))
                      (let* ((_%rest126104126112%_ _%rest126101%_)
                             (_%else126106126120%_
                              (lambda ()
                                (values _%body126102%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody126103%_)
                                          (gx#stx-source _%stx126086%_))))))
                             (_%K126108126196%_
                              (lambda (_%rest126123%_ _%hd126124%_)
                                (let* ((_%e126125126142%_ _%hd126124%_)
                                       (_%E126137126146%_
                                        (lambda ()
                                          (_%lp126099%_
                                           _%rest126123%_
                                           (cons _%hd126124%_ _%body126102%_)
                                           (cons _%hd126124%_
                                                 _%ebody126103%_))))
                                       (_%E126127126158%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126125126142%_)
                                              (let ((_%e126138126150%_
                                                     (gx#syntax-e
                                                      _%e126125126142%_)))
                                                (let ((_%hd126139126153%_
                                                       (##car _%e126138126150%_))
                                                      (_%tl126140126155%_
                                                       (##cdr _%e126138126150%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126139126153%_)
                                                           (gx#core-identifier=?
                                                            _%hd126139126153%_
                                                            '%#begin-syntax))
                                                      (_%lp126099%_
                                                       _%rest126123%_
                                                       (cons _%hd126124%_
                                                             _%body126102%_)
                                                       _%ebody126103%_)
                                                      (_%E126137126146%_))))
                                              (_%E126137126146%_))))
                                       (_%E126126126192%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126125126142%_)
                                              (let ((_%e126128126162%_
                                                     (gx#syntax-e
                                                      _%e126125126142%_)))
                                                (let ((_%hd126129126165%_
                                                       (##car _%e126128126162%_))
                                                      (_%tl126130126167%_
                                                       (##cdr _%e126128126162%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126129126165%_)
                                                           (gx#core-identifier=?
                                                            _%hd126129126165%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl126130126167%_)
                                                          (let ((_%e126131126170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126130126167%_)))
                    (let ((_%hd126132126173%_ (##car _%e126131126170%_))
                          (_%tl126133126175%_ (##cdr _%e126131126170%_)))
                      (let ((_%hd-bind126178%_ _%hd126132126173%_))
                        (if (gx#stx-pair? _%tl126133126175%_)
                            (let ((_%e126134126180%_
                                   (gx#syntax-e _%tl126133126175%_)))
                              (let ((_%hd126135126183%_
                                     (##car _%e126134126180%_))
                                    (_%tl126136126185%_
                                     (##cdr _%e126134126180%_)))
                                (let ((_%expr126188%_ _%hd126135126183%_))
                                  (if (gx#stx-null? _%tl126136126185%_)
                                      (let ((_%ehd126190%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind126178%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr126188%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd126124%_))))
                                        (_%lp126099%_
                                         _%rest126123%_
                                         (cons _%ehd126190%_ _%body126102%_)
                                         (cons _%ehd126190%_ _%ebody126103%_)))
                                      (_%E126127126158%_)))))
                            (_%E126127126158%_)))))
                  (_%E126127126158%_))
              (_%E126127126158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126127126158%_)))))
                                  (_%E126126126192%_)))))
                        (if (pair? _%rest126104126112%_)
                            (let ((_%hd126109126199%_
                                   (##car _%rest126104126112%_))
                                  (_%tl126110126201%_
                                   (##cdr _%rest126104126112%_)))
                              (let* ((_%hd126204%_ _%hd126109126199%_)
                                     (_%rest126206%_ _%tl126110126201%_))
                                (_%K126108126196%_
                                 _%rest126206%_
                                 _%hd126204%_)))
                            (_%else126106126120%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody126092%_
                     (gx#core-expand-block__1
                      _%stx126086%_
                      _%expand-special126088%_
                      '#f))
                    (_g126356_ (_%eval-body126089%_ _%rbody126092%_)))
               (begin
                 (let ((_g126357_
                        (if (##values? _g126356_)
                            (##values-length _g126356_)
                            1)))
                   (if (not (##fx= _g126357_ 2))
                       (error "Context expects 2 values" _g126357_)))
                 (let ((_%expanded-body126094%_ (##values-ref _g126356_ 0))
                       (_%value126095%_ (##values-ref _g126356_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body126094%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value126095%_ '())))
                    (gx#stx-source _%stx126086%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx126056%_)
        (let* ((_%e126057126064%_ _%stx126056%_)
               (_%E126059126068%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126057126064%_)))
               (_%E126058126082%_
                (lambda ()
                  (if (gx#stx-pair? _%e126057126064%_)
                      (let ((_%e126060126072%_
                             (gx#syntax-e _%e126057126064%_)))
                        (let ((_%hd126061126075%_ (##car _%e126060126072%_))
                              (_%tl126062126077%_ (##cdr _%e126060126072%_)))
                          (let ((_%body126080%_ _%tl126062126077%_))
                            (if (gx#stx-list? _%body126080%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body126080%_)
                                 (gx#stx-source _%stx126056%_))
                                (_%E126059126068%_)))))
                      (_%E126059126068%_)))))
          (_%E126058126082%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx126054%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx126054%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx126000%_)
        (let* ((_%e126001126014%_ _%stx126000%_)
               (_%E126003126018%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126001126014%_)))
               (_%E126002126050%_
                (lambda ()
                  (if (gx#stx-pair? _%e126001126014%_)
                      (let ((_%e126004126022%_
                             (gx#syntax-e _%e126001126014%_)))
                        (let ((_%hd126005126025%_ (##car _%e126004126022%_))
                              (_%tl126006126027%_ (##cdr _%e126004126022%_)))
                          (if (gx#stx-pair? _%tl126006126027%_)
                              (let ((_%e126007126030%_
                                     (gx#syntax-e _%tl126006126027%_)))
                                (let ((_%hd126008126033%_
                                       (##car _%e126007126030%_))
                                      (_%tl126009126035%_
                                       (##cdr _%e126007126030%_)))
                                  (let ((_%ann126038%_ _%hd126008126033%_))
                                    (if (gx#stx-pair? _%tl126009126035%_)
                                        (let ((_%e126010126040%_
                                               (gx#syntax-e
                                                _%tl126009126035%_)))
                                          (let ((_%hd126011126043%_
                                                 (##car _%e126010126040%_))
                                                (_%tl126012126045%_
                                                 (##cdr _%e126010126040%_)))
                                            (let ((_%expr126048%_
                                                   _%hd126011126043%_))
                                              (if (gx#stx-null?
                                                   _%tl126012126045%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann126038%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr126048%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx126000%_))
                                                  (_%E126003126018%_)))))
                                        (_%E126003126018%_)))))
                              (_%E126003126018%_))))
                      (_%E126003126018%_)))))
          (_%E126002126050%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx125724%_ _%body125725%_)
        (letrec ((_%expand-special125727%_
                  (lambda (_%hd125995%_ _%K125996%_ _%rest125997%_ _%r125998%_)
                    (_%K125996%_
                     '()
                     (cons (_%expand-internal125728%_
                            _%hd125995%_
                            _%rest125997%_)
                           _%r125998%_))))
                 (_%expand-internal125728%_
                  (lambda (_%hd125991%_ _%rest125992%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal125730%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd125991%_ _%rest125992%_))
                          (gx#stx-source _%stx125724%_))
                         _%expand-internal-special125729%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj126350
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj126350)
                       __obj126350))))
                 (_%expand-internal-special125729%_
                  (lambda (_%hd125886%_ _%K125887%_ _%rest125888%_ _%r125889%_)
                    (let* ((_%e125890125915%_ _%hd125886%_)
                           (_%E125910125919%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125890125915%_)))
                           (_%E125906125931%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125890125915%_)
                                  (let ((_%e125911125923%_
                                         (gx#syntax-e _%e125890125915%_)))
                                    (let ((_%hd125912125926%_
                                           (##car _%e125911125923%_))
                                          (_%tl125913125928%_
                                           (##cdr _%e125911125923%_)))
                                      (if (and (gx#identifier?
                                                _%hd125912125926%_)
                                               (gx#core-identifier=?
                                                _%hd125912125926%_
                                                '%#declare))
                                          (_%K125887%_
                                           _%rest125888%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd125886%_)
                                                 _%r125889%_))
                                          (_%E125910125919%_))))
                                  (_%E125910125919%_))))
                           (_%E125902125943%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125890125915%_)
                                  (let ((_%e125907125935%_
                                         (gx#syntax-e _%e125890125915%_)))
                                    (let ((_%hd125908125938%_
                                           (##car _%e125907125935%_))
                                          (_%tl125909125940%_
                                           (##cdr _%e125907125935%_)))
                                      (if (and (gx#identifier?
                                                _%hd125908125938%_)
                                               (gx#core-identifier=?
                                                _%hd125908125938%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd125886%_)
                                            (_%K125887%_
                                             _%rest125888%_
                                             _%r125889%_))
                                          (_%E125906125931%_))))
                                  (_%E125906125931%_))))
                           (_%E125892125955%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125890125915%_)
                                  (let ((_%e125903125947%_
                                         (gx#syntax-e _%e125890125915%_)))
                                    (let ((_%hd125904125950%_
                                           (##car _%e125903125947%_))
                                          (_%tl125905125952%_
                                           (##cdr _%e125903125947%_)))
                                      (if (and (gx#identifier?
                                                _%hd125904125950%_)
                                               (gx#core-identifier=?
                                                _%hd125904125950%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd125886%_)
                                            (_%K125887%_
                                             _%rest125888%_
                                             _%r125889%_))
                                          (_%E125902125943%_))))
                                  (_%E125902125943%_))))
                           (_%E125891125987%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125890125915%_)
                                  (let ((_%e125893125959%_
                                         (gx#syntax-e _%e125890125915%_)))
                                    (let ((_%hd125894125962%_
                                           (##car _%e125893125959%_))
                                          (_%tl125895125964%_
                                           (##cdr _%e125893125959%_)))
                                      (if (and (gx#identifier?
                                                _%hd125894125962%_)
                                               (gx#core-identifier=?
                                                _%hd125894125962%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125895125964%_)
                                              (let ((_%e125896125967%_
                                                     (gx#syntax-e
                                                      _%tl125895125964%_)))
                                                (let ((_%hd125897125970%_
                                                       (##car _%e125896125967%_))
                                                      (_%tl125898125972%_
                                                       (##cdr _%e125896125967%_)))
                                                  (let ((_%hd-bind125975%_
                                                         _%hd125897125970%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125898125972%_)
                                                        (let ((_%e125899125977%_
                                                               (gx#syntax-e
                                                                _%tl125898125972%_)))
                                                          (let ((_%hd125900125980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125899125977%_))
                        (_%tl125901125982%_ (##cdr _%e125899125977%_)))
                    (let ((_%expr125985%_ _%hd125900125980%_))
                      (if (gx#stx-null? _%tl125901125982%_)
                          (if (gx#core-bind-values? _%hd-bind125975%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125975%_)
                                (_%K125887%_
                                 _%rest125888%_
                                 (cons _%hd125886%_ _%r125889%_)))
                              (_%E125892125955%_))
                          (_%E125892125955%_)))))
                (_%E125892125955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125892125955%_))
                                          (_%E125892125955%_))))
                                  (_%E125892125955%_)))))
                      (_%E125891125987%_))))
                 (_%wrap-internal125730%_
                  (lambda (_%rbody125732%_)
                    (let _%lp125734%_ ((_%rest125736%_ _%rbody125732%_)
                                       (_%decls125737%_ '())
                                       (_%bind125738%_ '())
                                       (_%body125739%_ '()))
                      (let* ((_%e125740125747%_ _%rest125736%_)
                             (_%E125742125796%_
                              (lambda ()
                                (let* ((_%body125791%_
                                        (let* ((_%body125750125760%_
                                                _%body125739%_)
                                               (_%else125753125768%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body125739%_)
                                                   (gx#stx-source
                                                    _%stx125724%_)))))
                                          (let ((_%K125758125788%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx125724%_)))
                                                (_%K125755125774%_
                                                 (lambda (_%expr125772%_)
                                                   _%expr125772%_)))
                                            (let ((_%try-match125752125784%_
                                                   (lambda ()
                                                     (if (pair? _%body125750125760%_)
                                                         (let ((_%tl125757125779%_
                                                                (##cdr _%body125750125760%_))
                                                               (_%hd125756125777%_
                                                                (##car _%body125750125760%_)))
                                                           (if (null? _%tl125757125779%_)
                                                               (let ((_%expr125782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd125756125777%_))
                         (_%K125755125774%_ _%expr125782%_))
                       (_%else125753125768%_)))
                 (_%else125753125768%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body125750125760%_)
                                                  (_%K125758125788%_)
                                                  (_%try-match125752125784%_))))))
                                       (_%body125793%_
                                        (if (null? _%bind125738%_)
                                            _%body125791%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind125738%_
                                                         (cons _%body125791%_
                                                               '())))
                                             (gx#stx-source _%stx125724%_)))))
                                  (if (null? _%decls125737%_)
                                      _%body125793%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls125737%_
                                                   (cons _%body125793%_ '())))
                                       (gx#stx-source _%stx125724%_))))))
                             (_%E125741125882%_
                              (lambda ()
                                (if (gx#stx-pair? _%e125740125747%_)
                                    (let ((_%e125743125800%_
                                           (gx#syntax-e _%e125740125747%_)))
                                      (let ((_%hd125744125803%_
                                             (##car _%e125743125800%_))
                                            (_%tl125745125805%_
                                             (##cdr _%e125743125800%_)))
                                        (let* ((_%hd125808%_
                                                _%hd125744125803%_)
                                               (_%rest125810%_
                                                _%tl125745125805%_)
                                               (_%e125811125828%_ _%hd125808%_)
                                               (_%E125823125832%_
                                                (lambda ()
                                                  (if (null? _%bind125738%_)
                                                      (_%lp125734%_
                                                       _%rest125810%_
                                                       _%decls125737%_
                                                       _%bind125738%_
                                                       (cons _%hd125808%_
                                                             _%body125739%_))
                                                      (_%lp125734%_
                                                       _%rest125810%_
                                                       _%decls125737%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd125808%_ '()))
                     _%bind125738%_)
               _%body125739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125813125846%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125811125828%_)
                                                      (let ((_%e125824125836%_
                                                             (gx#syntax-e
                                                              _%e125811125828%_)))
                                                        (let ((_%hd125825125839%_
                                                               (##car _%e125824125836%_))
                                                              (_%tl125826125841%_
                                                               (##cdr _%e125824125836%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125825125839%_)
                           (gx#core-identifier=?
                            _%hd125825125839%_
                            '%#declare))
                      (let ((_%xdecls125844%_ _%tl125826125841%_))
                        (_%lp125734%_
                         _%rest125810%_
                         (gx#stx-foldr cons _%decls125737%_ _%xdecls125844%_)
                         _%bind125738%_
                         _%body125739%_))
                      (_%E125823125832%_))))
              (_%E125823125832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125812125878%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125811125828%_)
                                                      (let ((_%e125814125850%_
                                                             (gx#syntax-e
                                                              _%e125811125828%_)))
                                                        (let ((_%hd125815125853%_
                                                               (##car _%e125814125850%_))
                                                              (_%tl125816125855%_
                                                               (##cdr _%e125814125850%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125815125853%_)
                           (gx#core-identifier=?
                            _%hd125815125853%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl125816125855%_)
                          (let ((_%e125817125858%_
                                 (gx#syntax-e _%tl125816125855%_)))
                            (let ((_%hd125818125861%_
                                   (##car _%e125817125858%_))
                                  (_%tl125819125863%_
                                   (##cdr _%e125817125858%_)))
                              (let ((_%hd-bind125866%_ _%hd125818125861%_))
                                (if (gx#stx-pair? _%tl125819125863%_)
                                    (let ((_%e125820125868%_
                                           (gx#syntax-e _%tl125819125863%_)))
                                      (let ((_%hd125821125871%_
                                             (##car _%e125820125868%_))
                                            (_%tl125822125873%_
                                             (##cdr _%e125820125868%_)))
                                        (let ((_%expr125876%_
                                               _%hd125821125871%_))
                                          (if (gx#stx-null? _%tl125822125873%_)
                                              (_%lp125734%_
                                               _%rest125810%_
                                               _%decls125737%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind125866%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr125876%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind125738%_)
                                               _%body125739%_)
                                              (_%E125813125846%_)))))
                                    (_%E125813125846%_)))))
                          (_%E125813125846%_))
                      (_%E125813125846%_))))
              (_%E125813125846%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E125812125878%_))))
                                    (_%E125742125796%_)))))
                        (_%E125741125882%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body125725%_)
            (gx#stx-source _%stx125724%_))
           _%expand-special125727%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx125662%_)
        (let* ((_%e125663125670%_ _%stx125662%_)
               (_%E125665125674%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125663125670%_)))
               (_%E125664125720%_
                (lambda ()
                  (if (gx#stx-pair? _%e125663125670%_)
                      (let ((_%e125666125678%_
                             (gx#syntax-e _%e125663125670%_)))
                        (let ((_%hd125667125681%_ (##car _%e125666125678%_))
                              (_%tl125668125683%_ (##cdr _%e125666125678%_)))
                          (let ((_%body125686%_ _%tl125668125683%_))
                            (if (gx#stx-list? _%body125686%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl125688%_)
                                     (let* ((_%e125689125696%_ _%decl125688%_)
                                            (_%E125691125700%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e125689125696%_)))
                                            (_%E125690125716%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e125689125696%_)
                                                   (let ((_%e125692125704%_
                                                          (gx#syntax-e
                                                           _%e125689125696%_)))
                                                     (let ((_%hd125693125707%_
                                                            (##car _%e125692125704%_))
                                                           (_%tl125694125709%_
                                                            (##cdr _%e125692125704%_)))
                                                       (let* ((_%head125712%_
                                                               _%hd125693125707%_)
                                                              (_%args125714%_
                                                               _%tl125694125709%_))
                                                         (if (gx#stx-list?
                                                              _%args125714%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl125688%_)
                                                             (_%E125691125700%_)))))
                                                   (_%E125691125700%_)))))
                                       (_%E125690125716%_)))
                                   _%body125686%_))
                                 (gx#stx-source _%stx125662%_))
                                (_%E125665125674%_)))))
                      (_%E125665125674%_)))))
          (_%E125664125720%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx125566%_)
        (let* ((_%e125567125574%_ _%stx125566%_)
               (_%E125569125578%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125567125574%_)))
               (_%E125568125658%_
                (lambda ()
                  (if (gx#stx-pair? _%e125567125574%_)
                      (let ((_%e125570125582%_
                             (gx#syntax-e _%e125567125574%_)))
                        (let ((_%hd125571125585%_ (##car _%e125570125582%_))
                              (_%tl125572125587%_ (##cdr _%e125570125582%_)))
                          (let ((_%body125590%_ _%tl125572125587%_))
                            (let _%lp125592%_ ((_%rest125594%_ _%body125590%_)
                                               (_%r125595%_ '()))
                              (let* ((_%e125596125610%_ _%rest125594%_)
                                     (_%E125608125614%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx125566%_)))
                                     (_%E125598125618%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e125596125610%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r125595%_))
                                             (gx#stx-source _%stx125566%_))
                                            (_%E125608125614%_))))
                                     (_%E125597125654%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e125596125610%_)
                                            (let ((_%e125599125622%_
                                                   (gx#syntax-e
                                                    _%e125596125610%_)))
                                              (let ((_%hd125600125625%_
                                                     (##car _%e125599125622%_))
                                                    (_%tl125601125627%_
                                                     (##cdr _%e125599125622%_)))
                                                (if (gx#stx-pair?
                                                     _%hd125600125625%_)
                                                    (let ((_%e125602125630%_
                                                           (gx#syntax-e
                                                            _%hd125600125625%_)))
                                                      (let ((_%hd125603125633%_
                                                             (##car _%e125602125630%_))
                                                            (_%tl125604125635%_
                                                             (##cdr _%e125602125630%_)))
                                                        (let ((_%id125638%_
                                                               _%hd125603125633%_))
                                                          (if (gx#stx-pair?
                                                               _%tl125604125635%_)
                                                              (let ((_%e125605125640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl125604125635%_)))
                        (let ((_%hd125606125643%_ (##car _%e125605125640%_))
                              (_%tl125607125645%_ (##cdr _%e125605125640%_)))
                          (let ((_%eid125648%_ _%hd125606125643%_))
                            (if (gx#stx-null? _%tl125607125645%_)
                                (let ((_%rest125650%_ _%tl125601125627%_))
                                  (if (and (gx#identifier? _%id125638%_)
                                           (gx#identifier? _%eid125648%_))
                                      (let ((_%eid125652%_
                                             (gx#stx-e _%eid125648%_)))
                                        (gx#core-bind-extern!__0
                                         _%id125638%_
                                         _%eid125652%_)
                                        (_%lp125592%_
                                         _%rest125650%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id125638%_)
                                                     (cons _%eid125652%_ '()))
                                               _%r125595%_)))
                                      (_%E125598125618%_)))
                                (_%E125598125618%_)))))
                      (_%E125598125618%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E125598125618%_))))
                                            (_%E125598125618%_)))))
                                (_%E125597125654%_))))))
                      (_%E125569125578%_)))))
          (_%E125568125658%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx125512%_)
        (let* ((_%e125513125526%_ _%stx125512%_)
               (_%E125515125530%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125513125526%_)))
               (_%E125514125562%_
                (lambda ()
                  (if (gx#stx-pair? _%e125513125526%_)
                      (let ((_%e125516125534%_
                             (gx#syntax-e _%e125513125526%_)))
                        (let ((_%hd125517125537%_ (##car _%e125516125534%_))
                              (_%tl125518125539%_ (##cdr _%e125516125534%_)))
                          (if (gx#stx-pair? _%tl125518125539%_)
                              (let ((_%e125519125542%_
                                     (gx#syntax-e _%tl125518125539%_)))
                                (let ((_%hd125520125545%_
                                       (##car _%e125519125542%_))
                                      (_%tl125521125547%_
                                       (##cdr _%e125519125542%_)))
                                  (let ((_%hd125550%_ _%hd125520125545%_))
                                    (if (gx#stx-pair? _%tl125521125547%_)
                                        (let ((_%e125522125552%_
                                               (gx#syntax-e
                                                _%tl125521125547%_)))
                                          (let ((_%hd125523125555%_
                                                 (##car _%e125522125552%_))
                                                (_%tl125524125557%_
                                                 (##cdr _%e125522125552%_)))
                                            (let ((_%expr125560%_
                                                   _%hd125523125555%_))
                                              (if (gx#stx-null?
                                                   _%tl125524125557%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd125550%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd125550%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd125550%_)
                             (cons (gx#core-expand-expression _%expr125560%_)
                                   '())))
                 (gx#stx-source _%stx125512%_)))
              (_%E125515125530%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125515125530%_)))))
                                        (_%E125515125530%_)))))
                              (_%E125515125530%_))))
                      (_%E125515125530%_)))))
          (_%E125514125562%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx125456%_)
        (let* ((_%e125457125470%_ _%stx125456%_)
               (_%E125459125474%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125457125470%_)))
               (_%E125458125508%_
                (lambda ()
                  (if (gx#stx-pair? _%e125457125470%_)
                      (let ((_%e125460125478%_
                             (gx#syntax-e _%e125457125470%_)))
                        (let ((_%hd125461125481%_ (##car _%e125460125478%_))
                              (_%tl125462125483%_ (##cdr _%e125460125478%_)))
                          (if (gx#stx-pair? _%tl125462125483%_)
                              (let ((_%e125463125486%_
                                     (gx#syntax-e _%tl125462125483%_)))
                                (let ((_%hd125464125489%_
                                       (##car _%e125463125486%_))
                                      (_%tl125465125491%_
                                       (##cdr _%e125463125486%_)))
                                  (let ((_%id125494%_ _%hd125464125489%_))
                                    (if (gx#stx-pair? _%tl125465125491%_)
                                        (let ((_%e125466125496%_
                                               (gx#syntax-e
                                                _%tl125465125491%_)))
                                          (let ((_%hd125467125499%_
                                                 (##car _%e125466125496%_))
                                                (_%tl125468125501%_
                                                 (##cdr _%e125466125496%_)))
                                            (let ((_%binding-id125504%_
                                                   _%hd125467125499%_))
                                              (if (gx#stx-null?
                                                   _%tl125468125501%_)
                                                  (if (and (gx#identifier?
                                                            _%id125494%_)
                                                           (gx#identifier?
                                                            _%binding-id125504%_))
                                                      (let ((_%eid125506%_
                                                             (gx#stx-e
                                                              _%binding-id125504%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id125494%_
                                                         _%eid125506%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125494%_)
                             (cons _%eid125506%_ '())))))
              (_%E125459125474%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125459125474%_)))))
                                        (_%E125459125474%_)))))
                              (_%E125459125474%_))))
                      (_%E125459125474%_)))))
          (_%E125458125508%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx125399%_)
        (let* ((_%e125400125413%_ _%stx125399%_)
               (_%E125402125417%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125400125413%_)))
               (_%E125401125452%_
                (lambda ()
                  (if (gx#stx-pair? _%e125400125413%_)
                      (let ((_%e125403125421%_
                             (gx#syntax-e _%e125400125413%_)))
                        (let ((_%hd125404125424%_ (##car _%e125403125421%_))
                              (_%tl125405125426%_ (##cdr _%e125403125421%_)))
                          (if (gx#stx-pair? _%tl125405125426%_)
                              (let ((_%e125406125429%_
                                     (gx#syntax-e _%tl125405125426%_)))
                                (let ((_%hd125407125432%_
                                       (##car _%e125406125429%_))
                                      (_%tl125408125434%_
                                       (##cdr _%e125406125429%_)))
                                  (let ((_%id125437%_ _%hd125407125432%_))
                                    (if (gx#stx-pair? _%tl125408125434%_)
                                        (let ((_%e125409125439%_
                                               (gx#syntax-e
                                                _%tl125408125434%_)))
                                          (let ((_%hd125410125442%_
                                                 (##car _%e125409125439%_))
                                                (_%tl125411125444%_
                                                 (##cdr _%e125409125439%_)))
                                            (let ((_%expr125447%_
                                                   _%hd125410125442%_))
                                              (if (gx#stx-null?
                                                   _%tl125411125444%_)
                                                  (if (gx#identifier?
                                                       _%id125437%_)
                                                      (let ((_g126358_
                                                             (gx#core-expand-expression+1
                                                              _%expr125447%_)))
                                                        (begin
                                                          (let ((_g126359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g126358_)
                             (##values-length _g126358_)
                             1)))
                    (if (not (##fx= _g126359_ 2))
                        (error "Context expects 2 values" _g126359_)))
                  (let ((_%e-stx125449%_ (##values-ref _g126358_ 0))
                        (_%e125450%_ (##values-ref _g126358_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id125437%_ _%e125450%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id125437%_)
                                   (cons _%e-stx125449%_ '())))
                       (gx#stx-source _%stx125399%_))))))
              (_%E125402125417%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125402125417%_)))))
                                        (_%E125402125417%_)))))
                              (_%E125402125417%_))))
                      (_%E125402125417%_)))))
          (_%E125401125452%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx125343%_)
        (let* ((_%e125344125357%_ _%stx125343%_)
               (_%E125346125361%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125344125357%_)))
               (_%E125345125395%_
                (lambda ()
                  (if (gx#stx-pair? _%e125344125357%_)
                      (let ((_%e125347125365%_
                             (gx#syntax-e _%e125344125357%_)))
                        (let ((_%hd125348125368%_ (##car _%e125347125365%_))
                              (_%tl125349125370%_ (##cdr _%e125347125365%_)))
                          (if (gx#stx-pair? _%tl125349125370%_)
                              (let ((_%e125350125373%_
                                     (gx#syntax-e _%tl125349125370%_)))
                                (let ((_%hd125351125376%_
                                       (##car _%e125350125373%_))
                                      (_%tl125352125378%_
                                       (##cdr _%e125350125373%_)))
                                  (let ((_%id125381%_ _%hd125351125376%_))
                                    (if (gx#stx-pair? _%tl125352125378%_)
                                        (let ((_%e125353125383%_
                                               (gx#syntax-e
                                                _%tl125352125378%_)))
                                          (let ((_%hd125354125386%_
                                                 (##car _%e125353125383%_))
                                                (_%tl125355125388%_
                                                 (##cdr _%e125353125383%_)))
                                            (let ((_%alias-id125391%_
                                                   _%hd125354125386%_))
                                              (if (gx#stx-null?
                                                   _%tl125355125388%_)
                                                  (if (and (gx#identifier?
                                                            _%id125381%_)
                                                           (gx#identifier?
                                                            _%alias-id125391%_))
                                                      (let ((_%alias-id125393%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id125391%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id125381%_
                                                         _%alias-id125393%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125381%_)
                             (cons _%alias-id125393%_ '())))))
              (_%E125346125361%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125346125361%_)))))
                                        (_%E125346125361%_)))))
                              (_%E125346125361%_))))
                      (_%E125346125361%_)))))
          (_%E125345125395%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx125286%_ _%wrap?125287%_)
        (let* ((_%e125288125298%_ _%stx125286%_)
               (_%E125290125302%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125288125298%_)))
               (_%E125289125329%_
                (lambda ()
                  (if (gx#stx-pair? _%e125288125298%_)
                      (let ((_%e125291125306%_
                             (gx#syntax-e _%e125288125298%_)))
                        (let ((_%hd125292125309%_ (##car _%e125291125306%_))
                              (_%tl125293125311%_ (##cdr _%e125291125306%_)))
                          (if (gx#stx-pair? _%tl125293125311%_)
                              (let ((_%e125294125314%_
                                     (gx#syntax-e _%tl125293125311%_)))
                                (let ((_%hd125295125317%_
                                       (##car _%e125294125314%_))
                                      (_%tl125296125319%_
                                       (##cdr _%e125294125314%_)))
                                  (let* ((_%hd125322%_ _%hd125295125317%_)
                                         (_%body125324%_ _%tl125296125319%_))
                                    (if (gx#core-bind-values? _%hd125322%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd125322%_)
                                           (let ((_%body125327%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd125322%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx125286%_
                                                               _%body125324%_)
                                                              '()))))
                                             (if _%wrap?125287%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body125327%_)
                                                  (gx#stx-source
                                                   _%stx125286%_))
                                                 _%body125327%_)))
                                         gx#current-expander-context
                                         (let ((__obj126351
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126351)
                                           __obj126351))
                                        (_%E125290125302%_)))))
                              (_%E125290125302%_))))
                      (_%E125290125302%_)))))
          (_%E125289125329%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx125336%_)
        (let ((_%wrap?125338%_ '#t))
          (gx#core-expand-lambda%__% _%stx125336%_ _%wrap?125338%_))))
    (define gx#core-expand-lambda%
      (lambda _g126361_
        (let ((_g126360_ (##length _g126361_)))
          (cond ((##fx= _g126360_ 1)
                 (apply gx#core-expand-lambda%__0 _g126361_))
                ((##fx= _g126360_ 2)
                 (apply gx#core-expand-lambda%__% _g126361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g126361_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx125250%_)
        (let* ((_%e125251125258%_ _%stx125250%_)
               (_%E125253125262%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125251125258%_)))
               (_%E125252125281%_
                (lambda ()
                  (if (gx#stx-pair? _%e125251125258%_)
                      (let ((_%e125254125266%_
                             (gx#syntax-e _%e125251125258%_)))
                        (let ((_%hd125255125269%_ (##car _%e125254125266%_))
                              (_%tl125256125271%_ (##cdr _%e125254125266%_)))
                          (let ((_%clauses125274%_ _%tl125256125271%_))
                            (if (gx#stx-list? _%clauses125274%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause125276%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause125276%_)
                                       (let ((_%$e125278%_
                                              (gx#stx-source
                                               _%clause125276%_)))
                                         (if _%$e125278%_
                                             _%$e125278%_
                                             (gx#stx-source _%stx125250%_))))
                                      '#f))
                                   _%clauses125274%_))
                                 (gx#stx-source _%stx125250%_))
                                (_%E125253125262%_)))))
                      (_%E125253125262%_)))))
          (_%E125252125281%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx125204%_)
        (let* ((_%e125205125215%_ _%stx125204%_)
               (_%E125207125219%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125205125215%_)))
               (_%E125206125246%_
                (lambda ()
                  (if (gx#stx-pair? _%e125205125215%_)
                      (let ((_%e125208125223%_
                             (gx#syntax-e _%e125205125215%_)))
                        (let ((_%hd125209125226%_ (##car _%e125208125223%_))
                              (_%tl125210125228%_ (##cdr _%e125208125223%_)))
                          (if (gx#stx-pair? _%tl125210125228%_)
                              (let ((_%e125211125231%_
                                     (gx#syntax-e _%tl125210125228%_)))
                                (let ((_%hd125212125234%_
                                       (##car _%e125211125231%_))
                                      (_%tl125213125236%_
                                       (##cdr _%e125211125231%_)))
                                  (let* ((_%hd125239%_ _%hd125212125234%_)
                                         (_%body125241%_ _%tl125213125236%_))
                                    (if (gx#core-expand-let-bind? _%hd125239%_)
                                        (let ((_%expressions125243%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd125239%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd125239%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd125239%_
                                                           _%expressions125243%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx125204%_
                         _%body125241%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx125204%_)))
                                           gx#current-expander-context
                                           (let ((__obj126352
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj126352)
                                             __obj126352)))
                                        (_%E125207125219%_)))))
                              (_%E125207125219%_))))
                      (_%E125207125219%_)))))
          (_%E125206125246%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx125149%_ _%form125150%_)
        (let* ((_%e125151125161%_ _%stx125149%_)
               (_%E125153125165%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125151125161%_)))
               (_%E125152125190%_
                (lambda ()
                  (if (gx#stx-pair? _%e125151125161%_)
                      (let ((_%e125154125169%_
                             (gx#syntax-e _%e125151125161%_)))
                        (let ((_%hd125155125172%_ (##car _%e125154125169%_))
                              (_%tl125156125174%_ (##cdr _%e125154125169%_)))
                          (if (gx#stx-pair? _%tl125156125174%_)
                              (let ((_%e125157125177%_
                                     (gx#syntax-e _%tl125156125174%_)))
                                (let ((_%hd125158125180%_
                                       (##car _%e125157125177%_))
                                      (_%tl125159125182%_
                                       (##cdr _%e125157125177%_)))
                                  (let* ((_%hd125185%_ _%hd125158125180%_)
                                         (_%body125187%_ _%tl125159125182%_))
                                    (if (gx#core-expand-let-bind? _%hd125185%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd125185%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form125150%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd125185%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd125185%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx125149%_
                                                               _%body125187%_)
                                                              '())))
                                            (gx#stx-source _%stx125149%_)))
                                         gx#current-expander-context
                                         (let ((__obj126353
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126353)
                                           __obj126353))
                                        (_%E125153125165%_)))))
                              (_%E125153125165%_))))
                      (_%E125153125165%_)))))
          (_%E125152125190%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx125197%_)
        (let ((_%form125199%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx125197%_ _%form125199%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g126363_
        (let ((_g126362_ (##length _g126363_)))
          (cond ((##fx= _g126362_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g126363_))
                ((##fx= _g126362_ 2)
                 (apply gx#core-expand-letrec-values%__% _g126363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g126363_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx125146%_)
        (gx#core-expand-letrec-values%__% _%stx125146%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx125103%_)
        (if (gx#stx-list? _%stx125103%_)
            (gx#stx-andmap
             (lambda (_%bind125105%_)
               (let* ((_%e125106125116%_ _%bind125105%_)
                      (_%E125108125120%_ (lambda () '#f))
                      (_%E125107125142%_
                       (lambda ()
                         (if (gx#stx-pair? _%e125106125116%_)
                             (let ((_%e125109125124%_
                                    (gx#syntax-e _%e125106125116%_)))
                               (let ((_%hd125110125127%_
                                      (##car _%e125109125124%_))
                                     (_%tl125111125129%_
                                      (##cdr _%e125109125124%_)))
                                 (let ((_%hd125132%_ _%hd125110125127%_))
                                   (if (gx#stx-pair? _%tl125111125129%_)
                                       (let ((_%e125112125134%_
                                              (gx#syntax-e
                                               _%tl125111125129%_)))
                                         (let ((_%hd125113125137%_
                                                (##car _%e125112125134%_))
                                               (_%tl125114125139%_
                                                (##cdr _%e125112125134%_)))
                                           (if (gx#stx-null?
                                                _%tl125114125139%_)
                                               (gx#core-bind-values?
                                                _%hd125132%_)
                                               (_%E125108125120%_))))
                                       (_%E125108125120%_)))))
                             (_%E125108125120%_)))))
                 (_%E125107125142%_)))
             _%stx125103%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind125062%_)
        (let* ((_%e125063125073%_ _%bind125062%_)
               (_%E125065125077%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125063125073%_)))
               (_%E125064125099%_
                (lambda ()
                  (if (gx#stx-pair? _%e125063125073%_)
                      (let ((_%e125066125081%_
                             (gx#syntax-e _%e125063125073%_)))
                        (let ((_%hd125067125084%_ (##car _%e125066125081%_))
                              (_%tl125068125086%_ (##cdr _%e125066125081%_)))
                          (if (gx#stx-pair? _%tl125068125086%_)
                              (let ((_%e125069125089%_
                                     (gx#syntax-e _%tl125068125086%_)))
                                (let ((_%hd125070125092%_
                                       (##car _%e125069125089%_))
                                      (_%tl125071125094%_
                                       (##cdr _%e125069125089%_)))
                                  (let ((_%expr125097%_ _%hd125070125092%_))
                                    (if (gx#stx-null? _%tl125071125094%_)
                                        (gx#core-expand-expression
                                         _%expr125097%_)
                                        (_%E125065125077%_)))))
                              (_%E125065125077%_))))
                      (_%E125065125077%_)))))
          (_%E125064125099%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind125021%_)
        (let* ((_%e125022125032%_ _%bind125021%_)
               (_%E125024125036%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125022125032%_)))
               (_%E125023125058%_
                (lambda ()
                  (if (gx#stx-pair? _%e125022125032%_)
                      (let ((_%e125025125040%_
                             (gx#syntax-e _%e125022125032%_)))
                        (let ((_%hd125026125043%_ (##car _%e125025125040%_))
                              (_%tl125027125045%_ (##cdr _%e125025125040%_)))
                          (let ((_%hd125048%_ _%hd125026125043%_))
                            (if (gx#stx-pair? _%tl125027125045%_)
                                (let ((_%e125028125050%_
                                       (gx#syntax-e _%tl125027125045%_)))
                                  (let ((_%hd125029125053%_
                                         (##car _%e125028125050%_))
                                        (_%tl125030125055%_
                                         (##cdr _%e125028125050%_)))
                                    (if (gx#stx-null? _%tl125030125055%_)
                                        (gx#core-bind-values!__0 _%hd125048%_)
                                        (_%E125024125036%_))))
                                (_%E125024125036%_)))))
                      (_%E125024125036%_)))))
          (_%E125023125058%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind124979%_ _%expr124980%_)
        (let* ((_%e124981124991%_ _%bind124979%_)
               (_%E124983124995%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124981124991%_)))
               (_%E124982125017%_
                (lambda ()
                  (if (gx#stx-pair? _%e124981124991%_)
                      (let ((_%e124984124999%_
                             (gx#syntax-e _%e124981124991%_)))
                        (let ((_%hd124985125002%_ (##car _%e124984124999%_))
                              (_%tl124986125004%_ (##cdr _%e124984124999%_)))
                          (let ((_%hd125007%_ _%hd124985125002%_))
                            (if (gx#stx-pair? _%tl124986125004%_)
                                (let ((_%e124987125009%_
                                       (gx#syntax-e _%tl124986125004%_)))
                                  (let ((_%hd124988125012%_
                                         (##car _%e124987125009%_))
                                        (_%tl124989125014%_
                                         (##cdr _%e124987125009%_)))
                                    (if (gx#stx-null? _%tl124989125014%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd125007%_)
                                              (cons _%expr124980%_ '()))
                                        (_%E124983124995%_))))
                                (_%E124983124995%_)))))
                      (_%E124983124995%_)))))
          (_%E124982125017%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx124933%_)
        (let* ((_%e124934124944%_ _%stx124933%_)
               (_%E124936124948%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124934124944%_)))
               (_%E124935124975%_
                (lambda ()
                  (if (gx#stx-pair? _%e124934124944%_)
                      (let ((_%e124937124952%_
                             (gx#syntax-e _%e124934124944%_)))
                        (let ((_%hd124938124955%_ (##car _%e124937124952%_))
                              (_%tl124939124957%_ (##cdr _%e124937124952%_)))
                          (if (gx#stx-pair? _%tl124939124957%_)
                              (let ((_%e124940124960%_
                                     (gx#syntax-e _%tl124939124957%_)))
                                (let ((_%hd124941124963%_
                                       (##car _%e124940124960%_))
                                      (_%tl124942124965%_
                                       (##cdr _%e124940124960%_)))
                                  (let* ((_%hd124968%_ _%hd124941124963%_)
                                         (_%body124970%_ _%tl124942124965%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124968%_)
                                        (let ((_%expanders124972%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd124968%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd124968%_
                                              _%expanders124972%_)
                                             (gx#core-expand-local-block
                                              _%stx124933%_
                                              _%body124970%_))
                                           gx#current-expander-context
                                           (let ((__obj126354
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj126354)
                                             __obj126354)))
                                        (_%E124936124948%_)))))
                              (_%E124936124948%_))))
                      (_%E124936124948%_)))))
          (_%E124935124975%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx124882%_)
        (let* ((_%e124883124893%_ _%stx124882%_)
               (_%E124885124897%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124883124893%_)))
               (_%E124884124929%_
                (lambda ()
                  (if (gx#stx-pair? _%e124883124893%_)
                      (let ((_%e124886124901%_
                             (gx#syntax-e _%e124883124893%_)))
                        (let ((_%hd124887124904%_ (##car _%e124886124901%_))
                              (_%tl124888124906%_ (##cdr _%e124886124901%_)))
                          (if (gx#stx-pair? _%tl124888124906%_)
                              (let ((_%e124889124909%_
                                     (gx#syntax-e _%tl124888124906%_)))
                                (let ((_%hd124890124912%_
                                       (##car _%e124889124909%_))
                                      (_%tl124891124914%_
                                       (##cdr _%e124889124909%_)))
                                  (let* ((_%hd124917%_ _%hd124890124912%_)
                                         (_%body124919%_ _%tl124891124914%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124917%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd124917%_
                                            (make-list
                                             (gx#stx-length _%hd124917%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g124921124924%_
                                                     _%g124922124926%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g124921124924%_
                                               _%g124922124926%_
                                               '#t))
                                            _%hd124917%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd124917%_))
                                           (gx#core-expand-local-block
                                            _%stx124882%_
                                            _%body124919%_))
                                         gx#current-expander-context
                                         (let ((__obj126355
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126355)
                                           __obj126355))
                                        (_%E124885124897%_)))))
                              (_%E124885124897%_))))
                      (_%E124885124897%_)))))
          (_%E124884124929%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx124839%_)
        (if (gx#stx-list? _%stx124839%_)
            (gx#stx-andmap
             (lambda (_%bind124841%_)
               (let* ((_%e124842124852%_ _%bind124841%_)
                      (_%E124844124856%_ (lambda () '#f))
                      (_%E124843124878%_
                       (lambda ()
                         (if (gx#stx-pair? _%e124842124852%_)
                             (let ((_%e124845124860%_
                                    (gx#syntax-e _%e124842124852%_)))
                               (let ((_%hd124846124863%_
                                      (##car _%e124845124860%_))
                                     (_%tl124847124865%_
                                      (##cdr _%e124845124860%_)))
                                 (let ((_%hd124868%_ _%hd124846124863%_))
                                   (if (gx#stx-pair? _%tl124847124865%_)
                                       (let ((_%e124848124870%_
                                              (gx#syntax-e
                                               _%tl124847124865%_)))
                                         (let ((_%hd124849124873%_
                                                (##car _%e124848124870%_))
                                               (_%tl124850124875%_
                                                (##cdr _%e124848124870%_)))
                                           (if (gx#stx-null?
                                                _%tl124850124875%_)
                                               (gx#identifier? _%hd124868%_)
                                               (_%E124844124856%_))))
                                       (_%E124844124856%_)))))
                             (_%E124844124856%_)))))
                 (_%E124843124878%_)))
             _%stx124839%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind124795%_)
        (let* ((_%e124796124806%_ _%bind124795%_)
               (_%E124798124810%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124796124806%_)))
               (_%E124797124835%_
                (lambda ()
                  (if (gx#stx-pair? _%e124796124806%_)
                      (let ((_%e124799124814%_
                             (gx#syntax-e _%e124796124806%_)))
                        (let ((_%hd124800124817%_ (##car _%e124799124814%_))
                              (_%tl124801124819%_ (##cdr _%e124799124814%_)))
                          (if (gx#stx-pair? _%tl124801124819%_)
                              (let ((_%e124802124822%_
                                     (gx#syntax-e _%tl124801124819%_)))
                                (let ((_%hd124803124825%_
                                       (##car _%e124802124822%_))
                                      (_%tl124804124827%_
                                       (##cdr _%e124802124822%_)))
                                  (let ((_%expr124830%_ _%hd124803124825%_))
                                    (if (gx#stx-null? _%tl124804124827%_)
                                        (let ((_g126364_
                                               (gx#core-expand-expression+1
                                                _%expr124830%_)))
                                          (begin
                                            (let ((_g126365_
                                                   (if (##values? _g126364_)
                                                       (##values-length
                                                        _g126364_)
                                                       1)))
                                              (if (not (##fx= _g126365_ 2))
                                                  (error "Context expects 2 values"
                                                         _g126365_)))
                                            (let ((_%_124832%_
                                                   (##values-ref _g126364_ 0))
                                                  (_%e124833%_
                                                   (##values-ref _g126364_ 1)))
                                              _%e124833%_)))
                                        (_%E124798124810%_)))))
                              (_%E124798124810%_))))
                      (_%E124798124810%_)))))
          (_%E124797124835%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind124740%_ _%e124741%_ _%rebind?124742%_)
        (let* ((_%e124743124753%_ _%bind124740%_)
               (_%E124745124757%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124743124753%_)))
               (_%E124744124779%_
                (lambda ()
                  (if (gx#stx-pair? _%e124743124753%_)
                      (let ((_%e124746124761%_
                             (gx#syntax-e _%e124743124753%_)))
                        (let ((_%hd124747124764%_ (##car _%e124746124761%_))
                              (_%tl124748124766%_ (##cdr _%e124746124761%_)))
                          (let ((_%id124769%_ _%hd124747124764%_))
                            (if (gx#stx-pair? _%tl124748124766%_)
                                (let ((_%e124749124771%_
                                       (gx#syntax-e _%tl124748124766%_)))
                                  (let ((_%hd124750124774%_
                                         (##car _%e124749124771%_))
                                        (_%tl124751124776%_
                                         (##cdr _%e124749124771%_)))
                                    (if (gx#stx-null? _%tl124751124776%_)
                                        (gx#core-bind-syntax!__1
                                         _%id124769%_
                                         _%e124741%_
                                         _%rebind?124742%_)
                                        (_%E124745124757%_))))
                                (_%E124745124757%_)))))
                      (_%E124745124757%_)))))
          (_%E124744124779%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind124786%_ _%e124787%_)
        (let ((_%rebind?124789%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind124786%_
           _%e124787%_
           _%rebind?124789%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g126367_
        (let ((_g126366_ (##length _g126367_)))
          (cond ((##fx= _g126366_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g126367_))
                ((##fx= _g126366_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g126367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g126367_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx124698%_)
        (let* ((_%e124699124709%_ _%stx124698%_)
               (_%E124701124713%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124699124709%_)))
               (_%E124700124735%_
                (lambda ()
                  (if (gx#stx-pair? _%e124699124709%_)
                      (let ((_%e124702124717%_
                             (gx#syntax-e _%e124699124709%_)))
                        (let ((_%hd124703124720%_ (##car _%e124702124717%_))
                              (_%tl124704124722%_ (##cdr _%e124702124717%_)))
                          (if (gx#stx-pair? _%tl124704124722%_)
                              (let ((_%e124705124725%_
                                     (gx#syntax-e _%tl124704124722%_)))
                                (let ((_%hd124706124728%_
                                       (##car _%e124705124725%_))
                                      (_%tl124707124730%_
                                       (##cdr _%e124705124725%_)))
                                  (let ((_%expr124733%_ _%hd124706124728%_))
                                    (if (gx#stx-null? _%tl124707124730%_)
                                        (gx#core-expand-expression
                                         _%expr124733%_)
                                        (_%E124701124713%_)))))
                              (_%E124701124713%_))))
                      (_%E124701124713%_)))))
          (_%E124700124735%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx124657%_)
        (let* ((_%e124658124668%_ _%stx124657%_)
               (_%E124660124672%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124658124668%_)))
               (_%E124659124694%_
                (lambda ()
                  (if (gx#stx-pair? _%e124658124668%_)
                      (let ((_%e124661124676%_
                             (gx#syntax-e _%e124658124668%_)))
                        (let ((_%hd124662124679%_ (##car _%e124661124676%_))
                              (_%tl124663124681%_ (##cdr _%e124661124676%_)))
                          (if (gx#stx-pair? _%tl124663124681%_)
                              (let ((_%e124664124684%_
                                     (gx#syntax-e _%tl124663124681%_)))
                                (let ((_%hd124665124687%_
                                       (##car _%e124664124684%_))
                                      (_%tl124666124689%_
                                       (##cdr _%e124664124684%_)))
                                  (let ((_%e124692%_ _%hd124665124687%_))
                                    (if (gx#stx-null? _%tl124666124689%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e124692%_)
                                                     '()))
                                         (gx#stx-source _%stx124657%_))
                                        (_%E124660124672%_)))))
                              (_%E124660124672%_))))
                      (_%E124660124672%_)))))
          (_%E124659124694%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx124616%_)
        (let* ((_%e124617124627%_ _%stx124616%_)
               (_%E124619124631%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124617124627%_)))
               (_%E124618124653%_
                (lambda ()
                  (if (gx#stx-pair? _%e124617124627%_)
                      (let ((_%e124620124635%_
                             (gx#syntax-e _%e124617124627%_)))
                        (let ((_%hd124621124638%_ (##car _%e124620124635%_))
                              (_%tl124622124640%_ (##cdr _%e124620124635%_)))
                          (if (gx#stx-pair? _%tl124622124640%_)
                              (let ((_%e124623124643%_
                                     (gx#syntax-e _%tl124622124640%_)))
                                (let ((_%hd124624124646%_
                                       (##car _%e124623124643%_))
                                      (_%tl124625124648%_
                                       (##cdr _%e124623124643%_)))
                                  (let ((_%e124651%_ _%hd124624124646%_))
                                    (if (gx#stx-null? _%tl124625124648%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e124651%_)
                                                     '()))
                                         (gx#stx-source _%stx124616%_))
                                        (_%E124619124631%_)))))
                              (_%E124619124631%_))))
                      (_%E124619124631%_)))))
          (_%E124618124653%_))))
    (define gx#core-expand-call%
      (lambda (_%stx124573%_)
        (let* ((_%e124574124584%_ _%stx124573%_)
               (_%E124576124588%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124574124584%_)))
               (_%E124575124612%_
                (lambda ()
                  (if (gx#stx-pair? _%e124574124584%_)
                      (let ((_%e124577124592%_
                             (gx#syntax-e _%e124574124584%_)))
                        (let ((_%hd124578124595%_ (##car _%e124577124592%_))
                              (_%tl124579124597%_ (##cdr _%e124577124592%_)))
                          (if (gx#stx-pair? _%tl124579124597%_)
                              (let ((_%e124580124600%_
                                     (gx#syntax-e _%tl124579124597%_)))
                                (let ((_%hd124581124603%_
                                       (##car _%e124580124600%_))
                                      (_%tl124582124605%_
                                       (##cdr _%e124580124600%_)))
                                  (let* ((_%rator124608%_ _%hd124581124603%_)
                                         (_%args124610%_ _%tl124582124605%_))
                                    (if (gx#stx-list? _%args124610%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator124608%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args124610%_))
                                         (gx#stx-source _%stx124573%_))
                                        (_%E124576124588%_)))))
                              (_%E124576124588%_))))
                      (_%E124576124588%_)))))
          (_%E124575124612%_))))
    (define gx#core-expand-if%
      (lambda (_%stx124506%_)
        (let* ((_%e124507124523%_ _%stx124506%_)
               (_%E124509124527%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124507124523%_)))
               (_%E124508124569%_
                (lambda ()
                  (if (gx#stx-pair? _%e124507124523%_)
                      (let ((_%e124510124531%_
                             (gx#syntax-e _%e124507124523%_)))
                        (let ((_%hd124511124534%_ (##car _%e124510124531%_))
                              (_%tl124512124536%_ (##cdr _%e124510124531%_)))
                          (if (gx#stx-pair? _%tl124512124536%_)
                              (let ((_%e124513124539%_
                                     (gx#syntax-e _%tl124512124536%_)))
                                (let ((_%hd124514124542%_
                                       (##car _%e124513124539%_))
                                      (_%tl124515124544%_
                                       (##cdr _%e124513124539%_)))
                                  (let ((_%test124547%_ _%hd124514124542%_))
                                    (if (gx#stx-pair? _%tl124515124544%_)
                                        (let ((_%e124516124549%_
                                               (gx#syntax-e
                                                _%tl124515124544%_)))
                                          (let ((_%hd124517124552%_
                                                 (##car _%e124516124549%_))
                                                (_%tl124518124554%_
                                                 (##cdr _%e124516124549%_)))
                                            (let ((_%K124557%_
                                                   _%hd124517124552%_))
                                              (if (gx#stx-pair?
                                                   _%tl124518124554%_)
                                                  (let ((_%e124519124559%_
                                                         (gx#syntax-e
                                                          _%tl124518124554%_)))
                                                    (let ((_%hd124520124562%_
                                                           (##car _%e124519124559%_))
                                                          (_%tl124521124564%_
                                                           (##cdr _%e124519124559%_)))
                                                      (let ((_%E124567%_
                                                             _%hd124520124562%_))
                                                        (if (gx#stx-null?
                                                             _%tl124521124564%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test124547%_)
                                 (cons (gx#core-expand-expression _%K124557%_)
                                       (cons (gx#core-expand-expression
                                              _%E124567%_)
                                             '()))))
                     (gx#stx-source _%stx124506%_))
                    (_%E124509124527%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124509124527%_)))))
                                        (_%E124509124527%_)))))
                              (_%E124509124527%_))))
                      (_%E124509124527%_)))))
          (_%E124508124569%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx124465%_)
        (let* ((_%e124466124476%_ _%stx124465%_)
               (_%E124468124480%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124466124476%_)))
               (_%E124467124502%_
                (lambda ()
                  (if (gx#stx-pair? _%e124466124476%_)
                      (let ((_%e124469124484%_
                             (gx#syntax-e _%e124466124476%_)))
                        (let ((_%hd124470124487%_ (##car _%e124469124484%_))
                              (_%tl124471124489%_ (##cdr _%e124469124484%_)))
                          (if (gx#stx-pair? _%tl124471124489%_)
                              (let ((_%e124472124492%_
                                     (gx#syntax-e _%tl124471124489%_)))
                                (let ((_%hd124473124495%_
                                       (##car _%e124472124492%_))
                                      (_%tl124474124497%_
                                       (##cdr _%e124472124492%_)))
                                  (let ((_%id124500%_ _%hd124473124495%_))
                                    (if (gx#stx-null? _%tl124474124497%_)
                                        (if (gx#identifier? _%id124500%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id124500%_
                                                          _%stx124465%_)
                                                         '()))
                                             (gx#stx-source _%stx124465%_))
                                            (_%E124468124480%_))
                                        (_%E124468124480%_)))))
                              (_%E124468124480%_))))
                      (_%E124468124480%_)))))
          (_%E124467124502%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx124411%_)
        (let* ((_%e124412124425%_ _%stx124411%_)
               (_%E124414124429%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124412124425%_)))
               (_%E124413124461%_
                (lambda ()
                  (if (gx#stx-pair? _%e124412124425%_)
                      (let ((_%e124415124433%_
                             (gx#syntax-e _%e124412124425%_)))
                        (let ((_%hd124416124436%_ (##car _%e124415124433%_))
                              (_%tl124417124438%_ (##cdr _%e124415124433%_)))
                          (if (gx#stx-pair? _%tl124417124438%_)
                              (let ((_%e124418124441%_
                                     (gx#syntax-e _%tl124417124438%_)))
                                (let ((_%hd124419124444%_
                                       (##car _%e124418124441%_))
                                      (_%tl124420124446%_
                                       (##cdr _%e124418124441%_)))
                                  (let ((_%id124449%_ _%hd124419124444%_))
                                    (if (gx#stx-pair? _%tl124420124446%_)
                                        (let ((_%e124421124451%_
                                               (gx#syntax-e
                                                _%tl124420124446%_)))
                                          (let ((_%hd124422124454%_
                                                 (##car _%e124421124451%_))
                                                (_%tl124423124456%_
                                                 (##cdr _%e124421124451%_)))
                                            (let ((_%expr124459%_
                                                   _%hd124422124454%_))
                                              (if (gx#stx-null?
                                                   _%tl124423124456%_)
                                                  (if (gx#identifier?
                                                       _%id124449%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id124449%_
                            _%stx124411%_)
                           (cons (gx#core-expand-expression _%expr124459%_)
                                 '())))
               (gx#stx-source _%stx124411%_))
              (_%E124414124429%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124414124429%_)))))
                                        (_%E124414124429%_)))))
                              (_%E124414124429%_))))
                      (_%E124414124429%_)))))
          (_%E124413124461%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx124256%_)
        (letrec ((_%generate124258%_
                  (lambda (_%body124288%_)
                    (let _%lp124290%_ ((_%rest124292%_ _%body124288%_)
                                       (_%ns124293%_
                                        (gx#core-context-namespace__0))
                                       (_%r124294%_ '()))
                      (let* ((_%e124295124310%_ _%rest124292%_)
                             (_%E124308124314%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e124295124310%_)))
                             (_%E124304124318%_
                              (lambda ()
                                (if (gx#stx-null? _%e124295124310%_)
                                    (reverse _%r124294%_)
                                    (_%E124308124314%_))))
                             (_%E124297124375%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124295124310%_)
                                    (let ((_%e124305124322%_
                                           (gx#syntax-e _%e124295124310%_)))
                                      (let ((_%hd124306124325%_
                                             (##car _%e124305124322%_))
                                            (_%tl124307124327%_
                                             (##cdr _%e124305124322%_)))
                                        (let* ((_%hd124330%_
                                                _%hd124306124325%_)
                                               (_%rest124332%_
                                                _%tl124307124327%_))
                                          (if (gx#identifier? _%hd124330%_)
                                              (_%lp124290%_
                                               _%rest124332%_
                                               _%ns124293%_
                                               (cons (cons _%hd124330%_
                                                           (cons (if _%ns124293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd124330%_
                              _%ns124293%_
                              '"#"
                              _%hd124330%_)
                             _%hd124330%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r124294%_))
                                              (let* ((_%e124333124343%_
                                                      _%hd124330%_)
                                                     (_%E124335124347%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e124333124343%_)))
                                                     (_%E124334124371%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e124333124343%_)
                                                            (let ((_%e124336124351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e124333124343%_)))
                      (let ((_%hd124337124354%_ (##car _%e124336124351%_))
                            (_%tl124338124356%_ (##cdr _%e124336124351%_)))
                        (let ((_%id124359%_ _%hd124337124354%_))
                          (if (gx#stx-pair? _%tl124338124356%_)
                              (let ((_%e124339124361%_
                                     (gx#syntax-e _%tl124338124356%_)))
                                (let ((_%hd124340124364%_
                                       (##car _%e124339124361%_))
                                      (_%tl124341124366%_
                                       (##cdr _%e124339124361%_)))
                                  (let ((_%eid124369%_ _%hd124340124364%_))
                                    (if (gx#stx-null? _%tl124341124366%_)
                                        (if (and (gx#identifier? _%id124359%_)
                                                 (gx#identifier?
                                                  _%eid124369%_))
                                            (_%lp124290%_
                                             _%rest124332%_
                                             _%ns124293%_
                                             (cons (cons _%id124359%_
                                                         (cons _%eid124369%_
                                                               '()))
                                                   _%r124294%_))
                                            (_%E124335124347%_))
                                        (_%E124335124347%_)))))
                              (_%E124335124347%_)))))
                    (_%E124335124347%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124334124371%_))))))
                                    (_%E124304124318%_))))
                             (_%E124296124407%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124295124310%_)
                                    (let ((_%e124298124379%_
                                           (gx#syntax-e _%e124295124310%_)))
                                      (let ((_%hd124299124382%_
                                             (##car _%e124298124379%_))
                                            (_%tl124300124384%_
                                             (##cdr _%e124298124379%_)))
                                        (if (eq? (gx#stx-e _%hd124299124382%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl124300124384%_)
                                                (let ((_%e124301124387%_
                                                       (gx#syntax-e
                                                        _%tl124300124384%_)))
                                                  (let ((_%hd124302124390%_
                                                         (##car _%e124301124387%_))
                                                        (_%tl124303124392%_
                                                         (##cdr _%e124301124387%_)))
                                                    (let* ((_%ns124395%_
                                                            _%hd124302124390%_)
                                                           (_%rest124397%_
                                                            _%tl124303124392%_)
                                                           (_%ns124405%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns124395%_)
                        (symbol->string (gx#stx-e _%ns124395%_))
                        (if (or (gx#stx-string? _%ns124395%_)
                                (gx#stx-false? _%ns124395%_))
                            (gx#stx-e _%ns124395%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx124256%_
                             _%ns124395%_)))))
              (_%lp124290%_ _%rest124397%_ _%ns124405%_ _%r124294%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124297124375%_))
                                            (_%E124297124375%_))))
                                    (_%E124297124375%_)))))
                        (_%E124296124407%_))))))
          (let* ((_%e124259124266%_ _%stx124256%_)
                 (_%E124261124270%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124259124266%_)))
                 (_%E124260124284%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124259124266%_)
                        (let ((_%e124262124274%_
                               (gx#syntax-e _%e124259124266%_)))
                          (let ((_%hd124263124277%_ (##car _%e124262124274%_))
                                (_%tl124264124279%_ (##cdr _%e124262124274%_)))
                            (let ((_%body124282%_ _%tl124264124279%_))
                              (if (gx#stx-list? _%body124282%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate124258%_ _%body124282%_))
                                  (_%E124261124270%_)))))
                        (_%E124261124270%_)))))
            (_%E124260124284%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx124202%_)
        (let* ((_%e124203124216%_ _%stx124202%_)
               (_%E124205124220%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124203124216%_)))
               (_%E124204124252%_
                (lambda ()
                  (if (gx#stx-pair? _%e124203124216%_)
                      (let ((_%e124206124224%_
                             (gx#syntax-e _%e124203124216%_)))
                        (let ((_%hd124207124227%_ (##car _%e124206124224%_))
                              (_%tl124208124229%_ (##cdr _%e124206124224%_)))
                          (if (gx#stx-pair? _%tl124208124229%_)
                              (let ((_%e124209124232%_
                                     (gx#syntax-e _%tl124208124229%_)))
                                (let ((_%hd124210124235%_
                                       (##car _%e124209124232%_))
                                      (_%tl124211124237%_
                                       (##cdr _%e124209124232%_)))
                                  (let ((_%hd124240%_ _%hd124210124235%_))
                                    (if (gx#stx-pair? _%tl124211124237%_)
                                        (let ((_%e124212124242%_
                                               (gx#syntax-e
                                                _%tl124211124237%_)))
                                          (let ((_%hd124213124245%_
                                                 (##car _%e124212124242%_))
                                                (_%tl124214124247%_
                                                 (##cdr _%e124212124242%_)))
                                            (let ((_%expr124250%_
                                                   _%hd124213124245%_))
                                              (if (gx#stx-null?
                                                   _%tl124214124247%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd124240%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd124240%_)
                          (cons _%expr124250%_ '())))
              (_%E124205124220%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124205124220%_)))))
                                        (_%E124205124220%_)))))
                              (_%E124205124220%_))))
                      (_%E124205124220%_)))))
          (_%E124204124252%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx124148%_)
        (let* ((_%e124149124162%_ _%stx124148%_)
               (_%E124151124166%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124149124162%_)))
               (_%E124150124198%_
                (lambda ()
                  (if (gx#stx-pair? _%e124149124162%_)
                      (let ((_%e124152124170%_
                             (gx#syntax-e _%e124149124162%_)))
                        (let ((_%hd124153124173%_ (##car _%e124152124170%_))
                              (_%tl124154124175%_ (##cdr _%e124152124170%_)))
                          (if (gx#stx-pair? _%tl124154124175%_)
                              (let ((_%e124155124178%_
                                     (gx#syntax-e _%tl124154124175%_)))
                                (let ((_%hd124156124181%_
                                       (##car _%e124155124178%_))
                                      (_%tl124157124183%_
                                       (##cdr _%e124155124178%_)))
                                  (let ((_%hd124186%_ _%hd124156124181%_))
                                    (if (gx#stx-pair? _%tl124157124183%_)
                                        (let ((_%e124158124188%_
                                               (gx#syntax-e
                                                _%tl124157124183%_)))
                                          (let ((_%hd124159124191%_
                                                 (##car _%e124158124188%_))
                                                (_%tl124160124193%_
                                                 (##cdr _%e124158124188%_)))
                                            (let ((_%expr124196%_
                                                   _%hd124159124191%_))
                                              (if (gx#stx-null?
                                                   _%tl124160124193%_)
                                                  (if (gx#identifier?
                                                       _%hd124186%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd124186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr124196%_ '())))
              (_%E124151124166%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124151124166%_)))))
                                        (_%E124151124166%_)))))
                              (_%E124151124166%_))))
                      (_%E124151124166%_)))))
          (_%E124150124198%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx124094%_)
        (let* ((_%e124095124108%_ _%stx124094%_)
               (_%E124097124112%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124095124108%_)))
               (_%E124096124144%_
                (lambda ()
                  (if (gx#stx-pair? _%e124095124108%_)
                      (let ((_%e124098124116%_
                             (gx#syntax-e _%e124095124108%_)))
                        (let ((_%hd124099124119%_ (##car _%e124098124116%_))
                              (_%tl124100124121%_ (##cdr _%e124098124116%_)))
                          (if (gx#stx-pair? _%tl124100124121%_)
                              (let ((_%e124101124124%_
                                     (gx#syntax-e _%tl124100124121%_)))
                                (let ((_%hd124102124127%_
                                       (##car _%e124101124124%_))
                                      (_%tl124103124129%_
                                       (##cdr _%e124101124124%_)))
                                  (let ((_%id124132%_ _%hd124102124127%_))
                                    (if (gx#stx-pair? _%tl124103124129%_)
                                        (let ((_%e124104124134%_
                                               (gx#syntax-e
                                                _%tl124103124129%_)))
                                          (let ((_%hd124105124137%_
                                                 (##car _%e124104124134%_))
                                                (_%tl124106124139%_
                                                 (##cdr _%e124104124134%_)))
                                            (let ((_%alias-id124142%_
                                                   _%hd124105124137%_))
                                              (if (gx#stx-null?
                                                   _%tl124106124139%_)
                                                  (if (and (gx#identifier?
                                                            _%id124132%_)
                                                           (gx#identifier?
                                                            _%alias-id124142%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id124132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id124142%_ '())))
              (_%E124097124112%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124097124112%_)))))
                                        (_%E124097124112%_)))))
                              (_%E124097124112%_))))
                      (_%E124097124112%_)))))
          (_%E124096124144%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx124051%_)
        (let* ((_%e124052124062%_ _%stx124051%_)
               (_%E124054124066%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124052124062%_)))
               (_%E124053124090%_
                (lambda ()
                  (if (gx#stx-pair? _%e124052124062%_)
                      (let ((_%e124055124070%_
                             (gx#syntax-e _%e124052124062%_)))
                        (let ((_%hd124056124073%_ (##car _%e124055124070%_))
                              (_%tl124057124075%_ (##cdr _%e124055124070%_)))
                          (if (gx#stx-pair? _%tl124057124075%_)
                              (let ((_%e124058124078%_
                                     (gx#syntax-e _%tl124057124075%_)))
                                (let ((_%hd124059124081%_
                                       (##car _%e124058124078%_))
                                      (_%tl124060124083%_
                                       (##cdr _%e124058124078%_)))
                                  (let* ((_%hd124086%_ _%hd124059124081%_)
                                         (_%body124088%_ _%tl124060124083%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd124086%_)
                                             (gx#stx-list? _%body124088%_)
                                             (not (gx#stx-null?
                                                   _%body124088%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd124086%_)
                                         _%body124088%_)
                                        (_%E124054124066%_)))))
                              (_%E124054124066%_))))
                      (_%E124054124066%_)))))
          (_%E124053124090%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx123987%_)
        (letrec ((_%generate123989%_
                  (lambda (_%clause124019%_)
                    (let* ((_%e124020124027%_ _%clause124019%_)
                           (_%E124022124031%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx123987%_
                               _%clause124019%_)))
                           (_%E124021124047%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124020124027%_)
                                  (let ((_%e124023124035%_
                                         (gx#syntax-e _%e124020124027%_)))
                                    (let ((_%hd124024124038%_
                                           (##car _%e124023124035%_))
                                          (_%tl124025124040%_
                                           (##cdr _%e124023124035%_)))
                                      (let* ((_%hd124043%_ _%hd124024124038%_)
                                             (_%body124045%_
                                              _%tl124025124040%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd124043%_)
                                                 (gx#stx-list? _%body124045%_)
                                                 (not (gx#stx-null?
                                                       _%body124045%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd124043%_)
                                                   _%body124045%_)
                                             (gx#stx-source _%clause124019%_))
                                            (_%E124022124031%_)))))
                                  (_%E124022124031%_)))))
                      (_%E124021124047%_)))))
          (let* ((_%e123990123997%_ _%stx123987%_)
                 (_%E123992124001%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123990123997%_)))
                 (_%E123991124015%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123990123997%_)
                        (let ((_%e123993124005%_
                               (gx#syntax-e _%e123990123997%_)))
                          (let ((_%hd123994124008%_ (##car _%e123993124005%_))
                                (_%tl123995124010%_ (##cdr _%e123993124005%_)))
                            (let ((_%clauses124013%_ _%tl123995124010%_))
                              (if (gx#stx-list? _%clauses124013%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate123989%_
                                    _%clauses124013%_))
                                  (_%E123992124001%_)))))
                        (_%E123992124001%_)))))
            (_%E123991124015%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx123888%_ _%form123889%_)
        (letrec ((_%generate123891%_
                  (lambda (_%bind123934%_)
                    (let* ((_%e123935123945%_ _%bind123934%_)
                           (_%E123937123949%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx123888%_
                               _%bind123934%_)))
                           (_%E123936123973%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123935123945%_)
                                  (let ((_%e123938123953%_
                                         (gx#syntax-e _%e123935123945%_)))
                                    (let ((_%hd123939123956%_
                                           (##car _%e123938123953%_))
                                          (_%tl123940123958%_
                                           (##cdr _%e123938123953%_)))
                                      (let ((_%ids123961%_ _%hd123939123956%_))
                                        (if (gx#stx-pair? _%tl123940123958%_)
                                            (let ((_%e123941123963%_
                                                   (gx#syntax-e
                                                    _%tl123940123958%_)))
                                              (let ((_%hd123942123966%_
                                                     (##car _%e123941123963%_))
                                                    (_%tl123943123968%_
                                                     (##cdr _%e123941123963%_)))
                                                (let ((_%expr123971%_
                                                       _%hd123942123966%_))
                                                  (if (gx#stx-null?
                                                       _%tl123943123968%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids123961%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids123961%_)
                        (cons _%expr123971%_ '()))
                  (_%E123937123949%_))
              (_%E123937123949%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E123937123949%_)))))
                                  (_%E123937123949%_)))))
                      (_%E123936123973%_)))))
          (let* ((_%e123892123902%_ _%stx123888%_)
                 (_%E123894123906%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123892123902%_)))
                 (_%E123893123930%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123892123902%_)
                        (let ((_%e123895123910%_
                               (gx#syntax-e _%e123892123902%_)))
                          (let ((_%hd123896123913%_ (##car _%e123895123910%_))
                                (_%tl123897123915%_ (##cdr _%e123895123910%_)))
                            (if (gx#stx-pair? _%tl123897123915%_)
                                (let ((_%e123898123918%_
                                       (gx#syntax-e _%tl123897123915%_)))
                                  (let ((_%hd123899123921%_
                                         (##car _%e123898123918%_))
                                        (_%tl123900123923%_
                                         (##cdr _%e123898123918%_)))
                                    (let* ((_%hd123926%_ _%hd123899123921%_)
                                           (_%body123928%_ _%tl123900123923%_))
                                      (if (and (gx#stx-list? _%hd123926%_)
                                               (gx#stx-list? _%body123928%_)
                                               (not (gx#stx-null?
                                                     _%body123928%_)))
                                          (gx#core-cons*
                                           _%form123889%_
                                           (gx#stx-map1
                                            _%generate123891%_
                                            _%hd123926%_)
                                           _%body123928%_)
                                          (_%E123894123906%_)))))
                                (_%E123894123906%_))))
                        (_%E123894123906%_)))))
            (_%E123893123930%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx123980%_)
        (let ((_%form123982%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx123980%_ _%form123982%_))))
    (define gx#macro-expand-let-values
      (lambda _g126369_
        (let ((_g126368_ (##length _g126369_)))
          (cond ((##fx= _g126368_ 1)
                 (apply gx#macro-expand-let-values__0 _g126369_))
                ((##fx= _g126368_ 2)
                 (apply gx#macro-expand-let-values__% _g126369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g126369_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx123885%_)
        (gx#macro-expand-let-values__% _%stx123885%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx123883%_)
        (gx#macro-expand-let-values__% _%stx123883%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx123774%_)
        (let* ((_%e123775123801%_ _%stx123774%_)
               (_%E123787123805%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123775123801%_)))
               (_%E123777123847%_
                (lambda ()
                  (if (gx#stx-pair? _%e123775123801%_)
                      (let ((_%e123788123809%_
                             (gx#syntax-e _%e123775123801%_)))
                        (let ((_%hd123789123812%_ (##car _%e123788123809%_))
                              (_%tl123790123814%_ (##cdr _%e123788123809%_)))
                          (if (gx#stx-pair? _%tl123790123814%_)
                              (let ((_%e123791123817%_
                                     (gx#syntax-e _%tl123790123814%_)))
                                (let ((_%hd123792123820%_
                                       (##car _%e123791123817%_))
                                      (_%tl123793123822%_
                                       (##cdr _%e123791123817%_)))
                                  (let ((_%test123825%_ _%hd123792123820%_))
                                    (if (gx#stx-pair? _%tl123793123822%_)
                                        (let ((_%e123794123827%_
                                               (gx#syntax-e
                                                _%tl123793123822%_)))
                                          (let ((_%hd123795123830%_
                                                 (##car _%e123794123827%_))
                                                (_%tl123796123832%_
                                                 (##cdr _%e123794123827%_)))
                                            (let ((_%K123835%_
                                                   _%hd123795123830%_))
                                              (if (gx#stx-pair?
                                                   _%tl123796123832%_)
                                                  (let ((_%e123797123837%_
                                                         (gx#syntax-e
                                                          _%tl123796123832%_)))
                                                    (let ((_%hd123798123840%_
                                                           (##car _%e123797123837%_))
                                                          (_%tl123799123842%_
                                                           (##cdr _%e123797123837%_)))
                                                      (let ((_%E123845%_
                                                             _%hd123798123840%_))
                                                        (if (gx#stx-null?
                                                             _%tl123799123842%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test123825%_
                                                             _%K123835%_
                                                             _%E123845%_)
                                                            (_%E123787123805%_)))))
                                                  (_%E123787123805%_)))))
                                        (_%E123787123805%_)))))
                              (_%E123787123805%_))))
                      (_%E123787123805%_))))
               (_%E123776123879%_
                (lambda ()
                  (if (gx#stx-pair? _%e123775123801%_)
                      (let ((_%e123778123851%_
                             (gx#syntax-e _%e123775123801%_)))
                        (let ((_%hd123779123854%_ (##car _%e123778123851%_))
                              (_%tl123780123856%_ (##cdr _%e123778123851%_)))
                          (if (gx#stx-pair? _%tl123780123856%_)
                              (let ((_%e123781123859%_
                                     (gx#syntax-e _%tl123780123856%_)))
                                (let ((_%hd123782123862%_
                                       (##car _%e123781123859%_))
                                      (_%tl123783123864%_
                                       (##cdr _%e123781123859%_)))
                                  (let ((_%test123867%_ _%hd123782123862%_))
                                    (if (gx#stx-pair? _%tl123783123864%_)
                                        (let ((_%e123784123869%_
                                               (gx#syntax-e
                                                _%tl123783123864%_)))
                                          (let ((_%hd123785123872%_
                                                 (##car _%e123784123869%_))
                                                (_%tl123786123874%_
                                                 (##cdr _%e123784123869%_)))
                                            (let ((_%K123877%_
                                                   _%hd123785123872%_))
                                              (if (gx#stx-null?
                                                   _%tl123786123874%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test123867%_
                                                   _%K123877%_
                                                   '#!void)
                                                  (_%E123777123847%_)))))
                                        (_%E123777123847%_)))))
                              (_%E123777123847%_))))
                      (_%E123777123847%_)))))
          (_%E123776123879%_))))
    (define gx#free-identifier=?
      (lambda (_%xid123759%_ _%yid123760%_)
        (let ((_%xe123762%_ (gx#resolve-identifier__0 _%xid123759%_))
              (_%ye123763%_ (gx#resolve-identifier__0 _%yid123760%_)))
          (if (and _%xe123762%_ _%ye123763%_)
              (let ((_%$e123766%_ (eq? _%xe123762%_ _%ye123763%_)))
                (if _%$e123766%_
                    _%$e123766%_
                    (if (##structure-instance-of? _%xe123762%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye123763%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe123762%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye123763%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe123762%_ _%ye123763%_)
                  '#f
                  (gx#stx-eq? _%xid123759%_ _%yid123760%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid123740%_ _%yid123741%_)
        (letrec ((_%context123743%_
                  (lambda (_%e123757%_)
                    (if (##structure-direct-instance-of?
                         _%e123757%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e123757%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks123744%_
                  (lambda (_%e123752%_)
                    (if (symbol? _%e123752%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e123752%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e123752%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e123752%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap123745%_
                  (lambda (_%e123750%_)
                    (if (symbol? _%e123750%_)
                        _%e123750%_
                        (gx#syntax-local-unwrap _%e123750%_)))))
          (let ((_%x123747%_ (_%unwrap123745%_ _%xid123740%_))
                (_%y123748%_ (_%unwrap123745%_ _%yid123741%_)))
            (if (gx#stx-eq? _%x123747%_ _%y123748%_)
                (if (eq? (_%context123743%_ _%x123747%_)
                         (_%context123743%_ _%y123748%_))
                    (equal? (_%marks123744%_ _%x123747%_)
                            (_%marks123744%_ _%y123748%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx123738%_)
        (if (gx#identifier? _%stx123738%_)
            (gx#core-identifier=? _%stx123738%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx123736%_)
        (if (gx#identifier? _%stx123736%_)
            (gx#core-identifier=? _%stx123736%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx123679%_ _%where123680%_)
        (let _%lp123682%_ ((_%rest123684%_ (gx#syntax->list _%stx123679%_)))
          (let* ((_%rest123685123693%_ _%rest123684%_)
                 (_%else123687123701%_ (lambda () '#t))
                 (_%K123689123714%_
                  (lambda (_%rest123704%_ _%hd123705%_)
                    (if (gx#identifier? _%hd123705%_)
                        (if (__find (lambda (_%g123707123709%_)
                                      (gx#bound-identifier=?
                                       _%g123707123709%_
                                       _%hd123705%_))
                                    _%rest123704%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where123680%_
                             _%hd123705%_)
                            (_%lp123682%_ _%rest123704%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where123680%_
                         _%hd123705%_)))))
            (if (pair? _%rest123685123693%_)
                (let ((_%hd123690123717%_ (##car _%rest123685123693%_))
                      (_%tl123691123719%_ (##cdr _%rest123685123693%_)))
                  (let* ((_%hd123722%_ _%hd123690123717%_)
                         (_%rest123724%_ _%tl123691123719%_))
                    (_%K123689123714%_ _%rest123724%_ _%hd123722%_)))
                (_%else123687123701%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx123729%_)
        (let ((_%where123731%_ _%stx123729%_))
          (gx#check-duplicate-identifiers__% _%stx123729%_ _%where123731%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g126371_
        (let ((_g126370_ (##length _g126371_)))
          (cond ((##fx= _g126370_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g126371_))
                ((##fx= _g126370_ 2)
                 (apply gx#check-duplicate-identifiers__% _g126371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g126371_))))))
    (define gx#core-bind-values?
      (lambda (_%stx123671%_)
        (gx#stx-andmap
         (lambda (_%x123673%_)
           (let ((_%$e123675%_ (gx#identifier? _%x123673%_)))
             (if _%$e123675%_ _%$e123675%_ (gx#stx-false? _%x123673%_))))
         _%stx123671%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx123635%_ _%rebind?123636%_ _%phi123637%_ _%ctx123638%_)
        (gx#stx-for-each1
         (lambda (_%id123640%_)
           (if (gx#identifier? _%id123640%_)
               (gx#core-bind-runtime!__%
                _%id123640%_
                _%rebind?123636%_
                _%phi123637%_
                _%ctx123638%_)
               '#!void))
         _%stx123635%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx123645%_)
        (let* ((_%rebind?123647%_ '#f)
               (_%phi123649%_ (gx#current-expander-phi))
               (_%ctx123651%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123645%_
           _%rebind?123647%_
           _%phi123649%_
           _%ctx123651%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx123653%_ _%rebind?123654%_)
        (let* ((_%phi123656%_ (gx#current-expander-phi))
               (_%ctx123658%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123653%_
           _%rebind?123654%_
           _%phi123656%_
           _%ctx123658%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx123660%_ _%rebind?123661%_ _%phi123662%_)
        (let ((_%ctx123664%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123660%_
           _%rebind?123661%_
           _%phi123662%_
           _%ctx123664%_))))
    (define gx#core-bind-values!
      (lambda _g126373_
        (let ((_g126372_ (##length _g126373_)))
          (cond ((##fx= _g126372_ 1) (apply gx#core-bind-values!__0 _g126373_))
                ((##fx= _g126372_ 2) (apply gx#core-bind-values!__1 _g126373_))
                ((##fx= _g126372_ 3) (apply gx#core-bind-values!__2 _g126373_))
                ((##fx= _g126372_ 4) (apply gx#core-bind-values!__% _g126373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g126373_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx123630%_)
        (gx#stx-map1
         (lambda (_%x123632%_)
           (if (gx#identifier? _%x123632%_)
               (gx#core-quote-syntax__0 _%x123632%_)
               '#f))
         _%stx123630%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx123623%_)
        (if (gx#identifier? _%stx123623%_)
            (let* ((_%bind123625%_ (gx#resolve-identifier__0 _%stx123623%_))
                   (_%$e123627%_ (not _%bind123625%_)))
              (if _%$e123627%_
                  _%$e123627%_
                  (##structure-instance-of?
                   _%bind123625%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id123612%_ _%form123613%_)
        (let ((_%bind123615%_ (gx#resolve-identifier__0 _%id123612%_)))
          (if (##structure-instance-of? _%bind123615%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id123612%_)
              (if (not _%bind123615%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id123612%_)))
                      (gx#core-quote-syntax__0 _%id123612%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form123613%_
                       _%id123612%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form123613%_
                   _%id123612%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id123567%_ _%rebind?123568%_ _%phi123569%_ _%ctx123570%_)
        (let* ((_%key123572%_ (gx#core-identifier-key _%id123567%_))
               (_%eid123574%_
                (gx#make-binding-id__%
                 _%key123572%_
                 '#f
                 _%phi123569%_
                 _%ctx123570%_))
               (_%bind123580%_
                (if (##structure-instance-of?
                     _%ctx123570%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid123574%_
                     _%key123572%_
                     _%phi123569%_
                     _%ctx123570%_)
                    (if (##structure-instance-of?
                         _%ctx123570%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid123574%_
                         _%key123572%_
                         _%phi123569%_)
                        (if (##structure-instance-of?
                             _%ctx123570%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid123574%_
                             _%key123572%_
                             _%phi123569%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid123574%_
                             _%key123572%_
                             _%phi123569%_))))))
          (gx#bind-identifier!__%
           _%id123567%_
           _%bind123580%_
           _%rebind?123568%_
           _%phi123569%_
           _%ctx123570%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id123586%_)
        (let* ((_%rebind?123588%_ '#f)
               (_%phi123590%_ (gx#current-expander-phi))
               (_%ctx123592%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123586%_
           _%rebind?123588%_
           _%phi123590%_
           _%ctx123592%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id123594%_ _%rebind?123595%_)
        (let* ((_%phi123597%_ (gx#current-expander-phi))
               (_%ctx123599%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123594%_
           _%rebind?123595%_
           _%phi123597%_
           _%ctx123599%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id123601%_ _%rebind?123602%_ _%phi123603%_)
        (let ((_%ctx123605%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123601%_
           _%rebind?123602%_
           _%phi123603%_
           _%ctx123605%_))))
    (define gx#core-bind-runtime!
      (lambda _g126375_
        (let ((_g126374_ (##length _g126375_)))
          (cond ((##fx= _g126374_ 1)
                 (apply gx#core-bind-runtime!__0 _g126375_))
                ((##fx= _g126374_ 2)
                 (apply gx#core-bind-runtime!__1 _g126375_))
                ((##fx= _g126374_ 3)
                 (apply gx#core-bind-runtime!__2 _g126375_))
                ((##fx= _g126374_ 4)
                 (apply gx#core-bind-runtime!__% _g126375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g126375_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id123519%_
               _%eid123520%_
               _%rebind?123521%_
               _%phi123522%_
               _%ctx123523%_)
        (let* ((_%key123525%_ (gx#core-identifier-key _%id123519%_))
               (_%bind123530%_
                (if (##structure-instance-of?
                     _%ctx123523%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid123520%_
                     _%key123525%_
                     _%phi123522%_
                     _%ctx123523%_)
                    (if (##structure-instance-of?
                         _%ctx123523%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid123520%_
                         _%key123525%_
                         _%phi123522%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid123520%_
                         _%key123525%_
                         _%phi123522%_)))))
          (gx#bind-identifier!__%
           _%id123519%_
           _%bind123530%_
           _%rebind?123521%_
           _%phi123522%_
           _%ctx123523%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id123536%_ _%eid123537%_)
        (let* ((_%rebind?123539%_ '#f)
               (_%phi123541%_ (gx#current-expander-phi))
               (_%ctx123543%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123536%_
           _%eid123537%_
           _%rebind?123539%_
           _%phi123541%_
           _%ctx123543%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id123545%_ _%eid123546%_ _%rebind?123547%_)
        (let* ((_%phi123549%_ (gx#current-expander-phi))
               (_%ctx123551%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123545%_
           _%eid123546%_
           _%rebind?123547%_
           _%phi123549%_
           _%ctx123551%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id123553%_ _%eid123554%_ _%rebind?123555%_ _%phi123556%_)
        (let ((_%ctx123558%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123553%_
           _%eid123554%_
           _%rebind?123555%_
           _%phi123556%_
           _%ctx123558%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g126377_
        (let ((_g126376_ (##length _g126377_)))
          (cond ((##fx= _g126376_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g126377_))
                ((##fx= _g126376_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g126377_))
                ((##fx= _g126376_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g126377_))
                ((##fx= _g126376_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g126377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g126377_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id123479%_
               _%eid123480%_
               _%rebind?123481%_
               _%phi123482%_
               _%ctx123483%_)
        (gx#bind-identifier!__%
         _%id123479%_
         (##structure
          gx#extern-binding::t
          _%eid123480%_
          (gx#core-identifier-key _%id123479%_)
          _%phi123482%_)
         _%rebind?123481%_
         _%phi123482%_
         _%ctx123483%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id123488%_ _%eid123489%_)
        (let* ((_%rebind?123491%_ '#f)
               (_%phi123493%_ (gx#current-expander-phi))
               (_%ctx123495%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123488%_
           _%eid123489%_
           _%rebind?123491%_
           _%phi123493%_
           _%ctx123495%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id123497%_ _%eid123498%_ _%rebind?123499%_)
        (let* ((_%phi123501%_ (gx#current-expander-phi))
               (_%ctx123503%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123497%_
           _%eid123498%_
           _%rebind?123499%_
           _%phi123501%_
           _%ctx123503%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id123505%_ _%eid123506%_ _%rebind?123507%_ _%phi123508%_)
        (let ((_%ctx123510%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123505%_
           _%eid123506%_
           _%rebind?123507%_
           _%phi123508%_
           _%ctx123510%_))))
    (define gx#core-bind-extern!
      (lambda _g126379_
        (let ((_g126378_ (##length _g126379_)))
          (cond ((##fx= _g126378_ 2) (apply gx#core-bind-extern!__0 _g126379_))
                ((##fx= _g126378_ 3) (apply gx#core-bind-extern!__1 _g126379_))
                ((##fx= _g126378_ 4) (apply gx#core-bind-extern!__2 _g126379_))
                ((##fx= _g126378_ 5) (apply gx#core-bind-extern!__% _g126379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g126379_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id123433%_
               _%e123434%_
               _%rebind?123435%_
               _%phi123436%_
               _%ctx123437%_)
        (gx#bind-identifier!__%
         _%id123433%_
         (let ((_%key123442%_ (gx#core-identifier-key _%id123433%_))
               (_%e123443%_
                (if (or (##structure-instance-of? _%e123434%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e123434%_
                         'gx#expander-context::t))
                    _%e123434%_
                    (##structure
                     gx#user-expander::t
                     _%e123434%_
                     _%ctx123437%_
                     _%phi123436%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key123442%_
             '#t
             _%phi123436%_
             _%ctx123437%_)
            _%key123442%_
            _%phi123436%_
            _%e123443%_))
         _%rebind?123435%_
         _%phi123436%_
         _%ctx123437%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id123448%_ _%e123449%_)
        (let* ((_%rebind?123451%_ '#f)
               (_%phi123453%_ (gx#current-expander-phi))
               (_%ctx123455%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123448%_
           _%e123449%_
           _%rebind?123451%_
           _%phi123453%_
           _%ctx123455%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id123457%_ _%e123458%_ _%rebind?123459%_)
        (let* ((_%phi123461%_ (gx#current-expander-phi))
               (_%ctx123463%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123457%_
           _%e123458%_
           _%rebind?123459%_
           _%phi123461%_
           _%ctx123463%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id123465%_ _%e123466%_ _%rebind?123467%_ _%phi123468%_)
        (let ((_%ctx123470%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123465%_
           _%e123466%_
           _%rebind?123467%_
           _%phi123468%_
           _%ctx123470%_))))
    (define gx#core-bind-syntax!
      (lambda _g126381_
        (let ((_g126380_ (##length _g126381_)))
          (cond ((##fx= _g126380_ 2) (apply gx#core-bind-syntax!__0 _g126381_))
                ((##fx= _g126380_ 3) (apply gx#core-bind-syntax!__1 _g126381_))
                ((##fx= _g126380_ 4) (apply gx#core-bind-syntax!__2 _g126381_))
                ((##fx= _g126380_ 5) (apply gx#core-bind-syntax!__% _g126381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g126381_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id123416%_ _%e123417%_ _%rebind?123418%_)
        (gx#core-bind-syntax!__%
         _%id123416%_
         _%e123417%_
         _%rebind?123418%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id123423%_ _%e123424%_)
        (let ((_%rebind?123426%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id123423%_
           _%e123424%_
           _%rebind?123426%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g126383_
        (let ((_g126382_ (##length _g126383_)))
          (cond ((##fx= _g126382_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g126383_))
                ((##fx= _g126382_ 3)
                 (apply gx#core-bind-root-syntax!__% _g126383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g126383_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id123374%_
               _%alias-id123375%_
               _%rebind?123376%_
               _%phi123377%_
               _%ctx123378%_)
        (gx#bind-identifier!__%
         _%id123374%_
         (let ((_%key123380%_ (gx#core-identifier-key _%id123374%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key123380%_
             '#t
             _%phi123377%_
             _%ctx123378%_)
            _%key123380%_
            _%phi123377%_
            _%alias-id123375%_))
         _%rebind?123376%_
         _%phi123377%_
         _%ctx123378%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id123385%_ _%alias-id123386%_)
        (let* ((_%rebind?123388%_ '#f)
               (_%phi123390%_ (gx#current-expander-phi))
               (_%ctx123392%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123385%_
           _%alias-id123386%_
           _%rebind?123388%_
           _%phi123390%_
           _%ctx123392%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id123394%_ _%alias-id123395%_ _%rebind?123396%_)
        (let* ((_%phi123398%_ (gx#current-expander-phi))
               (_%ctx123400%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123394%_
           _%alias-id123395%_
           _%rebind?123396%_
           _%phi123398%_
           _%ctx123400%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id123402%_ _%alias-id123403%_ _%rebind?123404%_ _%phi123405%_)
        (let ((_%ctx123407%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123402%_
           _%alias-id123403%_
           _%rebind?123404%_
           _%phi123405%_
           _%ctx123407%_))))
    (define gx#core-bind-alias!
      (lambda _g126385_
        (let ((_g126384_ (##length _g126385_)))
          (cond ((##fx= _g126384_ 2) (apply gx#core-bind-alias!__0 _g126385_))
                ((##fx= _g126384_ 3) (apply gx#core-bind-alias!__1 _g126385_))
                ((##fx= _g126384_ 4) (apply gx#core-bind-alias!__2 _g126385_))
                ((##fx= _g126384_ 5) (apply gx#core-bind-alias!__% _g126385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g126385_))))))
    (define gx#make-binding-id__%
      (lambda (_%key123324%_ _%syntax?123325%_ _%phi123326%_ _%ctx123327%_)
        (if (uninterned-symbol? _%key123324%_)
            (##gensym 'L)
            (if (pair? _%key123324%_)
                (gensym (##car _%key123324%_))
                (if (##structure-instance-of? _%ctx123327%_ 'gx#top-context::t)
                    (let ((_%ns123332%_
                           (gx#core-context-namespace__% _%ctx123327%_)))
                      (if (and (fxzero? _%phi123326%_) (not _%syntax?123325%_))
                          (if _%ns123332%_
                              (make-symbol__1 _%ns123332%_ '"#" _%key123324%_)
                              _%key123324%_)
                          (if _%syntax?123325%_
                              (make-symbol__1
                               (let ((_%$e123336%_ _%ns123332%_))
                                 (if _%$e123336%_ _%$e123336%_ '""))
                               '"[:"
                               (number->string _%phi123326%_)
                               '":]#"
                               _%key123324%_)
                              (make-symbol__1
                               (let ((_%$e123340%_ _%ns123332%_))
                                 (if _%$e123340%_ _%$e123340%_ '""))
                               '"["
                               (number->string _%phi123326%_)
                               '"]#"
                               _%key123324%_))))
                    (gensym _%key123324%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key123347%_)
        (let* ((_%syntax?123349%_ '#f)
               (_%phi123351%_ (gx#current-expander-phi))
               (_%ctx123353%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123347%_
           _%syntax?123349%_
           _%phi123351%_
           _%ctx123353%_))))
    (define gx#make-binding-id__1
      (lambda (_%key123355%_ _%syntax?123356%_)
        (let* ((_%phi123358%_ (gx#current-expander-phi))
               (_%ctx123360%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123355%_
           _%syntax?123356%_
           _%phi123358%_
           _%ctx123360%_))))
    (define gx#make-binding-id__2
      (lambda (_%key123362%_ _%syntax?123363%_ _%phi123364%_)
        (let ((_%ctx123366%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123362%_
           _%syntax?123363%_
           _%phi123364%_
           _%ctx123366%_))))
    (define gx#make-binding-id
      (lambda _g126387_
        (let ((_g126386_ (##length _g126387_)))
          (cond ((##fx= _g126386_ 1) (apply gx#make-binding-id__0 _g126387_))
                ((##fx= _g126386_ 2) (apply gx#make-binding-id__1 _g126387_))
                ((##fx= _g126386_ 3) (apply gx#make-binding-id__2 _g126387_))
                ((##fx= _g126386_ 4) (apply gx#make-binding-id__% _g126387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g126387_))))))))
