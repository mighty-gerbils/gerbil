(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1734215270)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx125543%_)
        (letrec ((_%expand-special125545%_
                  (lambda (_%hd125547%_ _%K125548%_ _%rest125549%_ _%r125550%_)
                    (_%K125548%_
                     _%rest125549%_
                     (cons (gx#core-expand-top _%hd125547%_) _%r125550%_)))))
          (gx#core-expand-block__0 _%stx125543%_ _%expand-special125545%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx125296%_)
        (letrec ((_%expand-special125298%_
                  (lambda (_%hd125418%_ _%K125419%_ _%rest125420%_ _%r125421%_)
                    (let* ((_%K125425%_
                            (lambda (_%e125423%_)
                              (_%K125419%_
                               _%rest125420%_
                               (cons _%e125423%_ _%r125421%_))))
                           (_%e125426125455%_ _%hd125418%_)
                           (_%E125450125459%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125426125455%_)))
                           (_%E125446125471%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125426125455%_)
                                  (let ((_%e125451125463%_
                                         (gx#syntax-e _%e125426125455%_)))
                                    (let ((_%hd125452125466%_
                                           (##car _%e125451125463%_))
                                          (_%tl125453125468%_
                                           (##cdr _%e125451125463%_)))
                                      (if (and (gx#identifier?
                                                _%hd125452125466%_)
                                               (gx#core-identifier=?
                                                _%hd125452125466%_
                                                '%#define-runtime))
                                          (_%K125425%_
                                           (gx#core-expand-define-runtime%
                                            _%hd125418%_))
                                          (_%E125450125459%_))))
                                  (_%E125450125459%_))))
                           (_%E125442125483%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125426125455%_)
                                  (let ((_%e125447125475%_
                                         (gx#syntax-e _%e125426125455%_)))
                                    (let ((_%hd125448125478%_
                                           (##car _%e125447125475%_))
                                          (_%tl125449125480%_
                                           (##cdr _%e125447125475%_)))
                                      (if (and (gx#identifier?
                                                _%hd125448125478%_)
                                               (gx#core-identifier=?
                                                _%hd125448125478%_
                                                '%#define-alias))
                                          (_%K125425%_
                                           (gx#core-expand-define-alias%
                                            _%hd125418%_))
                                          (_%E125446125471%_))))
                                  (_%E125446125471%_))))
                           (_%E125432125495%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125426125455%_)
                                  (let ((_%e125443125487%_
                                         (gx#syntax-e _%e125426125455%_)))
                                    (let ((_%hd125444125490%_
                                           (##car _%e125443125487%_))
                                          (_%tl125445125492%_
                                           (##cdr _%e125443125487%_)))
                                      (if (and (gx#identifier?
                                                _%hd125444125490%_)
                                               (gx#core-identifier=?
                                                _%hd125444125490%_
                                                '%#define-syntax))
                                          (_%K125425%_
                                           (gx#core-expand-define-syntax%
                                            _%hd125418%_))
                                          (_%E125442125483%_))))
                                  (_%E125442125483%_))))
                           (_%E125428125527%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125426125455%_)
                                  (let ((_%e125433125499%_
                                         (gx#syntax-e _%e125426125455%_)))
                                    (let ((_%hd125434125502%_
                                           (##car _%e125433125499%_))
                                          (_%tl125435125504%_
                                           (##cdr _%e125433125499%_)))
                                      (if (and (gx#identifier?
                                                _%hd125434125502%_)
                                               (gx#core-identifier=?
                                                _%hd125434125502%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125435125504%_)
                                              (let ((_%e125436125507%_
                                                     (gx#syntax-e
                                                      _%tl125435125504%_)))
                                                (let ((_%hd125437125510%_
                                                       (##car _%e125436125507%_))
                                                      (_%tl125438125512%_
                                                       (##cdr _%e125436125507%_)))
                                                  (let ((_%hd-bind125515%_
                                                         _%hd125437125510%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125438125512%_)
                                                        (let ((_%e125439125517%_
                                                               (gx#syntax-e
                                                                _%tl125438125512%_)))
                                                          (let ((_%hd125440125520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125439125517%_))
                        (_%tl125441125522%_ (##cdr _%e125439125517%_)))
                    (let ((_%expr125525%_ _%hd125440125520%_))
                      (if (gx#stx-null? _%tl125441125522%_)
                          (if (gx#core-bind-values? _%hd-bind125515%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125515%_)
                                (_%K125425%_ _%hd125418%_))
                              (_%E125432125495%_))
                          (_%E125432125495%_)))))
                (_%E125432125495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125432125495%_))
                                          (_%E125432125495%_))))
                                  (_%E125432125495%_))))
                           (_%E125427125539%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125426125455%_)
                                  (let ((_%e125429125531%_
                                         (gx#syntax-e _%e125426125455%_)))
                                    (let ((_%hd125430125534%_
                                           (##car _%e125429125531%_))
                                          (_%tl125431125536%_
                                           (##cdr _%e125429125531%_)))
                                      (if (and (gx#identifier?
                                                _%hd125430125534%_)
                                               (gx#core-identifier=?
                                                _%hd125430125534%_
                                                '%#begin-syntax))
                                          (_%K125425%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd125418%_))
                                          (_%E125428125527%_))))
                                  (_%E125428125527%_)))))
                      (_%E125427125539%_))))
                 (_%eval-body125299%_
                  (lambda (_%rbody125307%_)
                    (let _%lp125309%_ ((_%rest125311%_ _%rbody125307%_)
                                       (_%body125312%_ '())
                                       (_%ebody125313%_ '()))
                      (let* ((_%rest125314125322%_ _%rest125311%_)
                             (_%else125316125330%_
                              (lambda ()
                                (values _%body125312%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody125313%_)
                                          (gx#stx-source _%stx125296%_))))))
                             (_%K125318125406%_
                              (lambda (_%rest125333%_ _%hd125334%_)
                                (let* ((_%e125335125352%_ _%hd125334%_)
                                       (_%E125347125356%_
                                        (lambda ()
                                          (_%lp125309%_
                                           _%rest125333%_
                                           (cons _%hd125334%_ _%body125312%_)
                                           (cons _%hd125334%_
                                                 _%ebody125313%_))))
                                       (_%E125337125368%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125335125352%_)
                                              (let ((_%e125348125360%_
                                                     (gx#syntax-e
                                                      _%e125335125352%_)))
                                                (let ((_%hd125349125363%_
                                                       (##car _%e125348125360%_))
                                                      (_%tl125350125365%_
                                                       (##cdr _%e125348125360%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125349125363%_)
                                                           (gx#core-identifier=?
                                                            _%hd125349125363%_
                                                            '%#begin-syntax))
                                                      (_%lp125309%_
                                                       _%rest125333%_
                                                       (cons _%hd125334%_
                                                             _%body125312%_)
                                                       _%ebody125313%_)
                                                      (_%E125347125356%_))))
                                              (_%E125347125356%_))))
                                       (_%E125336125402%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125335125352%_)
                                              (let ((_%e125338125372%_
                                                     (gx#syntax-e
                                                      _%e125335125352%_)))
                                                (let ((_%hd125339125375%_
                                                       (##car _%e125338125372%_))
                                                      (_%tl125340125377%_
                                                       (##cdr _%e125338125372%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125339125375%_)
                                                           (gx#core-identifier=?
                                                            _%hd125339125375%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl125340125377%_)
                                                          (let ((_%e125341125380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl125340125377%_)))
                    (let ((_%hd125342125383%_ (##car _%e125341125380%_))
                          (_%tl125343125385%_ (##cdr _%e125341125380%_)))
                      (let ((_%hd-bind125388%_ _%hd125342125383%_))
                        (if (gx#stx-pair? _%tl125343125385%_)
                            (let ((_%e125344125390%_
                                   (gx#syntax-e _%tl125343125385%_)))
                              (let ((_%hd125345125393%_
                                     (##car _%e125344125390%_))
                                    (_%tl125346125395%_
                                     (##cdr _%e125344125390%_)))
                                (let ((_%expr125398%_ _%hd125345125393%_))
                                  (if (gx#stx-null? _%tl125346125395%_)
                                      (let ((_%ehd125400%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind125388%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr125398%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd125334%_))))
                                        (_%lp125309%_
                                         _%rest125333%_
                                         (cons _%ehd125400%_ _%body125312%_)
                                         (cons _%ehd125400%_ _%ebody125313%_)))
                                      (_%E125337125368%_)))))
                            (_%E125337125368%_)))))
                  (_%E125337125368%_))
              (_%E125337125368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125337125368%_)))))
                                  (_%E125336125402%_)))))
                        (if (pair? _%rest125314125322%_)
                            (let ((_%hd125319125409%_
                                   (##car _%rest125314125322%_))
                                  (_%tl125320125411%_
                                   (##cdr _%rest125314125322%_)))
                              (let* ((_%hd125414%_ _%hd125319125409%_)
                                     (_%rest125416%_ _%tl125320125411%_))
                                (_%K125318125406%_
                                 _%rest125416%_
                                 _%hd125414%_)))
                            (_%else125316125330%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody125302%_
                     (gx#core-expand-block__1
                      _%stx125296%_
                      _%expand-special125298%_
                      '#f))
                    (_g125566_ (_%eval-body125299%_ _%rbody125302%_)))
               (begin
                 (let ((_g125567_
                        (if (##values? _g125566_)
                            (##values-length _g125566_)
                            1)))
                   (if (not (##fx= _g125567_ 2))
                       (error "Context expects 2 values" _g125567_)))
                 (let ((_%expanded-body125304%_ (##values-ref _g125566_ 0))
                       (_%value125305%_ (##values-ref _g125566_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body125304%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value125305%_ '())))
                    (gx#stx-source _%stx125296%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx125266%_)
        (let* ((_%e125267125274%_ _%stx125266%_)
               (_%E125269125278%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125267125274%_)))
               (_%E125268125292%_
                (lambda ()
                  (if (gx#stx-pair? _%e125267125274%_)
                      (let ((_%e125270125282%_
                             (gx#syntax-e _%e125267125274%_)))
                        (let ((_%hd125271125285%_ (##car _%e125270125282%_))
                              (_%tl125272125287%_ (##cdr _%e125270125282%_)))
                          (let ((_%body125290%_ _%tl125272125287%_))
                            (if (gx#stx-list? _%body125290%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body125290%_)
                                 (gx#stx-source _%stx125266%_))
                                (_%E125269125278%_)))))
                      (_%E125269125278%_)))))
          (_%E125268125292%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx125264%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx125264%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx125210%_)
        (let* ((_%e125211125224%_ _%stx125210%_)
               (_%E125213125228%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125211125224%_)))
               (_%E125212125260%_
                (lambda ()
                  (if (gx#stx-pair? _%e125211125224%_)
                      (let ((_%e125214125232%_
                             (gx#syntax-e _%e125211125224%_)))
                        (let ((_%hd125215125235%_ (##car _%e125214125232%_))
                              (_%tl125216125237%_ (##cdr _%e125214125232%_)))
                          (if (gx#stx-pair? _%tl125216125237%_)
                              (let ((_%e125217125240%_
                                     (gx#syntax-e _%tl125216125237%_)))
                                (let ((_%hd125218125243%_
                                       (##car _%e125217125240%_))
                                      (_%tl125219125245%_
                                       (##cdr _%e125217125240%_)))
                                  (let ((_%ann125248%_ _%hd125218125243%_))
                                    (if (gx#stx-pair? _%tl125219125245%_)
                                        (let ((_%e125220125250%_
                                               (gx#syntax-e
                                                _%tl125219125245%_)))
                                          (let ((_%hd125221125253%_
                                                 (##car _%e125220125250%_))
                                                (_%tl125222125255%_
                                                 (##cdr _%e125220125250%_)))
                                            (let ((_%expr125258%_
                                                   _%hd125221125253%_))
                                              (if (gx#stx-null?
                                                   _%tl125222125255%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann125248%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr125258%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx125210%_))
                                                  (_%E125213125228%_)))))
                                        (_%E125213125228%_)))))
                              (_%E125213125228%_))))
                      (_%E125213125228%_)))))
          (_%E125212125260%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx124934%_ _%body124935%_)
        (letrec ((_%expand-special124937%_
                  (lambda (_%hd125205%_ _%K125206%_ _%rest125207%_ _%r125208%_)
                    (_%K125206%_
                     '()
                     (cons (_%expand-internal124938%_
                            _%hd125205%_
                            _%rest125207%_)
                           _%r125208%_))))
                 (_%expand-internal124938%_
                  (lambda (_%hd125201%_ _%rest125202%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal124940%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd125201%_ _%rest125202%_))
                          (gx#stx-source _%stx124934%_))
                         _%expand-internal-special124939%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj125560
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj125560)
                       __obj125560))))
                 (_%expand-internal-special124939%_
                  (lambda (_%hd125096%_ _%K125097%_ _%rest125098%_ _%r125099%_)
                    (let* ((_%e125100125125%_ _%hd125096%_)
                           (_%E125120125129%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125100125125%_)))
                           (_%E125116125141%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125100125125%_)
                                  (let ((_%e125121125133%_
                                         (gx#syntax-e _%e125100125125%_)))
                                    (let ((_%hd125122125136%_
                                           (##car _%e125121125133%_))
                                          (_%tl125123125138%_
                                           (##cdr _%e125121125133%_)))
                                      (if (and (gx#identifier?
                                                _%hd125122125136%_)
                                               (gx#core-identifier=?
                                                _%hd125122125136%_
                                                '%#declare))
                                          (_%K125097%_
                                           _%rest125098%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd125096%_)
                                                 _%r125099%_))
                                          (_%E125120125129%_))))
                                  (_%E125120125129%_))))
                           (_%E125112125153%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125100125125%_)
                                  (let ((_%e125117125145%_
                                         (gx#syntax-e _%e125100125125%_)))
                                    (let ((_%hd125118125148%_
                                           (##car _%e125117125145%_))
                                          (_%tl125119125150%_
                                           (##cdr _%e125117125145%_)))
                                      (if (and (gx#identifier?
                                                _%hd125118125148%_)
                                               (gx#core-identifier=?
                                                _%hd125118125148%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd125096%_)
                                            (_%K125097%_
                                             _%rest125098%_
                                             _%r125099%_))
                                          (_%E125116125141%_))))
                                  (_%E125116125141%_))))
                           (_%E125102125165%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125100125125%_)
                                  (let ((_%e125113125157%_
                                         (gx#syntax-e _%e125100125125%_)))
                                    (let ((_%hd125114125160%_
                                           (##car _%e125113125157%_))
                                          (_%tl125115125162%_
                                           (##cdr _%e125113125157%_)))
                                      (if (and (gx#identifier?
                                                _%hd125114125160%_)
                                               (gx#core-identifier=?
                                                _%hd125114125160%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd125096%_)
                                            (_%K125097%_
                                             _%rest125098%_
                                             _%r125099%_))
                                          (_%E125112125153%_))))
                                  (_%E125112125153%_))))
                           (_%E125101125197%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125100125125%_)
                                  (let ((_%e125103125169%_
                                         (gx#syntax-e _%e125100125125%_)))
                                    (let ((_%hd125104125172%_
                                           (##car _%e125103125169%_))
                                          (_%tl125105125174%_
                                           (##cdr _%e125103125169%_)))
                                      (if (and (gx#identifier?
                                                _%hd125104125172%_)
                                               (gx#core-identifier=?
                                                _%hd125104125172%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125105125174%_)
                                              (let ((_%e125106125177%_
                                                     (gx#syntax-e
                                                      _%tl125105125174%_)))
                                                (let ((_%hd125107125180%_
                                                       (##car _%e125106125177%_))
                                                      (_%tl125108125182%_
                                                       (##cdr _%e125106125177%_)))
                                                  (let ((_%hd-bind125185%_
                                                         _%hd125107125180%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125108125182%_)
                                                        (let ((_%e125109125187%_
                                                               (gx#syntax-e
                                                                _%tl125108125182%_)))
                                                          (let ((_%hd125110125190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125109125187%_))
                        (_%tl125111125192%_ (##cdr _%e125109125187%_)))
                    (let ((_%expr125195%_ _%hd125110125190%_))
                      (if (gx#stx-null? _%tl125111125192%_)
                          (if (gx#core-bind-values? _%hd-bind125185%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125185%_)
                                (_%K125097%_
                                 _%rest125098%_
                                 (cons _%hd125096%_ _%r125099%_)))
                              (_%E125102125165%_))
                          (_%E125102125165%_)))))
                (_%E125102125165%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125102125165%_))
                                          (_%E125102125165%_))))
                                  (_%E125102125165%_)))))
                      (_%E125101125197%_))))
                 (_%wrap-internal124940%_
                  (lambda (_%rbody124942%_)
                    (let _%lp124944%_ ((_%rest124946%_ _%rbody124942%_)
                                       (_%decls124947%_ '())
                                       (_%bind124948%_ '())
                                       (_%body124949%_ '()))
                      (let* ((_%e124950124957%_ _%rest124946%_)
                             (_%E124952125006%_
                              (lambda ()
                                (let* ((_%body125001%_
                                        (let* ((_%body124960124970%_
                                                _%body124949%_)
                                               (_%else124963124978%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body124949%_)
                                                   (gx#stx-source
                                                    _%stx124934%_)))))
                                          (let ((_%K124968124998%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx124934%_)))
                                                (_%K124965124984%_
                                                 (lambda (_%expr124982%_)
                                                   _%expr124982%_)))
                                            (let ((_%try-match124962124994%_
                                                   (lambda ()
                                                     (if (pair? _%body124960124970%_)
                                                         (let ((_%tl124967124989%_
                                                                (##cdr _%body124960124970%_))
                                                               (_%hd124966124987%_
                                                                (##car _%body124960124970%_)))
                                                           (if (null? _%tl124967124989%_)
                                                               (let ((_%expr124992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd124966124987%_))
                         (_%K124965124984%_ _%expr124992%_))
                       (_%else124963124978%_)))
                 (_%else124963124978%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body124960124970%_)
                                                  (_%K124968124998%_)
                                                  (_%try-match124962124994%_))))))
                                       (_%body125003%_
                                        (if (null? _%bind124948%_)
                                            _%body125001%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind124948%_
                                                         (cons _%body125001%_
                                                               '())))
                                             (gx#stx-source _%stx124934%_)))))
                                  (if (null? _%decls124947%_)
                                      _%body125003%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls124947%_
                                                   (cons _%body125003%_ '())))
                                       (gx#stx-source _%stx124934%_))))))
                             (_%E124951125092%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124950124957%_)
                                    (let ((_%e124953125010%_
                                           (gx#syntax-e _%e124950124957%_)))
                                      (let ((_%hd124954125013%_
                                             (##car _%e124953125010%_))
                                            (_%tl124955125015%_
                                             (##cdr _%e124953125010%_)))
                                        (let* ((_%hd125018%_
                                                _%hd124954125013%_)
                                               (_%rest125020%_
                                                _%tl124955125015%_)
                                               (_%e125021125038%_ _%hd125018%_)
                                               (_%E125033125042%_
                                                (lambda ()
                                                  (if (null? _%bind124948%_)
                                                      (_%lp124944%_
                                                       _%rest125020%_
                                                       _%decls124947%_
                                                       _%bind124948%_
                                                       (cons _%hd125018%_
                                                             _%body124949%_))
                                                      (_%lp124944%_
                                                       _%rest125020%_
                                                       _%decls124947%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd125018%_ '()))
                     _%bind124948%_)
               _%body124949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125023125056%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125021125038%_)
                                                      (let ((_%e125034125046%_
                                                             (gx#syntax-e
                                                              _%e125021125038%_)))
                                                        (let ((_%hd125035125049%_
                                                               (##car _%e125034125046%_))
                                                              (_%tl125036125051%_
                                                               (##cdr _%e125034125046%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125035125049%_)
                           (gx#core-identifier=?
                            _%hd125035125049%_
                            '%#declare))
                      (let ((_%xdecls125054%_ _%tl125036125051%_))
                        (_%lp124944%_
                         _%rest125020%_
                         (gx#stx-foldr cons _%decls124947%_ _%xdecls125054%_)
                         _%bind124948%_
                         _%body124949%_))
                      (_%E125033125042%_))))
              (_%E125033125042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125022125088%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125021125038%_)
                                                      (let ((_%e125024125060%_
                                                             (gx#syntax-e
                                                              _%e125021125038%_)))
                                                        (let ((_%hd125025125063%_
                                                               (##car _%e125024125060%_))
                                                              (_%tl125026125065%_
                                                               (##cdr _%e125024125060%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125025125063%_)
                           (gx#core-identifier=?
                            _%hd125025125063%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl125026125065%_)
                          (let ((_%e125027125068%_
                                 (gx#syntax-e _%tl125026125065%_)))
                            (let ((_%hd125028125071%_
                                   (##car _%e125027125068%_))
                                  (_%tl125029125073%_
                                   (##cdr _%e125027125068%_)))
                              (let ((_%hd-bind125076%_ _%hd125028125071%_))
                                (if (gx#stx-pair? _%tl125029125073%_)
                                    (let ((_%e125030125078%_
                                           (gx#syntax-e _%tl125029125073%_)))
                                      (let ((_%hd125031125081%_
                                             (##car _%e125030125078%_))
                                            (_%tl125032125083%_
                                             (##cdr _%e125030125078%_)))
                                        (let ((_%expr125086%_
                                               _%hd125031125081%_))
                                          (if (gx#stx-null? _%tl125032125083%_)
                                              (_%lp124944%_
                                               _%rest125020%_
                                               _%decls124947%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind125076%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr125086%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind124948%_)
                                               _%body124949%_)
                                              (_%E125023125056%_)))))
                                    (_%E125023125056%_)))))
                          (_%E125023125056%_))
                      (_%E125023125056%_))))
              (_%E125023125056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E125022125088%_))))
                                    (_%E124952125006%_)))))
                        (_%E124951125092%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body124935%_)
            (gx#stx-source _%stx124934%_))
           _%expand-special124937%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx124872%_)
        (let* ((_%e124873124880%_ _%stx124872%_)
               (_%E124875124884%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124873124880%_)))
               (_%E124874124930%_
                (lambda ()
                  (if (gx#stx-pair? _%e124873124880%_)
                      (let ((_%e124876124888%_
                             (gx#syntax-e _%e124873124880%_)))
                        (let ((_%hd124877124891%_ (##car _%e124876124888%_))
                              (_%tl124878124893%_ (##cdr _%e124876124888%_)))
                          (let ((_%body124896%_ _%tl124878124893%_))
                            (if (gx#stx-list? _%body124896%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl124898%_)
                                     (let* ((_%e124899124906%_ _%decl124898%_)
                                            (_%E124901124910%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e124899124906%_)))
                                            (_%E124900124926%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e124899124906%_)
                                                   (let ((_%e124902124914%_
                                                          (gx#syntax-e
                                                           _%e124899124906%_)))
                                                     (let ((_%hd124903124917%_
                                                            (##car _%e124902124914%_))
                                                           (_%tl124904124919%_
                                                            (##cdr _%e124902124914%_)))
                                                       (let* ((_%head124922%_
                                                               _%hd124903124917%_)
                                                              (_%args124924%_
                                                               _%tl124904124919%_))
                                                         (if (gx#stx-list?
                                                              _%args124924%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl124898%_)
                                                             (_%E124901124910%_)))))
                                                   (_%E124901124910%_)))))
                                       (_%E124900124926%_)))
                                   _%body124896%_))
                                 (gx#stx-source _%stx124872%_))
                                (_%E124875124884%_)))))
                      (_%E124875124884%_)))))
          (_%E124874124930%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx124776%_)
        (let* ((_%e124777124784%_ _%stx124776%_)
               (_%E124779124788%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124777124784%_)))
               (_%E124778124868%_
                (lambda ()
                  (if (gx#stx-pair? _%e124777124784%_)
                      (let ((_%e124780124792%_
                             (gx#syntax-e _%e124777124784%_)))
                        (let ((_%hd124781124795%_ (##car _%e124780124792%_))
                              (_%tl124782124797%_ (##cdr _%e124780124792%_)))
                          (let ((_%body124800%_ _%tl124782124797%_))
                            (let _%lp124802%_ ((_%rest124804%_ _%body124800%_)
                                               (_%r124805%_ '()))
                              (let* ((_%e124806124820%_ _%rest124804%_)
                                     (_%E124818124824%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx124776%_)))
                                     (_%E124808124828%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e124806124820%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r124805%_))
                                             (gx#stx-source _%stx124776%_))
                                            (_%E124818124824%_))))
                                     (_%E124807124864%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e124806124820%_)
                                            (let ((_%e124809124832%_
                                                   (gx#syntax-e
                                                    _%e124806124820%_)))
                                              (let ((_%hd124810124835%_
                                                     (##car _%e124809124832%_))
                                                    (_%tl124811124837%_
                                                     (##cdr _%e124809124832%_)))
                                                (if (gx#stx-pair?
                                                     _%hd124810124835%_)
                                                    (let ((_%e124812124840%_
                                                           (gx#syntax-e
                                                            _%hd124810124835%_)))
                                                      (let ((_%hd124813124843%_
                                                             (##car _%e124812124840%_))
                                                            (_%tl124814124845%_
                                                             (##cdr _%e124812124840%_)))
                                                        (let ((_%id124848%_
                                                               _%hd124813124843%_))
                                                          (if (gx#stx-pair?
                                                               _%tl124814124845%_)
                                                              (let ((_%e124815124850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl124814124845%_)))
                        (let ((_%hd124816124853%_ (##car _%e124815124850%_))
                              (_%tl124817124855%_ (##cdr _%e124815124850%_)))
                          (let ((_%eid124858%_ _%hd124816124853%_))
                            (if (gx#stx-null? _%tl124817124855%_)
                                (let ((_%rest124860%_ _%tl124811124837%_))
                                  (if (and (gx#identifier? _%id124848%_)
                                           (gx#identifier? _%eid124858%_))
                                      (let ((_%eid124862%_
                                             (gx#stx-e _%eid124858%_)))
                                        (gx#core-bind-extern!__0
                                         _%id124848%_
                                         _%eid124862%_)
                                        (_%lp124802%_
                                         _%rest124860%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id124848%_)
                                                     (cons _%eid124862%_ '()))
                                               _%r124805%_)))
                                      (_%E124808124828%_)))
                                (_%E124808124828%_)))))
                      (_%E124808124828%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E124808124828%_))))
                                            (_%E124808124828%_)))))
                                (_%E124807124864%_))))))
                      (_%E124779124788%_)))))
          (_%E124778124868%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx124722%_)
        (let* ((_%e124723124736%_ _%stx124722%_)
               (_%E124725124740%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124723124736%_)))
               (_%E124724124772%_
                (lambda ()
                  (if (gx#stx-pair? _%e124723124736%_)
                      (let ((_%e124726124744%_
                             (gx#syntax-e _%e124723124736%_)))
                        (let ((_%hd124727124747%_ (##car _%e124726124744%_))
                              (_%tl124728124749%_ (##cdr _%e124726124744%_)))
                          (if (gx#stx-pair? _%tl124728124749%_)
                              (let ((_%e124729124752%_
                                     (gx#syntax-e _%tl124728124749%_)))
                                (let ((_%hd124730124755%_
                                       (##car _%e124729124752%_))
                                      (_%tl124731124757%_
                                       (##cdr _%e124729124752%_)))
                                  (let ((_%hd124760%_ _%hd124730124755%_))
                                    (if (gx#stx-pair? _%tl124731124757%_)
                                        (let ((_%e124732124762%_
                                               (gx#syntax-e
                                                _%tl124731124757%_)))
                                          (let ((_%hd124733124765%_
                                                 (##car _%e124732124762%_))
                                                (_%tl124734124767%_
                                                 (##cdr _%e124732124762%_)))
                                            (let ((_%expr124770%_
                                                   _%hd124733124765%_))
                                              (if (gx#stx-null?
                                                   _%tl124734124767%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd124760%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd124760%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd124760%_)
                             (cons (gx#core-expand-expression _%expr124770%_)
                                   '())))
                 (gx#stx-source _%stx124722%_)))
              (_%E124725124740%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124725124740%_)))))
                                        (_%E124725124740%_)))))
                              (_%E124725124740%_))))
                      (_%E124725124740%_)))))
          (_%E124724124772%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx124666%_)
        (let* ((_%e124667124680%_ _%stx124666%_)
               (_%E124669124684%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124667124680%_)))
               (_%E124668124718%_
                (lambda ()
                  (if (gx#stx-pair? _%e124667124680%_)
                      (let ((_%e124670124688%_
                             (gx#syntax-e _%e124667124680%_)))
                        (let ((_%hd124671124691%_ (##car _%e124670124688%_))
                              (_%tl124672124693%_ (##cdr _%e124670124688%_)))
                          (if (gx#stx-pair? _%tl124672124693%_)
                              (let ((_%e124673124696%_
                                     (gx#syntax-e _%tl124672124693%_)))
                                (let ((_%hd124674124699%_
                                       (##car _%e124673124696%_))
                                      (_%tl124675124701%_
                                       (##cdr _%e124673124696%_)))
                                  (let ((_%id124704%_ _%hd124674124699%_))
                                    (if (gx#stx-pair? _%tl124675124701%_)
                                        (let ((_%e124676124706%_
                                               (gx#syntax-e
                                                _%tl124675124701%_)))
                                          (let ((_%hd124677124709%_
                                                 (##car _%e124676124706%_))
                                                (_%tl124678124711%_
                                                 (##cdr _%e124676124706%_)))
                                            (let ((_%binding-id124714%_
                                                   _%hd124677124709%_))
                                              (if (gx#stx-null?
                                                   _%tl124678124711%_)
                                                  (if (and (gx#identifier?
                                                            _%id124704%_)
                                                           (gx#identifier?
                                                            _%binding-id124714%_))
                                                      (let ((_%eid124716%_
                                                             (gx#stx-e
                                                              _%binding-id124714%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id124704%_
                                                         _%eid124716%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id124704%_)
                             (cons _%eid124716%_ '())))))
              (_%E124669124684%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124669124684%_)))))
                                        (_%E124669124684%_)))))
                              (_%E124669124684%_))))
                      (_%E124669124684%_)))))
          (_%E124668124718%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx124609%_)
        (let* ((_%e124610124623%_ _%stx124609%_)
               (_%E124612124627%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124610124623%_)))
               (_%E124611124662%_
                (lambda ()
                  (if (gx#stx-pair? _%e124610124623%_)
                      (let ((_%e124613124631%_
                             (gx#syntax-e _%e124610124623%_)))
                        (let ((_%hd124614124634%_ (##car _%e124613124631%_))
                              (_%tl124615124636%_ (##cdr _%e124613124631%_)))
                          (if (gx#stx-pair? _%tl124615124636%_)
                              (let ((_%e124616124639%_
                                     (gx#syntax-e _%tl124615124636%_)))
                                (let ((_%hd124617124642%_
                                       (##car _%e124616124639%_))
                                      (_%tl124618124644%_
                                       (##cdr _%e124616124639%_)))
                                  (let ((_%id124647%_ _%hd124617124642%_))
                                    (if (gx#stx-pair? _%tl124618124644%_)
                                        (let ((_%e124619124649%_
                                               (gx#syntax-e
                                                _%tl124618124644%_)))
                                          (let ((_%hd124620124652%_
                                                 (##car _%e124619124649%_))
                                                (_%tl124621124654%_
                                                 (##cdr _%e124619124649%_)))
                                            (let ((_%expr124657%_
                                                   _%hd124620124652%_))
                                              (if (gx#stx-null?
                                                   _%tl124621124654%_)
                                                  (if (gx#identifier?
                                                       _%id124647%_)
                                                      (let ((_g125568_
                                                             (gx#core-expand-expression+1
                                                              _%expr124657%_)))
                                                        (begin
                                                          (let ((_g125569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g125568_)
                             (##values-length _g125568_)
                             1)))
                    (if (not (##fx= _g125569_ 2))
                        (error "Context expects 2 values" _g125569_)))
                  (let ((_%e-stx124659%_ (##values-ref _g125568_ 0))
                        (_%e124660%_ (##values-ref _g125568_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id124647%_ _%e124660%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id124647%_)
                                   (cons _%e-stx124659%_ '())))
                       (gx#stx-source _%stx124609%_))))))
              (_%E124612124627%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124612124627%_)))))
                                        (_%E124612124627%_)))))
                              (_%E124612124627%_))))
                      (_%E124612124627%_)))))
          (_%E124611124662%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx124553%_)
        (let* ((_%e124554124567%_ _%stx124553%_)
               (_%E124556124571%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124554124567%_)))
               (_%E124555124605%_
                (lambda ()
                  (if (gx#stx-pair? _%e124554124567%_)
                      (let ((_%e124557124575%_
                             (gx#syntax-e _%e124554124567%_)))
                        (let ((_%hd124558124578%_ (##car _%e124557124575%_))
                              (_%tl124559124580%_ (##cdr _%e124557124575%_)))
                          (if (gx#stx-pair? _%tl124559124580%_)
                              (let ((_%e124560124583%_
                                     (gx#syntax-e _%tl124559124580%_)))
                                (let ((_%hd124561124586%_
                                       (##car _%e124560124583%_))
                                      (_%tl124562124588%_
                                       (##cdr _%e124560124583%_)))
                                  (let ((_%id124591%_ _%hd124561124586%_))
                                    (if (gx#stx-pair? _%tl124562124588%_)
                                        (let ((_%e124563124593%_
                                               (gx#syntax-e
                                                _%tl124562124588%_)))
                                          (let ((_%hd124564124596%_
                                                 (##car _%e124563124593%_))
                                                (_%tl124565124598%_
                                                 (##cdr _%e124563124593%_)))
                                            (let ((_%alias-id124601%_
                                                   _%hd124564124596%_))
                                              (if (gx#stx-null?
                                                   _%tl124565124598%_)
                                                  (if (and (gx#identifier?
                                                            _%id124591%_)
                                                           (gx#identifier?
                                                            _%alias-id124601%_))
                                                      (let ((_%alias-id124603%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id124601%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id124591%_
                                                         _%alias-id124603%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id124591%_)
                             (cons _%alias-id124603%_ '())))))
              (_%E124556124571%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124556124571%_)))))
                                        (_%E124556124571%_)))))
                              (_%E124556124571%_))))
                      (_%E124556124571%_)))))
          (_%E124555124605%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx124496%_ _%wrap?124497%_)
        (let* ((_%e124498124508%_ _%stx124496%_)
               (_%E124500124512%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124498124508%_)))
               (_%E124499124539%_
                (lambda ()
                  (if (gx#stx-pair? _%e124498124508%_)
                      (let ((_%e124501124516%_
                             (gx#syntax-e _%e124498124508%_)))
                        (let ((_%hd124502124519%_ (##car _%e124501124516%_))
                              (_%tl124503124521%_ (##cdr _%e124501124516%_)))
                          (if (gx#stx-pair? _%tl124503124521%_)
                              (let ((_%e124504124524%_
                                     (gx#syntax-e _%tl124503124521%_)))
                                (let ((_%hd124505124527%_
                                       (##car _%e124504124524%_))
                                      (_%tl124506124529%_
                                       (##cdr _%e124504124524%_)))
                                  (let* ((_%hd124532%_ _%hd124505124527%_)
                                         (_%body124534%_ _%tl124506124529%_))
                                    (if (gx#core-bind-values? _%hd124532%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd124532%_)
                                           (let ((_%body124537%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd124532%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx124496%_
                                                               _%body124534%_)
                                                              '()))))
                                             (if _%wrap?124497%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body124537%_)
                                                  (gx#stx-source
                                                   _%stx124496%_))
                                                 _%body124537%_)))
                                         gx#current-expander-context
                                         (let ((__obj125561
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125561)
                                           __obj125561))
                                        (_%E124500124512%_)))))
                              (_%E124500124512%_))))
                      (_%E124500124512%_)))))
          (_%E124499124539%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx124546%_)
        (let ((_%wrap?124548%_ '#t))
          (gx#core-expand-lambda%__% _%stx124546%_ _%wrap?124548%_))))
    (define gx#core-expand-lambda%
      (lambda _g125571_
        (let ((_g125570_ (##length _g125571_)))
          (cond ((##fx= _g125570_ 1)
                 (apply gx#core-expand-lambda%__0 _g125571_))
                ((##fx= _g125570_ 2)
                 (apply gx#core-expand-lambda%__% _g125571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g125571_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx124460%_)
        (let* ((_%e124461124468%_ _%stx124460%_)
               (_%E124463124472%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124461124468%_)))
               (_%E124462124491%_
                (lambda ()
                  (if (gx#stx-pair? _%e124461124468%_)
                      (let ((_%e124464124476%_
                             (gx#syntax-e _%e124461124468%_)))
                        (let ((_%hd124465124479%_ (##car _%e124464124476%_))
                              (_%tl124466124481%_ (##cdr _%e124464124476%_)))
                          (let ((_%clauses124484%_ _%tl124466124481%_))
                            (if (gx#stx-list? _%clauses124484%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause124486%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause124486%_)
                                       (let ((_%$e124488%_
                                              (gx#stx-source
                                               _%clause124486%_)))
                                         (if _%$e124488%_
                                             _%$e124488%_
                                             (gx#stx-source _%stx124460%_))))
                                      '#f))
                                   _%clauses124484%_))
                                 (gx#stx-source _%stx124460%_))
                                (_%E124463124472%_)))))
                      (_%E124463124472%_)))))
          (_%E124462124491%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx124414%_)
        (let* ((_%e124415124425%_ _%stx124414%_)
               (_%E124417124429%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124415124425%_)))
               (_%E124416124456%_
                (lambda ()
                  (if (gx#stx-pair? _%e124415124425%_)
                      (let ((_%e124418124433%_
                             (gx#syntax-e _%e124415124425%_)))
                        (let ((_%hd124419124436%_ (##car _%e124418124433%_))
                              (_%tl124420124438%_ (##cdr _%e124418124433%_)))
                          (if (gx#stx-pair? _%tl124420124438%_)
                              (let ((_%e124421124441%_
                                     (gx#syntax-e _%tl124420124438%_)))
                                (let ((_%hd124422124444%_
                                       (##car _%e124421124441%_))
                                      (_%tl124423124446%_
                                       (##cdr _%e124421124441%_)))
                                  (let* ((_%hd124449%_ _%hd124422124444%_)
                                         (_%body124451%_ _%tl124423124446%_))
                                    (if (gx#core-expand-let-bind? _%hd124449%_)
                                        (let ((_%expressions124453%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd124449%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd124449%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd124449%_
                                                           _%expressions124453%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx124414%_
                         _%body124451%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx124414%_)))
                                           gx#current-expander-context
                                           (let ((__obj125562
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj125562)
                                             __obj125562)))
                                        (_%E124417124429%_)))))
                              (_%E124417124429%_))))
                      (_%E124417124429%_)))))
          (_%E124416124456%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx124359%_ _%form124360%_)
        (let* ((_%e124361124371%_ _%stx124359%_)
               (_%E124363124375%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124361124371%_)))
               (_%E124362124400%_
                (lambda ()
                  (if (gx#stx-pair? _%e124361124371%_)
                      (let ((_%e124364124379%_
                             (gx#syntax-e _%e124361124371%_)))
                        (let ((_%hd124365124382%_ (##car _%e124364124379%_))
                              (_%tl124366124384%_ (##cdr _%e124364124379%_)))
                          (if (gx#stx-pair? _%tl124366124384%_)
                              (let ((_%e124367124387%_
                                     (gx#syntax-e _%tl124366124384%_)))
                                (let ((_%hd124368124390%_
                                       (##car _%e124367124387%_))
                                      (_%tl124369124392%_
                                       (##cdr _%e124367124387%_)))
                                  (let* ((_%hd124395%_ _%hd124368124390%_)
                                         (_%body124397%_ _%tl124369124392%_))
                                    (if (gx#core-expand-let-bind? _%hd124395%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd124395%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form124360%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd124395%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd124395%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx124359%_
                                                               _%body124397%_)
                                                              '())))
                                            (gx#stx-source _%stx124359%_)))
                                         gx#current-expander-context
                                         (let ((__obj125563
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125563)
                                           __obj125563))
                                        (_%E124363124375%_)))))
                              (_%E124363124375%_))))
                      (_%E124363124375%_)))))
          (_%E124362124400%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx124407%_)
        (let ((_%form124409%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx124407%_ _%form124409%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g125573_
        (let ((_g125572_ (##length _g125573_)))
          (cond ((##fx= _g125572_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g125573_))
                ((##fx= _g125572_ 2)
                 (apply gx#core-expand-letrec-values%__% _g125573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g125573_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx124356%_)
        (gx#core-expand-letrec-values%__% _%stx124356%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx124313%_)
        (if (gx#stx-list? _%stx124313%_)
            (gx#stx-andmap
             (lambda (_%bind124315%_)
               (let* ((_%e124316124326%_ _%bind124315%_)
                      (_%E124318124330%_ (lambda () '#f))
                      (_%E124317124352%_
                       (lambda ()
                         (if (gx#stx-pair? _%e124316124326%_)
                             (let ((_%e124319124334%_
                                    (gx#syntax-e _%e124316124326%_)))
                               (let ((_%hd124320124337%_
                                      (##car _%e124319124334%_))
                                     (_%tl124321124339%_
                                      (##cdr _%e124319124334%_)))
                                 (let ((_%hd124342%_ _%hd124320124337%_))
                                   (if (gx#stx-pair? _%tl124321124339%_)
                                       (let ((_%e124322124344%_
                                              (gx#syntax-e
                                               _%tl124321124339%_)))
                                         (let ((_%hd124323124347%_
                                                (##car _%e124322124344%_))
                                               (_%tl124324124349%_
                                                (##cdr _%e124322124344%_)))
                                           (if (gx#stx-null?
                                                _%tl124324124349%_)
                                               (gx#core-bind-values?
                                                _%hd124342%_)
                                               (_%E124318124330%_))))
                                       (_%E124318124330%_)))))
                             (_%E124318124330%_)))))
                 (_%E124317124352%_)))
             _%stx124313%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind124272%_)
        (let* ((_%e124273124283%_ _%bind124272%_)
               (_%E124275124287%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124273124283%_)))
               (_%E124274124309%_
                (lambda ()
                  (if (gx#stx-pair? _%e124273124283%_)
                      (let ((_%e124276124291%_
                             (gx#syntax-e _%e124273124283%_)))
                        (let ((_%hd124277124294%_ (##car _%e124276124291%_))
                              (_%tl124278124296%_ (##cdr _%e124276124291%_)))
                          (if (gx#stx-pair? _%tl124278124296%_)
                              (let ((_%e124279124299%_
                                     (gx#syntax-e _%tl124278124296%_)))
                                (let ((_%hd124280124302%_
                                       (##car _%e124279124299%_))
                                      (_%tl124281124304%_
                                       (##cdr _%e124279124299%_)))
                                  (let ((_%expr124307%_ _%hd124280124302%_))
                                    (if (gx#stx-null? _%tl124281124304%_)
                                        (gx#core-expand-expression
                                         _%expr124307%_)
                                        (_%E124275124287%_)))))
                              (_%E124275124287%_))))
                      (_%E124275124287%_)))))
          (_%E124274124309%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind124231%_)
        (let* ((_%e124232124242%_ _%bind124231%_)
               (_%E124234124246%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124232124242%_)))
               (_%E124233124268%_
                (lambda ()
                  (if (gx#stx-pair? _%e124232124242%_)
                      (let ((_%e124235124250%_
                             (gx#syntax-e _%e124232124242%_)))
                        (let ((_%hd124236124253%_ (##car _%e124235124250%_))
                              (_%tl124237124255%_ (##cdr _%e124235124250%_)))
                          (let ((_%hd124258%_ _%hd124236124253%_))
                            (if (gx#stx-pair? _%tl124237124255%_)
                                (let ((_%e124238124260%_
                                       (gx#syntax-e _%tl124237124255%_)))
                                  (let ((_%hd124239124263%_
                                         (##car _%e124238124260%_))
                                        (_%tl124240124265%_
                                         (##cdr _%e124238124260%_)))
                                    (if (gx#stx-null? _%tl124240124265%_)
                                        (gx#core-bind-values!__0 _%hd124258%_)
                                        (_%E124234124246%_))))
                                (_%E124234124246%_)))))
                      (_%E124234124246%_)))))
          (_%E124233124268%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind124189%_ _%expr124190%_)
        (let* ((_%e124191124201%_ _%bind124189%_)
               (_%E124193124205%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124191124201%_)))
               (_%E124192124227%_
                (lambda ()
                  (if (gx#stx-pair? _%e124191124201%_)
                      (let ((_%e124194124209%_
                             (gx#syntax-e _%e124191124201%_)))
                        (let ((_%hd124195124212%_ (##car _%e124194124209%_))
                              (_%tl124196124214%_ (##cdr _%e124194124209%_)))
                          (let ((_%hd124217%_ _%hd124195124212%_))
                            (if (gx#stx-pair? _%tl124196124214%_)
                                (let ((_%e124197124219%_
                                       (gx#syntax-e _%tl124196124214%_)))
                                  (let ((_%hd124198124222%_
                                         (##car _%e124197124219%_))
                                        (_%tl124199124224%_
                                         (##cdr _%e124197124219%_)))
                                    (if (gx#stx-null? _%tl124199124224%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd124217%_)
                                              (cons _%expr124190%_ '()))
                                        (_%E124193124205%_))))
                                (_%E124193124205%_)))))
                      (_%E124193124205%_)))))
          (_%E124192124227%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx124143%_)
        (let* ((_%e124144124154%_ _%stx124143%_)
               (_%E124146124158%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124144124154%_)))
               (_%E124145124185%_
                (lambda ()
                  (if (gx#stx-pair? _%e124144124154%_)
                      (let ((_%e124147124162%_
                             (gx#syntax-e _%e124144124154%_)))
                        (let ((_%hd124148124165%_ (##car _%e124147124162%_))
                              (_%tl124149124167%_ (##cdr _%e124147124162%_)))
                          (if (gx#stx-pair? _%tl124149124167%_)
                              (let ((_%e124150124170%_
                                     (gx#syntax-e _%tl124149124167%_)))
                                (let ((_%hd124151124173%_
                                       (##car _%e124150124170%_))
                                      (_%tl124152124175%_
                                       (##cdr _%e124150124170%_)))
                                  (let* ((_%hd124178%_ _%hd124151124173%_)
                                         (_%body124180%_ _%tl124152124175%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124178%_)
                                        (let ((_%expanders124182%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd124178%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd124178%_
                                              _%expanders124182%_)
                                             (gx#core-expand-local-block
                                              _%stx124143%_
                                              _%body124180%_))
                                           gx#current-expander-context
                                           (let ((__obj125564
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj125564)
                                             __obj125564)))
                                        (_%E124146124158%_)))))
                              (_%E124146124158%_))))
                      (_%E124146124158%_)))))
          (_%E124145124185%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx124092%_)
        (let* ((_%e124093124103%_ _%stx124092%_)
               (_%E124095124107%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124093124103%_)))
               (_%E124094124139%_
                (lambda ()
                  (if (gx#stx-pair? _%e124093124103%_)
                      (let ((_%e124096124111%_
                             (gx#syntax-e _%e124093124103%_)))
                        (let ((_%hd124097124114%_ (##car _%e124096124111%_))
                              (_%tl124098124116%_ (##cdr _%e124096124111%_)))
                          (if (gx#stx-pair? _%tl124098124116%_)
                              (let ((_%e124099124119%_
                                     (gx#syntax-e _%tl124098124116%_)))
                                (let ((_%hd124100124122%_
                                       (##car _%e124099124119%_))
                                      (_%tl124101124124%_
                                       (##cdr _%e124099124119%_)))
                                  (let* ((_%hd124127%_ _%hd124100124122%_)
                                         (_%body124129%_ _%tl124101124124%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124127%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd124127%_
                                            (make-list
                                             (gx#stx-length _%hd124127%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g124131124134%_
                                                     _%g124132124136%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g124131124134%_
                                               _%g124132124136%_
                                               '#t))
                                            _%hd124127%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd124127%_))
                                           (gx#core-expand-local-block
                                            _%stx124092%_
                                            _%body124129%_))
                                         gx#current-expander-context
                                         (let ((__obj125565
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125565)
                                           __obj125565))
                                        (_%E124095124107%_)))))
                              (_%E124095124107%_))))
                      (_%E124095124107%_)))))
          (_%E124094124139%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx124049%_)
        (if (gx#stx-list? _%stx124049%_)
            (gx#stx-andmap
             (lambda (_%bind124051%_)
               (let* ((_%e124052124062%_ _%bind124051%_)
                      (_%E124054124066%_ (lambda () '#f))
                      (_%E124053124088%_
                       (lambda ()
                         (if (gx#stx-pair? _%e124052124062%_)
                             (let ((_%e124055124070%_
                                    (gx#syntax-e _%e124052124062%_)))
                               (let ((_%hd124056124073%_
                                      (##car _%e124055124070%_))
                                     (_%tl124057124075%_
                                      (##cdr _%e124055124070%_)))
                                 (let ((_%hd124078%_ _%hd124056124073%_))
                                   (if (gx#stx-pair? _%tl124057124075%_)
                                       (let ((_%e124058124080%_
                                              (gx#syntax-e
                                               _%tl124057124075%_)))
                                         (let ((_%hd124059124083%_
                                                (##car _%e124058124080%_))
                                               (_%tl124060124085%_
                                                (##cdr _%e124058124080%_)))
                                           (if (gx#stx-null?
                                                _%tl124060124085%_)
                                               (gx#identifier? _%hd124078%_)
                                               (_%E124054124066%_))))
                                       (_%E124054124066%_)))))
                             (_%E124054124066%_)))))
                 (_%E124053124088%_)))
             _%stx124049%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind124005%_)
        (let* ((_%e124006124016%_ _%bind124005%_)
               (_%E124008124020%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124006124016%_)))
               (_%E124007124045%_
                (lambda ()
                  (if (gx#stx-pair? _%e124006124016%_)
                      (let ((_%e124009124024%_
                             (gx#syntax-e _%e124006124016%_)))
                        (let ((_%hd124010124027%_ (##car _%e124009124024%_))
                              (_%tl124011124029%_ (##cdr _%e124009124024%_)))
                          (if (gx#stx-pair? _%tl124011124029%_)
                              (let ((_%e124012124032%_
                                     (gx#syntax-e _%tl124011124029%_)))
                                (let ((_%hd124013124035%_
                                       (##car _%e124012124032%_))
                                      (_%tl124014124037%_
                                       (##cdr _%e124012124032%_)))
                                  (let ((_%expr124040%_ _%hd124013124035%_))
                                    (if (gx#stx-null? _%tl124014124037%_)
                                        (let ((_g125574_
                                               (gx#core-expand-expression+1
                                                _%expr124040%_)))
                                          (begin
                                            (let ((_g125575_
                                                   (if (##values? _g125574_)
                                                       (##values-length
                                                        _g125574_)
                                                       1)))
                                              (if (not (##fx= _g125575_ 2))
                                                  (error "Context expects 2 values"
                                                         _g125575_)))
                                            (let ((_%_124042%_
                                                   (##values-ref _g125574_ 0))
                                                  (_%e124043%_
                                                   (##values-ref _g125574_ 1)))
                                              _%e124043%_)))
                                        (_%E124008124020%_)))))
                              (_%E124008124020%_))))
                      (_%E124008124020%_)))))
          (_%E124007124045%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind123950%_ _%e123951%_ _%rebind?123952%_)
        (let* ((_%e123953123963%_ _%bind123950%_)
               (_%E123955123967%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123953123963%_)))
               (_%E123954123989%_
                (lambda ()
                  (if (gx#stx-pair? _%e123953123963%_)
                      (let ((_%e123956123971%_
                             (gx#syntax-e _%e123953123963%_)))
                        (let ((_%hd123957123974%_ (##car _%e123956123971%_))
                              (_%tl123958123976%_ (##cdr _%e123956123971%_)))
                          (let ((_%id123979%_ _%hd123957123974%_))
                            (if (gx#stx-pair? _%tl123958123976%_)
                                (let ((_%e123959123981%_
                                       (gx#syntax-e _%tl123958123976%_)))
                                  (let ((_%hd123960123984%_
                                         (##car _%e123959123981%_))
                                        (_%tl123961123986%_
                                         (##cdr _%e123959123981%_)))
                                    (if (gx#stx-null? _%tl123961123986%_)
                                        (gx#core-bind-syntax!__1
                                         _%id123979%_
                                         _%e123951%_
                                         _%rebind?123952%_)
                                        (_%E123955123967%_))))
                                (_%E123955123967%_)))))
                      (_%E123955123967%_)))))
          (_%E123954123989%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind123996%_ _%e123997%_)
        (let ((_%rebind?123999%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind123996%_
           _%e123997%_
           _%rebind?123999%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g125577_
        (let ((_g125576_ (##length _g125577_)))
          (cond ((##fx= _g125576_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g125577_))
                ((##fx= _g125576_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g125577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g125577_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx123908%_)
        (let* ((_%e123909123919%_ _%stx123908%_)
               (_%E123911123923%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123909123919%_)))
               (_%E123910123945%_
                (lambda ()
                  (if (gx#stx-pair? _%e123909123919%_)
                      (let ((_%e123912123927%_
                             (gx#syntax-e _%e123909123919%_)))
                        (let ((_%hd123913123930%_ (##car _%e123912123927%_))
                              (_%tl123914123932%_ (##cdr _%e123912123927%_)))
                          (if (gx#stx-pair? _%tl123914123932%_)
                              (let ((_%e123915123935%_
                                     (gx#syntax-e _%tl123914123932%_)))
                                (let ((_%hd123916123938%_
                                       (##car _%e123915123935%_))
                                      (_%tl123917123940%_
                                       (##cdr _%e123915123935%_)))
                                  (let ((_%expr123943%_ _%hd123916123938%_))
                                    (if (gx#stx-null? _%tl123917123940%_)
                                        (gx#core-expand-expression
                                         _%expr123943%_)
                                        (_%E123911123923%_)))))
                              (_%E123911123923%_))))
                      (_%E123911123923%_)))))
          (_%E123910123945%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx123867%_)
        (let* ((_%e123868123878%_ _%stx123867%_)
               (_%E123870123882%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123868123878%_)))
               (_%E123869123904%_
                (lambda ()
                  (if (gx#stx-pair? _%e123868123878%_)
                      (let ((_%e123871123886%_
                             (gx#syntax-e _%e123868123878%_)))
                        (let ((_%hd123872123889%_ (##car _%e123871123886%_))
                              (_%tl123873123891%_ (##cdr _%e123871123886%_)))
                          (if (gx#stx-pair? _%tl123873123891%_)
                              (let ((_%e123874123894%_
                                     (gx#syntax-e _%tl123873123891%_)))
                                (let ((_%hd123875123897%_
                                       (##car _%e123874123894%_))
                                      (_%tl123876123899%_
                                       (##cdr _%e123874123894%_)))
                                  (let ((_%e123902%_ _%hd123875123897%_))
                                    (if (gx#stx-null? _%tl123876123899%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e123902%_)
                                                     '()))
                                         (gx#stx-source _%stx123867%_))
                                        (_%E123870123882%_)))))
                              (_%E123870123882%_))))
                      (_%E123870123882%_)))))
          (_%E123869123904%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx123826%_)
        (let* ((_%e123827123837%_ _%stx123826%_)
               (_%E123829123841%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123827123837%_)))
               (_%E123828123863%_
                (lambda ()
                  (if (gx#stx-pair? _%e123827123837%_)
                      (let ((_%e123830123845%_
                             (gx#syntax-e _%e123827123837%_)))
                        (let ((_%hd123831123848%_ (##car _%e123830123845%_))
                              (_%tl123832123850%_ (##cdr _%e123830123845%_)))
                          (if (gx#stx-pair? _%tl123832123850%_)
                              (let ((_%e123833123853%_
                                     (gx#syntax-e _%tl123832123850%_)))
                                (let ((_%hd123834123856%_
                                       (##car _%e123833123853%_))
                                      (_%tl123835123858%_
                                       (##cdr _%e123833123853%_)))
                                  (let ((_%e123861%_ _%hd123834123856%_))
                                    (if (gx#stx-null? _%tl123835123858%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e123861%_)
                                                     '()))
                                         (gx#stx-source _%stx123826%_))
                                        (_%E123829123841%_)))))
                              (_%E123829123841%_))))
                      (_%E123829123841%_)))))
          (_%E123828123863%_))))
    (define gx#core-expand-call%
      (lambda (_%stx123783%_)
        (let* ((_%e123784123794%_ _%stx123783%_)
               (_%E123786123798%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123784123794%_)))
               (_%E123785123822%_
                (lambda ()
                  (if (gx#stx-pair? _%e123784123794%_)
                      (let ((_%e123787123802%_
                             (gx#syntax-e _%e123784123794%_)))
                        (let ((_%hd123788123805%_ (##car _%e123787123802%_))
                              (_%tl123789123807%_ (##cdr _%e123787123802%_)))
                          (if (gx#stx-pair? _%tl123789123807%_)
                              (let ((_%e123790123810%_
                                     (gx#syntax-e _%tl123789123807%_)))
                                (let ((_%hd123791123813%_
                                       (##car _%e123790123810%_))
                                      (_%tl123792123815%_
                                       (##cdr _%e123790123810%_)))
                                  (let* ((_%rator123818%_ _%hd123791123813%_)
                                         (_%args123820%_ _%tl123792123815%_))
                                    (if (gx#stx-list? _%args123820%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator123818%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args123820%_))
                                         (gx#stx-source _%stx123783%_))
                                        (_%E123786123798%_)))))
                              (_%E123786123798%_))))
                      (_%E123786123798%_)))))
          (_%E123785123822%_))))
    (define gx#core-expand-if%
      (lambda (_%stx123716%_)
        (let* ((_%e123717123733%_ _%stx123716%_)
               (_%E123719123737%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123717123733%_)))
               (_%E123718123779%_
                (lambda ()
                  (if (gx#stx-pair? _%e123717123733%_)
                      (let ((_%e123720123741%_
                             (gx#syntax-e _%e123717123733%_)))
                        (let ((_%hd123721123744%_ (##car _%e123720123741%_))
                              (_%tl123722123746%_ (##cdr _%e123720123741%_)))
                          (if (gx#stx-pair? _%tl123722123746%_)
                              (let ((_%e123723123749%_
                                     (gx#syntax-e _%tl123722123746%_)))
                                (let ((_%hd123724123752%_
                                       (##car _%e123723123749%_))
                                      (_%tl123725123754%_
                                       (##cdr _%e123723123749%_)))
                                  (let ((_%test123757%_ _%hd123724123752%_))
                                    (if (gx#stx-pair? _%tl123725123754%_)
                                        (let ((_%e123726123759%_
                                               (gx#syntax-e
                                                _%tl123725123754%_)))
                                          (let ((_%hd123727123762%_
                                                 (##car _%e123726123759%_))
                                                (_%tl123728123764%_
                                                 (##cdr _%e123726123759%_)))
                                            (let ((_%K123767%_
                                                   _%hd123727123762%_))
                                              (if (gx#stx-pair?
                                                   _%tl123728123764%_)
                                                  (let ((_%e123729123769%_
                                                         (gx#syntax-e
                                                          _%tl123728123764%_)))
                                                    (let ((_%hd123730123772%_
                                                           (##car _%e123729123769%_))
                                                          (_%tl123731123774%_
                                                           (##cdr _%e123729123769%_)))
                                                      (let ((_%E123777%_
                                                             _%hd123730123772%_))
                                                        (if (gx#stx-null?
                                                             _%tl123731123774%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test123757%_)
                                 (cons (gx#core-expand-expression _%K123767%_)
                                       (cons (gx#core-expand-expression
                                              _%E123777%_)
                                             '()))))
                     (gx#stx-source _%stx123716%_))
                    (_%E123719123737%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123719123737%_)))))
                                        (_%E123719123737%_)))))
                              (_%E123719123737%_))))
                      (_%E123719123737%_)))))
          (_%E123718123779%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx123675%_)
        (let* ((_%e123676123686%_ _%stx123675%_)
               (_%E123678123690%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123676123686%_)))
               (_%E123677123712%_
                (lambda ()
                  (if (gx#stx-pair? _%e123676123686%_)
                      (let ((_%e123679123694%_
                             (gx#syntax-e _%e123676123686%_)))
                        (let ((_%hd123680123697%_ (##car _%e123679123694%_))
                              (_%tl123681123699%_ (##cdr _%e123679123694%_)))
                          (if (gx#stx-pair? _%tl123681123699%_)
                              (let ((_%e123682123702%_
                                     (gx#syntax-e _%tl123681123699%_)))
                                (let ((_%hd123683123705%_
                                       (##car _%e123682123702%_))
                                      (_%tl123684123707%_
                                       (##cdr _%e123682123702%_)))
                                  (let ((_%id123710%_ _%hd123683123705%_))
                                    (if (gx#stx-null? _%tl123684123707%_)
                                        (if (gx#identifier? _%id123710%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id123710%_
                                                          _%stx123675%_)
                                                         '()))
                                             (gx#stx-source _%stx123675%_))
                                            (_%E123678123690%_))
                                        (_%E123678123690%_)))))
                              (_%E123678123690%_))))
                      (_%E123678123690%_)))))
          (_%E123677123712%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx123621%_)
        (let* ((_%e123622123635%_ _%stx123621%_)
               (_%E123624123639%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123622123635%_)))
               (_%E123623123671%_
                (lambda ()
                  (if (gx#stx-pair? _%e123622123635%_)
                      (let ((_%e123625123643%_
                             (gx#syntax-e _%e123622123635%_)))
                        (let ((_%hd123626123646%_ (##car _%e123625123643%_))
                              (_%tl123627123648%_ (##cdr _%e123625123643%_)))
                          (if (gx#stx-pair? _%tl123627123648%_)
                              (let ((_%e123628123651%_
                                     (gx#syntax-e _%tl123627123648%_)))
                                (let ((_%hd123629123654%_
                                       (##car _%e123628123651%_))
                                      (_%tl123630123656%_
                                       (##cdr _%e123628123651%_)))
                                  (let ((_%id123659%_ _%hd123629123654%_))
                                    (if (gx#stx-pair? _%tl123630123656%_)
                                        (let ((_%e123631123661%_
                                               (gx#syntax-e
                                                _%tl123630123656%_)))
                                          (let ((_%hd123632123664%_
                                                 (##car _%e123631123661%_))
                                                (_%tl123633123666%_
                                                 (##cdr _%e123631123661%_)))
                                            (let ((_%expr123669%_
                                                   _%hd123632123664%_))
                                              (if (gx#stx-null?
                                                   _%tl123633123666%_)
                                                  (if (gx#identifier?
                                                       _%id123659%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id123659%_
                            _%stx123621%_)
                           (cons (gx#core-expand-expression _%expr123669%_)
                                 '())))
               (gx#stx-source _%stx123621%_))
              (_%E123624123639%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123624123639%_)))))
                                        (_%E123624123639%_)))))
                              (_%E123624123639%_))))
                      (_%E123624123639%_)))))
          (_%E123623123671%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx123466%_)
        (letrec ((_%generate123468%_
                  (lambda (_%body123498%_)
                    (let _%lp123500%_ ((_%rest123502%_ _%body123498%_)
                                       (_%ns123503%_
                                        (gx#core-context-namespace__0))
                                       (_%r123504%_ '()))
                      (let* ((_%e123505123520%_ _%rest123502%_)
                             (_%E123518123524%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e123505123520%_)))
                             (_%E123514123528%_
                              (lambda ()
                                (if (gx#stx-null? _%e123505123520%_)
                                    (reverse _%r123504%_)
                                    (_%E123518123524%_))))
                             (_%E123507123585%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123505123520%_)
                                    (let ((_%e123515123532%_
                                           (gx#syntax-e _%e123505123520%_)))
                                      (let ((_%hd123516123535%_
                                             (##car _%e123515123532%_))
                                            (_%tl123517123537%_
                                             (##cdr _%e123515123532%_)))
                                        (let* ((_%hd123540%_
                                                _%hd123516123535%_)
                                               (_%rest123542%_
                                                _%tl123517123537%_))
                                          (if (gx#identifier? _%hd123540%_)
                                              (_%lp123500%_
                                               _%rest123542%_
                                               _%ns123503%_
                                               (cons (cons _%hd123540%_
                                                           (cons (if _%ns123503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd123540%_
                              _%ns123503%_
                              '"#"
                              _%hd123540%_)
                             _%hd123540%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r123504%_))
                                              (let* ((_%e123543123553%_
                                                      _%hd123540%_)
                                                     (_%E123545123557%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e123543123553%_)))
                                                     (_%E123544123581%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e123543123553%_)
                                                            (let ((_%e123546123561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e123543123553%_)))
                      (let ((_%hd123547123564%_ (##car _%e123546123561%_))
                            (_%tl123548123566%_ (##cdr _%e123546123561%_)))
                        (let ((_%id123569%_ _%hd123547123564%_))
                          (if (gx#stx-pair? _%tl123548123566%_)
                              (let ((_%e123549123571%_
                                     (gx#syntax-e _%tl123548123566%_)))
                                (let ((_%hd123550123574%_
                                       (##car _%e123549123571%_))
                                      (_%tl123551123576%_
                                       (##cdr _%e123549123571%_)))
                                  (let ((_%eid123579%_ _%hd123550123574%_))
                                    (if (gx#stx-null? _%tl123551123576%_)
                                        (if (and (gx#identifier? _%id123569%_)
                                                 (gx#identifier?
                                                  _%eid123579%_))
                                            (_%lp123500%_
                                             _%rest123542%_
                                             _%ns123503%_
                                             (cons (cons _%id123569%_
                                                         (cons _%eid123579%_
                                                               '()))
                                                   _%r123504%_))
                                            (_%E123545123557%_))
                                        (_%E123545123557%_)))))
                              (_%E123545123557%_)))))
                    (_%E123545123557%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E123544123581%_))))))
                                    (_%E123514123528%_))))
                             (_%E123506123617%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123505123520%_)
                                    (let ((_%e123508123589%_
                                           (gx#syntax-e _%e123505123520%_)))
                                      (let ((_%hd123509123592%_
                                             (##car _%e123508123589%_))
                                            (_%tl123510123594%_
                                             (##cdr _%e123508123589%_)))
                                        (if (eq? (gx#stx-e _%hd123509123592%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl123510123594%_)
                                                (let ((_%e123511123597%_
                                                       (gx#syntax-e
                                                        _%tl123510123594%_)))
                                                  (let ((_%hd123512123600%_
                                                         (##car _%e123511123597%_))
                                                        (_%tl123513123602%_
                                                         (##cdr _%e123511123597%_)))
                                                    (let* ((_%ns123605%_
                                                            _%hd123512123600%_)
                                                           (_%rest123607%_
                                                            _%tl123513123602%_)
                                                           (_%ns123615%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns123605%_)
                        (symbol->string (gx#stx-e _%ns123605%_))
                        (if (or (gx#stx-string? _%ns123605%_)
                                (gx#stx-false? _%ns123605%_))
                            (gx#stx-e _%ns123605%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx123466%_
                             _%ns123605%_)))))
              (_%lp123500%_ _%rest123607%_ _%ns123615%_ _%r123504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E123507123585%_))
                                            (_%E123507123585%_))))
                                    (_%E123507123585%_)))))
                        (_%E123506123617%_))))))
          (let* ((_%e123469123476%_ _%stx123466%_)
                 (_%E123471123480%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123469123476%_)))
                 (_%E123470123494%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123469123476%_)
                        (let ((_%e123472123484%_
                               (gx#syntax-e _%e123469123476%_)))
                          (let ((_%hd123473123487%_ (##car _%e123472123484%_))
                                (_%tl123474123489%_ (##cdr _%e123472123484%_)))
                            (let ((_%body123492%_ _%tl123474123489%_))
                              (if (gx#stx-list? _%body123492%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate123468%_ _%body123492%_))
                                  (_%E123471123480%_)))))
                        (_%E123471123480%_)))))
            (_%E123470123494%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx123412%_)
        (let* ((_%e123413123426%_ _%stx123412%_)
               (_%E123415123430%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123413123426%_)))
               (_%E123414123462%_
                (lambda ()
                  (if (gx#stx-pair? _%e123413123426%_)
                      (let ((_%e123416123434%_
                             (gx#syntax-e _%e123413123426%_)))
                        (let ((_%hd123417123437%_ (##car _%e123416123434%_))
                              (_%tl123418123439%_ (##cdr _%e123416123434%_)))
                          (if (gx#stx-pair? _%tl123418123439%_)
                              (let ((_%e123419123442%_
                                     (gx#syntax-e _%tl123418123439%_)))
                                (let ((_%hd123420123445%_
                                       (##car _%e123419123442%_))
                                      (_%tl123421123447%_
                                       (##cdr _%e123419123442%_)))
                                  (let ((_%hd123450%_ _%hd123420123445%_))
                                    (if (gx#stx-pair? _%tl123421123447%_)
                                        (let ((_%e123422123452%_
                                               (gx#syntax-e
                                                _%tl123421123447%_)))
                                          (let ((_%hd123423123455%_
                                                 (##car _%e123422123452%_))
                                                (_%tl123424123457%_
                                                 (##cdr _%e123422123452%_)))
                                            (let ((_%expr123460%_
                                                   _%hd123423123455%_))
                                              (if (gx#stx-null?
                                                   _%tl123424123457%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd123450%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd123450%_)
                          (cons _%expr123460%_ '())))
              (_%E123415123430%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123415123430%_)))))
                                        (_%E123415123430%_)))))
                              (_%E123415123430%_))))
                      (_%E123415123430%_)))))
          (_%E123414123462%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx123358%_)
        (let* ((_%e123359123372%_ _%stx123358%_)
               (_%E123361123376%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123359123372%_)))
               (_%E123360123408%_
                (lambda ()
                  (if (gx#stx-pair? _%e123359123372%_)
                      (let ((_%e123362123380%_
                             (gx#syntax-e _%e123359123372%_)))
                        (let ((_%hd123363123383%_ (##car _%e123362123380%_))
                              (_%tl123364123385%_ (##cdr _%e123362123380%_)))
                          (if (gx#stx-pair? _%tl123364123385%_)
                              (let ((_%e123365123388%_
                                     (gx#syntax-e _%tl123364123385%_)))
                                (let ((_%hd123366123391%_
                                       (##car _%e123365123388%_))
                                      (_%tl123367123393%_
                                       (##cdr _%e123365123388%_)))
                                  (let ((_%hd123396%_ _%hd123366123391%_))
                                    (if (gx#stx-pair? _%tl123367123393%_)
                                        (let ((_%e123368123398%_
                                               (gx#syntax-e
                                                _%tl123367123393%_)))
                                          (let ((_%hd123369123401%_
                                                 (##car _%e123368123398%_))
                                                (_%tl123370123403%_
                                                 (##cdr _%e123368123398%_)))
                                            (let ((_%expr123406%_
                                                   _%hd123369123401%_))
                                              (if (gx#stx-null?
                                                   _%tl123370123403%_)
                                                  (if (gx#identifier?
                                                       _%hd123396%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd123396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr123406%_ '())))
              (_%E123361123376%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123361123376%_)))))
                                        (_%E123361123376%_)))))
                              (_%E123361123376%_))))
                      (_%E123361123376%_)))))
          (_%E123360123408%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx123304%_)
        (let* ((_%e123305123318%_ _%stx123304%_)
               (_%E123307123322%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123305123318%_)))
               (_%E123306123354%_
                (lambda ()
                  (if (gx#stx-pair? _%e123305123318%_)
                      (let ((_%e123308123326%_
                             (gx#syntax-e _%e123305123318%_)))
                        (let ((_%hd123309123329%_ (##car _%e123308123326%_))
                              (_%tl123310123331%_ (##cdr _%e123308123326%_)))
                          (if (gx#stx-pair? _%tl123310123331%_)
                              (let ((_%e123311123334%_
                                     (gx#syntax-e _%tl123310123331%_)))
                                (let ((_%hd123312123337%_
                                       (##car _%e123311123334%_))
                                      (_%tl123313123339%_
                                       (##cdr _%e123311123334%_)))
                                  (let ((_%id123342%_ _%hd123312123337%_))
                                    (if (gx#stx-pair? _%tl123313123339%_)
                                        (let ((_%e123314123344%_
                                               (gx#syntax-e
                                                _%tl123313123339%_)))
                                          (let ((_%hd123315123347%_
                                                 (##car _%e123314123344%_))
                                                (_%tl123316123349%_
                                                 (##cdr _%e123314123344%_)))
                                            (let ((_%alias-id123352%_
                                                   _%hd123315123347%_))
                                              (if (gx#stx-null?
                                                   _%tl123316123349%_)
                                                  (if (and (gx#identifier?
                                                            _%id123342%_)
                                                           (gx#identifier?
                                                            _%alias-id123352%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id123342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id123352%_ '())))
              (_%E123307123322%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123307123322%_)))))
                                        (_%E123307123322%_)))))
                              (_%E123307123322%_))))
                      (_%E123307123322%_)))))
          (_%E123306123354%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx123261%_)
        (let* ((_%e123262123272%_ _%stx123261%_)
               (_%E123264123276%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123262123272%_)))
               (_%E123263123300%_
                (lambda ()
                  (if (gx#stx-pair? _%e123262123272%_)
                      (let ((_%e123265123280%_
                             (gx#syntax-e _%e123262123272%_)))
                        (let ((_%hd123266123283%_ (##car _%e123265123280%_))
                              (_%tl123267123285%_ (##cdr _%e123265123280%_)))
                          (if (gx#stx-pair? _%tl123267123285%_)
                              (let ((_%e123268123288%_
                                     (gx#syntax-e _%tl123267123285%_)))
                                (let ((_%hd123269123291%_
                                       (##car _%e123268123288%_))
                                      (_%tl123270123293%_
                                       (##cdr _%e123268123288%_)))
                                  (let* ((_%hd123296%_ _%hd123269123291%_)
                                         (_%body123298%_ _%tl123270123293%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd123296%_)
                                             (gx#stx-list? _%body123298%_)
                                             (not (gx#stx-null?
                                                   _%body123298%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd123296%_)
                                         _%body123298%_)
                                        (_%E123264123276%_)))))
                              (_%E123264123276%_))))
                      (_%E123264123276%_)))))
          (_%E123263123300%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx123197%_)
        (letrec ((_%generate123199%_
                  (lambda (_%clause123229%_)
                    (let* ((_%e123230123237%_ _%clause123229%_)
                           (_%E123232123241%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx123197%_
                               _%clause123229%_)))
                           (_%E123231123257%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123230123237%_)
                                  (let ((_%e123233123245%_
                                         (gx#syntax-e _%e123230123237%_)))
                                    (let ((_%hd123234123248%_
                                           (##car _%e123233123245%_))
                                          (_%tl123235123250%_
                                           (##cdr _%e123233123245%_)))
                                      (let* ((_%hd123253%_ _%hd123234123248%_)
                                             (_%body123255%_
                                              _%tl123235123250%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd123253%_)
                                                 (gx#stx-list? _%body123255%_)
                                                 (not (gx#stx-null?
                                                       _%body123255%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd123253%_)
                                                   _%body123255%_)
                                             (gx#stx-source _%clause123229%_))
                                            (_%E123232123241%_)))))
                                  (_%E123232123241%_)))))
                      (_%E123231123257%_)))))
          (let* ((_%e123200123207%_ _%stx123197%_)
                 (_%E123202123211%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123200123207%_)))
                 (_%E123201123225%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123200123207%_)
                        (let ((_%e123203123215%_
                               (gx#syntax-e _%e123200123207%_)))
                          (let ((_%hd123204123218%_ (##car _%e123203123215%_))
                                (_%tl123205123220%_ (##cdr _%e123203123215%_)))
                            (let ((_%clauses123223%_ _%tl123205123220%_))
                              (if (gx#stx-list? _%clauses123223%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate123199%_
                                    _%clauses123223%_))
                                  (_%E123202123211%_)))))
                        (_%E123202123211%_)))))
            (_%E123201123225%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx123098%_ _%form123099%_)
        (letrec ((_%generate123101%_
                  (lambda (_%bind123144%_)
                    (let* ((_%e123145123155%_ _%bind123144%_)
                           (_%E123147123159%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx123098%_
                               _%bind123144%_)))
                           (_%E123146123183%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123145123155%_)
                                  (let ((_%e123148123163%_
                                         (gx#syntax-e _%e123145123155%_)))
                                    (let ((_%hd123149123166%_
                                           (##car _%e123148123163%_))
                                          (_%tl123150123168%_
                                           (##cdr _%e123148123163%_)))
                                      (let ((_%ids123171%_ _%hd123149123166%_))
                                        (if (gx#stx-pair? _%tl123150123168%_)
                                            (let ((_%e123151123173%_
                                                   (gx#syntax-e
                                                    _%tl123150123168%_)))
                                              (let ((_%hd123152123176%_
                                                     (##car _%e123151123173%_))
                                                    (_%tl123153123178%_
                                                     (##cdr _%e123151123173%_)))
                                                (let ((_%expr123181%_
                                                       _%hd123152123176%_))
                                                  (if (gx#stx-null?
                                                       _%tl123153123178%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids123171%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids123171%_)
                        (cons _%expr123181%_ '()))
                  (_%E123147123159%_))
              (_%E123147123159%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E123147123159%_)))))
                                  (_%E123147123159%_)))))
                      (_%E123146123183%_)))))
          (let* ((_%e123102123112%_ _%stx123098%_)
                 (_%E123104123116%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123102123112%_)))
                 (_%E123103123140%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123102123112%_)
                        (let ((_%e123105123120%_
                               (gx#syntax-e _%e123102123112%_)))
                          (let ((_%hd123106123123%_ (##car _%e123105123120%_))
                                (_%tl123107123125%_ (##cdr _%e123105123120%_)))
                            (if (gx#stx-pair? _%tl123107123125%_)
                                (let ((_%e123108123128%_
                                       (gx#syntax-e _%tl123107123125%_)))
                                  (let ((_%hd123109123131%_
                                         (##car _%e123108123128%_))
                                        (_%tl123110123133%_
                                         (##cdr _%e123108123128%_)))
                                    (let* ((_%hd123136%_ _%hd123109123131%_)
                                           (_%body123138%_ _%tl123110123133%_))
                                      (if (and (gx#stx-list? _%hd123136%_)
                                               (gx#stx-list? _%body123138%_)
                                               (not (gx#stx-null?
                                                     _%body123138%_)))
                                          (gx#core-cons*
                                           _%form123099%_
                                           (gx#stx-map1
                                            _%generate123101%_
                                            _%hd123136%_)
                                           _%body123138%_)
                                          (_%E123104123116%_)))))
                                (_%E123104123116%_))))
                        (_%E123104123116%_)))))
            (_%E123103123140%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx123190%_)
        (let ((_%form123192%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx123190%_ _%form123192%_))))
    (define gx#macro-expand-let-values
      (lambda _g125579_
        (let ((_g125578_ (##length _g125579_)))
          (cond ((##fx= _g125578_ 1)
                 (apply gx#macro-expand-let-values__0 _g125579_))
                ((##fx= _g125578_ 2)
                 (apply gx#macro-expand-let-values__% _g125579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g125579_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx123095%_)
        (gx#macro-expand-let-values__% _%stx123095%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx123093%_)
        (gx#macro-expand-let-values__% _%stx123093%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx122984%_)
        (let* ((_%e122985123011%_ _%stx122984%_)
               (_%E122997123015%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122985123011%_)))
               (_%E122987123057%_
                (lambda ()
                  (if (gx#stx-pair? _%e122985123011%_)
                      (let ((_%e122998123019%_
                             (gx#syntax-e _%e122985123011%_)))
                        (let ((_%hd122999123022%_ (##car _%e122998123019%_))
                              (_%tl123000123024%_ (##cdr _%e122998123019%_)))
                          (if (gx#stx-pair? _%tl123000123024%_)
                              (let ((_%e123001123027%_
                                     (gx#syntax-e _%tl123000123024%_)))
                                (let ((_%hd123002123030%_
                                       (##car _%e123001123027%_))
                                      (_%tl123003123032%_
                                       (##cdr _%e123001123027%_)))
                                  (let ((_%test123035%_ _%hd123002123030%_))
                                    (if (gx#stx-pair? _%tl123003123032%_)
                                        (let ((_%e123004123037%_
                                               (gx#syntax-e
                                                _%tl123003123032%_)))
                                          (let ((_%hd123005123040%_
                                                 (##car _%e123004123037%_))
                                                (_%tl123006123042%_
                                                 (##cdr _%e123004123037%_)))
                                            (let ((_%K123045%_
                                                   _%hd123005123040%_))
                                              (if (gx#stx-pair?
                                                   _%tl123006123042%_)
                                                  (let ((_%e123007123047%_
                                                         (gx#syntax-e
                                                          _%tl123006123042%_)))
                                                    (let ((_%hd123008123050%_
                                                           (##car _%e123007123047%_))
                                                          (_%tl123009123052%_
                                                           (##cdr _%e123007123047%_)))
                                                      (let ((_%E123055%_
                                                             _%hd123008123050%_))
                                                        (if (gx#stx-null?
                                                             _%tl123009123052%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test123035%_
                                                             _%K123045%_
                                                             _%E123055%_)
                                                            (_%E122997123015%_)))))
                                                  (_%E122997123015%_)))))
                                        (_%E122997123015%_)))))
                              (_%E122997123015%_))))
                      (_%E122997123015%_))))
               (_%E122986123089%_
                (lambda ()
                  (if (gx#stx-pair? _%e122985123011%_)
                      (let ((_%e122988123061%_
                             (gx#syntax-e _%e122985123011%_)))
                        (let ((_%hd122989123064%_ (##car _%e122988123061%_))
                              (_%tl122990123066%_ (##cdr _%e122988123061%_)))
                          (if (gx#stx-pair? _%tl122990123066%_)
                              (let ((_%e122991123069%_
                                     (gx#syntax-e _%tl122990123066%_)))
                                (let ((_%hd122992123072%_
                                       (##car _%e122991123069%_))
                                      (_%tl122993123074%_
                                       (##cdr _%e122991123069%_)))
                                  (let ((_%test123077%_ _%hd122992123072%_))
                                    (if (gx#stx-pair? _%tl122993123074%_)
                                        (let ((_%e122994123079%_
                                               (gx#syntax-e
                                                _%tl122993123074%_)))
                                          (let ((_%hd122995123082%_
                                                 (##car _%e122994123079%_))
                                                (_%tl122996123084%_
                                                 (##cdr _%e122994123079%_)))
                                            (let ((_%K123087%_
                                                   _%hd122995123082%_))
                                              (if (gx#stx-null?
                                                   _%tl122996123084%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test123077%_
                                                   _%K123087%_
                                                   '#!void)
                                                  (_%E122987123057%_)))))
                                        (_%E122987123057%_)))))
                              (_%E122987123057%_))))
                      (_%E122987123057%_)))))
          (_%E122986123089%_))))
    (define gx#free-identifier=?
      (lambda (_%xid122969%_ _%yid122970%_)
        (let ((_%xe122972%_ (gx#resolve-identifier__0 _%xid122969%_))
              (_%ye122973%_ (gx#resolve-identifier__0 _%yid122970%_)))
          (if (and _%xe122972%_ _%ye122973%_)
              (let ((_%$e122976%_ (eq? _%xe122972%_ _%ye122973%_)))
                (if _%$e122976%_
                    _%$e122976%_
                    (if (##structure-instance-of? _%xe122972%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye122973%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe122972%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye122973%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe122972%_ _%ye122973%_)
                  '#f
                  (gx#stx-eq? _%xid122969%_ _%yid122970%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid122950%_ _%yid122951%_)
        (letrec ((_%context122953%_
                  (lambda (_%e122967%_)
                    (if (##structure-direct-instance-of?
                         _%e122967%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e122967%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks122954%_
                  (lambda (_%e122962%_)
                    (if (symbol? _%e122962%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e122962%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e122962%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e122962%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap122955%_
                  (lambda (_%e122960%_)
                    (if (symbol? _%e122960%_)
                        _%e122960%_
                        (gx#syntax-local-unwrap _%e122960%_)))))
          (let ((_%x122957%_ (_%unwrap122955%_ _%xid122950%_))
                (_%y122958%_ (_%unwrap122955%_ _%yid122951%_)))
            (if (gx#stx-eq? _%x122957%_ _%y122958%_)
                (if (eq? (_%context122953%_ _%x122957%_)
                         (_%context122953%_ _%y122958%_))
                    (equal? (_%marks122954%_ _%x122957%_)
                            (_%marks122954%_ _%y122958%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx122948%_)
        (if (gx#identifier? _%stx122948%_)
            (gx#core-identifier=? _%stx122948%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx122946%_)
        (if (gx#identifier? _%stx122946%_)
            (gx#core-identifier=? _%stx122946%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx122889%_ _%where122890%_)
        (let _%lp122892%_ ((_%rest122894%_ (gx#syntax->list _%stx122889%_)))
          (let* ((_%rest122895122903%_ _%rest122894%_)
                 (_%else122897122911%_ (lambda () '#t))
                 (_%K122899122924%_
                  (lambda (_%rest122914%_ _%hd122915%_)
                    (if (gx#identifier? _%hd122915%_)
                        (if (__find (lambda (_%g122917122919%_)
                                      (gx#bound-identifier=?
                                       _%g122917122919%_
                                       _%hd122915%_))
                                    _%rest122914%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where122890%_
                             _%hd122915%_)
                            (_%lp122892%_ _%rest122914%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where122890%_
                         _%hd122915%_)))))
            (if (pair? _%rest122895122903%_)
                (let ((_%hd122900122927%_ (##car _%rest122895122903%_))
                      (_%tl122901122929%_ (##cdr _%rest122895122903%_)))
                  (let* ((_%hd122932%_ _%hd122900122927%_)
                         (_%rest122934%_ _%tl122901122929%_))
                    (_%K122899122924%_ _%rest122934%_ _%hd122932%_)))
                (_%else122897122911%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx122939%_)
        (let ((_%where122941%_ _%stx122939%_))
          (gx#check-duplicate-identifiers__% _%stx122939%_ _%where122941%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g125581_
        (let ((_g125580_ (##length _g125581_)))
          (cond ((##fx= _g125580_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g125581_))
                ((##fx= _g125580_ 2)
                 (apply gx#check-duplicate-identifiers__% _g125581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g125581_))))))
    (define gx#core-bind-values?
      (lambda (_%stx122881%_)
        (gx#stx-andmap
         (lambda (_%x122883%_)
           (let ((_%$e122885%_ (gx#identifier? _%x122883%_)))
             (if _%$e122885%_ _%$e122885%_ (gx#stx-false? _%x122883%_))))
         _%stx122881%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx122845%_ _%rebind?122846%_ _%phi122847%_ _%ctx122848%_)
        (gx#stx-for-each1
         (lambda (_%id122850%_)
           (if (gx#identifier? _%id122850%_)
               (gx#core-bind-runtime!__%
                _%id122850%_
                _%rebind?122846%_
                _%phi122847%_
                _%ctx122848%_)
               '#!void))
         _%stx122845%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx122855%_)
        (let* ((_%rebind?122857%_ '#f)
               (_%phi122859%_ (gx#current-expander-phi))
               (_%ctx122861%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122855%_
           _%rebind?122857%_
           _%phi122859%_
           _%ctx122861%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx122863%_ _%rebind?122864%_)
        (let* ((_%phi122866%_ (gx#current-expander-phi))
               (_%ctx122868%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122863%_
           _%rebind?122864%_
           _%phi122866%_
           _%ctx122868%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx122870%_ _%rebind?122871%_ _%phi122872%_)
        (let ((_%ctx122874%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122870%_
           _%rebind?122871%_
           _%phi122872%_
           _%ctx122874%_))))
    (define gx#core-bind-values!
      (lambda _g125583_
        (let ((_g125582_ (##length _g125583_)))
          (cond ((##fx= _g125582_ 1) (apply gx#core-bind-values!__0 _g125583_))
                ((##fx= _g125582_ 2) (apply gx#core-bind-values!__1 _g125583_))
                ((##fx= _g125582_ 3) (apply gx#core-bind-values!__2 _g125583_))
                ((##fx= _g125582_ 4) (apply gx#core-bind-values!__% _g125583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g125583_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx122840%_)
        (gx#stx-map1
         (lambda (_%x122842%_)
           (if (gx#identifier? _%x122842%_)
               (gx#core-quote-syntax__0 _%x122842%_)
               '#f))
         _%stx122840%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx122833%_)
        (if (gx#identifier? _%stx122833%_)
            (let* ((_%bind122835%_ (gx#resolve-identifier__0 _%stx122833%_))
                   (_%$e122837%_ (not _%bind122835%_)))
              (if _%$e122837%_
                  _%$e122837%_
                  (##structure-instance-of?
                   _%bind122835%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id122822%_ _%form122823%_)
        (let ((_%bind122825%_ (gx#resolve-identifier__0 _%id122822%_)))
          (if (##structure-instance-of? _%bind122825%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id122822%_)
              (if (not _%bind122825%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id122822%_)))
                      (gx#core-quote-syntax__0 _%id122822%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form122823%_
                       _%id122822%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form122823%_
                   _%id122822%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id122777%_ _%rebind?122778%_ _%phi122779%_ _%ctx122780%_)
        (let* ((_%key122782%_ (gx#core-identifier-key _%id122777%_))
               (_%eid122784%_
                (gx#make-binding-id__%
                 _%key122782%_
                 '#f
                 _%phi122779%_
                 _%ctx122780%_))
               (_%bind122790%_
                (if (##structure-instance-of?
                     _%ctx122780%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid122784%_
                     _%key122782%_
                     _%phi122779%_
                     _%ctx122780%_)
                    (if (##structure-instance-of?
                         _%ctx122780%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid122784%_
                         _%key122782%_
                         _%phi122779%_)
                        (if (##structure-instance-of?
                             _%ctx122780%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid122784%_
                             _%key122782%_
                             _%phi122779%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid122784%_
                             _%key122782%_
                             _%phi122779%_))))))
          (gx#bind-identifier!__%
           _%id122777%_
           _%bind122790%_
           _%rebind?122778%_
           _%phi122779%_
           _%ctx122780%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id122796%_)
        (let* ((_%rebind?122798%_ '#f)
               (_%phi122800%_ (gx#current-expander-phi))
               (_%ctx122802%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122796%_
           _%rebind?122798%_
           _%phi122800%_
           _%ctx122802%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id122804%_ _%rebind?122805%_)
        (let* ((_%phi122807%_ (gx#current-expander-phi))
               (_%ctx122809%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122804%_
           _%rebind?122805%_
           _%phi122807%_
           _%ctx122809%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id122811%_ _%rebind?122812%_ _%phi122813%_)
        (let ((_%ctx122815%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122811%_
           _%rebind?122812%_
           _%phi122813%_
           _%ctx122815%_))))
    (define gx#core-bind-runtime!
      (lambda _g125585_
        (let ((_g125584_ (##length _g125585_)))
          (cond ((##fx= _g125584_ 1)
                 (apply gx#core-bind-runtime!__0 _g125585_))
                ((##fx= _g125584_ 2)
                 (apply gx#core-bind-runtime!__1 _g125585_))
                ((##fx= _g125584_ 3)
                 (apply gx#core-bind-runtime!__2 _g125585_))
                ((##fx= _g125584_ 4)
                 (apply gx#core-bind-runtime!__% _g125585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g125585_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id122729%_
               _%eid122730%_
               _%rebind?122731%_
               _%phi122732%_
               _%ctx122733%_)
        (let* ((_%key122735%_ (gx#core-identifier-key _%id122729%_))
               (_%bind122740%_
                (if (##structure-instance-of?
                     _%ctx122733%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid122730%_
                     _%key122735%_
                     _%phi122732%_
                     _%ctx122733%_)
                    (if (##structure-instance-of?
                         _%ctx122733%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid122730%_
                         _%key122735%_
                         _%phi122732%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid122730%_
                         _%key122735%_
                         _%phi122732%_)))))
          (gx#bind-identifier!__%
           _%id122729%_
           _%bind122740%_
           _%rebind?122731%_
           _%phi122732%_
           _%ctx122733%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id122746%_ _%eid122747%_)
        (let* ((_%rebind?122749%_ '#f)
               (_%phi122751%_ (gx#current-expander-phi))
               (_%ctx122753%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122746%_
           _%eid122747%_
           _%rebind?122749%_
           _%phi122751%_
           _%ctx122753%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id122755%_ _%eid122756%_ _%rebind?122757%_)
        (let* ((_%phi122759%_ (gx#current-expander-phi))
               (_%ctx122761%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122755%_
           _%eid122756%_
           _%rebind?122757%_
           _%phi122759%_
           _%ctx122761%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id122763%_ _%eid122764%_ _%rebind?122765%_ _%phi122766%_)
        (let ((_%ctx122768%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122763%_
           _%eid122764%_
           _%rebind?122765%_
           _%phi122766%_
           _%ctx122768%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g125587_
        (let ((_g125586_ (##length _g125587_)))
          (cond ((##fx= _g125586_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g125587_))
                ((##fx= _g125586_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g125587_))
                ((##fx= _g125586_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g125587_))
                ((##fx= _g125586_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g125587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g125587_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id122689%_
               _%eid122690%_
               _%rebind?122691%_
               _%phi122692%_
               _%ctx122693%_)
        (gx#bind-identifier!__%
         _%id122689%_
         (##structure
          gx#extern-binding::t
          _%eid122690%_
          (gx#core-identifier-key _%id122689%_)
          _%phi122692%_)
         _%rebind?122691%_
         _%phi122692%_
         _%ctx122693%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id122698%_ _%eid122699%_)
        (let* ((_%rebind?122701%_ '#f)
               (_%phi122703%_ (gx#current-expander-phi))
               (_%ctx122705%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122698%_
           _%eid122699%_
           _%rebind?122701%_
           _%phi122703%_
           _%ctx122705%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id122707%_ _%eid122708%_ _%rebind?122709%_)
        (let* ((_%phi122711%_ (gx#current-expander-phi))
               (_%ctx122713%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122707%_
           _%eid122708%_
           _%rebind?122709%_
           _%phi122711%_
           _%ctx122713%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id122715%_ _%eid122716%_ _%rebind?122717%_ _%phi122718%_)
        (let ((_%ctx122720%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122715%_
           _%eid122716%_
           _%rebind?122717%_
           _%phi122718%_
           _%ctx122720%_))))
    (define gx#core-bind-extern!
      (lambda _g125589_
        (let ((_g125588_ (##length _g125589_)))
          (cond ((##fx= _g125588_ 2) (apply gx#core-bind-extern!__0 _g125589_))
                ((##fx= _g125588_ 3) (apply gx#core-bind-extern!__1 _g125589_))
                ((##fx= _g125588_ 4) (apply gx#core-bind-extern!__2 _g125589_))
                ((##fx= _g125588_ 5) (apply gx#core-bind-extern!__% _g125589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g125589_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id122643%_
               _%e122644%_
               _%rebind?122645%_
               _%phi122646%_
               _%ctx122647%_)
        (gx#bind-identifier!__%
         _%id122643%_
         (let ((_%key122652%_ (gx#core-identifier-key _%id122643%_))
               (_%e122653%_
                (if (or (##structure-instance-of? _%e122644%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e122644%_
                         'gx#expander-context::t))
                    _%e122644%_
                    (##structure
                     gx#user-expander::t
                     _%e122644%_
                     _%ctx122647%_
                     _%phi122646%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key122652%_
             '#t
             _%phi122646%_
             _%ctx122647%_)
            _%key122652%_
            _%phi122646%_
            _%e122653%_))
         _%rebind?122645%_
         _%phi122646%_
         _%ctx122647%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id122658%_ _%e122659%_)
        (let* ((_%rebind?122661%_ '#f)
               (_%phi122663%_ (gx#current-expander-phi))
               (_%ctx122665%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122658%_
           _%e122659%_
           _%rebind?122661%_
           _%phi122663%_
           _%ctx122665%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id122667%_ _%e122668%_ _%rebind?122669%_)
        (let* ((_%phi122671%_ (gx#current-expander-phi))
               (_%ctx122673%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122667%_
           _%e122668%_
           _%rebind?122669%_
           _%phi122671%_
           _%ctx122673%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id122675%_ _%e122676%_ _%rebind?122677%_ _%phi122678%_)
        (let ((_%ctx122680%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122675%_
           _%e122676%_
           _%rebind?122677%_
           _%phi122678%_
           _%ctx122680%_))))
    (define gx#core-bind-syntax!
      (lambda _g125591_
        (let ((_g125590_ (##length _g125591_)))
          (cond ((##fx= _g125590_ 2) (apply gx#core-bind-syntax!__0 _g125591_))
                ((##fx= _g125590_ 3) (apply gx#core-bind-syntax!__1 _g125591_))
                ((##fx= _g125590_ 4) (apply gx#core-bind-syntax!__2 _g125591_))
                ((##fx= _g125590_ 5) (apply gx#core-bind-syntax!__% _g125591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g125591_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id122626%_ _%e122627%_ _%rebind?122628%_)
        (gx#core-bind-syntax!__%
         _%id122626%_
         _%e122627%_
         _%rebind?122628%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id122633%_ _%e122634%_)
        (let ((_%rebind?122636%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id122633%_
           _%e122634%_
           _%rebind?122636%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g125593_
        (let ((_g125592_ (##length _g125593_)))
          (cond ((##fx= _g125592_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g125593_))
                ((##fx= _g125592_ 3)
                 (apply gx#core-bind-root-syntax!__% _g125593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g125593_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id122584%_
               _%alias-id122585%_
               _%rebind?122586%_
               _%phi122587%_
               _%ctx122588%_)
        (gx#bind-identifier!__%
         _%id122584%_
         (let ((_%key122590%_ (gx#core-identifier-key _%id122584%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key122590%_
             '#t
             _%phi122587%_
             _%ctx122588%_)
            _%key122590%_
            _%phi122587%_
            _%alias-id122585%_))
         _%rebind?122586%_
         _%phi122587%_
         _%ctx122588%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id122595%_ _%alias-id122596%_)
        (let* ((_%rebind?122598%_ '#f)
               (_%phi122600%_ (gx#current-expander-phi))
               (_%ctx122602%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122595%_
           _%alias-id122596%_
           _%rebind?122598%_
           _%phi122600%_
           _%ctx122602%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id122604%_ _%alias-id122605%_ _%rebind?122606%_)
        (let* ((_%phi122608%_ (gx#current-expander-phi))
               (_%ctx122610%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122604%_
           _%alias-id122605%_
           _%rebind?122606%_
           _%phi122608%_
           _%ctx122610%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id122612%_ _%alias-id122613%_ _%rebind?122614%_ _%phi122615%_)
        (let ((_%ctx122617%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122612%_
           _%alias-id122613%_
           _%rebind?122614%_
           _%phi122615%_
           _%ctx122617%_))))
    (define gx#core-bind-alias!
      (lambda _g125595_
        (let ((_g125594_ (##length _g125595_)))
          (cond ((##fx= _g125594_ 2) (apply gx#core-bind-alias!__0 _g125595_))
                ((##fx= _g125594_ 3) (apply gx#core-bind-alias!__1 _g125595_))
                ((##fx= _g125594_ 4) (apply gx#core-bind-alias!__2 _g125595_))
                ((##fx= _g125594_ 5) (apply gx#core-bind-alias!__% _g125595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g125595_))))))
    (define gx#make-binding-id__%
      (lambda (_%key122534%_ _%syntax?122535%_ _%phi122536%_ _%ctx122537%_)
        (if (uninterned-symbol? _%key122534%_)
            (##gensym 'L)
            (if (pair? _%key122534%_)
                (gensym (##car _%key122534%_))
                (if (##structure-instance-of? _%ctx122537%_ 'gx#top-context::t)
                    (let ((_%ns122542%_
                           (gx#core-context-namespace__% _%ctx122537%_)))
                      (if (and (fxzero? _%phi122536%_) (not _%syntax?122535%_))
                          (if _%ns122542%_
                              (make-symbol__1 _%ns122542%_ '"#" _%key122534%_)
                              _%key122534%_)
                          (if _%syntax?122535%_
                              (make-symbol__1
                               (let ((_%$e122546%_ _%ns122542%_))
                                 (if _%$e122546%_ _%$e122546%_ '""))
                               '"[:"
                               (number->string _%phi122536%_)
                               '":]#"
                               _%key122534%_)
                              (make-symbol__1
                               (let ((_%$e122550%_ _%ns122542%_))
                                 (if _%$e122550%_ _%$e122550%_ '""))
                               '"["
                               (number->string _%phi122536%_)
                               '"]#"
                               _%key122534%_))))
                    (gensym _%key122534%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key122557%_)
        (let* ((_%syntax?122559%_ '#f)
               (_%phi122561%_ (gx#current-expander-phi))
               (_%ctx122563%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122557%_
           _%syntax?122559%_
           _%phi122561%_
           _%ctx122563%_))))
    (define gx#make-binding-id__1
      (lambda (_%key122565%_ _%syntax?122566%_)
        (let* ((_%phi122568%_ (gx#current-expander-phi))
               (_%ctx122570%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122565%_
           _%syntax?122566%_
           _%phi122568%_
           _%ctx122570%_))))
    (define gx#make-binding-id__2
      (lambda (_%key122572%_ _%syntax?122573%_ _%phi122574%_)
        (let ((_%ctx122576%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122572%_
           _%syntax?122573%_
           _%phi122574%_
           _%ctx122576%_))))
    (define gx#make-binding-id
      (lambda _g125597_
        (let ((_g125596_ (##length _g125597_)))
          (cond ((##fx= _g125596_ 1) (apply gx#make-binding-id__0 _g125597_))
                ((##fx= _g125596_ 2) (apply gx#make-binding-id__1 _g125597_))
                ((##fx= _g125596_ 3) (apply gx#make-binding-id__2 _g125597_))
                ((##fx= _g125596_ 4) (apply gx#make-binding-id__% _g125597_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g125597_))))))))
