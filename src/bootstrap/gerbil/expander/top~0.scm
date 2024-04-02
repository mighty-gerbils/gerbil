(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712084996)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx121387%_)
        (letrec ((_%expand-special121389%_
                  (lambda (_%hd121391%_ _%K121392%_ _%rest121393%_ _%r121394%_)
                    (_%K121392%_
                     _%rest121393%_
                     (cons (gx#core-expand-top _%hd121391%_) _%r121394%_)))))
          (gx#core-expand-block__0 _%stx121387%_ _%expand-special121389%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121140%_)
        (letrec ((_%expand-special121142%_
                  (lambda (_%hd121262%_ _%K121263%_ _%rest121264%_ _%r121265%_)
                    (let* ((_%K121269%_
                            (lambda (_%e121267%_)
                              (_%K121263%_
                               _%rest121264%_
                               (cons _%e121267%_ _%r121265%_))))
                           (_%e121270121299%_ _%hd121262%_)
                           (_%E121294121303%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121270121299%_)))
                           (_%E121290121315%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121270121299%_)
                                  (let ((_%e121295121307%_
                                         (gx#syntax-e _%e121270121299%_)))
                                    (let ((_%hd121296121310%_
                                           (##car _%e121295121307%_))
                                          (_%tl121297121312%_
                                           (##cdr _%e121295121307%_)))
                                      (if (and (gx#identifier?
                                                _%hd121296121310%_)
                                               (gx#core-identifier=?
                                                _%hd121296121310%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121269%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121262%_))
                                              (_%E121294121303%_))
                                          (_%E121294121303%_))))
                                  (_%E121294121303%_))))
                           (_%E121286121327%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121270121299%_)
                                  (let ((_%e121291121319%_
                                         (gx#syntax-e _%e121270121299%_)))
                                    (let ((_%hd121292121322%_
                                           (##car _%e121291121319%_))
                                          (_%tl121293121324%_
                                           (##cdr _%e121291121319%_)))
                                      (if (and (gx#identifier?
                                                _%hd121292121322%_)
                                               (gx#core-identifier=?
                                                _%hd121292121322%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121269%_
                                               (gx#core-expand-define-alias%
                                                _%hd121262%_))
                                              (_%E121290121315%_))
                                          (_%E121290121315%_))))
                                  (_%E121290121315%_))))
                           (_%E121276121339%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121270121299%_)
                                  (let ((_%e121287121331%_
                                         (gx#syntax-e _%e121270121299%_)))
                                    (let ((_%hd121288121334%_
                                           (##car _%e121287121331%_))
                                          (_%tl121289121336%_
                                           (##cdr _%e121287121331%_)))
                                      (if (and (gx#identifier?
                                                _%hd121288121334%_)
                                               (gx#core-identifier=?
                                                _%hd121288121334%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121269%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121262%_))
                                              (_%E121286121327%_))
                                          (_%E121286121327%_))))
                                  (_%E121286121327%_))))
                           (_%E121272121371%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121270121299%_)
                                  (let ((_%e121277121343%_
                                         (gx#syntax-e _%e121270121299%_)))
                                    (let ((_%hd121278121346%_
                                           (##car _%e121277121343%_))
                                          (_%tl121279121348%_
                                           (##cdr _%e121277121343%_)))
                                      (if (and (gx#identifier?
                                                _%hd121278121346%_)
                                               (gx#core-identifier=?
                                                _%hd121278121346%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121279121348%_)
                                              (let ((_%e121280121351%_
                                                     (gx#syntax-e
                                                      _%tl121279121348%_)))
                                                (let ((_%hd121281121354%_
                                                       (##car _%e121280121351%_))
                                                      (_%tl121282121356%_
                                                       (##cdr _%e121280121351%_)))
                                                  (let ((_%hd-bind121359%_
                                                         _%hd121281121354%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121282121356%_)
                                                        (let ((_%e121283121361%_
                                                               (gx#syntax-e
                                                                _%tl121282121356%_)))
                                                          (let ((_%hd121284121364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121283121361%_))
                        (_%tl121285121366%_ (##cdr _%e121283121361%_)))
                    (let ((_%expr121369%_ _%hd121284121364%_))
                      (if (gx#stx-null? _%tl121285121366%_)
                          (if (gx#core-bind-values? _%hd-bind121359%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121359%_)
                                (_%K121269%_ _%hd121262%_))
                              (_%E121276121339%_))
                          (_%E121276121339%_)))))
                (_%E121276121339%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121276121339%_))
                                          (_%E121276121339%_))))
                                  (_%E121276121339%_))))
                           (_%E121271121383%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121270121299%_)
                                  (let ((_%e121273121375%_
                                         (gx#syntax-e _%e121270121299%_)))
                                    (let ((_%hd121274121378%_
                                           (##car _%e121273121375%_))
                                          (_%tl121275121380%_
                                           (##cdr _%e121273121375%_)))
                                      (if (and (gx#identifier?
                                                _%hd121274121378%_)
                                               (gx#core-identifier=?
                                                _%hd121274121378%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121269%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121262%_))
                                              (_%E121272121371%_))
                                          (_%E121272121371%_))))
                                  (_%E121272121371%_)))))
                      (_%E121271121383%_))))
                 (_%eval-body121143%_
                  (lambda (_%rbody121151%_)
                    (let _%lp121153%_ ((_%rest121155%_ _%rbody121151%_)
                                       (_%body121156%_ '())
                                       (_%ebody121157%_ '()))
                      (let* ((_%rest121158121166%_ _%rest121155%_)
                             (_%else121160121174%_
                              (lambda ()
                                (values _%body121156%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121157%_)
                                          (gx#stx-source _%stx121140%_))))))
                             (_%K121162121250%_
                              (lambda (_%rest121177%_ _%hd121178%_)
                                (let* ((_%e121179121196%_ _%hd121178%_)
                                       (_%E121191121200%_
                                        (lambda ()
                                          (_%lp121153%_
                                           _%rest121177%_
                                           (cons _%hd121178%_ _%body121156%_)
                                           (cons _%hd121178%_
                                                 _%ebody121157%_))))
                                       (_%E121181121212%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121179121196%_)
                                              (let ((_%e121192121204%_
                                                     (gx#syntax-e
                                                      _%e121179121196%_)))
                                                (let ((_%hd121193121207%_
                                                       (##car _%e121192121204%_))
                                                      (_%tl121194121209%_
                                                       (##cdr _%e121192121204%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121193121207%_)
                                                           (gx#core-identifier=?
                                                            _%hd121193121207%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121153%_
                                                           _%rest121177%_
                                                           (cons _%hd121178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121156%_)
                   _%ebody121157%_)
                  (_%E121191121200%_))
              (_%E121191121200%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121191121200%_))))
                                       (_%E121180121246%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121179121196%_)
                                              (let ((_%e121182121216%_
                                                     (gx#syntax-e
                                                      _%e121179121196%_)))
                                                (let ((_%hd121183121219%_
                                                       (##car _%e121182121216%_))
                                                      (_%tl121184121221%_
                                                       (##cdr _%e121182121216%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121183121219%_)
                                                           (gx#core-identifier=?
                                                            _%hd121183121219%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121184121221%_)
                                                          (let ((_%e121185121224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121184121221%_)))
                    (let ((_%hd121186121227%_ (##car _%e121185121224%_))
                          (_%tl121187121229%_ (##cdr _%e121185121224%_)))
                      (let ((_%hd-bind121232%_ _%hd121186121227%_))
                        (if (gx#stx-pair? _%tl121187121229%_)
                            (let ((_%e121188121234%_
                                   (gx#syntax-e _%tl121187121229%_)))
                              (let ((_%hd121189121237%_
                                     (##car _%e121188121234%_))
                                    (_%tl121190121239%_
                                     (##cdr _%e121188121234%_)))
                                (let ((_%expr121242%_ _%hd121189121237%_))
                                  (if (gx#stx-null? _%tl121190121239%_)
                                      (if '#t
                                          (let ((_%ehd121244%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121232%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121242%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121178%_))))
                                            (_%lp121153%_
                                             _%rest121177%_
                                             (cons _%ehd121244%_
                                                   _%body121156%_)
                                             (cons _%ehd121244%_
                                                   _%ebody121157%_)))
                                          (_%E121181121212%_))
                                      (_%E121181121212%_)))))
                            (_%E121181121212%_)))))
                  (_%E121181121212%_))
              (_%E121181121212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121181121212%_)))))
                                  (_%E121180121246%_)))))
                        (if (##pair? _%rest121158121166%_)
                            (let ((_%hd121163121253%_
                                   (##car _%rest121158121166%_))
                                  (_%tl121164121255%_
                                   (##cdr _%rest121158121166%_)))
                              (let* ((_%hd121258%_ _%hd121163121253%_)
                                     (_%rest121260%_ _%tl121164121255%_))
                                (_%K121162121250%_
                                 _%rest121260%_
                                 _%hd121258%_)))
                            (_%else121160121174%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121146%_
                     (gx#core-expand-block__1
                      _%stx121140%_
                      _%expand-special121142%_
                      '#f))
                    (_g121410_ (_%eval-body121143%_ _%rbody121146%_)))
               (begin
                 (let ((_g121411_
                        (if (##values? _g121410_)
                            (##vector-length _g121410_)
                            1)))
                   (if (not (##fx= _g121411_ 2))
                       (error "Context expects 2 values" _g121411_)))
                 (let ((_%expanded-body121148%_ (##vector-ref _g121410_ 0))
                       (_%value121149%_ (##vector-ref _g121410_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121148%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121149%_ '())))
                    (gx#stx-source _%stx121140%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121110%_)
        (let* ((_%e121111121118%_ _%stx121110%_)
               (_%E121113121122%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121111121118%_)))
               (_%E121112121136%_
                (lambda ()
                  (if (gx#stx-pair? _%e121111121118%_)
                      (let ((_%e121114121126%_
                             (gx#syntax-e _%e121111121118%_)))
                        (let ((_%hd121115121129%_ (##car _%e121114121126%_))
                              (_%tl121116121131%_ (##cdr _%e121114121126%_)))
                          (let ((_%body121134%_ _%tl121116121131%_))
                            (if (gx#stx-list? _%body121134%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121134%_)
                                 (gx#stx-source _%stx121110%_))
                                (_%E121113121122%_)))))
                      (_%E121113121122%_)))))
          (_%E121112121136%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121108%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121108%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121054%_)
        (let* ((_%e121055121068%_ _%stx121054%_)
               (_%E121057121072%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121055121068%_)))
               (_%E121056121104%_
                (lambda ()
                  (if (gx#stx-pair? _%e121055121068%_)
                      (let ((_%e121058121076%_
                             (gx#syntax-e _%e121055121068%_)))
                        (let ((_%hd121059121079%_ (##car _%e121058121076%_))
                              (_%tl121060121081%_ (##cdr _%e121058121076%_)))
                          (if (gx#stx-pair? _%tl121060121081%_)
                              (let ((_%e121061121084%_
                                     (gx#syntax-e _%tl121060121081%_)))
                                (let ((_%hd121062121087%_
                                       (##car _%e121061121084%_))
                                      (_%tl121063121089%_
                                       (##cdr _%e121061121084%_)))
                                  (let ((_%ann121092%_ _%hd121062121087%_))
                                    (if (gx#stx-pair? _%tl121063121089%_)
                                        (let ((_%e121064121094%_
                                               (gx#syntax-e
                                                _%tl121063121089%_)))
                                          (let ((_%hd121065121097%_
                                                 (##car _%e121064121094%_))
                                                (_%tl121066121099%_
                                                 (##cdr _%e121064121094%_)))
                                            (let ((_%expr121102%_
                                                   _%hd121065121097%_))
                                              (if (gx#stx-null?
                                                   _%tl121066121099%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121102%_)
                                 '())))
               (gx#stx-source _%stx121054%_))
              (_%E121057121072%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121057121072%_)))))
                                        (_%E121057121072%_)))))
                              (_%E121057121072%_))))
                      (_%E121057121072%_)))))
          (_%E121056121104%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx120778%_ _%body120779%_)
        (letrec ((_%expand-special120781%_
                  (lambda (_%hd121049%_ _%K121050%_ _%rest121051%_ _%r121052%_)
                    (_%K121050%_
                     '()
                     (cons (_%expand-internal120782%_
                            _%hd121049%_
                            _%rest121051%_)
                           _%r121052%_))))
                 (_%expand-internal120782%_
                  (lambda (_%hd121045%_ _%rest121046%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal120784%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121045%_ _%rest121046%_))
                          (gx#stx-source _%stx120778%_))
                         _%expand-internal-special120783%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj121404
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj121404)
                       __obj121404))))
                 (_%expand-internal-special120783%_
                  (lambda (_%hd120940%_ _%K120941%_ _%rest120942%_ _%r120943%_)
                    (let* ((_%e120944120969%_ _%hd120940%_)
                           (_%E120964120973%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120944120969%_)))
                           (_%E120960120985%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120944120969%_)
                                  (let ((_%e120965120977%_
                                         (gx#syntax-e _%e120944120969%_)))
                                    (let ((_%hd120966120980%_
                                           (##car _%e120965120977%_))
                                          (_%tl120967120982%_
                                           (##cdr _%e120965120977%_)))
                                      (if (and (gx#identifier?
                                                _%hd120966120980%_)
                                               (gx#core-identifier=?
                                                _%hd120966120980%_
                                                '%#declare))
                                          (if '#t
                                              (_%K120941%_
                                               _%rest120942%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd120940%_)
                                                     _%r120943%_))
                                              (_%E120964120973%_))
                                          (_%E120964120973%_))))
                                  (_%E120964120973%_))))
                           (_%E120956120997%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120944120969%_)
                                  (let ((_%e120961120989%_
                                         (gx#syntax-e _%e120944120969%_)))
                                    (let ((_%hd120962120992%_
                                           (##car _%e120961120989%_))
                                          (_%tl120963120994%_
                                           (##cdr _%e120961120989%_)))
                                      (if (and (gx#identifier?
                                                _%hd120962120992%_)
                                               (gx#core-identifier=?
                                                _%hd120962120992%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd120940%_)
                                                (_%K120941%_
                                                 _%rest120942%_
                                                 _%r120943%_))
                                              (_%E120960120985%_))
                                          (_%E120960120985%_))))
                                  (_%E120960120985%_))))
                           (_%E120946121009%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120944120969%_)
                                  (let ((_%e120957121001%_
                                         (gx#syntax-e _%e120944120969%_)))
                                    (let ((_%hd120958121004%_
                                           (##car _%e120957121001%_))
                                          (_%tl120959121006%_
                                           (##cdr _%e120957121001%_)))
                                      (if (and (gx#identifier?
                                                _%hd120958121004%_)
                                               (gx#core-identifier=?
                                                _%hd120958121004%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd120940%_)
                                                (_%K120941%_
                                                 _%rest120942%_
                                                 _%r120943%_))
                                              (_%E120956120997%_))
                                          (_%E120956120997%_))))
                                  (_%E120956120997%_))))
                           (_%E120945121041%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120944120969%_)
                                  (let ((_%e120947121013%_
                                         (gx#syntax-e _%e120944120969%_)))
                                    (let ((_%hd120948121016%_
                                           (##car _%e120947121013%_))
                                          (_%tl120949121018%_
                                           (##cdr _%e120947121013%_)))
                                      (if (and (gx#identifier?
                                                _%hd120948121016%_)
                                               (gx#core-identifier=?
                                                _%hd120948121016%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl120949121018%_)
                                              (let ((_%e120950121021%_
                                                     (gx#syntax-e
                                                      _%tl120949121018%_)))
                                                (let ((_%hd120951121024%_
                                                       (##car _%e120950121021%_))
                                                      (_%tl120952121026%_
                                                       (##cdr _%e120950121021%_)))
                                                  (let ((_%hd-bind121029%_
                                                         _%hd120951121024%_))
                                                    (if (gx#stx-pair?
                                                         _%tl120952121026%_)
                                                        (let ((_%e120953121031%_
                                                               (gx#syntax-e
                                                                _%tl120952121026%_)))
                                                          (let ((_%hd120954121034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e120953121031%_))
                        (_%tl120955121036%_ (##cdr _%e120953121031%_)))
                    (let ((_%expr121039%_ _%hd120954121034%_))
                      (if (gx#stx-null? _%tl120955121036%_)
                          (if (gx#core-bind-values? _%hd-bind121029%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121029%_)
                                (_%K120941%_
                                 _%rest120942%_
                                 (cons _%hd120940%_ _%r120943%_)))
                              (_%E120946121009%_))
                          (_%E120946121009%_)))))
                (_%E120946121009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E120946121009%_))
                                          (_%E120946121009%_))))
                                  (_%E120946121009%_)))))
                      (_%E120945121041%_))))
                 (_%wrap-internal120784%_
                  (lambda (_%rbody120786%_)
                    (let _%lp120788%_ ((_%rest120790%_ _%rbody120786%_)
                                       (_%decls120791%_ '())
                                       (_%bind120792%_ '())
                                       (_%body120793%_ '()))
                      (let* ((_%e120794120801%_ _%rest120790%_)
                             (_%E120796120850%_
                              (lambda ()
                                (let* ((_%body120845%_
                                        (let* ((_%body120804120814%_
                                                _%body120793%_)
                                               (_%else120807120822%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body120793%_)
                                                   (gx#stx-source
                                                    _%stx120778%_)))))
                                          (let ((_%K120812120842%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx120778%_)))
                                                (_%K120809120828%_
                                                 (lambda (_%expr120826%_)
                                                   _%expr120826%_)))
                                            (let ((_%try-match120806120838%_
                                                   (lambda ()
                                                     (if (##pair? _%body120804120814%_)
                                                         (let ((_%tl120811120833%_
                                                                (##cdr _%body120804120814%_))
                                                               (_%hd120810120831%_
                                                                (##car _%body120804120814%_)))
                                                           (if (##null? _%tl120811120833%_)
                                                               (let ((_%expr120836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120810120831%_))
                         (_%K120809120828%_ _%expr120836%_))
                       (_%else120807120822%_)))
                 (_%else120807120822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body120804120814%_)
                                                  (_%K120812120842%_)
                                                  (_%try-match120806120838%_))))))
                                       (_%body120847%_
                                        (if (null? _%bind120792%_)
                                            _%body120845%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind120792%_
                                                         (cons _%body120845%_
                                                               '())))
                                             (gx#stx-source _%stx120778%_)))))
                                  (if (null? _%decls120791%_)
                                      _%body120847%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls120791%_
                                                   (cons _%body120847%_ '())))
                                       (gx#stx-source _%stx120778%_))))))
                             (_%E120795120936%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120794120801%_)
                                    (let ((_%e120797120854%_
                                           (gx#syntax-e _%e120794120801%_)))
                                      (let ((_%hd120798120857%_
                                             (##car _%e120797120854%_))
                                            (_%tl120799120859%_
                                             (##cdr _%e120797120854%_)))
                                        (let* ((_%hd120862%_
                                                _%hd120798120857%_)
                                               (_%rest120864%_
                                                _%tl120799120859%_))
                                          (if '#t
                                              (let* ((_%e120865120882%_
                                                      _%hd120862%_)
                                                     (_%E120877120886%_
                                                      (lambda ()
                                                        (if (null? _%bind120792%_)
                                                            (_%lp120788%_
                                                             _%rest120864%_
                                                             _%decls120791%_
                                                             _%bind120792%_
                                                             (cons _%hd120862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body120793%_))
                    (_%lp120788%_
                     _%rest120864%_
                     _%decls120791%_
                     (cons (cons '#f (cons _%hd120862%_ '())) _%bind120792%_)
                     _%body120793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E120867120900%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e120865120882%_)
                                                            (let ((_%e120878120890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e120865120882%_)))
                      (let ((_%hd120879120893%_ (##car _%e120878120890%_))
                            (_%tl120880120895%_ (##cdr _%e120878120890%_)))
                        (if (and (gx#identifier? _%hd120879120893%_)
                                 (gx#core-identifier=?
                                  _%hd120879120893%_
                                  '%#declare))
                            (let ((_%xdecls120898%_ _%tl120880120895%_))
                              (if '#t
                                  (_%lp120788%_
                                   _%rest120864%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls120791%_
                                    _%xdecls120898%_)
                                   _%bind120792%_
                                   _%body120793%_)
                                  (_%E120877120886%_)))
                            (_%E120877120886%_))))
                    (_%E120877120886%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E120866120932%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e120865120882%_)
                                                            (let ((_%e120868120904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e120865120882%_)))
                      (let ((_%hd120869120907%_ (##car _%e120868120904%_))
                            (_%tl120870120909%_ (##cdr _%e120868120904%_)))
                        (if (and (gx#identifier? _%hd120869120907%_)
                                 (gx#core-identifier=?
                                  _%hd120869120907%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl120870120909%_)
                                (let ((_%e120871120912%_
                                       (gx#syntax-e _%tl120870120909%_)))
                                  (let ((_%hd120872120915%_
                                         (##car _%e120871120912%_))
                                        (_%tl120873120917%_
                                         (##cdr _%e120871120912%_)))
                                    (let ((_%hd-bind120920%_
                                           _%hd120872120915%_))
                                      (if (gx#stx-pair? _%tl120873120917%_)
                                          (let ((_%e120874120922%_
                                                 (gx#syntax-e
                                                  _%tl120873120917%_)))
                                            (let ((_%hd120875120925%_
                                                   (##car _%e120874120922%_))
                                                  (_%tl120876120927%_
                                                   (##cdr _%e120874120922%_)))
                                              (let ((_%expr120930%_
                                                     _%hd120875120925%_))
                                                (if (gx#stx-null?
                                                     _%tl120876120927%_)
                                                    (if '#t
                                                        (_%lp120788%_
                                                         _%rest120864%_
                                                         _%decls120791%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind120920%_)
                             (cons (gx#core-expand-expression _%expr120930%_)
                                   '()))
                       _%bind120792%_)
                 _%body120793%_)
                (_%E120867120900%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120867120900%_)))))
                                          (_%E120867120900%_)))))
                                (_%E120867120900%_))
                            (_%E120867120900%_))))
                    (_%E120867120900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120866120932%_))
                                              (_%E120796120850%_)))))
                                    (_%E120796120850%_)))))
                        (_%E120795120936%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body120779%_)
            (gx#stx-source _%stx120778%_))
           _%expand-special120781%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx120716%_)
        (let* ((_%e120717120724%_ _%stx120716%_)
               (_%E120719120728%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120717120724%_)))
               (_%E120718120774%_
                (lambda ()
                  (if (gx#stx-pair? _%e120717120724%_)
                      (let ((_%e120720120732%_
                             (gx#syntax-e _%e120717120724%_)))
                        (let ((_%hd120721120735%_ (##car _%e120720120732%_))
                              (_%tl120722120737%_ (##cdr _%e120720120732%_)))
                          (let ((_%body120740%_ _%tl120722120737%_))
                            (if (gx#stx-list? _%body120740%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl120742%_)
                                     (let* ((_%e120743120750%_ _%decl120742%_)
                                            (_%E120745120754%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e120743120750%_)))
                                            (_%E120744120770%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e120743120750%_)
                                                   (let ((_%e120746120758%_
                                                          (gx#syntax-e
                                                           _%e120743120750%_)))
                                                     (let ((_%hd120747120761%_
                                                            (##car _%e120746120758%_))
                                                           (_%tl120748120763%_
                                                            (##cdr _%e120746120758%_)))
                                                       (let* ((_%head120766%_
                                                               _%hd120747120761%_)
                                                              (_%args120768%_
                                                               _%tl120748120763%_))
                                                         (if (gx#stx-list?
                                                              _%args120768%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl120742%_)
                                                             (_%E120745120754%_)))))
                                                   (_%E120745120754%_)))))
                                       (_%E120744120770%_)))
                                   _%body120740%_))
                                 (gx#stx-source _%stx120716%_))
                                (_%E120719120728%_)))))
                      (_%E120719120728%_)))))
          (_%E120718120774%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx120620%_)
        (let* ((_%e120621120628%_ _%stx120620%_)
               (_%E120623120632%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120621120628%_)))
               (_%E120622120712%_
                (lambda ()
                  (if (gx#stx-pair? _%e120621120628%_)
                      (let ((_%e120624120636%_
                             (gx#syntax-e _%e120621120628%_)))
                        (let ((_%hd120625120639%_ (##car _%e120624120636%_))
                              (_%tl120626120641%_ (##cdr _%e120624120636%_)))
                          (let ((_%body120644%_ _%tl120626120641%_))
                            (if '#t
                                (let _%lp120646%_ ((_%rest120648%_
                                                    _%body120644%_)
                                                   (_%r120649%_ '()))
                                  (let* ((_%e120650120664%_ _%rest120648%_)
                                         (_%E120662120668%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx120620%_)))
                                         (_%E120652120672%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e120650120664%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r120649%_))
                                                     (gx#stx-source
                                                      _%stx120620%_))
                                                    (_%E120662120668%_))
                                                (_%E120662120668%_))))
                                         (_%E120651120708%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e120650120664%_)
                                                (let ((_%e120653120676%_
                                                       (gx#syntax-e
                                                        _%e120650120664%_)))
                                                  (let ((_%hd120654120679%_
                                                         (##car _%e120653120676%_))
                                                        (_%tl120655120681%_
                                                         (##cdr _%e120653120676%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd120654120679%_)
                                                        (let ((_%e120656120684%_
                                                               (gx#syntax-e
                                                                _%hd120654120679%_)))
                                                          (let ((_%hd120657120687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e120656120684%_))
                        (_%tl120658120689%_ (##cdr _%e120656120684%_)))
                    (let ((_%id120692%_ _%hd120657120687%_))
                      (if (gx#stx-pair? _%tl120658120689%_)
                          (let ((_%e120659120694%_
                                 (gx#syntax-e _%tl120658120689%_)))
                            (let ((_%hd120660120697%_
                                   (##car _%e120659120694%_))
                                  (_%tl120661120699%_
                                   (##cdr _%e120659120694%_)))
                              (let ((_%eid120702%_ _%hd120660120697%_))
                                (if (gx#stx-null? _%tl120661120699%_)
                                    (let ((_%rest120704%_ _%tl120655120681%_))
                                      (if (and (gx#identifier? _%id120692%_)
                                               (gx#identifier? _%eid120702%_))
                                          (let ((_%eid120706%_
                                                 (gx#stx-e _%eid120702%_)))
                                            (gx#core-bind-extern!__0
                                             _%id120692%_
                                             _%eid120706%_)
                                            (_%lp120646%_
                                             _%rest120704%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id120692%_)
                                                         (cons _%eid120706%_
                                                               '()))
                                                   _%r120649%_)))
                                          (_%E120652120672%_)))
                                    (_%E120652120672%_)))))
                          (_%E120652120672%_)))))
                (_%E120652120672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120652120672%_)))))
                                    (_%E120651120708%_)))
                                (_%E120623120632%_)))))
                      (_%E120623120632%_)))))
          (_%E120622120712%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx120566%_)
        (let* ((_%e120567120580%_ _%stx120566%_)
               (_%E120569120584%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120567120580%_)))
               (_%E120568120616%_
                (lambda ()
                  (if (gx#stx-pair? _%e120567120580%_)
                      (let ((_%e120570120588%_
                             (gx#syntax-e _%e120567120580%_)))
                        (let ((_%hd120571120591%_ (##car _%e120570120588%_))
                              (_%tl120572120593%_ (##cdr _%e120570120588%_)))
                          (if (gx#stx-pair? _%tl120572120593%_)
                              (let ((_%e120573120596%_
                                     (gx#syntax-e _%tl120572120593%_)))
                                (let ((_%hd120574120599%_
                                       (##car _%e120573120596%_))
                                      (_%tl120575120601%_
                                       (##cdr _%e120573120596%_)))
                                  (let ((_%hd120604%_ _%hd120574120599%_))
                                    (if (gx#stx-pair? _%tl120575120601%_)
                                        (let ((_%e120576120606%_
                                               (gx#syntax-e
                                                _%tl120575120601%_)))
                                          (let ((_%hd120577120609%_
                                                 (##car _%e120576120606%_))
                                                (_%tl120578120611%_
                                                 (##cdr _%e120576120606%_)))
                                            (let ((_%expr120614%_
                                                   _%hd120577120609%_))
                                              (if (gx#stx-null?
                                                   _%tl120578120611%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd120604%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd120604%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120604%_)
                             (cons (gx#core-expand-expression _%expr120614%_)
                                   '())))
                 (gx#stx-source _%stx120566%_)))
              (_%E120569120584%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120569120584%_)))))
                                        (_%E120569120584%_)))))
                              (_%E120569120584%_))))
                      (_%E120569120584%_)))))
          (_%E120568120616%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx120510%_)
        (let* ((_%e120511120524%_ _%stx120510%_)
               (_%E120513120528%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120511120524%_)))
               (_%E120512120562%_
                (lambda ()
                  (if (gx#stx-pair? _%e120511120524%_)
                      (let ((_%e120514120532%_
                             (gx#syntax-e _%e120511120524%_)))
                        (let ((_%hd120515120535%_ (##car _%e120514120532%_))
                              (_%tl120516120537%_ (##cdr _%e120514120532%_)))
                          (if (gx#stx-pair? _%tl120516120537%_)
                              (let ((_%e120517120540%_
                                     (gx#syntax-e _%tl120516120537%_)))
                                (let ((_%hd120518120543%_
                                       (##car _%e120517120540%_))
                                      (_%tl120519120545%_
                                       (##cdr _%e120517120540%_)))
                                  (let ((_%id120548%_ _%hd120518120543%_))
                                    (if (gx#stx-pair? _%tl120519120545%_)
                                        (let ((_%e120520120550%_
                                               (gx#syntax-e
                                                _%tl120519120545%_)))
                                          (let ((_%hd120521120553%_
                                                 (##car _%e120520120550%_))
                                                (_%tl120522120555%_
                                                 (##cdr _%e120520120550%_)))
                                            (let ((_%binding-id120558%_
                                                   _%hd120521120553%_))
                                              (if (gx#stx-null?
                                                   _%tl120522120555%_)
                                                  (if (and (gx#identifier?
                                                            _%id120548%_)
                                                           (gx#identifier?
                                                            _%binding-id120558%_))
                                                      (let ((_%eid120560%_
                                                             (gx#stx-e
                                                              _%binding-id120558%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id120548%_
                                                         _%eid120560%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120548%_)
                             (cons _%eid120560%_ '())))))
              (_%E120513120528%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120513120528%_)))))
                                        (_%E120513120528%_)))))
                              (_%E120513120528%_))))
                      (_%E120513120528%_)))))
          (_%E120512120562%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx120453%_)
        (let* ((_%e120454120467%_ _%stx120453%_)
               (_%E120456120471%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120454120467%_)))
               (_%E120455120506%_
                (lambda ()
                  (if (gx#stx-pair? _%e120454120467%_)
                      (let ((_%e120457120475%_
                             (gx#syntax-e _%e120454120467%_)))
                        (let ((_%hd120458120478%_ (##car _%e120457120475%_))
                              (_%tl120459120480%_ (##cdr _%e120457120475%_)))
                          (if (gx#stx-pair? _%tl120459120480%_)
                              (let ((_%e120460120483%_
                                     (gx#syntax-e _%tl120459120480%_)))
                                (let ((_%hd120461120486%_
                                       (##car _%e120460120483%_))
                                      (_%tl120462120488%_
                                       (##cdr _%e120460120483%_)))
                                  (let ((_%id120491%_ _%hd120461120486%_))
                                    (if (gx#stx-pair? _%tl120462120488%_)
                                        (let ((_%e120463120493%_
                                               (gx#syntax-e
                                                _%tl120462120488%_)))
                                          (let ((_%hd120464120496%_
                                                 (##car _%e120463120493%_))
                                                (_%tl120465120498%_
                                                 (##cdr _%e120463120493%_)))
                                            (let ((_%expr120501%_
                                                   _%hd120464120496%_))
                                              (if (gx#stx-null?
                                                   _%tl120465120498%_)
                                                  (if (gx#identifier?
                                                       _%id120491%_)
                                                      (let ((_g121412_
                                                             (gx#core-expand-expression+1
                                                              _%expr120501%_)))
                                                        (begin
                                                          (let ((_g121413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g121412_)
                             (##vector-length _g121412_)
                             1)))
                    (if (not (##fx= _g121413_ 2))
                        (error "Context expects 2 values" _g121413_)))
                  (let ((_%e-stx120503%_ (##vector-ref _g121412_ 0))
                        (_%e120504%_ (##vector-ref _g121412_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id120491%_ _%e120504%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id120491%_)
                                   (cons _%e-stx120503%_ '())))
                       (gx#stx-source _%stx120453%_))))))
              (_%E120456120471%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120456120471%_)))))
                                        (_%E120456120471%_)))))
                              (_%E120456120471%_))))
                      (_%E120456120471%_)))))
          (_%E120455120506%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx120397%_)
        (let* ((_%e120398120411%_ _%stx120397%_)
               (_%E120400120415%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120398120411%_)))
               (_%E120399120449%_
                (lambda ()
                  (if (gx#stx-pair? _%e120398120411%_)
                      (let ((_%e120401120419%_
                             (gx#syntax-e _%e120398120411%_)))
                        (let ((_%hd120402120422%_ (##car _%e120401120419%_))
                              (_%tl120403120424%_ (##cdr _%e120401120419%_)))
                          (if (gx#stx-pair? _%tl120403120424%_)
                              (let ((_%e120404120427%_
                                     (gx#syntax-e _%tl120403120424%_)))
                                (let ((_%hd120405120430%_
                                       (##car _%e120404120427%_))
                                      (_%tl120406120432%_
                                       (##cdr _%e120404120427%_)))
                                  (let ((_%id120435%_ _%hd120405120430%_))
                                    (if (gx#stx-pair? _%tl120406120432%_)
                                        (let ((_%e120407120437%_
                                               (gx#syntax-e
                                                _%tl120406120432%_)))
                                          (let ((_%hd120408120440%_
                                                 (##car _%e120407120437%_))
                                                (_%tl120409120442%_
                                                 (##cdr _%e120407120437%_)))
                                            (let ((_%alias-id120445%_
                                                   _%hd120408120440%_))
                                              (if (gx#stx-null?
                                                   _%tl120409120442%_)
                                                  (if (and (gx#identifier?
                                                            _%id120435%_)
                                                           (gx#identifier?
                                                            _%alias-id120445%_))
                                                      (let ((_%alias-id120447%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id120445%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id120435%_
                                                         _%alias-id120447%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120435%_)
                             (cons _%alias-id120447%_ '())))))
              (_%E120400120415%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120400120415%_)))))
                                        (_%E120400120415%_)))))
                              (_%E120400120415%_))))
                      (_%E120400120415%_)))))
          (_%E120399120449%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx120340%_ _%wrap?120341%_)
        (let* ((_%e120342120352%_ _%stx120340%_)
               (_%E120344120356%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120342120352%_)))
               (_%E120343120383%_
                (lambda ()
                  (if (gx#stx-pair? _%e120342120352%_)
                      (let ((_%e120345120360%_
                             (gx#syntax-e _%e120342120352%_)))
                        (let ((_%hd120346120363%_ (##car _%e120345120360%_))
                              (_%tl120347120365%_ (##cdr _%e120345120360%_)))
                          (if (gx#stx-pair? _%tl120347120365%_)
                              (let ((_%e120348120368%_
                                     (gx#syntax-e _%tl120347120365%_)))
                                (let ((_%hd120349120371%_
                                       (##car _%e120348120368%_))
                                      (_%tl120350120373%_
                                       (##cdr _%e120348120368%_)))
                                  (let* ((_%hd120376%_ _%hd120349120371%_)
                                         (_%body120378%_ _%tl120350120373%_))
                                    (if (gx#core-bind-values? _%hd120376%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd120376%_)
                                           (let ((_%body120381%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd120376%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120340%_
                                                               _%body120378%_)
                                                              '()))))
                                             (if _%wrap?120341%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body120381%_)
                                                  (gx#stx-source
                                                   _%stx120340%_))
                                                 _%body120381%_)))
                                         gx#current-expander-context
                                         (let ((__obj121405
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121405)
                                           __obj121405))
                                        (_%E120344120356%_)))))
                              (_%E120344120356%_))))
                      (_%E120344120356%_)))))
          (_%E120343120383%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx120390%_)
        (let ((_%wrap?120392%_ '#t))
          (gx#core-expand-lambda%__% _%stx120390%_ _%wrap?120392%_))))
    (define gx#core-expand-lambda%
      (lambda _g121415_
        (let ((_g121414_ (##length _g121415_)))
          (cond ((##fx= _g121414_ 1)
                 (apply (lambda (_%stx120390%_)
                          (gx#core-expand-lambda%__0 _%stx120390%_))
                        _g121415_))
                ((##fx= _g121414_ 2)
                 (apply (lambda (_%stx120394%_ _%wrap?120395%_)
                          (gx#core-expand-lambda%__%
                           _%stx120394%_
                           _%wrap?120395%_))
                        _g121415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g121415_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx120304%_)
        (let* ((_%e120305120312%_ _%stx120304%_)
               (_%E120307120316%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120305120312%_)))
               (_%E120306120335%_
                (lambda ()
                  (if (gx#stx-pair? _%e120305120312%_)
                      (let ((_%e120308120320%_
                             (gx#syntax-e _%e120305120312%_)))
                        (let ((_%hd120309120323%_ (##car _%e120308120320%_))
                              (_%tl120310120325%_ (##cdr _%e120308120320%_)))
                          (let ((_%clauses120328%_ _%tl120310120325%_))
                            (if (gx#stx-list? _%clauses120328%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause120330%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause120330%_)
                                       (let ((_%$e120332%_
                                              (gx#stx-source
                                               _%clause120330%_)))
                                         (if _%$e120332%_
                                             _%$e120332%_
                                             (gx#stx-source _%stx120304%_))))
                                      '#f))
                                   _%clauses120328%_))
                                 (gx#stx-source _%stx120304%_))
                                (_%E120307120316%_)))))
                      (_%E120307120316%_)))))
          (_%E120306120335%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120258%_)
        (let* ((_%e120259120269%_ _%stx120258%_)
               (_%E120261120273%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120259120269%_)))
               (_%E120260120300%_
                (lambda ()
                  (if (gx#stx-pair? _%e120259120269%_)
                      (let ((_%e120262120277%_
                             (gx#syntax-e _%e120259120269%_)))
                        (let ((_%hd120263120280%_ (##car _%e120262120277%_))
                              (_%tl120264120282%_ (##cdr _%e120262120277%_)))
                          (if (gx#stx-pair? _%tl120264120282%_)
                              (let ((_%e120265120285%_
                                     (gx#syntax-e _%tl120264120282%_)))
                                (let ((_%hd120266120288%_
                                       (##car _%e120265120285%_))
                                      (_%tl120267120290%_
                                       (##cdr _%e120265120285%_)))
                                  (let* ((_%hd120293%_ _%hd120266120288%_)
                                         (_%body120295%_ _%tl120267120290%_))
                                    (if (gx#core-expand-let-bind? _%hd120293%_)
                                        (let ((_%expressions120297%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd120293%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd120293%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd120293%_
                                                           _%expressions120297%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120258%_
                         _%body120295%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120258%_)))
                                           gx#current-expander-context
                                           (let ((__obj121406
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121406)
                                             __obj121406)))
                                        (_%E120261120273%_)))))
                              (_%E120261120273%_))))
                      (_%E120261120273%_)))))
          (_%E120260120300%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120203%_ _%form120204%_)
        (let* ((_%e120205120215%_ _%stx120203%_)
               (_%E120207120219%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120205120215%_)))
               (_%E120206120244%_
                (lambda ()
                  (if (gx#stx-pair? _%e120205120215%_)
                      (let ((_%e120208120223%_
                             (gx#syntax-e _%e120205120215%_)))
                        (let ((_%hd120209120226%_ (##car _%e120208120223%_))
                              (_%tl120210120228%_ (##cdr _%e120208120223%_)))
                          (if (gx#stx-pair? _%tl120210120228%_)
                              (let ((_%e120211120231%_
                                     (gx#syntax-e _%tl120210120228%_)))
                                (let ((_%hd120212120234%_
                                       (##car _%e120211120231%_))
                                      (_%tl120213120236%_
                                       (##cdr _%e120211120231%_)))
                                  (let* ((_%hd120239%_ _%hd120212120234%_)
                                         (_%body120241%_ _%tl120213120236%_))
                                    (if (gx#core-expand-let-bind? _%hd120239%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120239%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120204%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120239%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120239%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120203%_
                                                               _%body120241%_)
                                                              '())))
                                            (gx#stx-source _%stx120203%_)))
                                         gx#current-expander-context
                                         (let ((__obj121407
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121407)
                                           __obj121407))
                                        (_%E120207120219%_)))))
                              (_%E120207120219%_))))
                      (_%E120207120219%_)))))
          (_%E120206120244%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120251%_)
        (let ((_%form120253%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120251%_ _%form120253%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g121417_
        (let ((_g121416_ (##length _g121417_)))
          (cond ((##fx= _g121416_ 1)
                 (apply (lambda (_%stx120251%_)
                          (gx#core-expand-letrec-values%__0 _%stx120251%_))
                        _g121417_))
                ((##fx= _g121416_ 2)
                 (apply (lambda (_%stx120255%_ _%form120256%_)
                          (gx#core-expand-letrec-values%__%
                           _%stx120255%_
                           _%form120256%_))
                        _g121417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g121417_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120200%_)
        (gx#core-expand-letrec-values%__% _%stx120200%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120157%_)
        (if (gx#stx-list? _%stx120157%_)
            (gx#stx-andmap
             (lambda (_%bind120159%_)
               (let* ((_%e120160120170%_ _%bind120159%_)
                      (_%E120162120174%_ (lambda () '#f))
                      (_%E120161120196%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120160120170%_)
                             (let ((_%e120163120178%_
                                    (gx#syntax-e _%e120160120170%_)))
                               (let ((_%hd120164120181%_
                                      (##car _%e120163120178%_))
                                     (_%tl120165120183%_
                                      (##cdr _%e120163120178%_)))
                                 (let ((_%hd120186%_ _%hd120164120181%_))
                                   (if (gx#stx-pair? _%tl120165120183%_)
                                       (let ((_%e120166120188%_
                                              (gx#syntax-e
                                               _%tl120165120183%_)))
                                         (let ((_%hd120167120191%_
                                                (##car _%e120166120188%_))
                                               (_%tl120168120193%_
                                                (##cdr _%e120166120188%_)))
                                           (if (gx#stx-null?
                                                _%tl120168120193%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120186%_)
                                                   (_%E120162120174%_))
                                               (_%E120162120174%_))))
                                       (_%E120162120174%_)))))
                             (_%E120162120174%_)))))
                 (_%E120161120196%_)))
             _%stx120157%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120116%_)
        (let* ((_%e120117120127%_ _%bind120116%_)
               (_%E120119120131%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120117120127%_)))
               (_%E120118120153%_
                (lambda ()
                  (if (gx#stx-pair? _%e120117120127%_)
                      (let ((_%e120120120135%_
                             (gx#syntax-e _%e120117120127%_)))
                        (let ((_%hd120121120138%_ (##car _%e120120120135%_))
                              (_%tl120122120140%_ (##cdr _%e120120120135%_)))
                          (if (gx#stx-pair? _%tl120122120140%_)
                              (let ((_%e120123120143%_
                                     (gx#syntax-e _%tl120122120140%_)))
                                (let ((_%hd120124120146%_
                                       (##car _%e120123120143%_))
                                      (_%tl120125120148%_
                                       (##cdr _%e120123120143%_)))
                                  (let ((_%expr120151%_ _%hd120124120146%_))
                                    (if (gx#stx-null? _%tl120125120148%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120151%_)
                                            (_%E120119120131%_))
                                        (_%E120119120131%_)))))
                              (_%E120119120131%_))))
                      (_%E120119120131%_)))))
          (_%E120118120153%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120075%_)
        (let* ((_%e120076120086%_ _%bind120075%_)
               (_%E120078120090%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120076120086%_)))
               (_%E120077120112%_
                (lambda ()
                  (if (gx#stx-pair? _%e120076120086%_)
                      (let ((_%e120079120094%_
                             (gx#syntax-e _%e120076120086%_)))
                        (let ((_%hd120080120097%_ (##car _%e120079120094%_))
                              (_%tl120081120099%_ (##cdr _%e120079120094%_)))
                          (let ((_%hd120102%_ _%hd120080120097%_))
                            (if (gx#stx-pair? _%tl120081120099%_)
                                (let ((_%e120082120104%_
                                       (gx#syntax-e _%tl120081120099%_)))
                                  (let ((_%hd120083120107%_
                                         (##car _%e120082120104%_))
                                        (_%tl120084120109%_
                                         (##cdr _%e120082120104%_)))
                                    (if (gx#stx-null? _%tl120084120109%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120102%_)
                                            (_%E120078120090%_))
                                        (_%E120078120090%_))))
                                (_%E120078120090%_)))))
                      (_%E120078120090%_)))))
          (_%E120077120112%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120033%_ _%expr120034%_)
        (let* ((_%e120035120045%_ _%bind120033%_)
               (_%E120037120049%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120035120045%_)))
               (_%E120036120071%_
                (lambda ()
                  (if (gx#stx-pair? _%e120035120045%_)
                      (let ((_%e120038120053%_
                             (gx#syntax-e _%e120035120045%_)))
                        (let ((_%hd120039120056%_ (##car _%e120038120053%_))
                              (_%tl120040120058%_ (##cdr _%e120038120053%_)))
                          (let ((_%hd120061%_ _%hd120039120056%_))
                            (if (gx#stx-pair? _%tl120040120058%_)
                                (let ((_%e120041120063%_
                                       (gx#syntax-e _%tl120040120058%_)))
                                  (let ((_%hd120042120066%_
                                         (##car _%e120041120063%_))
                                        (_%tl120043120068%_
                                         (##cdr _%e120041120063%_)))
                                    (if (gx#stx-null? _%tl120043120068%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120061%_)
                                                  (cons _%expr120034%_ '()))
                                            (_%E120037120049%_))
                                        (_%E120037120049%_))))
                                (_%E120037120049%_)))))
                      (_%E120037120049%_)))))
          (_%E120036120071%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx119987%_)
        (let* ((_%e119988119998%_ _%stx119987%_)
               (_%E119990120002%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119988119998%_)))
               (_%E119989120029%_
                (lambda ()
                  (if (gx#stx-pair? _%e119988119998%_)
                      (let ((_%e119991120006%_
                             (gx#syntax-e _%e119988119998%_)))
                        (let ((_%hd119992120009%_ (##car _%e119991120006%_))
                              (_%tl119993120011%_ (##cdr _%e119991120006%_)))
                          (if (gx#stx-pair? _%tl119993120011%_)
                              (let ((_%e119994120014%_
                                     (gx#syntax-e _%tl119993120011%_)))
                                (let ((_%hd119995120017%_
                                       (##car _%e119994120014%_))
                                      (_%tl119996120019%_
                                       (##cdr _%e119994120014%_)))
                                  (let* ((_%hd120022%_ _%hd119995120017%_)
                                         (_%body120024%_ _%tl119996120019%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120022%_)
                                        (let ((_%expanders120026%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120022%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120022%_
                                              _%expanders120026%_)
                                             (gx#core-expand-local-block
                                              _%stx119987%_
                                              _%body120024%_))
                                           gx#current-expander-context
                                           (let ((__obj121408
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121408)
                                             __obj121408)))
                                        (_%E119990120002%_)))))
                              (_%E119990120002%_))))
                      (_%E119990120002%_)))))
          (_%E119989120029%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx119936%_)
        (let* ((_%e119937119947%_ _%stx119936%_)
               (_%E119939119951%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119937119947%_)))
               (_%E119938119983%_
                (lambda ()
                  (if (gx#stx-pair? _%e119937119947%_)
                      (let ((_%e119940119955%_
                             (gx#syntax-e _%e119937119947%_)))
                        (let ((_%hd119941119958%_ (##car _%e119940119955%_))
                              (_%tl119942119960%_ (##cdr _%e119940119955%_)))
                          (if (gx#stx-pair? _%tl119942119960%_)
                              (let ((_%e119943119963%_
                                     (gx#syntax-e _%tl119942119960%_)))
                                (let ((_%hd119944119966%_
                                       (##car _%e119943119963%_))
                                      (_%tl119945119968%_
                                       (##cdr _%e119943119963%_)))
                                  (let* ((_%hd119971%_ _%hd119944119966%_)
                                         (_%body119973%_ _%tl119945119968%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd119971%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd119971%_
                                            (make-list
                                             (gx#stx-length _%hd119971%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g119975119978%_
                                                     _%g119976119980%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g119975119978%_
                                               _%g119976119980%_
                                               '#t))
                                            _%hd119971%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd119971%_))
                                           (gx#core-expand-local-block
                                            _%stx119936%_
                                            _%body119973%_))
                                         gx#current-expander-context
                                         (let ((__obj121409
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121409)
                                           __obj121409))
                                        (_%E119939119951%_)))))
                              (_%E119939119951%_))))
                      (_%E119939119951%_)))))
          (_%E119938119983%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx119893%_)
        (if (gx#stx-list? _%stx119893%_)
            (gx#stx-andmap
             (lambda (_%bind119895%_)
               (let* ((_%e119896119906%_ _%bind119895%_)
                      (_%E119898119910%_ (lambda () '#f))
                      (_%E119897119932%_
                       (lambda ()
                         (if (gx#stx-pair? _%e119896119906%_)
                             (let ((_%e119899119914%_
                                    (gx#syntax-e _%e119896119906%_)))
                               (let ((_%hd119900119917%_
                                      (##car _%e119899119914%_))
                                     (_%tl119901119919%_
                                      (##cdr _%e119899119914%_)))
                                 (let ((_%hd119922%_ _%hd119900119917%_))
                                   (if (gx#stx-pair? _%tl119901119919%_)
                                       (let ((_%e119902119924%_
                                              (gx#syntax-e
                                               _%tl119901119919%_)))
                                         (let ((_%hd119903119927%_
                                                (##car _%e119902119924%_))
                                               (_%tl119904119929%_
                                                (##cdr _%e119902119924%_)))
                                           (if (gx#stx-null?
                                                _%tl119904119929%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd119922%_)
                                                   (_%E119898119910%_))
                                               (_%E119898119910%_))))
                                       (_%E119898119910%_)))))
                             (_%E119898119910%_)))))
                 (_%E119897119932%_)))
             _%stx119893%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind119849%_)
        (let* ((_%e119850119860%_ _%bind119849%_)
               (_%E119852119864%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119850119860%_)))
               (_%E119851119889%_
                (lambda ()
                  (if (gx#stx-pair? _%e119850119860%_)
                      (let ((_%e119853119868%_
                             (gx#syntax-e _%e119850119860%_)))
                        (let ((_%hd119854119871%_ (##car _%e119853119868%_))
                              (_%tl119855119873%_ (##cdr _%e119853119868%_)))
                          (if (gx#stx-pair? _%tl119855119873%_)
                              (let ((_%e119856119876%_
                                     (gx#syntax-e _%tl119855119873%_)))
                                (let ((_%hd119857119879%_
                                       (##car _%e119856119876%_))
                                      (_%tl119858119881%_
                                       (##cdr _%e119856119876%_)))
                                  (let ((_%expr119884%_ _%hd119857119879%_))
                                    (if (gx#stx-null? _%tl119858119881%_)
                                        (if '#t
                                            (let ((_g121418_
                                                   (gx#core-expand-expression+1
                                                    _%expr119884%_)))
                                              (begin
                                                (let ((_g121419_
                                                       (if (##values?
                                                            _g121418_)
                                                           (##vector-length
                                                            _g121418_)
                                                           1)))
                                                  (if (not (##fx= _g121419_ 2))
                                                      (error "Context expects 2 values"
                                                             _g121419_)))
                                                (let ((_%_119886%_
                                                       (##vector-ref
                                                        _g121418_
                                                        0))
                                                      (_%e119887%_
                                                       (##vector-ref
                                                        _g121418_
                                                        1)))
                                                  _%e119887%_)))
                                            (_%E119852119864%_))
                                        (_%E119852119864%_)))))
                              (_%E119852119864%_))))
                      (_%E119852119864%_)))))
          (_%E119851119889%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind119794%_ _%e119795%_ _%rebind?119796%_)
        (let* ((_%e119797119807%_ _%bind119794%_)
               (_%E119799119811%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119797119807%_)))
               (_%E119798119833%_
                (lambda ()
                  (if (gx#stx-pair? _%e119797119807%_)
                      (let ((_%e119800119815%_
                             (gx#syntax-e _%e119797119807%_)))
                        (let ((_%hd119801119818%_ (##car _%e119800119815%_))
                              (_%tl119802119820%_ (##cdr _%e119800119815%_)))
                          (let ((_%id119823%_ _%hd119801119818%_))
                            (if (gx#stx-pair? _%tl119802119820%_)
                                (let ((_%e119803119825%_
                                       (gx#syntax-e _%tl119802119820%_)))
                                  (let ((_%hd119804119828%_
                                         (##car _%e119803119825%_))
                                        (_%tl119805119830%_
                                         (##cdr _%e119803119825%_)))
                                    (if (gx#stx-null? _%tl119805119830%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id119823%_
                                             _%e119795%_
                                             _%rebind?119796%_)
                                            (_%E119799119811%_))
                                        (_%E119799119811%_))))
                                (_%E119799119811%_)))))
                      (_%E119799119811%_)))))
          (_%E119798119833%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind119840%_ _%e119841%_)
        (let ((_%rebind?119843%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind119840%_
           _%e119841%_
           _%rebind?119843%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g121421_
        (let ((_g121420_ (##length _g121421_)))
          (cond ((##fx= _g121420_ 2)
                 (apply (lambda (_%bind119840%_ _%e119841%_)
                          (gx#core-expand-let-bind-syntax!__0
                           _%bind119840%_
                           _%e119841%_))
                        _g121421_))
                ((##fx= _g121420_ 3)
                 (apply (lambda (_%bind119845%_ _%e119846%_ _%rebind?119847%_)
                          (gx#core-expand-let-bind-syntax!__%
                           _%bind119845%_
                           _%e119846%_
                           _%rebind?119847%_))
                        _g121421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g121421_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx119752%_)
        (let* ((_%e119753119763%_ _%stx119752%_)
               (_%E119755119767%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119753119763%_)))
               (_%E119754119789%_
                (lambda ()
                  (if (gx#stx-pair? _%e119753119763%_)
                      (let ((_%e119756119771%_
                             (gx#syntax-e _%e119753119763%_)))
                        (let ((_%hd119757119774%_ (##car _%e119756119771%_))
                              (_%tl119758119776%_ (##cdr _%e119756119771%_)))
                          (if (gx#stx-pair? _%tl119758119776%_)
                              (let ((_%e119759119779%_
                                     (gx#syntax-e _%tl119758119776%_)))
                                (let ((_%hd119760119782%_
                                       (##car _%e119759119779%_))
                                      (_%tl119761119784%_
                                       (##cdr _%e119759119779%_)))
                                  (let ((_%expr119787%_ _%hd119760119782%_))
                                    (if (gx#stx-null? _%tl119761119784%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr119787%_)
                                            (_%E119755119767%_))
                                        (_%E119755119767%_)))))
                              (_%E119755119767%_))))
                      (_%E119755119767%_)))))
          (_%E119754119789%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx119711%_)
        (let* ((_%e119712119722%_ _%stx119711%_)
               (_%E119714119726%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119712119722%_)))
               (_%E119713119748%_
                (lambda ()
                  (if (gx#stx-pair? _%e119712119722%_)
                      (let ((_%e119715119730%_
                             (gx#syntax-e _%e119712119722%_)))
                        (let ((_%hd119716119733%_ (##car _%e119715119730%_))
                              (_%tl119717119735%_ (##cdr _%e119715119730%_)))
                          (if (gx#stx-pair? _%tl119717119735%_)
                              (let ((_%e119718119738%_
                                     (gx#syntax-e _%tl119717119735%_)))
                                (let ((_%hd119719119741%_
                                       (##car _%e119718119738%_))
                                      (_%tl119720119743%_
                                       (##cdr _%e119718119738%_)))
                                  (let ((_%e119746%_ _%hd119719119741%_))
                                    (if (gx#stx-null? _%tl119720119743%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e119746%_)
                                                         '()))
                                             (gx#stx-source _%stx119711%_))
                                            (_%E119714119726%_))
                                        (_%E119714119726%_)))))
                              (_%E119714119726%_))))
                      (_%E119714119726%_)))))
          (_%E119713119748%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx119670%_)
        (let* ((_%e119671119681%_ _%stx119670%_)
               (_%E119673119685%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119671119681%_)))
               (_%E119672119707%_
                (lambda ()
                  (if (gx#stx-pair? _%e119671119681%_)
                      (let ((_%e119674119689%_
                             (gx#syntax-e _%e119671119681%_)))
                        (let ((_%hd119675119692%_ (##car _%e119674119689%_))
                              (_%tl119676119694%_ (##cdr _%e119674119689%_)))
                          (if (gx#stx-pair? _%tl119676119694%_)
                              (let ((_%e119677119697%_
                                     (gx#syntax-e _%tl119676119694%_)))
                                (let ((_%hd119678119700%_
                                       (##car _%e119677119697%_))
                                      (_%tl119679119702%_
                                       (##cdr _%e119677119697%_)))
                                  (let ((_%e119705%_ _%hd119678119700%_))
                                    (if (gx#stx-null? _%tl119679119702%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e119705%_)
                                                         '()))
                                             (gx#stx-source _%stx119670%_))
                                            (_%E119673119685%_))
                                        (_%E119673119685%_)))))
                              (_%E119673119685%_))))
                      (_%E119673119685%_)))))
          (_%E119672119707%_))))
    (define gx#core-expand-call%
      (lambda (_%stx119627%_)
        (let* ((_%e119628119638%_ _%stx119627%_)
               (_%E119630119642%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119628119638%_)))
               (_%E119629119666%_
                (lambda ()
                  (if (gx#stx-pair? _%e119628119638%_)
                      (let ((_%e119631119646%_
                             (gx#syntax-e _%e119628119638%_)))
                        (let ((_%hd119632119649%_ (##car _%e119631119646%_))
                              (_%tl119633119651%_ (##cdr _%e119631119646%_)))
                          (if (gx#stx-pair? _%tl119633119651%_)
                              (let ((_%e119634119654%_
                                     (gx#syntax-e _%tl119633119651%_)))
                                (let ((_%hd119635119657%_
                                       (##car _%e119634119654%_))
                                      (_%tl119636119659%_
                                       (##cdr _%e119634119654%_)))
                                  (let* ((_%rator119662%_ _%hd119635119657%_)
                                         (_%args119664%_ _%tl119636119659%_))
                                    (if (gx#stx-list? _%args119664%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator119662%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args119664%_))
                                         (gx#stx-source _%stx119627%_))
                                        (_%E119630119642%_)))))
                              (_%E119630119642%_))))
                      (_%E119630119642%_)))))
          (_%E119629119666%_))))
    (define gx#core-expand-if%
      (lambda (_%stx119560%_)
        (let* ((_%e119561119577%_ _%stx119560%_)
               (_%E119563119581%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119561119577%_)))
               (_%E119562119623%_
                (lambda ()
                  (if (gx#stx-pair? _%e119561119577%_)
                      (let ((_%e119564119585%_
                             (gx#syntax-e _%e119561119577%_)))
                        (let ((_%hd119565119588%_ (##car _%e119564119585%_))
                              (_%tl119566119590%_ (##cdr _%e119564119585%_)))
                          (if (gx#stx-pair? _%tl119566119590%_)
                              (let ((_%e119567119593%_
                                     (gx#syntax-e _%tl119566119590%_)))
                                (let ((_%hd119568119596%_
                                       (##car _%e119567119593%_))
                                      (_%tl119569119598%_
                                       (##cdr _%e119567119593%_)))
                                  (let ((_%test119601%_ _%hd119568119596%_))
                                    (if (gx#stx-pair? _%tl119569119598%_)
                                        (let ((_%e119570119603%_
                                               (gx#syntax-e
                                                _%tl119569119598%_)))
                                          (let ((_%hd119571119606%_
                                                 (##car _%e119570119603%_))
                                                (_%tl119572119608%_
                                                 (##cdr _%e119570119603%_)))
                                            (let ((_%K119611%_
                                                   _%hd119571119606%_))
                                              (if (gx#stx-pair?
                                                   _%tl119572119608%_)
                                                  (let ((_%e119573119613%_
                                                         (gx#syntax-e
                                                          _%tl119572119608%_)))
                                                    (let ((_%hd119574119616%_
                                                           (##car _%e119573119613%_))
                                                          (_%tl119575119618%_
                                                           (##cdr _%e119573119613%_)))
                                                      (let ((_%E119621%_
                                                             _%hd119574119616%_))
                                                        (if (gx#stx-null?
                                                             _%tl119575119618%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test119601%_)
                                     (cons (gx#core-expand-expression
                                            _%K119611%_)
                                           (cons (gx#core-expand-expression
                                                  _%E119621%_)
                                                 '()))))
                         (gx#stx-source _%stx119560%_))
                        (_%E119563119581%_))
                    (_%E119563119581%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119563119581%_)))))
                                        (_%E119563119581%_)))))
                              (_%E119563119581%_))))
                      (_%E119563119581%_)))))
          (_%E119562119623%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx119519%_)
        (let* ((_%e119520119530%_ _%stx119519%_)
               (_%E119522119534%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119520119530%_)))
               (_%E119521119556%_
                (lambda ()
                  (if (gx#stx-pair? _%e119520119530%_)
                      (let ((_%e119523119538%_
                             (gx#syntax-e _%e119520119530%_)))
                        (let ((_%hd119524119541%_ (##car _%e119523119538%_))
                              (_%tl119525119543%_ (##cdr _%e119523119538%_)))
                          (if (gx#stx-pair? _%tl119525119543%_)
                              (let ((_%e119526119546%_
                                     (gx#syntax-e _%tl119525119543%_)))
                                (let ((_%hd119527119549%_
                                       (##car _%e119526119546%_))
                                      (_%tl119528119551%_
                                       (##cdr _%e119526119546%_)))
                                  (let ((_%id119554%_ _%hd119527119549%_))
                                    (if (gx#stx-null? _%tl119528119551%_)
                                        (if (gx#identifier? _%id119554%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id119554%_
                                                          _%stx119519%_)
                                                         '()))
                                             (gx#stx-source _%stx119519%_))
                                            (_%E119522119534%_))
                                        (_%E119522119534%_)))))
                              (_%E119522119534%_))))
                      (_%E119522119534%_)))))
          (_%E119521119556%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx119465%_)
        (let* ((_%e119466119479%_ _%stx119465%_)
               (_%E119468119483%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119466119479%_)))
               (_%E119467119515%_
                (lambda ()
                  (if (gx#stx-pair? _%e119466119479%_)
                      (let ((_%e119469119487%_
                             (gx#syntax-e _%e119466119479%_)))
                        (let ((_%hd119470119490%_ (##car _%e119469119487%_))
                              (_%tl119471119492%_ (##cdr _%e119469119487%_)))
                          (if (gx#stx-pair? _%tl119471119492%_)
                              (let ((_%e119472119495%_
                                     (gx#syntax-e _%tl119471119492%_)))
                                (let ((_%hd119473119498%_
                                       (##car _%e119472119495%_))
                                      (_%tl119474119500%_
                                       (##cdr _%e119472119495%_)))
                                  (let ((_%id119503%_ _%hd119473119498%_))
                                    (if (gx#stx-pair? _%tl119474119500%_)
                                        (let ((_%e119475119505%_
                                               (gx#syntax-e
                                                _%tl119474119500%_)))
                                          (let ((_%hd119476119508%_
                                                 (##car _%e119475119505%_))
                                                (_%tl119477119510%_
                                                 (##cdr _%e119475119505%_)))
                                            (let ((_%expr119513%_
                                                   _%hd119476119508%_))
                                              (if (gx#stx-null?
                                                   _%tl119477119510%_)
                                                  (if (gx#identifier?
                                                       _%id119503%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id119503%_
                            _%stx119465%_)
                           (cons (gx#core-expand-expression _%expr119513%_)
                                 '())))
               (gx#stx-source _%stx119465%_))
              (_%E119468119483%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119468119483%_)))))
                                        (_%E119468119483%_)))))
                              (_%E119468119483%_))))
                      (_%E119468119483%_)))))
          (_%E119467119515%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx119310%_)
        (letrec ((_%generate119312%_
                  (lambda (_%body119342%_)
                    (let _%lp119344%_ ((_%rest119346%_ _%body119342%_)
                                       (_%ns119347%_
                                        (gx#core-context-namespace__0))
                                       (_%r119348%_ '()))
                      (let* ((_%e119349119364%_ _%rest119346%_)
                             (_%E119362119368%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e119349119364%_)))
                             (_%E119358119372%_
                              (lambda ()
                                (if (gx#stx-null? _%e119349119364%_)
                                    (if '#t
                                        (reverse _%r119348%_)
                                        (_%E119362119368%_))
                                    (_%E119362119368%_))))
                             (_%E119351119429%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119349119364%_)
                                    (let ((_%e119359119376%_
                                           (gx#syntax-e _%e119349119364%_)))
                                      (let ((_%hd119360119379%_
                                             (##car _%e119359119376%_))
                                            (_%tl119361119381%_
                                             (##cdr _%e119359119376%_)))
                                        (let* ((_%hd119384%_
                                                _%hd119360119379%_)
                                               (_%rest119386%_
                                                _%tl119361119381%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd119384%_)
                                                  (_%lp119344%_
                                                   _%rest119386%_
                                                   _%ns119347%_
                                                   (cons (cons _%hd119384%_
                                                               (cons (if _%ns119347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd119384%_
                                  _%ns119347%_
                                  '"#"
                                  _%hd119384%_)
                                 _%hd119384%_)
                             '()))
                 _%r119348%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e119387119397%_
                                                          _%hd119384%_)
                                                         (_%E119389119401%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e119387119397%_)))
                                                         (_%E119388119425%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e119387119397%_)
                        (let ((_%e119390119405%_
                               (gx#syntax-e _%e119387119397%_)))
                          (let ((_%hd119391119408%_ (##car _%e119390119405%_))
                                (_%tl119392119410%_ (##cdr _%e119390119405%_)))
                            (let ((_%id119413%_ _%hd119391119408%_))
                              (if (gx#stx-pair? _%tl119392119410%_)
                                  (let ((_%e119393119415%_
                                         (gx#syntax-e _%tl119392119410%_)))
                                    (let ((_%hd119394119418%_
                                           (##car _%e119393119415%_))
                                          (_%tl119395119420%_
                                           (##cdr _%e119393119415%_)))
                                      (let ((_%eid119423%_ _%hd119394119418%_))
                                        (if (gx#stx-null? _%tl119395119420%_)
                                            (if (and (gx#identifier?
                                                      _%id119413%_)
                                                     (gx#identifier?
                                                      _%eid119423%_))
                                                (_%lp119344%_
                                                 _%rest119386%_
                                                 _%ns119347%_
                                                 (cons (cons _%id119413%_
                                                             (cons _%eid119423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r119348%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119389119401%_))
                                            (_%E119389119401%_)))))
                                  (_%E119389119401%_)))))
                        (_%E119389119401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119388119425%_)))
                                              (_%E119358119372%_)))))
                                    (_%E119358119372%_))))
                             (_%E119350119461%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119349119364%_)
                                    (let ((_%e119352119433%_
                                           (gx#syntax-e _%e119349119364%_)))
                                      (let ((_%hd119353119436%_
                                             (##car _%e119352119433%_))
                                            (_%tl119354119438%_
                                             (##cdr _%e119352119433%_)))
                                        (if (eq? (gx#stx-e _%hd119353119436%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl119354119438%_)
                                                (let ((_%e119355119441%_
                                                       (gx#syntax-e
                                                        _%tl119354119438%_)))
                                                  (let ((_%hd119356119444%_
                                                         (##car _%e119355119441%_))
                                                        (_%tl119357119446%_
                                                         (##cdr _%e119355119441%_)))
                                                    (let* ((_%ns119449%_
                                                            _%hd119356119444%_)
                                                           (_%rest119451%_
                                                            _%tl119357119446%_))
                                                      (if '#t
                                                          (let ((_%ns119459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns119449%_)
                             (let () (symbol->string (gx#stx-e _%ns119449%_)))
                             (if (or (gx#stx-string? _%ns119449%_)
                                     (gx#stx-false? _%ns119449%_))
                                 (let () (gx#stx-e _%ns119449%_))
                                 (let ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; extern expects namespace identifier"
                                    _%stx119310%_
                                    _%ns119449%_))))))
                    (_%lp119344%_ _%rest119451%_ _%ns119459%_ _%r119348%_))
                  (_%E119351119429%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119351119429%_))
                                            (_%E119351119429%_))))
                                    (_%E119351119429%_)))))
                        (_%E119350119461%_))))))
          (let* ((_%e119313119320%_ _%stx119310%_)
                 (_%E119315119324%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119313119320%_)))
                 (_%E119314119338%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119313119320%_)
                        (let ((_%e119316119328%_
                               (gx#syntax-e _%e119313119320%_)))
                          (let ((_%hd119317119331%_ (##car _%e119316119328%_))
                                (_%tl119318119333%_ (##cdr _%e119316119328%_)))
                            (let ((_%body119336%_ _%tl119318119333%_))
                              (if (gx#stx-list? _%body119336%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate119312%_ _%body119336%_))
                                  (_%E119315119324%_)))))
                        (_%E119315119324%_)))))
            (_%E119314119338%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119256%_)
        (let* ((_%e119257119270%_ _%stx119256%_)
               (_%E119259119274%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119257119270%_)))
               (_%E119258119306%_
                (lambda ()
                  (if (gx#stx-pair? _%e119257119270%_)
                      (let ((_%e119260119278%_
                             (gx#syntax-e _%e119257119270%_)))
                        (let ((_%hd119261119281%_ (##car _%e119260119278%_))
                              (_%tl119262119283%_ (##cdr _%e119260119278%_)))
                          (if (gx#stx-pair? _%tl119262119283%_)
                              (let ((_%e119263119286%_
                                     (gx#syntax-e _%tl119262119283%_)))
                                (let ((_%hd119264119289%_
                                       (##car _%e119263119286%_))
                                      (_%tl119265119291%_
                                       (##cdr _%e119263119286%_)))
                                  (let ((_%hd119294%_ _%hd119264119289%_))
                                    (if (gx#stx-pair? _%tl119265119291%_)
                                        (let ((_%e119266119296%_
                                               (gx#syntax-e
                                                _%tl119265119291%_)))
                                          (let ((_%hd119267119299%_
                                                 (##car _%e119266119296%_))
                                                (_%tl119268119301%_
                                                 (##cdr _%e119266119296%_)))
                                            (let ((_%expr119304%_
                                                   _%hd119267119299%_))
                                              (if (gx#stx-null?
                                                   _%tl119268119301%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd119294%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd119294%_)
                          (cons _%expr119304%_ '())))
              (_%E119259119274%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119259119274%_)))))
                                        (_%E119259119274%_)))))
                              (_%E119259119274%_))))
                      (_%E119259119274%_)))))
          (_%E119258119306%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119202%_)
        (let* ((_%e119203119216%_ _%stx119202%_)
               (_%E119205119220%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119203119216%_)))
               (_%E119204119252%_
                (lambda ()
                  (if (gx#stx-pair? _%e119203119216%_)
                      (let ((_%e119206119224%_
                             (gx#syntax-e _%e119203119216%_)))
                        (let ((_%hd119207119227%_ (##car _%e119206119224%_))
                              (_%tl119208119229%_ (##cdr _%e119206119224%_)))
                          (if (gx#stx-pair? _%tl119208119229%_)
                              (let ((_%e119209119232%_
                                     (gx#syntax-e _%tl119208119229%_)))
                                (let ((_%hd119210119235%_
                                       (##car _%e119209119232%_))
                                      (_%tl119211119237%_
                                       (##cdr _%e119209119232%_)))
                                  (let ((_%hd119240%_ _%hd119210119235%_))
                                    (if (gx#stx-pair? _%tl119211119237%_)
                                        (let ((_%e119212119242%_
                                               (gx#syntax-e
                                                _%tl119211119237%_)))
                                          (let ((_%hd119213119245%_
                                                 (##car _%e119212119242%_))
                                                (_%tl119214119247%_
                                                 (##cdr _%e119212119242%_)))
                                            (let ((_%expr119250%_
                                                   _%hd119213119245%_))
                                              (if (gx#stx-null?
                                                   _%tl119214119247%_)
                                                  (if (gx#identifier?
                                                       _%hd119240%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119250%_ '())))
              (_%E119205119220%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119205119220%_)))))
                                        (_%E119205119220%_)))))
                              (_%E119205119220%_))))
                      (_%E119205119220%_)))))
          (_%E119204119252%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119148%_)
        (let* ((_%e119149119162%_ _%stx119148%_)
               (_%E119151119166%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119149119162%_)))
               (_%E119150119198%_
                (lambda ()
                  (if (gx#stx-pair? _%e119149119162%_)
                      (let ((_%e119152119170%_
                             (gx#syntax-e _%e119149119162%_)))
                        (let ((_%hd119153119173%_ (##car _%e119152119170%_))
                              (_%tl119154119175%_ (##cdr _%e119152119170%_)))
                          (if (gx#stx-pair? _%tl119154119175%_)
                              (let ((_%e119155119178%_
                                     (gx#syntax-e _%tl119154119175%_)))
                                (let ((_%hd119156119181%_
                                       (##car _%e119155119178%_))
                                      (_%tl119157119183%_
                                       (##cdr _%e119155119178%_)))
                                  (let ((_%id119186%_ _%hd119156119181%_))
                                    (if (gx#stx-pair? _%tl119157119183%_)
                                        (let ((_%e119158119188%_
                                               (gx#syntax-e
                                                _%tl119157119183%_)))
                                          (let ((_%hd119159119191%_
                                                 (##car _%e119158119188%_))
                                                (_%tl119160119193%_
                                                 (##cdr _%e119158119188%_)))
                                            (let ((_%alias-id119196%_
                                                   _%hd119159119191%_))
                                              (if (gx#stx-null?
                                                   _%tl119160119193%_)
                                                  (if (and (gx#identifier?
                                                            _%id119186%_)
                                                           (gx#identifier?
                                                            _%alias-id119196%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119196%_ '())))
              (_%E119151119166%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119151119166%_)))))
                                        (_%E119151119166%_)))))
                              (_%E119151119166%_))))
                      (_%E119151119166%_)))))
          (_%E119150119198%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119105%_)
        (let* ((_%e119106119116%_ _%stx119105%_)
               (_%E119108119120%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119106119116%_)))
               (_%E119107119144%_
                (lambda ()
                  (if (gx#stx-pair? _%e119106119116%_)
                      (let ((_%e119109119124%_
                             (gx#syntax-e _%e119106119116%_)))
                        (let ((_%hd119110119127%_ (##car _%e119109119124%_))
                              (_%tl119111119129%_ (##cdr _%e119109119124%_)))
                          (if (gx#stx-pair? _%tl119111119129%_)
                              (let ((_%e119112119132%_
                                     (gx#syntax-e _%tl119111119129%_)))
                                (let ((_%hd119113119135%_
                                       (##car _%e119112119132%_))
                                      (_%tl119114119137%_
                                       (##cdr _%e119112119132%_)))
                                  (let* ((_%hd119140%_ _%hd119113119135%_)
                                         (_%body119142%_ _%tl119114119137%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119140%_)
                                             (gx#stx-list? _%body119142%_)
                                             (not (gx#stx-null?
                                                   _%body119142%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119140%_)
                                         _%body119142%_)
                                        (_%E119108119120%_)))))
                              (_%E119108119120%_))))
                      (_%E119108119120%_)))))
          (_%E119107119144%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119041%_)
        (letrec ((_%generate119043%_
                  (lambda (_%clause119073%_)
                    (let* ((_%e119074119081%_ _%clause119073%_)
                           (_%E119076119085%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119041%_
                               _%clause119073%_)))
                           (_%E119075119101%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119074119081%_)
                                  (let ((_%e119077119089%_
                                         (gx#syntax-e _%e119074119081%_)))
                                    (let ((_%hd119078119092%_
                                           (##car _%e119077119089%_))
                                          (_%tl119079119094%_
                                           (##cdr _%e119077119089%_)))
                                      (let* ((_%hd119097%_ _%hd119078119092%_)
                                             (_%body119099%_
                                              _%tl119079119094%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119097%_)
                                                 (gx#stx-list? _%body119099%_)
                                                 (not (gx#stx-null?
                                                       _%body119099%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119097%_)
                                                   _%body119099%_)
                                             (gx#stx-source _%clause119073%_))
                                            (_%E119076119085%_)))))
                                  (_%E119076119085%_)))))
                      (_%E119075119101%_)))))
          (let* ((_%e119044119051%_ _%stx119041%_)
                 (_%E119046119055%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119044119051%_)))
                 (_%E119045119069%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119044119051%_)
                        (let ((_%e119047119059%_
                               (gx#syntax-e _%e119044119051%_)))
                          (let ((_%hd119048119062%_ (##car _%e119047119059%_))
                                (_%tl119049119064%_ (##cdr _%e119047119059%_)))
                            (let ((_%clauses119067%_ _%tl119049119064%_))
                              (if (gx#stx-list? _%clauses119067%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119043%_
                                    _%clauses119067%_))
                                  (_%E119046119055%_)))))
                        (_%E119046119055%_)))))
            (_%E119045119069%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx118942%_ _%form118943%_)
        (letrec ((_%generate118945%_
                  (lambda (_%bind118988%_)
                    (let* ((_%e118989118999%_ _%bind118988%_)
                           (_%E118991119003%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx118942%_
                               _%bind118988%_)))
                           (_%E118990119027%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118989118999%_)
                                  (let ((_%e118992119007%_
                                         (gx#syntax-e _%e118989118999%_)))
                                    (let ((_%hd118993119010%_
                                           (##car _%e118992119007%_))
                                          (_%tl118994119012%_
                                           (##cdr _%e118992119007%_)))
                                      (let ((_%ids119015%_ _%hd118993119010%_))
                                        (if (gx#stx-pair? _%tl118994119012%_)
                                            (let ((_%e118995119017%_
                                                   (gx#syntax-e
                                                    _%tl118994119012%_)))
                                              (let ((_%hd118996119020%_
                                                     (##car _%e118995119017%_))
                                                    (_%tl118997119022%_
                                                     (##cdr _%e118995119017%_)))
                                                (let ((_%expr119025%_
                                                       _%hd118996119020%_))
                                                  (if (gx#stx-null?
                                                       _%tl118997119022%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119015%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119015%_)
                        (cons _%expr119025%_ '()))
                  (_%E118991119003%_))
              (_%E118991119003%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E118991119003%_)))))
                                  (_%E118991119003%_)))))
                      (_%E118990119027%_)))))
          (let* ((_%e118946118956%_ _%stx118942%_)
                 (_%E118948118960%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118946118956%_)))
                 (_%E118947118984%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118946118956%_)
                        (let ((_%e118949118964%_
                               (gx#syntax-e _%e118946118956%_)))
                          (let ((_%hd118950118967%_ (##car _%e118949118964%_))
                                (_%tl118951118969%_ (##cdr _%e118949118964%_)))
                            (if (gx#stx-pair? _%tl118951118969%_)
                                (let ((_%e118952118972%_
                                       (gx#syntax-e _%tl118951118969%_)))
                                  (let ((_%hd118953118975%_
                                         (##car _%e118952118972%_))
                                        (_%tl118954118977%_
                                         (##cdr _%e118952118972%_)))
                                    (let* ((_%hd118980%_ _%hd118953118975%_)
                                           (_%body118982%_ _%tl118954118977%_))
                                      (if (and (gx#stx-list? _%hd118980%_)
                                               (gx#stx-list? _%body118982%_)
                                               (not (gx#stx-null?
                                                     _%body118982%_)))
                                          (gx#core-cons*
                                           _%form118943%_
                                           (gx#stx-map1
                                            _%generate118945%_
                                            _%hd118980%_)
                                           _%body118982%_)
                                          (_%E118948118960%_)))))
                                (_%E118948118960%_))))
                        (_%E118948118960%_)))))
            (_%E118947118984%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119034%_)
        (let ((_%form119036%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119034%_ _%form119036%_))))
    (define gx#macro-expand-let-values
      (lambda _g121423_
        (let ((_g121422_ (##length _g121423_)))
          (cond ((##fx= _g121422_ 1)
                 (apply (lambda (_%stx119034%_)
                          (gx#macro-expand-let-values__0 _%stx119034%_))
                        _g121423_))
                ((##fx= _g121422_ 2)
                 (apply (lambda (_%stx119038%_ _%form119039%_)
                          (gx#macro-expand-let-values__%
                           _%stx119038%_
                           _%form119039%_))
                        _g121423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g121423_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx118939%_)
        (gx#macro-expand-let-values__% _%stx118939%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx118937%_)
        (gx#macro-expand-let-values__% _%stx118937%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx118828%_)
        (let* ((_%e118829118855%_ _%stx118828%_)
               (_%E118841118859%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118829118855%_)))
               (_%E118831118901%_
                (lambda ()
                  (if (gx#stx-pair? _%e118829118855%_)
                      (let ((_%e118842118863%_
                             (gx#syntax-e _%e118829118855%_)))
                        (let ((_%hd118843118866%_ (##car _%e118842118863%_))
                              (_%tl118844118868%_ (##cdr _%e118842118863%_)))
                          (if (gx#stx-pair? _%tl118844118868%_)
                              (let ((_%e118845118871%_
                                     (gx#syntax-e _%tl118844118868%_)))
                                (let ((_%hd118846118874%_
                                       (##car _%e118845118871%_))
                                      (_%tl118847118876%_
                                       (##cdr _%e118845118871%_)))
                                  (let ((_%test118879%_ _%hd118846118874%_))
                                    (if (gx#stx-pair? _%tl118847118876%_)
                                        (let ((_%e118848118881%_
                                               (gx#syntax-e
                                                _%tl118847118876%_)))
                                          (let ((_%hd118849118884%_
                                                 (##car _%e118848118881%_))
                                                (_%tl118850118886%_
                                                 (##cdr _%e118848118881%_)))
                                            (let ((_%K118889%_
                                                   _%hd118849118884%_))
                                              (if (gx#stx-pair?
                                                   _%tl118850118886%_)
                                                  (let ((_%e118851118891%_
                                                         (gx#syntax-e
                                                          _%tl118850118886%_)))
                                                    (let ((_%hd118852118894%_
                                                           (##car _%e118851118891%_))
                                                          (_%tl118853118896%_
                                                           (##cdr _%e118851118891%_)))
                                                      (let ((_%E118899%_
                                                             _%hd118852118894%_))
                                                        (if (gx#stx-null?
                                                             _%tl118853118896%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test118879%_
                         _%K118889%_
                         _%E118899%_)
                        (_%E118841118859%_))
                    (_%E118841118859%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E118841118859%_)))))
                                        (_%E118841118859%_)))))
                              (_%E118841118859%_))))
                      (_%E118841118859%_))))
               (_%E118830118933%_
                (lambda ()
                  (if (gx#stx-pair? _%e118829118855%_)
                      (let ((_%e118832118905%_
                             (gx#syntax-e _%e118829118855%_)))
                        (let ((_%hd118833118908%_ (##car _%e118832118905%_))
                              (_%tl118834118910%_ (##cdr _%e118832118905%_)))
                          (if (gx#stx-pair? _%tl118834118910%_)
                              (let ((_%e118835118913%_
                                     (gx#syntax-e _%tl118834118910%_)))
                                (let ((_%hd118836118916%_
                                       (##car _%e118835118913%_))
                                      (_%tl118837118918%_
                                       (##cdr _%e118835118913%_)))
                                  (let ((_%test118921%_ _%hd118836118916%_))
                                    (if (gx#stx-pair? _%tl118837118918%_)
                                        (let ((_%e118838118923%_
                                               (gx#syntax-e
                                                _%tl118837118918%_)))
                                          (let ((_%hd118839118926%_
                                                 (##car _%e118838118923%_))
                                                (_%tl118840118928%_
                                                 (##cdr _%e118838118923%_)))
                                            (let ((_%K118931%_
                                                   _%hd118839118926%_))
                                              (if (gx#stx-null?
                                                   _%tl118840118928%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test118921%_
                                                       _%K118931%_
                                                       '#!void)
                                                      (_%E118831118901%_))
                                                  (_%E118831118901%_)))))
                                        (_%E118831118901%_)))))
                              (_%E118831118901%_))))
                      (_%E118831118901%_)))))
          (_%E118830118933%_))))
    (define gx#free-identifier=?
      (lambda (_%xid118813%_ _%yid118814%_)
        (let ((_%xe118816%_ (gx#resolve-identifier__0 _%xid118813%_))
              (_%ye118817%_ (gx#resolve-identifier__0 _%yid118814%_)))
          (if (and _%xe118816%_ _%ye118817%_)
              (let ()
                (let ((_%$e118820%_ (eq? _%xe118816%_ _%ye118817%_)))
                  (if _%$e118820%_
                      _%$e118820%_
                      (if (##structure-instance-of?
                           _%xe118816%_
                           'gx#binding::t)
                          (if (##structure-instance-of?
                               _%ye118817%_
                               'gx#binding::t)
                              (eq? (##unchecked-structure-ref
                                    _%xe118816%_
                                    '1
                                    '#f
                                    '#f)
                                   (##unchecked-structure-ref
                                    _%ye118817%_
                                    '1
                                    '#f
                                    '#f))
                              '#f)
                          '#f))))
              (if (or _%xe118816%_ _%ye118817%_)
                  (let () '#f)
                  (let () (gx#stx-eq? _%xid118813%_ _%yid118814%_)))))))
    (define gx#bound-identifier=?
      (lambda (_%xid118794%_ _%yid118795%_)
        (letrec ((_%context118797%_
                  (lambda (_%e118811%_)
                    (if (##structure-direct-instance-of?
                         _%e118811%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e118811%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks118798%_
                  (lambda (_%e118806%_)
                    (if (symbol? _%e118806%_)
                        (let () '())
                        (if (##structure-direct-instance-of?
                             _%e118806%_
                             'gx#identifier-wrap::t)
                            (let ()
                              (##unchecked-structure-ref
                               _%e118806%_
                               '3
                               '#f
                               '#f))
                            (let ()
                              (##unchecked-structure-ref
                               _%e118806%_
                               '4
                               '#f
                               '#f))))))
                 (_%unwrap118799%_
                  (lambda (_%e118804%_)
                    (if (symbol? _%e118804%_)
                        _%e118804%_
                        (gx#syntax-local-unwrap _%e118804%_)))))
          (let ((_%x118801%_ (_%unwrap118799%_ _%xid118794%_))
                (_%y118802%_ (_%unwrap118799%_ _%yid118795%_)))
            (if (gx#stx-eq? _%x118801%_ _%y118802%_)
                (if (eq? (_%context118797%_ _%x118801%_)
                         (_%context118797%_ _%y118802%_))
                    (equal? (_%marks118798%_ _%x118801%_)
                            (_%marks118798%_ _%y118802%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx118792%_)
        (if (gx#identifier? _%stx118792%_)
            (gx#core-identifier=? _%stx118792%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx118790%_)
        (if (gx#identifier? _%stx118790%_)
            (gx#core-identifier=? _%stx118790%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx118733%_ _%where118734%_)
        (let _%lp118736%_ ((_%rest118738%_ (gx#syntax->list _%stx118733%_)))
          (let* ((_%rest118739118747%_ _%rest118738%_)
                 (_%else118741118755%_ (lambda () '#t))
                 (_%K118743118768%_
                  (lambda (_%rest118758%_ _%hd118759%_)
                    (if (not (gx#identifier? _%hd118759%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad identifier"
                           _%where118734%_
                           _%hd118759%_))
                        (if (__find (lambda (_%g118761118763%_)
                                      (gx#bound-identifier=?
                                       _%g118761118763%_
                                       _%hd118759%_))
                                    _%rest118758%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Duplicate identifier"
                               _%where118734%_
                               _%hd118759%_))
                            (let () (_%lp118736%_ _%rest118758%_)))))))
            (if (##pair? _%rest118739118747%_)
                (let ((_%hd118744118771%_ (##car _%rest118739118747%_))
                      (_%tl118745118773%_ (##cdr _%rest118739118747%_)))
                  (let* ((_%hd118776%_ _%hd118744118771%_)
                         (_%rest118778%_ _%tl118745118773%_))
                    (_%K118743118768%_ _%rest118778%_ _%hd118776%_)))
                (_%else118741118755%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx118783%_)
        (let ((_%where118785%_ _%stx118783%_))
          (gx#check-duplicate-identifiers__% _%stx118783%_ _%where118785%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g121425_
        (let ((_g121424_ (##length _g121425_)))
          (cond ((##fx= _g121424_ 1)
                 (apply (lambda (_%stx118783%_)
                          (gx#check-duplicate-identifiers__0 _%stx118783%_))
                        _g121425_))
                ((##fx= _g121424_ 2)
                 (apply (lambda (_%stx118787%_ _%where118788%_)
                          (gx#check-duplicate-identifiers__%
                           _%stx118787%_
                           _%where118788%_))
                        _g121425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g121425_))))))
    (define gx#core-bind-values?
      (lambda (_%stx118725%_)
        (gx#stx-andmap
         (lambda (_%x118727%_)
           (let ((_%$e118729%_ (gx#identifier? _%x118727%_)))
             (if _%$e118729%_ _%$e118729%_ (gx#stx-false? _%x118727%_))))
         _%stx118725%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx118689%_ _%rebind?118690%_ _%phi118691%_ _%ctx118692%_)
        (gx#stx-for-each1
         (lambda (_%id118694%_)
           (if (gx#identifier? _%id118694%_)
               (gx#core-bind-runtime!__%
                _%id118694%_
                _%rebind?118690%_
                _%phi118691%_
                _%ctx118692%_)
               '#!void))
         _%stx118689%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx118699%_)
        (let* ((_%rebind?118701%_ '#f)
               (_%phi118703%_ (gx#current-expander-phi))
               (_%ctx118705%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118699%_
           _%rebind?118701%_
           _%phi118703%_
           _%ctx118705%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx118707%_ _%rebind?118708%_)
        (let* ((_%phi118710%_ (gx#current-expander-phi))
               (_%ctx118712%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118707%_
           _%rebind?118708%_
           _%phi118710%_
           _%ctx118712%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx118714%_ _%rebind?118715%_ _%phi118716%_)
        (let ((_%ctx118718%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118714%_
           _%rebind?118715%_
           _%phi118716%_
           _%ctx118718%_))))
    (define gx#core-bind-values!
      (lambda _g121427_
        (let ((_g121426_ (##length _g121427_)))
          (cond ((##fx= _g121426_ 1)
                 (apply (lambda (_%stx118699%_)
                          (gx#core-bind-values!__0 _%stx118699%_))
                        _g121427_))
                ((##fx= _g121426_ 2)
                 (apply (lambda (_%stx118707%_ _%rebind?118708%_)
                          (gx#core-bind-values!__1
                           _%stx118707%_
                           _%rebind?118708%_))
                        _g121427_))
                ((##fx= _g121426_ 3)
                 (apply (lambda (_%stx118714%_ _%rebind?118715%_ _%phi118716%_)
                          (gx#core-bind-values!__2
                           _%stx118714%_
                           _%rebind?118715%_
                           _%phi118716%_))
                        _g121427_))
                ((##fx= _g121426_ 4)
                 (apply (lambda (_%stx118720%_
                                 _%rebind?118721%_
                                 _%phi118722%_
                                 _%ctx118723%_)
                          (gx#core-bind-values!__%
                           _%stx118720%_
                           _%rebind?118721%_
                           _%phi118722%_
                           _%ctx118723%_))
                        _g121427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g121427_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx118684%_)
        (gx#stx-map1
         (lambda (_%x118686%_)
           (if (gx#identifier? _%x118686%_)
               (gx#core-quote-syntax__0 _%x118686%_)
               '#f))
         _%stx118684%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx118677%_)
        (if (gx#identifier? _%stx118677%_)
            (let* ((_%bind118679%_ (gx#resolve-identifier__0 _%stx118677%_))
                   (_%$e118681%_ (not _%bind118679%_)))
              (if _%$e118681%_
                  _%$e118681%_
                  (##structure-instance-of?
                   _%bind118679%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id118666%_ _%form118667%_)
        (let ((_%bind118669%_ (gx#resolve-identifier__0 _%id118666%_)))
          (if (##structure-instance-of? _%bind118669%_ 'gx#runtime-binding::t)
              (let () (gx#core-quote-syntax__0 _%id118666%_))
              (if (not _%bind118669%_)
                  (let ()
                    (if (or (gx#core-context-rebind?__%
                             (gx#core-context-top__0))
                            (gx#core-extern-symbol? (gx#stx-e _%id118666%_)))
                        (gx#core-quote-syntax__0 _%id118666%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _%form118667%_
                         _%id118666%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; not a runtime binding"
                     _%form118667%_
                     _%id118666%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id118621%_ _%rebind?118622%_ _%phi118623%_ _%ctx118624%_)
        (let* ((_%key118626%_ (gx#core-identifier-key _%id118621%_))
               (_%eid118628%_
                (gx#make-binding-id__%
                 _%key118626%_
                 '#f
                 _%phi118623%_
                 _%ctx118624%_))
               (_%bind118634%_
                (if (##structure-instance-of?
                     _%ctx118624%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid118628%_
                       _%key118626%_
                       _%phi118623%_
                       _%ctx118624%_))
                    (if (##structure-instance-of?
                         _%ctx118624%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid118628%_
                           _%key118626%_
                           _%phi118623%_))
                        (if (##structure-instance-of?
                             _%ctx118624%_
                             'gx#local-context::t)
                            (let ()
                              (##structure
                               gx#local-binding::t
                               _%eid118628%_
                               _%key118626%_
                               _%phi118623%_))
                            (let ()
                              (##structure
                               gx#runtime-binding::t
                               _%eid118628%_
                               _%key118626%_
                               _%phi118623%_)))))))
          (gx#bind-identifier!__%
           _%id118621%_
           _%bind118634%_
           _%rebind?118622%_
           _%phi118623%_
           _%ctx118624%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id118640%_)
        (let* ((_%rebind?118642%_ '#f)
               (_%phi118644%_ (gx#current-expander-phi))
               (_%ctx118646%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118640%_
           _%rebind?118642%_
           _%phi118644%_
           _%ctx118646%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id118648%_ _%rebind?118649%_)
        (let* ((_%phi118651%_ (gx#current-expander-phi))
               (_%ctx118653%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118648%_
           _%rebind?118649%_
           _%phi118651%_
           _%ctx118653%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id118655%_ _%rebind?118656%_ _%phi118657%_)
        (let ((_%ctx118659%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118655%_
           _%rebind?118656%_
           _%phi118657%_
           _%ctx118659%_))))
    (define gx#core-bind-runtime!
      (lambda _g121429_
        (let ((_g121428_ (##length _g121429_)))
          (cond ((##fx= _g121428_ 1)
                 (apply (lambda (_%id118640%_)
                          (gx#core-bind-runtime!__0 _%id118640%_))
                        _g121429_))
                ((##fx= _g121428_ 2)
                 (apply (lambda (_%id118648%_ _%rebind?118649%_)
                          (gx#core-bind-runtime!__1
                           _%id118648%_
                           _%rebind?118649%_))
                        _g121429_))
                ((##fx= _g121428_ 3)
                 (apply (lambda (_%id118655%_ _%rebind?118656%_ _%phi118657%_)
                          (gx#core-bind-runtime!__2
                           _%id118655%_
                           _%rebind?118656%_
                           _%phi118657%_))
                        _g121429_))
                ((##fx= _g121428_ 4)
                 (apply (lambda (_%id118661%_
                                 _%rebind?118662%_
                                 _%phi118663%_
                                 _%ctx118664%_)
                          (gx#core-bind-runtime!__%
                           _%id118661%_
                           _%rebind?118662%_
                           _%phi118663%_
                           _%ctx118664%_))
                        _g121429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g121429_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id118573%_
               _%eid118574%_
               _%rebind?118575%_
               _%phi118576%_
               _%ctx118577%_)
        (let* ((_%key118579%_ (gx#core-identifier-key _%id118573%_))
               (_%bind118584%_
                (if (##structure-instance-of?
                     _%ctx118577%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid118574%_
                       _%key118579%_
                       _%phi118576%_
                       _%ctx118577%_))
                    (if (##structure-instance-of?
                         _%ctx118577%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid118574%_
                           _%key118579%_
                           _%phi118576%_))
                        (let ()
                          (##structure
                           gx#runtime-binding::t
                           _%eid118574%_
                           _%key118579%_
                           _%phi118576%_))))))
          (gx#bind-identifier!__%
           _%id118573%_
           _%bind118584%_
           _%rebind?118575%_
           _%phi118576%_
           _%ctx118577%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id118590%_ _%eid118591%_)
        (let* ((_%rebind?118593%_ '#f)
               (_%phi118595%_ (gx#current-expander-phi))
               (_%ctx118597%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118590%_
           _%eid118591%_
           _%rebind?118593%_
           _%phi118595%_
           _%ctx118597%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id118599%_ _%eid118600%_ _%rebind?118601%_)
        (let* ((_%phi118603%_ (gx#current-expander-phi))
               (_%ctx118605%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118599%_
           _%eid118600%_
           _%rebind?118601%_
           _%phi118603%_
           _%ctx118605%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id118607%_ _%eid118608%_ _%rebind?118609%_ _%phi118610%_)
        (let ((_%ctx118612%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118607%_
           _%eid118608%_
           _%rebind?118609%_
           _%phi118610%_
           _%ctx118612%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g121431_
        (let ((_g121430_ (##length _g121431_)))
          (cond ((##fx= _g121430_ 2)
                 (apply (lambda (_%id118590%_ _%eid118591%_)
                          (gx#core-bind-runtime-reference!__0
                           _%id118590%_
                           _%eid118591%_))
                        _g121431_))
                ((##fx= _g121430_ 3)
                 (apply (lambda (_%id118599%_ _%eid118600%_ _%rebind?118601%_)
                          (gx#core-bind-runtime-reference!__1
                           _%id118599%_
                           _%eid118600%_
                           _%rebind?118601%_))
                        _g121431_))
                ((##fx= _g121430_ 4)
                 (apply (lambda (_%id118607%_
                                 _%eid118608%_
                                 _%rebind?118609%_
                                 _%phi118610%_)
                          (gx#core-bind-runtime-reference!__2
                           _%id118607%_
                           _%eid118608%_
                           _%rebind?118609%_
                           _%phi118610%_))
                        _g121431_))
                ((##fx= _g121430_ 5)
                 (apply (lambda (_%id118614%_
                                 _%eid118615%_
                                 _%rebind?118616%_
                                 _%phi118617%_
                                 _%ctx118618%_)
                          (gx#core-bind-runtime-reference!__%
                           _%id118614%_
                           _%eid118615%_
                           _%rebind?118616%_
                           _%phi118617%_
                           _%ctx118618%_))
                        _g121431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g121431_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id118533%_
               _%eid118534%_
               _%rebind?118535%_
               _%phi118536%_
               _%ctx118537%_)
        (gx#bind-identifier!__%
         _%id118533%_
         (##structure
          gx#extern-binding::t
          _%eid118534%_
          (gx#core-identifier-key _%id118533%_)
          _%phi118536%_)
         _%rebind?118535%_
         _%phi118536%_
         _%ctx118537%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id118542%_ _%eid118543%_)
        (let* ((_%rebind?118545%_ '#f)
               (_%phi118547%_ (gx#current-expander-phi))
               (_%ctx118549%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118542%_
           _%eid118543%_
           _%rebind?118545%_
           _%phi118547%_
           _%ctx118549%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id118551%_ _%eid118552%_ _%rebind?118553%_)
        (let* ((_%phi118555%_ (gx#current-expander-phi))
               (_%ctx118557%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118551%_
           _%eid118552%_
           _%rebind?118553%_
           _%phi118555%_
           _%ctx118557%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id118559%_ _%eid118560%_ _%rebind?118561%_ _%phi118562%_)
        (let ((_%ctx118564%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118559%_
           _%eid118560%_
           _%rebind?118561%_
           _%phi118562%_
           _%ctx118564%_))))
    (define gx#core-bind-extern!
      (lambda _g121433_
        (let ((_g121432_ (##length _g121433_)))
          (cond ((##fx= _g121432_ 2)
                 (apply (lambda (_%id118542%_ _%eid118543%_)
                          (gx#core-bind-extern!__0 _%id118542%_ _%eid118543%_))
                        _g121433_))
                ((##fx= _g121432_ 3)
                 (apply (lambda (_%id118551%_ _%eid118552%_ _%rebind?118553%_)
                          (gx#core-bind-extern!__1
                           _%id118551%_
                           _%eid118552%_
                           _%rebind?118553%_))
                        _g121433_))
                ((##fx= _g121432_ 4)
                 (apply (lambda (_%id118559%_
                                 _%eid118560%_
                                 _%rebind?118561%_
                                 _%phi118562%_)
                          (gx#core-bind-extern!__2
                           _%id118559%_
                           _%eid118560%_
                           _%rebind?118561%_
                           _%phi118562%_))
                        _g121433_))
                ((##fx= _g121432_ 5)
                 (apply (lambda (_%id118566%_
                                 _%eid118567%_
                                 _%rebind?118568%_
                                 _%phi118569%_
                                 _%ctx118570%_)
                          (gx#core-bind-extern!__%
                           _%id118566%_
                           _%eid118567%_
                           _%rebind?118568%_
                           _%phi118569%_
                           _%ctx118570%_))
                        _g121433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g121433_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id118487%_
               _%e118488%_
               _%rebind?118489%_
               _%phi118490%_
               _%ctx118491%_)
        (gx#bind-identifier!__%
         _%id118487%_
         (let ((_%key118496%_ (gx#core-identifier-key _%id118487%_))
               (_%e118497%_
                (if (or (##structure-instance-of? _%e118488%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e118488%_
                         'gx#expander-context::t))
                    _%e118488%_
                    (##structure
                     gx#user-expander::t
                     _%e118488%_
                     _%ctx118491%_
                     _%phi118490%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key118496%_
             '#t
             _%phi118490%_
             _%ctx118491%_)
            _%key118496%_
            _%phi118490%_
            _%e118497%_))
         _%rebind?118489%_
         _%phi118490%_
         _%ctx118491%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id118502%_ _%e118503%_)
        (let* ((_%rebind?118505%_ '#f)
               (_%phi118507%_ (gx#current-expander-phi))
               (_%ctx118509%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118502%_
           _%e118503%_
           _%rebind?118505%_
           _%phi118507%_
           _%ctx118509%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id118511%_ _%e118512%_ _%rebind?118513%_)
        (let* ((_%phi118515%_ (gx#current-expander-phi))
               (_%ctx118517%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118511%_
           _%e118512%_
           _%rebind?118513%_
           _%phi118515%_
           _%ctx118517%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id118519%_ _%e118520%_ _%rebind?118521%_ _%phi118522%_)
        (let ((_%ctx118524%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118519%_
           _%e118520%_
           _%rebind?118521%_
           _%phi118522%_
           _%ctx118524%_))))
    (define gx#core-bind-syntax!
      (lambda _g121435_
        (let ((_g121434_ (##length _g121435_)))
          (cond ((##fx= _g121434_ 2)
                 (apply (lambda (_%id118502%_ _%e118503%_)
                          (gx#core-bind-syntax!__0 _%id118502%_ _%e118503%_))
                        _g121435_))
                ((##fx= _g121434_ 3)
                 (apply (lambda (_%id118511%_ _%e118512%_ _%rebind?118513%_)
                          (gx#core-bind-syntax!__1
                           _%id118511%_
                           _%e118512%_
                           _%rebind?118513%_))
                        _g121435_))
                ((##fx= _g121434_ 4)
                 (apply (lambda (_%id118519%_
                                 _%e118520%_
                                 _%rebind?118521%_
                                 _%phi118522%_)
                          (gx#core-bind-syntax!__2
                           _%id118519%_
                           _%e118520%_
                           _%rebind?118521%_
                           _%phi118522%_))
                        _g121435_))
                ((##fx= _g121434_ 5)
                 (apply (lambda (_%id118526%_
                                 _%e118527%_
                                 _%rebind?118528%_
                                 _%phi118529%_
                                 _%ctx118530%_)
                          (gx#core-bind-syntax!__%
                           _%id118526%_
                           _%e118527%_
                           _%rebind?118528%_
                           _%phi118529%_
                           _%ctx118530%_))
                        _g121435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g121435_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id118470%_ _%e118471%_ _%rebind?118472%_)
        (gx#core-bind-syntax!__%
         _%id118470%_
         _%e118471%_
         _%rebind?118472%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id118477%_ _%e118478%_)
        (let ((_%rebind?118480%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id118477%_
           _%e118478%_
           _%rebind?118480%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g121437_
        (let ((_g121436_ (##length _g121437_)))
          (cond ((##fx= _g121436_ 2)
                 (apply (lambda (_%id118477%_ _%e118478%_)
                          (gx#core-bind-root-syntax!__0
                           _%id118477%_
                           _%e118478%_))
                        _g121437_))
                ((##fx= _g121436_ 3)
                 (apply (lambda (_%id118482%_ _%e118483%_ _%rebind?118484%_)
                          (gx#core-bind-root-syntax!__%
                           _%id118482%_
                           _%e118483%_
                           _%rebind?118484%_))
                        _g121437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g121437_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id118428%_
               _%alias-id118429%_
               _%rebind?118430%_
               _%phi118431%_
               _%ctx118432%_)
        (gx#bind-identifier!__%
         _%id118428%_
         (let ((_%key118434%_ (gx#core-identifier-key _%id118428%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key118434%_
             '#t
             _%phi118431%_
             _%ctx118432%_)
            _%key118434%_
            _%phi118431%_
            _%alias-id118429%_))
         _%rebind?118430%_
         _%phi118431%_
         _%ctx118432%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id118439%_ _%alias-id118440%_)
        (let* ((_%rebind?118442%_ '#f)
               (_%phi118444%_ (gx#current-expander-phi))
               (_%ctx118446%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118439%_
           _%alias-id118440%_
           _%rebind?118442%_
           _%phi118444%_
           _%ctx118446%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id118448%_ _%alias-id118449%_ _%rebind?118450%_)
        (let* ((_%phi118452%_ (gx#current-expander-phi))
               (_%ctx118454%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118448%_
           _%alias-id118449%_
           _%rebind?118450%_
           _%phi118452%_
           _%ctx118454%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id118456%_ _%alias-id118457%_ _%rebind?118458%_ _%phi118459%_)
        (let ((_%ctx118461%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118456%_
           _%alias-id118457%_
           _%rebind?118458%_
           _%phi118459%_
           _%ctx118461%_))))
    (define gx#core-bind-alias!
      (lambda _g121439_
        (let ((_g121438_ (##length _g121439_)))
          (cond ((##fx= _g121438_ 2)
                 (apply (lambda (_%id118439%_ _%alias-id118440%_)
                          (gx#core-bind-alias!__0
                           _%id118439%_
                           _%alias-id118440%_))
                        _g121439_))
                ((##fx= _g121438_ 3)
                 (apply (lambda (_%id118448%_
                                 _%alias-id118449%_
                                 _%rebind?118450%_)
                          (gx#core-bind-alias!__1
                           _%id118448%_
                           _%alias-id118449%_
                           _%rebind?118450%_))
                        _g121439_))
                ((##fx= _g121438_ 4)
                 (apply (lambda (_%id118456%_
                                 _%alias-id118457%_
                                 _%rebind?118458%_
                                 _%phi118459%_)
                          (gx#core-bind-alias!__2
                           _%id118456%_
                           _%alias-id118457%_
                           _%rebind?118458%_
                           _%phi118459%_))
                        _g121439_))
                ((##fx= _g121438_ 5)
                 (apply (lambda (_%id118463%_
                                 _%alias-id118464%_
                                 _%rebind?118465%_
                                 _%phi118466%_
                                 _%ctx118467%_)
                          (gx#core-bind-alias!__%
                           _%id118463%_
                           _%alias-id118464%_
                           _%rebind?118465%_
                           _%phi118466%_
                           _%ctx118467%_))
                        _g121439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g121439_))))))
    (define gx#make-binding-id__%
      (lambda (_%key118378%_ _%syntax?118379%_ _%phi118380%_ _%ctx118381%_)
        (if (uninterned-symbol? _%key118378%_)
            (let () (##gensym 'L))
            (if (pair? _%key118378%_)
                (let () (gensym (car _%key118378%_)))
                (if (##structure-instance-of? _%ctx118381%_ 'gx#top-context::t)
                    (let ()
                      (let ((_%ns118386%_
                             (gx#core-context-namespace__% _%ctx118381%_)))
                        (if (and (fxzero? _%phi118380%_)
                                 (not _%syntax?118379%_))
                            (let ()
                              (if _%ns118386%_
                                  (make-symbol__1
                                   _%ns118386%_
                                   '"#"
                                   _%key118378%_)
                                  _%key118378%_))
                            (if _%syntax?118379%_
                                (let ()
                                  (make-symbol__1
                                   (let ((_%$e118390%_ _%ns118386%_))
                                     (if _%$e118390%_ _%$e118390%_ '""))
                                   '"[:"
                                   (number->string _%phi118380%_)
                                   '":]#"
                                   _%key118378%_))
                                (let ()
                                  (make-symbol__1
                                   (let ((_%$e118394%_ _%ns118386%_))
                                     (if _%$e118394%_ _%$e118394%_ '""))
                                   '"["
                                   (number->string _%phi118380%_)
                                   '"]#"
                                   _%key118378%_))))))
                    (let () (gensym _%key118378%_)))))))
    (define gx#make-binding-id__0
      (lambda (_%key118401%_)
        (let* ((_%syntax?118403%_ '#f)
               (_%phi118405%_ (gx#current-expander-phi))
               (_%ctx118407%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118401%_
           _%syntax?118403%_
           _%phi118405%_
           _%ctx118407%_))))
    (define gx#make-binding-id__1
      (lambda (_%key118409%_ _%syntax?118410%_)
        (let* ((_%phi118412%_ (gx#current-expander-phi))
               (_%ctx118414%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118409%_
           _%syntax?118410%_
           _%phi118412%_
           _%ctx118414%_))))
    (define gx#make-binding-id__2
      (lambda (_%key118416%_ _%syntax?118417%_ _%phi118418%_)
        (let ((_%ctx118420%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118416%_
           _%syntax?118417%_
           _%phi118418%_
           _%ctx118420%_))))
    (define gx#make-binding-id
      (lambda _g121441_
        (let ((_g121440_ (##length _g121441_)))
          (cond ((##fx= _g121440_ 1)
                 (apply (lambda (_%key118401%_)
                          (gx#make-binding-id__0 _%key118401%_))
                        _g121441_))
                ((##fx= _g121440_ 2)
                 (apply (lambda (_%key118409%_ _%syntax?118410%_)
                          (gx#make-binding-id__1
                           _%key118409%_
                           _%syntax?118410%_))
                        _g121441_))
                ((##fx= _g121440_ 3)
                 (apply (lambda (_%key118416%_ _%syntax?118417%_ _%phi118418%_)
                          (gx#make-binding-id__2
                           _%key118416%_
                           _%syntax?118417%_
                           _%phi118418%_))
                        _g121441_))
                ((##fx= _g121440_ 4)
                 (apply (lambda (_%key118422%_
                                 _%syntax?118423%_
                                 _%phi118424%_
                                 _%ctx118425%_)
                          (gx#make-binding-id__%
                           _%key118422%_
                           _%syntax?118423%_
                           _%phi118424%_
                           _%ctx118425%_))
                        _g121441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g121441_))))))))
