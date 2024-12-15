(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1734225194)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx126337%_)
        (letrec ((_%expand-special126339%_
                  (lambda (_%hd126341%_ _%K126342%_ _%rest126343%_ _%r126344%_)
                    (_%K126342%_
                     _%rest126343%_
                     (cons (gx#core-expand-top _%hd126341%_) _%r126344%_)))))
          (gx#core-expand-block__0 _%stx126337%_ _%expand-special126339%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx126090%_)
        (letrec ((_%expand-special126092%_
                  (lambda (_%hd126212%_ _%K126213%_ _%rest126214%_ _%r126215%_)
                    (let* ((_%K126219%_
                            (lambda (_%e126217%_)
                              (_%K126213%_
                               _%rest126214%_
                               (cons _%e126217%_ _%r126215%_))))
                           (_%e126220126249%_ _%hd126212%_)
                           (_%E126244126253%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126220126249%_)))
                           (_%E126240126265%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126220126249%_)
                                  (let ((_%e126245126257%_
                                         (gx#syntax-e _%e126220126249%_)))
                                    (let ((_%hd126246126260%_
                                           (##car _%e126245126257%_))
                                          (_%tl126247126262%_
                                           (##cdr _%e126245126257%_)))
                                      (if (and (gx#identifier?
                                                _%hd126246126260%_)
                                               (gx#core-identifier=?
                                                _%hd126246126260%_
                                                '%#define-runtime))
                                          (_%K126219%_
                                           (gx#core-expand-define-runtime%
                                            _%hd126212%_))
                                          (_%E126244126253%_))))
                                  (_%E126244126253%_))))
                           (_%E126236126277%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126220126249%_)
                                  (let ((_%e126241126269%_
                                         (gx#syntax-e _%e126220126249%_)))
                                    (let ((_%hd126242126272%_
                                           (##car _%e126241126269%_))
                                          (_%tl126243126274%_
                                           (##cdr _%e126241126269%_)))
                                      (if (and (gx#identifier?
                                                _%hd126242126272%_)
                                               (gx#core-identifier=?
                                                _%hd126242126272%_
                                                '%#define-alias))
                                          (_%K126219%_
                                           (gx#core-expand-define-alias%
                                            _%hd126212%_))
                                          (_%E126240126265%_))))
                                  (_%E126240126265%_))))
                           (_%E126226126289%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126220126249%_)
                                  (let ((_%e126237126281%_
                                         (gx#syntax-e _%e126220126249%_)))
                                    (let ((_%hd126238126284%_
                                           (##car _%e126237126281%_))
                                          (_%tl126239126286%_
                                           (##cdr _%e126237126281%_)))
                                      (if (and (gx#identifier?
                                                _%hd126238126284%_)
                                               (gx#core-identifier=?
                                                _%hd126238126284%_
                                                '%#define-syntax))
                                          (_%K126219%_
                                           (gx#core-expand-define-syntax%
                                            _%hd126212%_))
                                          (_%E126236126277%_))))
                                  (_%E126236126277%_))))
                           (_%E126222126321%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126220126249%_)
                                  (let ((_%e126227126293%_
                                         (gx#syntax-e _%e126220126249%_)))
                                    (let ((_%hd126228126296%_
                                           (##car _%e126227126293%_))
                                          (_%tl126229126298%_
                                           (##cdr _%e126227126293%_)))
                                      (if (and (gx#identifier?
                                                _%hd126228126296%_)
                                               (gx#core-identifier=?
                                                _%hd126228126296%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl126229126298%_)
                                              (let ((_%e126230126301%_
                                                     (gx#syntax-e
                                                      _%tl126229126298%_)))
                                                (let ((_%hd126231126304%_
                                                       (##car _%e126230126301%_))
                                                      (_%tl126232126306%_
                                                       (##cdr _%e126230126301%_)))
                                                  (let ((_%hd-bind126309%_
                                                         _%hd126231126304%_))
                                                    (if (gx#stx-pair?
                                                         _%tl126232126306%_)
                                                        (let ((_%e126233126311%_
                                                               (gx#syntax-e
                                                                _%tl126232126306%_)))
                                                          (let ((_%hd126234126314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e126233126311%_))
                        (_%tl126235126316%_ (##cdr _%e126233126311%_)))
                    (let ((_%expr126319%_ _%hd126234126314%_))
                      (if (gx#stx-null? _%tl126235126316%_)
                          (if (gx#core-bind-values? _%hd-bind126309%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126309%_)
                                (_%K126219%_ _%hd126212%_))
                              (_%E126226126289%_))
                          (_%E126226126289%_)))))
                (_%E126226126289%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126226126289%_))
                                          (_%E126226126289%_))))
                                  (_%E126226126289%_))))
                           (_%E126221126333%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126220126249%_)
                                  (let ((_%e126223126325%_
                                         (gx#syntax-e _%e126220126249%_)))
                                    (let ((_%hd126224126328%_
                                           (##car _%e126223126325%_))
                                          (_%tl126225126330%_
                                           (##cdr _%e126223126325%_)))
                                      (if (and (gx#identifier?
                                                _%hd126224126328%_)
                                               (gx#core-identifier=?
                                                _%hd126224126328%_
                                                '%#begin-syntax))
                                          (_%K126219%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd126212%_))
                                          (_%E126222126321%_))))
                                  (_%E126222126321%_)))))
                      (_%E126221126333%_))))
                 (_%eval-body126093%_
                  (lambda (_%rbody126101%_)
                    (let _%lp126103%_ ((_%rest126105%_ _%rbody126101%_)
                                       (_%body126106%_ '())
                                       (_%ebody126107%_ '()))
                      (let* ((_%rest126108126116%_ _%rest126105%_)
                             (_%else126110126124%_
                              (lambda ()
                                (values _%body126106%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody126107%_)
                                          (gx#stx-source _%stx126090%_))))))
                             (_%K126112126200%_
                              (lambda (_%rest126127%_ _%hd126128%_)
                                (let* ((_%e126129126146%_ _%hd126128%_)
                                       (_%E126141126150%_
                                        (lambda ()
                                          (_%lp126103%_
                                           _%rest126127%_
                                           (cons _%hd126128%_ _%body126106%_)
                                           (cons _%hd126128%_
                                                 _%ebody126107%_))))
                                       (_%E126131126162%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126129126146%_)
                                              (let ((_%e126142126154%_
                                                     (gx#syntax-e
                                                      _%e126129126146%_)))
                                                (let ((_%hd126143126157%_
                                                       (##car _%e126142126154%_))
                                                      (_%tl126144126159%_
                                                       (##cdr _%e126142126154%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126143126157%_)
                                                           (gx#core-identifier=?
                                                            _%hd126143126157%_
                                                            '%#begin-syntax))
                                                      (_%lp126103%_
                                                       _%rest126127%_
                                                       (cons _%hd126128%_
                                                             _%body126106%_)
                                                       _%ebody126107%_)
                                                      (_%E126141126150%_))))
                                              (_%E126141126150%_))))
                                       (_%E126130126196%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126129126146%_)
                                              (let ((_%e126132126166%_
                                                     (gx#syntax-e
                                                      _%e126129126146%_)))
                                                (let ((_%hd126133126169%_
                                                       (##car _%e126132126166%_))
                                                      (_%tl126134126171%_
                                                       (##cdr _%e126132126166%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126133126169%_)
                                                           (gx#core-identifier=?
                                                            _%hd126133126169%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl126134126171%_)
                                                          (let ((_%e126135126174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126134126171%_)))
                    (let ((_%hd126136126177%_ (##car _%e126135126174%_))
                          (_%tl126137126179%_ (##cdr _%e126135126174%_)))
                      (let ((_%hd-bind126182%_ _%hd126136126177%_))
                        (if (gx#stx-pair? _%tl126137126179%_)
                            (let ((_%e126138126184%_
                                   (gx#syntax-e _%tl126137126179%_)))
                              (let ((_%hd126139126187%_
                                     (##car _%e126138126184%_))
                                    (_%tl126140126189%_
                                     (##cdr _%e126138126184%_)))
                                (let ((_%expr126192%_ _%hd126139126187%_))
                                  (if (gx#stx-null? _%tl126140126189%_)
                                      (let ((_%ehd126194%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind126182%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr126192%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd126128%_))))
                                        (_%lp126103%_
                                         _%rest126127%_
                                         (cons _%ehd126194%_ _%body126106%_)
                                         (cons _%ehd126194%_ _%ebody126107%_)))
                                      (_%E126131126162%_)))))
                            (_%E126131126162%_)))))
                  (_%E126131126162%_))
              (_%E126131126162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126131126162%_)))))
                                  (_%E126130126196%_)))))
                        (if (pair? _%rest126108126116%_)
                            (let ((_%hd126113126203%_
                                   (##car _%rest126108126116%_))
                                  (_%tl126114126205%_
                                   (##cdr _%rest126108126116%_)))
                              (let* ((_%hd126208%_ _%hd126113126203%_)
                                     (_%rest126210%_ _%tl126114126205%_))
                                (_%K126112126200%_
                                 _%rest126210%_
                                 _%hd126208%_)))
                            (_%else126110126124%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody126096%_
                     (gx#core-expand-block__1
                      _%stx126090%_
                      _%expand-special126092%_
                      '#f))
                    (_g126360_ (_%eval-body126093%_ _%rbody126096%_)))
               (begin
                 (let ((_g126361_
                        (if (##values? _g126360_)
                            (##values-length _g126360_)
                            1)))
                   (if (not (##fx= _g126361_ 2))
                       (error "Context expects 2 values" _g126361_)))
                 (let ((_%expanded-body126098%_ (##values-ref _g126360_ 0))
                       (_%value126099%_ (##values-ref _g126360_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body126098%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value126099%_ '())))
                    (gx#stx-source _%stx126090%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx126060%_)
        (let* ((_%e126061126068%_ _%stx126060%_)
               (_%E126063126072%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126061126068%_)))
               (_%E126062126086%_
                (lambda ()
                  (if (gx#stx-pair? _%e126061126068%_)
                      (let ((_%e126064126076%_
                             (gx#syntax-e _%e126061126068%_)))
                        (let ((_%hd126065126079%_ (##car _%e126064126076%_))
                              (_%tl126066126081%_ (##cdr _%e126064126076%_)))
                          (let ((_%body126084%_ _%tl126066126081%_))
                            (if (gx#stx-list? _%body126084%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body126084%_)
                                 (gx#stx-source _%stx126060%_))
                                (_%E126063126072%_)))))
                      (_%E126063126072%_)))))
          (_%E126062126086%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx126058%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx126058%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx126004%_)
        (let* ((_%e126005126018%_ _%stx126004%_)
               (_%E126007126022%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126005126018%_)))
               (_%E126006126054%_
                (lambda ()
                  (if (gx#stx-pair? _%e126005126018%_)
                      (let ((_%e126008126026%_
                             (gx#syntax-e _%e126005126018%_)))
                        (let ((_%hd126009126029%_ (##car _%e126008126026%_))
                              (_%tl126010126031%_ (##cdr _%e126008126026%_)))
                          (if (gx#stx-pair? _%tl126010126031%_)
                              (let ((_%e126011126034%_
                                     (gx#syntax-e _%tl126010126031%_)))
                                (let ((_%hd126012126037%_
                                       (##car _%e126011126034%_))
                                      (_%tl126013126039%_
                                       (##cdr _%e126011126034%_)))
                                  (let ((_%ann126042%_ _%hd126012126037%_))
                                    (if (gx#stx-pair? _%tl126013126039%_)
                                        (let ((_%e126014126044%_
                                               (gx#syntax-e
                                                _%tl126013126039%_)))
                                          (let ((_%hd126015126047%_
                                                 (##car _%e126014126044%_))
                                                (_%tl126016126049%_
                                                 (##cdr _%e126014126044%_)))
                                            (let ((_%expr126052%_
                                                   _%hd126015126047%_))
                                              (if (gx#stx-null?
                                                   _%tl126016126049%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann126042%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr126052%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx126004%_))
                                                  (_%E126007126022%_)))))
                                        (_%E126007126022%_)))))
                              (_%E126007126022%_))))
                      (_%E126007126022%_)))))
          (_%E126006126054%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx125728%_ _%body125729%_)
        (letrec ((_%expand-special125731%_
                  (lambda (_%hd125999%_ _%K126000%_ _%rest126001%_ _%r126002%_)
                    (_%K126000%_
                     '()
                     (cons (_%expand-internal125732%_
                            _%hd125999%_
                            _%rest126001%_)
                           _%r126002%_))))
                 (_%expand-internal125732%_
                  (lambda (_%hd125995%_ _%rest125996%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal125734%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd125995%_ _%rest125996%_))
                          (gx#stx-source _%stx125728%_))
                         _%expand-internal-special125733%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj126354
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj126354)
                       __obj126354))))
                 (_%expand-internal-special125733%_
                  (lambda (_%hd125890%_ _%K125891%_ _%rest125892%_ _%r125893%_)
                    (let* ((_%e125894125919%_ _%hd125890%_)
                           (_%E125914125923%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125894125919%_)))
                           (_%E125910125935%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125894125919%_)
                                  (let ((_%e125915125927%_
                                         (gx#syntax-e _%e125894125919%_)))
                                    (let ((_%hd125916125930%_
                                           (##car _%e125915125927%_))
                                          (_%tl125917125932%_
                                           (##cdr _%e125915125927%_)))
                                      (if (and (gx#identifier?
                                                _%hd125916125930%_)
                                               (gx#core-identifier=?
                                                _%hd125916125930%_
                                                '%#declare))
                                          (_%K125891%_
                                           _%rest125892%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd125890%_)
                                                 _%r125893%_))
                                          (_%E125914125923%_))))
                                  (_%E125914125923%_))))
                           (_%E125906125947%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125894125919%_)
                                  (let ((_%e125911125939%_
                                         (gx#syntax-e _%e125894125919%_)))
                                    (let ((_%hd125912125942%_
                                           (##car _%e125911125939%_))
                                          (_%tl125913125944%_
                                           (##cdr _%e125911125939%_)))
                                      (if (and (gx#identifier?
                                                _%hd125912125942%_)
                                               (gx#core-identifier=?
                                                _%hd125912125942%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd125890%_)
                                            (_%K125891%_
                                             _%rest125892%_
                                             _%r125893%_))
                                          (_%E125910125935%_))))
                                  (_%E125910125935%_))))
                           (_%E125896125959%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125894125919%_)
                                  (let ((_%e125907125951%_
                                         (gx#syntax-e _%e125894125919%_)))
                                    (let ((_%hd125908125954%_
                                           (##car _%e125907125951%_))
                                          (_%tl125909125956%_
                                           (##cdr _%e125907125951%_)))
                                      (if (and (gx#identifier?
                                                _%hd125908125954%_)
                                               (gx#core-identifier=?
                                                _%hd125908125954%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd125890%_)
                                            (_%K125891%_
                                             _%rest125892%_
                                             _%r125893%_))
                                          (_%E125906125947%_))))
                                  (_%E125906125947%_))))
                           (_%E125895125991%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125894125919%_)
                                  (let ((_%e125897125963%_
                                         (gx#syntax-e _%e125894125919%_)))
                                    (let ((_%hd125898125966%_
                                           (##car _%e125897125963%_))
                                          (_%tl125899125968%_
                                           (##cdr _%e125897125963%_)))
                                      (if (and (gx#identifier?
                                                _%hd125898125966%_)
                                               (gx#core-identifier=?
                                                _%hd125898125966%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125899125968%_)
                                              (let ((_%e125900125971%_
                                                     (gx#syntax-e
                                                      _%tl125899125968%_)))
                                                (let ((_%hd125901125974%_
                                                       (##car _%e125900125971%_))
                                                      (_%tl125902125976%_
                                                       (##cdr _%e125900125971%_)))
                                                  (let ((_%hd-bind125979%_
                                                         _%hd125901125974%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125902125976%_)
                                                        (let ((_%e125903125981%_
                                                               (gx#syntax-e
                                                                _%tl125902125976%_)))
                                                          (let ((_%hd125904125984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125903125981%_))
                        (_%tl125905125986%_ (##cdr _%e125903125981%_)))
                    (let ((_%expr125989%_ _%hd125904125984%_))
                      (if (gx#stx-null? _%tl125905125986%_)
                          (if (gx#core-bind-values? _%hd-bind125979%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125979%_)
                                (_%K125891%_
                                 _%rest125892%_
                                 (cons _%hd125890%_ _%r125893%_)))
                              (_%E125896125959%_))
                          (_%E125896125959%_)))))
                (_%E125896125959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125896125959%_))
                                          (_%E125896125959%_))))
                                  (_%E125896125959%_)))))
                      (_%E125895125991%_))))
                 (_%wrap-internal125734%_
                  (lambda (_%rbody125736%_)
                    (let _%lp125738%_ ((_%rest125740%_ _%rbody125736%_)
                                       (_%decls125741%_ '())
                                       (_%bind125742%_ '())
                                       (_%body125743%_ '()))
                      (let* ((_%e125744125751%_ _%rest125740%_)
                             (_%E125746125800%_
                              (lambda ()
                                (let* ((_%body125795%_
                                        (let* ((_%body125754125764%_
                                                _%body125743%_)
                                               (_%else125757125772%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body125743%_)
                                                   (gx#stx-source
                                                    _%stx125728%_)))))
                                          (let ((_%K125762125792%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx125728%_)))
                                                (_%K125759125778%_
                                                 (lambda (_%expr125776%_)
                                                   _%expr125776%_)))
                                            (let ((_%try-match125756125788%_
                                                   (lambda ()
                                                     (if (pair? _%body125754125764%_)
                                                         (let ((_%tl125761125783%_
                                                                (##cdr _%body125754125764%_))
                                                               (_%hd125760125781%_
                                                                (##car _%body125754125764%_)))
                                                           (if (null? _%tl125761125783%_)
                                                               (let ((_%expr125786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd125760125781%_))
                         (_%K125759125778%_ _%expr125786%_))
                       (_%else125757125772%_)))
                 (_%else125757125772%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body125754125764%_)
                                                  (_%K125762125792%_)
                                                  (_%try-match125756125788%_))))))
                                       (_%body125797%_
                                        (if (null? _%bind125742%_)
                                            _%body125795%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind125742%_
                                                         (cons _%body125795%_
                                                               '())))
                                             (gx#stx-source _%stx125728%_)))))
                                  (if (null? _%decls125741%_)
                                      _%body125797%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls125741%_
                                                   (cons _%body125797%_ '())))
                                       (gx#stx-source _%stx125728%_))))))
                             (_%E125745125886%_
                              (lambda ()
                                (if (gx#stx-pair? _%e125744125751%_)
                                    (let ((_%e125747125804%_
                                           (gx#syntax-e _%e125744125751%_)))
                                      (let ((_%hd125748125807%_
                                             (##car _%e125747125804%_))
                                            (_%tl125749125809%_
                                             (##cdr _%e125747125804%_)))
                                        (let* ((_%hd125812%_
                                                _%hd125748125807%_)
                                               (_%rest125814%_
                                                _%tl125749125809%_)
                                               (_%e125815125832%_ _%hd125812%_)
                                               (_%E125827125836%_
                                                (lambda ()
                                                  (if (null? _%bind125742%_)
                                                      (_%lp125738%_
                                                       _%rest125814%_
                                                       _%decls125741%_
                                                       _%bind125742%_
                                                       (cons _%hd125812%_
                                                             _%body125743%_))
                                                      (_%lp125738%_
                                                       _%rest125814%_
                                                       _%decls125741%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd125812%_ '()))
                     _%bind125742%_)
               _%body125743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125817125850%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125815125832%_)
                                                      (let ((_%e125828125840%_
                                                             (gx#syntax-e
                                                              _%e125815125832%_)))
                                                        (let ((_%hd125829125843%_
                                                               (##car _%e125828125840%_))
                                                              (_%tl125830125845%_
                                                               (##cdr _%e125828125840%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125829125843%_)
                           (gx#core-identifier=?
                            _%hd125829125843%_
                            '%#declare))
                      (let ((_%xdecls125848%_ _%tl125830125845%_))
                        (_%lp125738%_
                         _%rest125814%_
                         (gx#stx-foldr cons _%decls125741%_ _%xdecls125848%_)
                         _%bind125742%_
                         _%body125743%_))
                      (_%E125827125836%_))))
              (_%E125827125836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125816125882%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125815125832%_)
                                                      (let ((_%e125818125854%_
                                                             (gx#syntax-e
                                                              _%e125815125832%_)))
                                                        (let ((_%hd125819125857%_
                                                               (##car _%e125818125854%_))
                                                              (_%tl125820125859%_
                                                               (##cdr _%e125818125854%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125819125857%_)
                           (gx#core-identifier=?
                            _%hd125819125857%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl125820125859%_)
                          (let ((_%e125821125862%_
                                 (gx#syntax-e _%tl125820125859%_)))
                            (let ((_%hd125822125865%_
                                   (##car _%e125821125862%_))
                                  (_%tl125823125867%_
                                   (##cdr _%e125821125862%_)))
                              (let ((_%hd-bind125870%_ _%hd125822125865%_))
                                (if (gx#stx-pair? _%tl125823125867%_)
                                    (let ((_%e125824125872%_
                                           (gx#syntax-e _%tl125823125867%_)))
                                      (let ((_%hd125825125875%_
                                             (##car _%e125824125872%_))
                                            (_%tl125826125877%_
                                             (##cdr _%e125824125872%_)))
                                        (let ((_%expr125880%_
                                               _%hd125825125875%_))
                                          (if (gx#stx-null? _%tl125826125877%_)
                                              (_%lp125738%_
                                               _%rest125814%_
                                               _%decls125741%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind125870%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr125880%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind125742%_)
                                               _%body125743%_)
                                              (_%E125817125850%_)))))
                                    (_%E125817125850%_)))))
                          (_%E125817125850%_))
                      (_%E125817125850%_))))
              (_%E125817125850%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E125816125882%_))))
                                    (_%E125746125800%_)))))
                        (_%E125745125886%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body125729%_)
            (gx#stx-source _%stx125728%_))
           _%expand-special125731%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx125666%_)
        (let* ((_%e125667125674%_ _%stx125666%_)
               (_%E125669125678%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125667125674%_)))
               (_%E125668125724%_
                (lambda ()
                  (if (gx#stx-pair? _%e125667125674%_)
                      (let ((_%e125670125682%_
                             (gx#syntax-e _%e125667125674%_)))
                        (let ((_%hd125671125685%_ (##car _%e125670125682%_))
                              (_%tl125672125687%_ (##cdr _%e125670125682%_)))
                          (let ((_%body125690%_ _%tl125672125687%_))
                            (if (gx#stx-list? _%body125690%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl125692%_)
                                     (let* ((_%e125693125700%_ _%decl125692%_)
                                            (_%E125695125704%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e125693125700%_)))
                                            (_%E125694125720%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e125693125700%_)
                                                   (let ((_%e125696125708%_
                                                          (gx#syntax-e
                                                           _%e125693125700%_)))
                                                     (let ((_%hd125697125711%_
                                                            (##car _%e125696125708%_))
                                                           (_%tl125698125713%_
                                                            (##cdr _%e125696125708%_)))
                                                       (let* ((_%head125716%_
                                                               _%hd125697125711%_)
                                                              (_%args125718%_
                                                               _%tl125698125713%_))
                                                         (if (gx#stx-list?
                                                              _%args125718%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl125692%_)
                                                             (_%E125695125704%_)))))
                                                   (_%E125695125704%_)))))
                                       (_%E125694125720%_)))
                                   _%body125690%_))
                                 (gx#stx-source _%stx125666%_))
                                (_%E125669125678%_)))))
                      (_%E125669125678%_)))))
          (_%E125668125724%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx125570%_)
        (let* ((_%e125571125578%_ _%stx125570%_)
               (_%E125573125582%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125571125578%_)))
               (_%E125572125662%_
                (lambda ()
                  (if (gx#stx-pair? _%e125571125578%_)
                      (let ((_%e125574125586%_
                             (gx#syntax-e _%e125571125578%_)))
                        (let ((_%hd125575125589%_ (##car _%e125574125586%_))
                              (_%tl125576125591%_ (##cdr _%e125574125586%_)))
                          (let ((_%body125594%_ _%tl125576125591%_))
                            (let _%lp125596%_ ((_%rest125598%_ _%body125594%_)
                                               (_%r125599%_ '()))
                              (let* ((_%e125600125614%_ _%rest125598%_)
                                     (_%E125612125618%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx125570%_)))
                                     (_%E125602125622%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e125600125614%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r125599%_))
                                             (gx#stx-source _%stx125570%_))
                                            (_%E125612125618%_))))
                                     (_%E125601125658%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e125600125614%_)
                                            (let ((_%e125603125626%_
                                                   (gx#syntax-e
                                                    _%e125600125614%_)))
                                              (let ((_%hd125604125629%_
                                                     (##car _%e125603125626%_))
                                                    (_%tl125605125631%_
                                                     (##cdr _%e125603125626%_)))
                                                (if (gx#stx-pair?
                                                     _%hd125604125629%_)
                                                    (let ((_%e125606125634%_
                                                           (gx#syntax-e
                                                            _%hd125604125629%_)))
                                                      (let ((_%hd125607125637%_
                                                             (##car _%e125606125634%_))
                                                            (_%tl125608125639%_
                                                             (##cdr _%e125606125634%_)))
                                                        (let ((_%id125642%_
                                                               _%hd125607125637%_))
                                                          (if (gx#stx-pair?
                                                               _%tl125608125639%_)
                                                              (let ((_%e125609125644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl125608125639%_)))
                        (let ((_%hd125610125647%_ (##car _%e125609125644%_))
                              (_%tl125611125649%_ (##cdr _%e125609125644%_)))
                          (let ((_%eid125652%_ _%hd125610125647%_))
                            (if (gx#stx-null? _%tl125611125649%_)
                                (let ((_%rest125654%_ _%tl125605125631%_))
                                  (if (and (gx#identifier? _%id125642%_)
                                           (gx#identifier? _%eid125652%_))
                                      (let ((_%eid125656%_
                                             (gx#stx-e _%eid125652%_)))
                                        (gx#core-bind-extern!__0
                                         _%id125642%_
                                         _%eid125656%_)
                                        (_%lp125596%_
                                         _%rest125654%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id125642%_)
                                                     (cons _%eid125656%_ '()))
                                               _%r125599%_)))
                                      (_%E125602125622%_)))
                                (_%E125602125622%_)))))
                      (_%E125602125622%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E125602125622%_))))
                                            (_%E125602125622%_)))))
                                (_%E125601125658%_))))))
                      (_%E125573125582%_)))))
          (_%E125572125662%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx125516%_)
        (let* ((_%e125517125530%_ _%stx125516%_)
               (_%E125519125534%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125517125530%_)))
               (_%E125518125566%_
                (lambda ()
                  (if (gx#stx-pair? _%e125517125530%_)
                      (let ((_%e125520125538%_
                             (gx#syntax-e _%e125517125530%_)))
                        (let ((_%hd125521125541%_ (##car _%e125520125538%_))
                              (_%tl125522125543%_ (##cdr _%e125520125538%_)))
                          (if (gx#stx-pair? _%tl125522125543%_)
                              (let ((_%e125523125546%_
                                     (gx#syntax-e _%tl125522125543%_)))
                                (let ((_%hd125524125549%_
                                       (##car _%e125523125546%_))
                                      (_%tl125525125551%_
                                       (##cdr _%e125523125546%_)))
                                  (let ((_%hd125554%_ _%hd125524125549%_))
                                    (if (gx#stx-pair? _%tl125525125551%_)
                                        (let ((_%e125526125556%_
                                               (gx#syntax-e
                                                _%tl125525125551%_)))
                                          (let ((_%hd125527125559%_
                                                 (##car _%e125526125556%_))
                                                (_%tl125528125561%_
                                                 (##cdr _%e125526125556%_)))
                                            (let ((_%expr125564%_
                                                   _%hd125527125559%_))
                                              (if (gx#stx-null?
                                                   _%tl125528125561%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd125554%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd125554%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd125554%_)
                             (cons (gx#core-expand-expression _%expr125564%_)
                                   '())))
                 (gx#stx-source _%stx125516%_)))
              (_%E125519125534%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125519125534%_)))))
                                        (_%E125519125534%_)))))
                              (_%E125519125534%_))))
                      (_%E125519125534%_)))))
          (_%E125518125566%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx125460%_)
        (let* ((_%e125461125474%_ _%stx125460%_)
               (_%E125463125478%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125461125474%_)))
               (_%E125462125512%_
                (lambda ()
                  (if (gx#stx-pair? _%e125461125474%_)
                      (let ((_%e125464125482%_
                             (gx#syntax-e _%e125461125474%_)))
                        (let ((_%hd125465125485%_ (##car _%e125464125482%_))
                              (_%tl125466125487%_ (##cdr _%e125464125482%_)))
                          (if (gx#stx-pair? _%tl125466125487%_)
                              (let ((_%e125467125490%_
                                     (gx#syntax-e _%tl125466125487%_)))
                                (let ((_%hd125468125493%_
                                       (##car _%e125467125490%_))
                                      (_%tl125469125495%_
                                       (##cdr _%e125467125490%_)))
                                  (let ((_%id125498%_ _%hd125468125493%_))
                                    (if (gx#stx-pair? _%tl125469125495%_)
                                        (let ((_%e125470125500%_
                                               (gx#syntax-e
                                                _%tl125469125495%_)))
                                          (let ((_%hd125471125503%_
                                                 (##car _%e125470125500%_))
                                                (_%tl125472125505%_
                                                 (##cdr _%e125470125500%_)))
                                            (let ((_%binding-id125508%_
                                                   _%hd125471125503%_))
                                              (if (gx#stx-null?
                                                   _%tl125472125505%_)
                                                  (if (and (gx#identifier?
                                                            _%id125498%_)
                                                           (gx#identifier?
                                                            _%binding-id125508%_))
                                                      (let ((_%eid125510%_
                                                             (gx#stx-e
                                                              _%binding-id125508%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id125498%_
                                                         _%eid125510%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125498%_)
                             (cons _%eid125510%_ '())))))
              (_%E125463125478%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125463125478%_)))))
                                        (_%E125463125478%_)))))
                              (_%E125463125478%_))))
                      (_%E125463125478%_)))))
          (_%E125462125512%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx125403%_)
        (let* ((_%e125404125417%_ _%stx125403%_)
               (_%E125406125421%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125404125417%_)))
               (_%E125405125456%_
                (lambda ()
                  (if (gx#stx-pair? _%e125404125417%_)
                      (let ((_%e125407125425%_
                             (gx#syntax-e _%e125404125417%_)))
                        (let ((_%hd125408125428%_ (##car _%e125407125425%_))
                              (_%tl125409125430%_ (##cdr _%e125407125425%_)))
                          (if (gx#stx-pair? _%tl125409125430%_)
                              (let ((_%e125410125433%_
                                     (gx#syntax-e _%tl125409125430%_)))
                                (let ((_%hd125411125436%_
                                       (##car _%e125410125433%_))
                                      (_%tl125412125438%_
                                       (##cdr _%e125410125433%_)))
                                  (let ((_%id125441%_ _%hd125411125436%_))
                                    (if (gx#stx-pair? _%tl125412125438%_)
                                        (let ((_%e125413125443%_
                                               (gx#syntax-e
                                                _%tl125412125438%_)))
                                          (let ((_%hd125414125446%_
                                                 (##car _%e125413125443%_))
                                                (_%tl125415125448%_
                                                 (##cdr _%e125413125443%_)))
                                            (let ((_%expr125451%_
                                                   _%hd125414125446%_))
                                              (if (gx#stx-null?
                                                   _%tl125415125448%_)
                                                  (if (gx#identifier?
                                                       _%id125441%_)
                                                      (let ((_g126362_
                                                             (gx#core-expand-expression+1
                                                              _%expr125451%_)))
                                                        (begin
                                                          (let ((_g126363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g126362_)
                             (##values-length _g126362_)
                             1)))
                    (if (not (##fx= _g126363_ 2))
                        (error "Context expects 2 values" _g126363_)))
                  (let ((_%e-stx125453%_ (##values-ref _g126362_ 0))
                        (_%e125454%_ (##values-ref _g126362_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id125441%_ _%e125454%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id125441%_)
                                   (cons _%e-stx125453%_ '())))
                       (gx#stx-source _%stx125403%_))))))
              (_%E125406125421%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125406125421%_)))))
                                        (_%E125406125421%_)))))
                              (_%E125406125421%_))))
                      (_%E125406125421%_)))))
          (_%E125405125456%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx125347%_)
        (let* ((_%e125348125361%_ _%stx125347%_)
               (_%E125350125365%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125348125361%_)))
               (_%E125349125399%_
                (lambda ()
                  (if (gx#stx-pair? _%e125348125361%_)
                      (let ((_%e125351125369%_
                             (gx#syntax-e _%e125348125361%_)))
                        (let ((_%hd125352125372%_ (##car _%e125351125369%_))
                              (_%tl125353125374%_ (##cdr _%e125351125369%_)))
                          (if (gx#stx-pair? _%tl125353125374%_)
                              (let ((_%e125354125377%_
                                     (gx#syntax-e _%tl125353125374%_)))
                                (let ((_%hd125355125380%_
                                       (##car _%e125354125377%_))
                                      (_%tl125356125382%_
                                       (##cdr _%e125354125377%_)))
                                  (let ((_%id125385%_ _%hd125355125380%_))
                                    (if (gx#stx-pair? _%tl125356125382%_)
                                        (let ((_%e125357125387%_
                                               (gx#syntax-e
                                                _%tl125356125382%_)))
                                          (let ((_%hd125358125390%_
                                                 (##car _%e125357125387%_))
                                                (_%tl125359125392%_
                                                 (##cdr _%e125357125387%_)))
                                            (let ((_%alias-id125395%_
                                                   _%hd125358125390%_))
                                              (if (gx#stx-null?
                                                   _%tl125359125392%_)
                                                  (if (and (gx#identifier?
                                                            _%id125385%_)
                                                           (gx#identifier?
                                                            _%alias-id125395%_))
                                                      (let ((_%alias-id125397%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id125395%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id125385%_
                                                         _%alias-id125397%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125385%_)
                             (cons _%alias-id125397%_ '())))))
              (_%E125350125365%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125350125365%_)))))
                                        (_%E125350125365%_)))))
                              (_%E125350125365%_))))
                      (_%E125350125365%_)))))
          (_%E125349125399%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx125290%_ _%wrap?125291%_)
        (let* ((_%e125292125302%_ _%stx125290%_)
               (_%E125294125306%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125292125302%_)))
               (_%E125293125333%_
                (lambda ()
                  (if (gx#stx-pair? _%e125292125302%_)
                      (let ((_%e125295125310%_
                             (gx#syntax-e _%e125292125302%_)))
                        (let ((_%hd125296125313%_ (##car _%e125295125310%_))
                              (_%tl125297125315%_ (##cdr _%e125295125310%_)))
                          (if (gx#stx-pair? _%tl125297125315%_)
                              (let ((_%e125298125318%_
                                     (gx#syntax-e _%tl125297125315%_)))
                                (let ((_%hd125299125321%_
                                       (##car _%e125298125318%_))
                                      (_%tl125300125323%_
                                       (##cdr _%e125298125318%_)))
                                  (let* ((_%hd125326%_ _%hd125299125321%_)
                                         (_%body125328%_ _%tl125300125323%_))
                                    (if (gx#core-bind-values? _%hd125326%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd125326%_)
                                           (let ((_%body125331%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd125326%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx125290%_
                                                               _%body125328%_)
                                                              '()))))
                                             (if _%wrap?125291%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body125331%_)
                                                  (gx#stx-source
                                                   _%stx125290%_))
                                                 _%body125331%_)))
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
                                        (_%E125294125306%_)))))
                              (_%E125294125306%_))))
                      (_%E125294125306%_)))))
          (_%E125293125333%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx125340%_)
        (let ((_%wrap?125342%_ '#t))
          (gx#core-expand-lambda%__% _%stx125340%_ _%wrap?125342%_))))
    (define gx#core-expand-lambda%
      (lambda _g126365_
        (let ((_g126364_ (##length _g126365_)))
          (cond ((##fx= _g126364_ 1)
                 (apply gx#core-expand-lambda%__0 _g126365_))
                ((##fx= _g126364_ 2)
                 (apply gx#core-expand-lambda%__% _g126365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g126365_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx125254%_)
        (let* ((_%e125255125262%_ _%stx125254%_)
               (_%E125257125266%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125255125262%_)))
               (_%E125256125285%_
                (lambda ()
                  (if (gx#stx-pair? _%e125255125262%_)
                      (let ((_%e125258125270%_
                             (gx#syntax-e _%e125255125262%_)))
                        (let ((_%hd125259125273%_ (##car _%e125258125270%_))
                              (_%tl125260125275%_ (##cdr _%e125258125270%_)))
                          (let ((_%clauses125278%_ _%tl125260125275%_))
                            (if (gx#stx-list? _%clauses125278%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause125280%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause125280%_)
                                       (let ((_%$e125282%_
                                              (gx#stx-source
                                               _%clause125280%_)))
                                         (if _%$e125282%_
                                             _%$e125282%_
                                             (gx#stx-source _%stx125254%_))))
                                      '#f))
                                   _%clauses125278%_))
                                 (gx#stx-source _%stx125254%_))
                                (_%E125257125266%_)))))
                      (_%E125257125266%_)))))
          (_%E125256125285%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx125208%_)
        (let* ((_%e125209125219%_ _%stx125208%_)
               (_%E125211125223%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125209125219%_)))
               (_%E125210125250%_
                (lambda ()
                  (if (gx#stx-pair? _%e125209125219%_)
                      (let ((_%e125212125227%_
                             (gx#syntax-e _%e125209125219%_)))
                        (let ((_%hd125213125230%_ (##car _%e125212125227%_))
                              (_%tl125214125232%_ (##cdr _%e125212125227%_)))
                          (if (gx#stx-pair? _%tl125214125232%_)
                              (let ((_%e125215125235%_
                                     (gx#syntax-e _%tl125214125232%_)))
                                (let ((_%hd125216125238%_
                                       (##car _%e125215125235%_))
                                      (_%tl125217125240%_
                                       (##cdr _%e125215125235%_)))
                                  (let* ((_%hd125243%_ _%hd125216125238%_)
                                         (_%body125245%_ _%tl125217125240%_))
                                    (if (gx#core-expand-let-bind? _%hd125243%_)
                                        (let ((_%expressions125247%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd125243%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd125243%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd125243%_
                                                           _%expressions125247%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx125208%_
                         _%body125245%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx125208%_)))
                                           gx#current-expander-context
                                           (let ((__obj126356
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj126356)
                                             __obj126356)))
                                        (_%E125211125223%_)))))
                              (_%E125211125223%_))))
                      (_%E125211125223%_)))))
          (_%E125210125250%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx125153%_ _%form125154%_)
        (let* ((_%e125155125165%_ _%stx125153%_)
               (_%E125157125169%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125155125165%_)))
               (_%E125156125194%_
                (lambda ()
                  (if (gx#stx-pair? _%e125155125165%_)
                      (let ((_%e125158125173%_
                             (gx#syntax-e _%e125155125165%_)))
                        (let ((_%hd125159125176%_ (##car _%e125158125173%_))
                              (_%tl125160125178%_ (##cdr _%e125158125173%_)))
                          (if (gx#stx-pair? _%tl125160125178%_)
                              (let ((_%e125161125181%_
                                     (gx#syntax-e _%tl125160125178%_)))
                                (let ((_%hd125162125184%_
                                       (##car _%e125161125181%_))
                                      (_%tl125163125186%_
                                       (##cdr _%e125161125181%_)))
                                  (let* ((_%hd125189%_ _%hd125162125184%_)
                                         (_%body125191%_ _%tl125163125186%_))
                                    (if (gx#core-expand-let-bind? _%hd125189%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd125189%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form125154%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd125189%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd125189%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx125153%_
                                                               _%body125191%_)
                                                              '())))
                                            (gx#stx-source _%stx125153%_)))
                                         gx#current-expander-context
                                         (let ((__obj126357
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126357)
                                           __obj126357))
                                        (_%E125157125169%_)))))
                              (_%E125157125169%_))))
                      (_%E125157125169%_)))))
          (_%E125156125194%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx125201%_)
        (let ((_%form125203%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx125201%_ _%form125203%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g126367_
        (let ((_g126366_ (##length _g126367_)))
          (cond ((##fx= _g126366_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g126367_))
                ((##fx= _g126366_ 2)
                 (apply gx#core-expand-letrec-values%__% _g126367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g126367_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx125150%_)
        (gx#core-expand-letrec-values%__% _%stx125150%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx125107%_)
        (if (gx#stx-list? _%stx125107%_)
            (gx#stx-andmap
             (lambda (_%bind125109%_)
               (let* ((_%e125110125120%_ _%bind125109%_)
                      (_%E125112125124%_ (lambda () '#f))
                      (_%E125111125146%_
                       (lambda ()
                         (if (gx#stx-pair? _%e125110125120%_)
                             (let ((_%e125113125128%_
                                    (gx#syntax-e _%e125110125120%_)))
                               (let ((_%hd125114125131%_
                                      (##car _%e125113125128%_))
                                     (_%tl125115125133%_
                                      (##cdr _%e125113125128%_)))
                                 (let ((_%hd125136%_ _%hd125114125131%_))
                                   (if (gx#stx-pair? _%tl125115125133%_)
                                       (let ((_%e125116125138%_
                                              (gx#syntax-e
                                               _%tl125115125133%_)))
                                         (let ((_%hd125117125141%_
                                                (##car _%e125116125138%_))
                                               (_%tl125118125143%_
                                                (##cdr _%e125116125138%_)))
                                           (if (gx#stx-null?
                                                _%tl125118125143%_)
                                               (gx#core-bind-values?
                                                _%hd125136%_)
                                               (_%E125112125124%_))))
                                       (_%E125112125124%_)))))
                             (_%E125112125124%_)))))
                 (_%E125111125146%_)))
             _%stx125107%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind125066%_)
        (let* ((_%e125067125077%_ _%bind125066%_)
               (_%E125069125081%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125067125077%_)))
               (_%E125068125103%_
                (lambda ()
                  (if (gx#stx-pair? _%e125067125077%_)
                      (let ((_%e125070125085%_
                             (gx#syntax-e _%e125067125077%_)))
                        (let ((_%hd125071125088%_ (##car _%e125070125085%_))
                              (_%tl125072125090%_ (##cdr _%e125070125085%_)))
                          (if (gx#stx-pair? _%tl125072125090%_)
                              (let ((_%e125073125093%_
                                     (gx#syntax-e _%tl125072125090%_)))
                                (let ((_%hd125074125096%_
                                       (##car _%e125073125093%_))
                                      (_%tl125075125098%_
                                       (##cdr _%e125073125093%_)))
                                  (let ((_%expr125101%_ _%hd125074125096%_))
                                    (if (gx#stx-null? _%tl125075125098%_)
                                        (gx#core-expand-expression
                                         _%expr125101%_)
                                        (_%E125069125081%_)))))
                              (_%E125069125081%_))))
                      (_%E125069125081%_)))))
          (_%E125068125103%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind125025%_)
        (let* ((_%e125026125036%_ _%bind125025%_)
               (_%E125028125040%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125026125036%_)))
               (_%E125027125062%_
                (lambda ()
                  (if (gx#stx-pair? _%e125026125036%_)
                      (let ((_%e125029125044%_
                             (gx#syntax-e _%e125026125036%_)))
                        (let ((_%hd125030125047%_ (##car _%e125029125044%_))
                              (_%tl125031125049%_ (##cdr _%e125029125044%_)))
                          (let ((_%hd125052%_ _%hd125030125047%_))
                            (if (gx#stx-pair? _%tl125031125049%_)
                                (let ((_%e125032125054%_
                                       (gx#syntax-e _%tl125031125049%_)))
                                  (let ((_%hd125033125057%_
                                         (##car _%e125032125054%_))
                                        (_%tl125034125059%_
                                         (##cdr _%e125032125054%_)))
                                    (if (gx#stx-null? _%tl125034125059%_)
                                        (gx#core-bind-values!__0 _%hd125052%_)
                                        (_%E125028125040%_))))
                                (_%E125028125040%_)))))
                      (_%E125028125040%_)))))
          (_%E125027125062%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind124983%_ _%expr124984%_)
        (let* ((_%e124985124995%_ _%bind124983%_)
               (_%E124987124999%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124985124995%_)))
               (_%E124986125021%_
                (lambda ()
                  (if (gx#stx-pair? _%e124985124995%_)
                      (let ((_%e124988125003%_
                             (gx#syntax-e _%e124985124995%_)))
                        (let ((_%hd124989125006%_ (##car _%e124988125003%_))
                              (_%tl124990125008%_ (##cdr _%e124988125003%_)))
                          (let ((_%hd125011%_ _%hd124989125006%_))
                            (if (gx#stx-pair? _%tl124990125008%_)
                                (let ((_%e124991125013%_
                                       (gx#syntax-e _%tl124990125008%_)))
                                  (let ((_%hd124992125016%_
                                         (##car _%e124991125013%_))
                                        (_%tl124993125018%_
                                         (##cdr _%e124991125013%_)))
                                    (if (gx#stx-null? _%tl124993125018%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd125011%_)
                                              (cons _%expr124984%_ '()))
                                        (_%E124987124999%_))))
                                (_%E124987124999%_)))))
                      (_%E124987124999%_)))))
          (_%E124986125021%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx124937%_)
        (let* ((_%e124938124948%_ _%stx124937%_)
               (_%E124940124952%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124938124948%_)))
               (_%E124939124979%_
                (lambda ()
                  (if (gx#stx-pair? _%e124938124948%_)
                      (let ((_%e124941124956%_
                             (gx#syntax-e _%e124938124948%_)))
                        (let ((_%hd124942124959%_ (##car _%e124941124956%_))
                              (_%tl124943124961%_ (##cdr _%e124941124956%_)))
                          (if (gx#stx-pair? _%tl124943124961%_)
                              (let ((_%e124944124964%_
                                     (gx#syntax-e _%tl124943124961%_)))
                                (let ((_%hd124945124967%_
                                       (##car _%e124944124964%_))
                                      (_%tl124946124969%_
                                       (##cdr _%e124944124964%_)))
                                  (let* ((_%hd124972%_ _%hd124945124967%_)
                                         (_%body124974%_ _%tl124946124969%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124972%_)
                                        (let ((_%expanders124976%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd124972%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd124972%_
                                              _%expanders124976%_)
                                             (gx#core-expand-local-block
                                              _%stx124937%_
                                              _%body124974%_))
                                           gx#current-expander-context
                                           (let ((__obj126358
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj126358)
                                             __obj126358)))
                                        (_%E124940124952%_)))))
                              (_%E124940124952%_))))
                      (_%E124940124952%_)))))
          (_%E124939124979%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx124886%_)
        (let* ((_%e124887124897%_ _%stx124886%_)
               (_%E124889124901%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124887124897%_)))
               (_%E124888124933%_
                (lambda ()
                  (if (gx#stx-pair? _%e124887124897%_)
                      (let ((_%e124890124905%_
                             (gx#syntax-e _%e124887124897%_)))
                        (let ((_%hd124891124908%_ (##car _%e124890124905%_))
                              (_%tl124892124910%_ (##cdr _%e124890124905%_)))
                          (if (gx#stx-pair? _%tl124892124910%_)
                              (let ((_%e124893124913%_
                                     (gx#syntax-e _%tl124892124910%_)))
                                (let ((_%hd124894124916%_
                                       (##car _%e124893124913%_))
                                      (_%tl124895124918%_
                                       (##cdr _%e124893124913%_)))
                                  (let* ((_%hd124921%_ _%hd124894124916%_)
                                         (_%body124923%_ _%tl124895124918%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124921%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd124921%_
                                            (make-list
                                             (gx#stx-length _%hd124921%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g124925124928%_
                                                     _%g124926124930%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g124925124928%_
                                               _%g124926124930%_
                                               '#t))
                                            _%hd124921%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd124921%_))
                                           (gx#core-expand-local-block
                                            _%stx124886%_
                                            _%body124923%_))
                                         gx#current-expander-context
                                         (let ((__obj126359
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126359)
                                           __obj126359))
                                        (_%E124889124901%_)))))
                              (_%E124889124901%_))))
                      (_%E124889124901%_)))))
          (_%E124888124933%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx124843%_)
        (if (gx#stx-list? _%stx124843%_)
            (gx#stx-andmap
             (lambda (_%bind124845%_)
               (let* ((_%e124846124856%_ _%bind124845%_)
                      (_%E124848124860%_ (lambda () '#f))
                      (_%E124847124882%_
                       (lambda ()
                         (if (gx#stx-pair? _%e124846124856%_)
                             (let ((_%e124849124864%_
                                    (gx#syntax-e _%e124846124856%_)))
                               (let ((_%hd124850124867%_
                                      (##car _%e124849124864%_))
                                     (_%tl124851124869%_
                                      (##cdr _%e124849124864%_)))
                                 (let ((_%hd124872%_ _%hd124850124867%_))
                                   (if (gx#stx-pair? _%tl124851124869%_)
                                       (let ((_%e124852124874%_
                                              (gx#syntax-e
                                               _%tl124851124869%_)))
                                         (let ((_%hd124853124877%_
                                                (##car _%e124852124874%_))
                                               (_%tl124854124879%_
                                                (##cdr _%e124852124874%_)))
                                           (if (gx#stx-null?
                                                _%tl124854124879%_)
                                               (gx#identifier? _%hd124872%_)
                                               (_%E124848124860%_))))
                                       (_%E124848124860%_)))))
                             (_%E124848124860%_)))))
                 (_%E124847124882%_)))
             _%stx124843%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind124799%_)
        (let* ((_%e124800124810%_ _%bind124799%_)
               (_%E124802124814%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124800124810%_)))
               (_%E124801124839%_
                (lambda ()
                  (if (gx#stx-pair? _%e124800124810%_)
                      (let ((_%e124803124818%_
                             (gx#syntax-e _%e124800124810%_)))
                        (let ((_%hd124804124821%_ (##car _%e124803124818%_))
                              (_%tl124805124823%_ (##cdr _%e124803124818%_)))
                          (if (gx#stx-pair? _%tl124805124823%_)
                              (let ((_%e124806124826%_
                                     (gx#syntax-e _%tl124805124823%_)))
                                (let ((_%hd124807124829%_
                                       (##car _%e124806124826%_))
                                      (_%tl124808124831%_
                                       (##cdr _%e124806124826%_)))
                                  (let ((_%expr124834%_ _%hd124807124829%_))
                                    (if (gx#stx-null? _%tl124808124831%_)
                                        (let ((_g126368_
                                               (gx#core-expand-expression+1
                                                _%expr124834%_)))
                                          (begin
                                            (let ((_g126369_
                                                   (if (##values? _g126368_)
                                                       (##values-length
                                                        _g126368_)
                                                       1)))
                                              (if (not (##fx= _g126369_ 2))
                                                  (error "Context expects 2 values"
                                                         _g126369_)))
                                            (let ((_%_124836%_
                                                   (##values-ref _g126368_ 0))
                                                  (_%e124837%_
                                                   (##values-ref _g126368_ 1)))
                                              _%e124837%_)))
                                        (_%E124802124814%_)))))
                              (_%E124802124814%_))))
                      (_%E124802124814%_)))))
          (_%E124801124839%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind124744%_ _%e124745%_ _%rebind?124746%_)
        (let* ((_%e124747124757%_ _%bind124744%_)
               (_%E124749124761%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124747124757%_)))
               (_%E124748124783%_
                (lambda ()
                  (if (gx#stx-pair? _%e124747124757%_)
                      (let ((_%e124750124765%_
                             (gx#syntax-e _%e124747124757%_)))
                        (let ((_%hd124751124768%_ (##car _%e124750124765%_))
                              (_%tl124752124770%_ (##cdr _%e124750124765%_)))
                          (let ((_%id124773%_ _%hd124751124768%_))
                            (if (gx#stx-pair? _%tl124752124770%_)
                                (let ((_%e124753124775%_
                                       (gx#syntax-e _%tl124752124770%_)))
                                  (let ((_%hd124754124778%_
                                         (##car _%e124753124775%_))
                                        (_%tl124755124780%_
                                         (##cdr _%e124753124775%_)))
                                    (if (gx#stx-null? _%tl124755124780%_)
                                        (gx#core-bind-syntax!__1
                                         _%id124773%_
                                         _%e124745%_
                                         _%rebind?124746%_)
                                        (_%E124749124761%_))))
                                (_%E124749124761%_)))))
                      (_%E124749124761%_)))))
          (_%E124748124783%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind124790%_ _%e124791%_)
        (let ((_%rebind?124793%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind124790%_
           _%e124791%_
           _%rebind?124793%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g126371_
        (let ((_g126370_ (##length _g126371_)))
          (cond ((##fx= _g126370_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g126371_))
                ((##fx= _g126370_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g126371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g126371_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx124702%_)
        (let* ((_%e124703124713%_ _%stx124702%_)
               (_%E124705124717%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124703124713%_)))
               (_%E124704124739%_
                (lambda ()
                  (if (gx#stx-pair? _%e124703124713%_)
                      (let ((_%e124706124721%_
                             (gx#syntax-e _%e124703124713%_)))
                        (let ((_%hd124707124724%_ (##car _%e124706124721%_))
                              (_%tl124708124726%_ (##cdr _%e124706124721%_)))
                          (if (gx#stx-pair? _%tl124708124726%_)
                              (let ((_%e124709124729%_
                                     (gx#syntax-e _%tl124708124726%_)))
                                (let ((_%hd124710124732%_
                                       (##car _%e124709124729%_))
                                      (_%tl124711124734%_
                                       (##cdr _%e124709124729%_)))
                                  (let ((_%expr124737%_ _%hd124710124732%_))
                                    (if (gx#stx-null? _%tl124711124734%_)
                                        (gx#core-expand-expression
                                         _%expr124737%_)
                                        (_%E124705124717%_)))))
                              (_%E124705124717%_))))
                      (_%E124705124717%_)))))
          (_%E124704124739%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx124661%_)
        (let* ((_%e124662124672%_ _%stx124661%_)
               (_%E124664124676%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124662124672%_)))
               (_%E124663124698%_
                (lambda ()
                  (if (gx#stx-pair? _%e124662124672%_)
                      (let ((_%e124665124680%_
                             (gx#syntax-e _%e124662124672%_)))
                        (let ((_%hd124666124683%_ (##car _%e124665124680%_))
                              (_%tl124667124685%_ (##cdr _%e124665124680%_)))
                          (if (gx#stx-pair? _%tl124667124685%_)
                              (let ((_%e124668124688%_
                                     (gx#syntax-e _%tl124667124685%_)))
                                (let ((_%hd124669124691%_
                                       (##car _%e124668124688%_))
                                      (_%tl124670124693%_
                                       (##cdr _%e124668124688%_)))
                                  (let ((_%e124696%_ _%hd124669124691%_))
                                    (if (gx#stx-null? _%tl124670124693%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e124696%_)
                                                     '()))
                                         (gx#stx-source _%stx124661%_))
                                        (_%E124664124676%_)))))
                              (_%E124664124676%_))))
                      (_%E124664124676%_)))))
          (_%E124663124698%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx124620%_)
        (let* ((_%e124621124631%_ _%stx124620%_)
               (_%E124623124635%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124621124631%_)))
               (_%E124622124657%_
                (lambda ()
                  (if (gx#stx-pair? _%e124621124631%_)
                      (let ((_%e124624124639%_
                             (gx#syntax-e _%e124621124631%_)))
                        (let ((_%hd124625124642%_ (##car _%e124624124639%_))
                              (_%tl124626124644%_ (##cdr _%e124624124639%_)))
                          (if (gx#stx-pair? _%tl124626124644%_)
                              (let ((_%e124627124647%_
                                     (gx#syntax-e _%tl124626124644%_)))
                                (let ((_%hd124628124650%_
                                       (##car _%e124627124647%_))
                                      (_%tl124629124652%_
                                       (##cdr _%e124627124647%_)))
                                  (let ((_%e124655%_ _%hd124628124650%_))
                                    (if (gx#stx-null? _%tl124629124652%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e124655%_)
                                                     '()))
                                         (gx#stx-source _%stx124620%_))
                                        (_%E124623124635%_)))))
                              (_%E124623124635%_))))
                      (_%E124623124635%_)))))
          (_%E124622124657%_))))
    (define gx#core-expand-call%
      (lambda (_%stx124577%_)
        (let* ((_%e124578124588%_ _%stx124577%_)
               (_%E124580124592%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124578124588%_)))
               (_%E124579124616%_
                (lambda ()
                  (if (gx#stx-pair? _%e124578124588%_)
                      (let ((_%e124581124596%_
                             (gx#syntax-e _%e124578124588%_)))
                        (let ((_%hd124582124599%_ (##car _%e124581124596%_))
                              (_%tl124583124601%_ (##cdr _%e124581124596%_)))
                          (if (gx#stx-pair? _%tl124583124601%_)
                              (let ((_%e124584124604%_
                                     (gx#syntax-e _%tl124583124601%_)))
                                (let ((_%hd124585124607%_
                                       (##car _%e124584124604%_))
                                      (_%tl124586124609%_
                                       (##cdr _%e124584124604%_)))
                                  (let* ((_%rator124612%_ _%hd124585124607%_)
                                         (_%args124614%_ _%tl124586124609%_))
                                    (if (gx#stx-list? _%args124614%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator124612%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args124614%_))
                                         (gx#stx-source _%stx124577%_))
                                        (_%E124580124592%_)))))
                              (_%E124580124592%_))))
                      (_%E124580124592%_)))))
          (_%E124579124616%_))))
    (define gx#core-expand-if%
      (lambda (_%stx124510%_)
        (let* ((_%e124511124527%_ _%stx124510%_)
               (_%E124513124531%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124511124527%_)))
               (_%E124512124573%_
                (lambda ()
                  (if (gx#stx-pair? _%e124511124527%_)
                      (let ((_%e124514124535%_
                             (gx#syntax-e _%e124511124527%_)))
                        (let ((_%hd124515124538%_ (##car _%e124514124535%_))
                              (_%tl124516124540%_ (##cdr _%e124514124535%_)))
                          (if (gx#stx-pair? _%tl124516124540%_)
                              (let ((_%e124517124543%_
                                     (gx#syntax-e _%tl124516124540%_)))
                                (let ((_%hd124518124546%_
                                       (##car _%e124517124543%_))
                                      (_%tl124519124548%_
                                       (##cdr _%e124517124543%_)))
                                  (let ((_%test124551%_ _%hd124518124546%_))
                                    (if (gx#stx-pair? _%tl124519124548%_)
                                        (let ((_%e124520124553%_
                                               (gx#syntax-e
                                                _%tl124519124548%_)))
                                          (let ((_%hd124521124556%_
                                                 (##car _%e124520124553%_))
                                                (_%tl124522124558%_
                                                 (##cdr _%e124520124553%_)))
                                            (let ((_%K124561%_
                                                   _%hd124521124556%_))
                                              (if (gx#stx-pair?
                                                   _%tl124522124558%_)
                                                  (let ((_%e124523124563%_
                                                         (gx#syntax-e
                                                          _%tl124522124558%_)))
                                                    (let ((_%hd124524124566%_
                                                           (##car _%e124523124563%_))
                                                          (_%tl124525124568%_
                                                           (##cdr _%e124523124563%_)))
                                                      (let ((_%E124571%_
                                                             _%hd124524124566%_))
                                                        (if (gx#stx-null?
                                                             _%tl124525124568%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test124551%_)
                                 (cons (gx#core-expand-expression _%K124561%_)
                                       (cons (gx#core-expand-expression
                                              _%E124571%_)
                                             '()))))
                     (gx#stx-source _%stx124510%_))
                    (_%E124513124531%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124513124531%_)))))
                                        (_%E124513124531%_)))))
                              (_%E124513124531%_))))
                      (_%E124513124531%_)))))
          (_%E124512124573%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx124469%_)
        (let* ((_%e124470124480%_ _%stx124469%_)
               (_%E124472124484%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124470124480%_)))
               (_%E124471124506%_
                (lambda ()
                  (if (gx#stx-pair? _%e124470124480%_)
                      (let ((_%e124473124488%_
                             (gx#syntax-e _%e124470124480%_)))
                        (let ((_%hd124474124491%_ (##car _%e124473124488%_))
                              (_%tl124475124493%_ (##cdr _%e124473124488%_)))
                          (if (gx#stx-pair? _%tl124475124493%_)
                              (let ((_%e124476124496%_
                                     (gx#syntax-e _%tl124475124493%_)))
                                (let ((_%hd124477124499%_
                                       (##car _%e124476124496%_))
                                      (_%tl124478124501%_
                                       (##cdr _%e124476124496%_)))
                                  (let ((_%id124504%_ _%hd124477124499%_))
                                    (if (gx#stx-null? _%tl124478124501%_)
                                        (if (gx#identifier? _%id124504%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id124504%_
                                                          _%stx124469%_)
                                                         '()))
                                             (gx#stx-source _%stx124469%_))
                                            (_%E124472124484%_))
                                        (_%E124472124484%_)))))
                              (_%E124472124484%_))))
                      (_%E124472124484%_)))))
          (_%E124471124506%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx124415%_)
        (let* ((_%e124416124429%_ _%stx124415%_)
               (_%E124418124433%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124416124429%_)))
               (_%E124417124465%_
                (lambda ()
                  (if (gx#stx-pair? _%e124416124429%_)
                      (let ((_%e124419124437%_
                             (gx#syntax-e _%e124416124429%_)))
                        (let ((_%hd124420124440%_ (##car _%e124419124437%_))
                              (_%tl124421124442%_ (##cdr _%e124419124437%_)))
                          (if (gx#stx-pair? _%tl124421124442%_)
                              (let ((_%e124422124445%_
                                     (gx#syntax-e _%tl124421124442%_)))
                                (let ((_%hd124423124448%_
                                       (##car _%e124422124445%_))
                                      (_%tl124424124450%_
                                       (##cdr _%e124422124445%_)))
                                  (let ((_%id124453%_ _%hd124423124448%_))
                                    (if (gx#stx-pair? _%tl124424124450%_)
                                        (let ((_%e124425124455%_
                                               (gx#syntax-e
                                                _%tl124424124450%_)))
                                          (let ((_%hd124426124458%_
                                                 (##car _%e124425124455%_))
                                                (_%tl124427124460%_
                                                 (##cdr _%e124425124455%_)))
                                            (let ((_%expr124463%_
                                                   _%hd124426124458%_))
                                              (if (gx#stx-null?
                                                   _%tl124427124460%_)
                                                  (if (gx#identifier?
                                                       _%id124453%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id124453%_
                            _%stx124415%_)
                           (cons (gx#core-expand-expression _%expr124463%_)
                                 '())))
               (gx#stx-source _%stx124415%_))
              (_%E124418124433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124418124433%_)))))
                                        (_%E124418124433%_)))))
                              (_%E124418124433%_))))
                      (_%E124418124433%_)))))
          (_%E124417124465%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx124260%_)
        (letrec ((_%generate124262%_
                  (lambda (_%body124292%_)
                    (let _%lp124294%_ ((_%rest124296%_ _%body124292%_)
                                       (_%ns124297%_
                                        (gx#core-context-namespace__0))
                                       (_%r124298%_ '()))
                      (let* ((_%e124299124314%_ _%rest124296%_)
                             (_%E124312124318%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e124299124314%_)))
                             (_%E124308124322%_
                              (lambda ()
                                (if (gx#stx-null? _%e124299124314%_)
                                    (reverse _%r124298%_)
                                    (_%E124312124318%_))))
                             (_%E124301124379%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124299124314%_)
                                    (let ((_%e124309124326%_
                                           (gx#syntax-e _%e124299124314%_)))
                                      (let ((_%hd124310124329%_
                                             (##car _%e124309124326%_))
                                            (_%tl124311124331%_
                                             (##cdr _%e124309124326%_)))
                                        (let* ((_%hd124334%_
                                                _%hd124310124329%_)
                                               (_%rest124336%_
                                                _%tl124311124331%_))
                                          (if (gx#identifier? _%hd124334%_)
                                              (_%lp124294%_
                                               _%rest124336%_
                                               _%ns124297%_
                                               (cons (cons _%hd124334%_
                                                           (cons (if _%ns124297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd124334%_
                              _%ns124297%_
                              '"#"
                              _%hd124334%_)
                             _%hd124334%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r124298%_))
                                              (let* ((_%e124337124347%_
                                                      _%hd124334%_)
                                                     (_%E124339124351%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e124337124347%_)))
                                                     (_%E124338124375%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e124337124347%_)
                                                            (let ((_%e124340124355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e124337124347%_)))
                      (let ((_%hd124341124358%_ (##car _%e124340124355%_))
                            (_%tl124342124360%_ (##cdr _%e124340124355%_)))
                        (let ((_%id124363%_ _%hd124341124358%_))
                          (if (gx#stx-pair? _%tl124342124360%_)
                              (let ((_%e124343124365%_
                                     (gx#syntax-e _%tl124342124360%_)))
                                (let ((_%hd124344124368%_
                                       (##car _%e124343124365%_))
                                      (_%tl124345124370%_
                                       (##cdr _%e124343124365%_)))
                                  (let ((_%eid124373%_ _%hd124344124368%_))
                                    (if (gx#stx-null? _%tl124345124370%_)
                                        (if (and (gx#identifier? _%id124363%_)
                                                 (gx#identifier?
                                                  _%eid124373%_))
                                            (_%lp124294%_
                                             _%rest124336%_
                                             _%ns124297%_
                                             (cons (cons _%id124363%_
                                                         (cons _%eid124373%_
                                                               '()))
                                                   _%r124298%_))
                                            (_%E124339124351%_))
                                        (_%E124339124351%_)))))
                              (_%E124339124351%_)))))
                    (_%E124339124351%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124338124375%_))))))
                                    (_%E124308124322%_))))
                             (_%E124300124411%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124299124314%_)
                                    (let ((_%e124302124383%_
                                           (gx#syntax-e _%e124299124314%_)))
                                      (let ((_%hd124303124386%_
                                             (##car _%e124302124383%_))
                                            (_%tl124304124388%_
                                             (##cdr _%e124302124383%_)))
                                        (if (eq? (gx#stx-e _%hd124303124386%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl124304124388%_)
                                                (let ((_%e124305124391%_
                                                       (gx#syntax-e
                                                        _%tl124304124388%_)))
                                                  (let ((_%hd124306124394%_
                                                         (##car _%e124305124391%_))
                                                        (_%tl124307124396%_
                                                         (##cdr _%e124305124391%_)))
                                                    (let* ((_%ns124399%_
                                                            _%hd124306124394%_)
                                                           (_%rest124401%_
                                                            _%tl124307124396%_)
                                                           (_%ns124409%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns124399%_)
                        (symbol->string (gx#stx-e _%ns124399%_))
                        (if (or (gx#stx-string? _%ns124399%_)
                                (gx#stx-false? _%ns124399%_))
                            (gx#stx-e _%ns124399%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx124260%_
                             _%ns124399%_)))))
              (_%lp124294%_ _%rest124401%_ _%ns124409%_ _%r124298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124301124379%_))
                                            (_%E124301124379%_))))
                                    (_%E124301124379%_)))))
                        (_%E124300124411%_))))))
          (let* ((_%e124263124270%_ _%stx124260%_)
                 (_%E124265124274%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124263124270%_)))
                 (_%E124264124288%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124263124270%_)
                        (let ((_%e124266124278%_
                               (gx#syntax-e _%e124263124270%_)))
                          (let ((_%hd124267124281%_ (##car _%e124266124278%_))
                                (_%tl124268124283%_ (##cdr _%e124266124278%_)))
                            (let ((_%body124286%_ _%tl124268124283%_))
                              (if (gx#stx-list? _%body124286%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate124262%_ _%body124286%_))
                                  (_%E124265124274%_)))))
                        (_%E124265124274%_)))))
            (_%E124264124288%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx124206%_)
        (let* ((_%e124207124220%_ _%stx124206%_)
               (_%E124209124224%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124207124220%_)))
               (_%E124208124256%_
                (lambda ()
                  (if (gx#stx-pair? _%e124207124220%_)
                      (let ((_%e124210124228%_
                             (gx#syntax-e _%e124207124220%_)))
                        (let ((_%hd124211124231%_ (##car _%e124210124228%_))
                              (_%tl124212124233%_ (##cdr _%e124210124228%_)))
                          (if (gx#stx-pair? _%tl124212124233%_)
                              (let ((_%e124213124236%_
                                     (gx#syntax-e _%tl124212124233%_)))
                                (let ((_%hd124214124239%_
                                       (##car _%e124213124236%_))
                                      (_%tl124215124241%_
                                       (##cdr _%e124213124236%_)))
                                  (let ((_%hd124244%_ _%hd124214124239%_))
                                    (if (gx#stx-pair? _%tl124215124241%_)
                                        (let ((_%e124216124246%_
                                               (gx#syntax-e
                                                _%tl124215124241%_)))
                                          (let ((_%hd124217124249%_
                                                 (##car _%e124216124246%_))
                                                (_%tl124218124251%_
                                                 (##cdr _%e124216124246%_)))
                                            (let ((_%expr124254%_
                                                   _%hd124217124249%_))
                                              (if (gx#stx-null?
                                                   _%tl124218124251%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd124244%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd124244%_)
                          (cons _%expr124254%_ '())))
              (_%E124209124224%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124209124224%_)))))
                                        (_%E124209124224%_)))))
                              (_%E124209124224%_))))
                      (_%E124209124224%_)))))
          (_%E124208124256%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx124152%_)
        (let* ((_%e124153124166%_ _%stx124152%_)
               (_%E124155124170%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124153124166%_)))
               (_%E124154124202%_
                (lambda ()
                  (if (gx#stx-pair? _%e124153124166%_)
                      (let ((_%e124156124174%_
                             (gx#syntax-e _%e124153124166%_)))
                        (let ((_%hd124157124177%_ (##car _%e124156124174%_))
                              (_%tl124158124179%_ (##cdr _%e124156124174%_)))
                          (if (gx#stx-pair? _%tl124158124179%_)
                              (let ((_%e124159124182%_
                                     (gx#syntax-e _%tl124158124179%_)))
                                (let ((_%hd124160124185%_
                                       (##car _%e124159124182%_))
                                      (_%tl124161124187%_
                                       (##cdr _%e124159124182%_)))
                                  (let ((_%hd124190%_ _%hd124160124185%_))
                                    (if (gx#stx-pair? _%tl124161124187%_)
                                        (let ((_%e124162124192%_
                                               (gx#syntax-e
                                                _%tl124161124187%_)))
                                          (let ((_%hd124163124195%_
                                                 (##car _%e124162124192%_))
                                                (_%tl124164124197%_
                                                 (##cdr _%e124162124192%_)))
                                            (let ((_%expr124200%_
                                                   _%hd124163124195%_))
                                              (if (gx#stx-null?
                                                   _%tl124164124197%_)
                                                  (if (gx#identifier?
                                                       _%hd124190%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd124190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr124200%_ '())))
              (_%E124155124170%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124155124170%_)))))
                                        (_%E124155124170%_)))))
                              (_%E124155124170%_))))
                      (_%E124155124170%_)))))
          (_%E124154124202%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx124098%_)
        (let* ((_%e124099124112%_ _%stx124098%_)
               (_%E124101124116%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124099124112%_)))
               (_%E124100124148%_
                (lambda ()
                  (if (gx#stx-pair? _%e124099124112%_)
                      (let ((_%e124102124120%_
                             (gx#syntax-e _%e124099124112%_)))
                        (let ((_%hd124103124123%_ (##car _%e124102124120%_))
                              (_%tl124104124125%_ (##cdr _%e124102124120%_)))
                          (if (gx#stx-pair? _%tl124104124125%_)
                              (let ((_%e124105124128%_
                                     (gx#syntax-e _%tl124104124125%_)))
                                (let ((_%hd124106124131%_
                                       (##car _%e124105124128%_))
                                      (_%tl124107124133%_
                                       (##cdr _%e124105124128%_)))
                                  (let ((_%id124136%_ _%hd124106124131%_))
                                    (if (gx#stx-pair? _%tl124107124133%_)
                                        (let ((_%e124108124138%_
                                               (gx#syntax-e
                                                _%tl124107124133%_)))
                                          (let ((_%hd124109124141%_
                                                 (##car _%e124108124138%_))
                                                (_%tl124110124143%_
                                                 (##cdr _%e124108124138%_)))
                                            (let ((_%alias-id124146%_
                                                   _%hd124109124141%_))
                                              (if (gx#stx-null?
                                                   _%tl124110124143%_)
                                                  (if (and (gx#identifier?
                                                            _%id124136%_)
                                                           (gx#identifier?
                                                            _%alias-id124146%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id124136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id124146%_ '())))
              (_%E124101124116%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124101124116%_)))))
                                        (_%E124101124116%_)))))
                              (_%E124101124116%_))))
                      (_%E124101124116%_)))))
          (_%E124100124148%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx124055%_)
        (let* ((_%e124056124066%_ _%stx124055%_)
               (_%E124058124070%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124056124066%_)))
               (_%E124057124094%_
                (lambda ()
                  (if (gx#stx-pair? _%e124056124066%_)
                      (let ((_%e124059124074%_
                             (gx#syntax-e _%e124056124066%_)))
                        (let ((_%hd124060124077%_ (##car _%e124059124074%_))
                              (_%tl124061124079%_ (##cdr _%e124059124074%_)))
                          (if (gx#stx-pair? _%tl124061124079%_)
                              (let ((_%e124062124082%_
                                     (gx#syntax-e _%tl124061124079%_)))
                                (let ((_%hd124063124085%_
                                       (##car _%e124062124082%_))
                                      (_%tl124064124087%_
                                       (##cdr _%e124062124082%_)))
                                  (let* ((_%hd124090%_ _%hd124063124085%_)
                                         (_%body124092%_ _%tl124064124087%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd124090%_)
                                             (gx#stx-list? _%body124092%_)
                                             (not (gx#stx-null?
                                                   _%body124092%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd124090%_)
                                         _%body124092%_)
                                        (_%E124058124070%_)))))
                              (_%E124058124070%_))))
                      (_%E124058124070%_)))))
          (_%E124057124094%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx123991%_)
        (letrec ((_%generate123993%_
                  (lambda (_%clause124023%_)
                    (let* ((_%e124024124031%_ _%clause124023%_)
                           (_%E124026124035%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx123991%_
                               _%clause124023%_)))
                           (_%E124025124051%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124024124031%_)
                                  (let ((_%e124027124039%_
                                         (gx#syntax-e _%e124024124031%_)))
                                    (let ((_%hd124028124042%_
                                           (##car _%e124027124039%_))
                                          (_%tl124029124044%_
                                           (##cdr _%e124027124039%_)))
                                      (let* ((_%hd124047%_ _%hd124028124042%_)
                                             (_%body124049%_
                                              _%tl124029124044%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd124047%_)
                                                 (gx#stx-list? _%body124049%_)
                                                 (not (gx#stx-null?
                                                       _%body124049%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd124047%_)
                                                   _%body124049%_)
                                             (gx#stx-source _%clause124023%_))
                                            (_%E124026124035%_)))))
                                  (_%E124026124035%_)))))
                      (_%E124025124051%_)))))
          (let* ((_%e123994124001%_ _%stx123991%_)
                 (_%E123996124005%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123994124001%_)))
                 (_%E123995124019%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123994124001%_)
                        (let ((_%e123997124009%_
                               (gx#syntax-e _%e123994124001%_)))
                          (let ((_%hd123998124012%_ (##car _%e123997124009%_))
                                (_%tl123999124014%_ (##cdr _%e123997124009%_)))
                            (let ((_%clauses124017%_ _%tl123999124014%_))
                              (if (gx#stx-list? _%clauses124017%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate123993%_
                                    _%clauses124017%_))
                                  (_%E123996124005%_)))))
                        (_%E123996124005%_)))))
            (_%E123995124019%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx123892%_ _%form123893%_)
        (letrec ((_%generate123895%_
                  (lambda (_%bind123938%_)
                    (let* ((_%e123939123949%_ _%bind123938%_)
                           (_%E123941123953%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx123892%_
                               _%bind123938%_)))
                           (_%E123940123977%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123939123949%_)
                                  (let ((_%e123942123957%_
                                         (gx#syntax-e _%e123939123949%_)))
                                    (let ((_%hd123943123960%_
                                           (##car _%e123942123957%_))
                                          (_%tl123944123962%_
                                           (##cdr _%e123942123957%_)))
                                      (let ((_%ids123965%_ _%hd123943123960%_))
                                        (if (gx#stx-pair? _%tl123944123962%_)
                                            (let ((_%e123945123967%_
                                                   (gx#syntax-e
                                                    _%tl123944123962%_)))
                                              (let ((_%hd123946123970%_
                                                     (##car _%e123945123967%_))
                                                    (_%tl123947123972%_
                                                     (##cdr _%e123945123967%_)))
                                                (let ((_%expr123975%_
                                                       _%hd123946123970%_))
                                                  (if (gx#stx-null?
                                                       _%tl123947123972%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids123965%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids123965%_)
                        (cons _%expr123975%_ '()))
                  (_%E123941123953%_))
              (_%E123941123953%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E123941123953%_)))))
                                  (_%E123941123953%_)))))
                      (_%E123940123977%_)))))
          (let* ((_%e123896123906%_ _%stx123892%_)
                 (_%E123898123910%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123896123906%_)))
                 (_%E123897123934%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123896123906%_)
                        (let ((_%e123899123914%_
                               (gx#syntax-e _%e123896123906%_)))
                          (let ((_%hd123900123917%_ (##car _%e123899123914%_))
                                (_%tl123901123919%_ (##cdr _%e123899123914%_)))
                            (if (gx#stx-pair? _%tl123901123919%_)
                                (let ((_%e123902123922%_
                                       (gx#syntax-e _%tl123901123919%_)))
                                  (let ((_%hd123903123925%_
                                         (##car _%e123902123922%_))
                                        (_%tl123904123927%_
                                         (##cdr _%e123902123922%_)))
                                    (let* ((_%hd123930%_ _%hd123903123925%_)
                                           (_%body123932%_ _%tl123904123927%_))
                                      (if (and (gx#stx-list? _%hd123930%_)
                                               (gx#stx-list? _%body123932%_)
                                               (not (gx#stx-null?
                                                     _%body123932%_)))
                                          (gx#core-cons*
                                           _%form123893%_
                                           (gx#stx-map1
                                            _%generate123895%_
                                            _%hd123930%_)
                                           _%body123932%_)
                                          (_%E123898123910%_)))))
                                (_%E123898123910%_))))
                        (_%E123898123910%_)))))
            (_%E123897123934%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx123984%_)
        (let ((_%form123986%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx123984%_ _%form123986%_))))
    (define gx#macro-expand-let-values
      (lambda _g126373_
        (let ((_g126372_ (##length _g126373_)))
          (cond ((##fx= _g126372_ 1)
                 (apply gx#macro-expand-let-values__0 _g126373_))
                ((##fx= _g126372_ 2)
                 (apply gx#macro-expand-let-values__% _g126373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g126373_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx123889%_)
        (gx#macro-expand-let-values__% _%stx123889%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx123887%_)
        (gx#macro-expand-let-values__% _%stx123887%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx123778%_)
        (let* ((_%e123779123805%_ _%stx123778%_)
               (_%E123791123809%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123779123805%_)))
               (_%E123781123851%_
                (lambda ()
                  (if (gx#stx-pair? _%e123779123805%_)
                      (let ((_%e123792123813%_
                             (gx#syntax-e _%e123779123805%_)))
                        (let ((_%hd123793123816%_ (##car _%e123792123813%_))
                              (_%tl123794123818%_ (##cdr _%e123792123813%_)))
                          (if (gx#stx-pair? _%tl123794123818%_)
                              (let ((_%e123795123821%_
                                     (gx#syntax-e _%tl123794123818%_)))
                                (let ((_%hd123796123824%_
                                       (##car _%e123795123821%_))
                                      (_%tl123797123826%_
                                       (##cdr _%e123795123821%_)))
                                  (let ((_%test123829%_ _%hd123796123824%_))
                                    (if (gx#stx-pair? _%tl123797123826%_)
                                        (let ((_%e123798123831%_
                                               (gx#syntax-e
                                                _%tl123797123826%_)))
                                          (let ((_%hd123799123834%_
                                                 (##car _%e123798123831%_))
                                                (_%tl123800123836%_
                                                 (##cdr _%e123798123831%_)))
                                            (let ((_%K123839%_
                                                   _%hd123799123834%_))
                                              (if (gx#stx-pair?
                                                   _%tl123800123836%_)
                                                  (let ((_%e123801123841%_
                                                         (gx#syntax-e
                                                          _%tl123800123836%_)))
                                                    (let ((_%hd123802123844%_
                                                           (##car _%e123801123841%_))
                                                          (_%tl123803123846%_
                                                           (##cdr _%e123801123841%_)))
                                                      (let ((_%E123849%_
                                                             _%hd123802123844%_))
                                                        (if (gx#stx-null?
                                                             _%tl123803123846%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test123829%_
                                                             _%K123839%_
                                                             _%E123849%_)
                                                            (_%E123791123809%_)))))
                                                  (_%E123791123809%_)))))
                                        (_%E123791123809%_)))))
                              (_%E123791123809%_))))
                      (_%E123791123809%_))))
               (_%E123780123883%_
                (lambda ()
                  (if (gx#stx-pair? _%e123779123805%_)
                      (let ((_%e123782123855%_
                             (gx#syntax-e _%e123779123805%_)))
                        (let ((_%hd123783123858%_ (##car _%e123782123855%_))
                              (_%tl123784123860%_ (##cdr _%e123782123855%_)))
                          (if (gx#stx-pair? _%tl123784123860%_)
                              (let ((_%e123785123863%_
                                     (gx#syntax-e _%tl123784123860%_)))
                                (let ((_%hd123786123866%_
                                       (##car _%e123785123863%_))
                                      (_%tl123787123868%_
                                       (##cdr _%e123785123863%_)))
                                  (let ((_%test123871%_ _%hd123786123866%_))
                                    (if (gx#stx-pair? _%tl123787123868%_)
                                        (let ((_%e123788123873%_
                                               (gx#syntax-e
                                                _%tl123787123868%_)))
                                          (let ((_%hd123789123876%_
                                                 (##car _%e123788123873%_))
                                                (_%tl123790123878%_
                                                 (##cdr _%e123788123873%_)))
                                            (let ((_%K123881%_
                                                   _%hd123789123876%_))
                                              (if (gx#stx-null?
                                                   _%tl123790123878%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test123871%_
                                                   _%K123881%_
                                                   '#!void)
                                                  (_%E123781123851%_)))))
                                        (_%E123781123851%_)))))
                              (_%E123781123851%_))))
                      (_%E123781123851%_)))))
          (_%E123780123883%_))))
    (define gx#free-identifier=?
      (lambda (_%xid123763%_ _%yid123764%_)
        (let ((_%xe123766%_ (gx#resolve-identifier__0 _%xid123763%_))
              (_%ye123767%_ (gx#resolve-identifier__0 _%yid123764%_)))
          (if (and _%xe123766%_ _%ye123767%_)
              (let ((_%$e123770%_ (eq? _%xe123766%_ _%ye123767%_)))
                (if _%$e123770%_
                    _%$e123770%_
                    (if (##structure-instance-of? _%xe123766%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye123767%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe123766%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye123767%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe123766%_ _%ye123767%_)
                  '#f
                  (gx#stx-eq? _%xid123763%_ _%yid123764%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid123744%_ _%yid123745%_)
        (letrec ((_%context123747%_
                  (lambda (_%e123761%_)
                    (if (##structure-direct-instance-of?
                         _%e123761%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e123761%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks123748%_
                  (lambda (_%e123756%_)
                    (if (symbol? _%e123756%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e123756%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e123756%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e123756%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap123749%_
                  (lambda (_%e123754%_)
                    (if (symbol? _%e123754%_)
                        _%e123754%_
                        (gx#syntax-local-unwrap _%e123754%_)))))
          (let ((_%x123751%_ (_%unwrap123749%_ _%xid123744%_))
                (_%y123752%_ (_%unwrap123749%_ _%yid123745%_)))
            (if (gx#stx-eq? _%x123751%_ _%y123752%_)
                (if (eq? (_%context123747%_ _%x123751%_)
                         (_%context123747%_ _%y123752%_))
                    (equal? (_%marks123748%_ _%x123751%_)
                            (_%marks123748%_ _%y123752%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx123742%_)
        (if (gx#identifier? _%stx123742%_)
            (gx#core-identifier=? _%stx123742%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx123740%_)
        (if (gx#identifier? _%stx123740%_)
            (gx#core-identifier=? _%stx123740%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx123683%_ _%where123684%_)
        (let _%lp123686%_ ((_%rest123688%_ (gx#syntax->list _%stx123683%_)))
          (let* ((_%rest123689123697%_ _%rest123688%_)
                 (_%else123691123705%_ (lambda () '#t))
                 (_%K123693123718%_
                  (lambda (_%rest123708%_ _%hd123709%_)
                    (if (gx#identifier? _%hd123709%_)
                        (if (__find (lambda (_%g123711123713%_)
                                      (gx#bound-identifier=?
                                       _%g123711123713%_
                                       _%hd123709%_))
                                    _%rest123708%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where123684%_
                             _%hd123709%_)
                            (_%lp123686%_ _%rest123708%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where123684%_
                         _%hd123709%_)))))
            (if (pair? _%rest123689123697%_)
                (let ((_%hd123694123721%_ (##car _%rest123689123697%_))
                      (_%tl123695123723%_ (##cdr _%rest123689123697%_)))
                  (let* ((_%hd123726%_ _%hd123694123721%_)
                         (_%rest123728%_ _%tl123695123723%_))
                    (_%K123693123718%_ _%rest123728%_ _%hd123726%_)))
                (_%else123691123705%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx123733%_)
        (let ((_%where123735%_ _%stx123733%_))
          (gx#check-duplicate-identifiers__% _%stx123733%_ _%where123735%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g126375_
        (let ((_g126374_ (##length _g126375_)))
          (cond ((##fx= _g126374_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g126375_))
                ((##fx= _g126374_ 2)
                 (apply gx#check-duplicate-identifiers__% _g126375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g126375_))))))
    (define gx#core-bind-values?
      (lambda (_%stx123675%_)
        (gx#stx-andmap
         (lambda (_%x123677%_)
           (let ((_%$e123679%_ (gx#identifier? _%x123677%_)))
             (if _%$e123679%_ _%$e123679%_ (gx#stx-false? _%x123677%_))))
         _%stx123675%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx123639%_ _%rebind?123640%_ _%phi123641%_ _%ctx123642%_)
        (gx#stx-for-each1
         (lambda (_%id123644%_)
           (if (gx#identifier? _%id123644%_)
               (gx#core-bind-runtime!__%
                _%id123644%_
                _%rebind?123640%_
                _%phi123641%_
                _%ctx123642%_)
               '#!void))
         _%stx123639%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx123649%_)
        (let* ((_%rebind?123651%_ '#f)
               (_%phi123653%_ (gx#current-expander-phi))
               (_%ctx123655%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123649%_
           _%rebind?123651%_
           _%phi123653%_
           _%ctx123655%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx123657%_ _%rebind?123658%_)
        (let* ((_%phi123660%_ (gx#current-expander-phi))
               (_%ctx123662%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123657%_
           _%rebind?123658%_
           _%phi123660%_
           _%ctx123662%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx123664%_ _%rebind?123665%_ _%phi123666%_)
        (let ((_%ctx123668%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123664%_
           _%rebind?123665%_
           _%phi123666%_
           _%ctx123668%_))))
    (define gx#core-bind-values!
      (lambda _g126377_
        (let ((_g126376_ (##length _g126377_)))
          (cond ((##fx= _g126376_ 1) (apply gx#core-bind-values!__0 _g126377_))
                ((##fx= _g126376_ 2) (apply gx#core-bind-values!__1 _g126377_))
                ((##fx= _g126376_ 3) (apply gx#core-bind-values!__2 _g126377_))
                ((##fx= _g126376_ 4) (apply gx#core-bind-values!__% _g126377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g126377_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx123634%_)
        (gx#stx-map1
         (lambda (_%x123636%_)
           (if (gx#identifier? _%x123636%_)
               (gx#core-quote-syntax__0 _%x123636%_)
               '#f))
         _%stx123634%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx123627%_)
        (if (gx#identifier? _%stx123627%_)
            (let* ((_%bind123629%_ (gx#resolve-identifier__0 _%stx123627%_))
                   (_%$e123631%_ (not _%bind123629%_)))
              (if _%$e123631%_
                  _%$e123631%_
                  (##structure-instance-of?
                   _%bind123629%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id123616%_ _%form123617%_)
        (let ((_%bind123619%_ (gx#resolve-identifier__0 _%id123616%_)))
          (if (##structure-instance-of? _%bind123619%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id123616%_)
              (if (not _%bind123619%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id123616%_)))
                      (gx#core-quote-syntax__0 _%id123616%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form123617%_
                       _%id123616%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form123617%_
                   _%id123616%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id123571%_ _%rebind?123572%_ _%phi123573%_ _%ctx123574%_)
        (let* ((_%key123576%_ (gx#core-identifier-key _%id123571%_))
               (_%eid123578%_
                (gx#make-binding-id__%
                 _%key123576%_
                 '#f
                 _%phi123573%_
                 _%ctx123574%_))
               (_%bind123584%_
                (if (##structure-instance-of?
                     _%ctx123574%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid123578%_
                     _%key123576%_
                     _%phi123573%_
                     _%ctx123574%_)
                    (if (##structure-instance-of?
                         _%ctx123574%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid123578%_
                         _%key123576%_
                         _%phi123573%_)
                        (if (##structure-instance-of?
                             _%ctx123574%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid123578%_
                             _%key123576%_
                             _%phi123573%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid123578%_
                             _%key123576%_
                             _%phi123573%_))))))
          (gx#bind-identifier!__%
           _%id123571%_
           _%bind123584%_
           _%rebind?123572%_
           _%phi123573%_
           _%ctx123574%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id123590%_)
        (let* ((_%rebind?123592%_ '#f)
               (_%phi123594%_ (gx#current-expander-phi))
               (_%ctx123596%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123590%_
           _%rebind?123592%_
           _%phi123594%_
           _%ctx123596%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id123598%_ _%rebind?123599%_)
        (let* ((_%phi123601%_ (gx#current-expander-phi))
               (_%ctx123603%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123598%_
           _%rebind?123599%_
           _%phi123601%_
           _%ctx123603%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id123605%_ _%rebind?123606%_ _%phi123607%_)
        (let ((_%ctx123609%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123605%_
           _%rebind?123606%_
           _%phi123607%_
           _%ctx123609%_))))
    (define gx#core-bind-runtime!
      (lambda _g126379_
        (let ((_g126378_ (##length _g126379_)))
          (cond ((##fx= _g126378_ 1)
                 (apply gx#core-bind-runtime!__0 _g126379_))
                ((##fx= _g126378_ 2)
                 (apply gx#core-bind-runtime!__1 _g126379_))
                ((##fx= _g126378_ 3)
                 (apply gx#core-bind-runtime!__2 _g126379_))
                ((##fx= _g126378_ 4)
                 (apply gx#core-bind-runtime!__% _g126379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g126379_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id123523%_
               _%eid123524%_
               _%rebind?123525%_
               _%phi123526%_
               _%ctx123527%_)
        (let* ((_%key123529%_ (gx#core-identifier-key _%id123523%_))
               (_%bind123534%_
                (if (##structure-instance-of?
                     _%ctx123527%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid123524%_
                     _%key123529%_
                     _%phi123526%_
                     _%ctx123527%_)
                    (if (##structure-instance-of?
                         _%ctx123527%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid123524%_
                         _%key123529%_
                         _%phi123526%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid123524%_
                         _%key123529%_
                         _%phi123526%_)))))
          (gx#bind-identifier!__%
           _%id123523%_
           _%bind123534%_
           _%rebind?123525%_
           _%phi123526%_
           _%ctx123527%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id123540%_ _%eid123541%_)
        (let* ((_%rebind?123543%_ '#f)
               (_%phi123545%_ (gx#current-expander-phi))
               (_%ctx123547%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123540%_
           _%eid123541%_
           _%rebind?123543%_
           _%phi123545%_
           _%ctx123547%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id123549%_ _%eid123550%_ _%rebind?123551%_)
        (let* ((_%phi123553%_ (gx#current-expander-phi))
               (_%ctx123555%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123549%_
           _%eid123550%_
           _%rebind?123551%_
           _%phi123553%_
           _%ctx123555%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id123557%_ _%eid123558%_ _%rebind?123559%_ _%phi123560%_)
        (let ((_%ctx123562%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123557%_
           _%eid123558%_
           _%rebind?123559%_
           _%phi123560%_
           _%ctx123562%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g126381_
        (let ((_g126380_ (##length _g126381_)))
          (cond ((##fx= _g126380_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g126381_))
                ((##fx= _g126380_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g126381_))
                ((##fx= _g126380_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g126381_))
                ((##fx= _g126380_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g126381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g126381_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id123483%_
               _%eid123484%_
               _%rebind?123485%_
               _%phi123486%_
               _%ctx123487%_)
        (gx#bind-identifier!__%
         _%id123483%_
         (##structure
          gx#extern-binding::t
          _%eid123484%_
          (gx#core-identifier-key _%id123483%_)
          _%phi123486%_)
         _%rebind?123485%_
         _%phi123486%_
         _%ctx123487%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id123492%_ _%eid123493%_)
        (let* ((_%rebind?123495%_ '#f)
               (_%phi123497%_ (gx#current-expander-phi))
               (_%ctx123499%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123492%_
           _%eid123493%_
           _%rebind?123495%_
           _%phi123497%_
           _%ctx123499%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id123501%_ _%eid123502%_ _%rebind?123503%_)
        (let* ((_%phi123505%_ (gx#current-expander-phi))
               (_%ctx123507%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123501%_
           _%eid123502%_
           _%rebind?123503%_
           _%phi123505%_
           _%ctx123507%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id123509%_ _%eid123510%_ _%rebind?123511%_ _%phi123512%_)
        (let ((_%ctx123514%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123509%_
           _%eid123510%_
           _%rebind?123511%_
           _%phi123512%_
           _%ctx123514%_))))
    (define gx#core-bind-extern!
      (lambda _g126383_
        (let ((_g126382_ (##length _g126383_)))
          (cond ((##fx= _g126382_ 2) (apply gx#core-bind-extern!__0 _g126383_))
                ((##fx= _g126382_ 3) (apply gx#core-bind-extern!__1 _g126383_))
                ((##fx= _g126382_ 4) (apply gx#core-bind-extern!__2 _g126383_))
                ((##fx= _g126382_ 5) (apply gx#core-bind-extern!__% _g126383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g126383_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id123437%_
               _%e123438%_
               _%rebind?123439%_
               _%phi123440%_
               _%ctx123441%_)
        (gx#bind-identifier!__%
         _%id123437%_
         (let ((_%key123446%_ (gx#core-identifier-key _%id123437%_))
               (_%e123447%_
                (if (or (##structure-instance-of? _%e123438%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e123438%_
                         'gx#expander-context::t))
                    _%e123438%_
                    (##structure
                     gx#user-expander::t
                     _%e123438%_
                     _%ctx123441%_
                     _%phi123440%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key123446%_
             '#t
             _%phi123440%_
             _%ctx123441%_)
            _%key123446%_
            _%phi123440%_
            _%e123447%_))
         _%rebind?123439%_
         _%phi123440%_
         _%ctx123441%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id123452%_ _%e123453%_)
        (let* ((_%rebind?123455%_ '#f)
               (_%phi123457%_ (gx#current-expander-phi))
               (_%ctx123459%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123452%_
           _%e123453%_
           _%rebind?123455%_
           _%phi123457%_
           _%ctx123459%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id123461%_ _%e123462%_ _%rebind?123463%_)
        (let* ((_%phi123465%_ (gx#current-expander-phi))
               (_%ctx123467%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123461%_
           _%e123462%_
           _%rebind?123463%_
           _%phi123465%_
           _%ctx123467%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id123469%_ _%e123470%_ _%rebind?123471%_ _%phi123472%_)
        (let ((_%ctx123474%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123469%_
           _%e123470%_
           _%rebind?123471%_
           _%phi123472%_
           _%ctx123474%_))))
    (define gx#core-bind-syntax!
      (lambda _g126385_
        (let ((_g126384_ (##length _g126385_)))
          (cond ((##fx= _g126384_ 2) (apply gx#core-bind-syntax!__0 _g126385_))
                ((##fx= _g126384_ 3) (apply gx#core-bind-syntax!__1 _g126385_))
                ((##fx= _g126384_ 4) (apply gx#core-bind-syntax!__2 _g126385_))
                ((##fx= _g126384_ 5) (apply gx#core-bind-syntax!__% _g126385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g126385_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id123420%_ _%e123421%_ _%rebind?123422%_)
        (gx#core-bind-syntax!__%
         _%id123420%_
         _%e123421%_
         _%rebind?123422%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id123427%_ _%e123428%_)
        (let ((_%rebind?123430%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id123427%_
           _%e123428%_
           _%rebind?123430%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g126387_
        (let ((_g126386_ (##length _g126387_)))
          (cond ((##fx= _g126386_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g126387_))
                ((##fx= _g126386_ 3)
                 (apply gx#core-bind-root-syntax!__% _g126387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g126387_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id123378%_
               _%alias-id123379%_
               _%rebind?123380%_
               _%phi123381%_
               _%ctx123382%_)
        (gx#bind-identifier!__%
         _%id123378%_
         (let ((_%key123384%_ (gx#core-identifier-key _%id123378%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key123384%_
             '#t
             _%phi123381%_
             _%ctx123382%_)
            _%key123384%_
            _%phi123381%_
            _%alias-id123379%_))
         _%rebind?123380%_
         _%phi123381%_
         _%ctx123382%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id123389%_ _%alias-id123390%_)
        (let* ((_%rebind?123392%_ '#f)
               (_%phi123394%_ (gx#current-expander-phi))
               (_%ctx123396%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123389%_
           _%alias-id123390%_
           _%rebind?123392%_
           _%phi123394%_
           _%ctx123396%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id123398%_ _%alias-id123399%_ _%rebind?123400%_)
        (let* ((_%phi123402%_ (gx#current-expander-phi))
               (_%ctx123404%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123398%_
           _%alias-id123399%_
           _%rebind?123400%_
           _%phi123402%_
           _%ctx123404%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id123406%_ _%alias-id123407%_ _%rebind?123408%_ _%phi123409%_)
        (let ((_%ctx123411%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123406%_
           _%alias-id123407%_
           _%rebind?123408%_
           _%phi123409%_
           _%ctx123411%_))))
    (define gx#core-bind-alias!
      (lambda _g126389_
        (let ((_g126388_ (##length _g126389_)))
          (cond ((##fx= _g126388_ 2) (apply gx#core-bind-alias!__0 _g126389_))
                ((##fx= _g126388_ 3) (apply gx#core-bind-alias!__1 _g126389_))
                ((##fx= _g126388_ 4) (apply gx#core-bind-alias!__2 _g126389_))
                ((##fx= _g126388_ 5) (apply gx#core-bind-alias!__% _g126389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g126389_))))))
    (define gx#make-binding-id__%
      (lambda (_%key123328%_ _%syntax?123329%_ _%phi123330%_ _%ctx123331%_)
        (if (uninterned-symbol? _%key123328%_)
            (##gensym 'L)
            (if (pair? _%key123328%_)
                (gensym (##car _%key123328%_))
                (if (##structure-instance-of? _%ctx123331%_ 'gx#top-context::t)
                    (let ((_%ns123336%_
                           (gx#core-context-namespace__% _%ctx123331%_)))
                      (if (and (fxzero? _%phi123330%_) (not _%syntax?123329%_))
                          (if _%ns123336%_
                              (make-symbol__1 _%ns123336%_ '"#" _%key123328%_)
                              _%key123328%_)
                          (if _%syntax?123329%_
                              (make-symbol__1
                               (let ((_%$e123340%_ _%ns123336%_))
                                 (if _%$e123340%_ _%$e123340%_ '""))
                               '"[:"
                               (number->string _%phi123330%_)
                               '":]#"
                               _%key123328%_)
                              (make-symbol__1
                               (let ((_%$e123344%_ _%ns123336%_))
                                 (if _%$e123344%_ _%$e123344%_ '""))
                               '"["
                               (number->string _%phi123330%_)
                               '"]#"
                               _%key123328%_))))
                    (gensym _%key123328%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key123351%_)
        (let* ((_%syntax?123353%_ '#f)
               (_%phi123355%_ (gx#current-expander-phi))
               (_%ctx123357%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123351%_
           _%syntax?123353%_
           _%phi123355%_
           _%ctx123357%_))))
    (define gx#make-binding-id__1
      (lambda (_%key123359%_ _%syntax?123360%_)
        (let* ((_%phi123362%_ (gx#current-expander-phi))
               (_%ctx123364%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123359%_
           _%syntax?123360%_
           _%phi123362%_
           _%ctx123364%_))))
    (define gx#make-binding-id__2
      (lambda (_%key123366%_ _%syntax?123367%_ _%phi123368%_)
        (let ((_%ctx123370%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123366%_
           _%syntax?123367%_
           _%phi123368%_
           _%ctx123370%_))))
    (define gx#make-binding-id
      (lambda _g126391_
        (let ((_g126390_ (##length _g126391_)))
          (cond ((##fx= _g126390_ 1) (apply gx#make-binding-id__0 _g126391_))
                ((##fx= _g126390_ 2) (apply gx#make-binding-id__1 _g126391_))
                ((##fx= _g126390_ 3) (apply gx#make-binding-id__2 _g126391_))
                ((##fx= _g126390_ 4) (apply gx#make-binding-id__% _g126391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g126391_))))))))
