(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712121898)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx121493%_)
        (letrec ((_%expand-special121495%_
                  (lambda (_%hd121497%_ _%K121498%_ _%rest121499%_ _%r121500%_)
                    (_%K121498%_
                     _%rest121499%_
                     (cons (gx#core-expand-top _%hd121497%_) _%r121500%_)))))
          (gx#core-expand-block__0 _%stx121493%_ _%expand-special121495%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121246%_)
        (letrec ((_%expand-special121248%_
                  (lambda (_%hd121368%_ _%K121369%_ _%rest121370%_ _%r121371%_)
                    (let* ((_%K121375%_
                            (lambda (_%e121373%_)
                              (_%K121369%_
                               _%rest121370%_
                               (cons _%e121373%_ _%r121371%_))))
                           (_%e121376121405%_ _%hd121368%_)
                           (_%E121400121409%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121376121405%_)))
                           (_%E121396121421%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121376121405%_)
                                  (let ((_%e121401121413%_
                                         (gx#syntax-e _%e121376121405%_)))
                                    (let ((_%hd121402121416%_
                                           (##car _%e121401121413%_))
                                          (_%tl121403121418%_
                                           (##cdr _%e121401121413%_)))
                                      (if (and (gx#identifier?
                                                _%hd121402121416%_)
                                               (gx#core-identifier=?
                                                _%hd121402121416%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121375%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121368%_))
                                              (_%E121400121409%_))
                                          (_%E121400121409%_))))
                                  (_%E121400121409%_))))
                           (_%E121392121433%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121376121405%_)
                                  (let ((_%e121397121425%_
                                         (gx#syntax-e _%e121376121405%_)))
                                    (let ((_%hd121398121428%_
                                           (##car _%e121397121425%_))
                                          (_%tl121399121430%_
                                           (##cdr _%e121397121425%_)))
                                      (if (and (gx#identifier?
                                                _%hd121398121428%_)
                                               (gx#core-identifier=?
                                                _%hd121398121428%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121375%_
                                               (gx#core-expand-define-alias%
                                                _%hd121368%_))
                                              (_%E121396121421%_))
                                          (_%E121396121421%_))))
                                  (_%E121396121421%_))))
                           (_%E121382121445%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121376121405%_)
                                  (let ((_%e121393121437%_
                                         (gx#syntax-e _%e121376121405%_)))
                                    (let ((_%hd121394121440%_
                                           (##car _%e121393121437%_))
                                          (_%tl121395121442%_
                                           (##cdr _%e121393121437%_)))
                                      (if (and (gx#identifier?
                                                _%hd121394121440%_)
                                               (gx#core-identifier=?
                                                _%hd121394121440%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121375%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121368%_))
                                              (_%E121392121433%_))
                                          (_%E121392121433%_))))
                                  (_%E121392121433%_))))
                           (_%E121378121477%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121376121405%_)
                                  (let ((_%e121383121449%_
                                         (gx#syntax-e _%e121376121405%_)))
                                    (let ((_%hd121384121452%_
                                           (##car _%e121383121449%_))
                                          (_%tl121385121454%_
                                           (##cdr _%e121383121449%_)))
                                      (if (and (gx#identifier?
                                                _%hd121384121452%_)
                                               (gx#core-identifier=?
                                                _%hd121384121452%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121385121454%_)
                                              (let ((_%e121386121457%_
                                                     (gx#syntax-e
                                                      _%tl121385121454%_)))
                                                (let ((_%hd121387121460%_
                                                       (##car _%e121386121457%_))
                                                      (_%tl121388121462%_
                                                       (##cdr _%e121386121457%_)))
                                                  (let ((_%hd-bind121465%_
                                                         _%hd121387121460%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121388121462%_)
                                                        (let ((_%e121389121467%_
                                                               (gx#syntax-e
                                                                _%tl121388121462%_)))
                                                          (let ((_%hd121390121470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121389121467%_))
                        (_%tl121391121472%_ (##cdr _%e121389121467%_)))
                    (let ((_%expr121475%_ _%hd121390121470%_))
                      (if (gx#stx-null? _%tl121391121472%_)
                          (if (gx#core-bind-values? _%hd-bind121465%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121465%_)
                                (_%K121375%_ _%hd121368%_))
                              (_%E121382121445%_))
                          (_%E121382121445%_)))))
                (_%E121382121445%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121382121445%_))
                                          (_%E121382121445%_))))
                                  (_%E121382121445%_))))
                           (_%E121377121489%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121376121405%_)
                                  (let ((_%e121379121481%_
                                         (gx#syntax-e _%e121376121405%_)))
                                    (let ((_%hd121380121484%_
                                           (##car _%e121379121481%_))
                                          (_%tl121381121486%_
                                           (##cdr _%e121379121481%_)))
                                      (if (and (gx#identifier?
                                                _%hd121380121484%_)
                                               (gx#core-identifier=?
                                                _%hd121380121484%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121375%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121368%_))
                                              (_%E121378121477%_))
                                          (_%E121378121477%_))))
                                  (_%E121378121477%_)))))
                      (_%E121377121489%_))))
                 (_%eval-body121249%_
                  (lambda (_%rbody121257%_)
                    (let _%lp121259%_ ((_%rest121261%_ _%rbody121257%_)
                                       (_%body121262%_ '())
                                       (_%ebody121263%_ '()))
                      (let* ((_%rest121264121272%_ _%rest121261%_)
                             (_%else121266121280%_
                              (lambda ()
                                (values _%body121262%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121263%_)
                                          (gx#stx-source _%stx121246%_))))))
                             (_%K121268121356%_
                              (lambda (_%rest121283%_ _%hd121284%_)
                                (let* ((_%e121285121302%_ _%hd121284%_)
                                       (_%E121297121306%_
                                        (lambda ()
                                          (_%lp121259%_
                                           _%rest121283%_
                                           (cons _%hd121284%_ _%body121262%_)
                                           (cons _%hd121284%_
                                                 _%ebody121263%_))))
                                       (_%E121287121318%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121285121302%_)
                                              (let ((_%e121298121310%_
                                                     (gx#syntax-e
                                                      _%e121285121302%_)))
                                                (let ((_%hd121299121313%_
                                                       (##car _%e121298121310%_))
                                                      (_%tl121300121315%_
                                                       (##cdr _%e121298121310%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121299121313%_)
                                                           (gx#core-identifier=?
                                                            _%hd121299121313%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121259%_
                                                           _%rest121283%_
                                                           (cons _%hd121284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121262%_)
                   _%ebody121263%_)
                  (_%E121297121306%_))
              (_%E121297121306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121297121306%_))))
                                       (_%E121286121352%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121285121302%_)
                                              (let ((_%e121288121322%_
                                                     (gx#syntax-e
                                                      _%e121285121302%_)))
                                                (let ((_%hd121289121325%_
                                                       (##car _%e121288121322%_))
                                                      (_%tl121290121327%_
                                                       (##cdr _%e121288121322%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121289121325%_)
                                                           (gx#core-identifier=?
                                                            _%hd121289121325%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121290121327%_)
                                                          (let ((_%e121291121330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121290121327%_)))
                    (let ((_%hd121292121333%_ (##car _%e121291121330%_))
                          (_%tl121293121335%_ (##cdr _%e121291121330%_)))
                      (let ((_%hd-bind121338%_ _%hd121292121333%_))
                        (if (gx#stx-pair? _%tl121293121335%_)
                            (let ((_%e121294121340%_
                                   (gx#syntax-e _%tl121293121335%_)))
                              (let ((_%hd121295121343%_
                                     (##car _%e121294121340%_))
                                    (_%tl121296121345%_
                                     (##cdr _%e121294121340%_)))
                                (let ((_%expr121348%_ _%hd121295121343%_))
                                  (if (gx#stx-null? _%tl121296121345%_)
                                      (if '#t
                                          (let ((_%ehd121350%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121338%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121348%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121284%_))))
                                            (_%lp121259%_
                                             _%rest121283%_
                                             (cons _%ehd121350%_
                                                   _%body121262%_)
                                             (cons _%ehd121350%_
                                                   _%ebody121263%_)))
                                          (_%E121287121318%_))
                                      (_%E121287121318%_)))))
                            (_%E121287121318%_)))))
                  (_%E121287121318%_))
              (_%E121287121318%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121287121318%_)))))
                                  (_%E121286121352%_)))))
                        (if (##pair? _%rest121264121272%_)
                            (let ((_%hd121269121359%_
                                   (##car _%rest121264121272%_))
                                  (_%tl121270121361%_
                                   (##cdr _%rest121264121272%_)))
                              (let* ((_%hd121364%_ _%hd121269121359%_)
                                     (_%rest121366%_ _%tl121270121361%_))
                                (_%K121268121356%_
                                 _%rest121366%_
                                 _%hd121364%_)))
                            (_%else121266121280%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121252%_
                     (gx#core-expand-block__1
                      _%stx121246%_
                      _%expand-special121248%_
                      '#f))
                    (_g121516_ (_%eval-body121249%_ _%rbody121252%_)))
               (begin
                 (let ((_g121517_
                        (if (##values? _g121516_)
                            (##vector-length _g121516_)
                            1)))
                   (if (not (##fx= _g121517_ 2))
                       (error "Context expects 2 values" _g121517_)))
                 (let ((_%expanded-body121254%_ (##vector-ref _g121516_ 0))
                       (_%value121255%_ (##vector-ref _g121516_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121254%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121255%_ '())))
                    (gx#stx-source _%stx121246%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121216%_)
        (let* ((_%e121217121224%_ _%stx121216%_)
               (_%E121219121228%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121217121224%_)))
               (_%E121218121242%_
                (lambda ()
                  (if (gx#stx-pair? _%e121217121224%_)
                      (let ((_%e121220121232%_
                             (gx#syntax-e _%e121217121224%_)))
                        (let ((_%hd121221121235%_ (##car _%e121220121232%_))
                              (_%tl121222121237%_ (##cdr _%e121220121232%_)))
                          (let ((_%body121240%_ _%tl121222121237%_))
                            (if (gx#stx-list? _%body121240%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121240%_)
                                 (gx#stx-source _%stx121216%_))
                                (_%E121219121228%_)))))
                      (_%E121219121228%_)))))
          (_%E121218121242%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121214%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121214%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121160%_)
        (let* ((_%e121161121174%_ _%stx121160%_)
               (_%E121163121178%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121161121174%_)))
               (_%E121162121210%_
                (lambda ()
                  (if (gx#stx-pair? _%e121161121174%_)
                      (let ((_%e121164121182%_
                             (gx#syntax-e _%e121161121174%_)))
                        (let ((_%hd121165121185%_ (##car _%e121164121182%_))
                              (_%tl121166121187%_ (##cdr _%e121164121182%_)))
                          (if (gx#stx-pair? _%tl121166121187%_)
                              (let ((_%e121167121190%_
                                     (gx#syntax-e _%tl121166121187%_)))
                                (let ((_%hd121168121193%_
                                       (##car _%e121167121190%_))
                                      (_%tl121169121195%_
                                       (##cdr _%e121167121190%_)))
                                  (let ((_%ann121198%_ _%hd121168121193%_))
                                    (if (gx#stx-pair? _%tl121169121195%_)
                                        (let ((_%e121170121200%_
                                               (gx#syntax-e
                                                _%tl121169121195%_)))
                                          (let ((_%hd121171121203%_
                                                 (##car _%e121170121200%_))
                                                (_%tl121172121205%_
                                                 (##cdr _%e121170121200%_)))
                                            (let ((_%expr121208%_
                                                   _%hd121171121203%_))
                                              (if (gx#stx-null?
                                                   _%tl121172121205%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121208%_)
                                 '())))
               (gx#stx-source _%stx121160%_))
              (_%E121163121178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121163121178%_)))))
                                        (_%E121163121178%_)))))
                              (_%E121163121178%_))))
                      (_%E121163121178%_)))))
          (_%E121162121210%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx120884%_ _%body120885%_)
        (letrec ((_%expand-special120887%_
                  (lambda (_%hd121155%_ _%K121156%_ _%rest121157%_ _%r121158%_)
                    (_%K121156%_
                     '()
                     (cons (_%expand-internal120888%_
                            _%hd121155%_
                            _%rest121157%_)
                           _%r121158%_))))
                 (_%expand-internal120888%_
                  (lambda (_%hd121151%_ _%rest121152%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal120890%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121151%_ _%rest121152%_))
                          (gx#stx-source _%stx120884%_))
                         _%expand-internal-special120889%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj121510
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj121510)
                       __obj121510))))
                 (_%expand-internal-special120889%_
                  (lambda (_%hd121046%_ _%K121047%_ _%rest121048%_ _%r121049%_)
                    (let* ((_%e121050121075%_ _%hd121046%_)
                           (_%E121070121079%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121050121075%_)))
                           (_%E121066121091%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121050121075%_)
                                  (let ((_%e121071121083%_
                                         (gx#syntax-e _%e121050121075%_)))
                                    (let ((_%hd121072121086%_
                                           (##car _%e121071121083%_))
                                          (_%tl121073121088%_
                                           (##cdr _%e121071121083%_)))
                                      (if (and (gx#identifier?
                                                _%hd121072121086%_)
                                               (gx#core-identifier=?
                                                _%hd121072121086%_
                                                '%#declare))
                                          (if '#t
                                              (_%K121047%_
                                               _%rest121048%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd121046%_)
                                                     _%r121049%_))
                                              (_%E121070121079%_))
                                          (_%E121070121079%_))))
                                  (_%E121070121079%_))))
                           (_%E121062121103%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121050121075%_)
                                  (let ((_%e121067121095%_
                                         (gx#syntax-e _%e121050121075%_)))
                                    (let ((_%hd121068121098%_
                                           (##car _%e121067121095%_))
                                          (_%tl121069121100%_
                                           (##cdr _%e121067121095%_)))
                                      (if (and (gx#identifier?
                                                _%hd121068121098%_)
                                               (gx#core-identifier=?
                                                _%hd121068121098%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd121046%_)
                                                (_%K121047%_
                                                 _%rest121048%_
                                                 _%r121049%_))
                                              (_%E121066121091%_))
                                          (_%E121066121091%_))))
                                  (_%E121066121091%_))))
                           (_%E121052121115%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121050121075%_)
                                  (let ((_%e121063121107%_
                                         (gx#syntax-e _%e121050121075%_)))
                                    (let ((_%hd121064121110%_
                                           (##car _%e121063121107%_))
                                          (_%tl121065121112%_
                                           (##cdr _%e121063121107%_)))
                                      (if (and (gx#identifier?
                                                _%hd121064121110%_)
                                               (gx#core-identifier=?
                                                _%hd121064121110%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd121046%_)
                                                (_%K121047%_
                                                 _%rest121048%_
                                                 _%r121049%_))
                                              (_%E121062121103%_))
                                          (_%E121062121103%_))))
                                  (_%E121062121103%_))))
                           (_%E121051121147%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121050121075%_)
                                  (let ((_%e121053121119%_
                                         (gx#syntax-e _%e121050121075%_)))
                                    (let ((_%hd121054121122%_
                                           (##car _%e121053121119%_))
                                          (_%tl121055121124%_
                                           (##cdr _%e121053121119%_)))
                                      (if (and (gx#identifier?
                                                _%hd121054121122%_)
                                               (gx#core-identifier=?
                                                _%hd121054121122%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121055121124%_)
                                              (let ((_%e121056121127%_
                                                     (gx#syntax-e
                                                      _%tl121055121124%_)))
                                                (let ((_%hd121057121130%_
                                                       (##car _%e121056121127%_))
                                                      (_%tl121058121132%_
                                                       (##cdr _%e121056121127%_)))
                                                  (let ((_%hd-bind121135%_
                                                         _%hd121057121130%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121058121132%_)
                                                        (let ((_%e121059121137%_
                                                               (gx#syntax-e
                                                                _%tl121058121132%_)))
                                                          (let ((_%hd121060121140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121059121137%_))
                        (_%tl121061121142%_ (##cdr _%e121059121137%_)))
                    (let ((_%expr121145%_ _%hd121060121140%_))
                      (if (gx#stx-null? _%tl121061121142%_)
                          (if (gx#core-bind-values? _%hd-bind121135%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121135%_)
                                (_%K121047%_
                                 _%rest121048%_
                                 (cons _%hd121046%_ _%r121049%_)))
                              (_%E121052121115%_))
                          (_%E121052121115%_)))))
                (_%E121052121115%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121052121115%_))
                                          (_%E121052121115%_))))
                                  (_%E121052121115%_)))))
                      (_%E121051121147%_))))
                 (_%wrap-internal120890%_
                  (lambda (_%rbody120892%_)
                    (let _%lp120894%_ ((_%rest120896%_ _%rbody120892%_)
                                       (_%decls120897%_ '())
                                       (_%bind120898%_ '())
                                       (_%body120899%_ '()))
                      (let* ((_%e120900120907%_ _%rest120896%_)
                             (_%E120902120956%_
                              (lambda ()
                                (let* ((_%body120951%_
                                        (let* ((_%body120910120920%_
                                                _%body120899%_)
                                               (_%else120913120928%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body120899%_)
                                                   (gx#stx-source
                                                    _%stx120884%_)))))
                                          (let ((_%K120918120948%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx120884%_)))
                                                (_%K120915120934%_
                                                 (lambda (_%expr120932%_)
                                                   _%expr120932%_)))
                                            (let ((_%try-match120912120944%_
                                                   (lambda ()
                                                     (if (##pair? _%body120910120920%_)
                                                         (let ((_%tl120917120939%_
                                                                (##cdr _%body120910120920%_))
                                                               (_%hd120916120937%_
                                                                (##car _%body120910120920%_)))
                                                           (if (##null? _%tl120917120939%_)
                                                               (let ((_%expr120942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120916120937%_))
                         (_%K120915120934%_ _%expr120942%_))
                       (_%else120913120928%_)))
                 (_%else120913120928%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body120910120920%_)
                                                  (_%K120918120948%_)
                                                  (_%try-match120912120944%_))))))
                                       (_%body120953%_
                                        (if (null? _%bind120898%_)
                                            _%body120951%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind120898%_
                                                         (cons _%body120951%_
                                                               '())))
                                             (gx#stx-source _%stx120884%_)))))
                                  (if (null? _%decls120897%_)
                                      _%body120953%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls120897%_
                                                   (cons _%body120953%_ '())))
                                       (gx#stx-source _%stx120884%_))))))
                             (_%E120901121042%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120900120907%_)
                                    (let ((_%e120903120960%_
                                           (gx#syntax-e _%e120900120907%_)))
                                      (let ((_%hd120904120963%_
                                             (##car _%e120903120960%_))
                                            (_%tl120905120965%_
                                             (##cdr _%e120903120960%_)))
                                        (let* ((_%hd120968%_
                                                _%hd120904120963%_)
                                               (_%rest120970%_
                                                _%tl120905120965%_))
                                          (if '#t
                                              (let* ((_%e120971120988%_
                                                      _%hd120968%_)
                                                     (_%E120983120992%_
                                                      (lambda ()
                                                        (if (null? _%bind120898%_)
                                                            (_%lp120894%_
                                                             _%rest120970%_
                                                             _%decls120897%_
                                                             _%bind120898%_
                                                             (cons _%hd120968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body120899%_))
                    (_%lp120894%_
                     _%rest120970%_
                     _%decls120897%_
                     (cons (cons '#f (cons _%hd120968%_ '())) _%bind120898%_)
                     _%body120899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E120973121006%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e120971120988%_)
                                                            (let ((_%e120984120996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e120971120988%_)))
                      (let ((_%hd120985120999%_ (##car _%e120984120996%_))
                            (_%tl120986121001%_ (##cdr _%e120984120996%_)))
                        (if (and (gx#identifier? _%hd120985120999%_)
                                 (gx#core-identifier=?
                                  _%hd120985120999%_
                                  '%#declare))
                            (let ((_%xdecls121004%_ _%tl120986121001%_))
                              (if '#t
                                  (_%lp120894%_
                                   _%rest120970%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls120897%_
                                    _%xdecls121004%_)
                                   _%bind120898%_
                                   _%body120899%_)
                                  (_%E120983120992%_)))
                            (_%E120983120992%_))))
                    (_%E120983120992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E120972121038%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e120971120988%_)
                                                            (let ((_%e120974121010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e120971120988%_)))
                      (let ((_%hd120975121013%_ (##car _%e120974121010%_))
                            (_%tl120976121015%_ (##cdr _%e120974121010%_)))
                        (if (and (gx#identifier? _%hd120975121013%_)
                                 (gx#core-identifier=?
                                  _%hd120975121013%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl120976121015%_)
                                (let ((_%e120977121018%_
                                       (gx#syntax-e _%tl120976121015%_)))
                                  (let ((_%hd120978121021%_
                                         (##car _%e120977121018%_))
                                        (_%tl120979121023%_
                                         (##cdr _%e120977121018%_)))
                                    (let ((_%hd-bind121026%_
                                           _%hd120978121021%_))
                                      (if (gx#stx-pair? _%tl120979121023%_)
                                          (let ((_%e120980121028%_
                                                 (gx#syntax-e
                                                  _%tl120979121023%_)))
                                            (let ((_%hd120981121031%_
                                                   (##car _%e120980121028%_))
                                                  (_%tl120982121033%_
                                                   (##cdr _%e120980121028%_)))
                                              (let ((_%expr121036%_
                                                     _%hd120981121031%_))
                                                (if (gx#stx-null?
                                                     _%tl120982121033%_)
                                                    (if '#t
                                                        (_%lp120894%_
                                                         _%rest120970%_
                                                         _%decls120897%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind121026%_)
                             (cons (gx#core-expand-expression _%expr121036%_)
                                   '()))
                       _%bind120898%_)
                 _%body120899%_)
                (_%E120973121006%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120973121006%_)))))
                                          (_%E120973121006%_)))))
                                (_%E120973121006%_))
                            (_%E120973121006%_))))
                    (_%E120973121006%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120972121038%_))
                                              (_%E120902120956%_)))))
                                    (_%E120902120956%_)))))
                        (_%E120901121042%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body120885%_)
            (gx#stx-source _%stx120884%_))
           _%expand-special120887%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx120822%_)
        (let* ((_%e120823120830%_ _%stx120822%_)
               (_%E120825120834%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120823120830%_)))
               (_%E120824120880%_
                (lambda ()
                  (if (gx#stx-pair? _%e120823120830%_)
                      (let ((_%e120826120838%_
                             (gx#syntax-e _%e120823120830%_)))
                        (let ((_%hd120827120841%_ (##car _%e120826120838%_))
                              (_%tl120828120843%_ (##cdr _%e120826120838%_)))
                          (let ((_%body120846%_ _%tl120828120843%_))
                            (if (gx#stx-list? _%body120846%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl120848%_)
                                     (let* ((_%e120849120856%_ _%decl120848%_)
                                            (_%E120851120860%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e120849120856%_)))
                                            (_%E120850120876%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e120849120856%_)
                                                   (let ((_%e120852120864%_
                                                          (gx#syntax-e
                                                           _%e120849120856%_)))
                                                     (let ((_%hd120853120867%_
                                                            (##car _%e120852120864%_))
                                                           (_%tl120854120869%_
                                                            (##cdr _%e120852120864%_)))
                                                       (let* ((_%head120872%_
                                                               _%hd120853120867%_)
                                                              (_%args120874%_
                                                               _%tl120854120869%_))
                                                         (if (gx#stx-list?
                                                              _%args120874%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl120848%_)
                                                             (_%E120851120860%_)))))
                                                   (_%E120851120860%_)))))
                                       (_%E120850120876%_)))
                                   _%body120846%_))
                                 (gx#stx-source _%stx120822%_))
                                (_%E120825120834%_)))))
                      (_%E120825120834%_)))))
          (_%E120824120880%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx120726%_)
        (let* ((_%e120727120734%_ _%stx120726%_)
               (_%E120729120738%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120727120734%_)))
               (_%E120728120818%_
                (lambda ()
                  (if (gx#stx-pair? _%e120727120734%_)
                      (let ((_%e120730120742%_
                             (gx#syntax-e _%e120727120734%_)))
                        (let ((_%hd120731120745%_ (##car _%e120730120742%_))
                              (_%tl120732120747%_ (##cdr _%e120730120742%_)))
                          (let ((_%body120750%_ _%tl120732120747%_))
                            (if '#t
                                (let _%lp120752%_ ((_%rest120754%_
                                                    _%body120750%_)
                                                   (_%r120755%_ '()))
                                  (let* ((_%e120756120770%_ _%rest120754%_)
                                         (_%E120768120774%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx120726%_)))
                                         (_%E120758120778%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e120756120770%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r120755%_))
                                                     (gx#stx-source
                                                      _%stx120726%_))
                                                    (_%E120768120774%_))
                                                (_%E120768120774%_))))
                                         (_%E120757120814%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e120756120770%_)
                                                (let ((_%e120759120782%_
                                                       (gx#syntax-e
                                                        _%e120756120770%_)))
                                                  (let ((_%hd120760120785%_
                                                         (##car _%e120759120782%_))
                                                        (_%tl120761120787%_
                                                         (##cdr _%e120759120782%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd120760120785%_)
                                                        (let ((_%e120762120790%_
                                                               (gx#syntax-e
                                                                _%hd120760120785%_)))
                                                          (let ((_%hd120763120793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e120762120790%_))
                        (_%tl120764120795%_ (##cdr _%e120762120790%_)))
                    (let ((_%id120798%_ _%hd120763120793%_))
                      (if (gx#stx-pair? _%tl120764120795%_)
                          (let ((_%e120765120800%_
                                 (gx#syntax-e _%tl120764120795%_)))
                            (let ((_%hd120766120803%_
                                   (##car _%e120765120800%_))
                                  (_%tl120767120805%_
                                   (##cdr _%e120765120800%_)))
                              (let ((_%eid120808%_ _%hd120766120803%_))
                                (if (gx#stx-null? _%tl120767120805%_)
                                    (let ((_%rest120810%_ _%tl120761120787%_))
                                      (if (and (gx#identifier? _%id120798%_)
                                               (gx#identifier? _%eid120808%_))
                                          (let ((_%eid120812%_
                                                 (gx#stx-e _%eid120808%_)))
                                            (gx#core-bind-extern!__0
                                             _%id120798%_
                                             _%eid120812%_)
                                            (_%lp120752%_
                                             _%rest120810%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id120798%_)
                                                         (cons _%eid120812%_
                                                               '()))
                                                   _%r120755%_)))
                                          (_%E120758120778%_)))
                                    (_%E120758120778%_)))))
                          (_%E120758120778%_)))))
                (_%E120758120778%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120758120778%_)))))
                                    (_%E120757120814%_)))
                                (_%E120729120738%_)))))
                      (_%E120729120738%_)))))
          (_%E120728120818%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx120672%_)
        (let* ((_%e120673120686%_ _%stx120672%_)
               (_%E120675120690%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120673120686%_)))
               (_%E120674120722%_
                (lambda ()
                  (if (gx#stx-pair? _%e120673120686%_)
                      (let ((_%e120676120694%_
                             (gx#syntax-e _%e120673120686%_)))
                        (let ((_%hd120677120697%_ (##car _%e120676120694%_))
                              (_%tl120678120699%_ (##cdr _%e120676120694%_)))
                          (if (gx#stx-pair? _%tl120678120699%_)
                              (let ((_%e120679120702%_
                                     (gx#syntax-e _%tl120678120699%_)))
                                (let ((_%hd120680120705%_
                                       (##car _%e120679120702%_))
                                      (_%tl120681120707%_
                                       (##cdr _%e120679120702%_)))
                                  (let ((_%hd120710%_ _%hd120680120705%_))
                                    (if (gx#stx-pair? _%tl120681120707%_)
                                        (let ((_%e120682120712%_
                                               (gx#syntax-e
                                                _%tl120681120707%_)))
                                          (let ((_%hd120683120715%_
                                                 (##car _%e120682120712%_))
                                                (_%tl120684120717%_
                                                 (##cdr _%e120682120712%_)))
                                            (let ((_%expr120720%_
                                                   _%hd120683120715%_))
                                              (if (gx#stx-null?
                                                   _%tl120684120717%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd120710%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd120710%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120710%_)
                             (cons (gx#core-expand-expression _%expr120720%_)
                                   '())))
                 (gx#stx-source _%stx120672%_)))
              (_%E120675120690%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120675120690%_)))))
                                        (_%E120675120690%_)))))
                              (_%E120675120690%_))))
                      (_%E120675120690%_)))))
          (_%E120674120722%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx120616%_)
        (let* ((_%e120617120630%_ _%stx120616%_)
               (_%E120619120634%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120617120630%_)))
               (_%E120618120668%_
                (lambda ()
                  (if (gx#stx-pair? _%e120617120630%_)
                      (let ((_%e120620120638%_
                             (gx#syntax-e _%e120617120630%_)))
                        (let ((_%hd120621120641%_ (##car _%e120620120638%_))
                              (_%tl120622120643%_ (##cdr _%e120620120638%_)))
                          (if (gx#stx-pair? _%tl120622120643%_)
                              (let ((_%e120623120646%_
                                     (gx#syntax-e _%tl120622120643%_)))
                                (let ((_%hd120624120649%_
                                       (##car _%e120623120646%_))
                                      (_%tl120625120651%_
                                       (##cdr _%e120623120646%_)))
                                  (let ((_%id120654%_ _%hd120624120649%_))
                                    (if (gx#stx-pair? _%tl120625120651%_)
                                        (let ((_%e120626120656%_
                                               (gx#syntax-e
                                                _%tl120625120651%_)))
                                          (let ((_%hd120627120659%_
                                                 (##car _%e120626120656%_))
                                                (_%tl120628120661%_
                                                 (##cdr _%e120626120656%_)))
                                            (let ((_%binding-id120664%_
                                                   _%hd120627120659%_))
                                              (if (gx#stx-null?
                                                   _%tl120628120661%_)
                                                  (if (and (gx#identifier?
                                                            _%id120654%_)
                                                           (gx#identifier?
                                                            _%binding-id120664%_))
                                                      (let ((_%eid120666%_
                                                             (gx#stx-e
                                                              _%binding-id120664%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id120654%_
                                                         _%eid120666%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120654%_)
                             (cons _%eid120666%_ '())))))
              (_%E120619120634%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120619120634%_)))))
                                        (_%E120619120634%_)))))
                              (_%E120619120634%_))))
                      (_%E120619120634%_)))))
          (_%E120618120668%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx120559%_)
        (let* ((_%e120560120573%_ _%stx120559%_)
               (_%E120562120577%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120560120573%_)))
               (_%E120561120612%_
                (lambda ()
                  (if (gx#stx-pair? _%e120560120573%_)
                      (let ((_%e120563120581%_
                             (gx#syntax-e _%e120560120573%_)))
                        (let ((_%hd120564120584%_ (##car _%e120563120581%_))
                              (_%tl120565120586%_ (##cdr _%e120563120581%_)))
                          (if (gx#stx-pair? _%tl120565120586%_)
                              (let ((_%e120566120589%_
                                     (gx#syntax-e _%tl120565120586%_)))
                                (let ((_%hd120567120592%_
                                       (##car _%e120566120589%_))
                                      (_%tl120568120594%_
                                       (##cdr _%e120566120589%_)))
                                  (let ((_%id120597%_ _%hd120567120592%_))
                                    (if (gx#stx-pair? _%tl120568120594%_)
                                        (let ((_%e120569120599%_
                                               (gx#syntax-e
                                                _%tl120568120594%_)))
                                          (let ((_%hd120570120602%_
                                                 (##car _%e120569120599%_))
                                                (_%tl120571120604%_
                                                 (##cdr _%e120569120599%_)))
                                            (let ((_%expr120607%_
                                                   _%hd120570120602%_))
                                              (if (gx#stx-null?
                                                   _%tl120571120604%_)
                                                  (if (gx#identifier?
                                                       _%id120597%_)
                                                      (let ((_g121518_
                                                             (gx#core-expand-expression+1
                                                              _%expr120607%_)))
                                                        (begin
                                                          (let ((_g121519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g121518_)
                             (##vector-length _g121518_)
                             1)))
                    (if (not (##fx= _g121519_ 2))
                        (error "Context expects 2 values" _g121519_)))
                  (let ((_%e-stx120609%_ (##vector-ref _g121518_ 0))
                        (_%e120610%_ (##vector-ref _g121518_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id120597%_ _%e120610%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id120597%_)
                                   (cons _%e-stx120609%_ '())))
                       (gx#stx-source _%stx120559%_))))))
              (_%E120562120577%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120562120577%_)))))
                                        (_%E120562120577%_)))))
                              (_%E120562120577%_))))
                      (_%E120562120577%_)))))
          (_%E120561120612%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx120503%_)
        (let* ((_%e120504120517%_ _%stx120503%_)
               (_%E120506120521%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120504120517%_)))
               (_%E120505120555%_
                (lambda ()
                  (if (gx#stx-pair? _%e120504120517%_)
                      (let ((_%e120507120525%_
                             (gx#syntax-e _%e120504120517%_)))
                        (let ((_%hd120508120528%_ (##car _%e120507120525%_))
                              (_%tl120509120530%_ (##cdr _%e120507120525%_)))
                          (if (gx#stx-pair? _%tl120509120530%_)
                              (let ((_%e120510120533%_
                                     (gx#syntax-e _%tl120509120530%_)))
                                (let ((_%hd120511120536%_
                                       (##car _%e120510120533%_))
                                      (_%tl120512120538%_
                                       (##cdr _%e120510120533%_)))
                                  (let ((_%id120541%_ _%hd120511120536%_))
                                    (if (gx#stx-pair? _%tl120512120538%_)
                                        (let ((_%e120513120543%_
                                               (gx#syntax-e
                                                _%tl120512120538%_)))
                                          (let ((_%hd120514120546%_
                                                 (##car _%e120513120543%_))
                                                (_%tl120515120548%_
                                                 (##cdr _%e120513120543%_)))
                                            (let ((_%alias-id120551%_
                                                   _%hd120514120546%_))
                                              (if (gx#stx-null?
                                                   _%tl120515120548%_)
                                                  (if (and (gx#identifier?
                                                            _%id120541%_)
                                                           (gx#identifier?
                                                            _%alias-id120551%_))
                                                      (let ((_%alias-id120553%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id120551%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id120541%_
                                                         _%alias-id120553%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120541%_)
                             (cons _%alias-id120553%_ '())))))
              (_%E120506120521%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120506120521%_)))))
                                        (_%E120506120521%_)))))
                              (_%E120506120521%_))))
                      (_%E120506120521%_)))))
          (_%E120505120555%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx120446%_ _%wrap?120447%_)
        (let* ((_%e120448120458%_ _%stx120446%_)
               (_%E120450120462%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120448120458%_)))
               (_%E120449120489%_
                (lambda ()
                  (if (gx#stx-pair? _%e120448120458%_)
                      (let ((_%e120451120466%_
                             (gx#syntax-e _%e120448120458%_)))
                        (let ((_%hd120452120469%_ (##car _%e120451120466%_))
                              (_%tl120453120471%_ (##cdr _%e120451120466%_)))
                          (if (gx#stx-pair? _%tl120453120471%_)
                              (let ((_%e120454120474%_
                                     (gx#syntax-e _%tl120453120471%_)))
                                (let ((_%hd120455120477%_
                                       (##car _%e120454120474%_))
                                      (_%tl120456120479%_
                                       (##cdr _%e120454120474%_)))
                                  (let* ((_%hd120482%_ _%hd120455120477%_)
                                         (_%body120484%_ _%tl120456120479%_))
                                    (if (gx#core-bind-values? _%hd120482%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd120482%_)
                                           (let ((_%body120487%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd120482%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120446%_
                                                               _%body120484%_)
                                                              '()))))
                                             (if _%wrap?120447%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body120487%_)
                                                  (gx#stx-source
                                                   _%stx120446%_))
                                                 _%body120487%_)))
                                         gx#current-expander-context
                                         (let ((__obj121511
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121511)
                                           __obj121511))
                                        (_%E120450120462%_)))))
                              (_%E120450120462%_))))
                      (_%E120450120462%_)))))
          (_%E120449120489%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx120496%_)
        (let ((_%wrap?120498%_ '#t))
          (gx#core-expand-lambda%__% _%stx120496%_ _%wrap?120498%_))))
    (define gx#core-expand-lambda%
      (lambda _g121521_
        (let ((_g121520_ (##length _g121521_)))
          (cond ((##fx= _g121520_ 1)
                 (apply (lambda (_%stx120496%_)
                          (gx#core-expand-lambda%__0 _%stx120496%_))
                        _g121521_))
                ((##fx= _g121520_ 2)
                 (apply (lambda (_%stx120500%_ _%wrap?120501%_)
                          (gx#core-expand-lambda%__%
                           _%stx120500%_
                           _%wrap?120501%_))
                        _g121521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g121521_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx120410%_)
        (let* ((_%e120411120418%_ _%stx120410%_)
               (_%E120413120422%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120411120418%_)))
               (_%E120412120441%_
                (lambda ()
                  (if (gx#stx-pair? _%e120411120418%_)
                      (let ((_%e120414120426%_
                             (gx#syntax-e _%e120411120418%_)))
                        (let ((_%hd120415120429%_ (##car _%e120414120426%_))
                              (_%tl120416120431%_ (##cdr _%e120414120426%_)))
                          (let ((_%clauses120434%_ _%tl120416120431%_))
                            (if (gx#stx-list? _%clauses120434%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause120436%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause120436%_)
                                       (let ((_%$e120438%_
                                              (gx#stx-source
                                               _%clause120436%_)))
                                         (if _%$e120438%_
                                             _%$e120438%_
                                             (gx#stx-source _%stx120410%_))))
                                      '#f))
                                   _%clauses120434%_))
                                 (gx#stx-source _%stx120410%_))
                                (_%E120413120422%_)))))
                      (_%E120413120422%_)))))
          (_%E120412120441%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120364%_)
        (let* ((_%e120365120375%_ _%stx120364%_)
               (_%E120367120379%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120365120375%_)))
               (_%E120366120406%_
                (lambda ()
                  (if (gx#stx-pair? _%e120365120375%_)
                      (let ((_%e120368120383%_
                             (gx#syntax-e _%e120365120375%_)))
                        (let ((_%hd120369120386%_ (##car _%e120368120383%_))
                              (_%tl120370120388%_ (##cdr _%e120368120383%_)))
                          (if (gx#stx-pair? _%tl120370120388%_)
                              (let ((_%e120371120391%_
                                     (gx#syntax-e _%tl120370120388%_)))
                                (let ((_%hd120372120394%_
                                       (##car _%e120371120391%_))
                                      (_%tl120373120396%_
                                       (##cdr _%e120371120391%_)))
                                  (let* ((_%hd120399%_ _%hd120372120394%_)
                                         (_%body120401%_ _%tl120373120396%_))
                                    (if (gx#core-expand-let-bind? _%hd120399%_)
                                        (let ((_%expressions120403%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd120399%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd120399%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd120399%_
                                                           _%expressions120403%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120364%_
                         _%body120401%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120364%_)))
                                           gx#current-expander-context
                                           (let ((__obj121512
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121512)
                                             __obj121512)))
                                        (_%E120367120379%_)))))
                              (_%E120367120379%_))))
                      (_%E120367120379%_)))))
          (_%E120366120406%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120309%_ _%form120310%_)
        (let* ((_%e120311120321%_ _%stx120309%_)
               (_%E120313120325%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120311120321%_)))
               (_%E120312120350%_
                (lambda ()
                  (if (gx#stx-pair? _%e120311120321%_)
                      (let ((_%e120314120329%_
                             (gx#syntax-e _%e120311120321%_)))
                        (let ((_%hd120315120332%_ (##car _%e120314120329%_))
                              (_%tl120316120334%_ (##cdr _%e120314120329%_)))
                          (if (gx#stx-pair? _%tl120316120334%_)
                              (let ((_%e120317120337%_
                                     (gx#syntax-e _%tl120316120334%_)))
                                (let ((_%hd120318120340%_
                                       (##car _%e120317120337%_))
                                      (_%tl120319120342%_
                                       (##cdr _%e120317120337%_)))
                                  (let* ((_%hd120345%_ _%hd120318120340%_)
                                         (_%body120347%_ _%tl120319120342%_))
                                    (if (gx#core-expand-let-bind? _%hd120345%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120345%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120310%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120345%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120345%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120309%_
                                                               _%body120347%_)
                                                              '())))
                                            (gx#stx-source _%stx120309%_)))
                                         gx#current-expander-context
                                         (let ((__obj121513
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121513)
                                           __obj121513))
                                        (_%E120313120325%_)))))
                              (_%E120313120325%_))))
                      (_%E120313120325%_)))))
          (_%E120312120350%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120357%_)
        (let ((_%form120359%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120357%_ _%form120359%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g121523_
        (let ((_g121522_ (##length _g121523_)))
          (cond ((##fx= _g121522_ 1)
                 (apply (lambda (_%stx120357%_)
                          (gx#core-expand-letrec-values%__0 _%stx120357%_))
                        _g121523_))
                ((##fx= _g121522_ 2)
                 (apply (lambda (_%stx120361%_ _%form120362%_)
                          (gx#core-expand-letrec-values%__%
                           _%stx120361%_
                           _%form120362%_))
                        _g121523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g121523_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120306%_)
        (gx#core-expand-letrec-values%__% _%stx120306%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120263%_)
        (if (gx#stx-list? _%stx120263%_)
            (gx#stx-andmap
             (lambda (_%bind120265%_)
               (let* ((_%e120266120276%_ _%bind120265%_)
                      (_%E120268120280%_ (lambda () '#f))
                      (_%E120267120302%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120266120276%_)
                             (let ((_%e120269120284%_
                                    (gx#syntax-e _%e120266120276%_)))
                               (let ((_%hd120270120287%_
                                      (##car _%e120269120284%_))
                                     (_%tl120271120289%_
                                      (##cdr _%e120269120284%_)))
                                 (let ((_%hd120292%_ _%hd120270120287%_))
                                   (if (gx#stx-pair? _%tl120271120289%_)
                                       (let ((_%e120272120294%_
                                              (gx#syntax-e
                                               _%tl120271120289%_)))
                                         (let ((_%hd120273120297%_
                                                (##car _%e120272120294%_))
                                               (_%tl120274120299%_
                                                (##cdr _%e120272120294%_)))
                                           (if (gx#stx-null?
                                                _%tl120274120299%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120292%_)
                                                   (_%E120268120280%_))
                                               (_%E120268120280%_))))
                                       (_%E120268120280%_)))))
                             (_%E120268120280%_)))))
                 (_%E120267120302%_)))
             _%stx120263%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120222%_)
        (let* ((_%e120223120233%_ _%bind120222%_)
               (_%E120225120237%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120223120233%_)))
               (_%E120224120259%_
                (lambda ()
                  (if (gx#stx-pair? _%e120223120233%_)
                      (let ((_%e120226120241%_
                             (gx#syntax-e _%e120223120233%_)))
                        (let ((_%hd120227120244%_ (##car _%e120226120241%_))
                              (_%tl120228120246%_ (##cdr _%e120226120241%_)))
                          (if (gx#stx-pair? _%tl120228120246%_)
                              (let ((_%e120229120249%_
                                     (gx#syntax-e _%tl120228120246%_)))
                                (let ((_%hd120230120252%_
                                       (##car _%e120229120249%_))
                                      (_%tl120231120254%_
                                       (##cdr _%e120229120249%_)))
                                  (let ((_%expr120257%_ _%hd120230120252%_))
                                    (if (gx#stx-null? _%tl120231120254%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120257%_)
                                            (_%E120225120237%_))
                                        (_%E120225120237%_)))))
                              (_%E120225120237%_))))
                      (_%E120225120237%_)))))
          (_%E120224120259%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120181%_)
        (let* ((_%e120182120192%_ _%bind120181%_)
               (_%E120184120196%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120182120192%_)))
               (_%E120183120218%_
                (lambda ()
                  (if (gx#stx-pair? _%e120182120192%_)
                      (let ((_%e120185120200%_
                             (gx#syntax-e _%e120182120192%_)))
                        (let ((_%hd120186120203%_ (##car _%e120185120200%_))
                              (_%tl120187120205%_ (##cdr _%e120185120200%_)))
                          (let ((_%hd120208%_ _%hd120186120203%_))
                            (if (gx#stx-pair? _%tl120187120205%_)
                                (let ((_%e120188120210%_
                                       (gx#syntax-e _%tl120187120205%_)))
                                  (let ((_%hd120189120213%_
                                         (##car _%e120188120210%_))
                                        (_%tl120190120215%_
                                         (##cdr _%e120188120210%_)))
                                    (if (gx#stx-null? _%tl120190120215%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120208%_)
                                            (_%E120184120196%_))
                                        (_%E120184120196%_))))
                                (_%E120184120196%_)))))
                      (_%E120184120196%_)))))
          (_%E120183120218%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120139%_ _%expr120140%_)
        (let* ((_%e120141120151%_ _%bind120139%_)
               (_%E120143120155%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120141120151%_)))
               (_%E120142120177%_
                (lambda ()
                  (if (gx#stx-pair? _%e120141120151%_)
                      (let ((_%e120144120159%_
                             (gx#syntax-e _%e120141120151%_)))
                        (let ((_%hd120145120162%_ (##car _%e120144120159%_))
                              (_%tl120146120164%_ (##cdr _%e120144120159%_)))
                          (let ((_%hd120167%_ _%hd120145120162%_))
                            (if (gx#stx-pair? _%tl120146120164%_)
                                (let ((_%e120147120169%_
                                       (gx#syntax-e _%tl120146120164%_)))
                                  (let ((_%hd120148120172%_
                                         (##car _%e120147120169%_))
                                        (_%tl120149120174%_
                                         (##cdr _%e120147120169%_)))
                                    (if (gx#stx-null? _%tl120149120174%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120167%_)
                                                  (cons _%expr120140%_ '()))
                                            (_%E120143120155%_))
                                        (_%E120143120155%_))))
                                (_%E120143120155%_)))))
                      (_%E120143120155%_)))))
          (_%E120142120177%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx120093%_)
        (let* ((_%e120094120104%_ _%stx120093%_)
               (_%E120096120108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120094120104%_)))
               (_%E120095120135%_
                (lambda ()
                  (if (gx#stx-pair? _%e120094120104%_)
                      (let ((_%e120097120112%_
                             (gx#syntax-e _%e120094120104%_)))
                        (let ((_%hd120098120115%_ (##car _%e120097120112%_))
                              (_%tl120099120117%_ (##cdr _%e120097120112%_)))
                          (if (gx#stx-pair? _%tl120099120117%_)
                              (let ((_%e120100120120%_
                                     (gx#syntax-e _%tl120099120117%_)))
                                (let ((_%hd120101120123%_
                                       (##car _%e120100120120%_))
                                      (_%tl120102120125%_
                                       (##cdr _%e120100120120%_)))
                                  (let* ((_%hd120128%_ _%hd120101120123%_)
                                         (_%body120130%_ _%tl120102120125%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120128%_)
                                        (let ((_%expanders120132%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120128%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120128%_
                                              _%expanders120132%_)
                                             (gx#core-expand-local-block
                                              _%stx120093%_
                                              _%body120130%_))
                                           gx#current-expander-context
                                           (let ((__obj121514
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121514)
                                             __obj121514)))
                                        (_%E120096120108%_)))))
                              (_%E120096120108%_))))
                      (_%E120096120108%_)))))
          (_%E120095120135%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx120042%_)
        (let* ((_%e120043120053%_ _%stx120042%_)
               (_%E120045120057%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120043120053%_)))
               (_%E120044120089%_
                (lambda ()
                  (if (gx#stx-pair? _%e120043120053%_)
                      (let ((_%e120046120061%_
                             (gx#syntax-e _%e120043120053%_)))
                        (let ((_%hd120047120064%_ (##car _%e120046120061%_))
                              (_%tl120048120066%_ (##cdr _%e120046120061%_)))
                          (if (gx#stx-pair? _%tl120048120066%_)
                              (let ((_%e120049120069%_
                                     (gx#syntax-e _%tl120048120066%_)))
                                (let ((_%hd120050120072%_
                                       (##car _%e120049120069%_))
                                      (_%tl120051120074%_
                                       (##cdr _%e120049120069%_)))
                                  (let* ((_%hd120077%_ _%hd120050120072%_)
                                         (_%body120079%_ _%tl120051120074%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120077%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd120077%_
                                            (make-list
                                             (gx#stx-length _%hd120077%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g120081120084%_
                                                     _%g120082120086%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g120081120084%_
                                               _%g120082120086%_
                                               '#t))
                                            _%hd120077%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd120077%_))
                                           (gx#core-expand-local-block
                                            _%stx120042%_
                                            _%body120079%_))
                                         gx#current-expander-context
                                         (let ((__obj121515
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121515)
                                           __obj121515))
                                        (_%E120045120057%_)))))
                              (_%E120045120057%_))))
                      (_%E120045120057%_)))))
          (_%E120044120089%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx119999%_)
        (if (gx#stx-list? _%stx119999%_)
            (gx#stx-andmap
             (lambda (_%bind120001%_)
               (let* ((_%e120002120012%_ _%bind120001%_)
                      (_%E120004120016%_ (lambda () '#f))
                      (_%E120003120038%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120002120012%_)
                             (let ((_%e120005120020%_
                                    (gx#syntax-e _%e120002120012%_)))
                               (let ((_%hd120006120023%_
                                      (##car _%e120005120020%_))
                                     (_%tl120007120025%_
                                      (##cdr _%e120005120020%_)))
                                 (let ((_%hd120028%_ _%hd120006120023%_))
                                   (if (gx#stx-pair? _%tl120007120025%_)
                                       (let ((_%e120008120030%_
                                              (gx#syntax-e
                                               _%tl120007120025%_)))
                                         (let ((_%hd120009120033%_
                                                (##car _%e120008120030%_))
                                               (_%tl120010120035%_
                                                (##cdr _%e120008120030%_)))
                                           (if (gx#stx-null?
                                                _%tl120010120035%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd120028%_)
                                                   (_%E120004120016%_))
                                               (_%E120004120016%_))))
                                       (_%E120004120016%_)))))
                             (_%E120004120016%_)))))
                 (_%E120003120038%_)))
             _%stx119999%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind119955%_)
        (let* ((_%e119956119966%_ _%bind119955%_)
               (_%E119958119970%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119956119966%_)))
               (_%E119957119995%_
                (lambda ()
                  (if (gx#stx-pair? _%e119956119966%_)
                      (let ((_%e119959119974%_
                             (gx#syntax-e _%e119956119966%_)))
                        (let ((_%hd119960119977%_ (##car _%e119959119974%_))
                              (_%tl119961119979%_ (##cdr _%e119959119974%_)))
                          (if (gx#stx-pair? _%tl119961119979%_)
                              (let ((_%e119962119982%_
                                     (gx#syntax-e _%tl119961119979%_)))
                                (let ((_%hd119963119985%_
                                       (##car _%e119962119982%_))
                                      (_%tl119964119987%_
                                       (##cdr _%e119962119982%_)))
                                  (let ((_%expr119990%_ _%hd119963119985%_))
                                    (if (gx#stx-null? _%tl119964119987%_)
                                        (if '#t
                                            (let ((_g121524_
                                                   (gx#core-expand-expression+1
                                                    _%expr119990%_)))
                                              (begin
                                                (let ((_g121525_
                                                       (if (##values?
                                                            _g121524_)
                                                           (##vector-length
                                                            _g121524_)
                                                           1)))
                                                  (if (not (##fx= _g121525_ 2))
                                                      (error "Context expects 2 values"
                                                             _g121525_)))
                                                (let ((_%_119992%_
                                                       (##vector-ref
                                                        _g121524_
                                                        0))
                                                      (_%e119993%_
                                                       (##vector-ref
                                                        _g121524_
                                                        1)))
                                                  _%e119993%_)))
                                            (_%E119958119970%_))
                                        (_%E119958119970%_)))))
                              (_%E119958119970%_))))
                      (_%E119958119970%_)))))
          (_%E119957119995%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind119900%_ _%e119901%_ _%rebind?119902%_)
        (let* ((_%e119903119913%_ _%bind119900%_)
               (_%E119905119917%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119903119913%_)))
               (_%E119904119939%_
                (lambda ()
                  (if (gx#stx-pair? _%e119903119913%_)
                      (let ((_%e119906119921%_
                             (gx#syntax-e _%e119903119913%_)))
                        (let ((_%hd119907119924%_ (##car _%e119906119921%_))
                              (_%tl119908119926%_ (##cdr _%e119906119921%_)))
                          (let ((_%id119929%_ _%hd119907119924%_))
                            (if (gx#stx-pair? _%tl119908119926%_)
                                (let ((_%e119909119931%_
                                       (gx#syntax-e _%tl119908119926%_)))
                                  (let ((_%hd119910119934%_
                                         (##car _%e119909119931%_))
                                        (_%tl119911119936%_
                                         (##cdr _%e119909119931%_)))
                                    (if (gx#stx-null? _%tl119911119936%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id119929%_
                                             _%e119901%_
                                             _%rebind?119902%_)
                                            (_%E119905119917%_))
                                        (_%E119905119917%_))))
                                (_%E119905119917%_)))))
                      (_%E119905119917%_)))))
          (_%E119904119939%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind119946%_ _%e119947%_)
        (let ((_%rebind?119949%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind119946%_
           _%e119947%_
           _%rebind?119949%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g121527_
        (let ((_g121526_ (##length _g121527_)))
          (cond ((##fx= _g121526_ 2)
                 (apply (lambda (_%bind119946%_ _%e119947%_)
                          (gx#core-expand-let-bind-syntax!__0
                           _%bind119946%_
                           _%e119947%_))
                        _g121527_))
                ((##fx= _g121526_ 3)
                 (apply (lambda (_%bind119951%_ _%e119952%_ _%rebind?119953%_)
                          (gx#core-expand-let-bind-syntax!__%
                           _%bind119951%_
                           _%e119952%_
                           _%rebind?119953%_))
                        _g121527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g121527_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx119858%_)
        (let* ((_%e119859119869%_ _%stx119858%_)
               (_%E119861119873%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119859119869%_)))
               (_%E119860119895%_
                (lambda ()
                  (if (gx#stx-pair? _%e119859119869%_)
                      (let ((_%e119862119877%_
                             (gx#syntax-e _%e119859119869%_)))
                        (let ((_%hd119863119880%_ (##car _%e119862119877%_))
                              (_%tl119864119882%_ (##cdr _%e119862119877%_)))
                          (if (gx#stx-pair? _%tl119864119882%_)
                              (let ((_%e119865119885%_
                                     (gx#syntax-e _%tl119864119882%_)))
                                (let ((_%hd119866119888%_
                                       (##car _%e119865119885%_))
                                      (_%tl119867119890%_
                                       (##cdr _%e119865119885%_)))
                                  (let ((_%expr119893%_ _%hd119866119888%_))
                                    (if (gx#stx-null? _%tl119867119890%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr119893%_)
                                            (_%E119861119873%_))
                                        (_%E119861119873%_)))))
                              (_%E119861119873%_))))
                      (_%E119861119873%_)))))
          (_%E119860119895%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx119817%_)
        (let* ((_%e119818119828%_ _%stx119817%_)
               (_%E119820119832%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119818119828%_)))
               (_%E119819119854%_
                (lambda ()
                  (if (gx#stx-pair? _%e119818119828%_)
                      (let ((_%e119821119836%_
                             (gx#syntax-e _%e119818119828%_)))
                        (let ((_%hd119822119839%_ (##car _%e119821119836%_))
                              (_%tl119823119841%_ (##cdr _%e119821119836%_)))
                          (if (gx#stx-pair? _%tl119823119841%_)
                              (let ((_%e119824119844%_
                                     (gx#syntax-e _%tl119823119841%_)))
                                (let ((_%hd119825119847%_
                                       (##car _%e119824119844%_))
                                      (_%tl119826119849%_
                                       (##cdr _%e119824119844%_)))
                                  (let ((_%e119852%_ _%hd119825119847%_))
                                    (if (gx#stx-null? _%tl119826119849%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e119852%_)
                                                         '()))
                                             (gx#stx-source _%stx119817%_))
                                            (_%E119820119832%_))
                                        (_%E119820119832%_)))))
                              (_%E119820119832%_))))
                      (_%E119820119832%_)))))
          (_%E119819119854%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx119776%_)
        (let* ((_%e119777119787%_ _%stx119776%_)
               (_%E119779119791%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119777119787%_)))
               (_%E119778119813%_
                (lambda ()
                  (if (gx#stx-pair? _%e119777119787%_)
                      (let ((_%e119780119795%_
                             (gx#syntax-e _%e119777119787%_)))
                        (let ((_%hd119781119798%_ (##car _%e119780119795%_))
                              (_%tl119782119800%_ (##cdr _%e119780119795%_)))
                          (if (gx#stx-pair? _%tl119782119800%_)
                              (let ((_%e119783119803%_
                                     (gx#syntax-e _%tl119782119800%_)))
                                (let ((_%hd119784119806%_
                                       (##car _%e119783119803%_))
                                      (_%tl119785119808%_
                                       (##cdr _%e119783119803%_)))
                                  (let ((_%e119811%_ _%hd119784119806%_))
                                    (if (gx#stx-null? _%tl119785119808%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e119811%_)
                                                         '()))
                                             (gx#stx-source _%stx119776%_))
                                            (_%E119779119791%_))
                                        (_%E119779119791%_)))))
                              (_%E119779119791%_))))
                      (_%E119779119791%_)))))
          (_%E119778119813%_))))
    (define gx#core-expand-call%
      (lambda (_%stx119733%_)
        (let* ((_%e119734119744%_ _%stx119733%_)
               (_%E119736119748%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119734119744%_)))
               (_%E119735119772%_
                (lambda ()
                  (if (gx#stx-pair? _%e119734119744%_)
                      (let ((_%e119737119752%_
                             (gx#syntax-e _%e119734119744%_)))
                        (let ((_%hd119738119755%_ (##car _%e119737119752%_))
                              (_%tl119739119757%_ (##cdr _%e119737119752%_)))
                          (if (gx#stx-pair? _%tl119739119757%_)
                              (let ((_%e119740119760%_
                                     (gx#syntax-e _%tl119739119757%_)))
                                (let ((_%hd119741119763%_
                                       (##car _%e119740119760%_))
                                      (_%tl119742119765%_
                                       (##cdr _%e119740119760%_)))
                                  (let* ((_%rator119768%_ _%hd119741119763%_)
                                         (_%args119770%_ _%tl119742119765%_))
                                    (if (gx#stx-list? _%args119770%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator119768%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args119770%_))
                                         (gx#stx-source _%stx119733%_))
                                        (_%E119736119748%_)))))
                              (_%E119736119748%_))))
                      (_%E119736119748%_)))))
          (_%E119735119772%_))))
    (define gx#core-expand-if%
      (lambda (_%stx119666%_)
        (let* ((_%e119667119683%_ _%stx119666%_)
               (_%E119669119687%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119667119683%_)))
               (_%E119668119729%_
                (lambda ()
                  (if (gx#stx-pair? _%e119667119683%_)
                      (let ((_%e119670119691%_
                             (gx#syntax-e _%e119667119683%_)))
                        (let ((_%hd119671119694%_ (##car _%e119670119691%_))
                              (_%tl119672119696%_ (##cdr _%e119670119691%_)))
                          (if (gx#stx-pair? _%tl119672119696%_)
                              (let ((_%e119673119699%_
                                     (gx#syntax-e _%tl119672119696%_)))
                                (let ((_%hd119674119702%_
                                       (##car _%e119673119699%_))
                                      (_%tl119675119704%_
                                       (##cdr _%e119673119699%_)))
                                  (let ((_%test119707%_ _%hd119674119702%_))
                                    (if (gx#stx-pair? _%tl119675119704%_)
                                        (let ((_%e119676119709%_
                                               (gx#syntax-e
                                                _%tl119675119704%_)))
                                          (let ((_%hd119677119712%_
                                                 (##car _%e119676119709%_))
                                                (_%tl119678119714%_
                                                 (##cdr _%e119676119709%_)))
                                            (let ((_%K119717%_
                                                   _%hd119677119712%_))
                                              (if (gx#stx-pair?
                                                   _%tl119678119714%_)
                                                  (let ((_%e119679119719%_
                                                         (gx#syntax-e
                                                          _%tl119678119714%_)))
                                                    (let ((_%hd119680119722%_
                                                           (##car _%e119679119719%_))
                                                          (_%tl119681119724%_
                                                           (##cdr _%e119679119719%_)))
                                                      (let ((_%E119727%_
                                                             _%hd119680119722%_))
                                                        (if (gx#stx-null?
                                                             _%tl119681119724%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test119707%_)
                                     (cons (gx#core-expand-expression
                                            _%K119717%_)
                                           (cons (gx#core-expand-expression
                                                  _%E119727%_)
                                                 '()))))
                         (gx#stx-source _%stx119666%_))
                        (_%E119669119687%_))
                    (_%E119669119687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119669119687%_)))))
                                        (_%E119669119687%_)))))
                              (_%E119669119687%_))))
                      (_%E119669119687%_)))))
          (_%E119668119729%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx119625%_)
        (let* ((_%e119626119636%_ _%stx119625%_)
               (_%E119628119640%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119626119636%_)))
               (_%E119627119662%_
                (lambda ()
                  (if (gx#stx-pair? _%e119626119636%_)
                      (let ((_%e119629119644%_
                             (gx#syntax-e _%e119626119636%_)))
                        (let ((_%hd119630119647%_ (##car _%e119629119644%_))
                              (_%tl119631119649%_ (##cdr _%e119629119644%_)))
                          (if (gx#stx-pair? _%tl119631119649%_)
                              (let ((_%e119632119652%_
                                     (gx#syntax-e _%tl119631119649%_)))
                                (let ((_%hd119633119655%_
                                       (##car _%e119632119652%_))
                                      (_%tl119634119657%_
                                       (##cdr _%e119632119652%_)))
                                  (let ((_%id119660%_ _%hd119633119655%_))
                                    (if (gx#stx-null? _%tl119634119657%_)
                                        (if (gx#identifier? _%id119660%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id119660%_
                                                          _%stx119625%_)
                                                         '()))
                                             (gx#stx-source _%stx119625%_))
                                            (_%E119628119640%_))
                                        (_%E119628119640%_)))))
                              (_%E119628119640%_))))
                      (_%E119628119640%_)))))
          (_%E119627119662%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx119571%_)
        (let* ((_%e119572119585%_ _%stx119571%_)
               (_%E119574119589%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119572119585%_)))
               (_%E119573119621%_
                (lambda ()
                  (if (gx#stx-pair? _%e119572119585%_)
                      (let ((_%e119575119593%_
                             (gx#syntax-e _%e119572119585%_)))
                        (let ((_%hd119576119596%_ (##car _%e119575119593%_))
                              (_%tl119577119598%_ (##cdr _%e119575119593%_)))
                          (if (gx#stx-pair? _%tl119577119598%_)
                              (let ((_%e119578119601%_
                                     (gx#syntax-e _%tl119577119598%_)))
                                (let ((_%hd119579119604%_
                                       (##car _%e119578119601%_))
                                      (_%tl119580119606%_
                                       (##cdr _%e119578119601%_)))
                                  (let ((_%id119609%_ _%hd119579119604%_))
                                    (if (gx#stx-pair? _%tl119580119606%_)
                                        (let ((_%e119581119611%_
                                               (gx#syntax-e
                                                _%tl119580119606%_)))
                                          (let ((_%hd119582119614%_
                                                 (##car _%e119581119611%_))
                                                (_%tl119583119616%_
                                                 (##cdr _%e119581119611%_)))
                                            (let ((_%expr119619%_
                                                   _%hd119582119614%_))
                                              (if (gx#stx-null?
                                                   _%tl119583119616%_)
                                                  (if (gx#identifier?
                                                       _%id119609%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id119609%_
                            _%stx119571%_)
                           (cons (gx#core-expand-expression _%expr119619%_)
                                 '())))
               (gx#stx-source _%stx119571%_))
              (_%E119574119589%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119574119589%_)))))
                                        (_%E119574119589%_)))))
                              (_%E119574119589%_))))
                      (_%E119574119589%_)))))
          (_%E119573119621%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx119416%_)
        (letrec ((_%generate119418%_
                  (lambda (_%body119448%_)
                    (let _%lp119450%_ ((_%rest119452%_ _%body119448%_)
                                       (_%ns119453%_
                                        (gx#core-context-namespace__0))
                                       (_%r119454%_ '()))
                      (let* ((_%e119455119470%_ _%rest119452%_)
                             (_%E119468119474%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e119455119470%_)))
                             (_%E119464119478%_
                              (lambda ()
                                (if (gx#stx-null? _%e119455119470%_)
                                    (if '#t
                                        (reverse _%r119454%_)
                                        (_%E119468119474%_))
                                    (_%E119468119474%_))))
                             (_%E119457119535%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119455119470%_)
                                    (let ((_%e119465119482%_
                                           (gx#syntax-e _%e119455119470%_)))
                                      (let ((_%hd119466119485%_
                                             (##car _%e119465119482%_))
                                            (_%tl119467119487%_
                                             (##cdr _%e119465119482%_)))
                                        (let* ((_%hd119490%_
                                                _%hd119466119485%_)
                                               (_%rest119492%_
                                                _%tl119467119487%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd119490%_)
                                                  (_%lp119450%_
                                                   _%rest119492%_
                                                   _%ns119453%_
                                                   (cons (cons _%hd119490%_
                                                               (cons (if _%ns119453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd119490%_
                                  _%ns119453%_
                                  '"#"
                                  _%hd119490%_)
                                 _%hd119490%_)
                             '()))
                 _%r119454%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e119493119503%_
                                                          _%hd119490%_)
                                                         (_%E119495119507%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e119493119503%_)))
                                                         (_%E119494119531%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e119493119503%_)
                        (let ((_%e119496119511%_
                               (gx#syntax-e _%e119493119503%_)))
                          (let ((_%hd119497119514%_ (##car _%e119496119511%_))
                                (_%tl119498119516%_ (##cdr _%e119496119511%_)))
                            (let ((_%id119519%_ _%hd119497119514%_))
                              (if (gx#stx-pair? _%tl119498119516%_)
                                  (let ((_%e119499119521%_
                                         (gx#syntax-e _%tl119498119516%_)))
                                    (let ((_%hd119500119524%_
                                           (##car _%e119499119521%_))
                                          (_%tl119501119526%_
                                           (##cdr _%e119499119521%_)))
                                      (let ((_%eid119529%_ _%hd119500119524%_))
                                        (if (gx#stx-null? _%tl119501119526%_)
                                            (if (and (gx#identifier?
                                                      _%id119519%_)
                                                     (gx#identifier?
                                                      _%eid119529%_))
                                                (_%lp119450%_
                                                 _%rest119492%_
                                                 _%ns119453%_
                                                 (cons (cons _%id119519%_
                                                             (cons _%eid119529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r119454%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119495119507%_))
                                            (_%E119495119507%_)))))
                                  (_%E119495119507%_)))))
                        (_%E119495119507%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119494119531%_)))
                                              (_%E119464119478%_)))))
                                    (_%E119464119478%_))))
                             (_%E119456119567%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119455119470%_)
                                    (let ((_%e119458119539%_
                                           (gx#syntax-e _%e119455119470%_)))
                                      (let ((_%hd119459119542%_
                                             (##car _%e119458119539%_))
                                            (_%tl119460119544%_
                                             (##cdr _%e119458119539%_)))
                                        (if (eq? (gx#stx-e _%hd119459119542%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl119460119544%_)
                                                (let ((_%e119461119547%_
                                                       (gx#syntax-e
                                                        _%tl119460119544%_)))
                                                  (let ((_%hd119462119550%_
                                                         (##car _%e119461119547%_))
                                                        (_%tl119463119552%_
                                                         (##cdr _%e119461119547%_)))
                                                    (let* ((_%ns119555%_
                                                            _%hd119462119550%_)
                                                           (_%rest119557%_
                                                            _%tl119463119552%_))
                                                      (if '#t
                                                          (let ((_%ns119565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns119555%_)
                             (let () (symbol->string (gx#stx-e _%ns119555%_)))
                             (if (or (gx#stx-string? _%ns119555%_)
                                     (gx#stx-false? _%ns119555%_))
                                 (let () (gx#stx-e _%ns119555%_))
                                 (let ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; extern expects namespace identifier"
                                    _%stx119416%_
                                    _%ns119555%_))))))
                    (_%lp119450%_ _%rest119557%_ _%ns119565%_ _%r119454%_))
                  (_%E119457119535%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119457119535%_))
                                            (_%E119457119535%_))))
                                    (_%E119457119535%_)))))
                        (_%E119456119567%_))))))
          (let* ((_%e119419119426%_ _%stx119416%_)
                 (_%E119421119430%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119419119426%_)))
                 (_%E119420119444%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119419119426%_)
                        (let ((_%e119422119434%_
                               (gx#syntax-e _%e119419119426%_)))
                          (let ((_%hd119423119437%_ (##car _%e119422119434%_))
                                (_%tl119424119439%_ (##cdr _%e119422119434%_)))
                            (let ((_%body119442%_ _%tl119424119439%_))
                              (if (gx#stx-list? _%body119442%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate119418%_ _%body119442%_))
                                  (_%E119421119430%_)))))
                        (_%E119421119430%_)))))
            (_%E119420119444%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119362%_)
        (let* ((_%e119363119376%_ _%stx119362%_)
               (_%E119365119380%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119363119376%_)))
               (_%E119364119412%_
                (lambda ()
                  (if (gx#stx-pair? _%e119363119376%_)
                      (let ((_%e119366119384%_
                             (gx#syntax-e _%e119363119376%_)))
                        (let ((_%hd119367119387%_ (##car _%e119366119384%_))
                              (_%tl119368119389%_ (##cdr _%e119366119384%_)))
                          (if (gx#stx-pair? _%tl119368119389%_)
                              (let ((_%e119369119392%_
                                     (gx#syntax-e _%tl119368119389%_)))
                                (let ((_%hd119370119395%_
                                       (##car _%e119369119392%_))
                                      (_%tl119371119397%_
                                       (##cdr _%e119369119392%_)))
                                  (let ((_%hd119400%_ _%hd119370119395%_))
                                    (if (gx#stx-pair? _%tl119371119397%_)
                                        (let ((_%e119372119402%_
                                               (gx#syntax-e
                                                _%tl119371119397%_)))
                                          (let ((_%hd119373119405%_
                                                 (##car _%e119372119402%_))
                                                (_%tl119374119407%_
                                                 (##cdr _%e119372119402%_)))
                                            (let ((_%expr119410%_
                                                   _%hd119373119405%_))
                                              (if (gx#stx-null?
                                                   _%tl119374119407%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd119400%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd119400%_)
                          (cons _%expr119410%_ '())))
              (_%E119365119380%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119365119380%_)))))
                                        (_%E119365119380%_)))))
                              (_%E119365119380%_))))
                      (_%E119365119380%_)))))
          (_%E119364119412%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119308%_)
        (let* ((_%e119309119322%_ _%stx119308%_)
               (_%E119311119326%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119309119322%_)))
               (_%E119310119358%_
                (lambda ()
                  (if (gx#stx-pair? _%e119309119322%_)
                      (let ((_%e119312119330%_
                             (gx#syntax-e _%e119309119322%_)))
                        (let ((_%hd119313119333%_ (##car _%e119312119330%_))
                              (_%tl119314119335%_ (##cdr _%e119312119330%_)))
                          (if (gx#stx-pair? _%tl119314119335%_)
                              (let ((_%e119315119338%_
                                     (gx#syntax-e _%tl119314119335%_)))
                                (let ((_%hd119316119341%_
                                       (##car _%e119315119338%_))
                                      (_%tl119317119343%_
                                       (##cdr _%e119315119338%_)))
                                  (let ((_%hd119346%_ _%hd119316119341%_))
                                    (if (gx#stx-pair? _%tl119317119343%_)
                                        (let ((_%e119318119348%_
                                               (gx#syntax-e
                                                _%tl119317119343%_)))
                                          (let ((_%hd119319119351%_
                                                 (##car _%e119318119348%_))
                                                (_%tl119320119353%_
                                                 (##cdr _%e119318119348%_)))
                                            (let ((_%expr119356%_
                                                   _%hd119319119351%_))
                                              (if (gx#stx-null?
                                                   _%tl119320119353%_)
                                                  (if (gx#identifier?
                                                       _%hd119346%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119356%_ '())))
              (_%E119311119326%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119311119326%_)))))
                                        (_%E119311119326%_)))))
                              (_%E119311119326%_))))
                      (_%E119311119326%_)))))
          (_%E119310119358%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119254%_)
        (let* ((_%e119255119268%_ _%stx119254%_)
               (_%E119257119272%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119255119268%_)))
               (_%E119256119304%_
                (lambda ()
                  (if (gx#stx-pair? _%e119255119268%_)
                      (let ((_%e119258119276%_
                             (gx#syntax-e _%e119255119268%_)))
                        (let ((_%hd119259119279%_ (##car _%e119258119276%_))
                              (_%tl119260119281%_ (##cdr _%e119258119276%_)))
                          (if (gx#stx-pair? _%tl119260119281%_)
                              (let ((_%e119261119284%_
                                     (gx#syntax-e _%tl119260119281%_)))
                                (let ((_%hd119262119287%_
                                       (##car _%e119261119284%_))
                                      (_%tl119263119289%_
                                       (##cdr _%e119261119284%_)))
                                  (let ((_%id119292%_ _%hd119262119287%_))
                                    (if (gx#stx-pair? _%tl119263119289%_)
                                        (let ((_%e119264119294%_
                                               (gx#syntax-e
                                                _%tl119263119289%_)))
                                          (let ((_%hd119265119297%_
                                                 (##car _%e119264119294%_))
                                                (_%tl119266119299%_
                                                 (##cdr _%e119264119294%_)))
                                            (let ((_%alias-id119302%_
                                                   _%hd119265119297%_))
                                              (if (gx#stx-null?
                                                   _%tl119266119299%_)
                                                  (if (and (gx#identifier?
                                                            _%id119292%_)
                                                           (gx#identifier?
                                                            _%alias-id119302%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119302%_ '())))
              (_%E119257119272%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119257119272%_)))))
                                        (_%E119257119272%_)))))
                              (_%E119257119272%_))))
                      (_%E119257119272%_)))))
          (_%E119256119304%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119211%_)
        (let* ((_%e119212119222%_ _%stx119211%_)
               (_%E119214119226%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119212119222%_)))
               (_%E119213119250%_
                (lambda ()
                  (if (gx#stx-pair? _%e119212119222%_)
                      (let ((_%e119215119230%_
                             (gx#syntax-e _%e119212119222%_)))
                        (let ((_%hd119216119233%_ (##car _%e119215119230%_))
                              (_%tl119217119235%_ (##cdr _%e119215119230%_)))
                          (if (gx#stx-pair? _%tl119217119235%_)
                              (let ((_%e119218119238%_
                                     (gx#syntax-e _%tl119217119235%_)))
                                (let ((_%hd119219119241%_
                                       (##car _%e119218119238%_))
                                      (_%tl119220119243%_
                                       (##cdr _%e119218119238%_)))
                                  (let* ((_%hd119246%_ _%hd119219119241%_)
                                         (_%body119248%_ _%tl119220119243%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119246%_)
                                             (gx#stx-list? _%body119248%_)
                                             (not (gx#stx-null?
                                                   _%body119248%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119246%_)
                                         _%body119248%_)
                                        (_%E119214119226%_)))))
                              (_%E119214119226%_))))
                      (_%E119214119226%_)))))
          (_%E119213119250%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119147%_)
        (letrec ((_%generate119149%_
                  (lambda (_%clause119179%_)
                    (let* ((_%e119180119187%_ _%clause119179%_)
                           (_%E119182119191%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119147%_
                               _%clause119179%_)))
                           (_%E119181119207%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119180119187%_)
                                  (let ((_%e119183119195%_
                                         (gx#syntax-e _%e119180119187%_)))
                                    (let ((_%hd119184119198%_
                                           (##car _%e119183119195%_))
                                          (_%tl119185119200%_
                                           (##cdr _%e119183119195%_)))
                                      (let* ((_%hd119203%_ _%hd119184119198%_)
                                             (_%body119205%_
                                              _%tl119185119200%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119203%_)
                                                 (gx#stx-list? _%body119205%_)
                                                 (not (gx#stx-null?
                                                       _%body119205%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119203%_)
                                                   _%body119205%_)
                                             (gx#stx-source _%clause119179%_))
                                            (_%E119182119191%_)))))
                                  (_%E119182119191%_)))))
                      (_%E119181119207%_)))))
          (let* ((_%e119150119157%_ _%stx119147%_)
                 (_%E119152119161%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119150119157%_)))
                 (_%E119151119175%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119150119157%_)
                        (let ((_%e119153119165%_
                               (gx#syntax-e _%e119150119157%_)))
                          (let ((_%hd119154119168%_ (##car _%e119153119165%_))
                                (_%tl119155119170%_ (##cdr _%e119153119165%_)))
                            (let ((_%clauses119173%_ _%tl119155119170%_))
                              (if (gx#stx-list? _%clauses119173%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119149%_
                                    _%clauses119173%_))
                                  (_%E119152119161%_)))))
                        (_%E119152119161%_)))))
            (_%E119151119175%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx119048%_ _%form119049%_)
        (letrec ((_%generate119051%_
                  (lambda (_%bind119094%_)
                    (let* ((_%e119095119105%_ _%bind119094%_)
                           (_%E119097119109%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx119048%_
                               _%bind119094%_)))
                           (_%E119096119133%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119095119105%_)
                                  (let ((_%e119098119113%_
                                         (gx#syntax-e _%e119095119105%_)))
                                    (let ((_%hd119099119116%_
                                           (##car _%e119098119113%_))
                                          (_%tl119100119118%_
                                           (##cdr _%e119098119113%_)))
                                      (let ((_%ids119121%_ _%hd119099119116%_))
                                        (if (gx#stx-pair? _%tl119100119118%_)
                                            (let ((_%e119101119123%_
                                                   (gx#syntax-e
                                                    _%tl119100119118%_)))
                                              (let ((_%hd119102119126%_
                                                     (##car _%e119101119123%_))
                                                    (_%tl119103119128%_
                                                     (##cdr _%e119101119123%_)))
                                                (let ((_%expr119131%_
                                                       _%hd119102119126%_))
                                                  (if (gx#stx-null?
                                                       _%tl119103119128%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119121%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119121%_)
                        (cons _%expr119131%_ '()))
                  (_%E119097119109%_))
              (_%E119097119109%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119097119109%_)))))
                                  (_%E119097119109%_)))))
                      (_%E119096119133%_)))))
          (let* ((_%e119052119062%_ _%stx119048%_)
                 (_%E119054119066%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119052119062%_)))
                 (_%E119053119090%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119052119062%_)
                        (let ((_%e119055119070%_
                               (gx#syntax-e _%e119052119062%_)))
                          (let ((_%hd119056119073%_ (##car _%e119055119070%_))
                                (_%tl119057119075%_ (##cdr _%e119055119070%_)))
                            (if (gx#stx-pair? _%tl119057119075%_)
                                (let ((_%e119058119078%_
                                       (gx#syntax-e _%tl119057119075%_)))
                                  (let ((_%hd119059119081%_
                                         (##car _%e119058119078%_))
                                        (_%tl119060119083%_
                                         (##cdr _%e119058119078%_)))
                                    (let* ((_%hd119086%_ _%hd119059119081%_)
                                           (_%body119088%_ _%tl119060119083%_))
                                      (if (and (gx#stx-list? _%hd119086%_)
                                               (gx#stx-list? _%body119088%_)
                                               (not (gx#stx-null?
                                                     _%body119088%_)))
                                          (gx#core-cons*
                                           _%form119049%_
                                           (gx#stx-map1
                                            _%generate119051%_
                                            _%hd119086%_)
                                           _%body119088%_)
                                          (_%E119054119066%_)))))
                                (_%E119054119066%_))))
                        (_%E119054119066%_)))))
            (_%E119053119090%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119140%_)
        (let ((_%form119142%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119140%_ _%form119142%_))))
    (define gx#macro-expand-let-values
      (lambda _g121529_
        (let ((_g121528_ (##length _g121529_)))
          (cond ((##fx= _g121528_ 1)
                 (apply (lambda (_%stx119140%_)
                          (gx#macro-expand-let-values__0 _%stx119140%_))
                        _g121529_))
                ((##fx= _g121528_ 2)
                 (apply (lambda (_%stx119144%_ _%form119145%_)
                          (gx#macro-expand-let-values__%
                           _%stx119144%_
                           _%form119145%_))
                        _g121529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g121529_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx119045%_)
        (gx#macro-expand-let-values__% _%stx119045%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx119043%_)
        (gx#macro-expand-let-values__% _%stx119043%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx118934%_)
        (let* ((_%e118935118961%_ _%stx118934%_)
               (_%E118947118965%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118935118961%_)))
               (_%E118937119007%_
                (lambda ()
                  (if (gx#stx-pair? _%e118935118961%_)
                      (let ((_%e118948118969%_
                             (gx#syntax-e _%e118935118961%_)))
                        (let ((_%hd118949118972%_ (##car _%e118948118969%_))
                              (_%tl118950118974%_ (##cdr _%e118948118969%_)))
                          (if (gx#stx-pair? _%tl118950118974%_)
                              (let ((_%e118951118977%_
                                     (gx#syntax-e _%tl118950118974%_)))
                                (let ((_%hd118952118980%_
                                       (##car _%e118951118977%_))
                                      (_%tl118953118982%_
                                       (##cdr _%e118951118977%_)))
                                  (let ((_%test118985%_ _%hd118952118980%_))
                                    (if (gx#stx-pair? _%tl118953118982%_)
                                        (let ((_%e118954118987%_
                                               (gx#syntax-e
                                                _%tl118953118982%_)))
                                          (let ((_%hd118955118990%_
                                                 (##car _%e118954118987%_))
                                                (_%tl118956118992%_
                                                 (##cdr _%e118954118987%_)))
                                            (let ((_%K118995%_
                                                   _%hd118955118990%_))
                                              (if (gx#stx-pair?
                                                   _%tl118956118992%_)
                                                  (let ((_%e118957118997%_
                                                         (gx#syntax-e
                                                          _%tl118956118992%_)))
                                                    (let ((_%hd118958119000%_
                                                           (##car _%e118957118997%_))
                                                          (_%tl118959119002%_
                                                           (##cdr _%e118957118997%_)))
                                                      (let ((_%E119005%_
                                                             _%hd118958119000%_))
                                                        (if (gx#stx-null?
                                                             _%tl118959119002%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test118985%_
                         _%K118995%_
                         _%E119005%_)
                        (_%E118947118965%_))
                    (_%E118947118965%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E118947118965%_)))))
                                        (_%E118947118965%_)))))
                              (_%E118947118965%_))))
                      (_%E118947118965%_))))
               (_%E118936119039%_
                (lambda ()
                  (if (gx#stx-pair? _%e118935118961%_)
                      (let ((_%e118938119011%_
                             (gx#syntax-e _%e118935118961%_)))
                        (let ((_%hd118939119014%_ (##car _%e118938119011%_))
                              (_%tl118940119016%_ (##cdr _%e118938119011%_)))
                          (if (gx#stx-pair? _%tl118940119016%_)
                              (let ((_%e118941119019%_
                                     (gx#syntax-e _%tl118940119016%_)))
                                (let ((_%hd118942119022%_
                                       (##car _%e118941119019%_))
                                      (_%tl118943119024%_
                                       (##cdr _%e118941119019%_)))
                                  (let ((_%test119027%_ _%hd118942119022%_))
                                    (if (gx#stx-pair? _%tl118943119024%_)
                                        (let ((_%e118944119029%_
                                               (gx#syntax-e
                                                _%tl118943119024%_)))
                                          (let ((_%hd118945119032%_
                                                 (##car _%e118944119029%_))
                                                (_%tl118946119034%_
                                                 (##cdr _%e118944119029%_)))
                                            (let ((_%K119037%_
                                                   _%hd118945119032%_))
                                              (if (gx#stx-null?
                                                   _%tl118946119034%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test119027%_
                                                       _%K119037%_
                                                       '#!void)
                                                      (_%E118937119007%_))
                                                  (_%E118937119007%_)))))
                                        (_%E118937119007%_)))))
                              (_%E118937119007%_))))
                      (_%E118937119007%_)))))
          (_%E118936119039%_))))
    (define gx#free-identifier=?
      (lambda (_%xid118919%_ _%yid118920%_)
        (let ((_%xe118922%_ (gx#resolve-identifier__0 _%xid118919%_))
              (_%ye118923%_ (gx#resolve-identifier__0 _%yid118920%_)))
          (if (and _%xe118922%_ _%ye118923%_)
              (let ()
                (let ((_%$e118926%_ (eq? _%xe118922%_ _%ye118923%_)))
                  (if _%$e118926%_
                      _%$e118926%_
                      (if (##structure-instance-of?
                           _%xe118922%_
                           'gx#binding::t)
                          (if (##structure-instance-of?
                               _%ye118923%_
                               'gx#binding::t)
                              (eq? (##unchecked-structure-ref
                                    _%xe118922%_
                                    '1
                                    '#f
                                    '#f)
                                   (##unchecked-structure-ref
                                    _%ye118923%_
                                    '1
                                    '#f
                                    '#f))
                              '#f)
                          '#f))))
              (if (or _%xe118922%_ _%ye118923%_)
                  (let () '#f)
                  (let () (gx#stx-eq? _%xid118919%_ _%yid118920%_)))))))
    (define gx#bound-identifier=?
      (lambda (_%xid118900%_ _%yid118901%_)
        (letrec ((_%context118903%_
                  (lambda (_%e118917%_)
                    (if (##structure-direct-instance-of?
                         _%e118917%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e118917%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks118904%_
                  (lambda (_%e118912%_)
                    (if (symbol? _%e118912%_)
                        (let () '())
                        (if (##structure-direct-instance-of?
                             _%e118912%_
                             'gx#identifier-wrap::t)
                            (let ()
                              (##unchecked-structure-ref
                               _%e118912%_
                               '3
                               '#f
                               '#f))
                            (let ()
                              (##unchecked-structure-ref
                               _%e118912%_
                               '4
                               '#f
                               '#f))))))
                 (_%unwrap118905%_
                  (lambda (_%e118910%_)
                    (if (symbol? _%e118910%_)
                        _%e118910%_
                        (gx#syntax-local-unwrap _%e118910%_)))))
          (let ((_%x118907%_ (_%unwrap118905%_ _%xid118900%_))
                (_%y118908%_ (_%unwrap118905%_ _%yid118901%_)))
            (if (gx#stx-eq? _%x118907%_ _%y118908%_)
                (if (eq? (_%context118903%_ _%x118907%_)
                         (_%context118903%_ _%y118908%_))
                    (equal? (_%marks118904%_ _%x118907%_)
                            (_%marks118904%_ _%y118908%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx118898%_)
        (if (gx#identifier? _%stx118898%_)
            (gx#core-identifier=? _%stx118898%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx118896%_)
        (if (gx#identifier? _%stx118896%_)
            (gx#core-identifier=? _%stx118896%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx118839%_ _%where118840%_)
        (let _%lp118842%_ ((_%rest118844%_ (gx#syntax->list _%stx118839%_)))
          (let* ((_%rest118845118853%_ _%rest118844%_)
                 (_%else118847118861%_ (lambda () '#t))
                 (_%K118849118874%_
                  (lambda (_%rest118864%_ _%hd118865%_)
                    (if (not (gx#identifier? _%hd118865%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad identifier"
                           _%where118840%_
                           _%hd118865%_))
                        (if (__find (lambda (_%g118867118869%_)
                                      (gx#bound-identifier=?
                                       _%g118867118869%_
                                       _%hd118865%_))
                                    _%rest118864%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Duplicate identifier"
                               _%where118840%_
                               _%hd118865%_))
                            (let () (_%lp118842%_ _%rest118864%_)))))))
            (if (##pair? _%rest118845118853%_)
                (let ((_%hd118850118877%_ (##car _%rest118845118853%_))
                      (_%tl118851118879%_ (##cdr _%rest118845118853%_)))
                  (let* ((_%hd118882%_ _%hd118850118877%_)
                         (_%rest118884%_ _%tl118851118879%_))
                    (_%K118849118874%_ _%rest118884%_ _%hd118882%_)))
                (_%else118847118861%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx118889%_)
        (let ((_%where118891%_ _%stx118889%_))
          (gx#check-duplicate-identifiers__% _%stx118889%_ _%where118891%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g121531_
        (let ((_g121530_ (##length _g121531_)))
          (cond ((##fx= _g121530_ 1)
                 (apply (lambda (_%stx118889%_)
                          (gx#check-duplicate-identifiers__0 _%stx118889%_))
                        _g121531_))
                ((##fx= _g121530_ 2)
                 (apply (lambda (_%stx118893%_ _%where118894%_)
                          (gx#check-duplicate-identifiers__%
                           _%stx118893%_
                           _%where118894%_))
                        _g121531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g121531_))))))
    (define gx#core-bind-values?
      (lambda (_%stx118831%_)
        (gx#stx-andmap
         (lambda (_%x118833%_)
           (let ((_%$e118835%_ (gx#identifier? _%x118833%_)))
             (if _%$e118835%_ _%$e118835%_ (gx#stx-false? _%x118833%_))))
         _%stx118831%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx118795%_ _%rebind?118796%_ _%phi118797%_ _%ctx118798%_)
        (gx#stx-for-each1
         (lambda (_%id118800%_)
           (if (gx#identifier? _%id118800%_)
               (gx#core-bind-runtime!__%
                _%id118800%_
                _%rebind?118796%_
                _%phi118797%_
                _%ctx118798%_)
               '#!void))
         _%stx118795%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx118805%_)
        (let* ((_%rebind?118807%_ '#f)
               (_%phi118809%_ (gx#current-expander-phi))
               (_%ctx118811%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118805%_
           _%rebind?118807%_
           _%phi118809%_
           _%ctx118811%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx118813%_ _%rebind?118814%_)
        (let* ((_%phi118816%_ (gx#current-expander-phi))
               (_%ctx118818%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118813%_
           _%rebind?118814%_
           _%phi118816%_
           _%ctx118818%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx118820%_ _%rebind?118821%_ _%phi118822%_)
        (let ((_%ctx118824%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118820%_
           _%rebind?118821%_
           _%phi118822%_
           _%ctx118824%_))))
    (define gx#core-bind-values!
      (lambda _g121533_
        (let ((_g121532_ (##length _g121533_)))
          (cond ((##fx= _g121532_ 1)
                 (apply (lambda (_%stx118805%_)
                          (gx#core-bind-values!__0 _%stx118805%_))
                        _g121533_))
                ((##fx= _g121532_ 2)
                 (apply (lambda (_%stx118813%_ _%rebind?118814%_)
                          (gx#core-bind-values!__1
                           _%stx118813%_
                           _%rebind?118814%_))
                        _g121533_))
                ((##fx= _g121532_ 3)
                 (apply (lambda (_%stx118820%_ _%rebind?118821%_ _%phi118822%_)
                          (gx#core-bind-values!__2
                           _%stx118820%_
                           _%rebind?118821%_
                           _%phi118822%_))
                        _g121533_))
                ((##fx= _g121532_ 4)
                 (apply (lambda (_%stx118826%_
                                 _%rebind?118827%_
                                 _%phi118828%_
                                 _%ctx118829%_)
                          (gx#core-bind-values!__%
                           _%stx118826%_
                           _%rebind?118827%_
                           _%phi118828%_
                           _%ctx118829%_))
                        _g121533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g121533_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx118790%_)
        (gx#stx-map1
         (lambda (_%x118792%_)
           (if (gx#identifier? _%x118792%_)
               (gx#core-quote-syntax__0 _%x118792%_)
               '#f))
         _%stx118790%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx118783%_)
        (if (gx#identifier? _%stx118783%_)
            (let* ((_%bind118785%_ (gx#resolve-identifier__0 _%stx118783%_))
                   (_%$e118787%_ (not _%bind118785%_)))
              (if _%$e118787%_
                  _%$e118787%_
                  (##structure-instance-of?
                   _%bind118785%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id118772%_ _%form118773%_)
        (let ((_%bind118775%_ (gx#resolve-identifier__0 _%id118772%_)))
          (if (##structure-instance-of? _%bind118775%_ 'gx#runtime-binding::t)
              (let () (gx#core-quote-syntax__0 _%id118772%_))
              (if (not _%bind118775%_)
                  (let ()
                    (if (or (gx#core-context-rebind?__%
                             (gx#core-context-top__0))
                            (gx#core-extern-symbol? (gx#stx-e _%id118772%_)))
                        (gx#core-quote-syntax__0 _%id118772%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _%form118773%_
                         _%id118772%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; not a runtime binding"
                     _%form118773%_
                     _%id118772%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id118727%_ _%rebind?118728%_ _%phi118729%_ _%ctx118730%_)
        (let* ((_%key118732%_ (gx#core-identifier-key _%id118727%_))
               (_%eid118734%_
                (gx#make-binding-id__%
                 _%key118732%_
                 '#f
                 _%phi118729%_
                 _%ctx118730%_))
               (_%bind118740%_
                (if (##structure-instance-of?
                     _%ctx118730%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid118734%_
                       _%key118732%_
                       _%phi118729%_
                       _%ctx118730%_))
                    (if (##structure-instance-of?
                         _%ctx118730%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid118734%_
                           _%key118732%_
                           _%phi118729%_))
                        (if (##structure-instance-of?
                             _%ctx118730%_
                             'gx#local-context::t)
                            (let ()
                              (##structure
                               gx#local-binding::t
                               _%eid118734%_
                               _%key118732%_
                               _%phi118729%_))
                            (let ()
                              (##structure
                               gx#runtime-binding::t
                               _%eid118734%_
                               _%key118732%_
                               _%phi118729%_)))))))
          (gx#bind-identifier!__%
           _%id118727%_
           _%bind118740%_
           _%rebind?118728%_
           _%phi118729%_
           _%ctx118730%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id118746%_)
        (let* ((_%rebind?118748%_ '#f)
               (_%phi118750%_ (gx#current-expander-phi))
               (_%ctx118752%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118746%_
           _%rebind?118748%_
           _%phi118750%_
           _%ctx118752%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id118754%_ _%rebind?118755%_)
        (let* ((_%phi118757%_ (gx#current-expander-phi))
               (_%ctx118759%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118754%_
           _%rebind?118755%_
           _%phi118757%_
           _%ctx118759%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id118761%_ _%rebind?118762%_ _%phi118763%_)
        (let ((_%ctx118765%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118761%_
           _%rebind?118762%_
           _%phi118763%_
           _%ctx118765%_))))
    (define gx#core-bind-runtime!
      (lambda _g121535_
        (let ((_g121534_ (##length _g121535_)))
          (cond ((##fx= _g121534_ 1)
                 (apply (lambda (_%id118746%_)
                          (gx#core-bind-runtime!__0 _%id118746%_))
                        _g121535_))
                ((##fx= _g121534_ 2)
                 (apply (lambda (_%id118754%_ _%rebind?118755%_)
                          (gx#core-bind-runtime!__1
                           _%id118754%_
                           _%rebind?118755%_))
                        _g121535_))
                ((##fx= _g121534_ 3)
                 (apply (lambda (_%id118761%_ _%rebind?118762%_ _%phi118763%_)
                          (gx#core-bind-runtime!__2
                           _%id118761%_
                           _%rebind?118762%_
                           _%phi118763%_))
                        _g121535_))
                ((##fx= _g121534_ 4)
                 (apply (lambda (_%id118767%_
                                 _%rebind?118768%_
                                 _%phi118769%_
                                 _%ctx118770%_)
                          (gx#core-bind-runtime!__%
                           _%id118767%_
                           _%rebind?118768%_
                           _%phi118769%_
                           _%ctx118770%_))
                        _g121535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g121535_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id118679%_
               _%eid118680%_
               _%rebind?118681%_
               _%phi118682%_
               _%ctx118683%_)
        (let* ((_%key118685%_ (gx#core-identifier-key _%id118679%_))
               (_%bind118690%_
                (if (##structure-instance-of?
                     _%ctx118683%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid118680%_
                       _%key118685%_
                       _%phi118682%_
                       _%ctx118683%_))
                    (if (##structure-instance-of?
                         _%ctx118683%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid118680%_
                           _%key118685%_
                           _%phi118682%_))
                        (let ()
                          (##structure
                           gx#runtime-binding::t
                           _%eid118680%_
                           _%key118685%_
                           _%phi118682%_))))))
          (gx#bind-identifier!__%
           _%id118679%_
           _%bind118690%_
           _%rebind?118681%_
           _%phi118682%_
           _%ctx118683%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id118696%_ _%eid118697%_)
        (let* ((_%rebind?118699%_ '#f)
               (_%phi118701%_ (gx#current-expander-phi))
               (_%ctx118703%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118696%_
           _%eid118697%_
           _%rebind?118699%_
           _%phi118701%_
           _%ctx118703%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id118705%_ _%eid118706%_ _%rebind?118707%_)
        (let* ((_%phi118709%_ (gx#current-expander-phi))
               (_%ctx118711%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118705%_
           _%eid118706%_
           _%rebind?118707%_
           _%phi118709%_
           _%ctx118711%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id118713%_ _%eid118714%_ _%rebind?118715%_ _%phi118716%_)
        (let ((_%ctx118718%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118713%_
           _%eid118714%_
           _%rebind?118715%_
           _%phi118716%_
           _%ctx118718%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g121537_
        (let ((_g121536_ (##length _g121537_)))
          (cond ((##fx= _g121536_ 2)
                 (apply (lambda (_%id118696%_ _%eid118697%_)
                          (gx#core-bind-runtime-reference!__0
                           _%id118696%_
                           _%eid118697%_))
                        _g121537_))
                ((##fx= _g121536_ 3)
                 (apply (lambda (_%id118705%_ _%eid118706%_ _%rebind?118707%_)
                          (gx#core-bind-runtime-reference!__1
                           _%id118705%_
                           _%eid118706%_
                           _%rebind?118707%_))
                        _g121537_))
                ((##fx= _g121536_ 4)
                 (apply (lambda (_%id118713%_
                                 _%eid118714%_
                                 _%rebind?118715%_
                                 _%phi118716%_)
                          (gx#core-bind-runtime-reference!__2
                           _%id118713%_
                           _%eid118714%_
                           _%rebind?118715%_
                           _%phi118716%_))
                        _g121537_))
                ((##fx= _g121536_ 5)
                 (apply (lambda (_%id118720%_
                                 _%eid118721%_
                                 _%rebind?118722%_
                                 _%phi118723%_
                                 _%ctx118724%_)
                          (gx#core-bind-runtime-reference!__%
                           _%id118720%_
                           _%eid118721%_
                           _%rebind?118722%_
                           _%phi118723%_
                           _%ctx118724%_))
                        _g121537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g121537_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id118639%_
               _%eid118640%_
               _%rebind?118641%_
               _%phi118642%_
               _%ctx118643%_)
        (gx#bind-identifier!__%
         _%id118639%_
         (##structure
          gx#extern-binding::t
          _%eid118640%_
          (gx#core-identifier-key _%id118639%_)
          _%phi118642%_)
         _%rebind?118641%_
         _%phi118642%_
         _%ctx118643%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id118648%_ _%eid118649%_)
        (let* ((_%rebind?118651%_ '#f)
               (_%phi118653%_ (gx#current-expander-phi))
               (_%ctx118655%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118648%_
           _%eid118649%_
           _%rebind?118651%_
           _%phi118653%_
           _%ctx118655%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id118657%_ _%eid118658%_ _%rebind?118659%_)
        (let* ((_%phi118661%_ (gx#current-expander-phi))
               (_%ctx118663%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118657%_
           _%eid118658%_
           _%rebind?118659%_
           _%phi118661%_
           _%ctx118663%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id118665%_ _%eid118666%_ _%rebind?118667%_ _%phi118668%_)
        (let ((_%ctx118670%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118665%_
           _%eid118666%_
           _%rebind?118667%_
           _%phi118668%_
           _%ctx118670%_))))
    (define gx#core-bind-extern!
      (lambda _g121539_
        (let ((_g121538_ (##length _g121539_)))
          (cond ((##fx= _g121538_ 2)
                 (apply (lambda (_%id118648%_ _%eid118649%_)
                          (gx#core-bind-extern!__0 _%id118648%_ _%eid118649%_))
                        _g121539_))
                ((##fx= _g121538_ 3)
                 (apply (lambda (_%id118657%_ _%eid118658%_ _%rebind?118659%_)
                          (gx#core-bind-extern!__1
                           _%id118657%_
                           _%eid118658%_
                           _%rebind?118659%_))
                        _g121539_))
                ((##fx= _g121538_ 4)
                 (apply (lambda (_%id118665%_
                                 _%eid118666%_
                                 _%rebind?118667%_
                                 _%phi118668%_)
                          (gx#core-bind-extern!__2
                           _%id118665%_
                           _%eid118666%_
                           _%rebind?118667%_
                           _%phi118668%_))
                        _g121539_))
                ((##fx= _g121538_ 5)
                 (apply (lambda (_%id118672%_
                                 _%eid118673%_
                                 _%rebind?118674%_
                                 _%phi118675%_
                                 _%ctx118676%_)
                          (gx#core-bind-extern!__%
                           _%id118672%_
                           _%eid118673%_
                           _%rebind?118674%_
                           _%phi118675%_
                           _%ctx118676%_))
                        _g121539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g121539_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id118593%_
               _%e118594%_
               _%rebind?118595%_
               _%phi118596%_
               _%ctx118597%_)
        (gx#bind-identifier!__%
         _%id118593%_
         (let ((_%key118602%_ (gx#core-identifier-key _%id118593%_))
               (_%e118603%_
                (if (or (##structure-instance-of? _%e118594%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e118594%_
                         'gx#expander-context::t))
                    _%e118594%_
                    (##structure
                     gx#user-expander::t
                     _%e118594%_
                     _%ctx118597%_
                     _%phi118596%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key118602%_
             '#t
             _%phi118596%_
             _%ctx118597%_)
            _%key118602%_
            _%phi118596%_
            _%e118603%_))
         _%rebind?118595%_
         _%phi118596%_
         _%ctx118597%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id118608%_ _%e118609%_)
        (let* ((_%rebind?118611%_ '#f)
               (_%phi118613%_ (gx#current-expander-phi))
               (_%ctx118615%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118608%_
           _%e118609%_
           _%rebind?118611%_
           _%phi118613%_
           _%ctx118615%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id118617%_ _%e118618%_ _%rebind?118619%_)
        (let* ((_%phi118621%_ (gx#current-expander-phi))
               (_%ctx118623%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118617%_
           _%e118618%_
           _%rebind?118619%_
           _%phi118621%_
           _%ctx118623%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id118625%_ _%e118626%_ _%rebind?118627%_ _%phi118628%_)
        (let ((_%ctx118630%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118625%_
           _%e118626%_
           _%rebind?118627%_
           _%phi118628%_
           _%ctx118630%_))))
    (define gx#core-bind-syntax!
      (lambda _g121541_
        (let ((_g121540_ (##length _g121541_)))
          (cond ((##fx= _g121540_ 2)
                 (apply (lambda (_%id118608%_ _%e118609%_)
                          (gx#core-bind-syntax!__0 _%id118608%_ _%e118609%_))
                        _g121541_))
                ((##fx= _g121540_ 3)
                 (apply (lambda (_%id118617%_ _%e118618%_ _%rebind?118619%_)
                          (gx#core-bind-syntax!__1
                           _%id118617%_
                           _%e118618%_
                           _%rebind?118619%_))
                        _g121541_))
                ((##fx= _g121540_ 4)
                 (apply (lambda (_%id118625%_
                                 _%e118626%_
                                 _%rebind?118627%_
                                 _%phi118628%_)
                          (gx#core-bind-syntax!__2
                           _%id118625%_
                           _%e118626%_
                           _%rebind?118627%_
                           _%phi118628%_))
                        _g121541_))
                ((##fx= _g121540_ 5)
                 (apply (lambda (_%id118632%_
                                 _%e118633%_
                                 _%rebind?118634%_
                                 _%phi118635%_
                                 _%ctx118636%_)
                          (gx#core-bind-syntax!__%
                           _%id118632%_
                           _%e118633%_
                           _%rebind?118634%_
                           _%phi118635%_
                           _%ctx118636%_))
                        _g121541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g121541_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id118576%_ _%e118577%_ _%rebind?118578%_)
        (gx#core-bind-syntax!__%
         _%id118576%_
         _%e118577%_
         _%rebind?118578%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id118583%_ _%e118584%_)
        (let ((_%rebind?118586%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id118583%_
           _%e118584%_
           _%rebind?118586%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g121543_
        (let ((_g121542_ (##length _g121543_)))
          (cond ((##fx= _g121542_ 2)
                 (apply (lambda (_%id118583%_ _%e118584%_)
                          (gx#core-bind-root-syntax!__0
                           _%id118583%_
                           _%e118584%_))
                        _g121543_))
                ((##fx= _g121542_ 3)
                 (apply (lambda (_%id118588%_ _%e118589%_ _%rebind?118590%_)
                          (gx#core-bind-root-syntax!__%
                           _%id118588%_
                           _%e118589%_
                           _%rebind?118590%_))
                        _g121543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g121543_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id118534%_
               _%alias-id118535%_
               _%rebind?118536%_
               _%phi118537%_
               _%ctx118538%_)
        (gx#bind-identifier!__%
         _%id118534%_
         (let ((_%key118540%_ (gx#core-identifier-key _%id118534%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key118540%_
             '#t
             _%phi118537%_
             _%ctx118538%_)
            _%key118540%_
            _%phi118537%_
            _%alias-id118535%_))
         _%rebind?118536%_
         _%phi118537%_
         _%ctx118538%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id118545%_ _%alias-id118546%_)
        (let* ((_%rebind?118548%_ '#f)
               (_%phi118550%_ (gx#current-expander-phi))
               (_%ctx118552%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118545%_
           _%alias-id118546%_
           _%rebind?118548%_
           _%phi118550%_
           _%ctx118552%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id118554%_ _%alias-id118555%_ _%rebind?118556%_)
        (let* ((_%phi118558%_ (gx#current-expander-phi))
               (_%ctx118560%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118554%_
           _%alias-id118555%_
           _%rebind?118556%_
           _%phi118558%_
           _%ctx118560%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id118562%_ _%alias-id118563%_ _%rebind?118564%_ _%phi118565%_)
        (let ((_%ctx118567%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118562%_
           _%alias-id118563%_
           _%rebind?118564%_
           _%phi118565%_
           _%ctx118567%_))))
    (define gx#core-bind-alias!
      (lambda _g121545_
        (let ((_g121544_ (##length _g121545_)))
          (cond ((##fx= _g121544_ 2)
                 (apply (lambda (_%id118545%_ _%alias-id118546%_)
                          (gx#core-bind-alias!__0
                           _%id118545%_
                           _%alias-id118546%_))
                        _g121545_))
                ((##fx= _g121544_ 3)
                 (apply (lambda (_%id118554%_
                                 _%alias-id118555%_
                                 _%rebind?118556%_)
                          (gx#core-bind-alias!__1
                           _%id118554%_
                           _%alias-id118555%_
                           _%rebind?118556%_))
                        _g121545_))
                ((##fx= _g121544_ 4)
                 (apply (lambda (_%id118562%_
                                 _%alias-id118563%_
                                 _%rebind?118564%_
                                 _%phi118565%_)
                          (gx#core-bind-alias!__2
                           _%id118562%_
                           _%alias-id118563%_
                           _%rebind?118564%_
                           _%phi118565%_))
                        _g121545_))
                ((##fx= _g121544_ 5)
                 (apply (lambda (_%id118569%_
                                 _%alias-id118570%_
                                 _%rebind?118571%_
                                 _%phi118572%_
                                 _%ctx118573%_)
                          (gx#core-bind-alias!__%
                           _%id118569%_
                           _%alias-id118570%_
                           _%rebind?118571%_
                           _%phi118572%_
                           _%ctx118573%_))
                        _g121545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g121545_))))))
    (define gx#make-binding-id__%
      (lambda (_%key118484%_ _%syntax?118485%_ _%phi118486%_ _%ctx118487%_)
        (if (uninterned-symbol? _%key118484%_)
            (let () (##gensym 'L))
            (if (pair? _%key118484%_)
                (let () (gensym (car _%key118484%_)))
                (if (##structure-instance-of? _%ctx118487%_ 'gx#top-context::t)
                    (let ()
                      (let ((_%ns118492%_
                             (gx#core-context-namespace__% _%ctx118487%_)))
                        (if (and (fxzero? _%phi118486%_)
                                 (not _%syntax?118485%_))
                            (let ()
                              (if _%ns118492%_
                                  (make-symbol__1
                                   _%ns118492%_
                                   '"#"
                                   _%key118484%_)
                                  _%key118484%_))
                            (if _%syntax?118485%_
                                (let ()
                                  (make-symbol__1
                                   (let ((_%$e118496%_ _%ns118492%_))
                                     (if _%$e118496%_ _%$e118496%_ '""))
                                   '"[:"
                                   (number->string _%phi118486%_)
                                   '":]#"
                                   _%key118484%_))
                                (let ()
                                  (make-symbol__1
                                   (let ((_%$e118500%_ _%ns118492%_))
                                     (if _%$e118500%_ _%$e118500%_ '""))
                                   '"["
                                   (number->string _%phi118486%_)
                                   '"]#"
                                   _%key118484%_))))))
                    (let () (gensym _%key118484%_)))))))
    (define gx#make-binding-id__0
      (lambda (_%key118507%_)
        (let* ((_%syntax?118509%_ '#f)
               (_%phi118511%_ (gx#current-expander-phi))
               (_%ctx118513%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118507%_
           _%syntax?118509%_
           _%phi118511%_
           _%ctx118513%_))))
    (define gx#make-binding-id__1
      (lambda (_%key118515%_ _%syntax?118516%_)
        (let* ((_%phi118518%_ (gx#current-expander-phi))
               (_%ctx118520%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118515%_
           _%syntax?118516%_
           _%phi118518%_
           _%ctx118520%_))))
    (define gx#make-binding-id__2
      (lambda (_%key118522%_ _%syntax?118523%_ _%phi118524%_)
        (let ((_%ctx118526%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118522%_
           _%syntax?118523%_
           _%phi118524%_
           _%ctx118526%_))))
    (define gx#make-binding-id
      (lambda _g121547_
        (let ((_g121546_ (##length _g121547_)))
          (cond ((##fx= _g121546_ 1)
                 (apply (lambda (_%key118507%_)
                          (gx#make-binding-id__0 _%key118507%_))
                        _g121547_))
                ((##fx= _g121546_ 2)
                 (apply (lambda (_%key118515%_ _%syntax?118516%_)
                          (gx#make-binding-id__1
                           _%key118515%_
                           _%syntax?118516%_))
                        _g121547_))
                ((##fx= _g121546_ 3)
                 (apply (lambda (_%key118522%_ _%syntax?118523%_ _%phi118524%_)
                          (gx#make-binding-id__2
                           _%key118522%_
                           _%syntax?118523%_
                           _%phi118524%_))
                        _g121547_))
                ((##fx= _g121546_ 4)
                 (apply (lambda (_%key118528%_
                                 _%syntax?118529%_
                                 _%phi118530%_
                                 _%ctx118531%_)
                          (gx#make-binding-id__%
                           _%key118528%_
                           _%syntax?118529%_
                           _%phi118530%_
                           _%ctx118531%_))
                        _g121547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g121547_))))))))
